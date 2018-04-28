		<div id="calander">
			<h2 class="sub_title">프로그램 진행사진</h2>
			<p class="sub_navi">Home > 센터소개 > 프로그램 시간표</p>
			<p class="sub-text"><img src="<?php echo G5_IMG_URL ?>/icon.jpg" alt="img"> 용인대학교 사회봉사센터 프로그램 시간표</p>
			<table id="calander-table">
				<caption>2018학년도 1학기(1/1~4/21)</caption>
				<colgroup>
					<col>
					<col>
					<col>
					<col>
					<col>
					<col>
				</colgroup>
				<thead>
					<tr>
						<th>시간</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>09:00 ~ 09:30</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>09:30 ~ 10:00</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>10:00 ~ 10:30</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>10:30 ~ 11:00</td>
						<td></td>
						<td class="active" rowspan="4">
							<p>뷰티케어1</p>
							<div>
								<p>(헤어)</p>
								<p>(10:30~12:30)</p>
								<p>[교육지원사업]</p>
							</div>
						</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>11:00 ~ 11:30</td>
						<td></td>
						
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>11:30 ~ 12:00</td>
						<td></td>
						
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>12:00 ~ 12:30</td>
						<td></td>
						
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>12:30 ~ 13:00</td>
						<td></td>
						<td class="active" rowspan="2">
							<p>SCI 동아리활동</p>
							<div>
								<p>(12:30~13:30)</p>
								<p>(6회)</p>
								<p class="date"><img src="<?php echo G5_IMG_URL ?>/calander.jpg" alt="img"> 9/26,10/17,10/31,11/14,11/28,12/5</p>
								<p>[커뮤니티사업]</p>
							</div>
						</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>13:00 ~ 13:30</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>13:30 ~ 14:00</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>14:00 ~ 14:30</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>14:30 ~ 15:00</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>15:00 ~ 15:30</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>15:30 ~ 16:00</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>16:00 ~ 16:30</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>16:30 ~ 17:00</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
	        <div class="calander_btn">
		        <?php if ($write_href) { ?>
		        	<li><a href="<?php echo $write_href ?>" class="btn_b02 btn"><i class="fa fa-pencil" aria-hidden="true"></i> 글쓰기</a></li>
		        <?php } ?>
		        <?php if ($update_href) { ?><li><a href="<?php echo $update_href ?>" class="btn_b01 btn"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> 수정</a></li><?php } ?>
		        <?php if ($delete_href) { ?><li><a href="<?php echo $delete_href ?>" class="btn_b01 btn" onclick="del(this.href); return false;"><i class="fa fa-trash-o" aria-hidden="true"></i> 삭제</a></li><?php } ?>
	        </div>
		</div>