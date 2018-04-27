<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$board_skin_url.'/style.css">', 0);
$content_arr = json_decode(htmlspecialchars_decode($content),true);
?>

<div id="club"><br>
    <h2 class="sub_title"><?php echo $title ?></h2>
    <p class="sub_navi">Home > <?php echo $title ?> > <?php echo $_GET['sca'] ?></p>
    <!-- 게시물 작성/수정 시작 { -->
    <form name="fwrite" id="fwrite" action="<?php echo $action_url ?>" onsubmit="return fwrite_submit(this);" method="post" enctype="multipart/form-data" autocomplete="off">
    <input type="hidden" name="uid" value="<?php echo get_uniqid(); ?>">
    <input type="hidden" name="w" value="<?php echo $w ?>">
    <input type="hidden" name="bo_table" value="<?php echo $bo_table ?>">
    <input type="hidden" name="wr_id" value="<?php echo $wr_id ?>">
    <input type="hidden" name="sca" value="<?php echo $sca ?>">
    <input type="hidden" name="sfl" value="<?php echo $sfl ?>">
    <input type="hidden" name="stx" value="<?php echo $stx ?>">
    <input type="hidden" name="spt" value="<?php echo $spt ?>">
    <input type="hidden" name="sst" value="<?php echo $sst ?>">
    <input type="hidden" name="sod" value="<?php echo $sod ?>">
    <input type="hidden" name="page" value="<?php echo $page ?>">
    <input type="hidden" name="ca_name" value="<?php echo $sca ?>">
    <?php
    $option = '';
    $option_hidden = '';
    if ($is_notice || $is_html || $is_secret || $is_mail) {
        $option = '';
        if ($is_notice) {
            $option .= "\n".'<input type="checkbox" id="notice" name="notice" value="1" '.$notice_checked.'>'."\n".'<label for="notice">공지</label>';
        }

        if ($is_html) {
            if ($is_dhtml_editor) {
                $option_hidden .= '<input type="hidden" value="html1" name="html">';
            } else {
                $option .= "\n".'<input type="checkbox" id="html" name="html" onclick="html_auto_br(this);" value="'.$html_value.'" '.$html_checked.'>'."\n".'<label for="html">HTML</label>';
            }
        }
    }

    echo $option_hidden;
    ?>
    <table id="study-write">
        <colgroup>
            <col class="wp20">
            <col class="wp30">
            <col class="wp10">
            <col class="wp15">
            <col class="wp10">
            <col class="wp15">
        </colgroup>
        <tbody>
            <?php if ($sca == '동아리 모집'): ?>
            <tr class="club_tr">
                <td class="lbl"><label for="wr_subject">제목</label></td>
                <td colspan="5"><input type="text" name="wr_subject" value="<?php echo $subject ?>" id="wr_subject" required class="required" size="20" maxlength="255" placeholder="제목"></td>
            </tr>
            <tr class="club_tr">
                <td class="lbl"><label for="wr_1">동아리명</label></td>
                <td colspan="5">
                    <input type="text" name="wr_1" value="<?php echo $wr_1 ?>" id="wr_1" required class="required" size="20" maxlength="255" placeholder="동아리명">
                </td>
            </tr>
            <tr class="club_tr">
                <td class="lbl"><label for="wr_2">등록자</label></td>
                <td>
                    <input type="text" name="wr_2" value="<?php echo $wr_2 ?>" id="wr_2" required class="required" size="20" maxlength="255" placeholder="등록자">
                </td>
                <td class="lbl"><label for="wr_3">학년</label></td>
                <td>
                    <select type="text" name="wr_3" value="<?php echo $wr_3 ?>" id="wr_3" required>
                        <option value="">선택</option>
                        <?php
                            for($i=1;$i<=4;$i++){
                                $sel = '';
                                if($i == $wr_4) $sel = ' selected';
                        ?>
                        <option value="<?php echo $i?>"<?php echo $sel?>><?php echo $i?></option>
                        <?php
                            }
                        ?>
                    </select>
                </td>
                <td class="lbl"><label for="wr_4">학번</label></td>
                <td>
                    <input type="text" name="wr_4" value="<?php echo $wr_4 ?>" id="wr_4" required class="required" size="10" maxlength="255" placeholder="학번">
                </td>
            </tr>
            <tr class="club_tr">
                <td class="lbl"><label for="wr_5">대표자 핸드폰</label></td>
                <td colspan="5">
                    <input type="text" name="wr_5" value="<?php echo $wr_5 ?>" id="wr_5" required class="required" size="40" maxlength="255" placeholder="핸드폰">
                </td>
            </tr>
            <tr class="club_tr">
                <td class="lbl"><label for="wr_6">대표자 E-mail</label></td>
                <td colspan="5">
                    <input type="text" name="wr_6" value="<?php echo $wr_6 ?>" id="wr_6" required class="required" size="40" maxlength="255" placeholder="E-mail">
                </td>
            </tr>
            <tr class="club_tr">
                <td class="lbl"><label for="wr_7">동아리 회원 명단</label></td>
                <td colspan="5">
                    <textarea name="wr_7" id="wr_7" required class="required" placeholder="동아리 회원 명단" cols="80" rows="10"><?php echo $wr_7 ?></textarea>
                </td>
            </tr>
            <tr class="club_tr">
                <td class="lbl"><label for="wr_content">내용</label></td>
                <td colspan="5">
                    <div class="wr_content <?php echo $is_dhtml_editor ? $config['cf_editor'] : ''; ?>">
                        <?php echo $editor_html; // 에디터 사용시는 에디터로, 아니면 textarea 로 노출 ?>
                        <?php if($write_min || $write_max) { ?>
                        <!-- 최소/최대 글자 수 사용 시 -->
                        <div id="char_count_wrap"><span id="char_count"></span>글자</div>
                        <?php } ?>
                    </div>
                </td>
            </tr>                
            <?php else:?>
            <tr>
                <td class="lbl"><label for="wr_subject">봉사명</label></td>
                <td colspan="5">
                    <input type="text" id="wr_subject" name="wr_subject" size="50" value="<?php echo $subject?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_1">관리센터</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_1" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[0])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_2">등록자</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_2" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[1])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_4">모집현황</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_4" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[2])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_5">봉사지역</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_5" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[3])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_6">봉사장소</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_6" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[4])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_7">봉사대상자</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_7" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[5])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_8">요청인원</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_8" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[6])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_9">활동분야</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_9" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[7])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_10">활동주기</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_10" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[8])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_11">활동기간</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_11" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[9])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_12">봉사 상세 내용</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_12" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[10])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_13">담당자</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_13" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[11])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_14">담당자 연락처</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_14" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[12])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_15">담당자 이메일</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_15" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[13])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_16">봉사자 연령</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_16" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[14])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_17">봉사자 성별</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_17" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[15])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_18">자격요건</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_18" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[16])?>" required>
                </td>
            </tr>
            <tr>
                <td class="lbl"><label for="wr_content_19">사전교육</label></td>
                <td colspan="5">
                    <input type="text" id="wr_content_19" name="wr_content[]" size="50" value="<?php if(isset($content_arr)) echo urldecode($content_arr[17])?>" required>
                </td>
            </tr>
            <?php endif ?>
        </tbody>
    </table>

    <?php for ($i=0; $is_file && $i<$file_count; $i++) { ?>
    <div class="bo_w_flie write_div">
        <div class="file_wr write_div">
            <label for="bf_file_<?php echo $i+1 ?>" class="lb_icon"><i class="fa fa-download" aria-hidden="true"></i><span class="sound_only"> 파일 #<?php echo $i+1 ?></span></label>
            <input type="file" name="bf_file[]" id="bf_file_<?php echo $i+1 ?>" title="파일첨부 <?php echo $i+1 ?> : 용량 <?php echo $upload_max_filesize ?> 이하만 업로드 가능" class="frm_file ">
        </div>
        <?php if ($is_file_content) { ?>
        <input type="text" name="bf_content[]" value="<?php echo ($w == 'u') ? $file[$i]['bf_content'] : ''; ?>" title="파일 설명을 입력해주세요." class="full_input "50" placeholder="파일 설명을 입력해주세요.">
        <?php } ?>

        <?php if($w == 'u' && $file[$i]['file']) { ?>
        <span class="file_del">
            <input type="checkbox" id="bf_file_del<?php echo $i ?>" name="bf_file_del[<?php echo $i;  ?>]" value="1"> <label for="bf_file_del<?php echo $i ?>"><?php echo $file[$i]['source'].'('.$file[$i]['size'].')';  ?> 파일 삭제</label>
        </span>
        <?php } ?>
        
    </div>
    <?php } ?>

    <?php for ($i=1; $is_link && $i<=1; $i++) { ?>
    <div class="bo_w_link write_div" style="max-width: 80%;">
        <label for="wr_link<?php echo $i ?>"><i class="fa fa-link" aria-hidden="true"></i><span class="sound_only"> 링크  #<?php echo $i ?></span></label>
        <input type="text" name="wr_link<?php echo $i ?>" value="<?php if($w=="u"){echo$write['wr_link'.$i];} ?>" id="wr_link<?php echo $i ?>" class="frm_input full_input" size="50">
    </div>
    <?php } ?>

    <div class="study-btn">
        <a href="<?php echo G5_BBS_URL?>/board.php?bo_table=<?php echo $bo_table ?>&sca=<?php echo $_GET['sca'] ?>" class="btn">목록</a>
        <button type="submit" id="btn_submit" accesskey="s" class="btn">작성완료</button>
    </div>
    </form>

    <script>
    <?php if($write_min || $write_max) { ?>
    // 글자수 제한
    var char_min = parseInt(<?php echo $write_min; ?>); // 최소
    var char_max = parseInt(<?php echo $write_max; ?>); // 최대
    check_byte("wr_content", "char_count");

    $(function() {
        $("#wr_content").on("keyup", function() {
            check_byte("wr_content", "char_count");
        });
    });

    <?php } ?>
    function html_auto_br(obj)
    {
        if (obj.checked) {
            result = confirm("자동 줄바꿈을 하시겠습니까?\n\n자동 줄바꿈은 게시물 내용중 줄바뀐 곳을<br>태그로 변환하는 기능입니다.");
            if (result)
                obj.value = "html2";
            else
                obj.value = "html1";
        }
        else
            obj.value = "";
    }

    function fwrite_submit(f)
    {
        <?php echo $editor_js; // 에디터 사용시 자바스크립트에서 내용을 폼필드로 넣어주며 내용이 입력되었는지 검사함   ?>

        var subject = "";
        var content = "";
        $.ajax({
            url: g5_bbs_url+"/ajax.filter.php",
            type: "POST",
            data: {
                "subject": f.wr_subject.value,
                "content": f.wr_content.value
            },
            dataType: "json",
            async: false,
            cache: false,
            success: function(data, textStatus) {
                subject = data.subject;
                content = data.content;
            }
        });

        if (subject) {
            alert("제목에 금지단어('"+subject+"')가 포함되어있습니다");
            f.wr_subject.focus();
            return false;
        }

        if (content) {
            alert("내용에 금지단어('"+content+"')가 포함되어있습니다");
            if (typeof(ed_wr_content) != "undefined")
                ed_wr_content.returnFalse();
            else
                f.wr_content.focus();
            return false;
        }

        if (document.getElementById("char_count")) {
            if (char_min > 0 || char_max > 0) {
                var cnt = parseInt(check_byte("wr_content", "char_count"));
                if (char_min > 0 && char_min > cnt) {
                    alert("내용은 "+char_min+"글자 이상 쓰셔야 합니다.");
                    return false;
                }
                else if (char_max > 0 && char_max < cnt) {
                    alert("내용은 "+char_max+"글자 이하로 쓰셔야 합니다.");
                    return false;
                }
            }
        }

        <?php echo $captcha_js; // 캡챠 사용시 자바스크립트에서 입력된 캡챠를 검사함  ?>

        document.getElementById("btn_submit").disabled = "disabled";

        return true;
    }
    </script>
</div>
<!-- } 게시물 작성/수정 끝 -->