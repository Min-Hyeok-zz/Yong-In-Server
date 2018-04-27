<?php
if (!defined("_GNUBOARD_")) exit; // 개별 페이지 접근 불가
include_once(G5_LIB_PATH.'/thumbnail.lib.php');

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$board_skin_url.'/style.css">', 0);
?>



<!-- 게시물 읽기 시작 { -->
        <div id="photo">
            <h2 class="sub_title">프로그램 진행사진</h2>
            <p class="sub_navi">프로그램 소개 > 프로그램 사진</p>
            <div class="photo-view">
                <div><?php echo cut_str(get_text($view['wr_subject']), 70); ?></div>
                <div class="photo-info">
                    <div>
                        <p class="writer">작성자 <span><?php echo $view['name'] ?></span></p>
                    </div>
                    <div>
                        <p class="date">작성일 <span><?php echo date("y-m-d", strtotime($view['wr_datetime'])) ?></span></p>
                        <p class="cnt">조회수 <span><?php echo number_format($view['wr_hit']); ?></span></p>
                    </div>
                </div>
                <div class="photo-sec">
                    <?php
                    // 파일 출력
                    $v_img_count = count($view['file']);
                    if($v_img_count) {

                        for ($i=0; $i<=count($view['file']); $i++) {
                            if ($view['file'][$i]['view']) {
                                //echo $view['file'][$i]['view'];
                                echo get_view_thumbnail($view['file'][$i]['view']);
                            }
                        }
                    }
                     ?>
                </div>
                <div class="g-content"><?php echo $view['wr_content'] ?></div>
                <hr class="hr"> 
                <div class="g-btn-group">
                    <a href="<?php echo $list_href ?>" class="btn_b01 btn g-btn"><i class="fa fa-list" aria-hidden="true"></i> 목록</a>
                    <?php if ($update_href) { ?><a href="<?php echo $update_href ?>" class="btn_b01 btn g-btn"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> 수정</a><?php } ?>
                    <?php if ($delete_href) { ?><a href="<?php echo $delete_href ?>" class="btn_b01 btn g-btn" onclick="del(this.href); return false;"><i class="fa fa-trash-o" aria-hidden="true"></i> 삭제</a><?php } ?>
                </div>
                <div class="list-move">
                    <p>이전글, 다음글</p>
                    <div>
                        <?php if ($prev_href) { ?>
                        <div><a href="<?php echo $prev_href ?>"><span><i class="fas fa-angle-up"></i> 이전글</span> <?php echo mb_substr($prev_wr_subject, 0,28);?></a></div><?php } ?>
                        <?php if ($next_href) { ?>
                        <div><a href="<?php echo $next_href ?>"><span><i class="fas fa-angle-down"></i> 다음글</span> <?php echo mb_substr($next_wr_subject, 0,28);?></a></div><?php } ?>
                    </div>
                </div>
            </div>
            <?php
                // 코멘트 입출력
                include_once(G5_BBS_PATH.'/view_comment.php');
             ?>
        </div>


    <!-- } 게시물 상단 버튼 끝 -->

    
<!-- } 게시판 읽기 끝 -->
<script src="<?php echo G5_JS_URL; ?>/viewimageresize.js"></script>
<script>
<?php if ($board['bo_download_point'] < 0) { ?>
$(function() {
    
});
<?php } ?>

function board_move(href)
{
    window.open(href, "boardmove", "left=50, top=50, width=500, height=550, scrollbars=1");
}
</script>

<script>
$(function() {
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