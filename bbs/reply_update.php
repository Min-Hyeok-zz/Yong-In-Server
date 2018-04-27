<?php
	include_once("./_common.php");
	extract($_POST);
	if (trim($midx) == "" || trim($bo_table) == "" || trim($writer) == "") {
		alert("비정상적인 접근입니다.");
	}
	if (trim($content) == "") {
		alert("댓글 내용을 입력 해 주세요");
	}
	$sql = "
		INSERT INTO g5_write_reply set
			midx='{$midx}',
			bo_table='{$bo_table}',
			writer='{$writer}',
			content='{$content}',
			mb_idx='{$mb_idx}',
			date=now()
	";
	$db->query($sql);
	alert("댓글이 추가되었습니다.");