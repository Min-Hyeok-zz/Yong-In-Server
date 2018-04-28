		<div id="calander">
			<h2 class="sub_title">프로그램 진행사진</h2>
			<p class="sub_navi">Home > 센터소개 > 프로그램 시간표</p>
			<p class="sub-text"><img src="<?php echo G5_IMG_URL ?>/icon.jpg" alt="img"> 용인대학교 사회봉사센터 프로그램 시간표</p>
			<p class="calander-info"><?php echo $view['wr_subject']; ?></p>
			<div id="calander-table">
				<?php echo $view['wr_content']; ?>
			</div>
	        <div class="calander_btn">
		        <?php if ($update_href) { ?><a href="<?php echo $update_href ?>" class="btn_b01 btn"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> 수정</a><?php } ?>
		        <?php if ($delete_href) { ?><a href="<?php echo $delete_href ?>" class="btn_b02 btn" onclick="del(this.href); return false;"><i class="fa fa-trash-o" aria-hidden="true"></i> 삭제</a><?php } ?>
	        </div>
		</div>