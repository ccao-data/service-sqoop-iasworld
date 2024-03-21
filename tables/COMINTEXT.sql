CREATE TABLE `iasworld.comintext`(
  `jur` string,
  `parid` string,
  `card` numeric,
  `lline` numeric,
  `seq` numeric,
  `cur` string,
  `who` string,
  `wen` string,
  `whocalc` string,
  `wencalc` string,
  `status` string,
  `sect` string,
  `flrfrom` string,
  `flrto` string,
  `lngth` numeric,
  `width` numeric,
  `area` numeric,
  `perim` numeric,
  `stories` numeric,
  `sf` numeric,
  `cubicft` numeric,
  `usetype` string,
  `wallhgt` numeric,
  `extwall` string,
  `constr` string,
  `intfin` numeric,
  `intwall` string,
  `heat` string,
  `air` string,
  `plumb` string,
  `light` string,
  `rate` numeric,
  `storyadj` numeric,
  `lineval` numeric,
  `rcn` numeric,
  `featval` numeric,
  `useradjovr` numeric,
  `mktadj` numeric,
  `phycond` string,
  `functutil` string,
  `depr` numeric,
  `pctcomp` numeric,
  `newconmo` string,
  `newconpct` numeric,
  `price` numeric,
  `class` string,
  `yrblt` numeric,
  `effyr` numeric,
  `obsdep` numeric,
  `obsrsn` string,
  `fundep` numeric,
  `funrsn` string,
  `ecndep` numeric,
  `ecnrsn` string,
  `rentpct` numeric,
  `rentsf` numeric,
  `areasum` numeric,
  `incuse` string,
  `mssect` string,
  `mstab` string,
  `occupancy` numeric,
  `splevel` string,
  `msclass` string,
  `msheat` string,
  `msunits` numeric,
  `qualtype` string,
  `ovrstories` numeric,
  `baserate` numeric,
  `elevrate` numeric,
  `heatrate` numeric,
  `parmult` numeric,
  `shmult` numeric,
  `nsmult` numeric,
  `curmult` numeric,
  `locmult` numeric,
  `rectype` string,
  `exmppct` numeric,
  `exmpval` numeric,
  `vect` string,
  `chgrsn` string,
  `user1` string,
  `user2` string,
  `user3` string,
  `user4` string,
  `user5` string,
  `deactivat` string,
  `salekey` numeric,
  `iasw_id` numeric,
  `trans_id` numeric,
  `upd_status` string,
  `prodate` string,
  `protype` string,
  `prodamage` numeric,
  `profact` numeric,
  `vectnotes` string,
  `areaid` numeric,
  `occupancypct` numeric,
  `msrank` numeric,
  `extwallpct` numeric,
  `extwallrate` numeric,
  `extwallrcn` numeric,
  `extwallprice` numeric,
  `msheatpct` numeric,
  `msheatrcn` numeric,
  `msheatprice` numeric,
  `mssect1` string,
  `mstab1` string,
  `occupancy1` numeric,
  `occupancy1pct` numeric,
  `splevel1` string,
  `msclass1` string,
  `msrank1` numeric,
  `qualtype1` string,
  `extwall1` string,
  `extwall1pct` numeric,
  `extwall1rate` numeric,
  `extwall1rcn` numeric,
  `extwall1price` numeric,
  `msheat1` string,
  `msheat1pct` numeric,
  `heat1rate` numeric,
  `msheat1rcn` numeric,
  `msheat1price` numeric,
  `bsmtsectassociation` numeric,
  `bsmtfireproofflg` string,
  `nccalc` numeric,
  `ncoval` numeric,
  `ncval` numeric,
  `nctot` numeric,
  `tenants` numeric,
  `lodgepct` numeric,
  `lodgeclass` string,
  `lumpdepr` numeric,
  `lumpcure` numeric,
  `deprt` string,
  `ovrrcn` numeric,
  `altbasedate` string,
  `ovrrcnld` numeric,
  `adjrcn` numeric,
  `lcf` numeric,
  `adjrcnld` numeric,
  `calcexclude` string,
  `grpadj` numeric,
  `excess` string,
  `suppress` string,
  `adjfact` numeric,
  `lumpcamod` numeric,
  `convbldg` numeric,
  `lngth_m` numeric,
  `width_m` numeric,
  `wallhgt_m` numeric,
  `perim_m` numeric,
  `area_sqm` numeric,
  `user6` string,
  `user7` string,
  `user8` string,
  `user9` string,
  `user10` string,
  `user11` string,
  `user12` string,
  `user13` string,
  `user14` string,
  `user15` string,
  `user16` string,
  `user17` string,
  `user18` string,
  `user19` string,
  `user20` string,
  `udate1` string,
  `udate2` string,
  `udate3` string,
  `udate4` string,
  `udate5` string,
  `userval1` numeric,
  `userval2` numeric,
  `userval3` numeric,
  `userval4` numeric,
  `userval5` numeric,
  `userval6` numeric,
  `userval7` numeric,
  `userval8` numeric,
  `userval9` numeric,
  `userval10` numeric,
  `userval11` numeric,
  `userval12` numeric,
  `userval13` numeric,
  `userval14` numeric,
  `userval15` numeric,
  `segmod` string,
  `sprinkler_pct` numeric,
  `alarm_pct` numeric,
  `ac_pct` numeric,
  `walla_pct` numeric,
  `wallb_pct` numeric,
  `wallc_pct` numeric,
  `bsmtarea` numeric,
  `bsmtperm` numeric,
  `bsmttype` string,
  `no_elev` numeric,
  `wallarea` numeric,
  `slabarea` numeric,
  `structarea` numeric,
  `cubicfeet` numeric,
  `ac_units` numeric,
  `user21` string,
  `user22` string,
  `user23` string,
  `user24` string,
  `user25` string,
  `numident` numeric,
  `effageovr` numeric,
  `upperflarea` numeric,
  `loaded_at` string)
PARTITIONED BY (`taxyr` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
