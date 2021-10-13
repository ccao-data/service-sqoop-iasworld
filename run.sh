#!/bin/bash
START_TIME=`date +%s`

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

# Drop existing keys on S3 for any pulled tables
TABLES_EXTRACTED=$(ls target/)
for TABLE in ${TABLES_EXTRACTED}; do
    /usr/bin/aws s3 rm \
        ${BUCKET_URI}/iasworld/${TABLE} \
        --exclude "*" \
        --include "*.parquet" \
        --recursive \
        | ts '%.s' \
        | tee -a ${TEMP_LOG_FILE}
done

# Uploaded pulled files from local target/ dir to S3
/usr/bin/aws s3 mv \
    target/ \
    ${BUCKET_URI}/iasworld \
    --exclude "*" \
    --include "*.parquet" \
    --recursive \
    --no-progress \
    | ts '%.s' \
    | tee -a ${TEMP_LOG_FILE}

# Delete any remaining empty dirs
find target/ -type d -empty -delete

# Print overall runtime stats and tables extracted
END_TIME=`date +%s`
RUNTIME=$((END_TIME-START_TIME))
HH=$((RUNTIME / 3600))
MM=$(( (RUNTIME % 3600) / 60 ))
SS=$(( (RUNTIME % 3600) % 60 ))
echo "Tables extracted: ${TABLES_EXTRACTED}" \
    | ts '%.s' \
    | tee -a ${TEMP_LOG_FILE}
echo "Total extraction time: ${HH}:${MM}:${SS} (hh:mm:ss)" \
    | ts '%.s' \
    | tee -a ${TEMP_LOG_FILE}

# Bash function to convert text log to JSON consumable by CloudWatch
parse_logs () {
    cat $1 \
    | sed 's/ /|/' \
    | sed 's/\([0-9]\.[0-9]\{3\}\)[0-9]\{1,\}/\1/' \
    | sed 's/\.//' \
    | awk '{print $1, $NF}' OFS='|' FS='|' \
    | jq -Rn '[inputs
        | . / "\n"
        | (.[] | select(length > 0) | . / "|") as $input
        | {"timestamp": $input[0]|tonumber, "message": $input[1]}]' \
    > $2
}

# Create log stream in CloudWatch with today's date
LOG_STREAM_NAME="sqoop-job-log-$(date -u +'%Y-%m-%d_%H-%M-%S')"
/usr/bin/aws logs create-log-stream \
    --log-group-name ${LOG_GROUP_NAME} \
    --log-stream-name ${LOG_STREAM_NAME}

# Convert text output from Docker and AWS CLI to clean JSON
# for upload to AWS CloudWatch. If the file length is greater than
# 10000, then we need to upload in chunks
if [[ $(cat ${TEMP_LOG_FILE} | wc -l) -le 10000 ]]; then
    # Parse logs and upload to CloudWatch
    parse_logs ${TEMP_LOG_FILE} ${TEMP_LOG_FILE}.json
    /usr/bin/aws logs put-log-events \
        --log-group-name ${LOG_GROUP_NAME} \
        --log-stream-name ${LOG_STREAM_NAME} \
        --log-events file://${TEMP_LOG_FILE}.json
    echo "Logs successfully uploaded to CloudWatch"
else
    # Split logs, parse, then upload in chunks. First loop skips using
    # generated sequence token
    COUNTER=1
    split -l 9000 ${TEMP_LOG_FILE} logs/temp-sqoop-log-
    for f in logs/temp-sqoop-log-*; do
        parse_logs ${f} ${f}.json
        if [[ ${COUNTER} -eq 1 ]]; then
            SEQ_TOKEN=$(
                /usr/bin/aws logs put-log-events \
                    --log-group-name ${LOG_GROUP_NAME} \
                    --log-stream-name ${LOG_STREAM_NAME} \
                    --log-events file://${f}.json \
                | jq -r .nextSequenceToken
            )
        else
            SEQ_TOKEN=$(
                /usr/bin/aws logs put-log-events \
                    --log-group-name ${LOG_GROUP_NAME} \
                    --log-stream-name ${LOG_STREAM_NAME} \
                    --log-events file://${f}.json \
                    --sequence-token ${SEQ_TOKEN} \
                | jq -r .nextSequenceToken
            )
        fi
        COUNTER=$((COUNTER + 1))
    done
    echo "Logs successfully uploaded to CloudWatch"
fi

# Remove uploaded log files
rm ${TEMP_LOG_FILE}*
