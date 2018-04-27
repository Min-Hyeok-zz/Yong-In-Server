<?php
if (!defined("_GNUBOARD_")) exit; // 개별 페이지 접근 불가
include_once(G5_LIB_PATH.'/thumbnail.lib.php');

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$board_skin_url.'/style.css">', 0);
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
        <?php if ($sca == '동아리 모집'): ?>
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
                        <p>
                            <strong>동아리명 : </strong>
                            <label><?php echo $view['wr_1']?></label>
                        </p>
                        <p>
                            <strong>등록자 : </strong>
                            <label><?php echo $view['wr_2']?></label>
                        </p>
                        <p>
                            <strong>학년 : </strong>
                            <label><?php echo $view['wr_3']?></label>
                        </p>
                        <p>
                            <strong>학번 : </strong>
                            <label><?php echo $view['wr_4']?></label>
                        </p>
                        <p>
                            <strong>핸드폰 : </strong>
                            <label><?php echo $view['wr_5']?></label>
                        </p>
                        <p>
                            <strong>E-mail : </strong>
                            <label><?php echo $view['wr_6']?></label>
                        </p>
                        <p>
                            <strong>동아리 회원 명단 : </strong>
                            <label><?php echo $view['wr_7']?></label>
                        </p>
                        <p>
                            <strong>내용 : </strong>
                            <label><?php echo $view['wr_content']?></label>
                        </p>
                    </div>              
                </div>
                <?php else:
                    $decoded = htmlspecialchars_decode(urldecode($view['content']));
                    $content_arr = json_decode($decoded);
                ?>
                <table id="vol-table">
                    <tbody class="rec-pc">
                        <tr>
                            <td class="vol-bg">봉사명</td>
                            <td class="vol1">
                                <span><?php echo $view['subject']; ?></span>
                                <p class="vol-bg vol11 vol-bgg">
                                    관리센터<br>(봉사활동처)
                                </p>
                                <div class="v-center">
                                    <div class="vol-t"><?php echo $content_arr[0] ?></div>
                                    <button class="vol-btn" onclick="location.href='<?php echo $view['wr_link1'] ?>'">홈페이지 바로가기</button>
                                </div>
                            </td>
                        </tr>
                        <tr style="height: 40px;">
                            <td class="vol-bg">등록자</td>
                            <td class="vol2">
                                &nbsp;&nbsp;&nbsp;
                                <?php echo $content_arr[1] ?>
                                <p class="vol-bg vol-bgg" style="">등록일</p>
                                &nbsp;&nbsp;
                                <?php echo mb_substr($view['wr_datetime'], 0,10);?>&nbsp;&nbsp;
                                <p class="vol-bg vol-bgg">모집현황</p>&nbsp;&nbsp;
                                <button class="vol-btn"><?php echo $content_arr[2] ?></button>
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="11" class="vol-bg">봉사내용</td>
                            <td class="vol-normal" style="color: #0c6b86;">
                                <p class="vol-bg">·봉사지역</p>
                                <?php echo $content_arr[3] ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="vol-normal" style="color: #0c6b86;">
                                <p class="vol-bg">·봉사장소</p>
                                <?php echo $content_arr[4] ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="vol-normal" style="color: #0c6b86;">
                                <p class="vol-bg">·봉사대상자</p>
                                <?php echo $content_arr[5] ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="vol-normal" style="color: #0c6b86;">
                                <p class="vol-bg">·요청인원</p>
                                <?php echo $content_arr[6] ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="vol-normal" style="color: #0c6b86;">
                                <p class="vol-bg">·활동분야</p>
                                <?php echo $content_arr[7] ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="vol-normal" style="color: #0c6b86;">
                                <p class="vol-bg">·활동주기</p>
                                
                                <?php echo $content_arr[8] ?> <button class="vol-btn">비</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="vol-normal" style="color: #0c6b86;">
                                <p class="vol-bg">·활동기간</p>
                                <?php echo $content_arr[9] ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="vol-long">
                                <p class="vol-bg vol-big">·봉사 상세 내용</p>
                                <div class="vol-content">
                                    <?php echo $content_arr[10] ?>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="vol-normal">
                                <p class="vol-bg">·담당자</p>
                                <?php echo $content_arr[11] ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="vol-normal">
                                <p class="vol-bg">·담당자 연락처</p>
                                <?php echo $content_arr[12] ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="vol-normal">
                                <p class="vol-bg">·담당자 이메일</p>
                                <?php echo $content_arr[13] ?>
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="4" class="vol-bg">지원 <br>자격요건</td>
                            <td class="vol-normal">
                                <p class="vol-bg">·봉사자 연령</p>
                                <?php echo $content_arr[14] ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="vol-normal">
                                <p class="vol-bg">·봉사자 성별</p>
                                <?php echo $content_arr[15] ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="vol-normal">
                                <p class="vol-bg">·자격요건</p>
                                <?php echo $content_arr[16] ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="vol-normal">
                                <p class="vol-bg">·사전 교육</p>
                                <?php echo $content_arr[17] ?>
                            </td>
                        </tr>
                    </tbody>
                    <tbody class="res-rec">
                        <tr>
                            <td class="lbl"><label for="wr_subject">봉사명</label></td>
                            <td colspan="5"><?php echo $view['subject']?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_1">관리센터</label></td>
                            <td colspan="5">
                                <?php if(isset($content_arr)) echo urldecode($content_arr[0])?>
                                <?php if (isset($view['wr_link1']) && $view['wr_link1'] != ""): ?>
                                    <button class="vol-btn" onclick="location.href='<?php echo $view['wr_link1']; ?>'">홈페이지 바로가기</button>
                                <?php endif ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_2">등록자</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[1])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_4">모집현황</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[2])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_5">봉사지역</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[3])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_6">봉사장소</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[4])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_7">봉사대상자</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[5])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_8">요청인원</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[6])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_9">활동분야</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[7])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_10">활동주기</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[8])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_11">활동기간</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[9])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_12">봉사 상세 내용</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[10])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_13">담당자</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[11])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_14">담당자 연락처</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[12])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_15">담당자 이메일</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[13])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_16">봉사자 연령</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[14])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_17">봉사자 성별</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[15])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_18">자격요건</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[16])?></td>
                        </tr>
                        <tr>
                            <td class="lbl"><label for="wr_content_19">사전교육</label></td>
                            <td colspan="5"><?php if(isset($content_arr)) echo urldecode($content_arr[17])?></td>
                        </tr>
                    </tbody>
                </table>
                <?php endif ?>
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
            <?php if ($is_member): ?>
                <?php if ($sca == "자원봉사자 모집"): ?>
                <button class="vol-btn vol-btn1" onclick="location.href='<?php echo G5_BBS_URL."/vol_join.php?idx={$view['wr_id']}" ?>'">자원봉사참여신청</button>
                <?php endif ?>
                <?php if ($sca == "동아리 모집"): ?>
                <button class="vol-btn vol-btn1" onclick="location.href='<?php echo G5_BBS_URL."/club_join.php?idx={$view['wr_id']}" ?>'">동아리신청</button>                   
                <?php endif ?>
            <?php endif ?>
            <button class="vol-btn vol-btn2" onclick="location.href='<?php echo $list_href ?>&amp;sca=<?php echo $sca?>'">목록으로</button>
            <div class="vol-social">
                <img src="<?php echo G5_IMG_URL ?>/twitter.jpg" alt="img">
                <img src="<?php echo G5_IMG_URL ?>/facebook.jpg" alt="img">
            </div>


            <!-- 게시물 상단 버튼 시작 { -->
            <div id="bo_v_top">
                <ul class="bo_v_left">
                    <?php if ($update_href) { ?><li><a href="<?php echo $update_href ?>" class="btn_b01 btn"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> 수정</a></li><?php } ?>
                    <?php if ($delete_href) { ?><li><a href="<?php echo $delete_href ?>" class="btn_b01 btn" onclick="del(this.href); return false;"><i class="fa fa-trash-o" aria-hidden="true"></i> 삭제</a></li><?php } ?>
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