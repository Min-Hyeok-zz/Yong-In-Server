<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가
include_once(G5_LIB_PATH.'/thumbnail.lib.php');

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$board_skin_url.'/style.css">', 0);
?>
        <div id="photo-list"><br>
            <h2>프로그램 진행사진</h2>
            <p>Home > 센터소개 > 프로그램 소개 > 프로그램 진행사진</p>
            <div class="photo-top">“사회봉사센터의  프로그램과 일상을 기록합니다.”</div>
            <div>

                <form name="fsearch" method="get">
                    <input type="hidden" name="bo_table" value="<?php echo $bo_table ?>">
                    <input type="hidden" name="sca" value="<?php echo $sca ?>">
                    <input type="hidden" name="sop" value="and">
                    <div class="photo-search">
                        검색 옵션 선택
                        <select name="club-search" id="photo-type">
                            <option value="wr_subject"<?php echo get_selected($sfl, 'wr_subject', true); ?>>제목</option>
                            <option value="wr_content"<?php echo get_selected($sfl, 'wr_content'); ?>>내용</option>
                            <option value="wr_subject||wr_content"<?php echo get_selected($sfl, 'wr_subject||wr_content'); ?>>제목+내용</option>
                        </select>
                        <input type="text" name="photo-search">
                        <button type="submit">검색</button>
                    </div>
                </form>

                <div class="photo-content">
                    <?php 
                        $list = $db->query("SELECT * FROM g5_write_{$bo_table} order by wr_datetime desc");
                    ?>
                    <?php foreach ($list as $data): ?>
                        <div>
                            <img src="<?php echo G5_IMG_URL ?>/photo.jpg" alt="img">
                            <p>사회봉사단 완도 신지중 캠프...</p>
                            <p>2017.02.24</p>
                        </div>
                    <?php endforeach ?>
                </div>

                <div class="pageing">
                    <a href="#" class="page-btn active">1</a>
                    <a href="#" class="page-btn">2</a>
                    <a href="#" class="page-btn">3</a>
                    <a href="#" class="page-btn">4</a>
                    <a href="#" class="page-btn">5</a>
                    <a href="#" class="page-btn">6</a>
                    <a href="#" class="page-btn">7</a>
                    <a href="#" class="page-btn">8</a>
                    <a href="#" class="page-btn">9</a>
                    <a href="#" class="page-btn">10</a>
                    <a href="#"><i class="fas fa-angle-right"></i></a>
                    <a href="#"><i class="fas fa-angle-double-right"></i></a>
                </div>

            </div>
        </div>