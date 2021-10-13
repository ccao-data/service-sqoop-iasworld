CREATE TABLE `iasworld.comdat`(
  `jur` varchar(6), 
  `parid` varchar(30), 
  `card` decimal(4,0), 
  `taxyr` decimal(4,0), 
  `seq` decimal(3,0), 
  `cur` varchar(1), 
  `who` varchar(10), 
  `wen` string, 
  `whocalc` varchar(10), 
  `wencalc` string, 
  `status` varchar(1), 
  `bldnum` varchar(4), 
  `yrblt` decimal(4,0), 
  `effyr` decimal(4,0), 
  `units` decimal(4,0), 
  `structure` varchar(3), 
  `valmeth` varchar(1), 
  `proprate` varchar(2), 
  `grade` varchar(4), 
  `gfact` decimal(3,2), 
  `useradj` decimal(6,4), 
  `numident` decimal(2,0), 
  `imprname` varchar(50), 
  `bldgros_d` varchar(31), 
  `bldgros_v` decimal(10,0), 
  `rcn` decimal(10,0), 
  `depr` decimal(5,2), 
  `mktadj` decimal(5,2), 
  `mktrsn` varchar(2), 
  `rcnld` decimal(10,0), 
  `pctcomp` decimal(3,0), 
  `newconmo` varchar(3), 
  `newconpct` decimal(7,6), 
  `adjfact` decimal(7,5), 
  `bldgval` decimal(10,0), 
  `parkcover` decimal(4,0), 
  `parkuncov` decimal(4,0), 
  `note1` varchar(40), 
  `note2` varchar(40), 
  `class` varchar(4), 
  `rectype` varchar(1), 
  `areasum` decimal(10,0), 
  `busla` decimal(10,0), 
  `cubicft` decimal(10,0), 
  `exmppct` decimal(5,2), 
  `exmpval` decimal(10,0), 
  `deprt` varchar(10), 
  `cdu` varchar(2), 
  `convbldg` decimal(10,0), 
  `msarea` decimal(9,0), 
  `msperim` decimal(5,0), 
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
  `chgrsn` varchar(2), 
  `deactivat` string, 
  `salekey` decimal(8,0), 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `prodate` string, 
  `protype` varchar(1), 
  `prodamage` decimal(3,0), 
  `profact` decimal(4,3), 
  `user21` varchar(20), 
  `user22` varchar(20), 
  `user23` varchar(20), 
  `user24` varchar(20), 
  `user25` varchar(20), 
  `user26` varchar(20), 
  `user27` varchar(20), 
  `user28` varchar(20), 
  `user29` varchar(20), 
  `user30` varchar(20), 
  `user31` varchar(20), 
  `user32` varchar(20), 
  `user33` varchar(20), 
  `user34` varchar(20), 
  `user35` varchar(20), 
  `user36` varchar(20), 
  `user37` varchar(20), 
  `user38` varchar(20), 
  `user39` varchar(20), 
  `user40` varchar(20), 
  `nccalc` decimal(10,0), 
  `ncoval` decimal(10,0), 
  `ncval` decimal(10,0), 
  `nctot` decimal(10,0), 
  `hga` varchar(1), 
  `recnr` decimal(3,0), 
  `ovrrcnld` decimal(10,0), 
  `calcexclude` varchar(1), 
  `excess` varchar(1), 
  `suppress` varchar(1), 
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
  `user61` varchar(80), 
  `user62` varchar(80), 
  `user63` varchar(80), 
  `user64` varchar(80), 
  `user65` varchar(80), 
  `userval1` decimal(10,0), 
  `userval2` decimal(10,0), 
  `userval3` decimal(10,0), 
  `userval4` decimal(10,0), 
  `userval5` decimal(10,0), 
  `bld_modelid` varchar(80), 
  `ovrmraval` decimal(10,0))
STORED AS RCFILE;
        
CREATE TABLE `iasworld.comdat_bucketed`(
  `jur` varchar(6), 
  `parid` varchar(30), 
  `card` decimal(4,0), 
  `seq` decimal(3,0), 
  `cur` varchar(1), 
  `who` varchar(10), 
  `wen` string, 
  `whocalc` varchar(10), 
  `wencalc` string, 
  `status` varchar(1), 
  `bldnum` varchar(4), 
  `yrblt` decimal(4,0), 
  `effyr` decimal(4,0), 
  `units` decimal(4,0), 
  `structure` varchar(3), 
  `valmeth` varchar(1), 
  `proprate` varchar(2), 
  `grade` varchar(4), 
  `gfact` decimal(3,2), 
  `useradj` decimal(6,4), 
  `numident` decimal(2,0), 
  `imprname` varchar(50), 
  `bldgros_d` varchar(31), 
  `bldgros_v` decimal(10,0), 
  `rcn` decimal(10,0), 
  `depr` decimal(5,2), 
  `mktadj` decimal(5,2), 
  `mktrsn` varchar(2), 
  `rcnld` decimal(10,0), 
  `pctcomp` decimal(3,0), 
  `newconmo` varchar(3), 
  `newconpct` decimal(7,6), 
  `adjfact` decimal(7,5), 
  `bldgval` decimal(10,0), 
  `parkcover` decimal(4,0), 
  `parkuncov` decimal(4,0), 
  `note1` varchar(40), 
  `note2` varchar(40), 
  `class` varchar(4), 
  `rectype` varchar(1), 
  `areasum` decimal(10,0), 
  `busla` decimal(10,0), 
  `cubicft` decimal(10,0), 
  `exmppct` decimal(5,2), 
  `exmpval` decimal(10,0), 
  `deprt` varchar(10), 
  `cdu` varchar(2), 
  `convbldg` decimal(10,0), 
  `msarea` decimal(9,0), 
  `msperim` decimal(5,0), 
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
  `chgrsn` varchar(2), 
  `deactivat` string, 
  `salekey` decimal(8,0), 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `prodate` string, 
  `protype` varchar(1), 
  `prodamage` decimal(3,0), 
  `profact` decimal(4,3), 
  `user21` varchar(20), 
  `user22` varchar(20), 
  `user23` varchar(20), 
  `user24` varchar(20), 
  `user25` varchar(20), 
  `user26` varchar(20), 
  `user27` varchar(20), 
  `user28` varchar(20), 
  `user29` varchar(20), 
  `user30` varchar(20), 
  `user31` varchar(20), 
  `user32` varchar(20), 
  `user33` varchar(20), 
  `user34` varchar(20), 
  `user35` varchar(20), 
  `user36` varchar(20), 
  `user37` varchar(20), 
  `user38` varchar(20), 
  `user39` varchar(20), 
  `user40` varchar(20), 
  `nccalc` decimal(10,0), 
  `ncoval` decimal(10,0), 
  `ncval` decimal(10,0), 
  `nctot` decimal(10,0), 
  `hga` varchar(1), 
  `recnr` decimal(3,0), 
  `ovrrcnld` decimal(10,0), 
  `calcexclude` varchar(1), 
  `excess` varchar(1), 
  `suppress` varchar(1), 
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
  `user61` varchar(80), 
  `user62` varchar(80), 
  `user63` varchar(80), 
  `user64` varchar(80), 
  `user65` varchar(80), 
  `userval1` decimal(10,0), 
  `userval2` decimal(10,0), 
  `userval3` decimal(10,0), 
  `userval4` decimal(10,0), 
  `userval5` decimal(10,0), 
  `bld_modelid` varchar(80), 
  `ovrmraval` decimal(10,0))
PARTITIONED BY (taxyr string)
CLUSTERED BY (parid) SORTED BY (seq) INTO 10 BUCKETS
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
