
		<!-- 회원가입 -->
		<div id="join"><br>
			<div>
				<h2 style="font-size: 24px;">회원가입</h2>
				<p>HOME > 회원가입</p>
			</div>
			<p style="font-size: 14px;">※ 회원가입 이용약관</p><br>
			<form  name="fregister" id="join-form" action="<?php echo $register_action_url ?>" onsubmit="return join_submit(this);" method="POST" autocomplete="off">
			<input type="hidden" name="mb_nickname" value="1">
			<input type="hidden" name="mb_birth">
			<input type="hidden" name="mb_email">
			<input type="hidden" name="mb_sname" value="용인대학교">
			<input type="hidden" name="sid_value" value="" class="sid_value">
			<textarea class="join-text" readonly>
제 1장 총 칙


제 1 조 (목적)

이 약관은 용인대학교 사회봉사센터 (이하 "사이트"라 합니다)에서 제공하는 인터넷서비스(이하 "서비스"라 합니다)의 이용
조건 및 절차에 관한 기본적인 사항을 규정함을 목적으로 합니다. 

제 2 조 (약관의 효력 및 변경)

① 이 약관은 서비스 화면이나 기타의 방법으로 이용고객에게 공지함으로써 효력을 발생합니다. 
② 사이트는 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 제1항과 같은 방법으로 공지 또는 통지함으로써 효력을 발생합니다. 

제 3 조 (용어의 정의)

이 약관에서 사용하는 용어의 정의는 다음과 같습니다. 
① 회원 : 사이트와 서비스 이용계약을 체결하거나 이용자 아이디(ID)를 부여받은 개인 또는 단체를 말합니다. 
② 신청자 : 회원가입을 신청하는 개인 또는 단체를 말합니다. 
③ 아이디(ID) : 회원의 식별과 서비스 이용을 위하여 회원이 정하고 사이트가 승인하는 문자와 숫자의 조합을 말합니다.
④ 비밀번호 : 회원이 부여 받은 아이디(ID)와 일치된 회원임을 확인하고, 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다. 
⑤ 해지 : 사이트 또는 회원이 서비스 이용계약을 취소하는 것을 말합니다. 
			</textarea>
			<div class="checkbox">	
				<input type="checkbox" name="check1" id="check1" required>
				<label for="check1">위 개인정보취급방침에 동의합니다.</label>
			</div>
			<p>※ 개인정보취급방침</p><br>

			<textarea class="join-text" readonly>
1. 개인정보의 수집목적 및 이용

용인대학교 사회봉사센터 회원님 개인의 정보를 수집하는 목적은 용인대학교 사회봉사센터 사이트를 통하여 회원님께 최적의 맞춤화된 
서비스를 제공해드리기 위한 것입니다. 이때 회원님께서 제공해주신 개인정보를 바탕으로 회원님께 보다 더 유용한 정보를 선택적으로 
제공하는 것이 가능하게 됩니다.

2. 수집하는 개인정보 항목 및 수집방법

용인대학교 사회봉사센터는 최초 회원가입을 하실 때 서비스 제공을 위해 가장 필수적인 개인정보를 받고 있습니다. 회원가입 시에 받는 
정보는 회원님의 이름, 성별, 생년월일,우편번호 등입니다.
이 이외에 특정 서비스를 제공하기 위하여 추가적인 정보제공을 요청하고 있습니다.
실명확인을 위한 휴대폰번호, 기타 서비스제공에 필요한 추가정보의 기재를 요청하게 됩니다. 기입하신 정보는 해당서비스 제공이
나 회원님께 사전에 밝힌 목적 이외의 다른 어떠한 목적으로도 사용되지 않음을 알려드립니다. 

3. 개인정보의 보유 및 폐기

귀하가 용인대학교 사회봉사센터의 회원으로서 용인대학교 사회봉사센터가 제공하는 서비스를 받는 동안 회원님의 개인정보는 용인대학교 사회봉사센터에서 계속 보유하며 서비스 제공을 위해 이용하게 됩니다. 다만 용인대학교 사회봉사센터의 회원이 아래의 '7. 자신의 개인정보 열람, 정정 및 삭제'에서 설명한 절차에 따라 ID를 삭제하거나 가입해지를 요청한 경우와 회원님께 사전에 알려드린 개인정보를 제공받은 목적이 달성된 경우에 수집된 개인의 정보는 재생할 수 없는 방법에 의하여 하드디스크에서 완전히 삭제되며 어떠한 용도로도 열람 또는 이용할 수 없도록 처리됩니다. 
			</textarea>
			<div class="checkbox">	
				<input type="checkbox" name="check2" id="check2" required>
				<label for="check2">위 개인정보취급방침에 동의합니다.</label>
			</div>

			<p>※ 표시는 필수입력 사항입니다.</p><br>
			<table id="join-table">
				<colgroup>
					<col>
					<col>
				</colgroup>
				<tbody>
					<tr>
						<td>성명*</td>
						<td><input type="text" id="reg_mb_name" name="mb_name" value="<?php echo get_text($member['mb_name']) ?>" <?php echo $required ?><?php echo $readonly; ?> class="name" size="10" placeholder="이름"></td>
					</tr>
					<tr>
						<td>생년월일</td>
						<td>
							<input type="radio" name="mb_birth" id="mb_birth" checked>
							<label for="">양력</label>
							<input type="radio" name="mb_birth">
							<label for="">음력</label>
							<select name="mb_birth[]" class="year">
								<option value="">선택</option>
								<?php for($i=2000;$i>=1900;$i--) { ?>
									<option value="<?php echo $i ?>"><?php echo $i ?></option>
								<?php } ?>
							</select>년
							<select name="mb_birth[]" class="month">
								<option value="">선택</option>
								<?php for($i=1;$i<=12;$i++) { ?>
									<option value="<?php echo $i ?>"><?php echo $i ?></option>
								<?php } ?>
							</select>월
							<select name="mb_birth[]" id="date">
								<option value="">선택</option>
								<?php for($i=1;$i<=31;$i++) { ?>
									<option value="<?php echo $i ?>"><?php echo $i ?></option>
								<?php } ?>
							</select>일
						</td>
					</tr>
					<tr>
						<td>대학교명</td>
						<td>용인대학교</td>
					</tr>
					<tr>
						<td>학번*</td>
						<td><input type="text" name="mb_sid" id="sid" <?php echo $required ?>>&nbsp;&nbsp;<button type="button" class="join-btn sid_chk">중복체크</button></td>
					</tr>
					<tr>
						<td>아이디*</td>
						<td>
							<input type="text" name="mb_id" class="mb_id" <?php echo $required ?>>
						</td>
					</tr>
					<tr>
						<td>비밀번호*</td>
						<td>
							<input type="password" name="mb_password" id="pw" <?php echo $required ?>> 확인 
							<input type="password" name="mb_password_re" id="pw_re" <?php echo $required ?>>
						</td>
					</tr>
					<tr>
						<td>전자우편*</td>
						<td>
							<input type="text" name="mb_email[]" class="email_1" <?php echo $required ?>> @ 
							<input type="hidden" name="mb_email[]" value="@">
							<input type="text" name="mb_email[]" class="email_2" <?php echo $required ?>>
							<select name="" id="email">
								<option value="">직접입력</option>
								<option value="naver.com" class="email_sub">naver.com</option>
								<option value="daum.net" class="email_sub">daum.net</option>
								<option value="gmail.com" class="email_sub">gmail.com</option>
								<option value="nate.com" class="email_sub">nate.com</option>
								<option value="korea.kr" class="email_sub">korea.kr</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>휴대전화*</td>
						<td>
							<select name="mb_tel[]" id="number" <?php echo $required ?>>
								<option value="">선택</option>
								<?php for($i=10;$i<=19;$i++) { ?>
									<option value="<?php echo "0".$i ?>"><?php echo "0".$i ?></option>
								<?php } ?>
							</select> - 
							<input type="number" name="mb_tel[]" maxlength="4" id="number1" <?php echo $required ?>> - 
							<input type="number" name="mb_tel[]" maxlength="4" id="number2" <?php echo $required ?>>
						</td>
					</tr>
				</tbody>
			</table>
			<button type="submit" class="join-btn">회원가입</button>
			</form>
		</div>
		<!-- 회원가입 영역 끝 -->
		<script>
			$(function(){

				$("#email").change(function(){
					var email = $(this).val();
					$(".email_2").val(email);
				})

				$(".sid_chk").click(function(){
					if ($.trim($("#sid").val()) != "") {
						$.ajax({
							url:'./join_submit.php',
							type:'POST',
							data: {'sid':$("#sid").val()},
							dataType: 'html',
							success : function(data){
								if (data == "0") {
									alert("사용 가능합니다.");
								} else{
									alert("중복된 학번입니다.");
								}
							}
						})
					}
				})
			})
		</script>