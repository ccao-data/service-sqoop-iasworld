CREATE TABLE `iasworld.land`(
  `jur` varchar(6),
  `parid` varchar(30),
  `lline` decimal(4,0),
  `ltype` varchar(1),
  `code` varchar(6),
  `seq` decimal(3,0),
  `cur` varchar(1),
  `who` varchar(50),
  `wen` string,
  `whocalc` varchar(10),
  `wencalc` string,
  `status` varchar(1),
  `fronact` decimal(5,1),
  `froneff` decimal(4,0),
  `depth` decimal(4,0),
  `deptbl` decimal(3,0),
  `depfact` decimal(3,2),
  `sf` decimal(10,0),
  `acres` decimal(12,4),
  `units` decimal(12,2),
  `exmppct` decimal(5,2),
  `exmpval` decimal(10,0),
  `osize` decimal(10,0),
  `orate` decimal(10,0),
  `oincr` decimal(10,0),
  `odecr` decimal(10,0),
  `bsize` decimal(10,0),
  `brate` decimal(10,0),
  `bincr` decimal(10,0),
  `bdecr` decimal(10,0),
  `infl1` varchar(2),
  `infl2` varchar(2),
  `influ` decimal(3,0),
  `zoning` varchar(8),
  `lcodemod` decimal(4,0),
  `nmod` decimal(4,0),
  `zmod` decimal(4,0),
  `lmod` decimal(4,0),
  `smod` decimal(4,0),
  `umod` decimal(4,0),
  `sfact` decimal(3,0),
  `comres` varchar(1),
  `price` decimal(10,0),
  `adjfact` decimal(7,5),
  `class` varchar(4),
  `agflg` varchar(1),
  `chgrsn` varchar(2),
  `note1` varchar(40),
  `user1` varchar(20),
  `deactivat` string,
  `salekey` decimal(8,0),
  `iasw_id` decimal(10,0),
  `trans_id` decimal(10,0),
  `upd_status` varchar(1),
  `fldfact` decimal(3,0),
  `locfact` decimal(3,0),
  `sizefact` decimal(3,0),
  `topofact` decimal(3,0),
  `mktfact` decimal(3,0),
  `ovrdepfact` decimal(3,2),
  `caascard` decimal(4,0),
  `user2` varchar(20),
  `user3` varchar(20),
  `user4` varchar(20),
  `user5` varchar(20),
  `user6` varchar(20),
  `user7` varchar(20),
  `user8` varchar(20),
  `user9` varchar(20),
  `user10` varchar(20),
  `nccalc` decimal(10,0),
  `ncoval` decimal(10,0),
  `ncval` decimal(10,0),
  `nctot` decimal(10,0),
  `influ2` decimal(3,0),
  `hga` varchar(1),
  `recnr` decimal(3,0),
  `location` varchar(2),
  `modtype` varchar(10),
  `ovrprice` decimal(10,0),
  `lump1` decimal(10,0),
  `lump2` decimal(10,0),
  `lumpcd1` varchar(2),
  `lumpcd2` varchar(2),
  `allocpct` decimal(9,6),
  `card` decimal(4,0),
  `excess` varchar(1),
  `suppress` varchar(1),
  `lumpcamod` decimal(15,5),
  `hectares` decimal(12,4),
  `convland` decimal(10,0),
  `soil` varchar(30),
  `soilflg` varchar(1),
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
  `sqmeter` decimal(10,0),
  `userval1` decimal(10,0),
  `userval2` decimal(10,0),
  `userval3` decimal(10,0),
  `userval4` decimal(10,0),
  `userval5` decimal(10,0),
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
  `userval21` decimal(10,0),
  `userval22` decimal(10,0),
  `userval23` decimal(10,0),
  `userval24` decimal(10,0),
  `userval25` decimal(10,0),
  `userval26` decimal(10,0),
  `userval27` decimal(10,0),
  `userval28` decimal(10,0),
  `userval29` decimal(10,0),
  `userval30` decimal(10,0),
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
  `soilmod` varchar(30),
  `schedmod` decimal(6,0),
  `user36` varchar(250),
  `user37` varchar(250),
  `user38` varchar(250),
  `user39` varchar(250),
  `user40` varchar(250),
  `udate1` string,
  `udate2` string,
  `udate3` string,
  `udate4` string,
  `udate5` string,
  `landid` varchar(30),
  `cerrate` decimal(5,2),
  `ovrnbhd` varchar(8),
  `loaded_at` string)
PARTITIONED BY (`taxyr` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
