<?php
include_once("./_common.php");

$sid = $_POST['sid'];
$mb_id= $_POST['id'];
$mb_email= $_POST['email'];
$tel= $_POST['tel'];

$id_chk = "SELECT count(*) FROM g5_member where mb_id='{$mb_id}'";
$sid_chk = "SELECT count(*) FROM g5_member where mb_sid='{$sid}'";
$email_chk = "SELECT count(*) FROM g5_member where mb_email='{$mb_email}'";
$tel_chk = "SELECT count(*) FROM g5_member where mb_tel='{$tel}'";

$ids = $db->query($id_chk)->fetch();
$sids = $db->query($sid_chk)->fetch();
$emails = $db->query($email_chk)->fetch();
$tels = $db->query($tel_chk)->fetch();

if ($sids['count(*)'] == 0) {
	echo "0";
} else{
	echo "1";
}

if ($ids['count(*)'] != 0) {
	echo "중복된 아이디가 있습니다.";
	return false;
} else if ($sids['count(*)'] != 0){
	echo "중복된 학번입니다.";
	return false;
} else if ($emails['count(*)'] != 0){
	echo "중복된 이메일 입니다.";
	return false;
} else if ($tels['count(*)'] != 0){
	echo "중복된 번호입니다.";
	return false;
} else{
	return true;
}
?>