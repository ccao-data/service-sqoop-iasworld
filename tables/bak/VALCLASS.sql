CREATE TABLE `iasworld.valclass`(
  `jur` varchar(6), 
  `taxyr` decimal(4,0), 
  `rolltype` varchar(10), 
  `valclass` varchar(4), 
  `class` varchar(4), 
  `luc` varchar(4), 
  `vclass` varchar(4), 
  `who` varchar(50), 
  `wen` string, 
  `ratio1` decimal(12,9), 
  `ratio2` decimal(12,9), 
  `ratio3` decimal(12,9), 
  `user1` varchar(20), 
  `user2` varchar(20), 
  `user3` varchar(20), 
  `user4` varchar(20), 
  `user5` varchar(20), 
  `user6` varchar(20), 
  `user7` varchar(20), 
  `user8` varchar(20), 
  `user9` varchar(20), 
  `user10` varchar(20), 
  `assess_pct` decimal(5,2), 
  `user11` varchar(20), 
  `user12` varchar(20), 
  `user13` varchar(20), 
  `user14` varchar(20), 
  `user15` varchar(20), 
  `iasw_id` decimal(10,0), 
  `loaded_at` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.LazyBinaryColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://sqoop-node-master:9000/user/hive/warehouse/iasworld.db/valclass'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1710961626')
