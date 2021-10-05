#!/bin/bash

# Env variables controlling where sqooped data is exported to
TEMP_LOG_FILE="logs/temp-sqoop-log"
BUCKET_URI="s3://ccao-staging-us-east-1"
LOG_GROUP_NAME="/ccao/jobs/sqoop"

# Run all sqoop jobs to extract tables
/usr/local/bin/docker-compose up \
    --abort-on-container-exit \
    --remove-orphans \
    --no-color \
    | ts '%.s' \
    | tee ${TEMP_LOG_FILE}

# Cleanup after docker run
/usr/local/bin/docker-compose rm -f -s -v

# # Move target/ directory to staging S3
/usr/bin/aws s3 mv \
    target/ \
    ${BUCKET_URI}/iasworld/target \
    --exclude "*" \
    --include "*.parquet" \
    --recursive \
    --no-progress \
    | ts '%.s' \
    | tee -a ${TEMP_LOG_FILE}

# Delete any remaining empty dirs
find target/ -type d -empty -delete

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
# /usr/bin/aws logs create-log-stream \
#     --log-group-name ${LOG_GROUP_NAME} \
#     --log-stream-name ${LOG_STREAM_NAME}

# # Upload logs to CloudWatch
# /usr/bin/aws logs put-log-events \
#     --log-group-name ${LOG_GROUP_NAME} \
#     --log-stream-name ${LOG_STREAM_NAME} \
#     --log-events file://${LOG_FILE}

# Remove temp files
rm ${LOG_FILE} ${TEMP_LOG_FILE}
