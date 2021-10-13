CREATE TABLE `iasworld.aprval`(
  `jur` varchar(6), 
  `parid` varchar(30), 
  `taxyr` string, 
  `seq` decimal(3,0), 
  `cur` varchar(1), 
  `who` varchar(10), 
  `wen` string, 
  `whocalc` varchar(10), 
  `wencalc` string, 
  `status` varchar(1), 
  `reascd` varchar(4), 
  `spcflg` varchar(2), 
  `aprland` decimal(11,0), 
  `aprbldg` decimal(11,0), 
  `landval` decimal(11,0), 
  `bldgval` decimal(11,0), 
  `commonland` decimal(10,0), 
  `commonbldg` decimal(10,0), 
  `costval` decimal(11,0), 
  `costdt` string, 
  `income` decimal(10,0), 
  `mktval` decimal(10,0), 
  `mktdt` string, 
  `dwelval` decimal(10,0), 
  `obyval` decimal(10,0), 
  `comval` decimal(10,0), 
  `nrval` decimal(10,0), 
  `ppdwelval` decimal(10,0), 
  `ppobyval` decimal(10,0), 
  `ppcomval` decimal(10,0), 
  `areasum` decimal(10,0), 
  `totresla` decimal(10,0), 
  `totcomla` decimal(10,0), 
  `lastupd` string, 
  `revdt` string, 
  `revcode` varchar(2), 
  `revreas` varchar(3), 
  `revland` decimal(11,0), 
  `revbldg` decimal(11,0), 
  `revtot` decimal(11,0), 
  `revwho` varchar(10), 
  `ecf` decimal(3,0), 
  `exmppct` decimal(5,2), 
  `exmpval` decimal(11,0), 
  `exmpland` decimal(11,0), 
  `exmpbldg` decimal(11,0), 
  `aprtot` decimal(11,0), 
  `assmkt` decimal(10,0), 
  `rolltype` varchar(10), 
  `posttype` varchar(1), 
  `convland` decimal(10,0), 
  `convbldg` decimal(10,0), 
  `resgrmval` decimal(10,0), 
  `comincval` decimal(10,0), 
  `adjbldgfact` decimal(7,5), 
  `adjlandfact` decimal(7,5), 
  `auid` varchar(30), 
  `note1` varchar(40), 
  `note2` varchar(40), 
  `userval1` decimal(10,0), 
  `userval2` decimal(10,0), 
  `userval3` decimal(10,0), 
  `userval4` decimal(10,0), 
  `userval5` decimal(10,0), 
  `deactivat` string, 
  `salekey` decimal(8,0), 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `userval6` decimal(10,0), 
  `userval7` decimal(10,0), 
  `userval8` decimal(10,0), 
  `userval9` decimal(10,0), 
  `userval10` decimal(10,0), 
  `userval11` decimal(10,0), 
  `userval12` decimal(10,0), 
  `userval13` decimal(10,0), 
  `userval14` decimal(10,0), 
  `userval15` decimal(10,0), 
  `userval16` decimal(10,0), 
  `userval17` decimal(10,0), 
  `userval18` decimal(10,0), 
  `userval19` decimal(10,0), 
  `userval20` decimal(10,0), 
  `saleprice` decimal(10,0), 
  `saledate` string, 
  `comvalpersf` decimal(10,0), 
  `comvalperunit` decimal(10,0), 
  `userchg1` decimal(10,0), 
  `userchg2` decimal(10,0), 
  `userchg3` decimal(10,0), 
  `userchg4` decimal(10,0), 
  `userchg5` decimal(10,0), 
  `userchg6` decimal(10,0), 
  `userchg7` decimal(10,0), 
  `userchg8` decimal(10,0), 
  `userchg9` decimal(10,0), 
  `userchg10` decimal(10,0), 
  `userchg11` decimal(10,0), 
  `userchg12` decimal(10,0), 
  `userchg13` decimal(10,0), 
  `userchg14` decimal(10,0), 
  `userchg15` decimal(10,0), 
  `userchg16` decimal(10,0), 
  `userchg17` decimal(10,0), 
  `userchg18` decimal(10,0), 
  `userchg19` decimal(10,0), 
  `userchg20` decimal(10,0), 
  `userchg21` decimal(10,0), 
  `userchg22` decimal(10,0), 
  `userchg23` decimal(10,0), 
  `userchg24` decimal(10,0), 
  `userchg25` decimal(10,0), 
  `userchg26` decimal(10,0), 
  `userchg27` decimal(10,0), 
  `userchg28` decimal(10,0), 
  `userchg29` decimal(10,0), 
  `userchg30` decimal(10,0), 
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
  `exmppctl` decimal(5,2), 
  `exmppctb` decimal(5,2), 
  `splitno` decimal(15,0), 
  `procname` varchar(10), 
  `procdate` string, 
  `tiebackland` decimal(11,0), 
  `tiebackbldg` decimal(11,0), 
  `tiebacktotal` decimal(11,0), 
  `incomecost` decimal(11,0), 
  `incomemkt` decimal(11,0), 
  `mktcost` decimal(11,0), 
  `equflag` varchar(1), 
  `landpct` decimal(5,2), 
  `revmeth` varchar(1), 
  `excess_land` decimal(14,2), 
  `excess_improvement` decimal(14,2), 
  `excess_total` decimal(14,2), 
  `manmodval` decimal(11,0), 
  `mandate` string, 
  `compasmt` decimal(11,0), 
  `compdate` string, 
  `incdate` string, 
  `aprdate` string, 
  `commktsf` decimal(11,0), 
  `commktsfdate` string, 
  `commktun` decimal(11,0), 
  `commktundate` string, 
  `mktland` decimal(11,0), 
  `mraland` decimal(11,0), 
  `apmktval` decimal(10,0), 
  `user11` varchar(80), 
  `user12` varchar(80), 
  `user13` varchar(80), 
  `user14` varchar(80), 
  `user15` varchar(80), 
  `user16` varchar(80), 
  `user17` varchar(80), 
  `user18` varchar(80), 
  `user19` varchar(80), 
  `user20` varchar(80), 
  `user21` varchar(80), 
  `user22` varchar(80), 
  `user23` varchar(80), 
  `user24` varchar(80), 
  `user25` varchar(80), 
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
  `user36` varchar(80), 
  `user37` varchar(80), 
  `user38` varchar(80), 
  `user39` varchar(80), 
  `user40` varchar(80), 
  `overridemodelid` decimal(10,0), 
  `mkttotval` decimal(10,0), 
  `ovrmraval` decimal(10,0))
STORED AS RCFILE;
        
CREATE TABLE `iasworld.aprval_bucketed`(
  `jur` varchar(6), 
  `parid` varchar(30), 
  `seq` decimal(3,0), 
  `cur` varchar(1), 
  `who` varchar(10), 
  `wen` string, 
  `whocalc` varchar(10), 
  `wencalc` string, 
  `status` varchar(1), 
  `reascd` varchar(4), 
  `spcflg` varchar(2), 
  `aprland` decimal(11,0), 
  `aprbldg` decimal(11,0), 
  `landval` decimal(11,0), 
  `bldgval` decimal(11,0), 
  `commonland` decimal(10,0), 
  `commonbldg` decimal(10,0), 
  `costval` decimal(11,0), 
  `costdt` string, 
  `income` decimal(10,0), 
  `mktval` decimal(10,0), 
  `mktdt` string, 
  `dwelval` decimal(10,0), 
  `obyval` decimal(10,0), 
  `comval` decimal(10,0), 
  `nrval` decimal(10,0), 
  `ppdwelval` decimal(10,0), 
  `ppobyval` decimal(10,0), 
  `ppcomval` decimal(10,0), 
  `areasum` decimal(10,0), 
  `totresla` decimal(10,0), 
  `totcomla` decimal(10,0), 
  `lastupd` string, 
  `revdt` string, 
  `revcode` varchar(2), 
  `revreas` varchar(3), 
  `revland` decimal(11,0), 
  `revbldg` decimal(11,0), 
  `revtot` decimal(11,0), 
  `revwho` varchar(10), 
  `ecf` decimal(3,0), 
  `exmppct` decimal(5,2), 
  `exmpval` decimal(11,0), 
  `exmpland` decimal(11,0), 
  `exmpbldg` decimal(11,0), 
  `aprtot` decimal(11,0), 
  `assmkt` decimal(10,0), 
  `rolltype` varchar(10), 
  `posttype` varchar(1), 
  `convland` decimal(10,0), 
  `convbldg` decimal(10,0), 
  `resgrmval` decimal(10,0), 
  `comincval` decimal(10,0), 
  `adjbldgfact` decimal(7,5), 
  `adjlandfact` decimal(7,5), 
  `auid` varchar(30), 
  `note1` varchar(40), 
  `note2` varchar(40), 
  `userval1` decimal(10,0), 
  `userval2` decimal(10,0), 
  `userval3` decimal(10,0), 
  `userval4` decimal(10,0), 
  `userval5` decimal(10,0), 
  `deactivat` string, 
  `salekey` decimal(8,0), 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `userval6` decimal(10,0), 
  `userval7` decimal(10,0), 
  `userval8` decimal(10,0), 
  `userval9` decimal(10,0), 
  `userval10` decimal(10,0), 
  `userval11` decimal(10,0), 
  `userval12` decimal(10,0), 
  `userval13` decimal(10,0), 
  `userval14` decimal(10,0), 
  `userval15` decimal(10,0), 
  `userval16` decimal(10,0), 
  `userval17` decimal(10,0), 
  `userval18` decimal(10,0), 
  `userval19` decimal(10,0), 
  `userval20` decimal(10,0), 
  `saleprice` decimal(10,0), 
  `saledate` string, 
  `comvalpersf` decimal(10,0), 
  `comvalperunit` decimal(10,0), 
  `userchg1` decimal(10,0), 
  `userchg2` decimal(10,0), 
  `userchg3` decimal(10,0), 
  `userchg4` decimal(10,0), 
  `userchg5` decimal(10,0), 
  `userchg6` decimal(10,0), 
  `userchg7` decimal(10,0), 
  `userchg8` decimal(10,0), 
  `userchg9` decimal(10,0), 
  `userchg10` decimal(10,0), 
  `userchg11` decimal(10,0), 
  `userchg12` decimal(10,0), 
  `userchg13` decimal(10,0), 
  `userchg14` decimal(10,0), 
  `userchg15` decimal(10,0), 
  `userchg16` decimal(10,0), 
  `userchg17` decimal(10,0), 
  `userchg18` decimal(10,0), 
  `userchg19` decimal(10,0), 
  `userchg20` decimal(10,0), 
  `userchg21` decimal(10,0), 
  `userchg22` decimal(10,0), 
  `userchg23` decimal(10,0), 
  `userchg24` decimal(10,0), 
  `userchg25` decimal(10,0), 
  `userchg26` decimal(10,0), 
  `userchg27` decimal(10,0), 
  `userchg28` decimal(10,0), 
  `userchg29` decimal(10,0), 
  `userchg30` decimal(10,0), 
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
  `exmppctl` decimal(5,2), 
  `exmppctb` decimal(5,2), 
  `splitno` decimal(15,0), 
  `procname` varchar(10), 
  `procdate` string, 
  `tiebackland` decimal(11,0), 
  `tiebackbldg` decimal(11,0), 
  `tiebacktotal` decimal(11,0), 
  `incomecost` decimal(11,0), 
  `incomemkt` decimal(11,0), 
  `mktcost` decimal(11,0), 
  `equflag` varchar(1), 
  `landpct` decimal(5,2), 
  `revmeth` varchar(1), 
  `excess_land` decimal(14,2), 
  `excess_improvement` decimal(14,2), 
  `excess_total` decimal(14,2), 
  `manmodval` decimal(11,0), 
  `mandate` string, 
  `compasmt` decimal(11,0), 
  `compdate` string, 
  `incdate` string, 
  `aprdate` string, 
  `commktsf` decimal(11,0), 
  `commktsfdate` string, 
  `commktun` decimal(11,0), 
  `commktundate` string, 
  `mktland` decimal(11,0), 
  `mraland` decimal(11,0), 
  `apmktval` decimal(10,0), 
  `user11` varchar(80), 
  `user12` varchar(80), 
  `user13` varchar(80), 
  `user14` varchar(80), 
  `user15` varchar(80), 
  `user16` varchar(80), 
  `user17` varchar(80), 
  `user18` varchar(80), 
  `user19` varchar(80), 
  `user20` varchar(80), 
  `user21` varchar(80), 
  `user22` varchar(80), 
  `user23` varchar(80), 
  `user24` varchar(80), 
  `user25` varchar(80), 
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
  `user36` varchar(80), 
  `user37` varchar(80), 
  `user38` varchar(80), 
  `user39` varchar(80), 
  `user40` varchar(80), 
  `overridemodelid` decimal(10,0), 
  `mkttotval` decimal(10,0), 
  `ovrmraval` decimal(10,0))
PARTITIONED BY (taxyr string)
CLUSTERED BY (parid) SORTED BY (seq) INTO 20 BUCKETS
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
