#!/bin/bash

# Check if table env var exists from docker, if not, use all tables
if [[ -z ${IPTS_TABLE} ]]; then
    JOB_TABLES=$(awk -F"," 'NR>1 {print $1}' /tmp/tables/tables-list.csv)
else
    JOB_TABLES=${IPTS_TABLE}
fi

# Create database in HDFS to store tables
DB_NAME=iasworld
hive -e "DROP DATABASE IF EXISTS ${DB_NAME}; CREATE DATABASE ${DB_NAME};"

echo "Creating jobs for table(s): $(echo ${JOB_TABLES} | paste -sd,)"
for TABLE in ${JOB_TABLES}; do

    # Get lowercase table name
    TABLE_LC=$(echo ${TABLE} | awk '{print tolower($0)}')
    mkdir -p /tmp/bindir/${TABLE}

    # Boolean value for whether $TABLE contains the TAXYR column
    CONTAINS_TAXYR=$(awk -F"," \
        -v table=${TABLE} \
        '$1 == table {print $2}' \
        /tmp/tables/tables-list.csv |
        tr -d "\n" | tr -d "\r"
    )

    # Get the number of buckets to use for Hive partitioning
    NUM_BUCKETS=$(awk -F"," \
        -v table=${TABLE} \
        '$1 == table {print $3}' \
        /tmp/tables/tables-list.csv |
        tr -d "\n" | tr -d "\r"
    )

    # Options passed to sqoop
    SQOOP_OPTIONS_MAIN=(
        job -D oracle.sessionTimeZone=America/Chicago \
        --create ${TABLE} -- import \
        --bindir /tmp/bindir/${TABLE} \
        --connect jdbc:oracle:thin:@//${IPTS_HOSTNAME}:${IPTS_PORT}/${IPTS_SERVICE_NAME} \
        --username ${IPTS_USERNAME} \
        --password-file file:///run/secrets/IPTS_PASSWORD \
        --table IASWORLD.${TABLE} \
        --hcatalog-database ${DB_NAME} \
        --hcatalog-table ${TABLE}
    )

    # Create the Hive tables necessary to run sqoop jobs
    # Table definitions are stores in the repo
    hive -f /tmp/tables/${TABLE}.sql

    # Create a sqoop job for the selected table(s). Tables with TAXYR
    # get partitioning and splitby during sqoop import
    if [[ ${CONTAINS_TAXYR} == TRUE ]]; then
        sqoop "${SQOOP_OPTIONS_MAIN[@]}" --split-by TAXYR --num-mappers 16
    else
        sqoop "${SQOOP_OPTIONS_MAIN[@]}" -m 1
    fi

    # Execute saved sqoop job
    echo "Running job for table: ${TABLE}"
    sqoop job --exec ${TABLE}

    # If buckets are specified, rewrite output from sqoop to bucketed table
    # Then copy from distributed file system (HDFS) to local mounted dir
    # mkdir -p /tmp/target/${TABLE}
    if [[ ${NUM_BUCKETS} -gt 1 ]]; then
        hive -e \
            "INSERT OVERWRITE TABLE ${DB_NAME}.${TABLE_LC}_bucketed
             SELECT * FROM ${DB_NAME}.${TABLE_LC};"
        hdfs dfs -copyToLocal \
            /user/hive/warehouse/${DB_NAME}.db/${TABLE_LC}_bucketed/* \
            /tmp/target/${TABLE}
    else
        hdfs dfs -copyToLocal \
            /user/hive/warehouse/${DB_NAME}.db/${TABLE_LC}/* \
            /tmp/target/${TABLE}
    fi

    # Remove tables in HDFS once moved to local
    hdfs dfs -rm -r -f /user/hive/warehouse/${DB_NAME}.db/${TABLE_LC}_bucketed
    hdfs dfs -rm -r -f /user/hive/warehouse/${DB_NAME}.db/${TABLE_LC}

    # Remove _SUCCESS files and rename parts to parquet
    find /tmp/target/${TABLE} -type f -name '_SUCCESS' -delete
    find /tmp/target/${TABLE} -type f -exec mv {} {}.snappy.parquet \;

    # Clear the sqoop workers cache of copied JARs
    rm -rf /tmp/hadoop-root/nm-local-dir/usercache/*
    echo "Completed job for table: ${TABLE}"
done
