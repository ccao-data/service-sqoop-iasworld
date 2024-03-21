CREATE TABLE `iasworld.aasysjur`(
  `jur` string,
  `default_jur` string,
  `jur_label` string,
  `display_jur` string,
  `exauto_case` string,
  `thisyear` numeric,
  `dupyr` numeric,
  `ppyear` numeric,
  `min_taxyr` numeric,
  `max_taxyr` numeric,
  `show_hidden` string,
  `aapswd` string,
  `base_ver` string,
  `def_class` string,
  `ie_rolltype` string,
  `comnt_inc` numeric,
  `legadd_inc` numeric,
  `exremove` string,
  `taxdist_req` string,
  `cama_rolltype` string,
  `country_code` string,
  `disp_owner` string,
  `natrsrc` string,
  `latest_owner` string,
  `seam_ind` string,
  `asmtown_ind` string,
  `maildat_ind` string,
  `edms_ind` string,
  `cb_ind` string,
  `ld_jur_ind` string,
  `ld_parid_ind` string,
  `ld_taxyr_ind` string,
  `ld_card_ind` string,
  `ss_ext_date` string,
  `pw_expire_days` numeric,
  `countycd` string,
  `aprvalsum_ind` string,
  `iasw_id` numeric,
  `who` string,
  `wen` string,
  `loaded_at` string)
STORED AS PARQUET
TBLPROPERTIES ('parquet.compression'='SNAPPY');
