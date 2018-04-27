<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가
include_once(G5_LIB_PATH.'/thumbnail.lib.php');

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$board_skin_url.'/style.css">', 0);
?>

<!-- 게시판 목록 시작 { -->
<div id="photo-list">
    <h2 class="sub_title">프로그램 진행사진</h2>
    <p class="sub_navi">프로그램 소개 > 프로그램 진행사진</p>
    <div class="board-top">
        <div>
            <div><?php print_r($top_content); ?></div>
            <?php if($bo_table == "recruitment") echo "<p>※ 신청 및 문의사항은  031-8020-3398 로 연락바랍니다.</p>"; ?>
        </div>
    </div>
    <div id="bo_gall" style="width:<?php echo $width; ?>">


        <!-- } 게시판 페이지 정보 및 버튼 끝 -->

            <form name="fsearch" method="get">
                <input type="hidden" name="bo_table" value="<?php echo $bo_table ?>">
                <input type="hidden" name="sca" value="<?php echo $sca ?>">
                <input type="hidden" name="sop" value="and">
                <div class="photo-search">
                    검색 옵션 선택
                    <select name="sf1" id="photo-type">
                        <option value="wr_subject"<?php echo get_selected($sfl, 'wr_subject', true); ?>>제목</option>
                        <option value="wr_content"<?php echo get_selected($sfl, 'wr_content'); ?>>내용</option>
                        <option value="wr_subject||wr_content"<?php echo get_selected($sfl, 'wr_subject||wr_content'); ?>>제목+내용</option>
                    </select>
                    <input type="text" name="stx" value="<?php echo $_GET['stx'] ?>">
                    <button type="submit">검색</button>
                </div>
            </form>

        <form name="fboardlist"  id="fboardlist" action="./board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
        <input type="hidden" name="bo_table" value="<?php echo $bo_table ?>">
        <input type="hidden" name="sfl" value="<?php echo $sfl ?>">
        <input type="hidden" name="stx" value="<?php echo $stx ?>">
        <input type="hidden" name="spt" value="<?php echo $spt ?>">
        <input type="hidden" name="sst" value="<?php echo $sst ?>">
        <input type="hidden" name="sod" value="<?php echo $sod ?>">
        <input type="hidden" name="page" value="<?php echo $page ?>">
        <input type="hidden" name="sw" value="">

            <div class="photo-content">
            <?php for ($i=0; $i<count($list); $i++) { ?>
            <?php
            if ($list[$i]['is_notice']) { // 공지사항  ?>
                <span class="is_notice">공지</span>
            <?php } else {
                $thumb = get_list_thumbnail($board['bo_table'], $list[$i]['wr_id'], $board['bo_gallery_width'], $board['bo_gallery_height'], false, true);
                if($thumb['src']) {
                    $img_content = '<img src="'.$thumb['src'].'" alt="'.$thumb['alt'].'" >';
                } else {
                    $img_content = '<span class="no_image">no image</span>';
                }
            }
             ?>
                <div>
                    <a href="<?php echo $list[$i]['href'] ?>">
                        <?php echo $img_content ?>
                        <?php
                            $before = "";
                            $line = 12;
                            $len = strlen($list[$i]['subject']);
                            if ($len > $line) $before = "...";
                            echo mb_substr($list[$i]['subject'], 0,$line).$before;
                        ?>
                    </a>
                    <p><?php echo $list[$i]['datetime2'] ?></p>
                </div>
            <?php } ?>
            <?php if (count($list) == 0) { echo "<li class=\"empty_list\" style='list-style: none;'>게시물이 없습니다.</li>"; } ?>
            </div>

            <?php
            // echo $list[$i]['icon_reply']; 갤러리는 reply 를 사용 안 할 것 같습니다. - 지운아빠 2013-03-04
            if ($is_category && $list[$i]['ca_name']) {
             ?>
            <a href="<?php echo $list[$i]['ca_name_href'] ?>" class="bo_cate_link"><?php echo $list[$i]['ca_name'] ?></a>
            <?php } ?>

        <?php if ($list_href || $is_checkbox || $write_href) { ?>
        <div class="bo_fx">
            <?php if ($list_href || $write_href) { ?>
            <ul class="btn_bo_user">
                <?php if ($list_href) { ?><li><a href="<?php echo $list_href ?>" class="write_btn">목록</a></li><?php } ?>
                <?php if ($write_href) { ?><li><a href="<?php echo $write_href ?>" class="write_btn">글쓰기</a></li><?php } ?>
            </ul>
            <?php } ?>
        </div>
        <?php } ?>
        </form>
        <!-- } 게시판 검색 끝 --> 
        <?php echo $write_pages;  ?>
    </div>
</div>

<?php if($is_checkbox) { ?>
<noscript>
<p>자바스크립트를 사용하지 않는 경우<br>별도의 확인 절차 없이 바로 선택삭제 처리하므로 주의하시기 바랍니다.</p>
</noscript>
<?php } ?>



<!-- 페이지 -->
<?php if ($is_checkbox) { ?>
<script>
function all_checked(sw) {
    var f = document.fboardlist;

    for (var i=0; i<f.length; i++) {
        if (f.elements[i].name == "chk_wr_id[]")
            f.elements[i].checked = sw;
    }
}

function fboardlist_submit(f) {
    var chk_count = 0;

    for (var i=0; i<f.length; i++) {
        if (f.elements[i].name == "chk_wr_id[]" && f.elements[i].checked)
            chk_count++;
    }

    if (!chk_count) {
        alert(document.pressed + "할 게시물을 하나 이상 선택하세요.");
        return false;
    }

    if(document.pressed == "선택복사") {
        select_copy("copy");
        return;
    }

    if(document.pressed == "선택이동") {
        select_copy("move");
        return;
    }

    if(document.pressed == "선택삭제") {
        if (!confirm("선택한 게시물을 정말 삭제하시겠습니까?\n\n한번 삭제한 자료는 복구할 수 없습니다\n\n답변글이 있는 게시글을 선택하신 경우\n답변글도 선택하셔야 게시글이 삭제됩니다."))
            return false;

        f.removeAttribute("target");
        f.action = "./board_list_update.php";
    }

    return true;
}

// 선택한 게시물 복사 및 이동
function select_copy(sw) {
    var f = document.fboardlist;

    if (sw == 'copy')
        str = "복사";
    else
        str = "이동";

    var sub_win = window.open("", "move", "left=50, top=50, width=500, height=550, scrollbars=1");

    f.sw.value = sw;
    f.target = "move";
    f.action = "./move.php";
    f.submit();
}
</script>
<?php } ?>
<!-- } 게시판 목록 끝 -->
