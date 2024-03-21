CREATE TABLE `iasworld.comnt3`(
  `jur` varchar(6), 
  `parid` varchar(30), 
  `taxyr` decimal(4,0), 
  `comntno` decimal(10,2), 
  `fileyr` decimal(4,0), 
  `linkid` decimal(10,2), 
  `code` varchar(4), 
  `comnt` varchar(80), 
  `who` varchar(50), 
  `wen` string, 
  `status` varchar(1), 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `bldgno` varchar(10), 
  `unit` varchar(10), 
  `comnt2` string, 
  `loaded_at` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.LazyBinaryColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://sqoop-node-master:9000/user/hive/warehouse/iasworld.db/comnt3'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1710959850')
