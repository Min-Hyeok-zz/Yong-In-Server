<?php
	include_once("./_common.php");
	if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가 
	include_once(G5_PATH.'/_head.php');
	include_once(G5_PATH.'/sub_header.php');
	if (!$is_member) alert("회원만 접근할 수 있습니다.");
	$club = $db->query("SELECT * FROM g5_write_club_apply where mb_id='{$_SESSION['ss_mb_id']}'")->fetchAll();
	$vol = $db->query("SELECT * FROM g5_write_vol_apply where mb_id='{$_SESSION['ss_mb_id']}'")->fetchAll();
?>
	<div id="mypage" style="margin-top: 10px;">
		<h2 class="sub_title">내정보</h2>
		<p class="sub_navi">Home > 내정보</p>
		<table id="study-write">
			<colgroup>
				<col width="20%">
				<col width="80%">
			</colgroup>
			<tbody>
				<tr>
					<td>아이디</td>
					<td><?php echo $_SESSION['ss_mb_id'] ?></td>
				</tr>
				<tr>
					<td>신청한 동아리</td>
					<td>
						<?php foreach ($club as $data): ?>
							<?php echo $data['club_name'] ?><a href="#!" onclick="if (confirm('취소하시겠습니까?') == true) location.href='<?php echo G5_BBS_URL ?>/club_delete.php?idx=<?php echo $data['idx'] ?>'" style="font-weight: bold;color: #005871;margin-left: 20px;"> 취소</a><br>
						<?php endforeach ?>
					</td>
				</tr>
				<tr>
					<td>신청한 자원봉사</td>
					<td>
						<?php foreach ($vol as $data): ?>
							<?php echo $data['wr_subject'] ?><a href="#!" onclick="if (confirm('취소하시겠습니까?') == true) location.href='<?php echo G5_BBS_URL ?>/vol_delete.php?idx=<?php echo $data['idx'] ?>'" style="font-weight: bold;color: #005871;margin-left: 20px;"> 취소</a><br>
						<?php endforeach ?>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
<?php
	include_once(G5_PATH.'/_tail.php');
	include_once(G5_PATH.'/tail.sub.php');
?>