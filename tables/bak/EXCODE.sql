CREATE TABLE `iasworld.excode`(
  `jur` varchar(6), 
  `excode` varchar(6), 
  `taxyr` decimal(4,0), 
  `seq` decimal(3,0), 
  `cur` varchar(1), 
  `who` varchar(50), 
  `wen` string, 
  `status` varchar(1), 
  `descr` varchar(75), 
  `extype` varchar(5), 
  `exgrp` decimal(2,0), 
  `luc` varchar(4), 
  `valclass` varchar(4), 
  `freq` varchar(5), 
  `freqyr` decimal(3,0), 
  `equation` varchar(10), 
  `const1` decimal(10,0), 
  `const2` decimal(10,0), 
  `minamt` decimal(12,2), 
  `maxamt` decimal(12,2), 
  `calcpri` decimal(3,0), 
  `sumtype` decimal(2,0), 
  `altsched` varchar(10), 
  `rnd` decimal(2,0), 
  `ownerflag` varchar(1), 
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
  `deactivat` string, 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `nocalc` varchar(1), 
  `roundcent` decimal(4,2), 
  `user16` varchar(40), 
  `user17` varchar(40), 
  `user18` varchar(40), 
  `user19` varchar(40), 
  `user20` varchar(40), 
  `user21` varchar(40), 
  `user22` varchar(40), 
  `user23` varchar(40), 
  `user24` varchar(40), 
  `user25` varchar(40), 
  `equation2` varchar(10), 
  `warnamtdiff` decimal(10,0), 
  `warnpctdiff` decimal(5,2), 
  `annual_cap` decimal(10,0), 
  `rnd_month` decimal(2,0), 
  `prorate_typ` varchar(1), 
  `labl01` varchar(20), 
  `calc01` varchar(10), 
  `fact01` decimal(6,2), 
  `rnd01` decimal(2,0), 
  `linea01` decimal(3,0), 
  `lineb01` decimal(3,0), 
  `linec01` decimal(3,0), 
  `lined01` decimal(3,0), 
  `labl02` varchar(20), 
  `calc02` varchar(10), 
  `fact02` decimal(6,2), 
  `rnd02` decimal(2,0), 
  `linea02` decimal(3,0), 
  `lineb02` decimal(3,0), 
  `linec02` decimal(3,0), 
  `lined02` decimal(3,0), 
  `labl03` varchar(20), 
  `calc03` varchar(10), 
  `fact03` decimal(6,2), 
  `rnd03` decimal(2,0), 
  `linea03` decimal(3,0), 
  `lineb03` decimal(3,0), 
  `linec03` decimal(3,0), 
  `lined03` decimal(3,0), 
  `labl04` varchar(20), 
  `calc04` varchar(10), 
  `fact04` decimal(6,2), 
  `rnd04` decimal(2,0), 
  `linea04` decimal(3,0), 
  `lineb04` decimal(3,0), 
  `linec04` decimal(3,0), 
  `lined04` decimal(3,0), 
  `labl05` varchar(20), 
  `calc05` varchar(10), 
  `fact05` decimal(6,2), 
  `rnd05` decimal(2,0), 
  `linea05` decimal(3,0), 
  `lineb05` decimal(3,0), 
  `linec05` decimal(3,0), 
  `lined05` decimal(3,0), 
  `labl06` varchar(20), 
  `calc06` varchar(10), 
  `fact06` decimal(6,2), 
  `rnd06` decimal(2,0), 
  `linea06` decimal(3,0), 
  `lineb06` decimal(3,0), 
  `linec06` decimal(3,0), 
  `lined06` decimal(3,0), 
  `labl07` varchar(20), 
  `calc07` varchar(10), 
  `fact07` decimal(6,2), 
  `rnd07` decimal(2,0), 
  `linea07` decimal(3,0), 
  `lineb07` decimal(3,0), 
  `linec07` decimal(3,0), 
  `lined07` decimal(3,0), 
  `labl08` varchar(20), 
  `calc08` varchar(10), 
  `fact08` decimal(6,2), 
  `rnd08` decimal(2,0), 
  `linea08` decimal(3,0), 
  `lineb08` decimal(3,0), 
  `linec08` decimal(3,0), 
  `lined08` decimal(3,0), 
  `labl09` varchar(20), 
  `calc09` varchar(10), 
  `fact09` decimal(6,2), 
  `rnd09` decimal(2,0), 
  `linea09` decimal(3,0), 
  `lineb09` decimal(3,0), 
  `linec09` decimal(3,0), 
  `lined09` decimal(3,0), 
  `labl10` varchar(20), 
  `calc10` varchar(10), 
  `fact10` decimal(6,2), 
  `rnd10` decimal(2,0), 
  `linea10` decimal(3,0), 
  `lineb10` decimal(3,0), 
  `linec10` decimal(3,0), 
  `lined10` decimal(3,0), 
  `labl11` varchar(20), 
  `calc11` varchar(10), 
  `fact11` decimal(6,2), 
  `rnd11` decimal(2,0), 
  `linea11` decimal(3,0), 
  `lineb11` decimal(3,0), 
  `linec11` decimal(3,0), 
  `lined11` decimal(3,0), 
  `labl12` varchar(20), 
  `calc12` varchar(10), 
  `fact12` decimal(6,2), 
  `rnd12` decimal(2,0), 
  `linea12` decimal(3,0), 
  `lineb12` decimal(3,0), 
  `linec12` decimal(3,0), 
  `lined12` decimal(3,0), 
  `labl13` varchar(20), 
  `calc13` varchar(10), 
  `fact13` decimal(6,2), 
  `rnd13` decimal(2,0), 
  `linea13` decimal(3,0), 
  `lineb13` decimal(3,0), 
  `linec13` decimal(3,0), 
  `lined13` decimal(3,0), 
  `labl14` varchar(20), 
  `calc14` varchar(10), 
  `fact14` decimal(6,2), 
  `rnd14` decimal(2,0), 
  `linea14` decimal(3,0), 
  `lineb14` decimal(3,0), 
  `linec14` decimal(3,0), 
  `lined14` decimal(3,0), 
  `labl15` varchar(20), 
  `calc15` varchar(10), 
  `fact15` decimal(6,2), 
  `rnd15` decimal(2,0), 
  `linea15` decimal(3,0), 
  `lineb15` decimal(3,0), 
  `linec15` decimal(3,0), 
  `lined15` decimal(3,0), 
  `labl16` varchar(20), 
  `calc16` varchar(10), 
  `fact16` decimal(6,2), 
  `rnd16` decimal(2,0), 
  `linea16` decimal(3,0), 
  `lineb16` decimal(3,0), 
  `linec16` decimal(3,0), 
  `lined16` decimal(3,0), 
  `labl17` varchar(20), 
  `calc17` varchar(10), 
  `fact17` decimal(6,2), 
  `rnd17` decimal(2,0), 
  `linea17` decimal(3,0), 
  `lineb17` decimal(3,0), 
  `linec17` decimal(3,0), 
  `lined17` decimal(3,0), 
  `labl18` varchar(20), 
  `calc18` varchar(10), 
  `fact18` decimal(6,2), 
  `rnd18` decimal(2,0), 
  `linea18` decimal(3,0), 
  `lineb18` decimal(3,0), 
  `linec18` decimal(3,0), 
  `lined18` decimal(3,0), 
  `labl19` varchar(20), 
  `calc19` varchar(10), 
  `fact19` decimal(6,2), 
  `rnd19` decimal(2,0), 
  `linea19` decimal(3,0), 
  `lineb19` decimal(3,0), 
  `linec19` decimal(3,0), 
  `lined19` decimal(3,0), 
  `labl20` varchar(20), 
  `calc20` varchar(10), 
  `fact20` decimal(6,2), 
  `rnd20` decimal(2,0), 
  `linea20` decimal(3,0), 
  `lineb20` decimal(3,0), 
  `linec20` decimal(3,0), 
  `lined20` decimal(3,0), 
  `calcpri2` decimal(3,0), 
  `user26` varchar(40), 
  `user27` varchar(40), 
  `user28` varchar(40), 
  `user29` varchar(40), 
  `user30` varchar(40), 
  `userval1` decimal(10,0), 
  `userval2` decimal(10,0), 
  `userval3` decimal(10,0), 
  `userval4` decimal(10,0), 
  `userval5` decimal(10,0), 
  `yrend` decimal(4,0), 
  `loaded_at` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.LazyBinaryColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://sqoop-node-master:9000/user/hive/warehouse/iasworld.db/excode'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1710960584')
