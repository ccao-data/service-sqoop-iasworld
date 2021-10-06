#!/bin/bash

# Check if table env var exists from docker, if not, use all tables
if [[ -z ${IPTS_TABLE} ]]; then
    JOB_TABLES=$(awk -F"," 'NR>1 {print $1}' /scripts/tables-list.csv)
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
    unset HADOOP_CLASSPATH SQOOP_CLASSPATH
    mkdir -p /tmp/bindir/${TABLE}

    # Get column names to create hive table
    COLUMN_MAPPINGS=$(awk -F"," \
        -v OFS=',' \
        -v table=${TABLE} \
        '$1 == table {if( !($2=="TAXYR") ) print tolower($2)" "$6}' \
        /scripts/tables-mapping.csv \
        | paste -sd,
    )

    # Boolean value for whether $TABLE contains the TAXYR column
    CONTAINS_TAXYR=$(awk -F"," \
        -v table=${TABLE} \
        '$1 == table {print $2}' \
        /scripts/tables-list.csv |
        tr -d "\n" | tr -d "\r"
    )

    # Get the number of buckets to use for Hive partitioning
    NUM_BUCKETS=$(awk -F"," \
        -v table=${TABLE} \
        '$1 == table {print $3}' \
        /scripts/tables-list.csv |
        tr -d "\n" | tr -d "\r"
    )

    # Options passed to sqoop
    SQOOP_OPTIONS_MAIN=(
        job -D oracle.sessionTimeZone=America/Chicago \
        --create ${TABLE} -- import \
        --bindir /tmp/bindir/ \
        --connect jdbc:oracle:thin:@//${IPTS_HOSTNAME}:${IPTS_PORT}/${IPTS_SERVICE_NAME} \
        --username ${IPTS_USERNAME} \
        --password-file file:///run/secrets/IPTS_PASSWORD \
        --table IASWORLD.${TABLE} \
        --hcatalog-database ${DB_NAME} \
        --hcatalog-table ${TABLE}
    )

    # Create a sqoop job for the selected table(s). Tables with TAXYR
    # get partitioning and splitby during sqoop import
    if [[ ${CONTAINS_TAXYR} == TRUE ]]; then

        # Create an hcatalog table to fill using sqoop. This table is
        # unpartitioned since it's faster to extract
        # Also make additional tables filled later via hive INSERT.
        hive -e \
            "CREATE TABLE ${DB_NAME}.${TABLE}(${COLUMN_MAPPINGS}, taxyr string)
             STORED AS PARQUET TBLPROPERTIES ('parquet.compression'='SNAPPY');"

        if [[ ${NUM_BUCKETS} -gt 1 ]]; then
            hive -e \
                "CREATE TABLE ${DB_NAME}.${TABLE}_bucketed(${COLUMN_MAPPINGS})
                 PARTITIONED BY (taxyr string)
                 CLUSTERED BY (parid) SORTED BY (seq) INTO ${NUM_BUCKETS} BUCKETS
                 STORED AS PARQUET TBLPROPERTIES ('parquet.compression'='SNAPPY');"
        else
            hive -e \
                "CREATE TABLE ${DB_NAME}.${TABLE}_bucketed(${COLUMN_MAPPINGS})
                 PARTITIONED BY (taxyr string)
                 STORED AS PARQUET TBLPROPERTIES ('parquet.compression'='SNAPPY');"
        fi

        # For all tables with TAXYR column, create a job split by TAXYR
        sqoop "${SQOOP_OPTIONS_MAIN[@]}" \
            --split-by TAXYR \
            --num-mappers 8
    else
        # If no TAXYR col, make hcatalog tables without partitions
        hive -e \
            "CREATE TABLE ${DB_NAME}.${TABLE}(${COLUMN_MAPPINGS})
             STORED AS PARQUET TBLPROPERTIES ('parquet.compression'='SNAPPY');"

        if [[ ${NUM_BUCKETS} -gt 1 ]]; then
            hive -e \
                "CREATE TABLE ${DB_NAME}.${TABLE}_bucketed(${COLUMN_MAPPINGS})
                 CLUSTERED BY (parid) SORTED BY (seq) INTO ${NUM_BUCKETS} BUCKETS
                 STORED AS PARQUET TBLPROPERTIES ('parquet.compression'='SNAPPY');"
        fi

        # For tables with no TAXYR column, just make a job with no split
        sqoop "${SQOOP_OPTIONS_MAIN[@]}" -m 1
    fi
    echo "Running job for table: ${TABLE}"

    # Execute saved sqoop job
    sqoop job --exec ${TABLE}

    # If buckets are specified, rewrite output from sqoop to bucketed table
    if [[ ${CONTAINS_TAXYR} == TRUE ]]; then
        hive -e \
            "SET hive.exec.dynamic.partition=true;
             SET hive.exec.dynamic.partition.mode=nonstrict;
             INSERT OVERWRITE TABLE ${DB_NAME}.${TABLE_LC}_bucketed
             PARTITION(taxyr) SELECT * FROM ${DB_NAME}.${TABLE_LC};"
    elif [[ ${CONTAINS_TAXYR} == FALSE && ${NUM_BUCKETS} -gt 1 ]]; then
        hive -e \
            "SET hive.exec.dynamic.partition=true;
             SET hive.exec.dynamic.partition.mode=nonstrict;
             INSERT OVERWRITE TABLE ${DB_NAME}.${TABLE_LC}_bucketed
             SELECT * FROM ${DB_NAME}.${TABLE_LC};"
    fi

    # Copy from distributed file system (HDFS) to local mounted dir
    mkdir -p /tmp/target/${TABLE}
    if [[ ${NUM_BUCKETS} -gt 1 || ${CONTAINS_TAXYR} == TRUE ]]; then
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

    echo "Completed job for table: ${TABLE}"
done
