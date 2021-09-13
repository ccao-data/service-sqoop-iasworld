# Check if env var exists from docker, if not, use all tables
if [[ -z ${IPTS_TABLE} ]]; then
    JOB_TABLES=$(awk -F"," '{print $1}' /scripts/tables-list.csv)
else
    JOB_TABLES=${IPTS_TABLE}
fi

echo "Creating jobs for tables: $JOB_TABLES"
# Create sqoop job for each table
for TABLE in $JOB_TABLES; do
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

        # Create a sqoop job for the selected table(s). Saves to a metastore in
        # /root/.sqoop, which is mounted to ./metastore via docker compose
        sqoop job -libjars /tmp/bindir/ -jt local \
            --fs file:/// \
            --create ${TABLE} -- import \
            --bindir /tmp/bindir/ \
            --connect jdbc:oracle:thin:@//${IPTS_HOSTNAME}:${IPTS_PORT}/${IPTS_SERVICE_NAME} \
            --username ${IPTS_USERNAME} \
            --password-file /run/secrets/IPTS_PASSWORD \
            --query "SELECT * FROM IASWORLD.${TABLE} WHERE \$CONDITIONS" \
            --target-dir /tmp/target/${TABLE} \
            --as-parquetfile \
            --incremental append \
            --check-column IASW_ID \
            --last-value 0 \
            -m 1 \
            --map-column-java ${COLUMN_MAPPING}

        echo "Created job for table: ${TABLE}"
    fi
done

