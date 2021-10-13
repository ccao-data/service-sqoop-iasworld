#!/bin/bash
# Script to convert table definitions created by Sqoop into
# bucketed, partitioned tables saved as parquet
TABLES=$(awk -F"," 'NR>1 {print $1}' tables-list.csv)
DB_NAME=iasworld

# Loop through each file and convert
for TABLE in ${TABLES}; do
    TABLE_LC=$(echo ${TABLE} | awk '{print tolower($0)}')

    # Boolean value for whether $TABLE contains the TAXYR column
    CONTAINS_TAXYR=$(awk -F"," \
        -v table=${TABLE} \
        '$1 == table {print $2}' \
        tables-list.csv |
        tr -d "\n" | tr -d "\r"
    )

    # Get the number of buckets to use for Hive partitioning
    NUM_BUCKETS=$(awk -F"," \
        -v table=${TABLE} \
        '$1 == table {print $3}' \
        tables-list.csv |
        tr -d "\n" | tr -d "\r"
    )

    # Remove properties and options added by Sqoop
    cat ${TABLE}.sql | sed '/ROW FORMAT SERDE/Q' > ${TABLE}.sql.tmp1

    # For TAXYR and BUCKETS, create an unpartitioned, unbucketed table
    # as a temporary place for sqoop to extract to, and a partitioned,
    # bucketed table as a final location
    if [[ ${CONTAINS_TAXYR} == TRUE && ${NUM_BUCKETS} -gt 1 ]]; then

        sed -i 's/`taxyr` decimal(4,0)/`taxyr` string/g' ${TABLE}.sql.tmp1
        cat ${TABLE}.sql.tmp1 | sed '/taxyr/d' > ${TABLE}.sql.tmp2
        sed -i "s/${TABLE_LC}/${TABLE_LC}\_bucketed/g" ${TABLE}.sql.tmp2
        echo "PARTITIONED BY (taxyr string)
CLUSTERED BY (parid) SORTED BY (seq) INTO ${NUM_BUCKETS} BUCKETS
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');" \
            | tr -s ' ' \
            >> ${TABLE}.sql.tmp2

        echo "STORED AS RCFILE;
        " >> ${TABLE}.sql.tmp1
        cat ${TABLE}.sql.tmp1 ${TABLE}.sql.tmp2 > ${TABLE}.sql

    # For tables with TAXYR but not enough data to bucket, do the above,
    # but remove buckets and temp table (sqoop can extract directly as
    # long as there are no buckets)
    elif [[ ${CONTAINS_TAXYR} == TRUE && ! ${NUM_BUCKETS} -gt 1 ]]; then

        cat ${TABLE}.sql.tmp1 | sed '/taxyr/d' > ${TABLE}.sql.tmp2
        echo "PARTITIONED BY (taxyr string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');" \
            | tr -s ' ' \
            >> ${TABLE}.sql.tmp2

        cat ${TABLE}.sql.tmp2 > ${TABLE}.sql

    # With buckets and no TAXYR, don't create partitions
    elif [[ ${CONTAINS_TAXYR} == FALSE && ${NUM_BUCKETS} -gt 1 ]]; then

        cp ${TABLE}.sql.tmp1 ${TABLE}.sql.tmp2
        sed -i "s/${TABLE_LC}/${TABLE_LC}\_bucketed/g" ${TABLE}.sql.tmp2
        echo "CLUSTERED BY (parid) SORTED BY (seq) INTO ${NUM_BUCKETS} BUCKETS
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');" \
            | tr -s ' ' \
            >> ${TABLE}.sql.tmp2

        echo "STORED AS RCFILE;
        " >> ${TABLE}.sql.tmp1
        cat ${TABLE}.sql.tmp1 ${TABLE}.sql.tmp2 > ${TABLE}.sql
    else

        echo "STORED AS PARQUET;
        " >> ${TABLE}.sql.tmp1
        mv ${TABLE}.sql.tmp1 ${TABLE}.sql

    fi

    rm -f ./*.tmp*

done
