CREATE TABLE `iasworld.dweldat`(
  `jur` varchar(6), 
  `parid` varchar(30), 
  `card` decimal(4,0), 
  `taxyr` string, 
  `seq` decimal(3,0), 
  `cur` varchar(1), 
  `who` varchar(10), 
  `wen` string, 
  `whocalc` varchar(10), 
  `wencalc` string, 
  `status` varchar(1), 
  `stories` decimal(3,2), 
  `extwall` varchar(2), 
  `style` varchar(2), 
  `yrblt` decimal(4,0), 
  `effyr` decimal(4,0), 
  `yrremod` decimal(4,0), 
  `rmtot` decimal(2,0), 
  `rmbed` decimal(2,0), 
  `rmfam` decimal(1,0), 
  `fixbath` decimal(2,0), 
  `fixhalf` decimal(2,0), 
  `fixaddl` decimal(2,0), 
  `fixtot` decimal(3,0), 
  `plumval` decimal(8,0), 
  `remkit` varchar(1), 
  `rembath` varchar(1), 
  `bsmt` varchar(1), 
  `bsmtval` decimal(8,0), 
  `heat` varchar(1), 
  `fuel` varchar(1), 
  `heatsys` varchar(1), 
  `heatval` decimal(8,0), 
  `attic` varchar(1), 
  `atticval` decimal(8,0), 
  `intext` varchar(1), 
  `mastrimw` decimal(2,0), 
  `mastriml` decimal(3,0), 
  `mastrimarea` decimal(6,0), 
  `trimval` decimal(8,0), 
  `unfinw` decimal(2,0), 
  `unfinl` decimal(3,0), 
  `unfinarea` decimal(6,0), 
  `unfinval` decimal(8,0), 
  `recromw` decimal(2,0), 
  `recroml` decimal(3,0), 
  `recromarea` decimal(6,0), 
  `recval` decimal(8,0), 
  `finbsmtw` decimal(2,0), 
  `finbsmtl` decimal(3,0), 
  `finbsmtarea` decimal(6,0), 
  `finbsmtval` decimal(8,0), 
  `ufeatw` decimal(2,0), 
  `ufeatl` decimal(3,0), 
  `ufeatarea` decimal(6,0), 
  `ufeatval` decimal(8,0), 
  `wbfp_o` decimal(2,0), 
  `wbfp_s` decimal(2,0), 
  `wbfp_x` decimal(3,1), 
  `wbfp_pf` decimal(2,0), 
  `wbfp_pfx` decimal(3,1), 
  `wbfpval` decimal(8,0), 
  `bsmtcar` decimal(1,0), 
  `bgarval` decimal(8,0), 
  `msc1des` varchar(2), 
  `msc1num` decimal(4,2), 
  `msc1val` decimal(8,0), 
  `msc2des` varchar(2), 
  `msc2num` decimal(4,2), 
  `msc2val` decimal(8,0), 
  `condolvl` decimal(12,0), 
  `condotyp` varchar(4), 
  `condovw` varchar(12), 
  `cndcmplx` varchar(30), 
  `cline` decimal(4,0), 
  `unitno` varchar(10), 
  `cndbaseval` decimal(10,0), 
  `cndadjval` decimal(10,0), 
  `grmunits` decimal(3,0), 
  `grmrent` decimal(6,0), 
  `adjgrmfact` decimal(6,4), 
  `resgrmval` decimal(10,0), 
  `mgfa` decimal(9,0), 
  `sfla` decimal(6,0), 
  `flr1area` decimal(6,0), 
  `adjarea` decimal(6,0), 
  `areafact` decimal(6,3), 
  `shfact` decimal(5,3), 
  `cnstfact` decimal(5,3), 
  `cnstval` decimal(8,0), 
  `subtval` decimal(9,0), 
  `grade` varchar(4), 
  `grdfact` decimal(3,2), 
  `cddesc` varchar(2), 
  `cdpct` decimal(3,0), 
  `userfact` decimal(5,3), 
  `useramt` decimal(10,0), 
  `locmult` decimal(4,3), 
  `basercn` decimal(10,0), 
  `rcnval` decimal(10,0), 
  `cdu` varchar(2), 
  `depr` decimal(5,2), 
  `mktadj` decimal(5,2), 
  `mktrsn` varchar(2), 
  `basercnld` decimal(10,0), 
  `addnarea` decimal(6,0), 
  `addnrcnval` decimal(8,0), 
  `resfeatval` decimal(8,0), 
  `addnval` decimal(10,0), 
  `rcnld` decimal(10,0), 
  `adjfact` decimal(7,5), 
  `pctcomplete` decimal(3,0), 
  `newconmo` varchar(3), 
  `newconpct` decimal(7,6), 
  `adjrcnld` decimal(10,0), 
  `flr1val` decimal(8,0), 
  `flruarea` decimal(6,0), 
  `flruval` decimal(8,0), 
  `flrharea` decimal(6,0), 
  `flrhval` decimal(8,0), 
  `bsmtarea` decimal(6,0), 
  `atticarea` decimal(6,0), 
  `catharea` decimal(6,0), 
  `cathval` decimal(8,0), 
  `slabarea` decimal(6,0), 
  `slabval` decimal(8,0), 
  `heatarea` decimal(6,0), 
  `acarea` decimal(6,0), 
  `acval` decimal(8,0), 
  `rmbedb` decimal(2,0), 
  `rmbed1` decimal(2,0), 
  `rmbed2` decimal(2,0), 
  `rmbed3` decimal(2,0), 
  `fixbathb` decimal(2,0), 
  `fixbath1` decimal(2,0), 
  `fixbath2` decimal(2,0), 
  `fixbath3` decimal(2,0), 
  `fixhalfb` decimal(2,0), 
  `fixhalf1` decimal(2,0), 
  `fixhalf2` decimal(2,0), 
  `fixhalf3` decimal(2,0), 
  `rmkitb` decimal(2,0), 
  `rmkit1` decimal(2,0), 
  `rmkit2` decimal(2,0), 
  `rmkit3` decimal(2,0), 
  `rmkit` decimal(2,0), 
  `rmlivb` decimal(2,0), 
  `rmliv1` decimal(2,0), 
  `rmliv2` decimal(2,0), 
  `rmliv3` decimal(2,0), 
  `rmliv` decimal(2,0), 
  `rmdinb` decimal(2,0), 
  `rmdin1` decimal(2,0), 
  `rmdin2` decimal(2,0), 
  `rmdin3` decimal(2,0), 
  `rmdin` decimal(2,0), 
  `rmfamb` decimal(2,0), 
  `rmfam1` decimal(2,0), 
  `rmfam2` decimal(2,0), 
  `rmfam3` decimal(2,0), 
  `rmothb` decimal(2,0), 
  `rmoth1` decimal(2,0), 
  `rmoth2` decimal(2,0), 
  `rmoth3` decimal(2,0), 
  `rmoth` decimal(2,0), 
  `note1` varchar(40), 
  `note2` varchar(40), 
  `class` varchar(4), 
  `degrem` varchar(1), 
  `cond` varchar(1), 
  `valmeth` varchar(1), 
  `rectype` varchar(1), 
  `resmod` decimal(4,0), 
  `modover` decimal(4,0), 
  `exmppctover` decimal(5,2), 
  `exmppct` decimal(5,2), 
  `exmpval` decimal(10,0), 
  `areasum` decimal(10,0), 
  `obsdep` decimal(3,0), 
  `obsrsn` varchar(2), 
  `fundep` decimal(3,0), 
  `funrsn` varchar(2), 
  `ecndep` decimal(3,0), 
  `ecnrsn` varchar(2), 
  `bldguse` varchar(4), 
  `convbldg` decimal(10,0), 
  `chgrsn` varchar(2), 
  `deprt` varchar(10), 
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
  `msc3des` varchar(2), 
  `msc3num` decimal(4,2), 
  `msc3val` decimal(8,0), 
  `msc4des` varchar(2), 
  `msc4num` decimal(4,2), 
  `msc4val` decimal(8,0), 
  `msc5des` varchar(2), 
  `msc5num` decimal(4,2), 
  `msc5val` decimal(8,0), 
  `msc6des` varchar(2), 
  `msc6num` decimal(4,2), 
  `msc6val` decimal(8,0), 
  `msc7des` varchar(2), 
  `msc7num` decimal(4,2), 
  `msc7val` decimal(8,0), 
  `msc8des` varchar(2), 
  `msc8num` decimal(4,2), 
  `msc8val` decimal(8,0), 
  `msc9des` varchar(2), 
  `msc9num` decimal(4,2), 
  `msc9val` decimal(8,0), 
  `msc10des` varchar(2), 
  `msc10num` decimal(4,2), 
  `msc10val` decimal(8,0), 
  `msc11des` varchar(2), 
  `msc11num` decimal(4,2), 
  `msc11val` decimal(8,0), 
  `msc12des` varchar(2), 
  `msc12num` decimal(4,2), 
  `msc12val` decimal(8,0), 
  `effyrovr` decimal(4,0), 
  `sidpct` decimal(5,2), 
  `sidyr` decimal(4,0), 
  `winpct` decimal(5,2), 
  `winyr` decimal(4,0), 
  `furpct` decimal(5,2), 
  `furyr` decimal(4,0), 
  `elepct` decimal(5,2), 
  `eleyr` decimal(4,0), 
  `plupct` decimal(5,2), 
  `pluyr` decimal(4,0), 
  `kitpct` decimal(5,2), 
  `kityr` decimal(4,0), 
  `estpct` decimal(5,2), 
  `estyr` decimal(4,0), 
  `calceffyr` decimal(4,0), 
  `nccalc` decimal(10,0), 
  `ncoval` decimal(10,0), 
  `ncval` decimal(10,0), 
  `nctot` decimal(10,0), 
  `hga` varchar(1), 
  `recnr` decimal(3,0), 
  `ovrrcnld` decimal(10,0), 
  `condosflaovr` decimal(6,0), 
  `grmovr` decimal(10,0), 
  `fixbath4` decimal(2,0), 
  `fixbath5` decimal(2,0), 
  `fixbath6` decimal(2,0), 
  `fixbath7` decimal(2,0), 
  `ovrrcn` decimal(10,0), 
  `lumpcure` decimal(10,0), 
  `numident` decimal(2,0), 
  `grpadj` decimal(10,0), 
  `stage` decimal(5,0), 
  `excess` varchar(1), 
  `suppress` varchar(1), 
  `lumpcamod` decimal(10,5), 
  `bld_modelid` varchar(80), 
  `ovrmraval` decimal(10,0))
STORED AS RCFILE;
        
CREATE TABLE `iasworld.dweldat_bucketed`(
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
  `stories` decimal(3,2), 
  `extwall` varchar(2), 
  `style` varchar(2), 
  `yrblt` decimal(4,0), 
  `effyr` decimal(4,0), 
  `yrremod` decimal(4,0), 
  `rmtot` decimal(2,0), 
  `rmbed` decimal(2,0), 
  `rmfam` decimal(1,0), 
  `fixbath` decimal(2,0), 
  `fixhalf` decimal(2,0), 
  `fixaddl` decimal(2,0), 
  `fixtot` decimal(3,0), 
  `plumval` decimal(8,0), 
  `remkit` varchar(1), 
  `rembath` varchar(1), 
  `bsmt` varchar(1), 
  `bsmtval` decimal(8,0), 
  `heat` varchar(1), 
  `fuel` varchar(1), 
  `heatsys` varchar(1), 
  `heatval` decimal(8,0), 
  `attic` varchar(1), 
  `atticval` decimal(8,0), 
  `intext` varchar(1), 
  `mastrimw` decimal(2,0), 
  `mastriml` decimal(3,0), 
  `mastrimarea` decimal(6,0), 
  `trimval` decimal(8,0), 
  `unfinw` decimal(2,0), 
  `unfinl` decimal(3,0), 
  `unfinarea` decimal(6,0), 
  `unfinval` decimal(8,0), 
  `recromw` decimal(2,0), 
  `recroml` decimal(3,0), 
  `recromarea` decimal(6,0), 
  `recval` decimal(8,0), 
  `finbsmtw` decimal(2,0), 
  `finbsmtl` decimal(3,0), 
  `finbsmtarea` decimal(6,0), 
  `finbsmtval` decimal(8,0), 
  `ufeatw` decimal(2,0), 
  `ufeatl` decimal(3,0), 
  `ufeatarea` decimal(6,0), 
  `ufeatval` decimal(8,0), 
  `wbfp_o` decimal(2,0), 
  `wbfp_s` decimal(2,0), 
  `wbfp_x` decimal(3,1), 
  `wbfp_pf` decimal(2,0), 
  `wbfp_pfx` decimal(3,1), 
  `wbfpval` decimal(8,0), 
  `bsmtcar` decimal(1,0), 
  `bgarval` decimal(8,0), 
  `msc1des` varchar(2), 
  `msc1num` decimal(4,2), 
  `msc1val` decimal(8,0), 
  `msc2des` varchar(2), 
  `msc2num` decimal(4,2), 
  `msc2val` decimal(8,0), 
  `condolvl` decimal(12,0), 
  `condotyp` varchar(4), 
  `condovw` varchar(12), 
  `cndcmplx` varchar(30), 
  `cline` decimal(4,0), 
  `unitno` varchar(10), 
  `cndbaseval` decimal(10,0), 
  `cndadjval` decimal(10,0), 
  `grmunits` decimal(3,0), 
  `grmrent` decimal(6,0), 
  `adjgrmfact` decimal(6,4), 
  `resgrmval` decimal(10,0), 
  `mgfa` decimal(9,0), 
  `sfla` decimal(6,0), 
  `flr1area` decimal(6,0), 
  `adjarea` decimal(6,0), 
  `areafact` decimal(6,3), 
  `shfact` decimal(5,3), 
  `cnstfact` decimal(5,3), 
  `cnstval` decimal(8,0), 
  `subtval` decimal(9,0), 
  `grade` varchar(4), 
  `grdfact` decimal(3,2), 
  `cddesc` varchar(2), 
  `cdpct` decimal(3,0), 
  `userfact` decimal(5,3), 
  `useramt` decimal(10,0), 
  `locmult` decimal(4,3), 
  `basercn` decimal(10,0), 
  `rcnval` decimal(10,0), 
  `cdu` varchar(2), 
  `depr` decimal(5,2), 
  `mktadj` decimal(5,2), 
  `mktrsn` varchar(2), 
  `basercnld` decimal(10,0), 
  `addnarea` decimal(6,0), 
  `addnrcnval` decimal(8,0), 
  `resfeatval` decimal(8,0), 
  `addnval` decimal(10,0), 
  `rcnld` decimal(10,0), 
  `adjfact` decimal(7,5), 
  `pctcomplete` decimal(3,0), 
  `newconmo` varchar(3), 
  `newconpct` decimal(7,6), 
  `adjrcnld` decimal(10,0), 
  `flr1val` decimal(8,0), 
  `flruarea` decimal(6,0), 
  `flruval` decimal(8,0), 
  `flrharea` decimal(6,0), 
  `flrhval` decimal(8,0), 
  `bsmtarea` decimal(6,0), 
  `atticarea` decimal(6,0), 
  `catharea` decimal(6,0), 
  `cathval` decimal(8,0), 
  `slabarea` decimal(6,0), 
  `slabval` decimal(8,0), 
  `heatarea` decimal(6,0), 
  `acarea` decimal(6,0), 
  `acval` decimal(8,0), 
  `rmbedb` decimal(2,0), 
  `rmbed1` decimal(2,0), 
  `rmbed2` decimal(2,0), 
  `rmbed3` decimal(2,0), 
  `fixbathb` decimal(2,0), 
  `fixbath1` decimal(2,0), 
  `fixbath2` decimal(2,0), 
  `fixbath3` decimal(2,0), 
  `fixhalfb` decimal(2,0), 
  `fixhalf1` decimal(2,0), 
  `fixhalf2` decimal(2,0), 
  `fixhalf3` decimal(2,0), 
  `rmkitb` decimal(2,0), 
  `rmkit1` decimal(2,0), 
  `rmkit2` decimal(2,0), 
  `rmkit3` decimal(2,0), 
  `rmkit` decimal(2,0), 
  `rmlivb` decimal(2,0), 
  `rmliv1` decimal(2,0), 
  `rmliv2` decimal(2,0), 
  `rmliv3` decimal(2,0), 
  `rmliv` decimal(2,0), 
  `rmdinb` decimal(2,0), 
  `rmdin1` decimal(2,0), 
  `rmdin2` decimal(2,0), 
  `rmdin3` decimal(2,0), 
  `rmdin` decimal(2,0), 
  `rmfamb` decimal(2,0), 
  `rmfam1` decimal(2,0), 
  `rmfam2` decimal(2,0), 
  `rmfam3` decimal(2,0), 
  `rmothb` decimal(2,0), 
  `rmoth1` decimal(2,0), 
  `rmoth2` decimal(2,0), 
  `rmoth3` decimal(2,0), 
  `rmoth` decimal(2,0), 
  `note1` varchar(40), 
  `note2` varchar(40), 
  `class` varchar(4), 
  `degrem` varchar(1), 
  `cond` varchar(1), 
  `valmeth` varchar(1), 
  `rectype` varchar(1), 
  `resmod` decimal(4,0), 
  `modover` decimal(4,0), 
  `exmppctover` decimal(5,2), 
  `exmppct` decimal(5,2), 
  `exmpval` decimal(10,0), 
  `areasum` decimal(10,0), 
  `obsdep` decimal(3,0), 
  `obsrsn` varchar(2), 
  `fundep` decimal(3,0), 
  `funrsn` varchar(2), 
  `ecndep` decimal(3,0), 
  `ecnrsn` varchar(2), 
  `bldguse` varchar(4), 
  `convbldg` decimal(10,0), 
  `chgrsn` varchar(2), 
  `deprt` varchar(10), 
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
  `msc3des` varchar(2), 
  `msc3num` decimal(4,2), 
  `msc3val` decimal(8,0), 
  `msc4des` varchar(2), 
  `msc4num` decimal(4,2), 
  `msc4val` decimal(8,0), 
  `msc5des` varchar(2), 
  `msc5num` decimal(4,2), 
  `msc5val` decimal(8,0), 
  `msc6des` varchar(2), 
  `msc6num` decimal(4,2), 
  `msc6val` decimal(8,0), 
  `msc7des` varchar(2), 
  `msc7num` decimal(4,2), 
  `msc7val` decimal(8,0), 
  `msc8des` varchar(2), 
  `msc8num` decimal(4,2), 
  `msc8val` decimal(8,0), 
  `msc9des` varchar(2), 
  `msc9num` decimal(4,2), 
  `msc9val` decimal(8,0), 
  `msc10des` varchar(2), 
  `msc10num` decimal(4,2), 
  `msc10val` decimal(8,0), 
  `msc11des` varchar(2), 
  `msc11num` decimal(4,2), 
  `msc11val` decimal(8,0), 
  `msc12des` varchar(2), 
  `msc12num` decimal(4,2), 
  `msc12val` decimal(8,0), 
  `effyrovr` decimal(4,0), 
  `sidpct` decimal(5,2), 
  `sidyr` decimal(4,0), 
  `winpct` decimal(5,2), 
  `winyr` decimal(4,0), 
  `furpct` decimal(5,2), 
  `furyr` decimal(4,0), 
  `elepct` decimal(5,2), 
  `eleyr` decimal(4,0), 
  `plupct` decimal(5,2), 
  `pluyr` decimal(4,0), 
  `kitpct` decimal(5,2), 
  `kityr` decimal(4,0), 
  `estpct` decimal(5,2), 
  `estyr` decimal(4,0), 
  `calceffyr` decimal(4,0), 
  `nccalc` decimal(10,0), 
  `ncoval` decimal(10,0), 
  `ncval` decimal(10,0), 
  `nctot` decimal(10,0), 
  `hga` varchar(1), 
  `recnr` decimal(3,0), 
  `ovrrcnld` decimal(10,0), 
  `condosflaovr` decimal(6,0), 
  `grmovr` decimal(10,0), 
  `fixbath4` decimal(2,0), 
  `fixbath5` decimal(2,0), 
  `fixbath6` decimal(2,0), 
  `fixbath7` decimal(2,0), 
  `ovrrcn` decimal(10,0), 
  `lumpcure` decimal(10,0), 
  `numident` decimal(2,0), 
  `grpadj` decimal(10,0), 
  `stage` decimal(5,0), 
  `excess` varchar(1), 
  `suppress` varchar(1), 
  `lumpcamod` decimal(10,5), 
  `bld_modelid` varchar(80), 
  `ovrmraval` decimal(10,0))
PARTITIONED BY (`taxyr` string)
CLUSTERED BY (`parid`) SORTED BY (`seq`) INTO 10 BUCKETS
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
