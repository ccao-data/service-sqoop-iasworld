# Apache Sqoop Extractor for iasWorld

## Basic Usage

Populate the following files:

- `.env` - Fill in with DB connection details
- `secrets/IPTS_PASSWORD` - Paste IPTS password

## Query Single Table

You can query a single table by running:

```bash

docker-compose run -e IPTS_TABLE=LPNBHD sqoop scripts/pull.sh

```
