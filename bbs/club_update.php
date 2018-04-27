<?php
	include_once("./_common.php");
	if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가 
	if (!$is_member) alert("비회원은 접근하실 수 없습니다.");
	extract($_POST);
	if (trim($club_name) == "" || trim($content) == "") alert("빈 값이 있습니다.");
	$mb_id = $_SESSION['ss_mb_id'];
	$chk = $db->query("SELECT * FROM g5_write_club_apply where mb_id='{$mb_id}' and club_name='{$club_name}'")->fetch();
	if ($chk != "") alert("중복으로 신청하실 수 없습니다.");
	$sql = "
		INSERT INTO g5_write_club_apply set
			mb_id='{$mb_id}',
			club_name='{$club_name}',
			content='{$content}',
			date=now()
	";
	if (!$db->query($sql)) {
		alert("알 수 없는 이유로 실패하였습니다.");
	} else{
		alert("정상적으로 신청되었습니다.","http://localhost/bbs/board.php?bo_table=recruitment&sca=동아리 모집");
	}
?>