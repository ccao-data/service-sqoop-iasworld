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

Files needed only for building the Docker container/dependencies.

- `build.sh` - Convenience script to run the Dockercommands that will build the `sqoop` container
- `build-sqoop.Dockerfile` - Dockerfile to build `sqoop` from scratch if unavailable via the GitLab container registry
- `build-native-hadoop.Dockerfile` - Dockerfile to build Hadoop from scratch, which is a dependency for `sqoop`. `build-sqoop.Dockerfile` depends on this Dockerfile being run first

Files needed only at runtime after the Docker container is built.

- `run.sh` - Main entrypoint script. Idempotent. Run with `sudo ./run.sh` to:
  1. Create `sqoop` jobs for all iasWorld tables (if they don't exist)
  2. Run `sqoop` jobs saved to `metastore/`. This includes all tables by default. Jobs are run incrementally (only rows with an `IASW_ID` greater than the previous run are pulled)
  3. Sync the output of steps 1 and 2 to S3
  4. Save a log file of steps 1-3, compress it, then sync it to S3
- `create-jobs.yaml` - Defines the container needed to create `sqoop` jobs. Outputs job definitions to `metastore/`
- `run-jobs.yaml` - Defines the containers and environment needed to run `sqoop` jobs in a small, pseudo-distributed Hadoop cluster. Pulls from `metastore/` and outputs to `target/` 
- `.env` - Contains DB connection details. Alter before running to provide your own details
- `crontab.bak` - [Cron](https://www.adminschoice.com/crontab-quick-reference) backup file that specifies schedule on which to execute `run.sh`. Install with `echo crontab.back > sudo crontab`

## Usage

### Export All Tables

By default, running the `run.sh` script will export _all_ tables in iasWorld to `target/`. Subsequent runs will export any rows created or updated since the last run.

The `run.sh` script is scheduled to run via cron every night at 1 AM.

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

### Manage Sqoop Jobs

Sometimes you may need to manually delete or update `sqoop` jobs. To do so, you'll need to create a shell inside the `sqoop` Docker container. You can do this by running the following bash command:

```bash
docker-compose -f create-jobs.yaml run sqoop-node-master /bin/bash
```

To delete an existing `sqoop` job, run the following within the shell:

```bash
sqoop job --list
sqoop job --delete ASMT_ALL
```

## Crontab

```
0 6 * * * cd /home/shiny-server/services/service_sqoop_iasworld && /bin/bash ./run.sh
```

## Useful Resources

### Documentation and Guides

- [Sqoop User Guide v1.4.7](https://sqoop.apache.org/docs/1.4.7/SqoopUserGuide.html)
- [Hadoop Cluster Setup Guide](https://hadoop.apache.org/docs/stable/hadoop-project-dist/hadoop-common/ClusterSetup.html)
- [How to install and setup a 3-node Hadoop cluster](https://www.linode.com/docs/guides/how-to-install-and-set-up-hadoop-cluster/)
- [Setup a distributed Hadoop cluster with Docker](https://blog.newnius.com/setup-distributed-hadoop-cluster-with-docker-step-by-step.html)
- [Tips for Docker/Hadoop cluster setup](https://medium.com/@rubenafo/some-tips-to-run-a-multi-node-hadoop-in-docker-9c7012dd4e26)

### Docker Resources

- [Sqoop Docker image](https://github.com/dvoros/docker-sqoop)
- [Hadoop Docker image](https://github.com/dvoros/hadoop-docker) - Sqoop image uses this as a dependency
- [Hadoop cluster Docker image](https://github.com/rancavil/hadoop-single-node-cluster) - Useful setup and options for pseudo-distributed Hadoop

### Debugging

- [SO post on `--bindir` sqoop option](https://stackoverflow.com/questions/21599785/sqoop-not-able-to-import-table)
- [SO post on `--map-column-java` option](https://stackoverflow.com/questions/32537148/sqoop-export-from-hdfs-to-oracle-error)
- [On generating strings for `--map-column-java` using shell and awk](https://stackoverflow.com/questions/45052340/how-to-use-sqoop-import-command-with-map-column-hive/45053915#45053915)
- [Post on java security options that cause `Connection reset` errors](https://blog.pythian.com/connection-resets-when-importing-from-oracle-with-sqoop/)
- [Data nodes not connected/listed by Hadoop](https://stackoverflow.com/questions/29910805/namenode-datanode-not-list-by-using-jps)
- [Oracle JDBC connection issues](https://stackoverflow.com/questions/2327220/oracle-jdbc-intermittent-connection-issue)

### Data Type Mappings (used to populate `--map-column-java`

NOTE: Most `sqoop` import errors are caused by incorrect output data types. Types specified by `--map-column-java` must be compatible with the data type in SQL, otherwise you may get numeric overflows or string exceptions.

- [Java to Oracle Type Mapping Matrix](https://docs.oracle.com/cd/E19501-01/819-3659/gcmaz/)
- [PL/SQL (Oracle SQL) to JDBC mapping](https://docs.oracle.com/cd/B19306_01/java.102/b14188/datamap.htm#CHDBJAGH) - Not applicable here but still helpful
