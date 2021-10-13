CREATE TABLE `iasworld.comintext`(
  `jur` varchar(6), 
  `parid` varchar(30), 
  `card` decimal(4,0), 
  `lline` decimal(4,0), 
  `seq` decimal(3,0), 
  `cur` varchar(1), 
  `who` varchar(10), 
  `wen` string, 
  `whocalc` varchar(10), 
  `wencalc` string, 
  `status` varchar(1), 
  `sect` varchar(3), 
  `flrfrom` varchar(2), 
  `flrto` varchar(2), 
  `lngth` decimal(6,2), 
  `width` decimal(5,2), 
  `area` decimal(9,0), 
  `perim` decimal(6,0), 
  `stories` decimal(2,0), 
  `sf` decimal(9,0), 
  `cubicft` decimal(10,0), 
  `usetype` varchar(3), 
  `wallhgt` decimal(3,0), 
  `extwall` varchar(3), 
  `constr` varchar(2), 
  `intfin` decimal(3,0), 
  `intwall` varchar(1), 
  `heat` varchar(1), 
  `air` varchar(1), 
  `plumb` varchar(1), 
  `light` varchar(1), 
  `rate` decimal(6,2), 
  `storyadj` decimal(5,4), 
  `lineval` decimal(10,0), 
  `rcn` decimal(10,0), 
  `featval` decimal(10,0), 
  `useradjovr` decimal(6,4), 
  `mktadj` decimal(5,2), 
  `phycond` varchar(1), 
  `functutil` varchar(1), 
  `depr` decimal(5,2), 
  `pctcomp` decimal(3,0), 
  `newconmo` varchar(3), 
  `newconpct` decimal(7,6), 
  `price` decimal(10,0), 
  `class` varchar(4), 
  `yrblt` decimal(4,0), 
  `effyr` decimal(4,0), 
  `obsdep` decimal(3,0), 
  `obsrsn` varchar(2), 
  `fundep` decimal(3,0), 
  `funrsn` varchar(2), 
  `ecndep` decimal(3,0), 
  `ecnrsn` varchar(2), 
  `rentpct` decimal(3,0), 
  `rentsf` decimal(8,0), 
  `areasum` decimal(10,0), 
  `incuse` varchar(2), 
  `mssect` varchar(2), 
  `mstab` varchar(2), 
  `occupancy` decimal(3,0), 
  `splevel` varchar(3), 
  `msclass` varchar(2), 
  `msheat` varchar(7), 
  `msunits` decimal(4,0), 
  `qualtype` varchar(3), 
  `ovrstories` decimal(3,0), 
  `baserate` decimal(7,2), 
  `elevrate` decimal(4,2), 
  `heatrate` decimal(5,2), 
  `parmult` decimal(5,4), 
  `shmult` decimal(5,4), 
  `nsmult` decimal(5,4), 
  `curmult` decimal(3,2), 
  `locmult` decimal(3,2), 
  `rectype` varchar(1), 
  `exmppct` decimal(5,2), 
  `exmpval` decimal(10,0), 
  `vect` varchar(500), 
  `chgrsn` varchar(2), 
  `user1` varchar(40), 
  `user2` varchar(40), 
  `user3` varchar(40), 
  `user4` varchar(40), 
  `user5` varchar(40), 
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
  `occupancypct` decimal(3,0), 
  `msrank` decimal(3,2), 
  `extwallpct` decimal(3,0), 
  `extwallrate` decimal(5,2), 
  `extwallrcn` decimal(10,0), 
  `extwallprice` decimal(10,0), 
  `msheatpct` decimal(3,0), 
  `msheatrcn` decimal(10,0), 
  `msheatprice` decimal(10,0), 
  `mssect1` varchar(2), 
  `mstab1` varchar(2), 
  `occupancy1` decimal(3,0), 
  `occupancy1pct` decimal(3,0), 
  `splevel1` varchar(3), 
  `msclass1` varchar(2), 
  `msrank1` decimal(3,2), 
  `qualtype1` varchar(3), 
  `extwall1` varchar(3), 
  `extwall1pct` decimal(3,0), 
  `extwall1rate` decimal(5,2), 
  `extwall1rcn` decimal(10,0), 
  `extwall1price` decimal(10,0), 
  `msheat1` varchar(7), 
  `msheat1pct` decimal(3,0), 
  `heat1rate` decimal(5,2), 
  `msheat1rcn` decimal(10,0), 
  `msheat1price` decimal(10,0), 
  `bsmtsectassociation` decimal(4,0), 
  `bsmtfireproofflg` varchar(1), 
  `nccalc` decimal(10,0), 
  `ncoval` decimal(10,0), 
  `ncval` decimal(10,0), 
  `nctot` decimal(10,0), 
  `tenants` decimal(10,0), 
  `lodgepct` decimal(5,2), 
  `lodgeclass` varchar(6), 
  `lumpdepr` decimal(10,0), 
  `lumpcure` decimal(10,0), 
  `deprt` varchar(10), 
  `ovrrcn` decimal(10,0), 
  `altbasedate` string, 
  `ovrrcnld` decimal(10,0), 
  `adjrcn` decimal(10,0), 
  `lcf` decimal(3,2), 
  `adjrcnld` decimal(10,0), 
  `calcexclude` varchar(1), 
  `grpadj` decimal(10,0), 
  `excess` varchar(1), 
  `suppress` varchar(1), 
  `adjfact` decimal(7,5), 
  `lumpcamod` decimal(10,5), 
  `convbldg` decimal(10,0), 
  `lngth_m` decimal(7,3), 
  `width_m` decimal(6,3), 
  `wallhgt_m` decimal(6,3), 
  `perim_m` decimal(9,3), 
  `area_sqm` decimal(11,3))
PARTITIONED BY (`taxyr` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
