#!/bin/bash

# Check if env var exists from docker, if not, use all tables
if [[ -z ${IPTS_TABLE} ]]; then
    JOB_TABLES=$(awk -F"," 'NR>1 {print $1}' /scripts/tables-list.csv)
else
    JOB_TABLES=${IPTS_TABLE}
fi

# Weird workaround required for dir not found error
hdfs dfs -mkdir -p /user/root/

echo "Running jobs for table(s): $(echo ${JOB_TABLES} | paste -sd,)"
for TABLE in ${JOB_TABLES}; do
    sqoop job -libjars /tmp/bindir/ -jt local --fs file:/// \
        --exec ${TABLE}

    # Copy from distributed file system (HDFS) to local mounted dir
    hdfs dfs -copyToLocal /user/root/target/${TABLE} /tmp/target

    echo "Completed job for table: ${TABLE}"
done
