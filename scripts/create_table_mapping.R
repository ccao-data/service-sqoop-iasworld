library(arrow)
library(RJDBC)
library(readr)
library(DBI)
library(dplyr)
options(java.parameters = "-Xmx8G")

iasworld_conn_string <- Sys.getenv("DB_CONFIG_IASWORLD")
iasworld_drvr_path <- Sys.getenv("DB_CONFIG_IASWORLD_DRV")

iasworld_conn <- dbConnect(
  drv = JDBC(
    driverClass = "oracle.jdbc.OracleDriver",
    classPath = iasworld_drvr_path,
  ),
  url = iasworld_conn_string
)

tables <- dbGetQuery(
  iasworld_conn, "
  SELECT
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE,
    DATA_PRECISION
  FROM ALL_TAB_COLUMNS
  WHERE OWNER = 'IASWORLD'
  AND TABLE_NAME NOT IN (
    SELECT VIEW_NAME
    FROM ALL_VIEWS
    WHERE OWNER = 'IASWORLD'
    AND VIEW_NAME != 'ASMT_ALL'
  )"
)

tables <- tables %>%
  mutate(JAVA_TYPE = case_when(
    DATA_TYPE == "CLOB" ~ "String",
    DATA_TYPE == "VARCHAR2" ~ "String",
    DATA_TYPE == "DATE" ~ "String",
    DATA_TYPE == "NUMBER" & DATA_PRECISION <= 10 ~ "Integer",
    DATA_TYPE == "NUMBER" & DATA_PRECISION <= 19 ~ "Double",
    DATA_TYPE == "NUMBER" & is.na(DATA_PRECISION) ~ "Double",
  )) %>%
  arrange(TABLE_NAME)

write_csv(tables, "tables-mapping.csv")
