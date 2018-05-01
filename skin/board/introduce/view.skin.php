<?php
if (!defined("_GNUBOARD_")) exit; // 개별 페이지 접근 불가
include_once(G5_LIB_PATH.'/thumbnail.lib.php');

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$board_skin_url.'/style.css">', 0);
$list = $db->query("SELECT * FROM g5_write_introduce where ca_name='{$_GET['sca']}'")->fetchAll();
if ($list == "") alert("잘못된 접근입니다.");
$active = "";
?>



<!-- 게시물 읽기 시작 { -->
<div id="education" style="width:<?php echo $width; ?>">
        <h2 class="sub_title"><?php echo $_GET['sca'] ?></h2>
        <p class="sub_navi">HOME > 센터소개 > 프로그램 소개 > <?php echo $view['wr_subject'] ?></p>
        <div class="edu-btn">
            <?php foreach ($list as $data): ?>
                <?php $active = $data['wr_id'] == $_GET['wr_id'] ? "active" : NULL; ?>
                <a href="<?php echo G5_BBS_URL ?>/board.php?bo_table=introduce&wr_id=<?php echo $data['wr_id'] ?>&sca=<?php echo $data['ca_name'] ?>" class="edu-menu <?php echo $active ?>"><?php echo $data['wr_subject']; ?></a>
            <?php endforeach ?>
        </div>
        <p class="sub-text"><img src="<?php echo G5_IMG_URL ?>/icon.jpg" alt="img"> <?php echo $data['wr_subject'] ?></p>
       <?php echo get_view_thumbnail($view['content']); ?>
    <!-- 게시물 상단 버튼 시작 { -->
        <ul class="bo_v_com">
            <?php if ($update_href) { ?><li><a href="<?php echo $update_href ?>" class="btn_b01 btn"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> 수정</a></li><?php } ?>
            <?php if ($delete_href) { ?><li><a href="<?php echo $delete_href ?>" class="btn_b01 btn" onclick="del(this.href); return false;"><i class="fa fa-trash-o" aria-hidden="true"></i> 삭제</a></li><?php } ?>
            <?php if ($write_href) { ?><li><a href="<?php echo $write_href ?>&sca=<?php echo $_GET['sca'] ?>" class="btn_b02 btn"><i class="fa fa-pencil" aria-hidden="true"></i> 글쓰기</a></li><?php } ?>
        </ul>
    <!-- } 게시물 상단 버튼 끝 -->

</div>
<!-- } 게시판 읽기 끝 -->
<script src="<?php echo G5_JS_URL; ?>/viewimageresize.js"></script>
<script>
<?php if ($board['bo_download_point'] < 0) { ?>
$(function() {
    $("a.view_file_download").click(function() {
        if(!g5_is_member) {
            alert("다운로드 권한이 없습니다.\n회원이시라면 로그인 후 이용해 보십시오.");
            return false;
        }

        var msg = "파일을 다운로드 하시면 포인트가 차감(<?php echo number_format($board['bo_download_point']) ?>점)됩니다.\n\n포인트는 게시물당 한번만 차감되며 다음에 다시 다운로드 하셔도 중복하여 차감하지 않습니다.\n\n그래도 다운로드 하시겠습니까?";

        if(confirm(msg)) {
            var href = $(this).attr("href")+"&js=on";
            $(this).attr("href", href);

            return true;
        } else {
            return false;
        }
    });
});
<?php } ?>

function board_move(href)
{
    window.open(href, "boardmove", "left=50, top=50, width=500, height=550, scrollbars=1");
}
</script>
<script>
    $("#education > table").attr("id","edu-table");
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