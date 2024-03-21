CREATE TABLE `iasworld.comnt3`(
  `jur` string,
  `parid` string,
  `comntno` numeric,
  `fileyr` numeric,
  `linkid` numeric,
  `code` string,
  `comnt` string,
  `who` string,
  `wen` string,
  `status` string,
  `iasw_id` numeric,
  `trans_id` numeric,
  `upd_status` string,
  `bldgno` string,
  `unit` string,
  `comnt2` string,
  `loaded_at` string)
PARTITIONED BY (`taxyr` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
