<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

// 선택옵션으로 인해 셀합치기가 가변적으로 변함
$colspan = 5;

if ($is_checkbox) $colspan++;
if ($is_good) $colspan++;
if ($is_nogood) $colspan++;

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$board_skin_url.'/style.css">', 0);
if (!isset($_GET['sca'])) {
    echo "<script>location.href='/'</script>";
}
$notice = $db->query("SELECT * FROM g5_write_{$bo_table} where ca_name='공지'")->fetchAll();
$total = count($list);
switch ($bo_table) {
    case 'recruitment':
        $location = "모집공고 > {$_GET['sca']}";
    break;
    case 'vlt':
        $location = "수업게시판 > {$_GET['sca']}";
    break;
    case 'qna':
        $location = "Q&A > {$_GET['sca']}";
    break;
}
?>
        <div id="volunteer">
            <h2 class="sub_title"><?php echo $_REQUEST['sca']; ?></h2>
            <p class="sub_navi">Home > <?php echo $location ?></p>
            <div class="board-top">
                <div>
                    <div><?php print_r($top_content); ?></div>
                    <?php if($bo_table == "recruitment") echo "<p>※ 신청 및 문의사항은  031-8020-3398 로 연락바랍니다.</p>"; ?>
                </div>
            </div>
            <table id="club-table">
            <form name="fsearch" method="get">
                <input type="hidden" name="bo_table" value="<?php echo $bo_table ?>">
                <input type="hidden" name="sca" value="<?php echo $sca ?>">
                <input type="hidden" name="sop" value="and">
                <div class="photo-search">
                    검색 옵션 선택
                    <select name="sf1" id="photo-type">
                        <option value="wr_subject"<?php echo get_selected($sfl, 'wr_subject', true); ?>>제목</option>
                        <option value="wr_content"<?php echo get_selected($sfl, 'wr_content'); ?>>내용</option>
                        <option value="wr_subject||wr_content"<?php echo get_selected($sfl, 'wr_subject||wr_content'); ?>>제목+내용</option>
                    </select>
                    <input type="text" name="stx" value="<?php echo $_GET['stx'] ?>">
                    <button type="submit">검색</button>
                </div>
            </form>
                <caption>
                    <p>총 <span><?php echo $total; ?></span>개의 게시물이 있습니다.</p>
                </caption>
                <colgroup class="list-none">
                    <col width="7%">
                    <col width="7%">
                    <col width="49%">
                    <col width="9%">
                    <col width="10%">
                    <col width="12%">
                    <col width="6%">
                </colgroup>
                <thead>
                    <th class="th1">&nbsp;번호&nbsp;</th>
                    <th class="th2">&nbsp;상태&nbsp;</th>
                    <th class="th3">제목</th>
                    <th class="list-none">첨부</th>
                    <th class="th4">&nbsp;&nbsp;작성자&nbsp;&nbsp;</th>
                    <th class="list-none">&nbsp;&nbsp;작성일&nbsp;&nbsp;</th>
                    <th class="list-none">조회</th>
                </thead>
                <tbody>
                    <?php foreach ($notice as $data): ?>
                    <tr class="notice">
                        <td><?php echo $data['ca_name']; ?></td>
                        <td>
                            <?php if ($data['wr_good'] == 0): ?>
                                <?php echo "진행"; ?>
                            <?php else: ?>
                                <?php echo "완료"; ?>
                            <?php endif ?>
                        </td>
                        <td><a href="<?php echo G5_BBS_URL."/board.php?bo_table={$bo_table}&sca={$_GET['sca']}&wr_id={$data['wr_id']}" ?>"><?php echo mb_substr($data['wr_subject'], 0,30); ?></a></td>
                        <td class="list-none">
                            <?php
                                $chk = $data['wr_file'];
                                if ($chk > 2) $chk = 2;
                                for ($i=0; $i < $chk; $i++) { 
                                    echo "<img src='".G5_IMG_URL."/hw.jpg' alt='img'> ";
                                }
                            ?>
                        </td>
                        <td><?php echo $data['wr_name']; ?></td>
                        <td class="list-none"><?php echo mb_substr($data['wr_datetime'], 0,10); ?></td>
                        <td class="list-none"><?php echo $data['wr_hit']; ?></td>
                    </tr>
                    <?php endforeach ?>
                    <?php for ($i=0,$len=count($list);$i<$len;$i++){
                        $data = $list[$i];
                    ?>
                    <tr>
                        <td><?php echo $data['wr_id']; ?></td>
                        <td>
                            <?php if ($data['wr_good'] == 0): ?>
                                <?php echo "진행"; ?>
                            <?php else: ?>
                                <?php echo "완료"; ?>
                            <?php endif ?>
                        </td>
                        <td><a href="<?php echo G5_BBS_URL."/board.php?bo_table={$bo_table}&sca={$_GET['sca']}&wr_id={$data['wr_id']}" ?>"><?php
                            $cnt = "";
                            if (strlen($data['wr_subject']) > 35) $cnt .= "...";
                            echo mb_substr($data['wr_subject'], 0, 25).$cnt; ?>        
                        </a></td>
                        <td class="list-none">
                            <?php
                                $fnt = $data['wr_file'];
                                if ($fnt > 2) $fnt = 2;
                                for ($j=0; $j < $fnt; $j++) { 
                                    echo "<img src='".G5_IMG_URL."/hw.jpg' alt='img'> ";
                                }
                            ?>
                        <td><?php echo $data['wr_name']; ?></td>
                        <td class="list-none"><?php echo mb_substr($data['wr_datetime'], 0,10); ?></td>
                        <td class="list-none"><?php echo number_format($data['wr_hit']); ?></td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
            <?php
            echo $write_pages;
            ?>
            <?php if ($is_member): ?>
                <button type="button" onclick="location.href='<?php echo G5_BBS_URL."/write.php?bo_table={$bo_table}" ?>&sca=<?php echo $_GET['sca'] ?>'" class="write_btn">글작성</button>
            <?php endif ?>

        </div>
        
    </div>