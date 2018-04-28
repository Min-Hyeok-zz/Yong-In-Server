	<!-- 비주얼 섹션 -->
	<section id="visual" class="visual">
		<div>
			<h2>
				용인대학교 사회봉사센터에서 <br>
				<span>사회봉사 프로그램에 참여하세요.</span><br>
				<span>YONG IN UNIVERSITY SOCIAL SERVICE CENTER</span>
			</h2>
			<?php
				$pro = $db->query("SELECT * FROM g5_sub_menu where page='1' order by number asc")->fetch();
			?>
			<div class="visual-side">
				<div onclick="location.href = '<?php echo G5_URL?>/1/2?page=<?php echo $pro['page'] ?>&idx=<?php echo $pro['number']; ?>'">
					<div class="side-box side-box1"><img src="<?php echo G5_IMG_URL?>/side1.png" alt="img"></div>
					<p>프로그램 소개</p>
				</div>
				<div onclick="location.href = '<?php echo G5_BBS_URL?>/board.php?bo_table=gallery'">
					<div class="side-box side-box2"><img src="<?php echo G5_IMG_URL?>/side2.png" alt="img"></div>
					<p>프로그램 활동 사진</p>
				</div>
				<div onclick="location.href = '<?php echo G5_URL?>/1/1'">
					<div class="side-box side-box3"><img src="<?php echo G5_IMG_URL?>/side3.png" alt="img"></div>
					<p>찾아오시는 길</p>
				</div>
			</div>
		</div>
	</section>
	<!-- 비주얼 섹션 끝 -->

	<!-- 게시판 미리보기 -->
	<div id="info">
		<div class="info info1">
			<span><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=recruitment&sca=동아리+모집">+</a></span>
			<div>
				<p>모집 공고</p>
				<img src="<?php echo G5_IMG_URL?>/file.png" alt="img">
			</div>
			<div>
				<?php
					$list = $db->query("SELECT * FROM g5_write_recruitment order by wr_datetime desc limit 6")->fetchAll();
					foreach($list as $data){
				?>
				<p><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=recruitment&amp;sca=<?php echo $data['ca_name'] ?>&amp;wr_id=<?php echo $data['wr_id']?>">
					<?php echo mb_substr($data['wr_subject'], 0,15); ?></a>
				</p>
				<?php
					}
				?>
			</div>
		</div>
		<div class="info info2">
			<span><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=vlt&sca=자원봉사자론 1">+</a></span>
			<div>
				<p>수업게시판</p>
				<img src="<?php echo G5_IMG_URL?>/book.png" alt="img">
			</div>
			<div>
				<?php
					$list = $db->query("SELECT * FROM g5_write_vlt where ca_name != '공지' order by wr_datetime desc limit 6")->fetchAll();
					foreach($list as $data){
				?>
				<p><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=vlt&amp;sca=<?php echo $data['ca_name'] ?>&amp;wr_id=<?php echo $data['wr_id']?>"><?php echo $data['wr_subject']?></a></p>
				<?php
					}
				?>
			</div>
		</div>
	</div>
	
	<!-- 후원 -->

	<div id="donate">
		<div><a href="http://www.yongin.ac.kr/index"><img src="<?php echo G5_IMG_URL?>/donate1.jpg" alt="img"></a></div>
		<div><a href="https://www.1365.go.kr/vols/main.do"><img src="<?php echo G5_IMG_URL?>/donate2.jpg" alt="img"></a></div>
		<div><a href="https://www.vms.or.kr/main.do"><img src="<?php echo G5_IMG_URL?>/donate3.jpg" alt="img"></a></div>
	</div>