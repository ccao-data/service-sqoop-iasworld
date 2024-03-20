CREATE TABLE `iasworld.legdat`(
  `jur` varchar,
  `parid` varchar,
  `seq` decimal,
  `cur` varchar,
  `who` varchar,
  `wen` string,
  `whocalc` varchar,
  `wencalc` string,
  `conveyno` decimal,
  `status` varchar,
  `procname` varchar,
  `procdate` string,
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
  `taxdist` varchar,
  `valpct` decimal,
  `taxdist2` varchar,
  `valpct2` decimal,
  `taxdist3` varchar,
  `valpct3` decimal,
  `taxdist4` varchar,
  `valpct4` decimal,
  `taxdist5` varchar,
  `valpct5` decimal,
  `taxdist6` varchar,
  `valpct6` decimal,
  `schdist` varchar,
  `schvalpct` decimal,
  `compct` decimal,
  `acres` decimal,
  `sqft` decimal,
  `legal1` varchar,
  `legal2` varchar,
  `legal3` varchar,
  `subdiv` varchar,
  `subdnum` varchar,
  `sublot` varchar,
  `subblck` varchar,
  `subcode` varchar,
  `condbdg` varchar,
  `condunt` varchar,
  `actfrt` decimal,
  `actdep` decimal,
  `lotdim` varchar,
  `numlot` decimal,
  `xcoord` decimal,
  `ycoord` decimal,
  `zcoord` decimal,
  `block` varchar,
  `lot` varchar,
  `qualifier` varchar,
  `sortkey` varchar,
  `note1` varchar,
  `note2` varchar,
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
  `deactivat` string,
  `iasw_id` decimal,
  `trans_id` decimal,
  `upd_status` varchar,
  `postalcode` varchar,
  `splitno` decimal,
  `adrid` decimal,
  `adrparchild` varchar,
  `adrstatus` varchar,
  `adrpremod` varchar,
  `adrpretype` varchar,
  `adrpostmod` varchar,
  `floorno` varchar,
  `legdesc` string,
  `respct` decimal,
  `star_credit` varchar,
  `strcd` varchar,
  `strreloc` varchar,
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
  `swis_code` varchar,
  `school_code` varchar,
  `roll_section` varchar,
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
  `schdist2` varchar,
  `schvalpct2` decimal,
  `form` varchar,
  `loaded_at` string)
PARTITIONED BY (`taxyr` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='ZSTD');
