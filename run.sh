#!/bin/bash

# for table in tables

# if [! -f jobs/

# # 1. Get list of table names

# # 2. Run in loop with compose

# # 3. aws s3 sync target dir

docker-compose run --rm sqoop /scripts/create_jobs.sh
docker-compose run --rm sqoop /scripts/run_jobs.sh
