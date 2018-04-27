<?php
	include_once("./_common.php");
	function com_arr_return($arr){
		$cnt = count($arr);
		$name = "";
		$com = "";
		if ($arr[1] != "@") $com .= ",";
		for ($i=0; $i < $cnt; $i++) { 
			if ($i == 0) {
				$name .= $arr[$i];
			} else {
				$name .= $com.$arr[$i];
			}
		}
		return $name;
	}
	if (!$is_member) alert("회원만 접근할 수 있습니다.");
	$midx = $_POST['idx'];
	$mb_birthday = com_arr_return($_POST['birthday']);
	$mb_id = $_SESSION['ss_mb_id'];
	$mb_name = $_POST['mb_name'];
	$mb_sex = $_POST['sex'];
	$mb_tel = $_POST['tel'];
	$mb_vms = $_POST['vms'];
	$mb_email = com_arr_return($_POST['email']);
	$mb_sid = $_POST['sid'];
	$mb_sname = $_POST['sname'];
	$mb_study = $_POST['study'];
	$mb_address = com_arr_return($_POST['address']);
	$vol_exp = $_POST['exp'];
	$vol_date = com_arr_return($_POST['date']);
	$vol_time = com_arr_return($_POST['time']);
	$vol_facility = $_POST['facility'];
	$vol_facility_sub = com_arr_return($_POST['facility_sub']);
	$vol_sanction = $_POST['sanction'];
	$vol_sanction_sub = com_arr_return($_POST['sanction_sub']);
	$vol_pro = $_POST['pro'];
	$vol_pro_sub = com_arr_return($_POST['pro_sub']);
	$vol_area = $_POST['area'];
	$vol_area_sub = com_arr_return($_POST['area_sub']);
	$vol_another = $_POST['another'];
	$vol_abroad_sub = com_arr_return($_POST['abroad_sub']);

	$chk = $db->query("SELECT * FROM g5_write_vol_apply where mb_id='{$_SESSION['ss_mb_id']}' and midx='{$midx}'")->fetch();
	if ($chk != "") alert("이미 신청하셨습니다.");

	$wr_subject = $db->query("SELECT wr_subject FROM g5_write_recruitment where wr_id='{$midx}'")->fetch();
	$wr_subject = $wr_subject[0];
	
	$sql = "
		INSERT INTO g5_write_vol_apply set
	 			  midx = '{$midx}',
	 	    wr_subject = '{$wr_subject}',
	 			 mb_id = '{$mb_id}',
			   mb_name = '{$mb_name}',
				mb_sex = '{$mb_sex}',
		   mb_birthday = '{$mb_birthday}',
				mb_tel = '{$mb_tel}',
			  	mb_vms = '{$mb_vms}',
			  mb_email = '{$mb_email}',
			  	mb_sid = '{$mb_sid}',
			  mb_sname = '{$mb_sname}',
			  mb_study = '{$mb_study}',
		    mb_address = '{$mb_address}',
			   vol_exp = '{$vol_exp}',
			  vol_date = '{$vol_date}',
			  vol_time = '{$vol_time}',
		  vol_facility = '{$vol_facility}',
	  vol_facility_sub = '{$vol_facility_sub}',
		  vol_sanction = '{$vol_sanction}',
	  vol_sanction_sub = '{$vol_sanction_sub}',
	           vol_pro = '{$vol_pro}',
		   vol_pro_sub = '{$vol_pro_sub}',
			  vol_area = '{$vol_area}',
		  vol_area_sub = '{$vol_area_sub}',
		   vol_another = '{$vol_another}',
	    vol_abroad_sub = '{$vol_abroad_sub}'
	";
	
	$db->query($sql);
	alert("정상적으로 신청되었습니다.",G5_BBS_URL."/board.php?bo_table=recruitment&sca=자원봉사자 모집");