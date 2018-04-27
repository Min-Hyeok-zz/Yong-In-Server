<?php
if ($is_admin != 'super')
    alert('최고관리자만 접근 가능합니다.');
	if (isset($_POST['action'])) {
		function file_upload($file){
			$tmp_name = $file['tmp_name'];
			$name = $file['name'];
			if ($tmp_name == "") alert("파일이 업로드 되지 않았습니다.");
			$arr = ['image/gif','image/jpeg','image/jpg','image/png','image/bmp'];
			$type = $file['type'];
			if (!in_array($type, $arr)) alert("이미지 파일만 업로드 할 수 있습니다.");
			if (is_uploaded_file($tmp_name)) {
				$change_name = time().rand(0,9999).$name;
				move_uploaded_file($tmp_name, G5_PATH."/img/{$change_name}");
				return $change_name;
			}
		}
		if (isset($_FILES['img'])) {
			$img = file_upload($_FILES['img']);
		}
		$chk = $db->query("SELECT * FROM g5_sub_menu where page='{$page}' and number='{$number}'")->rowCount();
		if ($chk != 0) alert("카테고리 순서가 중복됩니다.");
		$sql = "
			INSERT INTO g5_sub_menu set
				number='{$number}',
				title='{$title}',
				sub_title='{$sub_title}',
				sub_menu1='{$sub_menu1}',
				sub_menu2='{$sub_menu2}',
				sub_text1='{$sub_text1}',
				sub_text2='{$sub_text2}',
				img='{$img}',
				progress='{$progress}',
				content='{$content}',
				how='{$how}',
				page='{$page}'
		";
		$db->query($sql);
		alert("카테고리가 추가되었습니다.","/1/2?page={$page}&idx={$number}");
	}