# Script to generate manually mappings for data types in iasWorld
# Maps from Oracle data types to HCatalog data types
# for use with sqoop/parquet/hive
# See: https://docs.oracle.com/cd/E15817_01/server.111/b31055/adabas_datatype_conv.htm
# https://docs.oracle.com/cd/E19501-01/819-3659/gcmaz/
# https://cwiki.apache.org/confluence/display/Hive/HCatalog+InputOutput#HCatRecord
library(arrow)
library(RJDBC)
library(readr)
library(DBI)
library(dplyr)
options(java.parameters = "-Xmx8G")

# Instantiate iasWorld connection
iasworld_conn_string <- Sys.getenv("DB_CONFIG_IASWORLD")
iasworld_drvr_path <- Sys.getenv("DB_CONFIG_IASWORLD_DRV")
iasworld_conn <- dbConnect(
  drv = JDBC(
    driverClass = "oracle.jdbc.OracleDriver",
    classPath = iasworld_drvr_path,
  ),
  url = iasworld_conn_string
)

# Get list of every column from every table
tables <- dbGetQuery(
  iasworld_conn, "
  SELECT
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE,
    DATA_PRECISION,
    DATA_SCALE,
    COLUMN_ID
  FROM ALL_TAB_COLUMNS
  WHERE OWNER = 'IASWORLD'
  AND TABLE_NAME NOT IN (
    SELECT VIEW_NAME
    FROM ALL_VIEWS
    WHERE OWNER = 'IASWORLD'
    AND VIEW_NAME != 'ASMT_ALL'
  )"
)

# Manually mapped columns based on sampling of NUMBER (no precision/scale) cols
addl_double_cols <- c(
  "BRATE", "COMVALPERUNIT", "ODECR", "OINCR", "ORATE", "OSIZE",
  "OVRVALAPR1", "OVRVALAPR2", "OVRVALAPR3", "R1", "R2"
)

addl_bigint_cols <- c(
  "BINCR", "BSIZE", "CONST1", "IASW_ID", "NOTICVAL", "OVRVAL04", "OVRVAL11",
  "OVRVAL13", "OVRVAL50", "OVRVAL51", "OVRVAL55", "OVRVAL57", "OVRVALASM1",
  "OVRVALASM2", "OVRVALASM3", "R3", "STAMPVAL", "TOT01", "TOT02", "TOT03",
  "TOT04", "TOT05", "TOT06", "TOT07", "TOT08", "TOT09", "TOT10", "TOT11",
  "TOT12", "TOT13", "TOT14", "TOT15", "TOT16", "TOT17", "TOT18", "TOT19",
  "TOT20", "TOT21", "TOT22", "TOT23", "TOT24", "TOT25", "TOT26", "TOT27",
  "TOT28", "TOT29", "TOT30", "TOT31", "TOT32", "TOT33", "TOT34", "TOT35",
  "TOT36", "TOT39", "TOT40", "TOT41", "TOT42", "TOT43", "TOT46", "TOT47",
  "TOT48", "TOT49", "TOT50", "TOT51", "TOT52", "TOT53", "TOT54", "TOT55",
  "TOT56", "TOT57", "TOT58", "TOT59", "TOT60", "TOTAPR1", "TOTAPR2", "TOTAPR3",
  "TOTASM1", "TOTASM2", "TOTASM3", "TOTTAX", "TXPYVAL", "VAL01", "VAL02",
  "VAL03", "VAL04", "VAL05", "VAL06", "VAL07", "VAL08", "VAL09", "VAL10",
  "VAL11", "VAL12", "VAL13", "VAL14", "VAL15", "VAL16", "VAL17", "VAL18",
  "VAL19", "VAL20", "VAL21", "VAL22", "VAL23", "VAL24", "VAL25", "VAL26",
  "VAL27", "VAL28", "VAL29", "VAL30", "VAL31", "VAL32", "VAL33", "VAL34",
  "VAL35", "VAL36", "VAL39", "VAL40", "VAL41", "VAL42", "VAL43", "VAL46",
  "VAL47", "VAL48", "VAL49", "VAL50", "VAL51", "VAL52", "VAL53", "VAL54",
  "VAL55", "VAL56", "VAL57", "VAL58", "VAL59", "VAL60", "VALAPR1", "VALAPR2",
  "VALAPR3", "VALASM1", "VALASM2", "VALASM3", "VALDISP", "VALTAX"
)

tables <- tables %>%
  mutate(HCAT_TYPE = case_when(
    DATA_TYPE == "CLOB" ~ "string",
    DATA_TYPE == "VARCHAR2" ~ "string",
    DATA_TYPE == "DATE" ~ "string",
    DATA_TYPE == "NUMBER" & DATA_PRECISION <= 10 & (DATA_SCALE == 0 | is.na(DATA_SCALE)) ~ "bigint",
    DATA_TYPE == "NUMBER" & (DATA_PRECISION > 10 | DATA_SCALE > 0) ~ "double",
    DATA_TYPE == "NUMBER" & is.na(DATA_PRECISION) & COLUMN_NAME %in% addl_double_cols ~ "double",
    DATA_TYPE == "NUMBER" & is.na(DATA_PRECISION) & COLUMN_NAME %in% addl_bigint_cols ~ "bigint",
    DATA_TYPE == "NUMBER" & is.na(DATA_PRECISION) ~ "bigint"
  )) %>%
  arrange(TABLE_NAME, COLUMN_ID) %>%
  select(-COLUMN_ID)

write_csv(tables, "tables-mapping.csv", quote = "none")

dbDisconnect(iasworld_conn)
