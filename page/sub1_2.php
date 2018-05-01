<?php
	$list = $db->query("SELECT * FROM g5_sub_menu where page='{$_GET['page']}' order by number asc")->fetchAll();
	$text = $db->query("SELECT * FROM g5_sub_menu where number='{$_GET['idx']}' and page='{$_GET['page']}'")->fetch();
	if ($text == "") alert("존재하지 않는 글입니다.");
	$active = "active";
	switch ($_GET['page']) {
		case '1':$name = "교육지원 사업";break;
		case '2':$name = "건강증진 사업";break;
		case '3':$name = "커뮤니티 사업";break;
	}
?>
	<div id="education">
		<h2 class="sub_title"><?php echo $name; ?></h2>
		<p class="sub_navi">Home > 센터소개 > 프로그램 소개</p>
		<div class="edu-btn">
			<?php foreach ($list as $data): ?>
				<a href="<?php echo G5_URL."/1/2?page={$data['page']}&idx={$data['number']}" ?>" class="edu-menu edu-menu1 <?php if($data['number'] == $_GET['idx']) echo $active; ?>"><?php echo $data['title']; ?></a>
			<?php endforeach ?>
		</div>
		<p class="sub-text"><img src="<?php echo G5_IMG_URL ?>/icon.jpg" alt="img"> <?php echo $text['title']; ?></p>

		<?php if ($text['number'] == 1): ?>

		<p class="edu-text"><?php echo $text['sub_title']; ?></p>
		<table id="edu-table">
			<colgroup>
				<col width="50%">
				<col width="50%">
			</colgroup>
			<thead>
				<tr>
					<th><?php echo $text['sub_menu1']; ?></th>
					<th><?php echo $text['sub_menu2']; ?></th>
				</tr>
			</thead>
			<tbody style="text-align: center;">
				<tr>
					<td>
						<?php echo $text['sub_text1']; ?>
					</td>
					<td>
						<?php echo $text['sub_text2']; ?>
					</td>
				</tr>
			</tbody>
		</table>

		<?php else: ?>

			<div class="intro-content">
				<img src="<?php echo G5_IMG_URL ?>/<?php echo $text['img']; ?>" alt="img">
				<div>
					<p class="edu-sub">진행일정</p>
					<p><?php echo $text['progress']; ?></p><br>
					<p class="edu-sub">진행내용</p>
					<p><?php echo $text['content']; ?></p>
					<?php if ($text['how'] != ""): ?>
					<p class="edu-sub">진행방법</p>
					<p><?php echo $text['how']; ?></p>
					<?php endif ?>
				</div>
			</div>
		<?php endif ?>
	</div>
		
	<?php if ($is_admin == "super"): ?>
	<button type="button" onclick="location.href='/1/3'" class="sub_page_add">카테고리 추가</button>
	<?php endif ?>