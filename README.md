# Sqoop Extractor for iasWorld

This repository contains the dependencies and scripts necessary to run [`sqoop`](https://sqoop.apache.org/docs/1.4.7/SqoopUserGuide.html), a data extraction tool for transferring data from relational databases to Hadoop, Hive, or Parquet.

## Structure 

### Directories 

- `docker-config/` - Configuration and setup files for Hadoop backend. Used during Docker build only
- `drivers/` - Mounted during run to provide connection drivers to `sqoop`. Put OJDBC files here (`ojdbc8.jar` or `ojdbc7.jar`)
- `logs/` - Location of saved log files from each run. Logs are in the format `(ISO 8601 timestamp)-sqoop-log.txt` and compressed to [`.zst`](https://github.com/facebook/zstd)
- `metastore/` - Mounted during run as metastore location for `sqoop` jobs. Stores value of `IASW_ID` for each table since last run
- `scripts/` - Runtime scripts and files used to create and run `sqoop` within the container
- `secrets/` - Mounted during run to provide DB password via a file. Alter `secrets/IPTS_PASSWORD` to contain your password
- `target/` - Mounted during run as output directory. All parquet files and job artifacts are saved here

### Files

#### Build

Files needed only for building the Docker container/dependencies.

- `build.sh` - Convenience script to run the Dockercommands that will build the `sqoop` container
- `build-sqoop.Dockerfile` - Dockerfile to build `sqoop` from scratch if unavailable via the GitLab container registry
- `build-native-hadoop.Dockerfile` - Dockerfile to build Hadoop from scratch, which is a dependency for `sqoop`. `build-sqoop.Dockerfile` depends on this Dockerfile being run first

#### Run

Files needed only at runtime after the Docker container is built.

- `run.sh` - Main entrypoint script. Idempotent. Run with `sudo ./run.sh` to:
  1. Create `sqoop` jobs for all iasWorld tables (if they don't exist)
  2. Run `sqoop` jobs saved to `metastore/`. This includes all tables by default. Jobs are run incrementally (only rows with an `IASW_ID` greater than the previous run are pulled)
  3. Sync the output of steps 1 and 2 to S3
  4. Save a log file of steps 1-3, compress it, then sync it to S3
- `create-jobs.yaml` - Defines the container needed to create `sqoop` jobs. Outputs job definitions to `metastore/`
- `run-jobs.yaml` - Defines the containers and environment needed to run `sqoop` jobs in a small, pseudo-distributed Hadoop cluster. Pulls from `metastore/` and outputs to `target/` 
- `.env` - Contains DB connection details. Alter before running to provide your own details
- `crontab.bak` - [Cron](https://www.adminschoice.com/crontab-quick-reference) backup file that specifies schedule on which to execute `run.sh`. Installed with `echo crontab.back > sudo crontab`

## Alternate Usage

### Export A Single Table 

You can query a single table by adding an environmental variable named `IPTS_TABLE` to `create-jobs.yaml` and `run-jobs.yaml`. For example, to query only DWELDAT:

```yaml
...
  environment:
    - MASTER_HOSTNAME=sqoop-node-master
    - IPTS_TABLE=DWELDAT
    ...
...
```

### Managing Sqoop Jobs

Sometimes you may need to manually delete or update `sqoop` jobs. To do so, you'll need to create a shell inside the `sqoop` Docker container. You can do this by running the following bash command:

```bash
docker-compose -f create-jobs.yaml run sqoop-node-master /bin/bash
```

To delete an existing `sqoop` job, run the following within the shell:

```bash
sqoop job --list
sqoop job --delete ASMT_ALL
```

### Restoring From Backup

Occasionally, 

### Issues With `ASMT_ALL`

The `ASMT_ALL` table is fairly large (120+ million rows). As a result, queries against it can sometimes time out. 

To solve this, we can edit the `ASMT_ALL` query directly to only search for new `IASW_ID` rows _after 2020_, instead of all years.

Open `metastore/metastore.db.script` using a text editor and change the `ASMT_ALL` query from:

```sql
SELECT * FROM IASWORLD.ASMT_ALL WHERE $CONDITIONS
```

To the following:

```sql
SELECT * FROM IASWORLD.ASMT_ALL WHERE TAXYR >= 2020 AND $CONDITIONS
```

## Useful Resources


