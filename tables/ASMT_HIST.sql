CREATE TABLE `iasworld.asmt_hist`(
  `jur` varchar(6), 
  `rolltype` varchar(10), 
  `parid` varchar(30), 
  `valyear` decimal(4,0), 
  `valclass` varchar(4), 
  `ovrclass` varchar(4), 
  `taxtable` varchar(2), 
  `distcode` varchar(5), 
  `seq` decimal(3,0), 
  `cur` varchar(1), 
  `who` varchar(50), 
  `wen` string, 
  `whocalc` varchar(10), 
  `wencalc` string, 
  `status` varchar(1), 
  `reascd` varchar(4), 
  `procname` varchar(10), 
  `procdate` string, 
  `flag1` varchar(6), 
  `flag2` varchar(6), 
  `flag3` varchar(6), 
  `flag4` varchar(6), 
  `flag5` varchar(6), 
  `flag6` varchar(6), 
  `flag7` varchar(6), 
  `flag8` varchar(6), 
  `flag9` varchar(6), 
  `flag10` varchar(6), 
  `flag11` varchar(6), 
  `flag12` varchar(6), 
  `flag13` varchar(6), 
  `flag14` varchar(6), 
  `flag15` varchar(6), 
  `flag16` varchar(6), 
  `flag17` varchar(6), 
  `flag18` varchar(6), 
  `flag19` varchar(6), 
  `flag20` varchar(6), 
  `udate1` string, 
  `udate2` string, 
  `udate3` string, 
  `udate4` string, 
  `udate5` string, 
  `class` varchar(4), 
  `luc` varchar(4), 
  `totasm1` decimal(10,0), 
  `ovrcodasm1` varchar(3), 
  `ovrvalasm1` decimal(10,0), 
  `valasm1` decimal(10,0), 
  `totasm2` decimal(10,0), 
  `ovrcodasm2` varchar(3), 
  `ovrvalasm2` decimal(10,0), 
  `valasm2` decimal(10,0), 
  `totasm3` decimal(10,0), 
  `ovrcodasm3` varchar(3), 
  `ovrvalasm3` decimal(10,0), 
  `valasm3` decimal(10,0), 
  `totapr1` decimal(10,0), 
  `ovrcodapr1` varchar(3), 
  `ovrvalapr1` decimal(10,0), 
  `valapr1` decimal(10,0), 
  `totapr2` decimal(10,0), 
  `ovrcodapr2` varchar(3), 
  `ovrvalapr2` decimal(10,0), 
  `valapr2` decimal(10,0), 
  `totapr3` decimal(10,0), 
  `ovrcodapr3` varchar(3), 
  `ovrvalapr3` decimal(10,0), 
  `valapr3` decimal(10,0), 
  `tottax` decimal(10,0), 
  `ovrcodtax` varchar(3), 
  `ovrvaltax` decimal(10,0), 
  `valtax` decimal(10,0), 
  `tot01` decimal(10,0), 
  `ovrcod01` varchar(3), 
  `ovrval01` decimal(10,0), 
  `val01` decimal(10,0), 
  `tot02` decimal(10,0), 
  `ovrcod02` varchar(3), 
  `ovrval02` decimal(10,0), 
  `val02` decimal(10,0), 
  `tot03` decimal(10,0), 
  `ovrcod03` varchar(3), 
  `ovrval03` decimal(10,0), 
  `val03` decimal(10,0), 
  `tot04` decimal(10,0), 
  `ovrcod04` varchar(3), 
  `ovrval04` decimal(10,0), 
  `val04` decimal(10,0), 
  `tot05` decimal(10,0), 
  `ovrcod05` varchar(3), 
  `ovrval05` decimal(10,0), 
  `val05` decimal(10,0), 
  `tot06` decimal(10,0), 
  `ovrcod06` varchar(3), 
  `ovrval06` decimal(10,0), 
  `val06` decimal(10,0), 
  `tot07` decimal(10,0), 
  `ovrcod07` varchar(3), 
  `ovrval07` decimal(10,0), 
  `val07` decimal(10,0), 
  `tot08` decimal(10,0), 
  `ovrcod08` varchar(3), 
  `ovrval08` decimal(10,0), 
  `val08` decimal(10,0), 
  `tot09` decimal(10,0), 
  `ovrcod09` varchar(3), 
  `ovrval09` decimal(10,0), 
  `val09` decimal(10,0), 
  `tot10` decimal(10,0), 
  `ovrcod10` varchar(3), 
  `ovrval10` decimal(10,0), 
  `val10` decimal(10,0), 
  `tot11` decimal(10,0), 
  `ovrcod11` varchar(3), 
  `ovrval11` decimal(10,0), 
  `val11` decimal(10,0), 
  `tot12` decimal(10,0), 
  `ovrcod12` varchar(3), 
  `ovrval12` decimal(10,0), 
  `val12` decimal(10,0), 
  `tot13` decimal(10,0), 
  `ovrcod13` varchar(3), 
  `ovrval13` decimal(10,0), 
  `val13` decimal(10,0), 
  `tot14` decimal(10,0), 
  `ovrcod14` varchar(3), 
  `ovrval14` decimal(10,0), 
  `val14` decimal(10,0), 
  `tot15` decimal(10,0), 
  `ovrcod15` varchar(3), 
  `ovrval15` decimal(10,0), 
  `val15` decimal(10,0), 
  `tot16` decimal(10,0), 
  `ovrcod16` varchar(3), 
  `ovrval16` decimal(10,0), 
  `val16` decimal(10,0), 
  `tot17` decimal(10,0), 
  `ovrcod17` varchar(3), 
  `ovrval17` decimal(10,0), 
  `val17` decimal(10,0), 
  `tot18` decimal(10,0), 
  `ovrcod18` varchar(3), 
  `ovrval18` decimal(10,0), 
  `val18` decimal(10,0), 
  `tot19` decimal(10,0), 
  `ovrcod19` varchar(3), 
  `ovrval19` decimal(10,0), 
  `val19` decimal(10,0), 
  `tot20` decimal(10,0), 
  `ovrcod20` varchar(3), 
  `ovrval20` decimal(10,0), 
  `val20` decimal(10,0), 
  `tot21` decimal(10,0), 
  `ovrcod21` varchar(3), 
  `ovrval21` decimal(10,0), 
  `val21` decimal(10,0), 
  `tot22` decimal(10,0), 
  `ovrcod22` varchar(3), 
  `ovrval22` decimal(10,0), 
  `val22` decimal(10,0), 
  `tot23` decimal(10,0), 
  `ovrcod23` varchar(3), 
  `ovrval23` decimal(10,0), 
  `val23` decimal(10,0), 
  `tot24` decimal(10,0), 
  `ovrcod24` varchar(3), 
  `ovrval24` decimal(10,0), 
  `val24` decimal(10,0), 
  `tot25` decimal(10,0), 
  `ovrcod25` varchar(3), 
  `ovrval25` decimal(10,0), 
  `val25` decimal(10,0), 
  `tot26` decimal(10,0), 
  `ovrcod26` varchar(3), 
  `ovrval26` decimal(10,0), 
  `val26` decimal(10,0), 
  `tot27` decimal(10,0), 
  `ovrcod27` varchar(3), 
  `ovrval27` decimal(10,0), 
  `val27` decimal(10,0), 
  `tot28` decimal(10,0), 
  `ovrcod28` varchar(3), 
  `ovrval28` decimal(10,0), 
  `val28` decimal(10,0), 
  `tot29` decimal(10,0), 
  `ovrcod29` varchar(3), 
  `ovrval29` decimal(10,0), 
  `val29` decimal(10,0), 
  `tot30` decimal(10,0), 
  `ovrcod30` varchar(3), 
  `ovrval30` decimal(10,0), 
  `val30` decimal(10,0), 
  `tot31` decimal(10,0), 
  `ovrcod31` varchar(3), 
  `ovrval31` decimal(10,0), 
  `val31` decimal(10,0), 
  `tot32` decimal(10,0), 
  `ovrcod32` varchar(3), 
  `ovrval32` decimal(10,0), 
  `val32` decimal(10,0), 
  `tot33` decimal(10,0), 
  `ovrcod33` varchar(3), 
  `ovrval33` decimal(10,0), 
  `val33` decimal(10,0), 
  `tot34` decimal(10,0), 
  `ovrcod34` varchar(3), 
  `ovrval34` decimal(10,0), 
  `val34` decimal(10,0), 
  `tot35` decimal(10,0), 
  `ovrcod35` varchar(3), 
  `ovrval35` decimal(10,0), 
  `val35` decimal(10,0), 
  `tot36` decimal(10,0), 
  `ovrcod36` varchar(3), 
  `ovrval36` decimal(10,0), 
  `val36` decimal(10,0), 
  `tot37` decimal(10,0), 
  `ovrcod37` varchar(3), 
  `ovrval37` decimal(10,0), 
  `val37` decimal(10,0), 
  `tot38` decimal(10,0), 
  `ovrcod38` varchar(3), 
  `ovrval38` decimal(10,0), 
  `val38` decimal(10,0), 
  `tot39` decimal(10,0), 
  `ovrcod39` varchar(3), 
  `ovrval39` decimal(10,0), 
  `val39` decimal(10,0), 
  `tot40` decimal(10,0), 
  `ovrcod40` varchar(3), 
  `ovrval40` decimal(10,0), 
  `val40` decimal(10,0), 
  `tot41` decimal(10,0), 
  `ovrcod41` varchar(3), 
  `ovrval41` decimal(10,0), 
  `val41` decimal(10,0), 
  `tot42` decimal(10,0), 
  `ovrcod42` varchar(3), 
  `ovrval42` decimal(10,0), 
  `val42` decimal(10,0), 
  `tot43` decimal(10,0), 
  `ovrcod43` varchar(3), 
  `ovrval43` decimal(10,0), 
  `val43` decimal(10,0), 
  `tot44` decimal(10,0), 
  `ovrcod44` varchar(3), 
  `ovrval44` decimal(10,0), 
  `val44` decimal(10,0), 
  `tot45` decimal(10,0), 
  `ovrcod45` varchar(3), 
  `ovrval45` decimal(10,0), 
  `val45` decimal(10,0), 
  `tot46` decimal(10,0), 
  `ovrcod46` varchar(3), 
  `ovrval46` decimal(10,0), 
  `val46` decimal(10,0), 
  `tot47` decimal(10,0), 
  `ovrcod47` varchar(3), 
  `ovrval47` decimal(10,0), 
  `val47` decimal(10,0), 
  `tot48` decimal(10,0), 
  `ovrcod48` varchar(3), 
  `ovrval48` decimal(10,0), 
  `val48` decimal(10,0), 
  `tot49` decimal(10,0), 
  `ovrcod49` varchar(3), 
  `ovrval49` decimal(10,0), 
  `val49` decimal(10,0), 
  `tot50` decimal(10,0), 
  `ovrcod50` varchar(3), 
  `ovrval50` decimal(10,0), 
  `val50` decimal(10,0), 
  `note1` varchar(40), 
  `note2` varchar(40), 
  `deactivat` string, 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `tot51` decimal(10,0), 
  `ovrcod51` varchar(3), 
  `ovrval51` decimal(10,0), 
  `val51` decimal(10,0), 
  `tot52` decimal(10,0), 
  `ovrcod52` varchar(3), 
  `ovrval52` decimal(10,0), 
  `val52` decimal(10,0), 
  `tot53` decimal(10,0), 
  `ovrcod53` varchar(3), 
  `ovrval53` decimal(10,0), 
  `val53` decimal(10,0), 
  `tot54` decimal(10,0), 
  `ovrcod54` varchar(3), 
  `ovrval54` decimal(10,0), 
  `val54` decimal(10,0), 
  `tot55` decimal(10,0), 
  `ovrcod55` varchar(3), 
  `ovrval55` decimal(10,0), 
  `val55` decimal(10,0), 
  `tot56` decimal(10,0), 
  `ovrcod56` varchar(3), 
  `ovrval56` decimal(10,0), 
  `val56` decimal(10,0), 
  `tot57` decimal(10,0), 
  `ovrcod57` varchar(3), 
  `ovrval57` decimal(10,0), 
  `val57` decimal(10,0), 
  `tot58` decimal(10,0), 
  `ovrcod58` varchar(3), 
  `ovrval58` decimal(10,0), 
  `val58` decimal(10,0), 
  `tot59` decimal(10,0), 
  `ovrcod59` varchar(3), 
  `ovrval59` decimal(10,0), 
  `val59` decimal(10,0), 
  `tot60` decimal(10,0), 
  `ovrcod60` varchar(3), 
  `ovrval60` decimal(10,0), 
  `val60` decimal(10,0), 
  `splitno` decimal(15,0), 
  `form` varchar(12),
  `taxyr` string)
STORED AS RCFILE;
        
CREATE TABLE `iasworld.asmt_hist_bucketed`(
  `jur` varchar(6), 
  `rolltype` varchar(10), 
  `parid` varchar(30), 
  `valyear` decimal(4,0), 
  `valclass` varchar(4), 
  `ovrclass` varchar(4), 
  `taxtable` varchar(2), 
  `distcode` varchar(5), 
  `seq` decimal(3,0), 
  `cur` varchar(1), 
  `who` varchar(50), 
  `wen` string, 
  `whocalc` varchar(10), 
  `wencalc` string, 
  `status` varchar(1), 
  `reascd` varchar(4), 
  `procname` varchar(10), 
  `procdate` string, 
  `flag1` varchar(6), 
  `flag2` varchar(6), 
  `flag3` varchar(6), 
  `flag4` varchar(6), 
  `flag5` varchar(6), 
  `flag6` varchar(6), 
  `flag7` varchar(6), 
  `flag8` varchar(6), 
  `flag9` varchar(6), 
  `flag10` varchar(6), 
  `flag11` varchar(6), 
  `flag12` varchar(6), 
  `flag13` varchar(6), 
  `flag14` varchar(6), 
  `flag15` varchar(6), 
  `flag16` varchar(6), 
  `flag17` varchar(6), 
  `flag18` varchar(6), 
  `flag19` varchar(6), 
  `flag20` varchar(6), 
  `udate1` string, 
  `udate2` string, 
  `udate3` string, 
  `udate4` string, 
  `udate5` string, 
  `class` varchar(4), 
  `luc` varchar(4), 
  `totasm1` decimal(10,0), 
  `ovrcodasm1` varchar(3), 
  `ovrvalasm1` decimal(10,0), 
  `valasm1` decimal(10,0), 
  `totasm2` decimal(10,0), 
  `ovrcodasm2` varchar(3), 
  `ovrvalasm2` decimal(10,0), 
  `valasm2` decimal(10,0), 
  `totasm3` decimal(10,0), 
  `ovrcodasm3` varchar(3), 
  `ovrvalasm3` decimal(10,0), 
  `valasm3` decimal(10,0), 
  `totapr1` decimal(10,0), 
  `ovrcodapr1` varchar(3), 
  `ovrvalapr1` decimal(10,0), 
  `valapr1` decimal(10,0), 
  `totapr2` decimal(10,0), 
  `ovrcodapr2` varchar(3), 
  `ovrvalapr2` decimal(10,0), 
  `valapr2` decimal(10,0), 
  `totapr3` decimal(10,0), 
  `ovrcodapr3` varchar(3), 
  `ovrvalapr3` decimal(10,0), 
  `valapr3` decimal(10,0), 
  `tottax` decimal(10,0), 
  `ovrcodtax` varchar(3), 
  `ovrvaltax` decimal(10,0), 
  `valtax` decimal(10,0), 
  `tot01` decimal(10,0), 
  `ovrcod01` varchar(3), 
  `ovrval01` decimal(10,0), 
  `val01` decimal(10,0), 
  `tot02` decimal(10,0), 
  `ovrcod02` varchar(3), 
  `ovrval02` decimal(10,0), 
  `val02` decimal(10,0), 
  `tot03` decimal(10,0), 
  `ovrcod03` varchar(3), 
  `ovrval03` decimal(10,0), 
  `val03` decimal(10,0), 
  `tot04` decimal(10,0), 
  `ovrcod04` varchar(3), 
  `ovrval04` decimal(10,0), 
  `val04` decimal(10,0), 
  `tot05` decimal(10,0), 
  `ovrcod05` varchar(3), 
  `ovrval05` decimal(10,0), 
  `val05` decimal(10,0), 
  `tot06` decimal(10,0), 
  `ovrcod06` varchar(3), 
  `ovrval06` decimal(10,0), 
  `val06` decimal(10,0), 
  `tot07` decimal(10,0), 
  `ovrcod07` varchar(3), 
  `ovrval07` decimal(10,0), 
  `val07` decimal(10,0), 
  `tot08` decimal(10,0), 
  `ovrcod08` varchar(3), 
  `ovrval08` decimal(10,0), 
  `val08` decimal(10,0), 
  `tot09` decimal(10,0), 
  `ovrcod09` varchar(3), 
  `ovrval09` decimal(10,0), 
  `val09` decimal(10,0), 
  `tot10` decimal(10,0), 
  `ovrcod10` varchar(3), 
  `ovrval10` decimal(10,0), 
  `val10` decimal(10,0), 
  `tot11` decimal(10,0), 
  `ovrcod11` varchar(3), 
  `ovrval11` decimal(10,0), 
  `val11` decimal(10,0), 
  `tot12` decimal(10,0), 
  `ovrcod12` varchar(3), 
  `ovrval12` decimal(10,0), 
  `val12` decimal(10,0), 
  `tot13` decimal(10,0), 
  `ovrcod13` varchar(3), 
  `ovrval13` decimal(10,0), 
  `val13` decimal(10,0), 
  `tot14` decimal(10,0), 
  `ovrcod14` varchar(3), 
  `ovrval14` decimal(10,0), 
  `val14` decimal(10,0), 
  `tot15` decimal(10,0), 
  `ovrcod15` varchar(3), 
  `ovrval15` decimal(10,0), 
  `val15` decimal(10,0), 
  `tot16` decimal(10,0), 
  `ovrcod16` varchar(3), 
  `ovrval16` decimal(10,0), 
  `val16` decimal(10,0), 
  `tot17` decimal(10,0), 
  `ovrcod17` varchar(3), 
  `ovrval17` decimal(10,0), 
  `val17` decimal(10,0), 
  `tot18` decimal(10,0), 
  `ovrcod18` varchar(3), 
  `ovrval18` decimal(10,0), 
  `val18` decimal(10,0), 
  `tot19` decimal(10,0), 
  `ovrcod19` varchar(3), 
  `ovrval19` decimal(10,0), 
  `val19` decimal(10,0), 
  `tot20` decimal(10,0), 
  `ovrcod20` varchar(3), 
  `ovrval20` decimal(10,0), 
  `val20` decimal(10,0), 
  `tot21` decimal(10,0), 
  `ovrcod21` varchar(3), 
  `ovrval21` decimal(10,0), 
  `val21` decimal(10,0), 
  `tot22` decimal(10,0), 
  `ovrcod22` varchar(3), 
  `ovrval22` decimal(10,0), 
  `val22` decimal(10,0), 
  `tot23` decimal(10,0), 
  `ovrcod23` varchar(3), 
  `ovrval23` decimal(10,0), 
  `val23` decimal(10,0), 
  `tot24` decimal(10,0), 
  `ovrcod24` varchar(3), 
  `ovrval24` decimal(10,0), 
  `val24` decimal(10,0), 
  `tot25` decimal(10,0), 
  `ovrcod25` varchar(3), 
  `ovrval25` decimal(10,0), 
  `val25` decimal(10,0), 
  `tot26` decimal(10,0), 
  `ovrcod26` varchar(3), 
  `ovrval26` decimal(10,0), 
  `val26` decimal(10,0), 
  `tot27` decimal(10,0), 
  `ovrcod27` varchar(3), 
  `ovrval27` decimal(10,0), 
  `val27` decimal(10,0), 
  `tot28` decimal(10,0), 
  `ovrcod28` varchar(3), 
  `ovrval28` decimal(10,0), 
  `val28` decimal(10,0), 
  `tot29` decimal(10,0), 
  `ovrcod29` varchar(3), 
  `ovrval29` decimal(10,0), 
  `val29` decimal(10,0), 
  `tot30` decimal(10,0), 
  `ovrcod30` varchar(3), 
  `ovrval30` decimal(10,0), 
  `val30` decimal(10,0), 
  `tot31` decimal(10,0), 
  `ovrcod31` varchar(3), 
  `ovrval31` decimal(10,0), 
  `val31` decimal(10,0), 
  `tot32` decimal(10,0), 
  `ovrcod32` varchar(3), 
  `ovrval32` decimal(10,0), 
  `val32` decimal(10,0), 
  `tot33` decimal(10,0), 
  `ovrcod33` varchar(3), 
  `ovrval33` decimal(10,0), 
  `val33` decimal(10,0), 
  `tot34` decimal(10,0), 
  `ovrcod34` varchar(3), 
  `ovrval34` decimal(10,0), 
  `val34` decimal(10,0), 
  `tot35` decimal(10,0), 
  `ovrcod35` varchar(3), 
  `ovrval35` decimal(10,0), 
  `val35` decimal(10,0), 
  `tot36` decimal(10,0), 
  `ovrcod36` varchar(3), 
  `ovrval36` decimal(10,0), 
  `val36` decimal(10,0), 
  `tot37` decimal(10,0), 
  `ovrcod37` varchar(3), 
  `ovrval37` decimal(10,0), 
  `val37` decimal(10,0), 
  `tot38` decimal(10,0), 
  `ovrcod38` varchar(3), 
  `ovrval38` decimal(10,0), 
  `val38` decimal(10,0), 
  `tot39` decimal(10,0), 
  `ovrcod39` varchar(3), 
  `ovrval39` decimal(10,0), 
  `val39` decimal(10,0), 
  `tot40` decimal(10,0), 
  `ovrcod40` varchar(3), 
  `ovrval40` decimal(10,0), 
  `val40` decimal(10,0), 
  `tot41` decimal(10,0), 
  `ovrcod41` varchar(3), 
  `ovrval41` decimal(10,0), 
  `val41` decimal(10,0), 
  `tot42` decimal(10,0), 
  `ovrcod42` varchar(3), 
  `ovrval42` decimal(10,0), 
  `val42` decimal(10,0), 
  `tot43` decimal(10,0), 
  `ovrcod43` varchar(3), 
  `ovrval43` decimal(10,0), 
  `val43` decimal(10,0), 
  `tot44` decimal(10,0), 
  `ovrcod44` varchar(3), 
  `ovrval44` decimal(10,0), 
  `val44` decimal(10,0), 
  `tot45` decimal(10,0), 
  `ovrcod45` varchar(3), 
  `ovrval45` decimal(10,0), 
  `val45` decimal(10,0), 
  `tot46` decimal(10,0), 
  `ovrcod46` varchar(3), 
  `ovrval46` decimal(10,0), 
  `val46` decimal(10,0), 
  `tot47` decimal(10,0), 
  `ovrcod47` varchar(3), 
  `ovrval47` decimal(10,0), 
  `val47` decimal(10,0), 
  `tot48` decimal(10,0), 
  `ovrcod48` varchar(3), 
  `ovrval48` decimal(10,0), 
  `val48` decimal(10,0), 
  `tot49` decimal(10,0), 
  `ovrcod49` varchar(3), 
  `ovrval49` decimal(10,0), 
  `val49` decimal(10,0), 
  `tot50` decimal(10,0), 
  `ovrcod50` varchar(3), 
  `ovrval50` decimal(10,0), 
  `val50` decimal(10,0), 
  `note1` varchar(40), 
  `note2` varchar(40), 
  `deactivat` string, 
  `iasw_id` decimal(10,0), 
  `trans_id` decimal(10,0), 
  `upd_status` varchar(1), 
  `tot51` decimal(10,0), 
  `ovrcod51` varchar(3), 
  `ovrval51` decimal(10,0), 
  `val51` decimal(10,0), 
  `tot52` decimal(10,0), 
  `ovrcod52` varchar(3), 
  `ovrval52` decimal(10,0), 
  `val52` decimal(10,0), 
  `tot53` decimal(10,0), 
  `ovrcod53` varchar(3), 
  `ovrval53` decimal(10,0), 
  `val53` decimal(10,0), 
  `tot54` decimal(10,0), 
  `ovrcod54` varchar(3), 
  `ovrval54` decimal(10,0), 
  `val54` decimal(10,0), 
  `tot55` decimal(10,0), 
  `ovrcod55` varchar(3), 
  `ovrval55` decimal(10,0), 
  `val55` decimal(10,0), 
  `tot56` decimal(10,0), 
  `ovrcod56` varchar(3), 
  `ovrval56` decimal(10,0), 
  `val56` decimal(10,0), 
  `tot57` decimal(10,0), 
  `ovrcod57` varchar(3), 
  `ovrval57` decimal(10,0), 
  `val57` decimal(10,0), 
  `tot58` decimal(10,0), 
  `ovrcod58` varchar(3), 
  `ovrval58` decimal(10,0), 
  `val58` decimal(10,0), 
  `tot59` decimal(10,0), 
  `ovrcod59` varchar(3), 
  `ovrval59` decimal(10,0), 
  `val59` decimal(10,0), 
  `tot60` decimal(10,0), 
  `ovrcod60` varchar(3), 
  `ovrval60` decimal(10,0), 
  `val60` decimal(10,0), 
  `splitno` decimal(15,0), 
  `form` varchar(12))
PARTITIONED BY (`taxyr` string)
CLUSTERED BY (`parid`) SORTED BY (`seq`) INTO 30 BUCKETS
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
