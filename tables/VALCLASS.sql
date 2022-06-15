CREATE TABLE `iasworld.valclass`(
  `jur` varchar(6), 
  `rolltype` varchar(10), 
  `valclass` varchar(4), 
  `class` varchar(4), 
  `luc` varchar(4), 
  `vclass` varchar(4), 
  `who` varchar(50), 
  `wen` string, 
  `ratio1` decimal(7,4), 
  `ratio2` decimal(7,4), 
  `ratio3` decimal(7,4), 
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
  `iasw_id` decimal(10,0))
PARTITIONED BY (`taxyr` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
