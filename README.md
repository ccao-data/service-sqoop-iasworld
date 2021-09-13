# Sqoop Extractor for iasWorld

This repository contains the dependencies and scripts necessary to run [`sqoop`](https://sqoop.apache.org/docs/1.4.7/SqoopUserGuide.html), a data extraction tool for transferring data from relational databases to Hadoop, Hive, or Parquet.

## Structure 

### Directories 

- `docker-config/` - Configuration and setup files for Hadoop backend. Used during build only
- `drivers/` - Mounted during run to provide connection drivers to `sqoop`. Put OJDBC files here (`ojdbc8.jar` or `ojdbc7.jar`)
- `metastore/` - Mounted during run as metastore location for `sqoop` jobs. Stores value of IASW_ID since last run
- `scripts/` - Runtime scripts and files used to create and run `sqoop` within the container
- `secrets/` - Mounted during run to provide DB password via a file. Alter `secrets/IPTS_PASSWORD` to contain your password
- `target/` - Mounted during run as output directory. All parquet files and job artifacts are saved here

### Files

- `.env` - Contains DB connection details. Alter before running
- `docker-compose.yaml` - Docker environment setup for running jobs via `run.sh`
- `Dockerfile` - Builds `sqoop` from scratch if unavailable as an image
- `run.sh` - Entrypoint for running `sqoop` jobs and syncing to S3

## Alternate Usage

You can query a single table by passing an environmental variable named `IPTS_TABLE` to `docker-compose run`:

```bash
# Create the sqoop job. It will be named DWELDAT
docker-compose run -e IPTS_TABLE=DWELDAT sqoop scripts/create_jobs.sh

# Run the sqoop job
docker-compose run -e IPTS_TABLE=DWELDAT sqoop scripts/create_jobs.sh
```
