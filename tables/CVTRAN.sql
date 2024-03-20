CREATE TABLE `iasworld.cvtran`(
  `jur` varchar,
  `conveyno` decimal,
  `who` varchar,
  `wen` string,
  `whocalc` varchar,
  `wencalc` string,
  `status` varchar,
  `chgrsn` varchar,
  `splitno` decimal,
  `convstat` varchar,
  `convdate` string,
  `lots` decimal,
  `parsin` decimal,
  `parsout` decimal,
  `exfee` varchar,
  `comnt` varchar,
  `upd_owndat` varchar,
  `upd_ownmlt` varchar,
  `remdate` string,
  `resind` varchar,
  `realctr` varchar,
  `mktval` decimal,
  `mortamt` decimal,
  `cashamt` decimal,
  `mortassm` decimal,
  `cashassm` decimal,
  `assumind` varchar,
  `morttype` varchar,
  `mip` decimal,
  `persprop` decimal,
  `actconsid` decimal,
  `considamt` decimal,
  `tnn` varchar,
  `armslen` varchar,
  `useind` varchar,
  `voidflg` varchar,
  `salekey` decimal,
  `transdt` string,
  `oldyr` decimal,
  `oldseq` decimal,
  `newseq` decimal,
  `book` varchar,
  `page` varchar,
  `oldown` varchar,
  `own1` varchar,
  `source` varchar,
  `saletype` varchar,
  `saleval` varchar,
  `mktvalid` varchar,
  `note1` varchar,
  `note2` varchar,
  `note3` varchar,
  `note4` varchar,
  `note5` varchar,
  `note6` varchar,
  `steb` varchar,
  `asmt` decimal,
  `stflag` varchar,
  `nopar` decimal,
  `instruno` varchar,
  `instrtyp` varchar,
  `imageno` varchar,
  `adjamt` decimal,
  `adjprice` decimal,
  `adjreas` varchar,
  `recorddt` string,
  `aprtot` decimal,
  `asr` decimal,
  `linkno` varchar,
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
  `iasw_id` decimal,
  `trans_id` decimal,
  `upd_status` varchar,
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
  `altid` varchar,
  `bldgtyp` varchar,
  `newyr` decimal,
  `user35` varchar,
  `user36` varchar,
  `user37` varchar,
  `user38` varchar,
  `user39` varchar,
  `user40` varchar,
  `user41` varchar,
  `user42` varchar,
  `user43` varchar,
  `user44` varchar,
  `user45` varchar,
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
  `feetype` varchar,
  `titleco` varchar,
  `stampval` decimal,
  `oldown2` varchar,
  `own2` varchar,
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
  `ecrv` varchar,
  `oldown_firstname` varchar,
  `oldown_lastname` varchar,
  `oldown_middlename` varchar,
  `oldown_prefix` varchar,
  `oldown_suffix` varchar,
  `oldown_companyname` varchar,
  `own1_firstname` varchar,
  `own1_lastname` varchar,
  `own1_middlename` varchar,
  `own1_prefix` varchar,
  `own1_suffix` varchar,
  `own1_companyname` varchar,
  `oldown2_firstname` varchar,
  `oldown2_lastname` varchar,
  `oldown2_middlename` varchar,
  `oldown2_prefix` varchar,
  `oldown2_suffix` varchar,
  `oldown2_companyname` varchar,
  `own2_firstname` varchar,
  `own2_lastname` varchar,
  `own2_middlename` varchar,
  `own2_prefix` varchar,
  `own2_suffix` varchar,
  `own2_companyname` varchar,
  `notes` string,
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
  `userval1` decimal,
  `userval2` decimal,
  `userval3` decimal,
  `userval4` decimal,
  `userval5` decimal,
  `userval6` decimal,
  `userval7` decimal,
  `userval8` decimal,
  `userval9` decimal,
  `userval10` decimal,
  `userval11` decimal,
  `userval12` decimal,
  `userval13` decimal,
  `userval14` decimal,
  `userval15` decimal,
  `userval16` decimal,
  `userval17` decimal,
  `userval18` decimal,
  `userval19` decimal,
  `userval20` decimal,
  `loaded_at` string)
PARTITIONED BY (`taxyr` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='ZSTD');
