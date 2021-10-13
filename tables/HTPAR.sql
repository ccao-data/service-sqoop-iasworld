CREATE TABLE `iasworld.htpar`(
  `jur` varchar(6), 
  `parid` varchar(30), 
  `taxyr` string, 
  `heartyp` varchar(1), 
  `subkey` decimal(3,0), 
  `seq` decimal(3,0), 
  `cur` varchar(1), 
  `who` varchar(10), 
  `wen` string, 
  `caseno` varchar(15), 
  `action` varchar(1), 
  `rolltype` varchar(10), 
  `petnno` decimal(10,0), 
  `appdate` string, 
  `own1` varchar(205), 
  `addr1` varchar(80), 
  `addr2` varchar(80), 
  `addr3` varchar(80), 
  `comptype` varchar(1), 
  `complnt` varchar(205), 
  `cpaddr1` varchar(80), 
  `cpaddr2` varchar(80), 
  `cpaddr3` varchar(80), 
  `cpatty` varchar(6), 
  `agent` varchar(6), 
  `hrreas` varchar(2), 
  `noticedate` string, 
  `noticval` decimal(10,0), 
  `txpyval` decimal(10,0), 
  `notcdate` string, 
  `valdisp` decimal(10,0), 
  `hrstatus` varchar(3), 
  `user1` varchar(40), 
  `user2` varchar(40), 
  `user3` varchar(40), 
  `user4` varchar(40), 
  `user5` varchar(40), 
  `user6` varchar(40), 
  `user7` varchar(40), 
  `user8` varchar(40), 
  `user9` varchar(40), 
  `user10` varchar(40), 
  `user11` varchar(40), 
  `user12` varchar(40), 
  `user13` varchar(40), 
  `user14` varchar(40), 
  `user15` varchar(40), 
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
  `schdte` string, 
  `schtime` decimal(4,0), 
  `hearlen` decimal(3,0), 
  `hearoff` varchar(6), 
  `loc` varchar(6), 
  `hrmult` varchar(1), 
  `appstat` varchar(3), 
  `doc` varchar(2), 
  `docdate` string, 
  `fieldchk` varchar(1), 
  `resact` varchar(3), 
  `resdate` string, 
  `resrsn1` varchar(1), 
  `resrsn2` varchar(1), 
  `resrsn3` varchar(1), 
  `resnote1` varchar(40), 
  `resnote2` varchar(40), 
  `bdname1` varchar(40), 
  `bdtype1` varchar(1), 
  `bdvote1` varchar(1), 
  `bdname2` varchar(40), 
  `bdtype2` varchar(1), 
  `bdvote2` varchar(1), 
  `bdname3` varchar(40), 
  `bdtype3` varchar(1), 
  `bdvote3` varchar(1), 
  `bdname4` varchar(40), 
  `bdtype4` varchar(1), 
  `bdvote4` varchar(1), 
  `bdname5` varchar(40), 
  `bdtype5` varchar(1), 
  `bdvote5` varchar(1), 
  `bdname6` varchar(40), 
  `bdtype6` varchar(1), 
  `bdvote6` varchar(1), 
  `bdname7` varchar(40), 
  `bdtype7` varchar(1), 
  `bdvote7` varchar(1), 
  `bdname8` varchar(40), 
  `bdtype8` varchar(1), 
  `bdvote8` varchar(1), 
  `bdname9` varchar(40), 
  `bdtype9` varchar(1), 
  `bdvote9` varchar(1), 
  `bdname10` varchar(40), 
  `bdtype10` varchar(1), 
  `bdvote10` varchar(1), 
  `camareas` varchar(4), 
  `asmtreas` varchar(4), 
  `rptcode` varchar(4), 
  `note1` varchar(40), 
  `note2` varchar(40), 
  `status` varchar(1), 
  `deactivat` string, 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `heartypjur` varchar(6), 
  `httimejur` varchar(6), 
  `cpattyjur` varchar(6), 
  `agentjur` varchar(6), 
  `rptcodejur` varchar(6), 
  `user26` varchar(40), 
  `user27` varchar(40), 
  `user28` varchar(40), 
  `user29` varchar(40), 
  `user30` varchar(40), 
  `user31` varchar(40), 
  `user32` varchar(40), 
  `user33` varchar(40), 
  `user34` varchar(40), 
  `user35` varchar(40), 
  `user36` varchar(40), 
  `user37` varchar(40), 
  `user38` varchar(40), 
  `user39` varchar(40), 
  `user40` varchar(40), 
  `user41` varchar(40), 
  `user42` varchar(40), 
  `user43` varchar(40), 
  `user44` varchar(40), 
  `user45` varchar(40), 
  `user46` varchar(40), 
  `user47` varchar(40), 
  `user48` varchar(40), 
  `user49` varchar(40), 
  `user50` varchar(40), 
  `user51` varchar(40), 
  `user52` varchar(40), 
  `user53` varchar(40), 
  `user54` varchar(40), 
  `user55` varchar(40), 
  `user56` varchar(40), 
  `user57` varchar(40), 
  `user58` varchar(40), 
  `user59` varchar(40), 
  `user60` varchar(40), 
  `user61` varchar(40), 
  `user62` varchar(40), 
  `user63` varchar(40), 
  `user64` varchar(40), 
  `user65` varchar(40), 
  `user66` varchar(40), 
  `user67` varchar(40), 
  `user68` varchar(40), 
  `user69` varchar(40), 
  `user70` varchar(40), 
  `user71` varchar(40), 
  `user72` varchar(40), 
  `user73` varchar(40), 
  `user74` varchar(40), 
  `user75` varchar(40), 
  `user76` varchar(40), 
  `user77` varchar(40), 
  `user78` varchar(40), 
  `user79` varchar(40), 
  `user80` varchar(40), 
  `user81` varchar(40), 
  `user82` varchar(40), 
  `user83` varchar(40), 
  `user84` varchar(40), 
  `user85` varchar(40), 
  `user86` varchar(40), 
  `user87` varchar(40), 
  `user88` varchar(40), 
  `user89` varchar(40), 
  `user90` varchar(350), 
  `user91` varchar(350), 
  `user92` varchar(350), 
  `user93` varchar(350), 
  `user94` varchar(350), 
  `user95` varchar(350), 
  `user96` varchar(350), 
  `user97` varchar(350), 
  `user98` varchar(350), 
  `user99` varchar(350), 
  `user100` varchar(350), 
  `udate1` string, 
  `udate2` string, 
  `udate3` string, 
  `udate4` string, 
  `udate5` string, 
  `udate6` string, 
  `udate7` string, 
  `udate8` string, 
  `udate9` string, 
  `udate10` string, 
  `udate11` string, 
  `udate12` string, 
  `udate13` string, 
  `udate14` string, 
  `udate15` string, 
  `udate16` string, 
  `udate17` string, 
  `udate18` string, 
  `udate19` string, 
  `udate20` string, 
  `udate21` string, 
  `udate22` string, 
  `udate23` string, 
  `udate24` string, 
  `udate25` string, 
  `udate26` string, 
  `udate27` string, 
  `udate28` string, 
  `udate29` string, 
  `udate30` string, 
  `own2` varchar(205), 
  `careof` varchar(60), 
  `ssn_own` varchar(9), 
  `ownphone` varchar(25), 
  `ownfax` varchar(25), 
  `ownemail` varchar(230), 
  `ssn_pet` varchar(9), 
  `petphone` varchar(25), 
  `petfax` varchar(25), 
  `petemail` varchar(230), 
  `user101` varchar(80), 
  `user102` varchar(80), 
  `user103` varchar(80), 
  `user104` varchar(80), 
  `user105` varchar(80), 
  `user106` varchar(80), 
  `user107` varchar(80), 
  `user108` varchar(80), 
  `user109` varchar(80), 
  `user110` varchar(80), 
  `user111` varchar(80), 
  `user112` varchar(80), 
  `user113` varchar(80), 
  `user114` varchar(80), 
  `user115` varchar(80), 
  `user116` varchar(80), 
  `user117` varchar(80), 
  `user118` varchar(80), 
  `user119` varchar(80), 
  `user120` varchar(80), 
  `user121` varchar(40), 
  `user122` varchar(40), 
  `user123` varchar(40), 
  `user124` varchar(40), 
  `user125` varchar(40), 
  `ownnum` varchar(20), 
  `curland` decimal(11,0), 
  `curbldg` decimal(11,0), 
  `curtot` decimal(11,0), 
  `propland` decimal(11,0), 
  `propbldg` decimal(11,0), 
  `proptot` decimal(11,0), 
  `stipland` decimal(11,0), 
  `stipbldg` decimal(11,0), 
  `stiptot` decimal(11,0), 
  `ptabland` decimal(11,0), 
  `ptabbldg` decimal(11,0), 
  `ptabtot` decimal(11,0), 
  `curtax` decimal(11,0), 
  `proptax` decimal(11,0), 
  `stiptax` decimal(11,0), 
  `ptabtax` decimal(11,0), 
  `propreduct` decimal(11,0), 
  `stipreduct` decimal(11,0), 
  `ptabreduct` decimal(11,0), 
  `own1_firstname` varchar(40), 
  `own1_lastname` varchar(40), 
  `own1_middlename` varchar(40), 
  `own1_prefix` varchar(20), 
  `own1_suffix` varchar(20), 
  `own1_companyname` varchar(205), 
  `own2_firstname` varchar(40), 
  `own2_lastname` varchar(40), 
  `own2_middlename` varchar(40), 
  `own2_prefix` varchar(20), 
  `own2_suffix` varchar(20), 
  `own2_companyname` varchar(205), 
  `complnt_firstname` varchar(40), 
  `complnt_lastname` varchar(40), 
  `complnt_middlename` varchar(40), 
  `complnt_prefix` varchar(20), 
  `complnt_suffix` varchar(20), 
  `complnt_companyname` varchar(205), 
  `user126` varchar(40), 
  `user127` varchar(40), 
  `user128` varchar(40), 
  `user129` varchar(40), 
  `user130` varchar(40), 
  `user131` varchar(40), 
  `user132` varchar(40), 
  `user133` varchar(40), 
  `user134` varchar(40), 
  `user135` varchar(40), 
  `udate31` string, 
  `udate32` string, 
  `udate33` string, 
  `udate34` string, 
  `udate35` string, 
  `userval1` decimal(10,0), 
  `userval2` decimal(10,0), 
  `userval3` decimal(10,0), 
  `userval4` decimal(10,0), 
  `userval5` decimal(10,0))
STORED AS RCFILE;
        
CREATE TABLE `iasworld.htpar_bucketed`(
  `jur` varchar(6), 
  `parid` varchar(30), 
  `heartyp` varchar(1), 
  `subkey` decimal(3,0), 
  `seq` decimal(3,0), 
  `cur` varchar(1), 
  `who` varchar(10), 
  `wen` string, 
  `caseno` varchar(15), 
  `action` varchar(1), 
  `rolltype` varchar(10), 
  `petnno` decimal(10,0), 
  `appdate` string, 
  `own1` varchar(205), 
  `addr1` varchar(80), 
  `addr2` varchar(80), 
  `addr3` varchar(80), 
  `comptype` varchar(1), 
  `complnt` varchar(205), 
  `cpaddr1` varchar(80), 
  `cpaddr2` varchar(80), 
  `cpaddr3` varchar(80), 
  `cpatty` varchar(6), 
  `agent` varchar(6), 
  `hrreas` varchar(2), 
  `noticedate` string, 
  `noticval` decimal(10,0), 
  `txpyval` decimal(10,0), 
  `notcdate` string, 
  `valdisp` decimal(10,0), 
  `hrstatus` varchar(3), 
  `user1` varchar(40), 
  `user2` varchar(40), 
  `user3` varchar(40), 
  `user4` varchar(40), 
  `user5` varchar(40), 
  `user6` varchar(40), 
  `user7` varchar(40), 
  `user8` varchar(40), 
  `user9` varchar(40), 
  `user10` varchar(40), 
  `user11` varchar(40), 
  `user12` varchar(40), 
  `user13` varchar(40), 
  `user14` varchar(40), 
  `user15` varchar(40), 
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
  `schdte` string, 
  `schtime` decimal(4,0), 
  `hearlen` decimal(3,0), 
  `hearoff` varchar(6), 
  `loc` varchar(6), 
  `hrmult` varchar(1), 
  `appstat` varchar(3), 
  `doc` varchar(2), 
  `docdate` string, 
  `fieldchk` varchar(1), 
  `resact` varchar(3), 
  `resdate` string, 
  `resrsn1` varchar(1), 
  `resrsn2` varchar(1), 
  `resrsn3` varchar(1), 
  `resnote1` varchar(40), 
  `resnote2` varchar(40), 
  `bdname1` varchar(40), 
  `bdtype1` varchar(1), 
  `bdvote1` varchar(1), 
  `bdname2` varchar(40), 
  `bdtype2` varchar(1), 
  `bdvote2` varchar(1), 
  `bdname3` varchar(40), 
  `bdtype3` varchar(1), 
  `bdvote3` varchar(1), 
  `bdname4` varchar(40), 
  `bdtype4` varchar(1), 
  `bdvote4` varchar(1), 
  `bdname5` varchar(40), 
  `bdtype5` varchar(1), 
  `bdvote5` varchar(1), 
  `bdname6` varchar(40), 
  `bdtype6` varchar(1), 
  `bdvote6` varchar(1), 
  `bdname7` varchar(40), 
  `bdtype7` varchar(1), 
  `bdvote7` varchar(1), 
  `bdname8` varchar(40), 
  `bdtype8` varchar(1), 
  `bdvote8` varchar(1), 
  `bdname9` varchar(40), 
  `bdtype9` varchar(1), 
  `bdvote9` varchar(1), 
  `bdname10` varchar(40), 
  `bdtype10` varchar(1), 
  `bdvote10` varchar(1), 
  `camareas` varchar(4), 
  `asmtreas` varchar(4), 
  `rptcode` varchar(4), 
  `note1` varchar(40), 
  `note2` varchar(40), 
  `status` varchar(1), 
  `deactivat` string, 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `heartypjur` varchar(6), 
  `httimejur` varchar(6), 
  `cpattyjur` varchar(6), 
  `agentjur` varchar(6), 
  `rptcodejur` varchar(6), 
  `user26` varchar(40), 
  `user27` varchar(40), 
  `user28` varchar(40), 
  `user29` varchar(40), 
  `user30` varchar(40), 
  `user31` varchar(40), 
  `user32` varchar(40), 
  `user33` varchar(40), 
  `user34` varchar(40), 
  `user35` varchar(40), 
  `user36` varchar(40), 
  `user37` varchar(40), 
  `user38` varchar(40), 
  `user39` varchar(40), 
  `user40` varchar(40), 
  `user41` varchar(40), 
  `user42` varchar(40), 
  `user43` varchar(40), 
  `user44` varchar(40), 
  `user45` varchar(40), 
  `user46` varchar(40), 
  `user47` varchar(40), 
  `user48` varchar(40), 
  `user49` varchar(40), 
  `user50` varchar(40), 
  `user51` varchar(40), 
  `user52` varchar(40), 
  `user53` varchar(40), 
  `user54` varchar(40), 
  `user55` varchar(40), 
  `user56` varchar(40), 
  `user57` varchar(40), 
  `user58` varchar(40), 
  `user59` varchar(40), 
  `user60` varchar(40), 
  `user61` varchar(40), 
  `user62` varchar(40), 
  `user63` varchar(40), 
  `user64` varchar(40), 
  `user65` varchar(40), 
  `user66` varchar(40), 
  `user67` varchar(40), 
  `user68` varchar(40), 
  `user69` varchar(40), 
  `user70` varchar(40), 
  `user71` varchar(40), 
  `user72` varchar(40), 
  `user73` varchar(40), 
  `user74` varchar(40), 
  `user75` varchar(40), 
  `user76` varchar(40), 
  `user77` varchar(40), 
  `user78` varchar(40), 
  `user79` varchar(40), 
  `user80` varchar(40), 
  `user81` varchar(40), 
  `user82` varchar(40), 
  `user83` varchar(40), 
  `user84` varchar(40), 
  `user85` varchar(40), 
  `user86` varchar(40), 
  `user87` varchar(40), 
  `user88` varchar(40), 
  `user89` varchar(40), 
  `user90` varchar(350), 
  `user91` varchar(350), 
  `user92` varchar(350), 
  `user93` varchar(350), 
  `user94` varchar(350), 
  `user95` varchar(350), 
  `user96` varchar(350), 
  `user97` varchar(350), 
  `user98` varchar(350), 
  `user99` varchar(350), 
  `user100` varchar(350), 
  `udate1` string, 
  `udate2` string, 
  `udate3` string, 
  `udate4` string, 
  `udate5` string, 
  `udate6` string, 
  `udate7` string, 
  `udate8` string, 
  `udate9` string, 
  `udate10` string, 
  `udate11` string, 
  `udate12` string, 
  `udate13` string, 
  `udate14` string, 
  `udate15` string, 
  `udate16` string, 
  `udate17` string, 
  `udate18` string, 
  `udate19` string, 
  `udate20` string, 
  `udate21` string, 
  `udate22` string, 
  `udate23` string, 
  `udate24` string, 
  `udate25` string, 
  `udate26` string, 
  `udate27` string, 
  `udate28` string, 
  `udate29` string, 
  `udate30` string, 
  `own2` varchar(205), 
  `careof` varchar(60), 
  `ssn_own` varchar(9), 
  `ownphone` varchar(25), 
  `ownfax` varchar(25), 
  `ownemail` varchar(230), 
  `ssn_pet` varchar(9), 
  `petphone` varchar(25), 
  `petfax` varchar(25), 
  `petemail` varchar(230), 
  `user101` varchar(80), 
  `user102` varchar(80), 
  `user103` varchar(80), 
  `user104` varchar(80), 
  `user105` varchar(80), 
  `user106` varchar(80), 
  `user107` varchar(80), 
  `user108` varchar(80), 
  `user109` varchar(80), 
  `user110` varchar(80), 
  `user111` varchar(80), 
  `user112` varchar(80), 
  `user113` varchar(80), 
  `user114` varchar(80), 
  `user115` varchar(80), 
  `user116` varchar(80), 
  `user117` varchar(80), 
  `user118` varchar(80), 
  `user119` varchar(80), 
  `user120` varchar(80), 
  `user121` varchar(40), 
  `user122` varchar(40), 
  `user123` varchar(40), 
  `user124` varchar(40), 
  `user125` varchar(40), 
  `ownnum` varchar(20), 
  `curland` decimal(11,0), 
  `curbldg` decimal(11,0), 
  `curtot` decimal(11,0), 
  `propland` decimal(11,0), 
  `propbldg` decimal(11,0), 
  `proptot` decimal(11,0), 
  `stipland` decimal(11,0), 
  `stipbldg` decimal(11,0), 
  `stiptot` decimal(11,0), 
  `ptabland` decimal(11,0), 
  `ptabbldg` decimal(11,0), 
  `ptabtot` decimal(11,0), 
  `curtax` decimal(11,0), 
  `proptax` decimal(11,0), 
  `stiptax` decimal(11,0), 
  `ptabtax` decimal(11,0), 
  `propreduct` decimal(11,0), 
  `stipreduct` decimal(11,0), 
  `ptabreduct` decimal(11,0), 
  `own1_firstname` varchar(40), 
  `own1_lastname` varchar(40), 
  `own1_middlename` varchar(40), 
  `own1_prefix` varchar(20), 
  `own1_suffix` varchar(20), 
  `own1_companyname` varchar(205), 
  `own2_firstname` varchar(40), 
  `own2_lastname` varchar(40), 
  `own2_middlename` varchar(40), 
  `own2_prefix` varchar(20), 
  `own2_suffix` varchar(20), 
  `own2_companyname` varchar(205), 
  `complnt_firstname` varchar(40), 
  `complnt_lastname` varchar(40), 
  `complnt_middlename` varchar(40), 
  `complnt_prefix` varchar(20), 
  `complnt_suffix` varchar(20), 
  `complnt_companyname` varchar(205), 
  `user126` varchar(40), 
  `user127` varchar(40), 
  `user128` varchar(40), 
  `user129` varchar(40), 
  `user130` varchar(40), 
  `user131` varchar(40), 
  `user132` varchar(40), 
  `user133` varchar(40), 
  `user134` varchar(40), 
  `user135` varchar(40), 
  `udate31` string, 
  `udate32` string, 
  `udate33` string, 
  `udate34` string, 
  `udate35` string, 
  `userval1` decimal(10,0), 
  `userval2` decimal(10,0), 
  `userval3` decimal(10,0), 
  `userval4` decimal(10,0), 
  `userval5` decimal(10,0))
PARTITIONED BY (taxyr string)
CLUSTERED BY (parid) SORTED BY (seq) INTO 15 BUCKETS
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
