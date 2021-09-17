# Sqoop Extractor for iasWorld

This repository contains the dependencies and scripts necessary to run [`sqoop`](https://sqoop.apache.org/docs/1.4.7/SqoopUserGuide.html), a data extraction tool for transferring data from relational databases to Hadoop, Hive, or Parquet.

## Structure 

### Directories 

- `docker-config/` - Configuration and setup files for Hadoop backend. Used during build only
- `drivers/` - Mounted during run to provide connection drivers to `sqoop`. Put OJDBC files here (`ojdbc8.jar` or `ojdbc7.jar`)
- `logs/` - Location of saved log files from each run. Logs are in the format `%Y-%m-%d-sqoop-log.txt` and compressed to [zst](https://github.com/facebook/zstd)
- `metastore/` - Mounted during run as metastore location for `sqoop` jobs. Stores value of `IASW_ID` since last run
- `scripts/` - Runtime scripts and files used to create and run `sqoop` within the container
- `secrets/` - Mounted during run to provide DB password via a file. Alter `secrets/IPTS_PASSWORD` to contain your password
- `target/` - Mounted during run as output directory. All parquet files and job artifacts are saved here

### Files

- `run.sh` - Main entrypoint script. Idempotent. Run with `source run.sh` to:
  1. Create `sqoop` jobs for all iasWorld tables (if they don't exist)
  2. Run `sqoop` jobs saved to `metastore/`. This includes all tables by default. Jobs are run incrementally (only rows with an `IASW_ID` greater than the previous run are pulled)
  3. Sync the output of steps 1 and 2 to S3
  4. Save a log file of steps 1-3, compress it, then sync it to S3
- `create-jobs.yaml` - Defines the container needed to create `sqoop` jobs. Outputs job definitions to `metastore/`
- `run-jobs.yaml` - Defines the containers and environment needed to run `sqoop` jobs in a small, pseudo-distributed Hadoop cluster. Pulls from `metastore/` and outputs to `target/` 
- `Dockerfile` - Builds `sqoop` from scratch if unavailable via the GitLab registry
- `.env` - Contains DB connection details. Alter before running to provide your own details

## Alternate Usage

You can query a single table by adding an environmental variable named `IPTS_TABLE` to `run-jobs.yaml`. For example, to query only DWELDAT:

```yaml
...
  environment:
    - MASTER_HOSTNAME=sqoop-node-master
    - IPTS_TABLE=DWELDAT
    ...
...
```

## Managing Sqoop Jobs

Sometimes you may need to manually delete or update `sqoop` jobs. To do so, you'll need to create a shell inside the docker sqoop container:

```bash
docker-compose -f create-jobs.yaml run sqoop-node-master /bin/bash
```
