CREATE TABLE `iasworld.aasysjur`(
  `jur` varchar(6), 
  `default_jur` varchar(6), 
  `jur_label` varchar(10), 
  `display_jur` varchar(1), 
  `exauto_case` varchar(1), 
  `thisyear` decimal(4,0), 
  `dupyr` decimal(4,0), 
  `ppyear` decimal(4,0), 
  `min_taxyr` decimal(4,0), 
  `max_taxyr` decimal(4,0), 
  `show_hidden` varchar(1), 
  `aapswd` varchar(10), 
  `base_ver` varchar(8), 
  `def_class` varchar(4), 
  `ie_rolltype` varchar(10), 
  `comnt_inc` decimal(10,2), 
  `legadd_inc` decimal(10,2), 
  `exremove` varchar(1), 
  `taxdist_req` varchar(1), 
  `cama_rolltype` varchar(10), 
  `country_code` varchar(3), 
  `disp_owner` varchar(1), 
  `natrsrc` varchar(1), 
  `latest_owner` varchar(1), 
  `seam_ind` varchar(1), 
  `asmtown_ind` varchar(1), 
  `maildat_ind` varchar(1), 
  `edms_ind` varchar(1), 
  `cb_ind` varchar(1), 
  `ld_jur_ind` varchar(1), 
  `ld_parid_ind` varchar(1), 
  `ld_taxyr_ind` varchar(1), 
  `ld_card_ind` varchar(1), 
  `ss_ext_date` string, 
  `pw_expire_days` decimal(3,0), 
  `countycd` varchar(5), 
  `aprvalsum_ind` varchar(1), 
  `iasw_id` decimal(10,0), 
  `who` varchar(50), 
  `wen` string, 
  `loaded_at` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.LazyBinaryColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://sqoop-node-master:9000/user/hive/warehouse/iasworld.db/aasysjur'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1710958799')
