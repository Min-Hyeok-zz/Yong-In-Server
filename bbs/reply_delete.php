<?php
	include_once("./_common.php");
	if (!$is_member) {
		alert("잘못된 접근입니다.");
	}
	$user = $db->query("SELECT * FROM g5_member where mb_id='{$_SESSION['ss_mb_id']}'")->fetch();
	$reply = $db->query("SELECT * FROM g5_write_reply where idx='{$_GET['idx']}'")->fetch();
	if ($user['mb_no'] != $reply['mb_idx']) {
		alert("회원님이 작성하지 않은 댓글은 삭제할 수 없습니다.");
	}
	$db->query("DELETE FROM g5_write_reply where idx='{$_GET['idx']}'");
	alert("댓글이 삭제되었습니다.");