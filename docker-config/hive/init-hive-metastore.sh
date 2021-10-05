#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER hive WITH PASSWORD 'hive';
    CREATE DATABASE iasworld;
    ALTER DATABASE iasworld OWNER TO hive;
EOSQL
