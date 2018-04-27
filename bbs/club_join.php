<?php
	include_once("./_common.php");
	if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가 
	include_once(G5_PATH.'/_head.php');
	include_once(G5_PATH.'/sub_header.php');
	if (!isset($_GET['idx'])) alert("잘못된 접근입니다.");
	$list = $db->query("SELECT * FROM g5_write_recruitment where wr_id='{$_GET['idx']}'")->fetch();
	if ($list == "") alert("존재하지 않는 글입니다.");
?>
	<div id="club"><br>
		<h2 class="sub_title">동아리 참가 신청</h2>
		<p class="sub_navi">Home > 수업 게시판 > 동아리 참가</p>
		<form action="./club_update.php" method="post" id="club_form">
			<input type="hidden" name="idx" value="<?php echo $_GET['idx'] ?>">
			<input type="hidden" name="mb_id" value="<?php echo $_SESSION['ss_mb_id'] ?>">
			<table id="study-write">
				<colgroup>
					<col width="20%">
					<col width="80%">
				</colgroup>
				<tbody>
					<tr>
						<td>동아리명</td>
						<td><input type="text" name="club_name" value="<?php echo $list['wr_1'] ?>" readonly required></td>
					</tr>
					<tr>
						<td>내용</td>
						<td>
							<textarea name="content" placeholder="(동아리회원_성명&학번_기입) " required></textarea>
						</td>
					</tr>
				</tbody>
			</table>
			<button type="submit" class="vol-btn">신청</button>
			<button type="button" class="vol-btn" style="float: right;margin-top: -25px;" onclick="history.back();">취소</button>
		</form>
	</div>
<?php
	include_once(G5_PATH.'/_tail.php');
	include_once(G5_PATH.'/tail.sub.php');
?>