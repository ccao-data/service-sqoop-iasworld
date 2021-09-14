#!/bin/bash

# Check if env var exists from docker, if not, use all tables
if [[ -z ${IPTS_TABLE} ]]; then
    JOB_TABLES=$(awk -F"," 'NR>1 {print $1}' /scripts/tables-list.csv)
else
    JOB_TABLES=${IPTS_TABLE}
fi

echo "Creating jobs for table(s): $(echo ${JOB_TABLES} | paste -sd,)"
for TABLE in ${JOB_TABLES}; do
    # Check to see if sqoop job exists
    if sqoop job --list | grep -q ${TABLE}; then
        echo "WARNING: A sqoop job already exists for table: ${TABLE}"
    else
        # Get java data type mappings from file and pass them to sqoop as
        # a comma-separated list in the format COLUMN=Type. This ensures that
        # the output for each column is the expected type
        COLUMN_MAPPING=$(awk -F"," \
            -v OFS=',' \
            -v table=${TABLE} \
            '$1 == table {print $2"="$5}' \
            /scripts/tables-mapping.csv \
            | paste -sd,
        )

        # TRUE/FALSE table contains TAXYR column to split on
        MAPPING_TYPE=$(awk -F"," \
            -v table=${TABLE} \
            '$1 == table {print $2}' \
            /scripts/tables-list.csv |
            tr -d "\n" | tr -d "\r"
        )

        # Create a sqoop job for the selected table(s). Saves to a metastore in
        # /root/.sqoop, which is mounted to ./metastore via docker compose.
        # The if statement here checks if the table contains TAXYR. If it does,
        # then the job is run in parallel. Otherwise it's run on a single process
        if [[ ${MAPPING_TYPE} == TRUE ]]; then
            sqoop job -libjars /tmp/bindir/ \
                --create ${TABLE} -- import \
                --bindir /tmp/bindir/ \
                --connect jdbc:oracle:thin:@//${IPTS_HOSTNAME}:${IPTS_PORT}/${IPTS_SERVICE_NAME} \
                --username ${IPTS_USERNAME} \
                --password-file file:///run/secrets/IPTS_PASSWORD \
                --query "SELECT * FROM IASWORLD.${TABLE} WHERE \$CONDITIONS" \
                --target-dir /user/root/target/${TABLE} \
                --as-parquetfile \
                --incremental append \
                --check-column IASW_ID \
                --last-value 0 \
                --map-column-java ${COLUMN_MAPPING} \
                --split-by TAXYR \
                --num-mappers 8
        else
            sqoop job -libjars /tmp/bindir/ \
                --create ${TABLE} -- import \
                --bindir /tmp/bindir/ \
                --connect jdbc:oracle:thin:@//${IPTS_HOSTNAME}:${IPTS_PORT}/${IPTS_SERVICE_NAME} \
                --username ${IPTS_USERNAME} \
                --password-file file:///run/secrets/IPTS_PASSWORD \
                --query "SELECT * FROM IASWORLD.${TABLE} WHERE \$CONDITIONS" \
                --target-dir /user/root/target/${TABLE} \
                --as-parquetfile \
                --incremental append \
                --check-column IASW_ID \
                --last-value 0 \
                --map-column-java ${COLUMN_MAPPING} \
                -m 1
        fi
        echo "Created job for table: ${TABLE}"
    fi
done

