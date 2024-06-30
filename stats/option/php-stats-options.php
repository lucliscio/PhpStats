<?php
if(!defined('IN_PHPSTATS')) die("Php-Stats internal file.");
error_reporting(E_ERROR);
ignore_user_abort(true);

$option=Array(
'host'=>'localhost:3307',
'database'=>'my_modeltreno',
'user_db'=>'root',
'pass_db'=>'miotuo',
'script_url'=>'https://localhost/PhpStats/stats',
'prefix'=>'php_stats',
'callviaimg'=>0,
'persistent_conn'=>0,
'autorefresh'=>5,
'show_server_details'=>1,
'show_average_user'=>1,
'short_url'=>1,
'ext_whois'=>'',
'online_timeout'=>5,
'page_title'=>1,
'refresh_page_title'=>1,
'log_host'=>1,
'clear_cache'=>1,
'full_recn'=>1,
'logerrors'=>1,
'check_new_version'=>1,
'bcap_auto_update'=>1,
'www_trunc'=>0,
'ip-zone'=>1,
'down_mode'=>1,
'check_links'=>1,
'link_logger'=>0,
'keep_view_mode'=>1,
'stats_disabled'=>0,
'language'=>'it',
'server_url'=>'http://www.h0model.org',
'admin_pass'=>'663c4c53beeb24117307a05ff88cb2fd66f1f8ba',
'use_pass'=>0,
'cifre'=>5,
'stile'=>13,
'timezone'=>0,
'template'=>'Airkine',
'startvisits'=>758,
'starthits'=>0,
'nomesito'=>'.:: H0Model.Org ::. - Un viaggio nel mondo del modellismo ferroviario',
'user_mail'=>'stats@h0model.org',
'user_pass_new'=>'',
'user_pass_key'=>'',
'prune_0_on'=>1,
'prune_0_value'=>24,
'prune_1_on'=>0,
'prune_1_value'=>100,
'prune_2_on'=>0,
'prune_2_value'=>1000,
'prune_3_on'=>0,
'prune_3_value'=>1000,
'prune_4_on'=>0,
'prune_4_value'=>1000,
'prune_5_on'=>0,
'prune_5_value'=>1000,
'phpstats_ver'=>'2.7',
'inadm_lastcache_time'=>1457371307,
'ip_timeout'=>1,
'page_timeout'=>1200,
'report_w_on'=>1,
'report_w_day'=>1,
'instat_report_w'=>1718661600,
'auto_optimize'=>1,
'auto_opt_every'=>100,
'exc_fol'=>'',
'exc_sip'=>'',
'exc_dip'=>''
);

$modulo=Array(1,2,1,2,2,2,1,1,1,1,1);

$unlockedPages=Array(
''
);

$serverUrl=Array(
'http://www.h0model.org'
);
$countServerUrl=1;

$countExcFol=0;

$countExcSip=0;

$countExcDip=0;

$default_pages=Array(
'/',
'/index.htm',
'/index.html',
'/default.htm',
'/index.php',
'/index.asp',
'/default.asp');
?>