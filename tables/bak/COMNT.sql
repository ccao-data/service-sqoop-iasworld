CREATE TABLE `iasworld.comnt`(
  `jur` varchar(6), 
  `parid` varchar(30), 
  `comntno` decimal(10,2), 
  `code` varchar(4), 
  `comntstat` varchar(3), 
  `comnt` varchar(80), 
  `who` varchar(50), 
  `wen` string, 
  `status` varchar(1), 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `caseno` varchar(15), 
  `comnt2` string, 
  `loaded_at` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.LazyBinaryColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://sqoop-node-master:9000/user/hive/warehouse/iasworld.db/comnt'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1710959767')
