#!/bin/bash

# Env variables controlling where sqooped data is exported to
TEMP_LOG_FILE="logs/temp-sqoop-log"
BUCKET_URI="s3://ccao-landing-us-east-1"
LOG_GROUP_NAME="/ccao/jobs/sqoop"

# Create sqoop jobs if none exist, run big import once, then
# change future jobs to:
# - Grab only rows with non-null WEN that have been created since last run
# - Use only a single mapper (lower chance of failure for small jobs)
#
# Job definitions are saved to the metastore/ directory and synced with S3
if [ ! -f metastore/metastore.db.script ]; then
    /usr/local/bin/docker-compose \
        -f create-jobs.yaml up \
        --remove-orphans \
        --no-color \
        | ts '%.s' \
        | tee ${TEMP_LOG_FILE}

    /usr/local/bin/docker-compose \
        -f run-jobs.yaml up --abort-on-container-exit \
        --remove-orphans \
        --no-color \
        | ts '%.s' \
        | tee -a ${TEMP_LOG_FILE}

    # Manually update job defs after first run using sed
    sed -i "s/'mapreduce.num.mappers','8'/'mapreduce.num.mappers','1'/g" \
        metastore/metastore.db.script
    sed -i "s/WEN IS NULL AND //g" \
        metastore/metastore.db.script
    sed -i "/db.query.boundary/d" \
        metastore/metastore.db.script
else
    # If jobs already exist, run all incremental sqoop jobs
    # Resulting parquet files are output to the target/ directory
    /usr/local/bin/docker-compose \
        -f run-jobs.yaml up --abort-on-container-exit \
        --remove-orphans \
        --no-color \
        | ts '%.s' \
        | tee -a ${TEMP_LOG_FILE}
fi

# Sync metastore/ directory to S3
# Need to keep a local copy in order to save state
/usr/bin/aws s3 sync \
    metastore/ \
    ${BUCKET_URI}/iasworld/metastore \
    --exclude "*gitkeep" \
    --no-progress \
    | ts '%.s' \
    | tee -a ${TEMP_LOG_FILE}

# Move target/ directory to S3
/usr/bin/aws s3 mv \
    target/ \
    ${BUCKET_URI}/iasworld/data \
    --exclude "*" \
    --include "*.parquet" \
    --recursive \
    --no-progress \
    | ts '%.s' \
    | tee -a ${TEMP_LOG_FILE}

# Convert text output from Docker and AWS CLI to clean JSON
# for upload to AWS CloudWatch
LOG_FILE="logs/$(date -u -Iseconds)-sqoop-log.json"
LOG_STREAM_NAME="sqoop-job-log-$(date -u +'%Y-%m-%d_%H-%M-%S')"
cat ${TEMP_LOG_FILE} \
    | sed 's/ /|/' \
    | sed 's/\([0-9]\.[0-9]\{3\}\)[0-9]\{1,\}/\1/' \
    | sed 's/\.//' \
    | awk '{print $1, $NF}' OFS='|' FS='|' \
    | jq -Rn '[inputs
        | . / "\n"
        | (.[] | select(length > 0) | . / "|") as $input
        | {"timestamp": $input[0]|tonumber, "message": $input[1]}]' \
    > ${LOG_FILE}

# Create log stream in CloudWatch with today's date
/usr/bin/aws logs create-log-stream \
    --log-group-name ${LOG_GROUP_NAME} \
    --log-stream-name ${LOG_STREAM_NAME}

# Upload logs to CloudWatch
/usr/bin/aws logs put-log-events \
    --log-group-name ${LOG_GROUP_NAME} \
    --log-stream-name ${LOG_STREAM_NAME} \
    --log-events file://${LOG_FILE}

# Remove temp files
rm ${LOG_FILE} ${TEMP_LOG_FILE}
