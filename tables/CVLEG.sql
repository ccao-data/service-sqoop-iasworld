CREATE TABLE `iasworld.cvleg`(
  `conveyno` decimal(9,0),
  `jur` varchar(6),
  `parid` varchar(30),
  `parseq` decimal(3,0),
  `who` varchar(50),
  `wen` string,
  `whocalc` varchar(10),
  `wencalc` string,
  `status` varchar(1),
  `procname` varchar(10),
  `procdate` string,
  `pown1` varchar(205),
  `multown` varchar(1),
  `pmultown` varchar(1),
  `lseq` decimal(3,0),
  `oseq` decimal(3,0),
  `upd_owndat` varchar(1),
  `upd_ownmlt` varchar(1),
  `adrpre` varchar(10),
  `adrno` decimal(10,0),
  `adradd` varchar(10),
  `adrdir` varchar(2),
  `adrstr` varchar(50),
  `adrsuf` varchar(8),
  `adrsuf2` varchar(8),
  `cityname` varchar(50),
  `statecode` varchar(2),
  `unitdesc` varchar(20),
  `unitno` varchar(20),
  `loc2` varchar(40),
  `zip1` varchar(5),
  `zip2` varchar(4),
  `taxdist` varchar(5),
  `valpct` decimal(9,6),
  `taxdist2` varchar(5),
  `valpct2` decimal(9,6),
  `taxdist3` varchar(5),
  `valpct3` decimal(9,6),
  `taxdist4` varchar(5),
  `valpct4` decimal(9,6),
  `taxdist5` varchar(5),
  `valpct5` decimal(9,6),
  `taxdist6` varchar(5),
  `valpct6` decimal(9,6),
  `schdist` varchar(5),
  `schvalpct` decimal(9,6),
  `compct` decimal(9,6),
  `acres` decimal(12,4),
  `sqft` decimal(10,0),
  `legal1` varchar(60),
  `legal2` varchar(60),
  `legal3` varchar(60),
  `subdiv` varchar(40),
  `subdnum` varchar(15),
  `sublot` varchar(8),
  `subblck` varchar(8),
  `subcode` varchar(1),
  `condbdg` varchar(8),
  `condunt` varchar(10),
  `actfrt` decimal(5,1),
  `actdep` decimal(5,1),
  `lotdim` varchar(40),
  `numlot` decimal(10,0),
  `xcoord` decimal(15,8),
  `ycoord` decimal(15,8),
  `zcoord` decimal(15,8),
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
  `user21` varchar(80),
  `user22` varchar(80),
  `user23` varchar(80),
  `user24` varchar(80),
  `user25` varchar(80),
  `saledt` string,
  `price` decimal(10,0),
  `salekey` decimal(8,0),
  `transdt` string,
  `oldyr` decimal(4,0),
  `oldseq` decimal(3,0),
  `newseq` decimal(3,0),
  `book` varchar(8),
  `page` varchar(8),
  `oldown` varchar(205),
  `own1` varchar(205),
  `saletype` varchar(1),
  `saleval` varchar(2),
  `steb` varchar(3),
  `stflag` varchar(1),
  `nopar` decimal(4,0),
  `instruno` varchar(20),
  `instrtyp` varchar(6),
  `iasw_id` decimal(10,0),
  `trans_id` decimal(10,0),
  `upd_status` varchar(1),
  `block` varchar(10),
  `lot` varchar(10),
  `qualifier` varchar(11),
  `sortkey` varchar(30),
  `pown1_firstname` varchar(40),
  `pown1_lastname` varchar(40),
  `pown1_middlename` varchar(40),
  `pown1_prefix` varchar(20),
  `pown1_suffix` varchar(20),
  `pown1_companyname` varchar(205),
  `oldown_firstname` varchar(40),
  `oldown_lastname` varchar(40),
  `oldown_middlename` varchar(40),
  `oldown_prefix` varchar(20),
  `oldown_suffix` varchar(20),
  `oldown_companyname` varchar(205),
  `own1_firstname` varchar(40),
  `own1_lastname` varchar(40),
  `own1_middlename` varchar(40),
  `own1_prefix` varchar(20),
  `own1_suffix` varchar(20),
  `own1_companyname` varchar(205),
  `postalcode` varchar(10),
  `splitno` decimal(15,0),
  `adrid` decimal(10,0),
  `adrparchild` varchar(1),
  `adrstatus` varchar(2),
  `adrpremod` varchar(20),
  `adrpretype` varchar(20),
  `adrpostmod` varchar(20),
  `floorno` varchar(20),
  `legdesc` string,
  `respct` decimal(9,6),
  `oldown2` varchar(205),
  `star_credit` varchar(1),
  `crossoverparflg` varchar(1),
  `actualjur` varchar(6),
  `strcd` varchar(10),
  `strreloc` varchar(150),
  `user26` varchar(80),
  `user27` varchar(80),
  `user28` varchar(80),
  `user29` varchar(80),
  `user30` varchar(80),
  `user31` varchar(80),
  `user32` varchar(80),
  `user33` varchar(80),
  `user34` varchar(80),
  `user35` varchar(80),
  `swis_code` varchar(6),
  `school_code` varchar(6),
  `roll_section` varchar(1),
  `user36` varchar(80),
  `user37` varchar(80),
  `user38` varchar(80),
  `user39` varchar(80),
  `user40` varchar(80),
  `user41` varchar(80),
  `user42` varchar(80),
  `user43` varchar(80),
  `user44` varchar(80),
  `user45` varchar(80),
  `user46` varchar(80),
  `user47` varchar(80),
  `user48` varchar(80),
  `user49` varchar(80),
  `user50` varchar(80),
  `user51` varchar(80),
  `user52` varchar(80),
  `user53` varchar(80),
  `user54` varchar(80),
  `user55` varchar(80),
  `user56` varchar(80),
  `user57` varchar(80),
  `user58` varchar(80),
  `user59` varchar(80),
  `user60` varchar(80),
  `loaded_at` string)
PARTITIONED BY (`taxyr` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
