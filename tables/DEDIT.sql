CREATE TABLE `iasworld.dedit`(
  `tbl1` string,
  `tbl2` string,
  `fld1` string,
  `fld2` string,
  `val1` string,
  `val2` string,
  `msg` string,
  `shortdesc` string,
  `who` string,
  `wen` string,
  `longdesc` string,
  `iasw_id` numeric,
  `loaded_at` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
