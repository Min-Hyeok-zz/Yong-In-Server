<?php
if ($is_admin != 'super')
    alert('최고관리자만 접근 가능합니다.');
?>
<form action="/1/4" method="post" id="sub_menu_form" enctype="multipart/form-data">
	<p>카테고리 추가</p>
	<input type="hidden" name="action" value="sub_add">
	<input type="text" class="sub_form-control" name="page" placeholder="필수) 페이지 (예 : 1페이지:XX사업 2페이지:OO사업)" required>
	<input type="number" class="sub_form-control intro-chk" name="number" placeholder="필수) 카테고리 순서 (1페이지는 소개 페이지입니다.)" required><br>
	<input type="text" class="sub_form-control" name="title" placeholder="필수) 카테고리 제목" required><br>
	<fieldset class="intro">
		
	</fieldset>
	<div class="sub-form sub-form1">
		<p>필수) 이미지 업로드</p>
		<input type="file" class="sub_form-control" accept="image/*" name="img" required>
	</div><br>
	<div class="sub-form sub-form2">
		<input type="text" class="sub_form-control" name="progress" placeholder="필수) 진행일정" required><br>
		<textarea name="content" required placeholder="필수) 진행내용"></textarea><br>
		<textarea name="how" placeholder="진행방법"></textarea>
	</div>
	<button type="submit">추가</button>
</form>
<script>
	$(function(){
		var count = 0;
		var count2 = 0;
		$(document).on("focusout",".intro-chk",function(){
			$(".asd").attr("");
			var num = $(".intro-chk").val();
			var html = '\
				<p>소개 페이지일 때만</p>\
					<input type="text" class="sub_form-control" name="sub_title" placeholder="필수) 제목 설명" required style="width:100%;height:35px;box-sizing:border-box;padding: 4px;"><br>\
					<input type="text" class="sub_form-control" name="sub_menu1" placeholder="필수) 테이블 1번째 제목" required style="width:100%;height:35px;box-sizing:border-box;padding: 4px;"><br>\
					<input type="text" class="sub_form-control" name="sub_menu2" placeholder="필수) 테이블 2번째 제목" required style="width:100%;height:35px;box-sizing:border-box;padding: 4px;"><br>\
					<textarea class="sub_form-control" name="sub_text1" placeholder="필수) 테이블 1번째 내용" required style="width:100%;height:100px;box-sizing:border-box;padding: 4px;"></textarea><br>\
					<textarea class="sub_form-control" name="sub_text2" placeholder="필수) 테이블 2번째 내용" required style="width:100%;height:100px;box-sizing:border-box;padding: 4px;"></textarea><br>\
			';
			var img = '<p>이미지 업로드</p><input type="file" class="sub_form-control" accept="image/*" name="img" required><br>';
			var a = '\
				<input type="text" class="sub_form-control" name="progress" placeholder="필수) 진행일정" required style="width:100%;height:35px;box-sizing:border-box;outline:none;"><br>\
				<textarea name="content" required placeholder="필수) 진행내용" required style="width:100%;height:100px;box-sizing:border-box;outline:none;"></textarea><br>\
				<textarea name="how" placeholder="진행방법" style="width:100%;height:100px;box-sizing:border-box;outline:none;"></textarea>\
			';
			if (num == 1) {
				count++;
				if (count == 1) {
					$(".intro").append(html);
					$(".sub-form > *").remove();
					count2++;
				}
			} else{
				if (count == 1) {
					$(".intro > *").remove();
					$(".sub-form1").append(img);
					$(".sub-form2").append(a);
					count == 0;
					count2 == 0;
				}
			}
		})
	})
</script>