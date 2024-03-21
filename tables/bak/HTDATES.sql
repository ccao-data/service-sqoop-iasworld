CREATE TABLE `iasworld.htdates`(
  `jur` varchar(6), 
  `parid` varchar(30), 
  `taxyr` decimal(4,0), 
  `heartyp` varchar(1), 
  `subkey` decimal(3,0), 
  `who` varchar(50), 
  `wen` string, 
  `schdte` string, 
  `schtime` decimal(4,0), 
  `code` varchar(4), 
  `notes` varchar(2000), 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `heartypjur` varchar(6), 
  `caseno` varchar(15), 
  `user1` varchar(40), 
  `user2` varchar(40), 
  `user3` varchar(40), 
  `user4` varchar(40), 
  `user5` varchar(40), 
  `user6` varchar(40), 
  `user7` varchar(40), 
  `user8` varchar(40), 
  `user9` varchar(40), 
  `user10` varchar(40), 
  `userval1` decimal(10,0), 
  `userval2` decimal(10,0), 
  `userval3` decimal(10,0), 
  `userval4` decimal(10,0), 
  `userval5` decimal(10,0), 
  `userval6` decimal(10,0), 
  `userval7` decimal(10,0), 
  `userval8` decimal(10,0), 
  `userval9` decimal(10,0), 
  `userval10` decimal(10,0), 
  `udate1` string, 
  `udate2` string, 
  `udate3` string, 
  `udate4` string, 
  `udate5` string, 
  `loaded_at` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.LazyBinaryColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://sqoop-node-master:9000/user/hive/warehouse/iasworld.db/htdates'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1710960791')
