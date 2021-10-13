CREATE TABLE `iasworld.htagnt`(
  `jur` varchar(6), 
  `agent` varchar(6), 
  `who` varchar(10), 
  `wen` string, 
  `status` varchar(1), 
  `name1` varchar(205), 
  `name2` varchar(205), 
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
  `firm1` varchar(40), 
  `firm2` varchar(40), 
  `phone` varchar(25), 
  `fax` varchar(25), 
  `note1` varchar(40), 
  `note2` varchar(40), 
  `deactivat` string, 
  `ssn` varchar(9), 
  `email` varchar(230), 
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
  `comments` varchar(200), 
  `fedid` varchar(20), 
  `seq` decimal(3,0), 
  `cur` varchar(1), 
  `ownnum` varchar(20), 
  `name1_firstname` varchar(40), 
  `name1_lastname` varchar(40), 
  `name1_middlename` varchar(40), 
  `name1_prefix` varchar(20), 
  `name1_suffix` varchar(20), 
  `name1_companyname` varchar(205), 
  `name2_firstname` varchar(40), 
  `name2_lastname` varchar(40), 
  `name2_middlename` varchar(40), 
  `name2_prefix` varchar(20), 
  `name2_suffix` varchar(20), 
  `name2_companyname` varchar(205), 
  `agent_type` decimal(10,0), 
  `iasw_id` decimal(10,0))
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
