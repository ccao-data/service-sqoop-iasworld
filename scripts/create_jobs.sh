#!/bin/bash

# Check if env var exists from docker, if not, use all tables
if [[ -z ${IPTS_TABLE} ]]; then
    JOB_TABLES=$(awk -F"," 'NR>1 {print $1}' /scripts/tables-list.csv)
else
    JOB_TABLES=${IPTS_TABLE}
fi

echo "Creating jobs for table(s): $(echo ${JOB_TABLES} | paste -sd,)"
for TABLE in ${JOB_TABLES}; do
    # Check to see if sqoop job already exists
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

        # Boolean value for whether $TABLE contains the TAXYR column
        CONTAINS_TAXYR=$(awk -F"," \
            -v table=${TABLE} \
            '$1 == table {print $2}' \
            /scripts/tables-list.csv |
            tr -d "\n" | tr -d "\r"
        )

        # Options passed to sqoop
        SQOOP_OPTIONS_JOB=(
            job -libjars /tmp/bindir/ \
            -D java.security.egd=file:/dev/../dev/urandom \
            -D mapred.child.java.opts="-Djava.security.egd=file:/dev/../dev/urandom" \
            --create ${TABLE} -- import \
            --target-dir /user/root/target/${TABLE} \
            --query "SELECT * FROM IASWORLD.${TABLE} WHERE \$CONDITIONS"
        )

        SQOOP_OPTIONS_MAIN=(
            --bindir /tmp/bindir/ \
            --connect jdbc:oracle:thin:@//${IPTS_HOSTNAME}:${IPTS_PORT}/${IPTS_SERVICE_NAME} \
            --username ${IPTS_USERNAME} \
            --password-file file:///run/secrets/IPTS_PASSWORD \
            --as-parquetfile \
            --incremental append \
            --check-column IASW_ID \
            --last-value 0 \
            --map-column-java ${COLUMN_MAPPING}
        )

        SQOOP_OPTIONS_SPLIT=(
            --split-by TAXYR \
            --num-mappers 8 \
            --boundary-query "SELECT MIN(TAXYR), MAX(TAXYR) FROM IASWORLD.${TABLE}"
        )

        # Create a sqoop job for the selected table(s). Saves to a metastore in
        # /root/.sqoop, which is mounted to ./metastore via docker compose
        if [[ ${CONTAINS_TAXYR} == TRUE ]]; then
            # For all tables with TAXYR column, create a job split by TAXYR
            sqoop "${SQOOP_OPTIONS_JOB[@]}" \
                "${SQOOP_OPTIONS_MAIN[@]}" \
                "${SQOOP_OPTIONS_SPLIT[@]}"
        else
            # For tables with no TAXYR column, just make a job with no split
            sqoop "${SQOOP_OPTIONS_JOB[@]}" \
                "${SQOOP_OPTIONS_MAIN[@]}" \
                -m 1
        fi
        echo "Created job for table: ${TABLE}"
    fi
done
