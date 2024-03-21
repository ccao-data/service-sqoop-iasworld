CREATE TABLE `iasworld.enter`(
  `jur` varchar(6), 
  `parid` varchar(30), 
  `enterdt` string, 
  `entercd` varchar(3), 
  `enterid` varchar(8), 
  `enterinfo` varchar(3), 
  `who` varchar(50), 
  `wen` string, 
  `user1` varchar(20), 
  `user2` varchar(20), 
  `user3` varchar(20), 
  `user4` varchar(20), 
  `user5` varchar(20), 
  `user6` varchar(20), 
  `note1` varchar(80), 
  `note2` varchar(80), 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `seq` decimal(3,0), 
  `cur` varchar(1), 
  `deactivat` string, 
  `loaded_at` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.LazyBinaryColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://sqoop-node-master:9000/user/hive/warehouse/iasworld.db/enter'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1710960348')
