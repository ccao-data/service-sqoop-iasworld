#!/bin/bash

# Name for log file. Since this is a daily export, we want one for each day
TEMP_LOG_FILE="logs/temp-sqoop-log.txt"

# Create sqoop jobs. These are saved in the metastore/ directory
docker-compose \
    -f create-jobs.yaml up \
    --remove-orphans \
    | tee ${TEMP_LOG_FILE}

# Run all sqoop jobs. Parquet files are output to target/ directory
docker-compose \
    -f run-jobs.yaml up --abort-on-container-exit \
    --remove-orphans \
    | tee -a ${TEMP_LOG_FILE}

# Sync metastore/ directory to S3
aws s3 sync \
    metastore/ \
    s3://dev-ccap-athenapoc-landingzone-us-east1/iasworld/metastore \
    --exclude "*gitkeep" \
    | tee -a ${TEMP_LOG_FILE}

# Sync target/ directory to S3
aws s3 sync \
    target/ \
    s3://dev-ccap-athenapoc-landingzone-us-east1/iasworld/data \
    --exclude "*gitkeep" \
    | tee -a ${TEMP_LOG_FILE}

# Dump log file to S3 after compressing to zstd
LOG_FILE="logs/$(date +%Y-%m-%d)-sqoop-log.txt"
zstd --rm ${TEMP_LOG_FILE} -o ${LOG_FILE}.zst
aws s3 sync \
    logs/ \
    s3://dev-ccap-athenapoc-landingzone-us-east1/iasworld/logs \
    --exclude "*gitkeep" \
