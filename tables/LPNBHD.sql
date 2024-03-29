CREATE TABLE `iasworld.lpnbhd`(
  `jur` varchar(6),
  `ver` varchar(8),
  `nbhd` varchar(8),
  `seq` decimal(3,0),
  `cur` varchar(1),
  `who` varchar(50),
  `wen` string,
  `describ` varchar(40),
  `landfact` decimal(6,4),
  `bldgfact` decimal(6,4),
  `dwelfact` decimal(6,4),
  `obyfact` decimal(6,4),
  `ngroup` decimal(4,0),
  `grade` varchar(4),
  `cdu` varchar(2),
  `resmod` decimal(4,0),
  `lcodemod` decimal(4,0),
  `lotmod` decimal(4,0),
  `sfmod` decimal(4,0),
  `acmod` decimal(4,0),
  `grmod` decimal(4,0),
  `unmod` decimal(4,0),
  `agmod` decimal(4,0),
  `lotpct` decimal(3,0),
  `sfpct` decimal(3,0),
  `acpct` decimal(3,0),
  `grpct` decimal(3,0),
  `unpct` decimal(3,0),
  `agpct` decimal(3,0),
  `grm` decimal(10,0),
  `grmflg` varchar(1),
  `depthtble` varchar(3),
  `deprt` varchar(10),
  `cdutble` varchar(2),
  `valarea` varchar(4),
  `note1` varchar(80),
  `note2` varchar(80),
  `note3` varchar(80),
  `note4` varchar(80),
  `note5` varchar(80),
  `note6` varchar(80),
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
  `rent` decimal(6,0),
  `iasw_id` decimal(10,0),
  `revmeth` varchar(1),
  `landpct` decimal(10,0),
  `modelid` decimal(10,0),
  `loaded_at` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
