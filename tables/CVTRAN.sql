CREATE TABLE `iasworld.cvtran`(
  `jur` varchar(6), 
  `conveyno` decimal(9,0), 
  `who` varchar(10), 
  `wen` string, 
  `whocalc` varchar(10), 
  `wencalc` string, 
  `status` varchar(1), 
  `chgrsn` varchar(2), 
  `splitno` decimal(15,0), 
  `convstat` varchar(1), 
  `convdate` string, 
  `lots` decimal(4,0), 
  `parsin` decimal(4,0), 
  `parsout` decimal(4,0), 
  `exfee` varchar(1), 
  `comnt` varchar(2), 
  `upd_owndat` varchar(1), 
  `upd_ownmlt` varchar(1), 
  `remdate` string, 
  `resind` varchar(1), 
  `realctr` varchar(1), 
  `mktval` decimal(10,0), 
  `mortamt` decimal(12,2), 
  `cashamt` decimal(12,2), 
  `mortassm` decimal(12,2), 
  `cashassm` decimal(12,2), 
  `assumind` varchar(1), 
  `morttype` varchar(1), 
  `mip` decimal(12,2), 
  `persprop` decimal(12,2), 
  `actconsid` decimal(12,2), 
  `considamt` decimal(10,0), 
  `tnn` varchar(1), 
  `armslen` varchar(1), 
  `useind` varchar(1), 
  `voidflg` varchar(1), 
  `salekey` decimal(8,0), 
  `transdt` string, 
  `oldyr` decimal(4,0), 
  `oldseq` decimal(3,0), 
  `newseq` decimal(3,0), 
  `book` varchar(8), 
  `page` varchar(8), 
  `oldown` varchar(205), 
  `own1` varchar(205), 
  `source` varchar(1), 
  `saletype` varchar(1), 
  `saleval` varchar(2), 
  `mktvalid` varchar(1), 
  `note1` varchar(80), 
  `note2` varchar(80), 
  `note3` varchar(80), 
  `note4` varchar(80), 
  `note5` varchar(80), 
  `note6` varchar(80), 
  `steb` varchar(3), 
  `asmt` decimal(10,0), 
  `stflag` varchar(1), 
  `nopar` decimal(4,0), 
  `instruno` varchar(20), 
  `instrtyp` varchar(6), 
  `imageno` varchar(12), 
  `adjamt` decimal(10,0), 
  `adjprice` decimal(10,0), 
  `adjreas` varchar(3), 
  `recorddt` string, 
  `aprtot` decimal(10,0), 
  `asr` decimal(7,4), 
  `linkno` varchar(20), 
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
  `user23` varchar(20), 
  `user24` varchar(20), 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
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
  `altid` varchar(30), 
  `bldgtyp` varchar(1), 
  `newyr` decimal(4,0), 
  `user35` varchar(20), 
  `user36` varchar(20), 
  `user37` varchar(20), 
  `user38` varchar(20), 
  `user39` varchar(20), 
  `user40` varchar(20), 
  `user41` varchar(20), 
  `user42` varchar(20), 
  `user43` varchar(20), 
  `user44` varchar(20), 
  `user45` varchar(20), 
  `user46` varchar(20), 
  `user47` varchar(20), 
  `user48` varchar(20), 
  `user49` varchar(20), 
  `user50` varchar(20), 
  `user51` varchar(20), 
  `user52` varchar(20), 
  `user53` varchar(20), 
  `user54` varchar(20), 
  `user55` varchar(20), 
  `user56` varchar(20), 
  `user57` varchar(20), 
  `user58` varchar(20), 
  `user59` varchar(20), 
  `user60` varchar(20), 
  `feetype` varchar(10), 
  `titleco` varchar(20), 
  `stampval` decimal(10,0), 
  `oldown2` varchar(205), 
  `own2` varchar(205), 
  `user61` varchar(40), 
  `user62` varchar(40), 
  `user63` varchar(40), 
  `user64` varchar(40), 
  `user65` varchar(40), 
  `user66` varchar(40), 
  `user67` varchar(40), 
  `user68` varchar(40), 
  `user69` varchar(40), 
  `user70` varchar(40), 
  `ecrv` varchar(10), 
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
  `oldown2_firstname` varchar(40), 
  `oldown2_lastname` varchar(40), 
  `oldown2_middlename` varchar(40), 
  `oldown2_prefix` varchar(20), 
  `oldown2_suffix` varchar(20), 
  `oldown2_companyname` varchar(205), 
  `own2_firstname` varchar(40), 
  `own2_lastname` varchar(40), 
  `own2_middlename` varchar(40), 
  `own2_prefix` varchar(20), 
  `own2_suffix` varchar(20), 
  `own2_companyname` varchar(205), 
  `notes` string,
  `taxyr` string)
STORED AS RCFILE;
        
CREATE TABLE `iasworld.cvtran_bucketed`(
  `jur` varchar(6), 
  `conveyno` decimal(9,0), 
  `who` varchar(10), 
  `wen` string, 
  `whocalc` varchar(10), 
  `wencalc` string, 
  `status` varchar(1), 
  `chgrsn` varchar(2), 
  `splitno` decimal(15,0), 
  `convstat` varchar(1), 
  `convdate` string, 
  `lots` decimal(4,0), 
  `parsin` decimal(4,0), 
  `parsout` decimal(4,0), 
  `exfee` varchar(1), 
  `comnt` varchar(2), 
  `upd_owndat` varchar(1), 
  `upd_ownmlt` varchar(1), 
  `remdate` string, 
  `resind` varchar(1), 
  `realctr` varchar(1), 
  `mktval` decimal(10,0), 
  `mortamt` decimal(12,2), 
  `cashamt` decimal(12,2), 
  `mortassm` decimal(12,2), 
  `cashassm` decimal(12,2), 
  `assumind` varchar(1), 
  `morttype` varchar(1), 
  `mip` decimal(12,2), 
  `persprop` decimal(12,2), 
  `actconsid` decimal(12,2), 
  `considamt` decimal(10,0), 
  `tnn` varchar(1), 
  `armslen` varchar(1), 
  `useind` varchar(1), 
  `voidflg` varchar(1), 
  `salekey` decimal(8,0), 
  `transdt` string, 
  `oldyr` decimal(4,0), 
  `oldseq` decimal(3,0), 
  `newseq` decimal(3,0), 
  `book` varchar(8), 
  `page` varchar(8), 
  `oldown` varchar(205), 
  `own1` varchar(205), 
  `source` varchar(1), 
  `saletype` varchar(1), 
  `saleval` varchar(2), 
  `mktvalid` varchar(1), 
  `note1` varchar(80), 
  `note2` varchar(80), 
  `note3` varchar(80), 
  `note4` varchar(80), 
  `note5` varchar(80), 
  `note6` varchar(80), 
  `steb` varchar(3), 
  `asmt` decimal(10,0), 
  `stflag` varchar(1), 
  `nopar` decimal(4,0), 
  `instruno` varchar(20), 
  `instrtyp` varchar(6), 
  `imageno` varchar(12), 
  `adjamt` decimal(10,0), 
  `adjprice` decimal(10,0), 
  `adjreas` varchar(3), 
  `recorddt` string, 
  `aprtot` decimal(10,0), 
  `asr` decimal(7,4), 
  `linkno` varchar(20), 
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
  `user23` varchar(20), 
  `user24` varchar(20), 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
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
  `altid` varchar(30), 
  `bldgtyp` varchar(1), 
  `newyr` decimal(4,0), 
  `user35` varchar(20), 
  `user36` varchar(20), 
  `user37` varchar(20), 
  `user38` varchar(20), 
  `user39` varchar(20), 
  `user40` varchar(20), 
  `user41` varchar(20), 
  `user42` varchar(20), 
  `user43` varchar(20), 
  `user44` varchar(20), 
  `user45` varchar(20), 
  `user46` varchar(20), 
  `user47` varchar(20), 
  `user48` varchar(20), 
  `user49` varchar(20), 
  `user50` varchar(20), 
  `user51` varchar(20), 
  `user52` varchar(20), 
  `user53` varchar(20), 
  `user54` varchar(20), 
  `user55` varchar(20), 
  `user56` varchar(20), 
  `user57` varchar(20), 
  `user58` varchar(20), 
  `user59` varchar(20), 
  `user60` varchar(20), 
  `feetype` varchar(10), 
  `titleco` varchar(20), 
  `stampval` decimal(10,0), 
  `oldown2` varchar(205), 
  `own2` varchar(205), 
  `user61` varchar(40), 
  `user62` varchar(40), 
  `user63` varchar(40), 
  `user64` varchar(40), 
  `user65` varchar(40), 
  `user66` varchar(40), 
  `user67` varchar(40), 
  `user68` varchar(40), 
  `user69` varchar(40), 
  `user70` varchar(40), 
  `ecrv` varchar(10), 
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
  `oldown2_firstname` varchar(40), 
  `oldown2_lastname` varchar(40), 
  `oldown2_middlename` varchar(40), 
  `oldown2_prefix` varchar(20), 
  `oldown2_suffix` varchar(20), 
  `oldown2_companyname` varchar(205), 
  `own2_firstname` varchar(40), 
  `own2_lastname` varchar(40), 
  `own2_middlename` varchar(40), 
  `own2_prefix` varchar(20), 
  `own2_suffix` varchar(20), 
  `own2_companyname` varchar(205), 
  `notes` string)
PARTITIONED BY (`taxyr` string)
CLUSTERED BY (`parid`) SORTED BY (`seq`) INTO 10 BUCKETS
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
