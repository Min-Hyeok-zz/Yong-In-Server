<?php
if (!defined("_GNUBOARD_")) exit; // 개별 페이지 접근 불가
include_once(G5_LIB_PATH.'/thumbnail.lib.php');

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$board_skin_url.'/style.css">', 0);
$active1 = "";
$active2 = "";
$active3 = "";

$is_category = false; 
$category_option = ''; 
if ($board['bo_use_category']) { 
    $is_category = true; 
    $category_href = G5_BBS_URL.'/board.php?bo_table='.$bo_table; 

    $category_option .= '<a href="'.$category_href.'&sca='.$sca.'"'; 
    if ($sca=='' && !$wr_id) 
        $category_option .= '</a>'; 

    $categories = explode('|', $board['bo_category_list']); // 구분자가 , 로 되어 있음 
    for ($i=0; $i<count($categories); $i++) { 
        $category = trim($categories[$i]); 
        if ($category=='') continue; 
        $category_option .= '<a href="'.($category_href."&amp;sca=".urlencode($category)).'"'; 
        if ($category==$sca || $category==$category_name) { // 현재 선택된 카테고리라면 
            $category_option .= ' class="active"'; 
        } 
        $category_option .= '>'.$category_msg.$category.'</a>'; 
    } 
}
?>

<!-- 게시물 읽기 시작 { -->

    <div id="study-view">
        <h2 class="sub_title"><?php echo $_GET['sca']; ?></h2>
        <p class="sub_navi">Home > <?php echo $title ?> > 자원봉사론</p>
            <div class="edu-btn" style="text-align: left;margin-bottom: 20px;margin-top: -10px;">
                <?php echo $category_option ?>
            </div>
        <div class="s-view">
            <div><?php echo cut_str(get_text($view['wr_subject']), 70); ?></div>
            <div class="s-info">
                <div>
                    <p>작성자</p>
                    <p><?php echo $view['name'] ?></p>
                </div>
                <div>
                    <p>작성일</p>
                    <span><?php echo date("y-m-d", strtotime($view['wr_datetime'])) ?></span>
                    <p>조회수</p>
                    <span><?php echo number_format($view['wr_hit']) ?></span>
                </div>
            </div>
            <div class="s-content">
                <?php echo $view['content']; ?>
            </div>
            <?php if ($view['file']['count'] != 0): ?>
            <div class="s-file">
                <p>첨부파일</p>
                <div>
                    <div>첨부파일</div>
                    <div>
                        <?php
                            for ($i=0; $i<count($view['file']) - 1; $i++) { 
                               echo "<a href='{$view['file'][$i]['href']};'><img src='".G5_IMG_URL."/hw.jpg' alt='img' style='margin-bottom: 5px;'> {$view['file'][$i]['source']}</a><br>";
                            }
                        ?>
                    </div>
                </div>
            </div>
            <?php endif ?>

            <!-- 게시물 상단 버튼 시작 { -->
            <div id="bo_v_top">
                <ul class="bo_v_left">
                    <?php if ($update_href) { ?><li><a href="<?php echo $update_href ?>" class="btn_b01 btn"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> 수정</a></li><?php } ?>
                    <?php if ($delete_href) { ?><li><a href="<?php echo $delete_href ?>" class="btn_b01 btn" onclick="del(this.href); return false;"><i class="fa fa-trash-o" aria-hidden="true"></i> 삭제</a></li><?php } ?>
                </ul>

                <ul class="bo_v_com">
                    <?php if ($write_href) { ?><li><a href="<?php echo $write_href ?>" class="btn_b02 btn"><i class="fa fa-pencil" aria-hidden="true"></i> 글쓰기</a></li><?php } ?>
                </ul>
            </div>
            <!-- } 게시물 상단 버튼 끝 -->
            <?php
            // 코멘트 입출력
            include_once(G5_BBS_PATH.'/view_comment.php');
             ?>

            <div class="list-move">
                <p>이전글, 다음글</p>
                <div>
                    <?php if ($prev_href || $next_href): ?>
                        <?php if ($prev_href): ?>
                        <div><a href="<?php echo $prev_href ?>"><span><i class="fas fa-angle-up"></i> 이전글</span> <?php echo $prev_wr_subject;?></a></div>
                        <?php endif ?>
                        <?php if ($next_href): ?>
                        <div><a href="<?php echo $next_href ?>"><span><i class="fas fa-angle-down"></i> 다음글</span> <?php echo $next_wr_subject;?></a></div>
                        <?php endif ?>
                    <?php endif ?>
                </div>
            </div>
        </div>
    </div>
<!-- } 게시판 읽기 끝 -->

<script src="<?php echo G5_JS_URL; ?>/viewimageresize.js"></script>
<script>
$(function(){
    var count = 0;
    $(document).on("click",".reply-toggle",function(){
        count++;
        if (count == 1) {
            $("#reply").slideToggle(500);
            $(".reply-open").fadeToggle(0);
            $(".reply-close").fadeToggle(0);
            setTimeout(function(){ count = 0; },500);
        }
    });
})

function board_move(href)
{
    window.open(href, "boardmove", "left=50, top=50, width=500, height=550, scrollbars=1");
}
</script>

<script>
$(function() {
    
    $(".edu-btn > a").addClass("edu-menu");

    $("a.view_image").click(function() {
        window.open(this.href, "large_image", "location=yes,links=no,toolbar=no,top=10,left=10,width=10,height=10,resizable=yes,scrollbars=no,status=no");
        return false;
    });

    // 추천, 비추천
    $("#good_button, #nogood_button").click(function() {
        var $tx;
        if(this.id == "good_button")
            $tx = $("#bo_v_act_good");
        else
            $tx = $("#bo_v_act_nogood");

        excute_good(this.href, $(this), $tx);
        return false;
    });

    // 이미지 리사이즈
    $("#bo_v_atc").viewimageresize();

    //sns공유
    $(".btn_share").click(function(){
        $("#bo_v_sns").fadeIn();
   
    });


    $(document).mouseup(function (e) {
        var container = $("#bo_v_sns");
        if (!container.is(e.target) && container.has(e.target).length === 0){
        container.css("display","none");
        }	
    });
});

function excute_good(href, $el, $tx)
{
    $.post(
        href,
        { js: "on" },
        function(data) {
            if(data.error) {
                alert(data.error);
                return false;
            }

            if(data.count) {
                $el.find("strong").text(number_format(String(data.count)));
                if($tx.attr("id").search("nogood") > -1) {
                    $tx.text("이 글을 비추천하셨습니다.");
                    $tx.fadeIn(200).delay(2500).fadeOut(200);
                } else {
                    $tx.text("이 글을 추천하셨습니다.");
                    $tx.fadeIn(200).delay(2500).fadeOut(200);
                }
            }
        }, "json"
    );
}
</script>
<!-- } 게시글 읽기 끝 -->