CREATE TABLE `iasworld.comnt`(
  `jur` string,
  `parid` string,
  `comntno` numeric,
  `code` string,
  `comntstat` string,
  `comnt` string,
  `who` string,
  `wen` string,
  `status` string,
  `iasw_id` numeric,
  `trans_id` numeric,
  `upd_status` string,
  `caseno` string,
  `comnt2` string,
  `loaded_at` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
