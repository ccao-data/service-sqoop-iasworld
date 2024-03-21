CREATE TABLE `iasworld.lpmod`(
  `ver` varchar(8), 
  `ltype` varchar(1), 
  `lcode` varchar(6), 
  `nmod` decimal(4,0), 
  `zmod` decimal(4,0), 
  `lmod` decimal(4,0), 
  `smod` decimal(4,0), 
  `umod` decimal(4,0), 
  `bsize` decimal(10,0), 
  `brate` decimal(10,0), 
  `bincr` decimal(10,0), 
  `bdecr` decimal(10,0), 
  `who` varchar(50), 
  `wen` string, 
  `depthtble` varchar(3), 
  `modtype` varchar(10), 
  `acretble` decimal(4,0), 
  `adjltype` varchar(1), 
  `acradjflg` varchar(1), 
  `iasw_id` decimal(10,0), 
  `soiltble` varchar(30), 
  `schedtble` decimal(6,0), 
  `loaded_at` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.LazyBinaryColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://sqoop-node-master:9000/user/hive/warehouse/iasworld.db/lpmod'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1710961051')
