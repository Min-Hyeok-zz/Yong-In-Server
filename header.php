<header id="header" class="header">
	<div>
		<div class="logo"><a href="<?php echo G5_URL?>/"><img src="<?php echo G5_IMG_URL?>/logo.png" alt="logo"></a></div>
		<nav class="util">
			<a href="<?php echo G5_URL?>/">HOME</a>
			<?php if($is_member){ ?>
			<?php if ($is_admin): ?>
			<a href="<?php echo G5_ADMIN_URL?>/"><strong>ADMIN</strong></a>
			<?php endif ?>
			<a href="<?php echo G5_BBS_URL?>/logout.php">LOGOUT</a>
			<a href="<?php echo G5_BBS_URL?>/mypage.php">MYPAGE</a>
			<?php } else { ?>
			<a href="<?php echo G5_BBS_URL?>/login.php">LOGIN</a>
			<a href="<?php echo G5_BBS_URL?>/register_form.php">SIGN UP</a>
			<?php } ?>
		</nav>
		<?php
			$pro = $db->query("SELECT * FROM g5_sub_menu where page='1' order by number asc")->fetch();
		?>
		<nav class="gnb">
			<!-- 로고 -->
			<!-- 메뉴 리스트 -->
			<a class="mobile toggle_menu" href="#!"><span></span> MENU</a>
			<ul>
				<li class="menu"><a href="<?php echo G5_URL?>/1/1">센터 소개</a>
					<ul>
						<li><a href="<?php echo G5_URL?>/1/1">사회봉사센터는</a></li>
						<li><a href="<?php echo G5_URL?>/1/2?page=<?php echo $pro['page'] ?>&idx=<?php echo $pro['number'] ?>">프로그램 소개</a></li>
						<li><a href="<?php echo G5_BBS_URL."/board.php?bo_table=calander&wr_id=1"?>">프로그램 시간표</a></li>
						<li><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=gallery">프로그램 진행사진</a></li>
					</ul>
				</li>
				<li class="menu"><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=recruitment&amp;sca=<?php echo urlencode('동아리 모집') ?>">모집공고</a>
					<ul>
						<li><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=recruitment&amp;sca=<?php echo urlencode('동아리 모집') ?>">동아리 모집</a></li>
						<li><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=recruitment&amp;sca=<?php echo urlencode('자원봉사자 모집') ?>">자원봉사자 모집</a></li>
					</ul>
				</li>
				<li class="menu"><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=vlt&amp;sca=<?php echo urlencode('자원봉사자론 1')?>">수업 게시판</a>
					<ul>
						<li><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=vlt&amp;sca=<?php echo urlencode('자원봉사자론 1')?>">자원봉사자론 1</a></li>
						<li><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=vlt&amp;sca=<?php echo urlencode('자원봉사자론 2')?>">자원봉사자론 2</a></li>
						<li><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=vlt&amp;sca=<?php echo urlencode('자원봉사자론 3')?>">자원봉사자론 3</a></li>
					</ul>
				</li>
				<li class="menu"><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=qna&amp;sca=<?php echo urlencode('수업 QnA');?>">Q&amp;A</a>
					<ul>
						<li><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=qna&amp;sca=<?php echo urlencode('수업 QnA');?>">수업 Q&amp;A</a></li>
						<li><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=qna&amp;sca=<?php echo urlencode('자원봉사자 QnA');?>">자원봉사자 Q&amp;A</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
</header>
<!-- 헤더 끝 -->