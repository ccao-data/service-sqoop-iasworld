CREATE TABLE `iasworld.enter`(
  `jur` varchar,
  `parid` varchar,
  `enterdt` string,
  `entercd` varchar,
  `enterid` varchar,
  `enterinfo` varchar,
  `who` varchar,
  `wen` string,
  `user1` varchar,
  `user2` varchar,
  `user3` varchar,
  `user4` varchar,
  `user5` varchar,
  `user6` varchar,
  `note1` varchar,
  `note2` varchar,
  `iasw_id` decimal,
  `trans_id` decimal,
  `upd_status` varchar,
  `seq` decimal,
  `cur` varchar,
  `deactivat` string,
  `loaded_at` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='ZSTD');
