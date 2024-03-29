CREATE TABLE `iasworld.addn`(
  `jur` varchar(6),
  `parid` varchar(30),
  `card` decimal(4,0),
  `lline` decimal(4,0),
  `seq` decimal(3,0),
  `cur` varchar(1),
  `who` varchar(50),
  `wen` string,
  `whocalc` varchar(10),
  `wencalc` string,
  `status` varchar(1),
  `lower` varchar(5),
  `first` varchar(5),
  `second` varchar(5),
  `third` varchar(5),
  `area` decimal(9,0),
  `vect` varchar(500),
  `value` decimal(10,0),
  `class` varchar(4),
  `pctcomp` decimal(3,0),
  `newconmo` varchar(3),
  `newconpct` decimal(7,6),
  `yrblt` decimal(4,0),
  `effyr` decimal(4,0),
  `grade` varchar(4),
  `grdfact` decimal(3,2),
  `cdu` varchar(2),
  `depr` decimal(5,2),
  `mktadj` decimal(5,2),
  `rcnld` decimal(10,0),
  `rectype` varchar(1),
  `areasum` decimal(10,0),
  `exmppct` decimal(5,2),
  `exmpval` decimal(10,0),
  `ratel` decimal(10,0),
  `rate1` decimal(10,0),
  `rate2` decimal(10,0),
  `rate3` decimal(10,0),
  `grdfactl` decimal(3,2),
  `grdfact1` decimal(3,2),
  `grdfact2` decimal(3,2),
  `grdfact3` decimal(3,2),
  `rcnl` decimal(10,0),
  `rcn1` decimal(10,0),
  `rcn2` decimal(10,0),
  `rcn3` decimal(10,0),
  `rcnldl` decimal(10,0),
  `rcnld1` decimal(10,0),
  `rcnld2` decimal(10,0),
  `rcnld3` decimal(10,0),
  `convaddn` decimal(10,0),
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
  `vectnotes` varchar(500),
  `areaid` decimal(10,0),
  `nccalc` decimal(10,0),
  `ncoval` decimal(10,0),
  `ncval` decimal(10,0),
  `nctot` decimal(10,0),
  `user1` varchar(40),
  `user2` varchar(40),
  `user3` varchar(40),
  `user4` varchar(40),
  `user5` varchar(40),
  `userval1` decimal(10,0),
  `userval2` decimal(10,0),
  `userval3` decimal(10,0),
  `userval4` decimal(10,0),
  `userval5` decimal(10,0),
  `area_sqm` decimal(11,3),
  `eff_area` decimal(10,0),
  `effageovr` decimal(4,0),
  `stories` decimal(10,0),
  `footprint` decimal(10,0),
  `loaded_at` string)
PARTITIONED BY (`taxyr` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
