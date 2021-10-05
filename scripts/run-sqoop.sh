#!/bin/bash

# Check if env var exists from docker, if not, use all tables
if [[ -z ${IPTS_TABLE} ]]; then
    JOB_TABLES=$(awk -F"," 'NR>1 {print $1}' /scripts/tables-list.csv)
else
    JOB_TABLES=${IPTS_TABLE}
fi

# Weird workaround required for dir not found error
hdfs dfs -mkdir -p /user/root/

# Create database in HDFS to store tables in
DB_NAME=iasworld
hcat -e "DROP DATABASE IF EXISTS ${DB_NAME}; CREATE DATABASE ${DB_NAME};"

echo "Creating jobs for table(s): $(echo ${JOB_TABLES} | paste -sd,)"
for TABLE in ${JOB_TABLES}; do
    # Check to see if sqoop job already exists
    if sqoop job --list | grep -q ${TABLE}; then
        echo "WARNING: A sqoop job already exists for table: ${TABLE}"
    else
        # Get column names to create hive table
        COLUMN_MAPPINGS=$(awk -F"," \
            -v OFS=',' \
            -v table=${TABLE} \
            '$1 == table {if( !($2=="TAXYR") ) print tolower($2)" "$5}' \
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

        # Options passed to sqoop
        SQOOP_OPTIONS_MAIN=(
            job -libjars /tmp/bindir/ \
            -D oracle.sessionTimeZone=America/Chicago \
            --create ${TABLE} -- import \
            --bindir /tmp/bindir/ \
            --connect jdbc:oracle:thin:@//${IPTS_HOSTNAME}:${IPTS_PORT}/${IPTS_SERVICE_NAME} \
            --username ${IPTS_USERNAME} \
            --password-file file:///run/secrets/IPTS_PASSWORD \
            --table IASWORLD.${TABLE} \
            --hcatalog-database ${DB_NAME} \
            --hcatalog-table ${TABLE} \
        )

        # Create a sqoop job for the selected table(s). Saves to a metastore in
        # /root/.sqoop, which is mounted to ./metastore via docker compose
        if [[ ${CONTAINS_TAXYR} == TRUE ]]; then
            hcat -e "CREATE TABLE ${DB_NAME}.${TABLE}(${COLUMN_MAPPINGS})
                     PARTITIONED BY (taxyr string) STORED AS PARQUET
                     TBLPROPERTIES ('parquet.compression'='SNAPPY');"

            # For all tables with TAXYR column, create a job split by TAXYR
            sqoop "${SQOOP_OPTIONS_MAIN[@]}" \
                --split-by TAXYR \
                --num-mappers 8
        else
            # For tables with no TAXYR column, just make a job with no split
            sqoop "${SQOOP_OPTIONS_MAIN[@]}" \
                -m 1
        fi
        echo "Created job for table: ${TABLE}"
    fi
done

echo "Running jobs for table(s): $(echo ${JOB_TABLES} | paste -sd,)"
for TABLE in ${JOB_TABLES}; do

    # Execute saved sqoop job
    sqoop job -libjars /tmp/bindir/ \
        --exec ${TABLE}

    # Copy from distributed file system (HDFS) to local mounted dir
    TABLE_LC=$(echo ${TABLE} | awk '{print tolower($0)}')
    hdfs dfs -copyToLocal /user/hive/warehouse/${DB_NAME}.db/${TABLE_LC} /tmp/target
    hdfs dfs -rm -r -f /user/hive/warehouse/${DB_NAME}.db/${TABLE_LC}

    # Remove _SUCCESS files and rename parts to parquet
    find /tmp/target/${TABLE_LC} -type f -name '_SUCCESS' -delete
    find /tmp/target/${TABLE_LC} -type f -name 'part-m-*' \
        -exec mv {} {}.snappy.parquet \;

    echo "Completed job for table: ${TABLE}"
done
