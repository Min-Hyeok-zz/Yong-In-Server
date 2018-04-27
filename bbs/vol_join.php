<?php
	include_once("./_common.php");
	if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가 
	include_once(G5_PATH.'/_head.php');
	include_once(G5_PATH.'/sub_header.php');
	if (!isset($_GET['idx'])) alert("잘못된 접근입니다.");
	$list = $db->query("SELECT * FROM g5_write_recruitment where wr_id='{$_GET['idx']}'")->fetch();
	if ($list == "") alert("존재하지 않는 글입니다.");
?>
	<div id="club_join"><br>
		<h2 class="sub_title">봉사 신청</h2>
		<p class="sub_navi">모집공고 > 자원봉사자 모집 > 봉사 신청</p>
		<form action="./vol_update.php" method="post">
			<input type="hidden" name="idx" value="<?php echo $_GET['idx']; ?>">
			<table id="vol-join">
				<tbody class="vol-pc">
					<tr>
						<td>성명</td>
						<td>
							<input type="text" name="mb_name" placeholder="홍길동" required>
						</td>
						<td class="sub-td">성별</td>
						<td>
							<input type="radio" name="sex" value="남자" checked><label for="man">남자</label>
							<input type="radio" name="sex" value="여자"><label for="woman">여자</label>
						</td>
					</tr>
					<tr>
						<td>생년월일</td>
						<td>
							<select name="birthday[]" required>
								<option value="">선택</option>
								<?php for ($i=2000;$i>=1900;$i--){ ?>
									<option value="<?php echo $i ?>"><?php echo $i ?></option>
								<?php } ?>
							</select>
							<select name="birthday[]" required>
								<option value="">선택</option>
								<?php for ($i=1;$i<=12;$i++){ ?>
									<option value="<?php echo $i ?>"><?php echo $i ?></option>
								<?php } ?>
							</select>
							<select name="birthday[]" required>
								<option value="">선택</option>
								<?php for ($i=1;$i<=31;$i++){ ?>
									<option value="<?php echo $i ?>"><?php echo $i ?></option>
								<?php } ?>
							</select>
						</td>
						<td rowspan="2" class="sub-td">전화번호<br>(연락가능)</td>
						<td rowspan="2"><input type="text" name="tel" required></td>
					</tr>
					<tr>
						<td>VMS 아이디</td>
						<td><input type="text" name="vms" required></td>
					</tr>
					<tr>
						<td>이메일 주소</td>
						<td class="vol-email">
							<input type="text" name="email[]" required>
							&nbsp;<input type="hidden" name="email[]" value="@">@&nbsp;
							<input type="text" name="email[]" required>
						</td>
						<td class="sub-td">학번</td>
						<td><input type="text" name="sid" required></td>
					</tr>
					<tr>
						<td>대학</td>
						<td>
							<input type="text" name="sname" required>
						</td>
						<td class="sub-td">학과</td>
						<td>
							<input type="text" name="study" required>
						</td>
					</tr>
					<tr>
						<td>주소</td>
						<td colspan="3">
							<input type="text" name="address[]" required> 
							<input type="checkbox" name="address[]" id="company" value="company"><label for="company"> 직장</label>
							<input type="checkbox" name="address[]" id="home" value="home"><label for="home"> 자택</label>
							기타 <input type="text" name="address[]">
						</td>
					</tr>
				</tbody>
                <tbody class="vol_mobile">
                    <tr>
                        <td class="lbl"><label for="wr_subject">성명</label></td>
                        <td><input type="text" name="mb_name" placeholder="홍길동" required></td>
                    </tr>
                    <tr>
                        <td class="lbl"><label for="wr_content_1">성별</label></td>
                        <td>
							<input type="radio" name="sex" value="남자" checked><label for="">남자</label>
							<input type="radio" name="sex" value="여자"><label for="">여자</label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl"><label for="wr_content_2">생년월일</label></td>
                        <td>
							<select name="birthday[]" required>
								<option value="">선택</option>
								<?php for ($i=2000;$i>=1900;$i--){ ?>
									<option value="<?php echo $i ?>"><?php echo $i ?></option>
								<?php } ?>
							</select>
							<select name="birthday[]" required>
								<option value="">선택</option>
								<?php for ($i=1;$i<=12;$i++){ ?>
									<option value="<?php echo $i ?>"><?php echo $i ?></option>
								<?php } ?>
							</select>
							<select name="birthday[]" required>
								<option value="">선택</option>
								<?php for ($i=1;$i<=31;$i++){ ?>
									<option value="<?php echo $i ?>"><?php echo $i ?></option>
								<?php } ?>
							</select>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl"><label for="wr_content_4">전화번호<br>(연락가능)</label></td>
                        <td><input type="text" name="tel" required></td>
                    </tr>
                    <tr>
                        <td class="lbl"><label for="wr_content_5">VMS 아이디</label></td>
                        <td><input type="text" name="vms" required></td>
                    </tr>
                    <tr>
                        <td class="lbl"><label for="wr_content_6">이메일 주소</label></td>
                        <td>
							<input type="text" name="email[]" required>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl"><label for="wr_content_7">학번</label></td>
                        <td><input type="text" name="sid" required></td>
                    </tr>
                    <tr>
                        <td class="lbl"><label for="wr_content_8">대학</label></td>
                        <td><input type="text" name="sname" required></td>
                    </tr>
                    <tr>
                        <td class="lbl"><label for="wr_content_9">학과</label></td>
                        <td><input type="text" name="study" required></td>
                    </tr>
                    <tr>
                        <td class="lbl"><label for="wr_content_10">주소</label></td>
                        <td>
							<input type="text" name="address[]" required><br>
							<input type="checkbox" name="address[]" id="company" value="company"><label for="company"> 직장</label>
							<input type="checkbox" name="address[]" id="home" value="home"><label for="home"> 자택</label>
                        </td>
                    </tr>
                </tbody>
			</table>

			<table id="vol-join2">
				<tbody class="rec-pc">
					<tr>
						<td colspan="2" class="vol2-bg">자원봉사 경험</td>
						<td colspan="2">
							<input type="radio" name="exp" id="exp1" checked><label for="exp1"> 있음</label>
							<input type="radio" name="exp" id="exp2"><label for="exp2"> 없음</label>
						</td>
					</tr>
					<tr>
						<td rowspan="7" class="vol2-bg">봉사<br>활동<br>가능</td>
						<td class="vol2-bg">요일</td>
						<td colspan="2">
							<input type="checkbox" name="date[]" value="월"><label for="월"> 월</label>
							<input type="checkbox" name="date[]" value="화"><label for="화"> 화</label>
							<input type="checkbox" name="date[]" value="수"><label for="수"> 수</label>
							<input type="checkbox" name="date[]" value="목"><label for="목"> 목</label>
							<input type="checkbox" name="date[]" value="금"><label for="금"> 금</label>
							<input type="checkbox" name="date[]" value="토"><label for="토"> 토</label>
							<input type="checkbox" name="date[]" value="일"><label for="일"> 일</label>
							(중복선택가능)
						</td>
					</tr>
					<tr>
						<td class="vol2-bg">시간</td>
						<td colspan="2">
							<input type="checkbox" name="time[]" value="오전(00~12시)"><label for=""> 오전(00~12시)</label>
							<input type="checkbox" name="time[]" value="오후(12~18시)"><label for=""> 오후(12~18시)</label>
							<input type="checkbox" name="time[]" value="저녁(18~24시)"><label for=""> 저녁(18~24시)</label>
							<input type="checkbox" name="time[]" value="상시가능"><label for=""> 상시가능</label>
						</td>
					</tr>
					<tr>
						<td rowspan="5" class="vol2-bg vol2-bg1">분야</td>
						<td class="vol2-border">
							<input type="checkbox" name="facility" value="시설봉사"><label for=""> 시설봉사</label>
						</td>
						<td>
							<input type="checkbox" name="facility_sub[]" value="생활지원"><label for=""> 생활지원</label>
							<input type="checkbox" name="facility_sub[]" value="교육지원"><label for=""> 교육지원</label>
							<input type="checkbox" name="facility_sub[]" value="정서지원"><label for=""> 정서지원</label>
							<input type="checkbox" name="facility_sub[]" value="사회활동지원"><label for=""> 사회활동지원</label><br><br>
							<input type="checkbox" name="facility_sub[]" value="여가선용"><label for=""> 여가선용</label>
							<input type="checkbox" name="facility_sub[]" value="취업지원"><label for=""> 취업지원</label>
							<input type="checkbox" name="facility_sub[]" value="업무보조"><label for=""> 업무보조</label>
							<input type="checkbox" name="facility_sub[]" value="시설정비"><label for=""> 시설정비</label><br><br>
							<input type="checkbox" name="facility_sub[]" value="각종행사보조"><label for=""> 각종행사보조</label>
							<input type="checkbox" name="facility_sub[]" value="기타"><label for=""> 기타</label><input type="text" name="facility_sub[]">
						</td>
					</tr>
					<tr>
						<td class="vol2-border">
							<input type="checkbox" name="sanction" id="재가봉사" value="재가봉사"><label for="재가봉사"> 재가봉사</label>
						</td>
						<td>
							<input type="checkbox" name="sanction_sub[]" value="여가선용"><label for=""> 여가선용</label>
							<input type="checkbox" name="sanction_sub[]" value="취업지원"><label for=""> 취업지원</label>
							<input type="checkbox" name="sanction_sub[]" value="업무보조"><label for=""> 업무보조</label>
							<input type="checkbox" name="sanction_sub[]" value="시설정비"><label for=""> 시설정비</label><br><br>
							<input type="checkbox" name="sanction_sub[]" value="기타"><label for=""> 기타</label><input type="text" name="sanction_sub[]">
						</td>
					</tr>
					<tr>
						<td class="vol2-border">
							<input type="checkbox" name="pro" value="전문봉사"><label for=""> 전문봉사</label>
						</td>
						<td>
							<input type="checkbox" name="pro_sub[]" value="전문상담"><label for=""> 전문상담</label>
							<input type="checkbox" name="pro_sub[]" value="의료지원"><label for=""> 의료지원</label>
							<input type="checkbox" name="pro_sub[]" value="교육지원"><label for=""> 교육지원</label>
							<input type="checkbox" name="pro_sub[]" value="기술지원"><label for=""> 기술지원</label><br><br>
							<input type="checkbox" name="pro_sub[]" value="외국어지원"><label for=""> 외국어지원</label>
							<input type="checkbox" name="pro_sub[]" id="기타"><label for=""> 기타</label><input type="text" name="pro_sub[]">
						</td>
					</tr>
					<tr>
						<td class="vol2-border">
							<input type="checkbox" name="area" value="지역사회봉사"><label for=""> 지역사회봉사</label>
						</td>
						<td>
							<input type="checkbox" name="area_sub[]" value="환경보호"><label for="환경보호"> 환경보호</label>
							<input type="checkbox" name="area_sub[]" value="교통편익증진 및 교통환경개선"><label for="교통편익증진 및 교통환경개선"> 교통편익증진 및 교통환경개선</label><br><br>
							<input type="checkbox" name="area_sub[]" value="예술,문화향샹 등"><label for="예술,문화향샹 등"> 예술,문화향샹 등</label>
							<input type="checkbox" name="area_sub[]" value="생활체육, 스포츠이벤트"><label for="생활체육, 스포츠이벤트"> 생활체육, 스포츠이벤트</label><br><br>
							<input type="checkbox" name="area_sub[]" value="시민운동 및 조직활동"><label for="시민운동 및 조직활동"> 시민운동 및 조직활동</label>
							<input type="checkbox" name="area_sub[]" value="조사연구활동"><label for="조사연구활동"> 조사연구활동</label><br><br>
							<input type="checkbox" name="area_sub[]("value="현장활동(농촌봉사, 재해복구현장지원 등)"><label for="현장활동(농촌봉사, 재해복구현장지원 등)"> 현장활동(농촌봉사, 재해복구현장지원 등)</label><br><br>
							<input type="checkbox" name="area_sub[]" value="민원안내"><label for="민원안내"> 민원안내</label>
							<input type="checkbox" name="area_sub[]" value="사무지원"><label for="사무지원"> 사무지원</label><br><br>
							<input type="checkbox" name="area_sub[]" value="기타"><label for=""> 기타</label><input type="text" name="area_sub[]">
						</td>
					</tr>
					<tr>
						<td class="vol2-border">
							<input type="checkbox" name="another" value="기타봉사"><label for=""> 기타봉사</label>
						</td>
						<td>
							<input type="checkbox" name="abroad" value="해외봉사"><label for="해외봉사"> 해외봉사</label>
							<input type="checkbox" name="abroad_sub[]" value="기타"><label for=""> 기타</label><input type="text" name="abroad_sub[]">
						</td>
					</tr>
				</tbody>
				<tbody class="vol2_mobile">
					<tr>
						<td class="lbl">자원봉사 경험</td>
						<td colspan="2">
							<input type="radio" name="exp" id="exp1" checked><label for="exp1"> 있음</label>
							<input type="radio" name="exp" id="exp2"><label for="exp2"> 없음</label>
						</td>
					</tr>
					<tr>
						<td class="lbl">요일</td>
						<td colspan="2">
							<label for=""><input type="checkbox" name="date[]" value="월"> 월</label>
							<label for=""><input type="checkbox" name="date[]" value="화"> 화</label>
							<label for=""><input type="checkbox" name="date[]" value="수"> 수</label>
							<label for=""><input type="checkbox" name="date[]" value="목"> 목</label>
							<label for=""><input type="checkbox" name="date[]" value="금"> 금</label>
							<label for=""><input type="checkbox" name="date[]" value="토"> 토</label>
							<label for=""><input type="checkbox" name="date[]" value="일"> 일</label>
							(중복선택가능)
						</td>
					</tr>
					<tr>
						<td class="lbl">시간</td>
						<td colspan="2">
							<label for=""><input type="checkbox" name="time[]" value="오전(00~12시)"> 오전(00~12시)</label>
							<label for=""><input type="checkbox" name="time[]" value="오후(12~18시)"> 오후(12~18시)</label>
							<label for=""><input type="checkbox" name="time[]" value="저녁(18~24시)"> 저녁(18~24시)</label>
							<label for=""><input type="checkbox" name="time[]" value="상시가능"> 상시가능</label>
						</td>
					</tr>
					<tr>
						<td rowspan="5" class="lbl">분야</td>
						<td class="vol2-border">
							<input type="checkbox" name="facility" value="시설봉사"><label for=""> 시설봉사</label>
						</td>
						<td>
							<label for=""><input type="checkbox" name="facility_sub[]" value="생활지원"> 생활지원</label>
							<label for=""><input type="checkbox" name="facility_sub[]" value="교육지원"> 교육지원</label>
							<label for=""><input type="checkbox" name="facility_sub[]" value="정서지원"> 정서지원</label>
							<label for=""><input type="checkbox" name="facility_sub[]" value="사회활동지원"> 사회활동지원</label>
							<label for=""><input type="checkbox" name="facility_sub[]" value="여가선용"> 여가선용</label>
							<label for=""><input type="checkbox" name="facility_sub[]" value="취업지원"> 취업지원</label>
							<label for=""><input type="checkbox" name="facility_sub[]" value="업무보조"> 업무보조</label>
							<label for=""><input type="checkbox" name="facility_sub[]" value="시설정비"> 시설정비</label>
							<label for=""><input type="checkbox" name="facility_sub[]" value="각종행사보조"> 각종행사보조</label>
							<label for=""><input type="checkbox" name="facility_sub[]" value="기타"> 기타</label><input type="text" name="facility_sub[]">
						</td>
					</tr>
					<tr>
						<td class="vol2-border">
							<input type="checkbox" name="sanction" id="재가봉사"><label for="재가봉사"> 재가봉사</label>
						</td>
						<td>
							<label for=""><input type="checkbox" name="sanction_sub[]" value="여가선용"> 여가선용</label>
							<label for=""><input type="checkbox" name="sanction_sub[]" value="취업지원"> 취업지원</label>
							<label for=""><input type="checkbox" name="sanction_sub[]" value="업무보조"> 업무보조</label>
							<label for=""><input type="checkbox" name="sanction_sub[]" value="시설정비"> 시설정비</label>
							<label for=""><input type="checkbox" name="sanction_sub[]" value="기타"> 기타</label><input type="text" name="sanction_sub[]">
						</td>
					</tr>
					<tr>
						<td class="vol2-border">
							<input type="checkbox" name="pro" value="전문봉사"><label for=""> 전문봉사</label>
						</td>
						<td>
							<label for=""><input type="checkbox" name="pro_sub[]" value="전문상담"> 전문상담</label>
							<label for=""><input type="checkbox" name="pro_sub[]" value="의료지원"> 의료지원</label>
							<label for=""><input type="checkbox" name="pro_sub[]" value="교육지원"> 교육지원</label>
							<label for=""><input type="checkbox" name="pro_sub[]" value="기술지원"> 기술지원</label>
							<label for=""><input type="checkbox" name="pro_sub[]" value="외국어지원"> 외국어지원</label>
							<label for=""><input type="checkbox" name="pro_sub[]" id="기타"> 기타</label><input type="text" name="pro_sub[]">
						</td>
					</tr>
					<tr>
						<td class="vol2-border">
							<input type="checkbox" name="area" value="지역사회봉사"><label for=""> 지역사회봉사</label>
						</td>
						<td>
							<label for="환경보호"><input type="checkbox" name="area_sub[]" value="환경보호"> 환경보호</label>
							<label for="교통편익증진 및 교통환경개선"><input type="checkbox" name="area_sub[]" value="교통편익증진 및 교통환경개선"> 교통편익증진 및 교통환경개선</label>
							<label for="예술,문화향샹 등"><input type="checkbox" name="area_sub[]" value="예술,문화향샹 등"> 예술,문화향샹 등</label>
							<label for="생활체육, 스포츠이벤트"><input type="checkbox" name="area_sub[]" value="생활체육, 스포츠이벤트"> 생활체육, 스포츠이벤트</label>
							<label for="시민운동 및 조직활동"><input type="checkbox" name="area_sub[]" value="시민운동 및 조직활동"> 시민운동 및 조직활동</label>
							<label for="조사연구활동"><input type="checkbox" name="area_sub[]" value="조사연구활동"> 조사연구활동</label>
							<label for="현장활동(농촌봉사, 재해복구현장지원 등)"><input type="checkbox" name="area_sub[]("value="현장활동(농촌봉사, 재해복구현장지원 등)"> 현장활동(농촌봉사, 재해복구현장지원 등)</label>
							<label for="민원안내"><input type="checkbox" name="area_sub[]" value="민원안내"> 민원안내</label>
							<label for="사무지원"><input type="checkbox" name="area_sub[]" value="사무지원"> 사무지원</label>
							<label for=""><input type="checkbox" name="area_sub[]" value="기타"> 기타</label><input type="text" name="area_sub[]">
						</td>
					</tr>
					<tr>
						<td class="vol2-border">
							<label for=""><input type="checkbox" name="another" value="기타봉사"> 기타봉사</label>
						</td>
						<td>
							<label for="해외봉사"><input type="checkbox" name="abroad" value="해외봉사"> 해외봉사</label>
							<label for=""><input type="checkbox" name="abroad_sub[]" value="기타"> 기타</label><input type="text" name="abroad_sub[]">
						</td>
					</tr>
				</tbody>
			</table>
			<div class="vol_btn_group">
				<button type="submit" class="vol-btn">신청</button>
				<button type="button" class="vol-btn" onclick="if(confirm('취소하시겠습니까?') == true) history.back();">취소</button>
			</div>
		</form>
	</div>
<?php
	include_once(G5_PATH.'/_tail.php');
	include_once(G5_PATH.'/tail.sub.php');
?>
<script>
	$(function(){
		var vol_pc = $(".vol-pc").html();
		var rec_pc = $(".rec-pc").html();
		var vol_mobile = $(".vol_mobile").html();
		var vol_mobile2 = $(".vol2_mobile").html();
		var cnt = 0;
		function resize(){
			var width = $(window).width();
			console.log(width);
			if (cnt == 0) {
				if (width > 983) {
					console.log('pc레이아웃 입니다');
					$(".vol_mobile > *").remove();
					$(".vol2_mobile > *").remove();
					$(".vol-pc > *").remove();
					$(".rec-pc > *").remove();
					$(".vol-pc").append(vol_pc);
					$(".rec-pc").append(rec_pc);
					cnt = 1;
				}
			}
			if (cnt == 1) {
				if (width <= 983) {
					console.log('모바일 레이아웃 입니다.');
					$(".vol_mobile > *").remove();
					$(".vol2_mobile > *").remove();
					$(".vol-pc > *").remove();
					$(".rec-pc > *").remove();
					$(".vol_mobile").append(vol_mobile);
					$(".vol2_mobile").append(vol_mobile2);
					cnt = 0;
				}
			}
		}
		resize();
		$(window).resize(resize);
	})
</script>