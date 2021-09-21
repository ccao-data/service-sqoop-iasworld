#!/bin/bash

# Name for log file. Since this is a daily export, we want one for each day
TEMP_LOG_FILE="logs/temp-sqoop-log.txt"
BUCKET_URI="s3://ccao-landing-us-east-1"

# Create sqoop jobs. These are saved in the metastore/ directory
/usr/local/bin/docker-compose \
    -f create-jobs.yaml up \
    --remove-orphans \
    | tee ${TEMP_LOG_FILE}

# Run all sqoop jobs. Parquet files are output to target/ directory
/usr/local/bin/docker-compose \
    -f run-jobs.yaml up --abort-on-container-exit \
    --remove-orphans \
    | tee -a ${TEMP_LOG_FILE}

# Sync metastore/ directory to S3
# Need to keep a local copy in order to save state
/usr/bin/aws s3 sync \
    metastore/ \
    ${BUCKET_URI}/iasworld/metastore \
    --exclude "*gitkeep" \
    | tee -a ${TEMP_LOG_FILE}

# Move target/ directory to S3
/usr/bin/aws s3 mv \
    target/ \
    ${BUCKET_URI}/iasworld/data \
    --exclude "*" \
    --include "*.parquet" \
    --recursive \
    | tee -a ${TEMP_LOG_FILE}

# Move log file to S3 after compressing to zstd
LOG_FILE="logs/$(date -u -Iseconds)-sqoop-log.txt"
/usr/bin/zstd -f --rm ${TEMP_LOG_FILE} -o ${LOG_FILE}.zst
/usr/bin/aws s3 mv \
    logs/ \
    ${BUCKET_URI}/iasworld/logs \
    --exclude "*gitkeep" \
    --recursive
