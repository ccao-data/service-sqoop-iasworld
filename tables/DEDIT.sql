CREATE TABLE `iasworld.dedit`(
  `tbl1` varchar,
  `tbl2` varchar,
  `fld1` varchar,
  `fld2` varchar,
  `val1` varchar,
  `val2` varchar,
  `msg` varchar,
  `shortdesc` varchar,
  `who` varchar,
  `wen` string,
  `longdesc` varchar,
  `iasw_id` decimal,
  `loaded_at` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='ZSTD');
