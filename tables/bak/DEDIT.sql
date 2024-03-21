CREATE TABLE `iasworld.dedit`(
  `tbl1` varchar(30), 
  `tbl2` varchar(30), 
  `fld1` varchar(30), 
  `fld2` varchar(30), 
  `val1` varchar(20), 
  `val2` varchar(20), 
  `msg` varchar(40), 
  `shortdesc` varchar(15), 
  `who` varchar(50), 
  `wen` string, 
  `longdesc` varchar(200), 
  `iasw_id` decimal(10,0), 
  `loaded_at` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.LazyBinaryColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://sqoop-node-master:9000/user/hive/warehouse/iasworld.db/dedit'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1710960184')
