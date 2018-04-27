<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.G5_PATH.'/css/common.css">', 0);
?>

<!-- 로그인 시작 { -->
<div id="login">
    <h2 class="sub_title">로그인</h2>
    <p>&#10095; 용인대학교 사회봉사센터 홈페이지에 오신 것을 환영합니다.</p><br>

    <div>
        <div>
            <img src="<?php echo G5_IMG_URL ?>/login.jpg" alt="img">
        </div>
        <form name="flogin" action="<?php echo $login_action_url ?>" onsubmit="return flogin_submit(this);" method="post" class="login-form">
            <input type="hidden" name="url" value="<?php echo $login_url ?>">
            <div>
                <div>
                    <p class="form-text mb_id">아이디</p>
                    <input type="text" name="mb_id" class="form-control" required autofocus placeholder="아이디"><br>
                    <p class="form-text mb_pw">비밀번호</p>
                    <input type="password" name="mb_password" class="form-control" required placeholder="비밀번호">
                </div>
                <div>
                    <input type="submit" value="로그인" class="form-submit">
                </div>
            </div>
        </form>
    </div>
</div>

<script>

function flogin_submit(f)
{
    return true;
}
</script>
<!-- } 로그인 끝 -->
