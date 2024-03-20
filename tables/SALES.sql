CREATE TABLE `iasworld.sales`(
  `jur` varchar,
  `parid` varchar,
  `saledt` string,
  `stampval` decimal,
  `price` decimal,
  `seq` decimal,
  `salekey` decimal,
  `cur` varchar,
  `who` varchar,
  `wen` string,
  `whocalc` varchar,
  `wencalc` string,
  `status` varchar,
  `transno` varchar,
  `transdt` string,
  `oldyr` decimal,
  `oldseq` decimal,
  `newyr` decimal,
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
  `deactivat` string,
  `oldown2` varchar,
  `own2` varchar,
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
  `notes` string,
  `batch` decimal,
  `ecrv_date` string,
  `timeadjsp` decimal,
  `timeadjfact` decimal,
  `timeadjvaldt` string,
  `note7` varchar,
  `grp` varchar,
  `parent` varchar,
  `tasp_year1` decimal,
  `tasp1` decimal,
  `tasp_year2` decimal,
  `tasp2` decimal,
  `tasp_year3` decimal,
  `tasp3` decimal,
  `tasp_ovr_year` decimal,
  `tasp_ovr` decimal,
  `cntyfinaldt` string,
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
  `note8` varchar,
  `note9` varchar,
  `note10` varchar,
  `udate1` string,
  `udate2` string,
  `udate3` string,
  `udate4` string,
  `udate5` string,
  `deed_ref` varchar,
  `timeadjvaldt2` string,
  `loaded_at` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='ZSTD');
