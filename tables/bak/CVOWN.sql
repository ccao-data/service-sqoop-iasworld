CREATE TABLE `iasworld.cvown`(
  `jur` varchar(6), 
  `conveyno` decimal(9,0), 
  `taxyr` decimal(4,0), 
  `ownseq` decimal(3,0), 
  `who` varchar(50), 
  `wen` string, 
  `whocalc` varchar(10), 
  `wencalc` string, 
  `status` varchar(1), 
  `otaxyr` decimal(4,0), 
  `oseq` decimal(3,0), 
  `delflg` varchar(1), 
  `chgrsn` varchar(2), 
  `pown1` varchar(205), 
  `pown2` varchar(205), 
  `po` decimal(1,0), 
  `own1` varchar(205), 
  `own2` varchar(205), 
  `careof` varchar(60), 
  `addrtype` varchar(1), 
  `adrno` decimal(10,0), 
  `adrgrid` varchar(12), 
  `adradd` varchar(6), 
  `adrdir` varchar(2), 
  `adrstr` varchar(30), 
  `adrsuf` varchar(8), 
  `adrsuf2` varchar(8), 
  `cityname` varchar(40), 
  `statecode` varchar(2), 
  `country` varchar(30), 
  `postalcode` varchar(10), 
  `unitdesc` varchar(10), 
  `unitno` varchar(10), 
  `addr1` varchar(80), 
  `addr2` varchar(80), 
  `addr3` varchar(80), 
  `zip1` varchar(5), 
  `zip2` varchar(4), 
  `carrier_rt` varchar(4), 
  `postal_indx` varchar(10), 
  `pctown` decimal(7,4), 
  `salekey` decimal(8,0), 
  `owntype1` varchar(3), 
  `owntype2` varchar(3), 
  `owntype3` varchar(3), 
  `owntype4` varchar(3), 
  `hidename` varchar(1), 
  `ssn` varchar(9), 
  `fedid` varchar(10), 
  `stateid` varchar(15), 
  `marstat` varchar(1), 
  `grpflag` varchar(6), 
  `ownbeg` string, 
  `ownend` string, 
  `phone` varchar(25), 
  `fax` varchar(25), 
  `email` varchar(230), 
  `notecd` varchar(2), 
  `ownnum` varchar(20), 
  `link` varchar(15), 
  `partial` varchar(1), 
  `book` varchar(8), 
  `page` varchar(8), 
  `note1` varchar(40), 
  `note2` varchar(40), 
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
  `user11` varchar(20), 
  `user12` varchar(20), 
  `user13` varchar(20), 
  `user14` varchar(20), 
  `user15` varchar(20), 
  `user16` varchar(20), 
  `user17` varchar(20), 
  `user18` varchar(20), 
  `user19` varchar(20), 
  `user20` varchar(20), 
  `user21` varchar(20), 
  `user22` varchar(20), 
  `user23` varchar(100), 
  `user24` varchar(100), 
  `user25` varchar(20), 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `cnamejur` varchar(6), 
  `user26` varchar(60), 
  `user27` varchar(60), 
  `user28` varchar(60), 
  `user29` varchar(60), 
  `user30` varchar(60), 
  `user31` varchar(60), 
  `user32` varchar(60), 
  `user33` varchar(60), 
  `user34` varchar(60), 
  `user35` varchar(60), 
  `user36` varchar(60), 
  `user37` varchar(60), 
  `user38` varchar(60), 
  `user39` varchar(60), 
  `user40` varchar(60), 
  `splitno` decimal(15,0), 
  `own1_firstname` varchar(40), 
  `own1_lastname` varchar(40), 
  `own1_middlename` varchar(40), 
  `own1_prefix` varchar(20), 
  `own1_suffix` varchar(20), 
  `own1_companyname` varchar(205), 
  `own2_firstname` varchar(40), 
  `own2_lastname` varchar(40), 
  `own2_middlename` varchar(40), 
  `own2_prefix` varchar(20), 
  `own2_suffix` varchar(20), 
  `own2_companyname` varchar(205), 
  `pown1_firstname` varchar(40), 
  `pown1_lastname` varchar(40), 
  `pown1_middlename` varchar(40), 
  `pown1_prefix` varchar(20), 
  `pown1_suffix` varchar(20), 
  `pown1_companyname` varchar(205), 
  `pown2_firstname` varchar(40), 
  `pown2_lastname` varchar(40), 
  `pown2_middlename` varchar(40), 
  `pown2_prefix` varchar(20), 
  `pown2_suffix` varchar(20), 
  `pown2_companyname` varchar(205), 
  `attn` varchar(100), 
  `floorno` varchar(50), 
  `delmod` varchar(10), 
  `delmodval` varchar(255), 
  `site` varchar(50), 
  `compartment` varchar(50), 
  `delinstalltype` varchar(10), 
  `delinstallval` varchar(255), 
  `addr4` varchar(80), 
  `addr5` varchar(80), 
  `adrpre` varchar(10), 
  `addrvalid` varchar(1), 
  `udate1` string, 
  `udate2` string, 
  `udate3` string, 
  `udate4` string, 
  `udate5` string, 
  `udate6` string, 
  `udate7` string, 
  `udate8` string, 
  `udate9` string, 
  `udate10` string, 
  `skip_addr_validation` varchar(1), 
  `user41` varchar(500), 
  `loaded_at` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.LazyBinaryColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://sqoop-node-master:9000/user/hive/warehouse/iasworld.db/cvown'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1710960019')
