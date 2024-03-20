CREATE TABLE `iasworld.comnt`(
  `jur` varchar,
  `parid` varchar,
  `comntno` decimal,
  `code` varchar,
  `comntstat` varchar,
  `comnt` varchar,
  `who` varchar,
  `wen` string,
  `status` varchar,
  `iasw_id` decimal,
  `trans_id` decimal,
  `upd_status` varchar,
  `caseno` varchar,
  `comnt2` string,
  `loaded_at` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='ZSTD');
