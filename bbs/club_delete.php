<?php
	include_once("./_common.php");
	if (!$is_member) alert("회원만 접근할 수 있습니다");
	$chk = $db->query("SELECT * FROM g5_write_club_apply where idx='{$_GET['idx']}' and mb_id='{$_SESSION['ss_mb_id']}'")->fetch();
	if($chk['mb_id'] != $_SESSION['ss_mb_id']) alert("비정상적인 접근입니다.");
	$db->query("DELETE FROM g5_write_club_apply where idx='{$_GET['idx']}'");
	alert("취소되었습니다.");