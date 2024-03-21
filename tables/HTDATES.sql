CREATE TABLE `iasworld.htdates`(
  `jur` string,
  `parid` string,
  `heartyp` string,
  `subkey` numeric,
  `who` string,
  `wen` string,
  `schdte` string,
  `schtime` numeric,
  `code` string,
  `notes` string,
  `iasw_id` numeric,
  `trans_id` numeric,
  `upd_status` string,
  `heartypjur` string,
  `caseno` string,
  `user1` string,
  `user2` string,
  `user3` string,
  `user4` string,
  `user5` string,
  `user6` string,
  `user7` string,
  `user8` string,
  `user9` string,
  `user10` string,
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
  `udate1` string,
  `udate2` string,
  `udate3` string,
  `udate4` string,
  `udate5` string,
  `loaded_at` string)
PARTITIONED BY (`taxyr` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
