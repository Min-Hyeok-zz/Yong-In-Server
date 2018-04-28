<?php
include_once('./_common.php');

define('_INDEX_', true);
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

include_once(G5_PATH.'/head.php');

if($midx && $sidx)
	include_once(G5_PATH."/sub_header.php");
	
include_once(G5_PATH."/page/{$include_file}.php");

if($midx && $sidx)
	include_once(G5_PATH."/sub_footer.php");

include_once(G5_PATH.'/tail.php');
?>