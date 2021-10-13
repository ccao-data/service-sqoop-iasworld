CREATE TABLE `iasworld.rcoby`(
  `ver` varchar(8), 
  `code` varchar(4), 
  `describ` varchar(50), 
  `nam` varchar(10), 
  `minsize` decimal(9,0), 
  `maxsize` decimal(9,0), 
  `units` decimal(2,0), 
  `fc` varchar(3), 
  `r1` decimal(10,0), 
  `r2` decimal(10,0), 
  `r3` decimal(10,0), 
  `r4` decimal(10,0), 
  `r5` decimal(10,0), 
  `r6` decimal(10,0), 
  `r7` decimal(10,0), 
  `r8` decimal(10,0), 
  `r9` decimal(10,0), 
  `deprt` varchar(10), 
  `cdutble` varchar(2), 
  `gradea` decimal(3,2), 
  `gradeb` decimal(3,2), 
  `gradec` decimal(3,2), 
  `graded` decimal(3,2), 
  `gradee` decimal(3,2), 
  `sumpct` decimal(3,0), 
  `locmultcd` varchar(4), 
  `who` varchar(10), 
  `wen` string, 
  `valmeth` varchar(1), 
  `ppcalctype` varchar(1), 
  `code_mvp` varchar(10), 
  `mvpflag` varchar(5), 
  `mvpinput1` varchar(40), 
  `mvpinput2` varchar(40), 
  `mvpinput3` varchar(40), 
  `mvpinput4` varchar(40), 
  `mvpinput5` varchar(40), 
  `occupancy` decimal(3,0), 
  `altbasedate` string, 
  `iasw_id` decimal(10,0))
STORED AS PARQUET;
        