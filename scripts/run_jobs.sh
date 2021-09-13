# Check if env var exists from docker, if not, use all tables
if [[ -z ${IPTS_TABLE} ]]; then
    JOB_TABLES=$(awk -F"," '{print $1}' /scripts/tables-list.csv)
else
    JOB_TABLES=${IPTS_TABLE}
fi

echo "Creating jobs for tables: $JOB_TABLES"
# Run sqoop job for each table
for TABLE in $JOB_TABLES; do
    sqoop job -libjars /tmp/bindir/ -jt local --fs file:/// \
        --exec ${TABLE}
    echo "Completed job for table: ${TABLE}"
done
