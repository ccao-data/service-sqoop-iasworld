CREATE TABLE `iasworld.pardat`(
  `jur` varchar,
  `parid` varchar,
  `seq` decimal,
  `cur` varchar,
  `who` varchar,
  `wen` string,
  `whocalc` varchar,
  `wencalc` string,
  `status` varchar,
  `alt_id` varchar,
  `muni` varchar,
  `block` varchar,
  `unit` varchar,
  `mappre` varchar,
  `mapsuf` varchar,
  `rtepre` varchar,
  `rtesuf` varchar,
  `adrpre` varchar,
  `adrno` decimal,
  `adradd` varchar,
  `adrdir` varchar,
  `adrstr` varchar,
  `adrsuf` varchar,
  `adrsuf2` varchar,
  `cityname` varchar,
  `statecode` varchar,
  `unitdesc` varchar,
  `unitno` varchar,
  `loc2` varchar,
  `zip1` varchar,
  `zip2` varchar,
  `nbhd` varchar,
  `spot` decimal,
  `juris` varchar,
  `class` varchar,
  `luc` varchar,
  `lucmult` varchar,
  `livunit` decimal,
  `tieback` varchar,
  `tiebkcd` varchar,
  `tielandpct` decimal,
  `tiebldgpct` decimal,
  `landisc` varchar,
  `acres` decimal,
  `calcacres` decimal,
  `location` varchar,
  `fronting` varchar,
  `street1` varchar,
  `street2` varchar,
  `traffic` varchar,
  `topo1` varchar,
  `topo2` varchar,
  `topo3` varchar,
  `util1` varchar,
  `util2` varchar,
  `util3` varchar,
  `parkprox` varchar,
  `parkquanit` varchar,
  `parktype` varchar,
  `restrict1` varchar,
  `restrict2` varchar,
  `restrict3` varchar,
  `zoning` varchar,
  `note1` varchar,
  `note2` varchar,
  `note3` varchar,
  `note4` varchar,
  `notecd1` varchar,
  `notecd2` varchar,
  `ofcard` decimal,
  `partial` varchar,
  `bldgros_d` varchar,
  `bldgros_v` decimal,
  `mscbld_n` decimal,
  `prefactmscbld` decimal,
  `adjfact` decimal,
  `mscbld_v` decimal,
  `rectype` varchar,
  `fldref` varchar,
  `pctown` decimal,
  `farminc` decimal,
  `nonfarminc` decimal,
  `aguse` varchar,
  `nrinc` decimal,
  `chgrsn` varchar,
  `zfar` decimal,
  `pfar` decimal,
  `afar` decimal,
  `pfarsf` decimal,
  `afarsf` decimal,
  `user1` varchar,
  `user2` varchar,
  `user3` varchar,
  `user4` varchar,
  `user5` varchar,
  `user6` varchar,
  `user7` varchar,
  `user8` varchar,
  `user9` varchar,
  `user10` varchar,
  `user11` varchar,
  `user12` varchar,
  `user13` varchar,
  `user14` varchar,
  `user15` varchar,
  `user16` varchar,
  `user17` varchar,
  `user18` varchar,
  `user19` varchar,
  `user20` varchar,
  `user21` varchar,
  `user22` varchar,
  `user23` varchar,
  `user24` varchar,
  `user25` varchar,
  `user26` varchar,
  `user27` varchar,
  `user28` varchar,
  `user29` varchar,
  `user30` varchar,
  `user31` varchar,
  `user32` varchar,
  `user33` varchar,
  `user34` varchar,
  `user35` varchar,
  `user36` varchar,
  `user37` varchar,
  `user38` varchar,
  `user39` varchar,
  `uid1` varchar,
  `uid2` varchar,
  `uid3` varchar,
  `uid4` varchar,
  `uid5` varchar,
  `uid6` varchar,
  `uid7` varchar,
  `uid8` varchar,
  `uid9` varchar,
  `deactivat` string,
  `salekey` decimal,
  `iasw_id` decimal,
  `trans_id` decimal,
  `upd_status` varchar,
  `user40` varchar,
  `user41` varchar,
  `user42` varchar,
  `user43` varchar,
  `user44` varchar,
  `user45` varchar,
  `userval1` decimal,
  `userval2` decimal,
  `userval3` decimal,
  `userval4` decimal,
  `userval5` decimal,
  `postalcode` varchar,
  `splitno` decimal,
  `adrid` decimal,
  `adrparchild` varchar,
  `adrstatus` varchar,
  `adrpremod` varchar,
  `adrpretype` varchar,
  `adrpostmod` varchar,
  `floorno` varchar,
  `procname` varchar,
  `procdate` string,
  `addrsrc` varchar,
  `areacd` varchar,
  `municd` varchar,
  `rollno` varchar,
  `addrvalid` varchar,
  `nbhdie` varchar,
  `strcd` varchar,
  `strreloc` varchar,
  `sec_fld` varchar,
  `user46` varchar,
  `user47` varchar,
  `user48` varchar,
  `user49` varchar,
  `user50` varchar,
  `user51` varchar,
  `user52` varchar,
  `user53` varchar,
  `user54` varchar,
  `user55` varchar,
  `user56` varchar,
  `user57` varchar,
  `user58` varchar,
  `user59` varchar,
  `user60` varchar,
  `user61` varchar,
  `user62` varchar,
  `user63` varchar,
  `user64` varchar,
  `user65` varchar,
  `user66` varchar,
  `user67` varchar,
  `user68` varchar,
  `user69` varchar,
  `user70` varchar,
  `user71` varchar,
  `user72` varchar,
  `user73` varchar,
  `user74` varchar,
  `user75` varchar,
  `user76` varchar,
  `user77` varchar,
  `user78` varchar,
  `user79` varchar,
  `user80` varchar,
  `user81` varchar,
  `user82` varchar,
  `user83` varchar,
  `user84` varchar,
  `user85` varchar,
  `userval6` decimal,
  `userval7` decimal,
  `userval8` decimal,
  `userval9` decimal,
  `userval10` decimal,
  `skip_addr_validation` varchar,
  `udate1` string,
  `udate2` string,
  `udate3` string,
  `udate4` string,
  `udate5` string,
  `assessorid` decimal,
  `ovrassessorid` decimal,
  `user86` varchar,
  `user87` varchar,
  `user88` varchar,
  `user89` varchar,
  `user90` varchar,
  `userval11` decimal,
  `userval12` decimal,
  `userval13` decimal,
  `userval14` decimal,
  `userval15` decimal,
  `ts_unit_count` decimal,
  `loaded_at` string)
PARTITIONED BY (`taxyr` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='ZSTD');
