CREATE TABLE `iasworld.comnt3`(
  `jur` varchar,
  `parid` varchar,
  `comntno` decimal,
  `fileyr` decimal,
  `linkid` decimal,
  `code` varchar,
  `comnt` varchar,
  `who` varchar,
  `wen` string,
  `status` varchar,
  `iasw_id` decimal,
  `trans_id` decimal,
  `upd_status` varchar,
  `bldgno` varchar,
  `unit` varchar,
  `comnt2` string,
  `loaded_at` string)
PARTITIONED BY (`taxyr` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='ZSTD');
