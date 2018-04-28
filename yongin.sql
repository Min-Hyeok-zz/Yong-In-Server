-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 18-04-28 10:50
-- 서버 버전: 10.1.31-MariaDB
-- PHP 버전: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `yongin`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_auth`
--

CREATE TABLE `g5_auth` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `au_menu` varchar(20) NOT NULL DEFAULT '',
  `au_auth` set('r','w','d') NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_autosave`
--

CREATE TABLE `g5_autosave` (
  `as_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL,
  `as_uid` bigint(20) UNSIGNED NOT NULL,
  `as_subject` varchar(255) NOT NULL,
  `as_content` text NOT NULL,
  `as_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board`
--

CREATE TABLE `g5_board` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `bo_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `bo_admin` varchar(255) NOT NULL DEFAULT '',
  `bo_list_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_write_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_reply_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_comment_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_upload_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_download_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_html_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_link_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_delete` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_modify` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_point` int(11) NOT NULL DEFAULT '0',
  `bo_write_point` int(11) NOT NULL DEFAULT '0',
  `bo_comment_point` int(11) NOT NULL DEFAULT '0',
  `bo_download_point` int(11) NOT NULL DEFAULT '0',
  `bo_use_category` tinyint(4) NOT NULL DEFAULT '0',
  `bo_category_list` text NOT NULL,
  `bo_use_sideview` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_file_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_secret` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_dhtml_editor` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_rss_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_good` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_nogood` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_name` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_ip_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_file` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_table_width` int(11) NOT NULL DEFAULT '0',
  `bo_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_new` int(11) NOT NULL DEFAULT '0',
  `bo_hot` int(11) NOT NULL DEFAULT '0',
  `bo_image_width` int(11) NOT NULL DEFAULT '0',
  `bo_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_include_head` varchar(255) NOT NULL DEFAULT '',
  `bo_include_tail` varchar(255) NOT NULL DEFAULT '',
  `bo_content_head` text NOT NULL,
  `bo_mobile_content_head` text NOT NULL,
  `bo_content_tail` text NOT NULL,
  `bo_mobile_content_tail` text NOT NULL,
  `bo_insert_content` text NOT NULL,
  `bo_gallery_cols` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_upload_size` int(11) NOT NULL DEFAULT '0',
  `bo_reply_order` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_search` tinyint(4) NOT NULL DEFAULT '0',
  `bo_order` int(11) NOT NULL DEFAULT '0',
  `bo_count_write` int(11) NOT NULL DEFAULT '0',
  `bo_count_comment` int(11) NOT NULL DEFAULT '0',
  `bo_write_min` int(11) NOT NULL DEFAULT '0',
  `bo_write_max` int(11) NOT NULL DEFAULT '0',
  `bo_comment_min` int(11) NOT NULL DEFAULT '0',
  `bo_comment_max` int(11) NOT NULL DEFAULT '0',
  `bo_notice` text NOT NULL,
  `bo_upload_count` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_cert` enum('','cert','adult','hp-cert','hp-adult') NOT NULL DEFAULT '',
  `bo_use_sns` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_captcha` tinyint(4) NOT NULL DEFAULT '0',
  `bo_sort_field` varchar(255) NOT NULL DEFAULT '',
  `bo_1_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_2_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_3_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_4_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_5_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_6_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_7_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_8_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_9_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_10_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_1` varchar(255) NOT NULL DEFAULT '',
  `bo_2` varchar(255) NOT NULL DEFAULT '',
  `bo_3` varchar(255) NOT NULL DEFAULT '',
  `bo_4` varchar(255) NOT NULL DEFAULT '',
  `bo_5` varchar(255) NOT NULL DEFAULT '',
  `bo_6` varchar(255) NOT NULL DEFAULT '',
  `bo_7` varchar(255) NOT NULL DEFAULT '',
  `bo_8` varchar(255) NOT NULL DEFAULT '',
  `bo_9` varchar(255) NOT NULL DEFAULT '',
  `bo_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_board`
--

INSERT INTO `g5_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_mobile_subject`, `bo_device`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_use_rss_view`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_list_view`, `bo_use_list_file`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_mobile_subject_len`, `bo_page_rows`, `bo_mobile_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_mobile_skin`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_mobile_content_head`, `bo_content_tail`, `bo_mobile_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_gallery_width`, `bo_gallery_height`, `bo_mobile_gallery_width`, `bo_mobile_gallery_height`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_use_cert`, `bo_use_sns`, `bo_use_captcha`, `bo_sort_field`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`) VALUES
('vlt', 'community', '수업 게시판', '', 'both', '', 1, 1, 10, 10, 2, 10, 1, 10, 10, 1, 1, 0, 0, 0, 0, 1, '자원봉사자론 1|자원봉사자론 2|자원봉사자론 3', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 15, 15, 24, 100, 835, 'basic', 'basic', '_head.php', '_tail.php', '<p>＂자원봉사 수업과 연계해서 활용하는 게시판 입니다.”</p>', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 0, 0, 2, 0, 0, 0, 0, 0, '28', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('gallery', 'community', '프로그램 진행사진', '', 'both', '', 1, 1, 10, 10, 2, 10, 1, 10, 10, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 15, 15, 24, 100, 835, 'gallery', 'gallery', '_head.php', '_tail.php', '<p>“사회봉사센터의&nbsp; 프로그램과 일상을 기록합니다.”<br></p>', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 0, 0, 6, 0, 0, 0, 0, 0, '', 1, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('recruitment', 'community', '모집 공고', '', 'both', '', 1, 1, 2, 2, 2, 2, 1, 10, 2, 1, 1, 0, 0, 0, 0, 1, '동아리 모집|자원봉사자 모집', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 15, 15, 24, 100, 835, 'recruitment', 'basic', '_head.php', '_tail.php', '\"학생들의 봉사정신을 함양하고 지역사회 어르신의 행복한 노후를 지원하기 위해 다양한 학문적 자원을 연계한 창의력 복지서비스를 제공하고자 합니다.\"', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 0, 0, 5, 3, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('qna', 'community', '수업 Q&A', '', 'both', '', 1, 1, 2, 2, 2, 2, 1, 10, 2, 1, 1, 0, 0, 0, 0, 1, '수업 QnA|자원봉사자 QnA', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 10, 15, 24, 100, 835, 'basic', 'basic', '_head.php', '_tail.php', '\"수업 Q&amp;A 게시판 입니다.\"', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 0, 0, 11, 2, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('calander', 'community', '프로그램 시간표', '', 'both', '', 1, 1, 10, 10, 1, 10, 1, 10, 10, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 15, 15, 24, 100, 600, 'calander', 'basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 0, 0, 1, 0, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board_file`
--

CREATE TABLE `g5_board_file` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `bf_no` int(11) NOT NULL DEFAULT '0',
  `bf_source` varchar(255) NOT NULL DEFAULT '',
  `bf_file` varchar(255) NOT NULL DEFAULT '',
  `bf_download` int(11) NOT NULL,
  `bf_content` text NOT NULL,
  `bf_filesize` int(11) NOT NULL DEFAULT '0',
  `bf_width` int(11) NOT NULL DEFAULT '0',
  `bf_height` smallint(6) NOT NULL DEFAULT '0',
  `bf_type` tinyint(4) NOT NULL DEFAULT '0',
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_board_file`
--

INSERT INTO `g5_board_file` (`bo_table`, `wr_id`, `bf_no`, `bf_source`, `bf_file`, `bf_download`, `bf_content`, `bf_filesize`, `bf_width`, `bf_height`, `bf_type`, `bf_datetime`) VALUES
('qna', 16, 0, 'head.php', '0_3e7oLWfV_9a2f5deba2605365270f19d97962ceef146e55dd.php-x', 2, '', 613, 0, 0, 0, '2018-04-20 19:43:28'),
('qna', 16, 1, 'index.php', '0_9OJN0UFA_b130f6a97bc6927749d6c0d6383f0d985efd8bfe.php-x', 0, '', 382, 0, 0, 0, '2018-04-20 19:43:28'),
('vlt', 29, 0, 'config.php', '2130706433_fhQzpV0W_c41a2a689f08f1666b708c785f5ded1d16ad30d2.php-x', 2, '', 8364, 0, 0, 0, '2018-04-21 17:20:36'),
('gallery', 1, 0, '365.jpg', '2130706433_maHOYkN6_bf83bbc243b6f9aa0e3ec915a19ac82735b91d63.jpg', 0, '', 34361, 325, 211, 2, '2018-04-21 17:21:50'),
('gallery', 2, 0, 'beauty1.jpg', '0_7P3b01fA_6e9556050256bd56f422eaf90abdf4db44b72a0f.jpg', 0, '', 40623, 325, 211, 2, '2018-04-24 18:46:28'),
('gallery', 3, 0, 'beauty2.jpg', '0_JhrBMFP6_6ca01a6edc3ddbf87225c4ae62a4d2b4ddb536b1.jpg', 0, '', 54797, 325, 211, 2, '2018-04-24 18:46:42'),
('gallery', 4, 0, 'beauty3.jpg', '0_CK97tV8i_ed45e3f8e99e6dafeb457545196af46f5c5a0f22.jpg', 0, '', 46302, 325, 211, 2, '2018-04-24 18:46:56'),
('gallery', 5, 0, 'ever.jpg', '0_G3ZSrHQz_2d0dcc27c95d516d9f3c593e1fef0ce75e8e4e6e.jpg', 0, '', 42761, 325, 211, 2, '2018-04-24 18:48:30'),
('gallery', 6, 0, 'image9.jpg', '0_TuoycGOs_9f13d7a3c8886464e9a478aa16c754dbfc66c972.jpg', 0, '', 370563, 1920, 1080, 2, '2018-04-24 20:54:20');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board_good`
--

CREATE TABLE `g5_board_good` (
  `bg_id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bg_flag` varchar(255) NOT NULL DEFAULT '',
  `bg_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board_new`
--

CREATE TABLE `g5_board_new` (
  `bn_id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `bn_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_id` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_board_new`
--

INSERT INTO `g5_board_new` (`bn_id`, `bo_table`, `wr_id`, `wr_parent`, `bn_datetime`, `mb_id`) VALUES
(66, 'qna', 15, 15, '2018-04-20 18:26:03', 'admin'),
(67, 'qna', 16, 16, '2018-04-20 19:43:28', 'admin'),
(69, 'qna', 18, 18, '2018-04-20 22:34:03', 'admin'),
(70, 'qna', 19, 19, '2018-04-20 22:34:27', 'admin'),
(103, 'recruitment', 11, 1, '2018-04-22 23:30:04', 'admin'),
(102, 'recruitment', 10, 1, '2018-04-22 23:29:49', 'admin'),
(75, 'qna', 21, 21, '2018-04-21 01:33:05', 'admin'),
(80, 'vlt', 28, 28, '2018-04-21 12:31:15', 'admin'),
(81, 'qna', 22, 22, '2018-04-21 15:10:54', 'admin'),
(82, 'qna', 23, 21, '2018-04-21 15:48:37', 'admin'),
(83, 'qna', 24, 21, '2018-04-21 15:48:41', 'admin'),
(86, 'recruitment', 0, 0, '2018-04-21 16:48:31', 'admin'),
(87, 'recruitment', 0, 0, '2018-04-21 16:49:17', 'admin'),
(88, 'recruitment', 0, 0, '2018-04-21 16:53:04', 'admin'),
(89, 'recruitment', 0, 0, '2018-04-21 16:53:13', 'admin'),
(90, 'recruitment', 1, 1, '2018-04-21 16:54:01', 'admin'),
(104, 'recruitment', 12, 12, '2018-04-22 23:43:27', 'admin'),
(101, 'recruitment', 9, 9, '2018-04-22 20:24:06', 'admin'),
(93, 'vlt', 29, 29, '2018-04-21 17:20:36', 'admin'),
(94, 'gallery', 1, 1, '2018-04-21 17:21:50', 'admin'),
(95, 'recruitment', 4, 1, '2018-04-22 00:14:45', 'admin'),
(99, 'qna', 27, 27, '2018-04-22 00:26:32', 'admin'),
(105, 'recruitment', 13, 13, '2018-04-23 12:00:03', 'admin'),
(106, 'recruitment', 14, 14, '2018-04-23 19:49:12', 'admin'),
(107, 'gallery', 2, 2, '2018-04-24 18:46:28', 'admin'),
(108, 'gallery', 3, 3, '2018-04-24 18:46:42', 'admin'),
(109, 'gallery', 4, 4, '2018-04-24 18:46:56', 'admin'),
(110, 'gallery', 5, 5, '2018-04-24 18:48:30', 'admin'),
(111, 'gallery', 6, 6, '2018-04-24 20:54:20', 'admin'),
(112, 'qna', 28, 28, '2018-04-24 21:06:07', 'rlatpdnr01'),
(113, 'qna', 29, 29, '2018-04-24 21:07:23', 'rlatpdnr01'),
(114, 'qna', 30, 30, '2018-04-24 21:10:29', 'rlatpdnr01'),
(115, 'qna', 31, 31, '2018-04-25 16:43:14', 'test'),
(118, 'calander', 1, 1, '2018-04-28 15:34:30', 'admin');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_cert_history`
--

CREATE TABLE `g5_cert_history` (
  `cr_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `cr_company` varchar(255) NOT NULL DEFAULT '',
  `cr_method` varchar(255) NOT NULL DEFAULT '',
  `cr_ip` varchar(255) NOT NULL DEFAULT '',
  `cr_date` date NOT NULL DEFAULT '0000-00-00',
  `cr_time` time NOT NULL DEFAULT '00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_config`
--

CREATE TABLE `g5_config` (
  `cf_title` varchar(255) NOT NULL DEFAULT '',
  `cf_theme` varchar(255) NOT NULL DEFAULT '',
  `cf_admin` varchar(255) NOT NULL DEFAULT '',
  `cf_admin_email` varchar(255) NOT NULL DEFAULT '',
  `cf_admin_email_name` varchar(255) NOT NULL DEFAULT '',
  `cf_add_script` text NOT NULL,
  `cf_use_point` tinyint(4) NOT NULL DEFAULT '0',
  `cf_point_term` int(11) NOT NULL DEFAULT '0',
  `cf_use_copy_log` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_email_certify` tinyint(4) NOT NULL DEFAULT '0',
  `cf_login_point` int(11) NOT NULL DEFAULT '0',
  `cf_cut_name` tinyint(4) NOT NULL DEFAULT '0',
  `cf_nick_modify` int(11) NOT NULL DEFAULT '0',
  `cf_new_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_new_rows` int(11) NOT NULL DEFAULT '0',
  `cf_search_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_connect_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_faq_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_read_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_point` int(11) NOT NULL DEFAULT '0',
  `cf_comment_point` int(11) NOT NULL DEFAULT '0',
  `cf_download_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_pages` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_pages` int(11) NOT NULL DEFAULT '0',
  `cf_link_target` varchar(255) NOT NULL DEFAULT '',
  `cf_delay_sec` int(11) NOT NULL DEFAULT '0',
  `cf_filter` text NOT NULL,
  `cf_possible_ip` text NOT NULL,
  `cf_intercept_ip` text NOT NULL,
  `cf_analytics` text NOT NULL,
  `cf_add_meta` text NOT NULL,
  `cf_syndi_token` varchar(255) NOT NULL,
  `cf_syndi_except` text NOT NULL,
  `cf_member_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_use_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_point` int(11) NOT NULL DEFAULT '0',
  `cf_icon_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_recommend` tinyint(4) NOT NULL DEFAULT '0',
  `cf_recommend_point` int(11) NOT NULL DEFAULT '0',
  `cf_leave_day` int(11) NOT NULL DEFAULT '0',
  `cf_search_part` int(11) NOT NULL DEFAULT '0',
  `cf_email_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_group_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_board_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_write` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_comment_all` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_po_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_prohibit_id` text NOT NULL,
  `cf_prohibit_email` text NOT NULL,
  `cf_new_del` int(11) NOT NULL DEFAULT '0',
  `cf_memo_del` int(11) NOT NULL DEFAULT '0',
  `cf_visit_del` int(11) NOT NULL DEFAULT '0',
  `cf_popular_del` int(11) NOT NULL DEFAULT '0',
  `cf_optimize_date` date NOT NULL DEFAULT '0000-00-00',
  `cf_use_member_icon` tinyint(4) NOT NULL DEFAULT '0',
  `cf_member_icon_size` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_width` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_height` int(11) NOT NULL DEFAULT '0',
  `cf_member_img_size` int(11) NOT NULL DEFAULT '0',
  `cf_member_img_width` int(11) NOT NULL DEFAULT '0',
  `cf_member_img_height` int(11) NOT NULL DEFAULT '0',
  `cf_login_minutes` int(11) NOT NULL DEFAULT '0',
  `cf_image_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_formmail_is_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_visit` varchar(255) NOT NULL DEFAULT '',
  `cf_max_po_id` int(11) NOT NULL DEFAULT '0',
  `cf_stipulation` text NOT NULL,
  `cf_privacy` text NOT NULL,
  `cf_open_modify` int(11) NOT NULL DEFAULT '0',
  `cf_memo_send_point` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_new_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_search_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_connect_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_faq_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_member_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_captcha_mp3` varchar(255) NOT NULL DEFAULT '',
  `cf_editor` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_cert_ipin` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_hp` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcb_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcp_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mid` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mert_key` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_limit` int(11) NOT NULL DEFAULT '0',
  `cf_cert_req` tinyint(4) NOT NULL DEFAULT '0',
  `cf_sms_use` varchar(255) NOT NULL DEFAULT '',
  `cf_sms_type` varchar(10) NOT NULL DEFAULT '',
  `cf_icode_id` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_pw` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_ip` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_port` varchar(255) NOT NULL DEFAULT '',
  `cf_googl_shorturl_apikey` varchar(255) NOT NULL DEFAULT '',
  `cf_social_login_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_social_servicelist` varchar(255) NOT NULL DEFAULT '',
  `cf_payco_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_payco_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_facebook_appid` varchar(255) NOT NULL,
  `cf_facebook_secret` varchar(255) NOT NULL,
  `cf_twitter_key` varchar(255) NOT NULL,
  `cf_twitter_secret` varchar(255) NOT NULL,
  `cf_google_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_google_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_rest_key` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_client_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_js_apikey` varchar(255) NOT NULL,
  `cf_captcha` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_site_key` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_secret_key` varchar(100) NOT NULL DEFAULT '',
  `cf_1_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_2_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_3_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_4_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_5_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_6_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_7_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_8_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_9_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_10_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_1` varchar(255) NOT NULL DEFAULT '',
  `cf_2` varchar(255) NOT NULL DEFAULT '',
  `cf_3` varchar(255) NOT NULL DEFAULT '',
  `cf_4` varchar(255) NOT NULL DEFAULT '',
  `cf_5` varchar(255) NOT NULL DEFAULT '',
  `cf_6` varchar(255) NOT NULL DEFAULT '',
  `cf_7` varchar(255) NOT NULL DEFAULT '',
  `cf_8` varchar(255) NOT NULL DEFAULT '',
  `cf_9` varchar(255) NOT NULL DEFAULT '',
  `cf_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_config`
--

INSERT INTO `g5_config` (`cf_title`, `cf_theme`, `cf_admin`, `cf_admin_email`, `cf_admin_email_name`, `cf_add_script`, `cf_use_point`, `cf_point_term`, `cf_use_copy_log`, `cf_use_email_certify`, `cf_login_point`, `cf_cut_name`, `cf_nick_modify`, `cf_new_skin`, `cf_new_rows`, `cf_search_skin`, `cf_connect_skin`, `cf_faq_skin`, `cf_read_point`, `cf_write_point`, `cf_comment_point`, `cf_download_point`, `cf_write_pages`, `cf_mobile_pages`, `cf_link_target`, `cf_delay_sec`, `cf_filter`, `cf_possible_ip`, `cf_intercept_ip`, `cf_analytics`, `cf_add_meta`, `cf_syndi_token`, `cf_syndi_except`, `cf_member_skin`, `cf_use_homepage`, `cf_req_homepage`, `cf_use_tel`, `cf_req_tel`, `cf_use_hp`, `cf_req_hp`, `cf_use_addr`, `cf_req_addr`, `cf_use_signature`, `cf_req_signature`, `cf_use_profile`, `cf_req_profile`, `cf_register_level`, `cf_register_point`, `cf_icon_level`, `cf_use_recommend`, `cf_recommend_point`, `cf_leave_day`, `cf_search_part`, `cf_email_use`, `cf_email_wr_super_admin`, `cf_email_wr_group_admin`, `cf_email_wr_board_admin`, `cf_email_wr_write`, `cf_email_wr_comment_all`, `cf_email_mb_super_admin`, `cf_email_mb_member`, `cf_email_po_super_admin`, `cf_prohibit_id`, `cf_prohibit_email`, `cf_new_del`, `cf_memo_del`, `cf_visit_del`, `cf_popular_del`, `cf_optimize_date`, `cf_use_member_icon`, `cf_member_icon_size`, `cf_member_icon_width`, `cf_member_icon_height`, `cf_member_img_size`, `cf_member_img_width`, `cf_member_img_height`, `cf_login_minutes`, `cf_image_extension`, `cf_flash_extension`, `cf_movie_extension`, `cf_formmail_is_member`, `cf_page_rows`, `cf_mobile_page_rows`, `cf_visit`, `cf_max_po_id`, `cf_stipulation`, `cf_privacy`, `cf_open_modify`, `cf_memo_send_point`, `cf_mobile_new_skin`, `cf_mobile_search_skin`, `cf_mobile_connect_skin`, `cf_mobile_faq_skin`, `cf_mobile_member_skin`, `cf_captcha_mp3`, `cf_editor`, `cf_cert_use`, `cf_cert_ipin`, `cf_cert_hp`, `cf_cert_kcb_cd`, `cf_cert_kcp_cd`, `cf_lg_mid`, `cf_lg_mert_key`, `cf_cert_limit`, `cf_cert_req`, `cf_sms_use`, `cf_sms_type`, `cf_icode_id`, `cf_icode_pw`, `cf_icode_server_ip`, `cf_icode_server_port`, `cf_googl_shorturl_apikey`, `cf_social_login_use`, `cf_social_servicelist`, `cf_payco_clientid`, `cf_payco_secret`, `cf_facebook_appid`, `cf_facebook_secret`, `cf_twitter_key`, `cf_twitter_secret`, `cf_google_clientid`, `cf_google_secret`, `cf_naver_clientid`, `cf_naver_secret`, `cf_kakao_rest_key`, `cf_kakao_client_secret`, `cf_kakao_js_apikey`, `cf_captcha`, `cf_recaptcha_site_key`, `cf_recaptcha_secret_key`, `cf_1_subj`, `cf_2_subj`, `cf_3_subj`, `cf_4_subj`, `cf_5_subj`, `cf_6_subj`, `cf_7_subj`, `cf_8_subj`, `cf_9_subj`, `cf_10_subj`, `cf_1`, `cf_2`, `cf_3`, `cf_4`, `cf_5`, `cf_6`, `cf_7`, `cf_8`, `cf_9`, `cf_10`) VALUES
('용인대학교 사회봉사활동', '', 'admin', 'admin@domain.com', '그누보드5', '', 0, 0, 1, 0, 100, 15, 60, 'basic', 15, 'basic', 'basic', 'basic', 0, 0, 0, 0, 10, 5, '_blank', 30, '18아,18놈,18새끼,18뇬,18노,18것,18넘,개년,개놈,개뇬,개새,개색끼,개세끼,개세이,개쉐이,개쉑,개쉽,개시키,개자식,개좆,게색기,게색끼,광뇬,뇬,눈깔,뉘미럴,니귀미,니기미,니미,도촬,되질래,뒈져라,뒈진다,디져라,디진다,디질래,병쉰,병신,뻐큐,뻑큐,뽁큐,삐리넷,새꺄,쉬발,쉬밸,쉬팔,쉽알,스패킹,스팽,시벌,시부랄,시부럴,시부리,시불,시브랄,시팍,시팔,시펄,실밸,십8,십쌔,십창,싶알,쌉년,썅놈,쌔끼,쌩쑈,썅,써벌,썩을년,쎄꺄,쎄엑,쓰바,쓰발,쓰벌,쓰팔,씨8,씨댕,씨바,씨발,씨뱅,씨봉알,씨부랄,씨부럴,씨부렁,씨부리,씨불,씨브랄,씨빠,씨빨,씨뽀랄,씨팍,씨팔,씨펄,씹,아가리,아갈이,엄창,접년,잡놈,재랄,저주글,조까,조빠,조쟁이,조지냐,조진다,조질래,존나,존니,좀물,좁년,좃,좆,좇,쥐랄,쥐롤,쥬디,지랄,지럴,지롤,지미랄,쫍빱,凸,퍽큐,뻑큐,빠큐,ㅅㅂㄹㅁ', '', '', '', '', '', '', 'basic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1000, 2, 0, 0, 30, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'admin,administrator,관리자,운영자,어드민,주인장,webmaster,웹마스터,sysop,시삽,시샵,manager,매니저,메니저,root,루트,su,guest,방문객', '', 30, 180, 180, 180, '2018-04-28', 2, 5000, 22, 22, 50000, 60, 60, 10, 'gif|jpg|jpeg|png', 'swf', 'asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3', 1, 15, 15, '오늘:1,어제:2,최대:6,전체:43', 0, '해당 홈페이지에 맞는 회원가입약관을 입력합니다.', '해당 홈페이지에 맞는 개인정보처리방침을 입력합니다.', 0, 500, 'basic', 'basic', 'basic', 'basic', 'basic', 'basic', 'smarteditor2', 0, '', '', '', '', '', '', 2, 0, '', '', '', '', '211.172.232.124', '7295', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'kcaptcha', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_content`
--

CREATE TABLE `g5_content` (
  `co_id` varchar(20) NOT NULL DEFAULT '',
  `co_html` tinyint(4) NOT NULL DEFAULT '0',
  `co_subject` varchar(255) NOT NULL DEFAULT '',
  `co_content` longtext NOT NULL,
  `co_mobile_content` longtext NOT NULL,
  `co_skin` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `co_tag_filter_use` tinyint(4) NOT NULL DEFAULT '0',
  `co_hit` int(11) NOT NULL DEFAULT '0',
  `co_include_head` varchar(255) NOT NULL,
  `co_include_tail` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_content`
--

INSERT INTO `g5_content` (`co_id`, `co_html`, `co_subject`, `co_content`, `co_mobile_content`, `co_skin`, `co_mobile_skin`, `co_tag_filter_use`, `co_hit`, `co_include_head`, `co_include_tail`) VALUES
('company', 1, '회사소개', '<p align=center><b>회사소개에 대한 내용을 입력하십시오.</b></p>', '', '', '', 0, 0, '', ''),
('privacy', 1, '개인정보 처리방침', '<p align=center><b>개인정보 처리방침에 대한 내용을 입력하십시오.</b></p>', '', '', '', 0, 0, '', ''),
('provision', 1, '서비스 이용약관', '<p align=center><b>서비스 이용약관에 대한 내용을 입력하십시오.</b></p>', '', '', '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_faq`
--

CREATE TABLE `g5_faq` (
  `fa_id` int(11) NOT NULL,
  `fm_id` int(11) NOT NULL DEFAULT '0',
  `fa_subject` text NOT NULL,
  `fa_content` text NOT NULL,
  `fa_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_faq_master`
--

CREATE TABLE `g5_faq_master` (
  `fm_id` int(11) NOT NULL,
  `fm_subject` varchar(255) NOT NULL DEFAULT '',
  `fm_head_html` text NOT NULL,
  `fm_tail_html` text NOT NULL,
  `fm_mobile_head_html` text NOT NULL,
  `fm_mobile_tail_html` text NOT NULL,
  `fm_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_faq_master`
--

INSERT INTO `g5_faq_master` (`fm_id`, `fm_subject`, `fm_head_html`, `fm_tail_html`, `fm_mobile_head_html`, `fm_mobile_tail_html`, `fm_order`) VALUES
(1, '자주하시는 질문', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_group`
--

CREATE TABLE `g5_group` (
  `gr_id` varchar(10) NOT NULL DEFAULT '',
  `gr_subject` varchar(255) NOT NULL DEFAULT '',
  `gr_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `gr_admin` varchar(255) NOT NULL DEFAULT '',
  `gr_use_access` tinyint(4) NOT NULL DEFAULT '0',
  `gr_order` int(11) NOT NULL DEFAULT '0',
  `gr_1_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_2_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_3_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_4_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_5_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_6_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_7_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_8_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_9_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_10_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_1` varchar(255) NOT NULL DEFAULT '',
  `gr_2` varchar(255) NOT NULL DEFAULT '',
  `gr_3` varchar(255) NOT NULL DEFAULT '',
  `gr_4` varchar(255) NOT NULL DEFAULT '',
  `gr_5` varchar(255) NOT NULL DEFAULT '',
  `gr_6` varchar(255) NOT NULL DEFAULT '',
  `gr_7` varchar(255) NOT NULL DEFAULT '',
  `gr_8` varchar(255) NOT NULL DEFAULT '',
  `gr_9` varchar(255) NOT NULL DEFAULT '',
  `gr_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_group`
--

INSERT INTO `g5_group` (`gr_id`, `gr_subject`, `gr_device`, `gr_admin`, `gr_use_access`, `gr_order`, `gr_1_subj`, `gr_2_subj`, `gr_3_subj`, `gr_4_subj`, `gr_5_subj`, `gr_6_subj`, `gr_7_subj`, `gr_8_subj`, `gr_9_subj`, `gr_10_subj`, `gr_1`, `gr_2`, `gr_3`, `gr_4`, `gr_5`, `gr_6`, `gr_7`, `gr_8`, `gr_9`, `gr_10`) VALUES
('community', '커뮤니티', 'both', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('default', '기본게시판들', 'both', 'admin', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_group_member`
--

CREATE TABLE `g5_group_member` (
  `gm_id` int(11) NOT NULL,
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `gm_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_login`
--

CREATE TABLE `g5_login` (
  `lo_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `lo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lo_location` text NOT NULL,
  `lo_url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_login`
--

INSERT INTO `g5_login` (`lo_ip`, `mb_id`, `lo_datetime`, `lo_location`, `lo_url`) VALUES
('::1', 'admin', '2018-04-28 17:50:00', '용인대학교 사회봉사활동', ''),
('127.0.0.1', '', '2018-04-28 17:26:24', '용인대학교 사회봉사활동', '/1/2?page=1&idx=1');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_mail`
--

CREATE TABLE `g5_mail` (
  `ma_id` int(11) NOT NULL,
  `ma_subject` varchar(255) NOT NULL DEFAULT '',
  `ma_content` mediumtext NOT NULL,
  `ma_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ma_ip` varchar(255) NOT NULL DEFAULT '',
  `ma_last_option` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_member`
--

CREATE TABLE `g5_member` (
  `mb_no` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_nick` varchar(255) NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_sid` varchar(100) NOT NULL,
  `mb_sname` varchar(100) NOT NULL,
  `mb_homepage` varchar(255) NOT NULL DEFAULT '',
  `mb_level` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sex` char(1) NOT NULL DEFAULT '',
  `mb_birth` varchar(255) NOT NULL DEFAULT '',
  `mb_tel` varchar(255) NOT NULL DEFAULT '',
  `mb_hp` varchar(255) NOT NULL DEFAULT '',
  `mb_certify` varchar(20) NOT NULL DEFAULT '',
  `mb_adult` tinyint(4) NOT NULL DEFAULT '0',
  `mb_dupinfo` varchar(255) NOT NULL DEFAULT '',
  `mb_zip1` char(3) NOT NULL DEFAULT '',
  `mb_zip2` char(3) NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) NOT NULL DEFAULT '',
  `mb_addr3` varchar(255) NOT NULL DEFAULT '',
  `mb_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `mb_signature` text NOT NULL,
  `mb_recommend` varchar(255) NOT NULL DEFAULT '',
  `mb_point` int(11) NOT NULL DEFAULT '0',
  `mb_today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_email_certify2` varchar(255) NOT NULL DEFAULT '',
  `mb_memo` text NOT NULL,
  `mb_lost_certify` varchar(255) NOT NULL,
  `mb_mailling` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sms` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_profile` text NOT NULL,
  `mb_memo_call` varchar(255) NOT NULL DEFAULT '',
  `mb_1` varchar(255) NOT NULL DEFAULT '',
  `mb_2` varchar(255) NOT NULL DEFAULT '',
  `mb_3` varchar(255) NOT NULL DEFAULT '',
  `mb_4` varchar(255) NOT NULL DEFAULT '',
  `mb_5` varchar(255) NOT NULL DEFAULT '',
  `mb_6` varchar(255) NOT NULL DEFAULT '',
  `mb_7` varchar(255) NOT NULL DEFAULT '',
  `mb_8` varchar(255) NOT NULL DEFAULT '',
  `mb_9` varchar(255) NOT NULL DEFAULT '',
  `mb_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_member`
--

INSERT INTO `g5_member` (`mb_no`, `mb_id`, `mb_password`, `mb_name`, `mb_nick`, `mb_nick_date`, `mb_email`, `mb_sid`, `mb_sname`, `mb_homepage`, `mb_level`, `mb_sex`, `mb_birth`, `mb_tel`, `mb_hp`, `mb_certify`, `mb_adult`, `mb_dupinfo`, `mb_zip1`, `mb_zip2`, `mb_addr1`, `mb_addr2`, `mb_addr3`, `mb_addr_jibeon`, `mb_signature`, `mb_recommend`, `mb_point`, `mb_today_login`, `mb_login_ip`, `mb_datetime`, `mb_ip`, `mb_leave_date`, `mb_intercept_date`, `mb_email_certify`, `mb_email_certify2`, `mb_memo`, `mb_lost_certify`, `mb_mailling`, `mb_sms`, `mb_open`, `mb_open_date`, `mb_profile`, `mb_memo_call`, `mb_1`, `mb_2`, `mb_3`, `mb_4`, `mb_5`, `mb_6`, `mb_7`, `mb_8`, `mb_9`, `mb_10`) VALUES
(1, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', '최고관리자', '0000-00-00', 'admin@domain.com', '', '', '', 10, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', 865, '2018-04-28 13:11:21', '::1', '2018-04-13 23:57:28', '::1', '', '', '2018-04-13 23:57:28', '', '', '', 1, 0, 1, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'alsgur0008', '*2E9D8CC38149A0CBE7FEA097876137C83E98F740', '김민혁', '김민혁', '0000-00-00', 'alsgur0008@naver.com', '31204', '용인대학교', '', 2, '', '20000328', '', '', '', 0, '', '', '', '', '', '', '', '', '', 97, '2018-04-18 20:41:32', '::1', '2018-04-18 20:41:25', '', '', '', '0000-00-00 00:00:00', '', '', '', 0, 0, 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'asdd4fd', '*DD21564C6521C8A3A2EEE6BBB28E13E17B6CA4A6', '박상진', '박상진', '0000-00-00', 'asdd4fd@naver.com', '6974', '용인대학교', '', 2, '', '19931004', '', '', '', 0, '', '', '', '', '', '', '', '', '', 99, '2018-04-18 17:26:25', '::1', '2018-04-18 17:26:15', '', '', '', '0000-00-00 00:00:00', '', '', '', 0, 0, 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'qwe', '*BBAE266E0E1E92B3A857E20260D41B7BC259297F', '김모씨', '김모씨', '0000-00-00', 'qwe@qwe.qwe', '1234', '용인대학교', '', 2, '', '20000328', '', '', '', 0, '', '', '', '', '', '', '', '', '', 100, '2018-04-20 15:31:03', '::1', '2018-04-20 15:30:58', '', '', '', '0000-00-00 00:00:00', '', '', '', 0, 0, 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'test', '*A4B6157319038724E3560894F7F932C8886EBFCF', '테스터', '테스터', '0000-00-00', 'tjsdlf4261@naver.com', '32131766', '용인대학교', '', 2, '', '19941220', '', '', '', 0, '', '', '', '', '', '', '', '', '', 0, '2018-04-27 18:38:46', '::1', '2018-04-21 16:00:30', '', '', '', '0000-00-00 00:00:00', '', '', '', 0, 0, 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'rlatpdnr01', '*ED0291157C8CEFBDF06A5FFBAF2AA8EFF8B85828', '김세욱', '김세욱', '0000-00-00', 'rlatpdnr01@naver.com', '1003', '용인대학교', '', 2, '', '199814', '', '', '', 0, '', '', '', '', '', '', '', '', '', 0, '2018-04-24 21:05:29', '192.168.0.70', '2018-04-24 21:05:10', '', '', '', '0000-00-00 00:00:00', '', '', '', 0, 0, 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_member_social_profiles`
--

CREATE TABLE `g5_member_social_profiles` (
  `mp_no` int(11) NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(50) NOT NULL DEFAULT '',
  `object_sha` varchar(45) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `profileurl` varchar(255) NOT NULL DEFAULT '',
  `photourl` varchar(255) NOT NULL DEFAULT '',
  `displayname` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `mp_register_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mp_latest_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_memo`
--

CREATE TABLE `g5_memo` (
  `me_id` int(11) NOT NULL DEFAULT '0',
  `me_recv_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_read_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_memo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_menu`
--

CREATE TABLE `g5_menu` (
  `me_id` int(11) NOT NULL,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int(11) NOT NULL DEFAULT '0',
  `me_use` tinyint(4) NOT NULL DEFAULT '0',
  `me_mobile_use` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_new_win`
--

CREATE TABLE `g5_new_win` (
  `nw_id` int(11) NOT NULL,
  `nw_device` varchar(10) NOT NULL DEFAULT 'both',
  `nw_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_disable_hours` int(11) NOT NULL DEFAULT '0',
  `nw_left` int(11) NOT NULL DEFAULT '0',
  `nw_top` int(11) NOT NULL DEFAULT '0',
  `nw_height` int(11) NOT NULL DEFAULT '0',
  `nw_width` int(11) NOT NULL DEFAULT '0',
  `nw_subject` text NOT NULL,
  `nw_content` text NOT NULL,
  `nw_content_html` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_point`
--

CREATE TABLE `g5_point` (
  `po_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_content` varchar(255) NOT NULL DEFAULT '',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_use_point` int(11) NOT NULL DEFAULT '0',
  `po_expired` tinyint(4) NOT NULL DEFAULT '0',
  `po_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `po_mb_point` int(11) NOT NULL DEFAULT '0',
  `po_rel_table` varchar(20) NOT NULL DEFAULT '',
  `po_rel_id` varchar(20) NOT NULL DEFAULT '',
  `po_rel_action` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_point`
--

INSERT INTO `g5_point` (`po_id`, `mb_id`, `po_datetime`, `po_content`, `po_point`, `po_use_point`, `po_expired`, `po_expire_date`, `po_mb_point`, `po_rel_table`, `po_rel_id`, `po_rel_action`) VALUES
(1, 'admin', '2018-04-14 13:49:03', '2018-04-14 첫로그인', 100, 3, 0, '9999-12-31', 100, '@login', 'admin', '2018-04-14'),
(2, 'admin', '2018-04-14 15:57:24', '동아리 모집 1 글쓰기', 5, 0, 0, '9999-12-31', 105, 'recruitment1', '1', '쓰기'),
(32, 'admin', '2018-04-18 11:01:03', '동아리 모집 12 글쓰기', 5, 0, 0, '9999-12-31', 530, 'recruitment1', '12', '쓰기'),
(4, 'admin', '2018-04-15 23:55:12', '2018-04-15 첫로그인', 100, 0, 0, '9999-12-31', 205, '@login', 'admin', '2018-04-15'),
(5, 'admin', '2018-04-16 14:03:33', '2018-04-16 첫로그인', 100, 0, 0, '9999-12-31', 305, '@login', 'admin', '2018-04-16'),
(57, 'asdd4fd', '2018-04-18 20:40:24', '수업 게시판 19 글읽기', -1, 0, 1, '2018-04-18', 99, 'vlt', '19', '읽기'),
(13, 'admin', '2018-04-17 15:08:49', '동아리 모집 3 글쓰기', 5, 0, 0, '9999-12-31', 415, 'recruitment1', '3', '쓰기'),
(9, 'admin', '2018-04-17 09:24:58', '2018-04-17 첫로그인', 100, 0, 0, '9999-12-31', 405, '@login', 'admin', '2018-04-17'),
(12, 'admin', '2018-04-17 15:08:27', '동아리 모집 2 글쓰기', 5, 0, 0, '9999-12-31', 410, 'recruitment1', '2', '쓰기'),
(15, 'admin', '2018-04-18 10:12:03', '2018-04-18 첫로그인', 100, 0, 0, '9999-12-31', 515, '@login', 'admin', '2018-04-18'),
(29, 'admin', '2018-04-18 10:56:37', '동아리 모집 11 글쓰기', 5, 0, 0, '9999-12-31', 525, 'recruitment1', '11', '쓰기'),
(25, 'admin', '2018-04-18 10:42:56', '동아리 모집 10 글쓰기', 5, 0, 0, '9999-12-31', 520, 'recruitment1', '10', '쓰기'),
(43, 'alsgur0008', '2018-04-18 16:39:20', '2018-04-18 첫로그인', 100, 3, 0, '9999-12-31', 100, '@login', 'alsgur0008', '2018-04-18'),
(42, 'asd', '2018-04-18 16:36:13', '2018-04-18 첫로그인', 100, 0, 0, '9999-12-31', 100, '@login', 'asd', '2018-04-18'),
(53, 'admin', '2018-04-18 17:30:26', '수업 Q&A 10 글읽기', -1, 0, 1, '2018-04-18', 528, 'qna', '10', '읽기'),
(49, 'asdd4fd', '2018-04-18 17:24:06', '2018-04-18 첫로그인', 100, 1, 0, '9999-12-31', 100, '@login', 'asdd4fd', '2018-04-18'),
(46, 'alsgur0008', '2018-04-18 16:47:52', '수업 게시판 13 글읽기', -1, 0, 1, '2018-04-18', 98, 'vlt', '13', '읽기'),
(45, 'alsgur0008', '2018-04-18 16:47:35', '수업 Q&A 6 글읽기', -1, 0, 1, '2018-04-18', 99, 'qna', '6', '읽기'),
(47, 'alsgur0008', '2018-04-18 16:47:55', '수업 게시판 14 글읽기', -1, 0, 1, '2018-04-18', 97, 'vlt', '14', '읽기'),
(52, 'admin', '2018-04-18 17:26:47', '수업 Q&A 9 글읽기', -1, 0, 1, '2018-04-18', 529, 'qna', '9', '읽기'),
(60, 'admin', '2018-04-18 20:46:40', '수업 Q&A 13 글읽기', -1, 0, 1, '2018-04-18', 527, 'qna', '13', '읽기'),
(62, 'admin', '2018-04-19 09:12:36', '2018-04-19 첫로그인', 100, 0, 0, '9999-12-31', 627, '@login', 'admin', '2018-04-19'),
(66, 'admin', '2018-04-20 00:22:31', '2018-04-20 첫로그인', 100, 0, 0, '9999-12-31', 727, '@login', 'admin', '2018-04-20'),
(67, 'qwe', '2018-04-20 15:31:03', '2018-04-20 첫로그인', 100, 0, 0, '9999-12-31', 100, '@login', 'qwe', '2018-04-20'),
(71, 'admin', '2018-04-20 18:26:03', '수업 Q&A 15 글쓰기', 5, 0, 0, '9999-12-31', 732, 'qna', '15', '쓰기'),
(72, 'admin', '2018-04-20 19:43:28', '수업 Q&A 16 글쓰기', 5, 0, 0, '9999-12-31', 737, 'qna', '16', '쓰기'),
(74, 'admin', '2018-04-20 22:34:03', '수업 Q&A 18 글쓰기', 5, 0, 0, '9999-12-31', 742, 'qna', '18', '쓰기'),
(75, 'admin', '2018-04-20 22:34:27', '수업 Q&A 19 글쓰기', 5, 0, 0, '9999-12-31', 747, 'qna', '19', '쓰기'),
(76, 'admin', '2018-04-21 00:00:09', '2018-04-21 첫로그인', 100, 0, 0, '9999-12-31', 847, '@login', 'admin', '2018-04-21'),
(77, 'admin', '2018-04-21 00:00:34', '모집 공고 3-0 댓글쓰기', 1, 0, 0, '9999-12-31', 848, 'recruitment', '0', '댓글'),
(79, 'admin', '2018-04-21 01:33:05', '수업 Q&A 21 글쓰기', 5, 0, 0, '9999-12-31', 853, 'qna', '21', '쓰기'),
(84, 'admin', '2018-04-21 12:31:15', '수업 게시판 28 글쓰기', 5, 0, 0, '9999-12-31', 858, 'vlt', '28', '쓰기'),
(85, 'admin', '2018-04-21 15:10:54', '수업 Q&A 22 글쓰기', 5, 0, 0, '9999-12-31', 863, 'qna', '22', '쓰기'),
(86, 'admin', '2018-04-21 15:48:37', '수업 Q&A 21-23 댓글쓰기', 1, 0, 0, '9999-12-31', 864, 'qna', '23', '댓글'),
(87, 'admin', '2018-04-21 15:48:41', '수업 Q&A 21-24 댓글쓰기', 1, 0, 0, '9999-12-31', 865, 'qna', '24', '댓글');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_poll`
--

CREATE TABLE `g5_poll` (
  `po_id` int(11) NOT NULL,
  `po_subject` varchar(255) NOT NULL DEFAULT '',
  `po_poll1` varchar(255) NOT NULL DEFAULT '',
  `po_poll2` varchar(255) NOT NULL DEFAULT '',
  `po_poll3` varchar(255) NOT NULL DEFAULT '',
  `po_poll4` varchar(255) NOT NULL DEFAULT '',
  `po_poll5` varchar(255) NOT NULL DEFAULT '',
  `po_poll6` varchar(255) NOT NULL DEFAULT '',
  `po_poll7` varchar(255) NOT NULL DEFAULT '',
  `po_poll8` varchar(255) NOT NULL DEFAULT '',
  `po_poll9` varchar(255) NOT NULL DEFAULT '',
  `po_cnt1` int(11) NOT NULL DEFAULT '0',
  `po_cnt2` int(11) NOT NULL DEFAULT '0',
  `po_cnt3` int(11) NOT NULL DEFAULT '0',
  `po_cnt4` int(11) NOT NULL DEFAULT '0',
  `po_cnt5` int(11) NOT NULL DEFAULT '0',
  `po_cnt6` int(11) NOT NULL DEFAULT '0',
  `po_cnt7` int(11) NOT NULL DEFAULT '0',
  `po_cnt8` int(11) NOT NULL DEFAULT '0',
  `po_cnt9` int(11) NOT NULL DEFAULT '0',
  `po_etc` varchar(255) NOT NULL DEFAULT '',
  `po_level` tinyint(4) NOT NULL DEFAULT '0',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_date` date NOT NULL DEFAULT '0000-00-00',
  `po_ips` mediumtext NOT NULL,
  `mb_ids` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_poll_etc`
--

CREATE TABLE `g5_poll_etc` (
  `pc_id` int(11) NOT NULL DEFAULT '0',
  `po_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `pc_name` varchar(255) NOT NULL DEFAULT '',
  `pc_idea` varchar(255) NOT NULL DEFAULT '',
  `pc_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_popular`
--

CREATE TABLE `g5_popular` (
  `pp_id` int(11) NOT NULL,
  `pp_word` varchar(50) NOT NULL DEFAULT '',
  `pp_date` date NOT NULL DEFAULT '0000-00-00',
  `pp_ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_popular`
--

INSERT INTO `g5_popular` (`pp_id`, `pp_word`, `pp_date`, `pp_ip`) VALUES
(1, 't', '2018-04-16', '::1'),
(2, 'f', '2018-04-16', '::1'),
(3, '공', '2018-04-18', '::1'),
(4, 'd', '2018-04-18', '::1'),
(5, '제', '2018-04-18', '::1'),
(6, 'ㅇㅇ', '2018-04-18', '::1'),
(7, 'wp', '2018-04-18', '::1'),
(8, 'wp', '2018-04-20', '::1'),
(9, 'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', '2018-04-21', '127.0.0.1'),
(10, 'a', '2018-04-21', '127.0.0.1'),
(11, 'adasda', '2018-04-21', '127.0.0.1'),
(12, '사', '2018-04-21', '127.0.0.1'),
(13, 'ㅁㄴㅇㅁㄴ', '2018-04-21', '127.0.0.1'),
(14, '시', '2018-04-21', '127.0.0.1'),
(15, 'a', '2018-04-22', '::1'),
(16, 'ds', '2018-04-22', '::1'),
(17, 'd', '2018-04-22', '::1'),
(18, 'b', '2018-04-22', '::1'),
(19, '할', '2018-04-22', '::1'),
(20, 'bb', '2018-04-22', '::1'),
(21, '검색', '2018-04-22', '::1'),
(22, '공지', '2018-04-24', '192.168.0.69'),
(23, 'b', '2018-04-24', '192.168.0.69'),
(24, '테스트', '2018-04-24', '192.168.0.69'),
(25, 'a', '2018-04-24', '192.168.0.69'),
(26, '질', '2018-04-25', '192.168.0.69'),
(27, '요', '2018-04-25', '::1'),
(28, '테스트', '2018-04-25', '192.168.0.70'),
(29, '이미지', '2018-04-25', '192.168.0.70'),
(30, '제목', '2018-04-25', '::1'),
(31, 'ㅁㅈㅀㅁㄴㅇㅎㄴㅇㅎ', '2018-04-25', '::1'),
(32, 'ㄴㅇㅎㅇㄶㅇㄴ', '2018-04-25', '::1'),
(33, 'ㄴ', '2018-04-25', '::1'),
(34, 'bb', '2018-04-25', '::1'),
(35, 'asfdgs', '2018-04-25', '::1'),
(36, '질문', '2018-04-25', '::1'),
(37, '진행', '2018-04-25', '192.168.0.70'),
(38, 'ㅇㅇㅇ', '2018-04-25', '192.168.0.70'),
(39, '으하하', '2018-04-25', '::1'),
(40, '질문이', '2018-04-25', '::1'),
(41, '댓글을', '2018-04-25', '::1'),
(42, '아', '2018-04-25', '::1'),
(43, 'a', '2018-04-25', '192.168.0.70'),
(44, 'a', '2018-04-25', '192.168.0.69'),
(45, '질문', '2018-04-25', '192.168.0.69'),
(46, '아', '2018-04-25', '192.168.0.69'),
(47, '다', '2018-04-25', '192.168.0.69'),
(48, '요', '2018-04-26', '192.168.0.69'),
(49, '뭐래', '2018-04-26', '192.168.0.69'),
(50, '분리수고', '2018-04-26', '192.168.0.69'),
(51, '분리수거', '2018-04-26', '192.168.0.69'),
(52, '다', '2018-04-27', '::1'),
(53, '3', '2018-04-27', '::1');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_qa_config`
--

CREATE TABLE `g5_qa_config` (
  `qa_title` varchar(255) NOT NULL DEFAULT '',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_sms` tinyint(4) NOT NULL DEFAULT '0',
  `qa_send_number` varchar(255) NOT NULL DEFAULT '0',
  `qa_admin_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_admin_email` varchar(255) NOT NULL DEFAULT '',
  `qa_use_editor` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_image_width` int(11) NOT NULL DEFAULT '0',
  `qa_upload_size` int(11) NOT NULL DEFAULT '0',
  `qa_insert_content` text NOT NULL,
  `qa_include_head` varchar(255) NOT NULL DEFAULT '',
  `qa_include_tail` varchar(255) NOT NULL DEFAULT '',
  `qa_content_head` text NOT NULL,
  `qa_content_tail` text NOT NULL,
  `qa_mobile_content_head` text NOT NULL,
  `qa_mobile_content_tail` text NOT NULL,
  `qa_1_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_2_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_3_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_4_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_5_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_qa_config`
--

INSERT INTO `g5_qa_config` (`qa_title`, `qa_category`, `qa_skin`, `qa_mobile_skin`, `qa_use_email`, `qa_req_email`, `qa_use_hp`, `qa_req_hp`, `qa_use_sms`, `qa_send_number`, `qa_admin_hp`, `qa_admin_email`, `qa_use_editor`, `qa_subject_len`, `qa_mobile_subject_len`, `qa_page_rows`, `qa_mobile_page_rows`, `qa_image_width`, `qa_upload_size`, `qa_insert_content`, `qa_include_head`, `qa_include_tail`, `qa_content_head`, `qa_content_tail`, `qa_mobile_content_head`, `qa_mobile_content_tail`, `qa_1_subj`, `qa_2_subj`, `qa_3_subj`, `qa_4_subj`, `qa_5_subj`, `qa_1`, `qa_2`, `qa_3`, `qa_4`, `qa_5`) VALUES
('1:1문의', '회원|포인트', 'basic', 'basic', 1, 0, 1, 0, 0, '0', '', '', 1, 60, 30, 15, 15, 600, 1048576, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_qa_content`
--

CREATE TABLE `g5_qa_content` (
  `qa_id` int(11) NOT NULL,
  `qa_num` int(11) NOT NULL DEFAULT '0',
  `qa_parent` int(11) NOT NULL DEFAULT '0',
  `qa_related` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `qa_name` varchar(255) NOT NULL DEFAULT '',
  `qa_email` varchar(255) NOT NULL DEFAULT '',
  `qa_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_type` tinyint(4) NOT NULL DEFAULT '0',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_email_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_sms_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_html` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject` varchar(255) NOT NULL DEFAULT '',
  `qa_content` text NOT NULL,
  `qa_status` tinyint(4) NOT NULL DEFAULT '0',
  `qa_file1` varchar(255) NOT NULL DEFAULT '',
  `qa_source1` varchar(255) NOT NULL DEFAULT '',
  `qa_file2` varchar(255) NOT NULL DEFAULT '',
  `qa_source2` varchar(255) NOT NULL DEFAULT '',
  `qa_ip` varchar(255) NOT NULL DEFAULT '',
  `qa_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_scrap`
--

CREATE TABLE `g5_scrap` (
  `ms_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` varchar(15) NOT NULL DEFAULT '',
  `ms_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_sub_menu`
--

CREATE TABLE `g5_sub_menu` (
  `idx` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `sub_menu1` varchar(255) NOT NULL,
  `sub_menu2` varchar(255) NOT NULL,
  `sub_text1` text NOT NULL,
  `sub_text2` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `progress` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `how` varchar(255) NOT NULL,
  `page` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_sub_menu`
--

INSERT INTO `g5_sub_menu` (`idx`, `number`, `title`, `sub_title`, `sub_menu1`, `sub_menu2`, `sub_text1`, `sub_text2`, `img`, `progress`, `content`, `how`, `page`) VALUES
(2, 2, '한국민요', '', '', '', '', '', '15241160326004ko-music.jpg', '매주 목요일', '주차별 3교시로 프로그램으로서, 1교시 한국민요 배우기, 2교시\r\n장구 배우기, 3교시 민요와 장단 함께 배우기로 진행. 꽃타령, \r\n너영나영, 밀양아리랑, 진도아리랑, 쾌지나칭칭', '', 1),
(3, 3, '뷰티케어Ⅰ 소개', '', '', '', '', '', '15241172795290beauty1.jpg', '매주 화요일', '색채학, 헤더어 컬러링, 헤어 스타일링, 드라이, 두피케어,\r\n모발클리닉 등 어르신들이 스스로 헤어 스타일링 및 헤어 컬러링을\r\n하실 수 있는 헤어 실습 수업.', '', 1),
(4, 1, '교육지원사업 소개', '용인대학교만의 전문적인 학과 교육을 통해, 시니어들의 끝없는 배움의 열정을 지원합니다.', '대학전공과목 수강', '평생교육원 수강', '용인대학교의 다양한 학과의 학생과 함께 공부하며,\r\n끝없는 배움의 열정을 펼치고 싶은 시니어를 위한 교육\r\n프로그램.', '평생교육원 개설 강좌 참여를 통해 배움의 즐거움을 느끼고 시니어로서의 자존감 향상을 위한 프로그램', '', '', '', '', 1),
(5, 4, '뷰티케어Ⅱ', '', '', '', '', '', '15241310948685beauty2.jpg', '매주 수요일', '살롱아트-도트기법 및 마블링기법, 파라핀 실습, 그라데이션 기법,\r\n재활용아트, 피부관리 특강 등 네일아트의 기본을 익히고, 과정을 \r\n상호 실습하여 네일아트에 대한 테크닉을 배우', '', 1),
(6, 5, '뷰티케어Ⅲ', '', '', '', '', '', '15241311538232beauty3.jpg', '매주 수요일', '네일 모양의 유형 및 플콧 배우기, 프렌치·딥프렌치·도트아트·\r\n그라데이션에 대한 학습.', '총 30명의 대상자를 A, B, C팀으로 구성하고 1개 주차에 1개팀\r\n프로그램 진행.(팀별 3회기 과정으로 진행', 1),
(7, 6, '사회복지현장세미나', '', '', '', '', '', '15241312605010semina.jpg', '매주 월요일', '사회복지학과 전공수업인, ‘사회복지현장세미나’수업과 연계하여\r\n재능기부 형태의 프로그램으로 진행. 매 주차마다 전공학생이\r\n사회복지사가 되어 수업을 진행하며 어르신과의 관계를 증진', '', 1),
(8, 7, '평생교육', '', '', '', '', '', '15241312947405ever.jpg', '매주 금요일', '수업을 통해, 본인의 피부(노화) 상태를 진단하고, 피부과의 다양한 \r\n관리법과 홈케어 관리법 습득을 통해 자신의 노화를 관리할 수 \r\n있는 능력을 함양. 수업 종료시, 진행되었던', '', 1),
(9, 1, '건강증진사업 소개', '즐거운 시니어 라이프의 필수조건인 건강한 삶을 위하여 용인대학교의 전문화된 프로그램이 여러분과 함께 합니다.', '운동처방', '영양교육', '· 스포츠웰니스센터의 체력향상 지원 프로그램.\r\n· 골밀도, 신장, 체중, 심폐지구력, 하체근력 등 통합적 체력검사 및 동작 효율화 운동요법 진행.', '· 식품영양학과 전문영양사와 함께 하는 영양교육 및 요리수업 참여 프로그램. \r\n· 올바른 식습관을 통해 건강한 삶의 기본을 만들고 싶은 시니어를 위한 영양교육.', '', '', '', '', 2),
(12, 2, '100세 율동', '', '', '', '', '', '15241319336179health.jpg', '매주 수요일', '스포츠레저학과 학생들이 시니어를 대상으로 전문적 체조 및\r\n율동을 지도하며, 간단한 댄스스포츠 수업도 함께 진행.워밍업\r\n박수체조를 시작으로 총 3개의 트로트 곡을 선정하여 A, B, C\r\n파트로 나누고 해당 파트 수업에는 곡에 맞는 건강율동을 통해\r\n어르신의 활기 증진. 또한, 댄스스포츠 수업과 수업 종료 후 간단한\r\n스트레칭으로 몸의 미세근육을 활성화시킬 수 있는 주차별\r\n프로그램 준비.', '', 2),
(13, 3, '체육활동(드래곤실천)', '', '', '', '', '', '15241319608073move.jpg', '매주 수요일', '스포츠레저학과 학생들이 시니어를 대상으로 전문적 체조 및\r\n율동을 지도하며, 간단한 댄스스포츠 수업도 함께 진행.워밍업\r\n박수체조를 시작으로 총 3개의 트로트 곡을 선정하여 A, B, C\r\n파트로 나누고 해당 파트 수업에는 곡에 맞는 건강율동을 통해\r\n어르신의 활기 증진. 또한, 댄스스포츠 수업과 수업 종료 후 간단한\r\n스트레칭으로 몸의 미세근육을 활성화시킬 수 있는 주차별\r\n프로그램 준비.', '', 2),
(14, 4, '물리치료 소개', '', '', '', '', '', '15241319846110hand.jpg', '매주 월요일', '물리치료 전공자가 진행하는 시니어 대상의 실습 위주 물리치료\r\n프로그램..', '', 2),
(15, 5, '맛점(어르신 식사)', '', '', '', '', '', '15241320219806food.jpg', '주 3~4회 점심시간', '‘맛점 : 알고 먹으면 더 맛있는 점심식사’동아리는 주로\r\n식품영양학과 전공 학생들로 구성되어 점심식사 전, 당일 식사할\r\n음식에 대한 영양 및 건강정보에 관하여 알아가고 또한 식사시간에\r\n시니어와 학생이 짝을 이루어 함께 식사를 즐기는 시간으로 구성.', '', 2),
(16, 1, '커뮤니티 사업 소개', '시니어들과 20대 대학생 동아리가 함께 열정과 패기로 꿈을 펼칠 수 있는 다양한 활동을 지원합니다.', '대학전공과목 수강', '평생교육원 수강', '용인대학교의 다양한 학과의 학생과 함께 공부하며,\r\n끝없는 배움의 열정을 펼치고 싶은 시니어를 위한 교육 \r\n프로그램.', '평생교육원 개설 강좌 참여를 통해 배움의 즐거움을 느끼고\r\n시니어로서의 자존감 향상을 위한 프로그램', '', '', '', '', 3),
(17, 2, 'SCI 동아리활동', '', '', '', '', '', '15241380334910sci.jpg', '주 1회 진행', '시니어와 식품영양학과 학생들이 함께 만들어가는 건강한\r\n영양식단과 이를 만드는 실습형 프로그램으로 구성. 총 6회기의\r\n영양식단을 제작하고 어르신들이 냉장고에서 간편하게 꺼내\r\n만들어 드실 수 있는 레시피를 선정하여 만들어보는 동아리 활동.\r\n크레미 유부초밥, 돼지고기 강된장 비빔밥, 삼색수제비 만들기 등\r\n주차별 다양한 음식 조리 실습.', '', 3),
(18, 3, 'SCI 동아리활동', '', '', '', '', '', '15241380774910365.jpg', '2017. 10. 12.~12. 07.(9주) 매주 목요일 15:30~17:30', '사회복지학과 학생들로 구성되어 한글 및 캘리그라피를 활용한\r\n커뮤니티 프로그램으로 진행. 붓을 활용하여 자음, 모음쓰기를\r\n시작으로 짧은 단어와 문장 그리고 시까지 함께 쓰면서 마지막에\r\n액자 제작까지 9회기의 프로그램으로 활동.', '', 3);

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_uniqid`
--

CREATE TABLE `g5_uniqid` (
  `uq_id` bigint(20) UNSIGNED NOT NULL,
  `uq_ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_uniqid`
--

INSERT INTO `g5_uniqid` (`uq_id`, `uq_ip`) VALUES
(18041415461130, '::1'),
(18041415572210, '::1'),
(18041415573068, '::1'),
(18041620314944, '::1'),
(18041620320028, '::1'),
(18041620320268, '::1'),
(18041620321608, '::1'),
(18041620331292, '::1'),
(18041620384086, '::1'),
(18041620522518, '::1'),
(18041621030115, '::1'),
(18041710550970, '::1'),
(18041711131034, '::1'),
(18041711154219, '::1'),
(18041711155454, '::1'),
(18041712192922, '::1'),
(18041712222049, '::1'),
(18041714242893, '::1'),
(18041714245365, '::1'),
(18041714250432, '::1'),
(18041714250770, '::1'),
(18041714260395, '::1'),
(18041714400149, '::1'),
(18041714421054, '::1'),
(18041714421101, '::1'),
(18041714421118, '::1'),
(18041714432160, '::1'),
(18041714434478, '::1'),
(18041714434536, '::1'),
(18041714435157, '::1'),
(18041714435500, '::1'),
(18041714445397, '::1'),
(18041714454513, '::1'),
(18041714460767, '::1'),
(18041714460811, '::1'),
(18041715013233, '::1'),
(18041715013299, '::1'),
(18041715013900, '::1'),
(18041715013918, '::1'),
(18041715013935, '::1'),
(18041715014265, '::1'),
(18041715014280, '::1'),
(18041715014295, '::1'),
(18041715014310, '::1'),
(18041715014696, '::1'),
(18041715014712, '::1'),
(18041715014727, '::1'),
(18041715015797, '::1'),
(18041715015812, '::1'),
(18041715015826, '::1'),
(18041715022104, '::1'),
(18041715022132, '::1'),
(18041715022485, '::1'),
(18041715024194, '::1'),
(18041715024209, '::1'),
(18041715024225, '::1'),
(18041715024728, '::1'),
(18041715024744, '::1'),
(18041715025225, '::1'),
(18041715081048, '::1'),
(18041715084061, '::1'),
(18041715135072, '::1'),
(18041715141496, '::1'),
(18041715244037, '::1'),
(18041715255077, '::1'),
(18041715260620, '::1'),
(18041715262691, '::1'),
(18041715262711, '::1'),
(18041715262736, '::1'),
(18041715262746, '::1'),
(18041715272241, '::1'),
(18041715272256, '::1'),
(18041715281290, '::1'),
(18041715281330, '::1'),
(18041715282221, '::1'),
(18041715282241, '::1'),
(18041715282263, '::1'),
(18041715292940, '::1'),
(18041715292959, '::1'),
(18041715292981, '::1'),
(18041715293355, '::1'),
(18041715310139, '::1'),
(18041715311304, '::1'),
(18041715311357, '::1'),
(18041715311392, '::1'),
(18041715312353, '::1'),
(18041715313972, '::1'),
(18041715314627, '::1'),
(18041715314669, '::1'),
(18041715314688, '::1'),
(18041715323666, '::1'),
(18041715323720, '::1'),
(18041715324101, '::1'),
(18041715330074, '::1'),
(18041715381575, '::1'),
(18041715392418, '::1'),
(18041715394036, '::1'),
(18041715400931, '::1'),
(18041715403036, '::1'),
(18041715403603, '::1'),
(18041715414826, '::1'),
(18041715420963, '::1'),
(18041715424513, '::1'),
(18041715451736, '::1'),
(18041715451797, '::1'),
(18041715451839, '::1'),
(18041715453796, '::1'),
(18041715453817, '::1'),
(18041715453840, '::1'),
(18041715460629, '::1'),
(18041715462426, '::1'),
(18041715462446, '::1'),
(18041715463434, '::1'),
(18041715463453, '::1'),
(18041715463477, '::1'),
(18041715464212, '::1'),
(18041715464232, '::1'),
(18041715464254, '::1'),
(18041715474162, '::1'),
(18041715474217, '::1'),
(18041715480546, '::1'),
(18041715481835, '::1'),
(18041715481898, '::1'),
(18041715483153, '::1'),
(18041715483913, '::1'),
(18041715483960, '::1'),
(18041715484749, '::1'),
(18041715484769, '::1'),
(18041715490520, '::1'),
(18041715490560, '::1'),
(18041715490881, '::1'),
(18041715492885, '::1'),
(18041715494388, '::1'),
(18041715511363, '::1'),
(18041715511854, '::1'),
(18041715512011, '::1'),
(18041715513261, '::1'),
(18041715513280, '::1'),
(18041715513427, '::1'),
(18041715524917, '::1'),
(18041715544246, '::1'),
(18041715552220, '::1'),
(18041715552241, '::1'),
(18041715552618, '::1'),
(18041715553045, '::1'),
(18041715555996, '::1'),
(18041715560024, '::1'),
(18041715560039, '::1'),
(18041715565436, '::1'),
(18041715575821, '::1'),
(18041715581587, '::1'),
(18041715581670, '::1'),
(18041715581686, '::1'),
(18041715583508, '::1'),
(18041715584462, '::1'),
(18041715584757, '::1'),
(18041715584845, '::1'),
(18041715584914, '::1'),
(18041715585473, '::1'),
(18041715593279, '::1'),
(18041715593332, '::1'),
(18041715593356, '::1'),
(18041715594632, '::1'),
(18041715594671, '::1'),
(18041715594684, '::1'),
(18041716015650, '::1'),
(18041716020899, '::1'),
(18041716024070, '::1'),
(18041716024121, '::1'),
(18041716030679, '::1'),
(18041716030754, '::1'),
(18041716034165, '::1'),
(18041716034238, '::1'),
(18041716034840, '::1'),
(18041716034975, '::1'),
(18041716042253, '::1'),
(18041716050984, '::1'),
(18041716052616, '::1'),
(18041716052686, '::1'),
(18041716053561, '::1'),
(18041716053616, '::1'),
(18041716054716, '::1'),
(18041716054792, '::1'),
(18041716060055, '::1'),
(18041716061093, '::1'),
(18041716061645, '::1'),
(18041716062068, '::1'),
(18041716065057, '::1'),
(18041716065223, '::1'),
(18041716065836, '::1'),
(18041716070241, '::1'),
(18041716080940, '::1'),
(18041716081807, '::1'),
(18041716082225, '::1'),
(18041716082798, '::1'),
(18041716090124, '::1'),
(18041716091919, '::1'),
(18041716095535, '::1'),
(18041716100515, '::1'),
(18041716100991, '::1'),
(18041716101753, '::1'),
(18041716103154, '::1'),
(18041716103579, '::1'),
(18041716103599, '::1'),
(18041716104155, '::1'),
(18041810130486, '::1'),
(18041810133109, '::1'),
(18041810135679, '::1'),
(18041810152135, '::1'),
(18041810152150, '::1'),
(18041810163707, '::1'),
(18041810170742, '::1'),
(18041810175572, '::1'),
(18041810180733, '::1'),
(18041810192815, '::1'),
(18041810205790, '::1'),
(18041810210604, '::1'),
(18041810210625, '::1'),
(18041810210649, '::1'),
(18041810211305, '::1'),
(18041810211783, '::1'),
(18041810220580, '::1'),
(18041810221140, '::1'),
(18041810224859, '::1'),
(18041810225373, '::1'),
(18041810270106, '::1'),
(18041810271185, '::1'),
(18041810283205, '::1'),
(18041810283935, '::1'),
(18041810304389, '::1'),
(18041810310366, '::1'),
(18041810324191, '::1'),
(18041810371820, '::1'),
(18041810424979, '::1'),
(18041810430245, '::1'),
(18041810432264, '::1'),
(18041810490061, '::1'),
(18041810523870, '::1'),
(18041810524452, '::1'),
(18041810524527, '::1'),
(18041810524582, '::1'),
(18041810524815, '::1'),
(18041810535213, '::1'),
(18041810541647, '::1'),
(18041810542383, '::1'),
(18041810544227, '::1'),
(18041810544246, '::1'),
(18041810554256, '::1'),
(18041810554276, '::1'),
(18041810555876, '::1'),
(18041810560890, '::1'),
(18041810562713, '::1'),
(18041810563274, '::1'),
(18041810571439, '::1'),
(18041810584653, '::1'),
(18041810584673, '::1'),
(18041811000214, '::1'),
(18041811002089, '::1'),
(18041811005678, '::1'),
(18041811011912, '::1'),
(18041811015888, '::1'),
(18041811021021, '::1'),
(18041811021643, '::1'),
(18041811022191, '::1'),
(18041811022613, '::1'),
(18041811033210, '::1'),
(18041811040826, '::1'),
(18041811041351, '::1'),
(18041811043789, '::1'),
(18041811045901, '::1'),
(18041811050517, '::1'),
(18041811053956, '::1'),
(18041811053974, '::1'),
(18041811054874, '::1'),
(18041811064351, '::1'),
(18041811065779, '::1'),
(18041811070137, '::1'),
(18041811133387, '::1'),
(18041811133399, '::1'),
(18041811134771, '::1'),
(18041811140278, '::1'),
(18041811140291, '::1'),
(18041811151169, '::1'),
(18041811151189, '::1'),
(18041811152019, '::1'),
(18041811152039, '::1'),
(18041811155188, '::1'),
(18041811161723, '::1'),
(18041811161805, '::1'),
(18041811161844, '::1'),
(18041811161933, '::1'),
(18041811175196, '::1'),
(18041811175608, '::1'),
(18041811175661, '::1'),
(18041811180512, '::1'),
(18041811180571, '::1'),
(18041811184348, '::1'),
(18041811190794, '::1'),
(18041811192155, '::1'),
(18041811192771, '::1'),
(18041811193366, '::1'),
(18041811211426, '::1'),
(18041811214850, '::1'),
(18041811214864, '::1'),
(18041811220610, '::1'),
(18041811220625, '::1'),
(18041811280603, '::1'),
(18041811282092, '::1'),
(18041811291079, '::1'),
(18041811294241, '::1'),
(18041811300436, '::1'),
(18041811303628, '::1'),
(18041811304213, '::1'),
(18041811320498, '::1'),
(18041811320969, '::1'),
(18041811321704, '::1'),
(18041811343441, '::1'),
(18041811344765, '::1'),
(18041811351635, '::1'),
(18041811352226, '::1'),
(18041814544503, '::1'),
(18041814555937, '::1'),
(18041816404534, '::1'),
(18041816413885, '::1'),
(18041816415208, '::1'),
(18041816415688, '::1'),
(18041816444573, '::1'),
(18041816444598, '::1'),
(18041816444622, '::1'),
(18041816460888, '::1'),
(18041816461324, '::1'),
(18041816461345, '::1'),
(18041816461379, '::1'),
(18041816463231, '::1'),
(18041816471085, '::1'),
(18041816473939, '::1'),
(18041817101956, '::1'),
(18041817104831, '::1'),
(18041817111669, '::1'),
(18041817243065, '::1'),
(18041817262975, '::1'),
(18041817305604, '::1'),
(18041817384917, '::1'),
(18041817395728, '::1'),
(18041817402166, '::1'),
(18041817402183, '::1'),
(18041817404524, '::1'),
(18041817404545, '::1'),
(18041817412297, '::1'),
(18041817412954, '::1'),
(18041817412973, '::1'),
(18041817412983, '::1'),
(18041817413386, '::1'),
(18041817463382, '::1'),
(18041817463404, '::1'),
(18041817463417, '::1'),
(18041817463603, '::1'),
(18041817463835, '::1'),
(18041817463858, '::1'),
(18041818022621, '::1'),
(18041818025719, '::1'),
(18041818032067, '::1'),
(18041820374683, '::1'),
(18041820380548, '::1'),
(18041820415021, '::1'),
(18041820423312, '::1'),
(18041820445662, '::1'),
(18041820465587, '::1'),
(18041820472262, '::1'),
(18041820480100, '::1'),
(18041820483601, '::1'),
(18041820492928, '::1'),
(18041820493130, '::1'),
(18041820493310, '::1'),
(18041820500060, '::1'),
(18041820500085, '::1'),
(18041820500104, '::1'),
(18041820500154, '::1'),
(18041820501309, '::1'),
(18041820501326, '::1'),
(18041820501341, '::1'),
(18041820501535, '::1'),
(18041820504756, '::1'),
(18041820505904, '::1'),
(18041820510703, '::1'),
(18041820514875, '::1'),
(18041820515353, '::1'),
(18041820515405, '::1'),
(18041820520043, '::1'),
(18041820520056, '::1'),
(18041820520070, '::1'),
(18041820520187, '::1'),
(18041820522358, '::1'),
(18041820524176, '::1'),
(18041820531808, '::1'),
(18041820534238, '::1'),
(18041820534260, '::1'),
(18041820534279, '::1'),
(18041820534590, '::1'),
(18041820535358, '::1'),
(18041820540918, '::1'),
(18041820540953, '::1'),
(18041820544109, '::1'),
(18041820553661, '::1'),
(18041820554459, '::1'),
(18041820573479, '::1'),
(18041909215890, '::1'),
(18041922362261, '::1'),
(18041922371277, '::1'),
(18041923350502, '::1'),
(18041923360571, '::1'),
(18042000314781, '::1'),
(18042000315669, '::1'),
(18042015312257, '::1'),
(18042015322808, '::1'),
(18042015384456, '::1'),
(18042015393668, '::1'),
(18042018124162, '::1'),
(18042018260165, '::1'),
(18042019431699, '::1'),
(18042019592546, '::1'),
(18042020194371, '::1'),
(18042022340075, '::1'),
(18042022342542, '::1'),
(18042023174103, '::1'),
(18042023174958, '::1'),
(18042023175251, '::1'),
(18042023175599, '::1'),
(18042023580045, '::1'),
(18042100394462, '::1'),
(18042100542988, '::1'),
(18042101325818, '::1'),
(18042101342260, '::1'),
(18042101354563, '::1'),
(18042101360397, '::1'),
(18042101364851, '::1'),
(18042101395860, '::1'),
(18042101413496, '::1'),
(18042101422185, '::1'),
(18042101425658, '::1'),
(18042101432327, '::1'),
(18042101433896, '::1'),
(18042101443565, '::1'),
(18042101444718, '::1'),
(18042101454946, '::1'),
(18042101461054, '::1'),
(18042101540639, '::1'),
(18042101542639, '::1'),
(18042101551857, '::1'),
(18042101553054, '::1'),
(18042101553133, '::1'),
(18042101553173, '::1'),
(18042101553641, '::1'),
(18042112310296, '::1'),
(18042115104468, '::1'),
(18042115151862, '::1'),
(18042115153238, '::1'),
(18042115154477, '::1'),
(18042115155854, '::1'),
(18042115164722, '::1'),
(18042115172674, '::1'),
(18042115175867, '::1'),
(18042115181346, '::1'),
(18042115194583, '::1'),
(18042115220667, '::1'),
(18042115222774, '::1'),
(18042115242291, '::1'),
(18042115242917, '::1'),
(18042115243188, '::1'),
(18042115260430, '::1'),
(18042115271955, '::1'),
(18042115274376, '::1'),
(18042115281812, '::1'),
(18042115293469, '::1'),
(18042115313873, '::1'),
(18042115325855, '127.0.0.1'),
(18042115331054, '127.0.0.1'),
(18042115335545, '127.0.0.1'),
(18042115341239, '127.0.0.1'),
(18042115341559, '127.0.0.1'),
(18042115342485, '127.0.0.1'),
(18042115342676, '127.0.0.1'),
(18042115343012, '127.0.0.1'),
(18042115355654, '127.0.0.1'),
(18042115361045, '127.0.0.1'),
(18042115374457, '127.0.0.1'),
(18042115382335, '127.0.0.1'),
(18042115382696, '127.0.0.1'),
(18042115385688, '127.0.0.1'),
(18042115394787, '127.0.0.1'),
(18042115400642, '127.0.0.1'),
(18042115402312, '127.0.0.1'),
(18042115414103, '127.0.0.1'),
(18042115431400, '127.0.0.1'),
(18042115450302, '127.0.0.1'),
(18042115452234, '127.0.0.1'),
(18042115452320, '127.0.0.1'),
(18042115452337, '127.0.0.1'),
(18042116290974, '127.0.0.1'),
(18042116315362, '::1'),
(18042116345085, '::1'),
(18042116350581, '::1'),
(18042116354960, '::1'),
(18042116360272, '::1'),
(18042116361118, '::1'),
(18042116391415, '::1'),
(18042116392431, '::1'),
(18042116393239, '::1'),
(18042116395787, '::1'),
(18042116401825, '::1'),
(18042116404151, '::1'),
(18042116404570, '::1'),
(18042116405263, '::1'),
(18042116415677, '::1'),
(18042116425574, '::1'),
(18042116432232, '::1'),
(18042116432773, '::1'),
(18042116433177, '::1'),
(18042116463714, '::1'),
(18042116464450, '::1'),
(18042116474145, '::1'),
(18042116480393, '::1'),
(18042116490374, '::1'),
(18042116491995, '::1'),
(18042116530852, '::1'),
(18042116535534, '::1'),
(18042116541170, '::1'),
(18042116541954, '::1'),
(18042116543911, '::1'),
(18042116582698, '::1'),
(18042117000563, '127.0.0.1'),
(18042117002036, '127.0.0.1'),
(18042117010934, '127.0.0.1'),
(18042117020385, '127.0.0.1'),
(18042117041135, '127.0.0.1'),
(18042117042389, '127.0.0.1'),
(18042117042744, '127.0.0.1'),
(18042117043781, '127.0.0.1'),
(18042117071416, '127.0.0.1'),
(18042117085413, '127.0.0.1'),
(18042117090966, '127.0.0.1'),
(18042117093617, '127.0.0.1'),
(18042117095474, '127.0.0.1'),
(18042117113685, '127.0.0.1'),
(18042117120306, '127.0.0.1'),
(18042117120599, '127.0.0.1'),
(18042117121076, '127.0.0.1'),
(18042117121744, '127.0.0.1'),
(18042117122626, '127.0.0.1'),
(18042117123425, '127.0.0.1'),
(18042117124471, '127.0.0.1'),
(18042117125412, '127.0.0.1'),
(18042117130718, '127.0.0.1'),
(18042117131100, '127.0.0.1'),
(18042117131588, '127.0.0.1'),
(18042117170814, '127.0.0.1'),
(18042117171604, '127.0.0.1'),
(18042117172458, '127.0.0.1'),
(18042117182454, '127.0.0.1'),
(18042117202904, '127.0.0.1'),
(18042117214455, '127.0.0.1'),
(18042200240738, '::1'),
(18042200241961, '::1'),
(18042200262380, '::1'),
(18042200284735, '::1'),
(18042200284972, '::1'),
(18042200285274, '::1'),
(18042219101797, '::1'),
(18042219121492, '::1'),
(18042219133112, '::1'),
(18042220201062, '::1'),
(18042220202585, '::1'),
(18042220214144, '::1'),
(18042220220960, '::1'),
(18042220243438, '::1'),
(18042220245394, '::1'),
(18042220245505, '::1'),
(18042220250315, '::1'),
(18042220250925, '::1'),
(18042220251605, '::1'),
(18042220254012, '::1'),
(18042220254453, '::1'),
(18042220254736, '::1'),
(18042220255604, '::1'),
(18042220255695, '::1'),
(18042220260371, '::1'),
(18042220260470, '::1'),
(18042220262880, '::1'),
(18042220262977, '::1'),
(18042220263349, '::1'),
(18042220264800, '::1'),
(18042220264929, '::1'),
(18042220272672, '::1'),
(18042220274175, '::1'),
(18042220274252, '::1'),
(18042220275053, '::1'),
(18042220275141, '::1'),
(18042220290499, '::1'),
(18042220292453, '::1'),
(18042220294156, '::1'),
(18042220294611, '::1'),
(18042220300723, '::1'),
(18042220301163, '::1'),
(18042220311576, '::1'),
(18042220312181, '::1'),
(18042220312431, '::1'),
(18042220314163, '::1'),
(18042220324758, '::1'),
(18042220324972, '::1'),
(18042220325295, '::1'),
(18042220330772, '::1'),
(18042220342652, '::1'),
(18042220344469, '::1'),
(18042220344575, '::1'),
(18042220345075, '::1'),
(18042220345906, '::1'),
(18042220363048, '::1'),
(18042220370524, '::1'),
(18042220370624, '::1'),
(18042220372185, '::1'),
(18042220372329, '::1'),
(18042220381678, '::1'),
(18042220384018, '::1'),
(18042220385281, '::1'),
(18042220391189, '::1'),
(18042220403978, '::1'),
(18042220404671, '::1'),
(18042220464294, '::1'),
(18042220464802, '::1'),
(18042220481048, '::1'),
(18042221044422, '::1'),
(18042221220406, '::1'),
(18042221222235, '::1'),
(18042221275723, '::1'),
(18042221320253, '::1'),
(18042221325532, '::1'),
(18042221332476, '::1'),
(18042221333655, '::1'),
(18042221333725, '::1'),
(18042221345730, '::1'),
(18042221501467, '::1'),
(18042221521161, '::1'),
(18042221524316, '::1'),
(18042222305533, '::1'),
(18042222315851, '::1'),
(18042222513576, '::1'),
(18042222520467, '::1'),
(18042222522639, '::1'),
(18042223304305, '::1'),
(18042223312856, '::1'),
(18042223423650, '::1'),
(18042300223142, '::1'),
(18042300230980, '::1'),
(18042300241188, '::1'),
(18042300243943, '::1'),
(18042311585041, '::1'),
(18042313415987, '::1'),
(18042313430927, '::1'),
(18042313445797, '::1'),
(18042313455852, '::1'),
(18042314002215, '::1'),
(18042319485141, '::1'),
(18042319530825, '::1'),
(18042413520244, '192.168.0.69'),
(18042413522613, '192.168.0.69'),
(18042413523197, '192.168.0.69'),
(18042413523860, '192.168.0.69'),
(18042413524420, '192.168.0.69'),
(18042413524903, '192.168.0.69'),
(18042413543178, '::1'),
(18042413544346, '::1'),
(18042413544950, '192.168.0.69'),
(18042413545932, '192.168.0.69'),
(18042413552617, '192.168.0.69'),
(18042413563755, '192.168.0.67'),
(18042413572421, '192.168.0.70'),
(18042414093680, '::1'),
(18042414093719, '::1'),
(18042414093734, '::1'),
(18042414093773, '::1'),
(18042414093804, '::1'),
(18042414240517, '192.168.0.70'),
(18042414244960, '192.168.0.70'),
(18042414245533, '192.168.0.70'),
(18042414255502, '192.168.0.70'),
(18042414261252, '192.168.0.70'),
(18042414274778, '192.168.0.70'),
(18042415051857, '192.168.0.69'),
(18042415055943, '192.168.0.67'),
(18042418353466, '::1'),
(18042418394453, '::1'),
(18042418402461, '::1'),
(18042418412175, '::1'),
(18042418412939, '::1'),
(18042418444689, '::1'),
(18042418455058, '::1'),
(18042418463443, '::1'),
(18042418464575, '::1'),
(18042418482427, '::1'),
(18042419001981, '::1'),
(18042419011506, '::1'),
(18042419033278, '::1'),
(18042419034605, '::1'),
(18042419034649, '::1'),
(18042419035620, '::1'),
(18042419051259, '::1'),
(18042419052768, '::1'),
(18042419063443, '::1'),
(18042419070867, '::1'),
(18042419075388, '::1'),
(18042419082617, '::1'),
(18042419090735, '::1'),
(18042419091879, '::1'),
(18042419091922, '::1'),
(18042419091948, '::1'),
(18042419095641, '::1'),
(18042420533759, '::1'),
(18042420594950, '192.168.0.70'),
(18042421054346, '192.168.0.70'),
(18042421063609, '192.168.0.70'),
(18042421064827, '192.168.0.70'),
(18042421074275, '192.168.0.70'),
(18042421083851, '192.168.0.70'),
(18042421095407, '192.168.0.70'),
(18042421103224, '192.168.0.70'),
(18042515254693, '192.168.0.69'),
(18042515263009, '192.168.0.69'),
(18042515263565, '192.168.0.69'),
(18042515273112, '192.168.0.69'),
(18042516430483, '192.168.0.70'),
(18042519485364, '::1'),
(18042519493865, '192.168.0.69'),
(18042519503647, '192.168.0.69'),
(18042519504538, '192.168.0.69'),
(18042519515099, '192.168.0.69'),
(18042519520423, '::1'),
(18042519521780, '::1'),
(18042519533392, '192.168.0.69'),
(18042519535954, '192.168.0.69'),
(18042519542372, '192.168.0.69'),
(18042519544720, '192.168.0.69'),
(18042519545419, '192.168.0.69'),
(18042519550966, '192.168.0.69'),
(18042519552899, '192.168.0.69'),
(18042519555454, '192.168.0.69'),
(18042519555733, '192.168.0.69'),
(18042519563009, '192.168.0.69'),
(18042519574469, '192.168.0.69'),
(18042519583169, '::1'),
(18042519594454, '::1'),
(18042520001242, '::1'),
(18042520001960, '::1'),
(18042520002746, '::1'),
(18042520003701, '::1'),
(18042520005540, '192.168.0.69'),
(18042520010622, '::1'),
(18042520010723, '::1'),
(18042520011173, '::1'),
(18042520011292, '::1'),
(18042520012091, '::1'),
(18042520012328, '::1'),
(18042520013510, '::1'),
(18042520014235, '::1'),
(18042520015551, '192.168.0.69'),
(18042520023189, '192.168.0.70'),
(18042520042528, '::1'),
(18042520061676, '192.168.0.69'),
(18042520065513, '192.168.0.69'),
(18042520070140, '192.168.0.69'),
(18042520074620, '192.168.0.67'),
(18042520093817, '192.168.0.69'),
(18042520094452, '192.168.0.69'),
(18042520115010, '192.168.0.75'),
(18042520185951, '::1'),
(18042520190497, '::1'),
(18042520191355, '::1'),
(18042520193334, '::1'),
(18042520200906, '::1'),
(18042520245482, '::1'),
(18042520252269, '::1'),
(18042520252964, '::1'),
(18042520265848, '::1'),
(18042520271710, '::1'),
(18042520281001, '192.168.0.69'),
(18042520281997, '192.168.0.69'),
(18042520290801, '192.168.0.69'),
(18042520291236, '192.168.0.69'),
(18042520294810, '::1'),
(18042520311241, '::1'),
(18042520311987, '192.168.0.69'),
(18042520315119, '192.168.0.69'),
(18042520320002, '::1'),
(18042520482583, '::1'),
(18042520483482, '::1'),
(18042521000466, '::1'),
(18042521031443, '::1'),
(18042521082000, '192.168.0.69'),
(18042612061466, '::1'),
(18042612070427, '::1'),
(18042612291293, '::1'),
(18042613190801, '192.168.0.69'),
(18042615424418, '::1'),
(18042616322317, '::1'),
(18042617221877, '192.168.0.69'),
(18042619025598, '::1'),
(18042619061609, '::1'),
(18042619062247, '::1'),
(18042717333123, '::1'),
(18042717393470, '::1'),
(18042718384910, '::1'),
(18042719041345, '::1'),
(18042815001949, '127.0.0.1'),
(18042815014601, '127.0.0.1'),
(18042815021028, '127.0.0.1'),
(18042815030883, '127.0.0.1'),
(18042815114189, '127.0.0.1'),
(18042815123477, '127.0.0.1'),
(18042815125607, '127.0.0.1'),
(18042815342716, '::1'),
(18042815422626, '::1'),
(18042816051809, '::1'),
(18042816061411, '::1'),
(18042816062631, '::1'),
(18042816070259, '::1'),
(18042816082042, '::1'),
(18042816092843, '::1'),
(18042816111071, '::1'),
(18042816111298, '::1'),
(18042816160915, '::1'),
(18042816173974, '::1'),
(18042816181932, '::1'),
(18042817015030, '127.0.0.1'),
(18042817033873, '127.0.0.1'),
(18042817052816, '127.0.0.1'),
(18042817061982, '127.0.0.1');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_visit`
--

CREATE TABLE `g5_visit` (
  `vi_id` int(11) NOT NULL DEFAULT '0',
  `vi_ip` varchar(255) NOT NULL DEFAULT '',
  `vi_date` date NOT NULL DEFAULT '0000-00-00',
  `vi_time` time NOT NULL DEFAULT '00:00:00',
  `vi_referer` text NOT NULL,
  `vi_agent` varchar(255) NOT NULL DEFAULT '',
  `vi_browser` varchar(255) NOT NULL DEFAULT '',
  `vi_os` varchar(255) NOT NULL DEFAULT '',
  `vi_device` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_visit`
--

INSERT INTO `g5_visit` (`vi_id`, `vi_ip`, `vi_date`, `vi_time`, `vi_referer`, `vi_agent`, `vi_browser`, `vi_os`, `vi_device`) VALUES
(1, '::1', '2018-04-15', '23:54:04', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', '', ''),
(2, '::1', '2018-04-16', '09:21:47', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', '', ''),
(3, '::1', '2018-04-17', '09:24:58', 'http://localhost/bbs/login.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', '', ''),
(4, '192.168.0.84', '2018-04-17', '21:07:08', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', '', ''),
(5, '::1', '2018-04-18', '09:36:26', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', '', ''),
(6, '127.0.0.1', '2018-04-18', '09:36:29', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', '', ''),
(7, '::1', '2018-04-19', '09:37:33', 'http://localhost/1/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', '', ''),
(8, '184.105.247.196', '2018-04-19', '23:24:48', '', '', '', '', ''),
(9, '::1', '2018-04-20', '00:17:56', 'http://localhost/bbs/board.php?bo_table=vlt&sca=%EC%9E%90%EC%9B%90%EB%B4%89%EC%82%AC%EC%9E%90%EB%A1%A0+1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', '', ''),
(10, '66.249.82.187', '2018-04-20', '00:52:28', '', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G955N Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36', '', '', ''),
(11, '66.249.82.185', '2018-04-20', '00:52:43', 'http://211.184.57.47/', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G955N Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36', '', '', ''),
(12, '66.249.82.183', '2018-04-20', '00:53:47', 'http://211.184.57.47/index.php?device=pc', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G955N Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36', '', '', ''),
(13, '192.168.0.69', '2018-04-20', '16:23:38', '', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G955N Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.106 Mobile Safari/537.36', '', '', ''),
(14, '165.84.140.129', '2018-04-21', '00:04:47', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, Like Gecko) Chrome/45.0.2454.85', '', '', ''),
(15, '216.218.206.67', '2018-04-21', '00:05:15', '', '', '', '', ''),
(16, '::1', '2018-04-21', '00:18:20', 'http://localhost/bbs/board.php?bo_table=gallery', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', '', ''),
(17, '60.191.52.254', '2018-04-21', '00:48:42', '', 'Java/1.8.0_77', '', '', ''),
(18, '31.184.193.154', '2018-04-21', '01:19:28', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', '', ''),
(19, '127.0.0.1', '2018-04-21', '15:32:44', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', '', ''),
(20, '123.186.212.12', '2018-04-22', '00:06:37', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 Safari/537.36 SE 2.X MetaSr 1.0', '', '', ''),
(21, '::1', '2018-04-22', '00:20:06', 'http://localhost/bbs/board.php?bo_table=recruitment&wr_id=1&page=0&sca=%EB%8F%99%EC%95%84%EB%A6%AC+%EB%AA%A8%EC%A7%91', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', '', ''),
(22, '39.170.144.234', '2018-04-22', '19:29:44', '', 'Mozilla/4.0 (compatible; Win32; WinHttp.WinHttpRequest.5)', '', '', ''),
(23, '31.184.193.154', '2018-04-22', '19:45:09', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', '', ''),
(24, '164.52.24.140', '2018-04-22', '20:52:57', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', '', '', ''),
(25, '184.105.247.194', '2018-04-22', '23:19:10', '', '', '', '', ''),
(26, '::1', '2018-04-23', '00:22:31', 'http://localhost/bbs/board.php?bo_table=vlt&sca=%EC%9E%90%EC%9B%90%EB%B4%89%EC%82%AC%EC%9E%90%EB%A1%A0%203&wr_id=28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', '', ''),
(27, '14.210.0.22', '2018-04-23', '01:44:40', 'http://211.184.57.47:80', 'Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1)', '', '', ''),
(28, '192.168.0.69', '2018-04-23', '15:48:23', '', 'Mozilla/5.0 (Linux; Android 8.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Focus/4.1 Chrome/66.0.3359.106 Mobile Safari/537.36', '', '', ''),
(29, '::1', '2018-04-24', '11:47:40', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', '', ''),
(30, '192.168.0.67', '2018-04-24', '13:55:51', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', '', '', ''),
(31, '192.168.0.70', '2018-04-24', '13:56:36', '', 'Mozilla/5.0 (Linux; Android 7.0; SM-A520S Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36', '', '', ''),
(32, '192.168.0.84', '2018-04-24', '15:06:33', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', '', ''),
(33, '192.168.0.69', '2018-04-24', '17:22:00', '', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G955N Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36', '', '', ''),
(34, '::1', '2018-04-25', '12:33:29', 'http://localhost/bbs/board.php?bo_table=recruitment&sca=%EB%8F%99%EC%95%84%EB%A6%AC+%EB%AA%A8%EC%A7%91', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', '', ''),
(35, '192.168.0.69', '2018-04-25', '18:35:56', 'http://192.168.0.84/1/1', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G955N Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36', '', '', ''),
(36, '192.168.0.67', '2018-04-25', '18:37:00', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E216 NAVER(inapp; search; 580; 8.6.4; 7PLUS)', '', '', ''),
(37, '192.168.0.75', '2018-04-25', '20:11:26', '', 'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-N935K/KKU3AQK4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/6.4 Chrome/56.0.2924.87 Mobile Safari/537.36', '', '', ''),
(38, '192.168.0.76', '2018-04-26', '12:35:02', '', 'Mozilla/5.0 (Linux; Android 7.0; SM-A810S Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36', '', '', ''),
(39, '::1', '2018-04-26', '12:35:31', 'http://localhost/bbs/board.php?bo_table=gallery', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', '', ''),
(40, '192.168.0.69', '2018-04-26', '13:17:02', '', 'Mozilla/5.0 (Linux; Android 8.0.0; SAMSUNG SM-G955N/KSU1CRCB Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/7.0 Chrome/59.0.3071.125 Mobile Safari/537.36', '', '', ''),
(41, '::1', '2018-04-27', '14:36:46', 'http://localhost/bbs/board.php?bo_table=recruitment&sca=%EC%9E%90%EC%9B%90%EB%B4%89%EC%82%AC%EC%9E%90%20%EB%AA%A8%EC%A7%91&wr_id=13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '', '', ''),
(42, '192.168.0.69', '2018-04-27', '19:11:02', '', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G955N Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36', '', '', ''),
(43, '127.0.0.1', '2018-04-28', '13:14:26', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_visit_sum`
--

CREATE TABLE `g5_visit_sum` (
  `vs_date` date NOT NULL DEFAULT '0000-00-00',
  `vs_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_visit_sum`
--

INSERT INTO `g5_visit_sum` (`vs_date`, `vs_count`) VALUES
('2018-04-15', 1),
('2018-04-16', 1),
('2018-04-17', 2),
('2018-04-18', 2),
('2018-04-19', 2),
('2018-04-20', 5),
('2018-04-21', 6),
('2018-04-22', 6),
('2018-04-23', 3),
('2018-04-24', 5),
('2018-04-25', 4),
('2018-04-26', 3),
('2018-04-27', 2),
('2018-04-28', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_calander`
--

CREATE TABLE `g5_write_calander` (
  `wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_calander`
--

INSERT INTO `g5_write_calander` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(1, -1, '', 1, 0, 0, '', '', 'html1', '2018학년도 1학기', '<p><span id=\"husky_bookmark_start_1524899822961\"></span></p><table style=\"border-collapse:collapse;table-layout:fixed;border-top:solid #000000 0.28pt;border-left:solid #000000 0.28pt;border-bottom:solid #000000 0.28pt;border-right:solid #000000 0.28pt;mso-table-overlap:never;\"><tbody><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #000000 1.70pt;border-left:none;border-bottom:solid #74c3cc 0.28pt;border-right:none;background:#e7f4f6;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span style=\"font-family:돋움;mso-fareast-font-family:돋움;font-weight:bold;font-size:9.0pt;color:#255e65;\">시간</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #000000 1.70pt;border-left:none;border-bottom:solid #74c3cc 0.28pt;border-right:none;background:#e7f4f6;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span style=\"font-family:돋움;mso-fareast-font-family:돋움;font-weight:bold;font-size:9.0pt;color:#255e65;\">월</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #000000 1.70pt;border-left:none;border-bottom:solid #74c3cc 0.28pt;border-right:none;background:#e7f4f6;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span style=\"font-family:돋움;mso-fareast-font-family:돋움;font-weight:bold;font-size:9.0pt;color:#255e65;\">화</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #000000 1.70pt;border-left:none;border-bottom:solid #74c3cc 0.28pt;border-right:none;background:#e7f4f6;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span style=\"font-family:돋움;mso-fareast-font-family:돋움;font-weight:bold;font-size:9.0pt;color:#255e65;\">수</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #000000 1.70pt;border-left:none;border-bottom:solid #74c3cc 0.28pt;border-right:none;background:#e7f4f6;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span style=\"font-family:돋움;mso-fareast-font-family:돋움;font-weight:bold;font-size:9.0pt;color:#255e65;\">목</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #000000 1.70pt;border-left:none;border-bottom:solid #74c3cc 0.28pt;border-right:none;background:#e7f4f6;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span style=\"font-family:돋움;mso-fareast-font-family:돋움;font-weight:bold;font-size:9.0pt;color:#255e65;\">금</span></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #74c3cc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">09:00 ~ 09:30</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #74c3cc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #74c3cc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #74c3cc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #74c3cc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #74c3cc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">09:30 ~ 10:00</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">10:00 ~ 10:30</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">10:30 ~ 11:00</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td rowspan=\"4\" style=\"width:86.90pt;height:88.56pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;background:#e7f4f6;\" valign=\"middle\"><p class=\"0\" style=\"line-height:120%;text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span style=\"font-family:돋움;mso-fareast-font-family:돋움;font-size:9.0pt;color:#ffffff;background:#74c3cc;\">뷰티케어</span><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;color:#ffffff;background:#74c3cc;\">1</span></p><p class=\"0\" style=\"line-height:120%;text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">(</span><span style=\"font-family:돋움;mso-fareast-font-family:돋움;font-size:9.0pt;\">헤어</span><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">)</span></p><p class=\"0\" style=\"line-height:120%;text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">(10:30~12:30)</span></p><p class=\"0\" style=\"line-height:120%;text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">[</span><span style=\"font-family:돋움;mso-fareast-font-family:돋움;font-size:9.0pt;\">교육지원사업</span><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">]</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">11:00 ~ 11:30</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">11:30 ~ 12:00</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">12:00 ~ 12:30</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:43.20pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">12:30 ~ 13:00</span></p></td><td style=\"width:86.90pt;height:43.20pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td rowspan=\"2\" style=\"width:86.90pt;height:87.62pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;background:#e7f4f6;\" valign=\"middle\"><p class=\"0\" style=\"line-height:120%;text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;color:#ffffff;background:#74c3cc;\">SCI </span><span style=\"font-family:돋움;mso-fareast-font-family:돋움;font-size:9.0pt;color:#ffffff;background:#74c3cc;\">동아리활동</span></p><p class=\"0\" style=\"line-height:120%;text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">(12:30~13:30)</span></p><p class=\"0\" style=\"line-height:120%;text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">(6</span><span style=\"font-family:돋움;mso-fareast-font-family:돋움;font-size:9.0pt;\">회</span><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">)</span></p><p class=\"0\" style=\"line-height:120%;text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">9/26,10/17,10/31</span></p><p class=\"0\" style=\"line-height:120%;text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">11/14,11/28,12/5</span></p><p class=\"0\" style=\"line-height:120%;text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">[</span><span style=\"font-family:돋움;mso-fareast-font-family:돋움;font-size:9.0pt;\">커뮤니티사업</span><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">]</span></p></td><td style=\"width:86.90pt;height:43.20pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:43.20pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:43.20pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:44.42pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">13:00 ~ 13:30</span></p></td><td style=\"width:86.90pt;height:44.42pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:44.42pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:44.42pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:44.42pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">13:30 ~ 14:00</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">14:00 ~ 14:30</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">14:30 ~ 15:00</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">15:00 ~ 15:30</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">15:30 ~ 16:00</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">16:00 ~ 16:30</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:solid #cccccc 0.28pt;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr><tr><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:none;border-bottom:none;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\"><span lang=\"EN-US\" style=\"mso-fareast-font-family:돋움;font-family:돋움;mso-ascii-font-family:돋움;mso-font-width:100%;letter-spacing:0pt;mso-text-raise:0pt;font-size:9.0pt;\">16:30 ~ 17:00</span></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:none;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:none;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:none;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:none;border-right:solid #cccccc 0.28pt;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td><td style=\"width:86.90pt;height:22.14pt;padding:1.41pt 5.10pt 1.41pt 5.10pt;border-top:solid #cccccc 0.28pt;border-left:solid #cccccc 0.28pt;border-bottom:none;border-right:none;\" valign=\"middle\"><p class=\"0\" style=\"text-align:center;word-break:keep-all;mso-pagination:none;text-autospace:none;mso-padding-alt:0pt 0pt 0pt 0pt;\">  <!--[if !supportEmptyParas]-->&nbsp;<!--[endif]-->  <o:p></o:p></p></td></tr></tbody></table>', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-28 15:34:30', 0, '2018-04-28 15:34:30', '::1', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_club_apply`
--

CREATE TABLE `g5_write_club_apply` (
  `idx` int(11) NOT NULL,
  `mb_id` varchar(255) NOT NULL,
  `club_name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `cnt` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_club_apply`
--

INSERT INTO `g5_write_club_apply` (`idx`, `mb_id`, `club_name`, `content`, `cnt`, `date`) VALUES
(5, 'admin', '고양이 밥주기', '고양이 밥주러 가즈아~', 0, '2018-04-23 13:40:17');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_gallery`
--

CREATE TABLE `g5_write_gallery` (
  `wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_gallery`
--

INSERT INTO `g5_write_gallery` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(1, -1, '', 1, 0, 0, '', '', 'html1', 'asdsa', '<p>dasdwfaaaetfewsewstwestw</p>', '', '', 0, 0, 9, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-21 17:21:50', 1, '2018-04-21 17:21:50', '127.0.0.1', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, -2, '', 2, 0, 0, '', '', 'html1', '갤러리 테스트1', '<p>갤러리 테스트1갤러리 테스트1<br></p>', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-24 18:46:28', 1, '2018-04-24 18:46:28', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, -3, '', 3, 0, 0, '', '', 'html1', '갤러리 테스트2', '<p>ㅁㄴㄹㄴㅇㅎㅇㄶㅇㄴ<br></p>', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-24 18:46:42', 1, '2018-04-24 18:46:42', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, -4, '', 4, 0, 0, '', '', 'html1', '갤러리 테스트3', '<p>ㄴㅇㅎㅇ럿요ㅓㅏ요ㅓㅍ</p>', '', '', 0, 0, 5, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-24 18:46:56', 1, '2018-04-24 18:46:56', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, -5, '', 5, 0, 0, '', '', 'html1', '갤러리 테스트1갤러리 테스트1갤러리 테스트1갤러리 테스트1갤러리 테스트1갤러리 테스트1갤러리 테스트1갤러리 테스트1갤러리 테스트1갤러리 테스트1갤러리 테스트1갤러리 테스트1갤러리 테??', '<p>갤러리 테스트1ㅁㄴㅇㅁㄴㄻㄴㅀ<br></p>', '', '', 0, 0, 7, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-24 18:48:30', 1, '2018-04-24 18:48:30', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, -6, '', 6, 0, 0, '', '', '', '이미지 크기 테스트', '오대조야오대너ㅠㅇ저나제ㅠ', '', '', 0, 0, 21, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-24 20:54:20', 1, '2018-04-24 20:54:20', '::1', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_qna`
--

CREATE TABLE `g5_write_qna` (
  `wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_qna`
--

INSERT INTO `g5_write_qna` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(15, -1, '', 15, 0, 0, '', '수업 QnA', '', 'ㅁㄴㅇ', 'ㅁㄴㅇ', '', '', 0, 0, 3, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-20 18:26:03', 0, '2018-04-20 18:26:03', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, -2, '', 16, 0, 0, '', '수업 QnA', 'html1', '파일 업로드 합니다', '<p>파일 업로드 합니다파일 업로드 합니다파일 업</p><p>로드 합니다파일 업로드 합니다파일 업로드 합니다파일 업로드 합니다파일 업로드 합니다파일 업로드 합니다파일 업로드 합니다파일 업로드 합니다</p>', '', '', 0, 0, 8, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-20 19:43:28', 2, '2018-04-20 19:43:28', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, -3, '', 18, 0, 0, '', '수업 QnA', '', 'asd', 'asd', '', '', 0, 0, 6, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-20 22:34:03', 0, '2018-04-20 22:34:03', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, -4, '', 19, 0, 0, '', '수업 QnA', '', 'rrf', 'rffrdgrg', '', '', 0, 0, 7, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-20 22:34:27', 0, '2018-04-20 22:34:27', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, -5, '', 21, 0, 2, '', '수업 QnA', '', '댓글을 달아 주세요', '으하하', '', '', 0, 0, 17, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-21 01:33:05', 0, '2018-04-21 15:48:41', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, -6, '', 22, 0, 0, '', '자원봉사자 QnA', '', 'A', 'B', '', '', 0, 0, 11, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-21 15:10:54', 0, '2018-04-21 15:10:54', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, -5, '', 21, 1, 1, '', '수업 QnA', '', '', 'asdsadas', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-21 15:48:37', 0, '', '127.0.0.1', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, -5, '', 21, 1, 1, 'A', '수업 QnA', '', '', 'ㄴㄴㄴㄴㄴ', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-21 15:48:41', 0, '', '127.0.0.1', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, -4, 'A', 27, 0, 0, '', '수업 QnA', 'html1', 'ㅇㅇㅇ', 'ㄷㄷㄷㄷㄷ', '', '', 0, 0, 3, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-22 00:26:32', 0, '2018-04-22 00:26:32', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, -7, '', 28, 0, 0, '', '수업 QnA', '', '질문이있습니다', 'd8えいえjhtじぇけんしskdけkfjどえじぇけいえいえおえいdじぇおwpsんふぃえ', '', '', 0, 0, 7, 0, 0, 'rlatpdnr01', '*ED0291157C8CEFBDF06A5FFBAF2AA8EFF8B85828', '김세욱', 'rlatpdnr01@naver.com', '', '2018-04-24 21:06:07', 0, '2018-04-24 21:06:07', '192.168.0.70', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, -8, '', 29, 0, 0, '', '수업 QnA', '', 'づうwじぇjd', 'dっけkrkd', '', '', 0, 0, 8, 0, 0, 'rlatpdnr01', '*ED0291157C8CEFBDF06A5FFBAF2AA8EFF8B85828', '김세욱', 'rlatpdnr01@naver.com', '', '2018-04-24 21:07:23', 0, '2018-04-24 21:07:23', '192.168.0.70', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, -9, '', 30, 0, 0, '', '수업 QnA', '', 'g', 'えくじょ', '', '', 0, 0, 1, 0, 0, 'rlatpdnr01', '*ED0291157C8CEFBDF06A5FFBAF2AA8EFF8B85828', '김세욱', 'rlatpdnr01@naver.com', '', '2018-04-24 21:10:29', 0, '2018-04-24 21:10:29', '192.168.0.70', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, -10, '', 31, 0, 0, '', '수업 QnA', '', 'wkkssh', 'ㅇㅇㅇ', '', '', 0, 0, 5, 0, 0, 'test', '*A4B6157319038724E3560894F7F932C8886EBFCF', '테스터', 'tjsdlf4261@naver.com', '', '2018-04-25 16:43:14', 0, '2018-04-25 16:43:14', '192.168.0.70', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_recruitment`
--

CREATE TABLE `g5_write_recruitment` (
  `wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_recruitment`
--

INSERT INTO `g5_write_recruitment` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(1, -1, '', 1, 0, 3, '', '동아리 모집', '', '제목입니다', '내용이 드을어 가아압니이다아', '', '', 0, 0, 8, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-21 16:54:01', 0, '2018-04-22 23:30:04', '::1', '', '', '고양이 밥주기', '김민혁', '1', '30101', '010-0101-0101', 'asd@asd.asd', '뭐야이건', '', '', ''),
(9, -2, '', 9, 0, 0, '', '자원봉사자 모집', '', '기능반 청소', '[\"%EC%82%BC%EC%9D%BC%EA%B3%B5%EA%B3%A0\",\"%EA%B9%80%EB%AF%BC%ED%98%81\",\"%EB%AA%A8%EC%A7%91%EC%A4%91\",\"%EC%88%98%EC%9B%90\",\"%EC%82%BC%EC%9D%BC%EA%B3%B5%EC%97%85%EA%B3%A0%EB%93%B1%ED%95%99%EA%B5%90\",\"%EC%97%AC%EB%9F%AC%EB%B6%84\",\"10%EB%AA%85\",\"%EB%AD%90%EB%9E%98\",\"%EA%BE%B8%EC%A4%80%ED%9E%88\",\"4%EC%9B%94+1%EC%9D%BC+%EB%B6%80%ED%84%B0+4%EC%9B%94+10%EC%9D%BC+%EA%B9%8C%EC%A7%80\",\"%EB%84%A4%EB%84%A4+%EC%83%81%EC%84%B8%EB%82%B4%EC%9A%A9%EC%9E%85%EB%8B%88%EB%8B%A4.\",\"%EA%B6%8C%EC%9A%A9%ED%98%B8\",\"010-1234-1234\",\"a%40a.a\",\"99089\",\"%EB%AC%B4%EA%B4%80\",\"%ED%95%99%EC%83%9D%EB%93%A4\",\"%EC%82%BC%EC%9D%BC%EA%B3%B5%EA%B3%A0+%EA%B8%B0%EB%8A%A5%EB%B0%98%EC%97%90%EC%84%9C+%EC%A7%84%ED%96%89%ED%95%A9%EB%8B%88%EB%8B%A4\"]', 'http://www.samil-th.or.kr', '', 0, 0, 18, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-22 20:24:06', 0, '2018-04-22 20:24:06', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, -1, '', 1, 1, 1, '', '동아리 모집', '', '', '어머', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-22 00:14:45', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, -1, '', 1, 1, 1, 'A', '동아리 모집', '', '', '어멋!', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-22 23:29:49', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, -1, '', 1, 1, 1, 'B', '동아리 모집', '', '', '어머 꼭 신청하고 싶다', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-22 23:30:04', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, -3, '', 12, 0, 0, '', '동아리 모집', '', '멍때리기 동아리 모집합니당!', '멍때리면 되는 동아리입니다', '', '', 0, 0, 14, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-22 23:43:27', 0, '2018-04-22 23:43:27', '::1', '', '', '멍때리기', '김민혁', '3', '12222', '1234', 'a@a.a', '??', '', '', ''),
(13, -4, '', 13, 0, 0, '', '자원봉사자 모집', '', '기능반 분리수거', '[\"%EC%82%BC%EC%9D%BC%EA%B3%B5%EA%B3%A0+%EA%B8%B0%EB%8A%A5%EB%B0%98\",\"%EA%B9%80%EB%AF%BC%ED%98%81\",\"%EB%AA%A8%EC%A7%91%EC%A4%91\",\"%EA%B2%BD%EA%B8%B0%EB%8F%84+%EC%88%98%EC%9B%90%EC%8B%9C\",\"%EC%82%BC%EC%9D%BC%EA%B3%B5%EC%97%85%EA%B3%A0%EB%93%B1%ED%95%98%EA%B5%91\",\"%ED%95%99%EC%83%9D%EB%93%A4\",\"30%EB%AA%85\",\"%EB%B6%84%EB%A6%AC%EC%88%98%EA%B1%B0\",\"%EB%A7%A4%EC%A3%BC+%EC%88%98%EC%9A%94%EC%9D%BC\",\"%EC%98%81%EC%9B%90%ED%9E%88\",\"%EB%B4%89%EC%82%AC+%EC%83%81%EC%84%B8+%EB%82%B4%EC%9A%A9\",\"%EA%B6%8C%EC%9A%A9%ED%98%B8\",\"01001010101\",\"a%40a.a\",\"99\",\"%EB%AC%B4%EA%B4%80\",\"%EC%97%86%EC%9D%8C\",\"%EC%97%86%EC%9D%8C\"]', 'http://www.samil-th.or.kr/', '', 0, 0, 25, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-23 12:00:03', 0, '2018-04-23 12:00:03', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, -5, '', 14, 0, 0, '', '동아리 모집', '', '제목이 얼마나 길ㅛㅅ곣쇼ㅑㅑ교샤ㅕㄱㄷ쇼ㅕㅑㅁㅇㄴㅁㄴㄱㄹㄴㅇㄹㅇㄴㅀㅇㄹ홍ㄹ홍ㅊㄹ홓ㄱㅈㅅㄹㄷㅎㄱㄱㅁㄴㅅ', '제목이 얼마나 길어지려냐ㅇㅁ니ㅏ런아ㅣㄹ언', '', '', 0, 0, 21, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-23 19:49:12', 0, '2018-04-23 19:49:12', '::1', '', '', '제목이 얼마나 길어지려냐ㅇㅁ니ㅏ런아ㅣㄹ언', '제목이 얼마나 길어지려냐ㅇㅁ니ㅏ런아ㅣㄹ언', '3', '제목ㄷㅇㄹㅇㄹ이 얼마나 길어지려냐ㅇㅁ니ㅏ런아ㅣㄹ언', '제목이 얼마나 길어지려냐ㅇㅁ니ㅏ런아ㅣㄹ언', '제목이 얼마나 길어지려냐ㅇㅁ니ㅏ런아ㅣㄹ언', '제목이 얼마나 길어지려냐ㅇㅁ니ㅏ런아ㅣㄹ언', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_recruitment2`
--

CREATE TABLE `g5_write_recruitment2` (
  `wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_area` text NOT NULL,
  `wr_place` text NOT NULL,
  `wr_target` text NOT NULL,
  `wr_ personnel` text NOT NULL,
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_field` varchar(100) NOT NULL,
  `wr_cycle` varchar(100) NOT NULL,
  `wr_term` varchar(100) NOT NULL,
  `wr_manager` varchar(100) NOT NULL,
  `wr_manager-tel` varchar(100) NOT NULL,
  `wr_manager-email` varchar(100) NOT NULL,
  `wr_vol-age` varchar(100) NOT NULL,
  `wr_sex` varchar(100) NOT NULL,
  `wr_ability` varchar(100) NOT NULL,
  `wr_ot` varchar(100) NOT NULL,
  `wr_link1` varchar(255) NOT NULL,
  `wr_link2` varchar(255) NOT NULL,
  `wr_center` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_vlt`
--

CREATE TABLE `g5_write_vlt` (
  `wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_vlt`
--

INSERT INTO `g5_write_vlt` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(28, -1, '', 28, 0, 0, '', '공지', '', '공지다공지다', '공지다공지다공지다공지다공지다공지다공지다공지다공지다공지다공지다공지다공지다공지다공지다공지다공지다공지다공지다공지다공지다', '', '', 0, 0, 16, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-21 12:31:15', 0, '2018-04-21 12:31:15', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, -2, '', 29, 0, 0, '', '자원봉사자론 1', 'html1', 'bb', '<p>검색 할 래 텟 ㅡ ㅌ&nbsp; ㅣ</p>', '', '', 0, 0, 10, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', 'admin@domain.com', '', '2018-04-21 17:20:36', 1, '2018-04-21 17:20:36', '127.0.0.1', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_vol_apply`
--

CREATE TABLE `g5_write_vol_apply` (
  `idx` int(11) NOT NULL,
  `midx` int(11) NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `mb_id` varchar(100) NOT NULL,
  `mb_name` varchar(100) NOT NULL,
  `mb_sex` varchar(100) NOT NULL,
  `mb_birthday` varchar(100) NOT NULL,
  `mb_tel` int(11) NOT NULL,
  `mb_vms` varchar(100) NOT NULL,
  `mb_email` varchar(100) NOT NULL,
  `mb_sid` varchar(100) NOT NULL,
  `mb_sname` varchar(100) NOT NULL,
  `mb_study` varchar(100) NOT NULL,
  `mb_address` varchar(255) NOT NULL,
  `vol_exp` varchar(100) NOT NULL,
  `vol_date` varchar(100) NOT NULL,
  `vol_time` varchar(255) NOT NULL,
  `vol_facility` varchar(100) NOT NULL,
  `vol_facility_sub` varchar(255) NOT NULL,
  `vol_sanction` varchar(100) NOT NULL,
  `vol_sanction_sub` varchar(255) NOT NULL,
  `vol_pro` varchar(100) NOT NULL,
  `vol_pro_sub` varchar(255) NOT NULL,
  `vol_area` varchar(100) NOT NULL,
  `vol_area_sub` varchar(255) NOT NULL,
  `vol_another` varchar(100) NOT NULL,
  `vol_abroad_sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_vol_apply`
--

INSERT INTO `g5_write_vol_apply` (`idx`, `midx`, `wr_subject`, `mb_id`, `mb_name`, `mb_sex`, `mb_birthday`, `mb_tel`, `mb_vms`, `mb_email`, `mb_sid`, `mb_sname`, `mb_study`, `mb_address`, `vol_exp`, `vol_date`, `vol_time`, `vol_facility`, `vol_facility_sub`, `vol_sanction`, `vol_sanction_sub`, `vol_pro`, `vol_pro_sub`, `vol_area`, `vol_area_sub`, `vol_another`, `vol_abroad_sub`) VALUES
(7, 13, '기능반 분리수거', 'admin', '김민혁', '남자', '2000,3,28', 1032049489, 'vms', 'alsgur0008@naver.com', '31204', '삼일공고', '미디어', '경기도,home,수원시', 'on', '월,화,금,토', '오후(12~18시),저녁(18~24시),상시가능', '시설봉사', '생활지원,교육지원,정서지원,사회활동지원,여가선용,취업지원,업무보조,시설정비,각종행사보조, ', '', '', '', '', '지역사회봉사', '민원안내,', '', ''),
(8, 13, '기능반 분리수거', 'test', 'asd', '남자', '2000,2,2', 123, '123', 'asd@asd,asd', '123', '123', '123', '123,company', 'on', '월,화,수,금,일', '오전(00~12시),오후(12~18시),저녁(18~24시),상시가능', '시설봉사', '생활지원,교육지원,각종행사보조,', 'on', '여가선용,취업지원,업무보조,', '전문봉사', '전문상담,', '지역사회봉사', '환경보호,예술,문화향샹 등,', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_book`
--

CREATE TABLE `sms5_book` (
  `bk_no` int(11) NOT NULL,
  `bg_no` int(11) NOT NULL DEFAULT '0',
  `mb_no` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bk_name` varchar(255) NOT NULL DEFAULT '',
  `bk_hp` varchar(255) NOT NULL DEFAULT '',
  `bk_receipt` tinyint(4) NOT NULL DEFAULT '0',
  `bk_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bk_memo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_book_group`
--

CREATE TABLE `sms5_book_group` (
  `bg_no` int(11) NOT NULL,
  `bg_name` varchar(255) NOT NULL DEFAULT '',
  `bg_count` int(11) NOT NULL DEFAULT '0',
  `bg_member` int(11) NOT NULL DEFAULT '0',
  `bg_nomember` int(11) NOT NULL DEFAULT '0',
  `bg_receipt` int(11) NOT NULL DEFAULT '0',
  `bg_reject` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `sms5_book_group`
--

INSERT INTO `sms5_book_group` (`bg_no`, `bg_name`, `bg_count`, `bg_member`, `bg_nomember`, `bg_receipt`, `bg_reject`) VALUES
(1, '미분류', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_config`
--

CREATE TABLE `sms5_config` (
  `cf_phone` varchar(255) NOT NULL DEFAULT '',
  `cf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_form`
--

CREATE TABLE `sms5_form` (
  `fo_no` int(11) NOT NULL,
  `fg_no` tinyint(4) NOT NULL DEFAULT '0',
  `fg_member` char(1) NOT NULL DEFAULT '0',
  `fo_name` varchar(255) NOT NULL DEFAULT '',
  `fo_content` text NOT NULL,
  `fo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_form_group`
--

CREATE TABLE `sms5_form_group` (
  `fg_no` int(11) NOT NULL,
  `fg_name` varchar(255) NOT NULL DEFAULT '',
  `fg_count` int(11) NOT NULL DEFAULT '0',
  `fg_member` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_history`
--

CREATE TABLE `sms5_history` (
  `hs_no` int(11) NOT NULL,
  `wr_no` int(11) NOT NULL DEFAULT '0',
  `wr_renum` int(11) NOT NULL DEFAULT '0',
  `bg_no` int(11) NOT NULL DEFAULT '0',
  `mb_no` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bk_no` int(11) NOT NULL DEFAULT '0',
  `hs_name` varchar(30) NOT NULL DEFAULT '',
  `hs_hp` varchar(255) NOT NULL DEFAULT '',
  `hs_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hs_flag` tinyint(4) NOT NULL DEFAULT '0',
  `hs_code` varchar(255) NOT NULL DEFAULT '',
  `hs_memo` varchar(255) NOT NULL DEFAULT '',
  `hs_log` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_write`
--

CREATE TABLE `sms5_write` (
  `wr_no` int(11) NOT NULL DEFAULT '1',
  `wr_renum` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(255) NOT NULL DEFAULT '',
  `wr_message` varchar(255) NOT NULL DEFAULT '',
  `wr_booking` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_total` int(11) NOT NULL DEFAULT '0',
  `wr_re_total` int(11) NOT NULL DEFAULT '0',
  `wr_success` int(11) NOT NULL DEFAULT '0',
  `wr_failure` int(11) NOT NULL DEFAULT '0',
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_memo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `g5_auth`
--
ALTER TABLE `g5_auth`
  ADD PRIMARY KEY (`mb_id`,`au_menu`);

--
-- 테이블의 인덱스 `g5_autosave`
--
ALTER TABLE `g5_autosave`
  ADD PRIMARY KEY (`as_id`),
  ADD UNIQUE KEY `as_uid` (`as_uid`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_board`
--
ALTER TABLE `g5_board`
  ADD PRIMARY KEY (`bo_table`);

--
-- 테이블의 인덱스 `g5_board_file`
--
ALTER TABLE `g5_board_file`
  ADD PRIMARY KEY (`bo_table`,`wr_id`,`bf_no`);

--
-- 테이블의 인덱스 `g5_board_good`
--
ALTER TABLE `g5_board_good`
  ADD PRIMARY KEY (`bg_id`),
  ADD UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`);

--
-- 테이블의 인덱스 `g5_board_new`
--
ALTER TABLE `g5_board_new`
  ADD PRIMARY KEY (`bn_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_cert_history`
--
ALTER TABLE `g5_cert_history`
  ADD PRIMARY KEY (`cr_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_content`
--
ALTER TABLE `g5_content`
  ADD PRIMARY KEY (`co_id`);

--
-- 테이블의 인덱스 `g5_faq`
--
ALTER TABLE `g5_faq`
  ADD PRIMARY KEY (`fa_id`),
  ADD KEY `fm_id` (`fm_id`);

--
-- 테이블의 인덱스 `g5_faq_master`
--
ALTER TABLE `g5_faq_master`
  ADD PRIMARY KEY (`fm_id`);

--
-- 테이블의 인덱스 `g5_group`
--
ALTER TABLE `g5_group`
  ADD PRIMARY KEY (`gr_id`);

--
-- 테이블의 인덱스 `g5_group_member`
--
ALTER TABLE `g5_group_member`
  ADD PRIMARY KEY (`gm_id`),
  ADD KEY `gr_id` (`gr_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_login`
--
ALTER TABLE `g5_login`
  ADD PRIMARY KEY (`lo_ip`);

--
-- 테이블의 인덱스 `g5_mail`
--
ALTER TABLE `g5_mail`
  ADD PRIMARY KEY (`ma_id`);

--
-- 테이블의 인덱스 `g5_member`
--
ALTER TABLE `g5_member`
  ADD PRIMARY KEY (`mb_no`),
  ADD UNIQUE KEY `mb_id` (`mb_id`),
  ADD KEY `mb_today_login` (`mb_today_login`),
  ADD KEY `mb_datetime` (`mb_datetime`);

--
-- 테이블의 인덱스 `g5_member_social_profiles`
--
ALTER TABLE `g5_member_social_profiles`
  ADD UNIQUE KEY `mp_no` (`mp_no`),
  ADD KEY `mb_id` (`mb_id`),
  ADD KEY `provider` (`provider`);

--
-- 테이블의 인덱스 `g5_memo`
--
ALTER TABLE `g5_memo`
  ADD PRIMARY KEY (`me_id`),
  ADD KEY `me_recv_mb_id` (`me_recv_mb_id`);

--
-- 테이블의 인덱스 `g5_menu`
--
ALTER TABLE `g5_menu`
  ADD PRIMARY KEY (`me_id`);

--
-- 테이블의 인덱스 `g5_new_win`
--
ALTER TABLE `g5_new_win`
  ADD PRIMARY KEY (`nw_id`);

--
-- 테이블의 인덱스 `g5_point`
--
ALTER TABLE `g5_point`
  ADD PRIMARY KEY (`po_id`),
  ADD KEY `index1` (`mb_id`,`po_rel_table`,`po_rel_id`,`po_rel_action`),
  ADD KEY `index2` (`po_expire_date`);

--
-- 테이블의 인덱스 `g5_poll`
--
ALTER TABLE `g5_poll`
  ADD PRIMARY KEY (`po_id`);

--
-- 테이블의 인덱스 `g5_poll_etc`
--
ALTER TABLE `g5_poll_etc`
  ADD PRIMARY KEY (`pc_id`);

--
-- 테이블의 인덱스 `g5_popular`
--
ALTER TABLE `g5_popular`
  ADD PRIMARY KEY (`pp_id`),
  ADD UNIQUE KEY `index1` (`pp_date`,`pp_word`,`pp_ip`);

--
-- 테이블의 인덱스 `g5_qa_content`
--
ALTER TABLE `g5_qa_content`
  ADD PRIMARY KEY (`qa_id`),
  ADD KEY `qa_num_parent` (`qa_num`,`qa_parent`);

--
-- 테이블의 인덱스 `g5_scrap`
--
ALTER TABLE `g5_scrap`
  ADD PRIMARY KEY (`ms_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_sub_menu`
--
ALTER TABLE `g5_sub_menu`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `g5_uniqid`
--
ALTER TABLE `g5_uniqid`
  ADD PRIMARY KEY (`uq_id`);

--
-- 테이블의 인덱스 `g5_visit`
--
ALTER TABLE `g5_visit`
  ADD PRIMARY KEY (`vi_id`),
  ADD UNIQUE KEY `index1` (`vi_ip`,`vi_date`),
  ADD KEY `index2` (`vi_date`);

--
-- 테이블의 인덱스 `g5_visit_sum`
--
ALTER TABLE `g5_visit_sum`
  ADD PRIMARY KEY (`vs_date`),
  ADD KEY `index1` (`vs_count`);

--
-- 테이블의 인덱스 `g5_write_calander`
--
ALTER TABLE `g5_write_calander`
  ADD PRIMARY KEY (`wr_id`),
  ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `g5_write_club_apply`
--
ALTER TABLE `g5_write_club_apply`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `g5_write_gallery`
--
ALTER TABLE `g5_write_gallery`
  ADD PRIMARY KEY (`wr_id`),
  ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `g5_write_qna`
--
ALTER TABLE `g5_write_qna`
  ADD PRIMARY KEY (`wr_id`),
  ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `g5_write_recruitment`
--
ALTER TABLE `g5_write_recruitment`
  ADD PRIMARY KEY (`wr_id`),
  ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `g5_write_recruitment2`
--
ALTER TABLE `g5_write_recruitment2`
  ADD PRIMARY KEY (`wr_id`),
  ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `g5_write_vlt`
--
ALTER TABLE `g5_write_vlt`
  ADD PRIMARY KEY (`wr_id`),
  ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `g5_write_vol_apply`
--
ALTER TABLE `g5_write_vol_apply`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `sms5_book`
--
ALTER TABLE `sms5_book`
  ADD PRIMARY KEY (`bk_no`),
  ADD KEY `bk_name` (`bk_name`),
  ADD KEY `bk_hp` (`bk_hp`),
  ADD KEY `mb_no` (`mb_no`),
  ADD KEY `bg_no` (`bg_no`,`bk_no`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `sms5_book_group`
--
ALTER TABLE `sms5_book_group`
  ADD PRIMARY KEY (`bg_no`),
  ADD KEY `bg_name` (`bg_name`);

--
-- 테이블의 인덱스 `sms5_form`
--
ALTER TABLE `sms5_form`
  ADD PRIMARY KEY (`fo_no`),
  ADD KEY `fg_no` (`fg_no`,`fo_no`);

--
-- 테이블의 인덱스 `sms5_form_group`
--
ALTER TABLE `sms5_form_group`
  ADD PRIMARY KEY (`fg_no`),
  ADD KEY `fg_name` (`fg_name`);

--
-- 테이블의 인덱스 `sms5_history`
--
ALTER TABLE `sms5_history`
  ADD PRIMARY KEY (`hs_no`),
  ADD KEY `wr_no` (`wr_no`),
  ADD KEY `mb_no` (`mb_no`),
  ADD KEY `bk_no` (`bk_no`),
  ADD KEY `hs_hp` (`hs_hp`),
  ADD KEY `hs_code` (`hs_code`),
  ADD KEY `bg_no` (`bg_no`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `sms5_write`
--
ALTER TABLE `sms5_write`
  ADD KEY `wr_no` (`wr_no`,`wr_renum`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `g5_autosave`
--
ALTER TABLE `g5_autosave`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_board_good`
--
ALTER TABLE `g5_board_good`
  MODIFY `bg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_board_new`
--
ALTER TABLE `g5_board_new`
  MODIFY `bn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- 테이블의 AUTO_INCREMENT `g5_cert_history`
--
ALTER TABLE `g5_cert_history`
  MODIFY `cr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_faq`
--
ALTER TABLE `g5_faq`
  MODIFY `fa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_faq_master`
--
ALTER TABLE `g5_faq_master`
  MODIFY `fm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `g5_group_member`
--
ALTER TABLE `g5_group_member`
  MODIFY `gm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_mail`
--
ALTER TABLE `g5_mail`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_member`
--
ALTER TABLE `g5_member`
  MODIFY `mb_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 테이블의 AUTO_INCREMENT `g5_member_social_profiles`
--
ALTER TABLE `g5_member_social_profiles`
  MODIFY `mp_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_menu`
--
ALTER TABLE `g5_menu`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_new_win`
--
ALTER TABLE `g5_new_win`
  MODIFY `nw_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_point`
--
ALTER TABLE `g5_point`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- 테이블의 AUTO_INCREMENT `g5_poll`
--
ALTER TABLE `g5_poll`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_popular`
--
ALTER TABLE `g5_popular`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- 테이블의 AUTO_INCREMENT `g5_qa_content`
--
ALTER TABLE `g5_qa_content`
  MODIFY `qa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_scrap`
--
ALTER TABLE `g5_scrap`
  MODIFY `ms_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_sub_menu`
--
ALTER TABLE `g5_sub_menu`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 테이블의 AUTO_INCREMENT `g5_write_calander`
--
ALTER TABLE `g5_write_calander`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `g5_write_club_apply`
--
ALTER TABLE `g5_write_club_apply`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 테이블의 AUTO_INCREMENT `g5_write_gallery`
--
ALTER TABLE `g5_write_gallery`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 테이블의 AUTO_INCREMENT `g5_write_qna`
--
ALTER TABLE `g5_write_qna`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 테이블의 AUTO_INCREMENT `g5_write_recruitment`
--
ALTER TABLE `g5_write_recruitment`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 테이블의 AUTO_INCREMENT `g5_write_recruitment2`
--
ALTER TABLE `g5_write_recruitment2`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 테이블의 AUTO_INCREMENT `g5_write_vlt`
--
ALTER TABLE `g5_write_vlt`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 테이블의 AUTO_INCREMENT `g5_write_vol_apply`
--
ALTER TABLE `g5_write_vol_apply`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 테이블의 AUTO_INCREMENT `sms5_book`
--
ALTER TABLE `sms5_book`
  MODIFY `bk_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `sms5_book_group`
--
ALTER TABLE `sms5_book_group`
  MODIFY `bg_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `sms5_form`
--
ALTER TABLE `sms5_form`
  MODIFY `fo_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `sms5_form_group`
--
ALTER TABLE `sms5_form_group`
  MODIFY `fg_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `sms5_history`
--
ALTER TABLE `sms5_history`
  MODIFY `hs_no` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
