-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 19, 2015 at 05:58 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dinarpal_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE IF NOT EXISTS `account_type` (
  `at_id` int(11) NOT NULL,
  `at_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`at_id`, `at_desc`) VALUES
(1, 'E-Dinar'),
(2, 'E-Gold Reserved'),
(3, 'E-Dirham'),
(4, 'E-Silver Reserved'),
(5, 'E-Point');

-- --------------------------------------------------------

--
-- Table structure for table `advertising_campaign`
--

CREATE TABLE IF NOT EXISTS `advertising_campaign` (
  `adc_id` int(11) NOT NULL,
  `adc_desc` varchar(200) NOT NULL,
  `adc_rate` varchar(200) NOT NULL,
  `adc_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertising_campaign`
--

INSERT INTO `advertising_campaign` (`adc_id`, `adc_desc`, `adc_rate`, `adc_status`) VALUES
(1, 'Discount', '100', 2),
(2, 'Cash Rebate', '100', 1),
(3, 'Group-On', '100', 1),
(4, 'Bai Al-Wafa', '100', 1),
(5, 'No Campaign', '100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `amanah_deal`
--

CREATE TABLE IF NOT EXISTS `amanah_deal` (
  `ad_id` int(11) NOT NULL,
  `me_id_from` int(11) NOT NULL,
  `me_id_to` int(11) NOT NULL,
  `ad_amount` varchar(200) DEFAULT '0',
  `at_id` int(11) NOT NULL,
  `ft_id` int(11) NOT NULL,
  `ad_notes` varchar(500) DEFAULT NULL,
  `ad_datetime` datetime NOT NULL,
  `ts_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amanah_deal`
--

INSERT INTO `amanah_deal` (`ad_id`, `me_id_from`, `me_id_to`, `ad_amount`, `at_id`, `ft_id`, `ad_notes`, `ad_datetime`, `ts_id`) VALUES
(1, 1, 17, '200', 1, 4, 'bagi ke nur', '2015-08-16 12:42:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `amil`
--

CREATE TABLE IF NOT EXISTS `amil` (
  `am_id` int(11) NOT NULL,
  `am_image` varchar(2000) DEFAULT NULL,
  `am_name` varchar(200) NOT NULL,
  `am_phone` varchar(200) DEFAULT NULL,
  `am_email` varchar(200) DEFAULT NULL,
  `am_address` varchar(2000) DEFAULT NULL,
  `am_whatsapp` varchar(200) DEFAULT NULL,
  `am_status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amil`
--

INSERT INTO `amil` (`am_id`, `am_image`, `am_name`, `am_phone`, `am_email`, `am_address`, `am_whatsapp`, `am_status`) VALUES
(1, 'default-img.jpg', 'Ustaz Nizam Rashid', '019-9737579', 'kizaru@dinarpal.com', 'Melaka', '019-9737579', 1),
(2, 'default-img.jpg', 'Ustazah Amira Nadirah', '019-3355979', 'kenshin@dinarpal.com', 'Pahang', '019-3355979', 1);

-- --------------------------------------------------------

--
-- Table structure for table `amil_certificate`
--

CREATE TABLE IF NOT EXISTS `amil_certificate` (
  `ac_id` int(11) NOT NULL,
  `ac_link` varchar(2000) DEFAULT NULL,
  `ac_size` varchar(200) DEFAULT NULL,
  `am_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `amil_status`
--

CREATE TABLE IF NOT EXISTS `amil_status` (
  `as_id` int(11) NOT NULL,
  `as_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amil_status`
--

INSERT INTO `amil_status` (`as_id`, `as_desc`) VALUES
(1, 'Available'),
(2, 'Not Available');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
  `ba_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `ba_name` varchar(200) DEFAULT NULL,
  `ba_address` varchar(500) DEFAULT NULL,
  `ba_city` varchar(200) DEFAULT NULL,
  `ba_zipcode` varchar(200) DEFAULT NULL,
  `co_id` int(11) DEFAULT '0',
  `ba_state` varchar(200) DEFAULT NULL,
  `ba_phone` varchar(200) DEFAULT NULL,
  `ba_holdername` varchar(200) DEFAULT NULL,
  `ba_accountnumber` varchar(200) DEFAULT NULL,
  `bat_id` int(11) DEFAULT '0',
  `ba_digitrouting` varchar(200) DEFAULT NULL,
  `ba_swiftcode` varchar(200) DEFAULT NULL,
  `ba_addinfo` varchar(500) DEFAULT NULL,
  `ba_status` int(11) DEFAULT '1',
  `bc_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`ba_id`, `me_id`, `ba_name`, `ba_address`, `ba_city`, `ba_zipcode`, `co_id`, `ba_state`, `ba_phone`, `ba_holdername`, `ba_accountnumber`, `bat_id`, `ba_digitrouting`, `ba_swiftcode`, `ba_addinfo`, `ba_status`, `bc_id`) VALUES
(9, 1, 'MAYBANK SDN BHD', 'MAYBANK SDN BHD, BANDAR MITC, 75450, AYER KEROH, MELAKA.', 'AYER KEROH', '75450', 3, 'MELAKA', '0199993323', 'UMAR MUKHTAR BIN HAMBARAN', '154110057084', 2, '12345677989', '1234', 'AKAUN UMAQ', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banks_category`
--

CREATE TABLE IF NOT EXISTS `banks_category` (
  `bc_id` int(11) NOT NULL,
  `bc_name` varchar(200) NOT NULL,
  `bc_fee` varchar(200) DEFAULT '0.00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks_category`
--

INSERT INTO `banks_category` (`bc_id`, `bc_name`, `bc_fee`) VALUES
(1, 'Malaysia Favorite Bank', '2.00'),
(2, 'International Favorite Bank', '2.00');

-- --------------------------------------------------------

--
-- Table structure for table `batch_bids`
--

CREATE TABLE IF NOT EXISTS `batch_bids` (
  `bb_id` int(11) NOT NULL,
  `bb_desc` varchar(200) NOT NULL,
  `bb_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch_bids`
--

INSERT INTO `batch_bids` (`bb_id`, `bb_desc`, `bb_status`) VALUES
(1, 'Batch 1', 1),
(2, 'Batch 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ba_account_type`
--

CREATE TABLE IF NOT EXISTS `ba_account_type` (
  `bat_id` int(11) NOT NULL,
  `bat_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ba_account_type`
--

INSERT INTO `ba_account_type` (`bat_id`, `bat_name`) VALUES
(1, 'Personal Checking'),
(2, 'Personal Saving'),
(3, 'Business Checking'),
(4, 'Business Saving');

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE IF NOT EXISTS `bids` (
  `bid_id` int(11) NOT NULL,
  `bid_name` varchar(500) NOT NULL,
  `bid_startdate` datetime NOT NULL,
  `bid_enddate` datetime NOT NULL,
  `bid_startprice` varchar(200) NOT NULL DEFAULT '0',
  `bid_killprice` varchar(200) NOT NULL DEFAULT '0',
  `bb_id` int(11) NOT NULL,
  `bid_status` int(11) NOT NULL DEFAULT '1',
  `bid_image` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`bid_id`, `bid_name`, `bid_startdate`, `bid_enddate`, `bid_startprice`, `bid_killprice`, `bb_id`, `bid_status`, `bid_image`) VALUES
(1, 'Poster Labah Labah', '2015-08-01 00:00:00', '2016-08-01 00:00:00', '200', '500', 1, 1, '8e9c7-spider1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bid_member`
--

CREATE TABLE IF NOT EXISTS `bid_member` (
  `bm_id` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `bm_bidprice` double NOT NULL,
  `bm_biddate` datetime NOT NULL,
  `bm_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `br_id` int(11) NOT NULL,
  `br_code` varchar(200) NOT NULL,
  `br_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`br_id`, `br_code`, `br_name`) VALUES
(1, 'DP', 'DinarPal'),
(2, 'DEPB', 'DEPB'),
(3, 'GCP', 'GCP'),
(4, 'PG', 'PG'),
(5, 'PAMP', 'PAMP'),
(6, '-', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `brands_itc`
--

CREATE TABLE IF NOT EXISTS `brands_itc` (
  `bi_id` int(11) NOT NULL,
  `br_id` int(11) NOT NULL,
  `itc_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands_itc`
--

INSERT INTO `brands_itc` (`bi_id`, `br_id`, `itc_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 1, 2),
(6, 2, 2),
(7, 3, 2),
(8, 4, 2),
(9, 1, 3),
(10, 2, 3),
(11, 3, 3),
(12, 4, 3),
(13, 5, 3),
(14, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE IF NOT EXISTS `cards` (
  `ca_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `ct_id` int(11) NOT NULL,
  `ca_name` varchar(200) DEFAULT NULL,
  `ca_number` varchar(200) DEFAULT NULL,
  `ca_cvnnumber` varchar(200) DEFAULT NULL,
  `ca_expiredmonth` varchar(200) DEFAULT NULL,
  `ca_expiredyear` varchar(200) DEFAULT NULL,
  `ca_status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`ca_id`, `me_id`, `ct_id`, `ca_name`, `ca_number`, `ca_cvnnumber`, `ca_expiredmonth`, `ca_expiredyear`, `ca_status`) VALUES
(11, 1, 1, 'ASDASDASD', '123321123321', '323', '1', '2015', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cards_type`
--

CREATE TABLE IF NOT EXISTS `cards_type` (
  `ct_id` int(11) NOT NULL,
  `ct_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cards_type`
--

INSERT INTO `cards_type` (`ct_id`, `ct_name`) VALUES
(1, 'Visa'),
(2, 'Master Card'),
(3, 'American Express'),
(4, 'Discover'),
(5, 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('18b650798daf2a6548770b5acb193d69', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1436806537, 'a:30:{s:5:"me_id";s:2:"10";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"staff";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:5:"staff";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:11:"me_address2";N;s:11:"me_postcode";N;s:10:"me_country";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:14:"me_whatsapp_no";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-07-13T18:52:28+02:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;s:17:"store_transaction";a:17:{i:1;a:11:{s:3:"it1";s:4:"Gold";s:4:"itc1";s:5:"Dinar";s:5:"itct1";s:7:"1 Dinar";s:6:"it_id1";s:1:"1";s:7:"itc_id1";s:1:"1";s:8:"itct_id1";s:1:"1";s:2:"q1";s:1:"2";s:3:"pu1";s:1:"1";s:8:"weight_1";s:4:"8.50";s:7:"price_1";s:6:"131.43";s:7:"nilai_1";s:7:"1117.15";}i:2;a:11:{s:3:"it2";s:4:"Gold";s:4:"itc2";s:5:"Dinar";s:5:"itct2";s:7:"1 Dinar";s:6:"it_id2";s:1:"1";s:7:"itc_id2";s:1:"1";s:8:"itct_id2";s:1:"1";s:2:"q2";s:0:"";s:3:"pu2";s:1:"1";s:8:"weight_2";s:4:"0.00";s:7:"price_2";s:4:"0.00";s:7:"nilai_2";s:4:"0.00";}i:3;a:11:{s:3:"it3";s:4:"Gold";s:4:"itc3";s:5:"Dinar";s:5:"itct3";s:7:"1 Dinar";s:6:"it_id3";s:1:"1";s:7:"itc_id3";s:1:"1";s:8:"itct_id3";s:1:"1";s:2:"q3";s:0:"";s:3:"pu3";s:1:"1";s:8:"weight_3";s:4:"0.00";s:7:"price_3";s:4:"0.00";s:7:"nilai_3";s:4:"0.00";}i:4;a:11:{s:3:"it4";s:4:"Gold";s:4:"itc4";s:5:"Dinar";s:5:"itct4";s:7:"1 Dinar";s:6:"it_id4";s:1:"1";s:7:"itc_id4";s:1:"1";s:8:"itct_id4";s:1:"1";s:2:"q4";s:0:"";s:3:"pu4";s:1:"1";s:8:"weight_4";s:4:"0.00";s:7:"price_4";s:4:"0.00";s:7:"nilai_4";s:4:"0.00";}i:5;a:11:{s:3:"it5";s:4:"Gold";s:4:"itc5";s:5:"Dinar";s:5:"itct5";s:7:"1 Dinar";s:6:"it_id5";s:1:"1";s:7:"itc_id5";s:1:"1";s:8:"itct_id5";s:1:"1";s:2:"q5";s:0:"";s:3:"pu5";s:1:"1";s:8:"weight_5";s:4:"0.00";s:7:"price_5";s:4:"0.00";s:7:"nilai_5";s:4:"0.00";}s:21:"total_gold_rahnu_gram";d:8.5;s:22:"total_gold_rahnu_money";d:1117.15000000000009094947017729282379150390625;s:23:"total_silver_rahnu_gram";i:0;s:24:"total_silver_rahnu_money";i:0;s:11:"totaPrice_1";s:7:"1117.15";s:8:"col_rate";s:2:"50";s:11:"col_nilai_1";s:4:"0.00";s:18:"safe_keeping_fee_1";s:4:"0.00";s:14:"keeping_period";s:1:"1";s:20:"keeping_period_fee_1";s:4:"0.00";s:12:"start_period";s:10:"2015-07-28";s:10:"end_period";s:10:"2015-08-28";}}'),
('1be97f132d5a6e91e60a17c4698ff211', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439228239, ''),
('329a3fe0b16269da7accfbb1b6d3c36c', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1432135515, ''),
('35427aeda60c6094cdd20b2fc49fb282', '0.0.0.0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS', 1435911467, ''),
('4ac7935d4ade1c27a9a501038a6c5e8f', '0.0.0.0', 'Mozilla/5.0 (MeeGo; NokiaN9) AppleWebKit/534.13 (K', 1433932105, ''),
('54edcc76c03a70c99c1e5333f8d46e53', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439396937, ''),
('56695e65cab80c522a4232fd964c6ac0', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1435856798, ''),
('56bc798219a64e04d26d968dcc0cf6da', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1438874385, ''),
('5aa093329f5dc0377385988181c3a900', '0.0.0.0', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone ', 1433932116, ''),
('655b88acee020b1081c344357e21db0b', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1433932119, ''),
('6ae427d052ed5d18644d95d387cd089d', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1433932135, ''),
('6f92f774e96f530c2eb84720e53b1f75', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1433932119, ''),
('75a3e9dd51c383372b8e7428d14f90a6', '0.0.0.0', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone ', 1433932116, ''),
('8ee721638dc17a76c8b7511cbf6a0cb2', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1432724980, 'a:29:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:32:"aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-05-25T08:29:31+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;}'),
('8f9f2a5a1bcca5579d3fd075cbb64bb5', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439745643, ''),
('95b47ebfc921585fba8a4d994e194992', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439920411, ''),
('9a12f35a9610997f8f09450a239709f8', '0.0.0.0', 'Mozilla/5.0 (MeeGo; NokiaN9) AppleWebKit/534.13 (K', 1433932105, ''),
('9de8c8dc5b322c38dc6274cc08ffb3fe', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439472992, ''),
('a75d45cfbd6962da851572cc75733c6f', '0.0.0.0', 'Mozilla/5.0 (Linux; Android 4.4.4; en-us; Nexus 4 ', 1433932122, ''),
('a8f8ed5834a4d39e3210f9db95c06355', '0.0.0.0', 'Mozilla/5.0 (Linux; Android 4.4.4; en-us; Nexus 4 ', 1433932122, ''),
('bfc2b64bddf87a22b17080c621fdc202', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1432818476, 'a:33:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:32:"aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-05-27T13:09:40+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;s:8:"col_rate";d:0.8000000000000000444089209850062616169452667236328125;s:14:"col_percentage";s:3:"80%";s:13:"cart_contents";a:4:{s:32:"3c7781a36bcd6cf08c11a970fbe0e2a6";a:7:{s:5:"rowid";s:32:"3c7781a36bcd6cf08c11a970fbe0e2a6";s:2:"id";s:1:"4";s:3:"qty";s:1:"2";s:5:"price";s:3:"600";s:4:"name";s:1:"-";s:7:"options";a:3:{s:3:"qty";s:1:"2";s:7:"itct_id";s:1:"4";s:4:"itct";O:8:"stdClass":7:{s:7:"itct_id";s:1:"4";s:10:"itct_image";s:15:"161e5-kgt02.png";s:9:"itct_name";s:17:"Dinar KGT 1 Dinar";s:15:"itct_price_rate";s:3:"600";s:11:"itct_weight";s:4:"4.25";s:9:"itct_cert";s:5:"KGT01";s:5:"bi_id";s:1:"1";}}s:8:"subtotal";i:1200;}s:32:"1afa34a7f984eeabdbb0a7d494132ee5";a:7:{s:5:"rowid";s:32:"1afa34a7f984eeabdbb0a7d494132ee5";s:2:"id";s:1:"1";s:3:"qty";s:1:"3";s:5:"price";s:6:"556.75";s:4:"name";s:1:"-";s:7:"options";a:3:{s:3:"qty";s:1:"3";s:7:"itct_id";s:1:"1";s:4:"itct";O:8:"stdClass":7:{s:7:"itct_id";s:1:"1";s:10:"itct_image";s:20:"21aa6-sell1dinar.png";s:9:"itct_name";s:7:"1 Dinar";s:15:"itct_price_rate";s:6:"556.75";s:11:"itct_weight";s:4:"4.25";s:9:"itct_cert";s:5:"DP001";s:5:"bi_id";s:1:"1";}}s:8:"subtotal";d:1670.25;}s:11:"total_items";i:2;s:10:"cart_total";d:2870.25;}s:12:"payment_temp";a:8:{s:10:"me_id_from";s:1:"1";s:5:"ft_id";s:1:"4";s:8:"username";s:3:"nur";s:8:"me_id_to";s:2:"17";s:5:"pt_id";s:1:"1";s:5:"at_id";s:1:"1";s:9:"tr_amount";s:3:"100";s:8:"tr_notes";s:9:"test send";}}'),
('c7b6460df2dda73e8ef7361a8aad7db7', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439090425, 'a:34:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:79:"http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-08-08T16:10:18+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;s:8:"col_rate";d:0.65000000000000002220446049250313080847263336181640625;s:14:"col_percentage";s:3:"65%";s:5:"pa_id";i:5;s:13:"cart_dinarpal";a:1:{s:32:"341b384a5f90eae3f2c0e9dc52c57763";a:7:{s:5:"rowid";s:32:"341b384a5f90eae3f2c0e9dc52c57763";s:2:"id";s:1:"4";s:3:"qty";s:1:"3";s:5:"price";s:3:"600";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:1:"3";s:7:"itct_id";s:1:"4";s:5:"price";s:3:"600";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:17:"141.1764705882353";s:9:"itct_name";s:17:"Dinar KGT 1 Dinar";s:9:"itct_cert";s:5:"KGT01";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":7:{s:7:"itct_id";s:1:"4";s:10:"itct_image";s:33:"4ed7f-dinar-kelantan-kgt-2012.jpg";s:9:"itct_name";s:17:"Dinar KGT 1 Dinar";s:15:"itct_price_rate";s:3:"600";s:11:"itct_weight";s:4:"4.25";s:9:"itct_cert";s:5:"KGT01";s:5:"bi_id";s:1:"1";}}s:8:"subtotal";i:1800;}}s:9:"data_post";a:9:{s:5:"sl_id";s:1:"1";s:14:"pa_grand_total";s:4:"1800";s:13:"pa_start_date";s:19:"2015-08-09 05:34:10";s:11:"pa_end_date";s:19:"2016-02-05 05:34:10";s:5:"am_id";s:1:"1";s:5:"me_id";s:1:"1";s:13:"pa_rahnu_rate";d:0.65000000000000002220446049250313080847263336181640625;s:5:"pt_id";i:1;s:15:"pa_total_weight";d:12.75;}}'),
('d67e388d38b2f924ae8eeb53c8bd8bd6', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1433931856, 'a:31:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:79:"http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-06-10T11:27:16+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;s:8:"col_rate";d:0.8000000000000000444089209850062616169452667236328125;s:14:"col_percentage";s:3:"80%";}'),
('d91f8c38dc18d7823495ca0bf215bce9', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1432742939, ''),
('dd7764e6d434505a74fdea787771b83e', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1438614423, ''),
('f79f2b07ab915bf99142c5433165ca61', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439170271, 'a:34:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:79:"http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-08-09T15:10:09+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;s:8:"col_rate";d:0.8000000000000000444089209850062616169452667236328125;s:14:"col_percentage";s:3:"80%";s:5:"pa_id";i:6;s:13:"cart_dinarpal";a:2:{s:32:"341b384a5f90eae3f2c0e9dc52c57763";a:7:{s:5:"rowid";s:32:"341b384a5f90eae3f2c0e9dc52c57763";s:2:"id";s:1:"4";s:3:"qty";s:1:"3";s:5:"price";s:3:"600";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:1:"3";s:7:"itct_id";s:1:"4";s:5:"price";s:3:"600";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:17:"141.1764705882353";s:9:"itct_name";s:17:"Dinar KGT 1 Dinar";s:9:"itct_cert";s:5:"KGT01";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":7:{s:7:"itct_id";s:1:"4";s:10:"itct_image";s:33:"4ed7f-dinar-kelantan-kgt-2012.jpg";s:9:"itct_name";s:17:"Dinar KGT 1 Dinar";s:15:"itct_price_rate";s:3:"600";s:11:"itct_weight";s:4:"4.25";s:9:"itct_cert";s:5:"KGT01";s:5:"bi_id";s:1:"1";}}s:8:"subtotal";i:1800;}s:32:"e244ca06ab263a67b5eaccb03f9c0407";a:7:{s:5:"rowid";s:32:"e244ca06ab263a67b5eaccb03f9c0407";s:2:"id";s:1:"1";s:3:"qty";s:1:"1";s:5:"price";s:6:"556.75";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:1:"1";s:7:"itct_id";s:1:"1";s:5:"price";s:6:"556.75";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:3:"131";s:9:"itct_name";s:7:"1 Dinar";s:9:"itct_cert";s:5:"DP001";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":7:{s:7:"itct_id";s:1:"1";s:10:"itct_image";s:16:"3940c-1dinar.jpg";s:9:"itct_name";s:7:"1 Dinar";s:15:"itct_price_rate";s:6:"556.75";s:11:"itct_weight";s:4:"4.25";s:9:"itct_cert";s:5:"DP001";s:5:"bi_id";s:1:"1";}}s:8:"subtotal";d:556.75;}}s:9:"data_post";a:9:{s:5:"sl_id";s:1:"1";s:14:"pa_grand_total";s:7:"2356.75";s:13:"pa_start_date";s:19:"2015-08-10 03:44:59";s:11:"pa_end_date";s:19:"2016-02-06 03:44:59";s:5:"am_id";s:1:"1";s:5:"me_id";s:1:"1";s:13:"pa_rahnu_rate";d:0.8000000000000000444089209850062616169452667236328125;s:5:"pt_id";i:1;s:15:"pa_total_weight";d:17;}}'),
('f80a9900e6492176930fb8773888153c', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1438942412, 'a:29:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:79:"http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-08-06T15:22:02+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;}'),
('f91e73f7228af7655caf024caded6040', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1438789580, ''),
('ff48802fba64db823e424e3030f9bf92', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439476270, '');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `co_id` int(11) NOT NULL,
  `co_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`co_id`, `co_name`) VALUES
(1, 'Algeria'),
(2, 'Australia'),
(3, 'Malaysia'),
(4, 'United State of America'),
(5, 'China');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE IF NOT EXISTS `deposit` (
  `de_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `de_datetime` datetime NOT NULL,
  `ft_id` int(11) NOT NULL,
  `at_id` int(11) NOT NULL,
  `de_amount` varchar(200) NOT NULL,
  `de_notes` varchar(500) NOT NULL,
  `de_code` varchar(200) NOT NULL,
  `det_id` int(11) NOT NULL,
  `ts_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`de_id`, `me_id`, `de_datetime`, `ft_id`, `at_id`, `de_amount`, `de_notes`, `de_code`, `det_id`, `ts_id`) VALUES
(1, 1, '2015-08-16 17:20:44', 6, 1, '1000', 'bank sje', '8LZUh5wS6pcj0SrJ', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `deposit_type`
--

CREATE TABLE IF NOT EXISTS `deposit_type` (
  `det_id` int(11) NOT NULL,
  `det_desc` varchar(200) NOT NULL,
  `det_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit_type`
--

INSERT INTO `deposit_type` (`det_id`, `det_desc`, `det_status`) VALUES
(1, 'Bank Transfer', 1),
(2, 'Visa Transfer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_account`
--

CREATE TABLE IF NOT EXISTS `dinarpal_account` (
  `da_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `da_gold_rahnu_gram` varchar(200) DEFAULT '0',
  `da_gold_rahnu_money` varchar(200) DEFAULT '0',
  `da_gold_balance` varchar(200) DEFAULT '0',
  `da_gold_reserved` varchar(200) DEFAULT '0',
  `da_silver_rahnu_gram` varchar(200) DEFAULT '0',
  `da_silver_rahnu_money` varchar(200) DEFAULT '0',
  `da_silver_balance` varchar(200) DEFAULT '0',
  `da_silver_reserved` varchar(200) DEFAULT '0',
  `da_point_balance` varchar(200) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinarpal_account`
--

INSERT INTO `dinarpal_account` (`da_id`, `me_id`, `da_gold_rahnu_gram`, `da_gold_rahnu_money`, `da_gold_balance`, `da_gold_reserved`, `da_silver_rahnu_gram`, `da_silver_rahnu_money`, `da_silver_balance`, `da_silver_reserved`, `da_point_balance`) VALUES
(1, 1, '46.75', '6254', '186039.05', '93.5', '0', '0', '200000', '0', '0'),
(7, 7, '0', '0', '200000', '0', '0', '0', '200000', '0', '0'),
(8, 8, '0', '0', '200000', '0', '0', '0', '200000', '0', '0'),
(11, 11, '0', '0', '200000', '0', '0', '0', '200000', '0', '0'),
(16, 17, '0', '0', '200198', '0', '0', '0', '200000', '0', '0'),
(17, 18, '0', '0', '200000', '0', '0', '0', '200000', '0', '0'),
(19, 20, '0', '0', '200000', '0', '0', '0', '200000', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_admin_account`
--

CREATE TABLE IF NOT EXISTS `dinarpal_admin_account` (
  `daa_id` int(11) NOT NULL,
  `daa_account_dinar` varchar(200) NOT NULL DEFAULT '0',
  `daa_account_dinar_gram` varchar(200) NOT NULL DEFAULT '0',
  `daa_account_dirham` varchar(200) NOT NULL DEFAULT '0',
  `daa_account_dirham_gram` varchar(200) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinarpal_admin_account`
--

INSERT INTO `dinarpal_admin_account` (`daa_id`, `daa_account_dinar`, `daa_account_dinar_gram`, `daa_account_dirham`, `daa_account_dirham_gram`) VALUES
(1, '2000002', '20000', '2000000', '20000');

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_config`
--

CREATE TABLE IF NOT EXISTS `dinarpal_config` (
  `dc_id` int(11) NOT NULL,
  `dc_currency_type` varchar(200) DEFAULT NULL,
  `dc_admin_bank_account` varchar(50) NOT NULL,
  `dc_admin_bank_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinarpal_config`
--

INSERT INTO `dinarpal_config` (`dc_id`, `dc_currency_type`, `dc_admin_bank_account`, `dc_admin_bank_name`) VALUES
(1, 'MYR', '554138008153', 'Dinarpal Sdn Bhd');

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_document`
--

CREATE TABLE IF NOT EXISTS `dinarpal_document` (
  `dd_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `dd_filename` varchar(200) DEFAULT NULL,
  `dd_size` int(11) DEFAULT '0',
  `dd_type` varchar(200) DEFAULT NULL,
  `ddt_id` int(11) NOT NULL,
  `mvs_id` int(11) DEFAULT '1',
  `mv_id` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_document_type`
--

CREATE TABLE IF NOT EXISTS `dinarpal_document_type` (
  `ddt_id` int(11) NOT NULL,
  `ddt_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinarpal_document_type`
--

INSERT INTO `dinarpal_document_type` (`ddt_id`, `ddt_desc`) VALUES
(1, 'First Document'),
(2, 'Second or Supporting Document');

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_services`
--

CREATE TABLE IF NOT EXISTS `dinarpal_services` (
  `ds_id` int(11) NOT NULL,
  `ds_desc` varchar(200) NOT NULL,
  `ds_rate` varchar(200) NOT NULL DEFAULT '0',
  `dst_id` int(11) NOT NULL,
  `ds_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinarpal_services`
--

INSERT INTO `dinarpal_services` (`ds_id`, `ds_desc`, `ds_rate`, `dst_id`, `ds_status`) VALUES
(1, 'FedEx', '100', 1, 1),
(2, 'Pos Laju', '10', 1, 1),
(3, 'Pos Express', '10', 1, 1),
(4, 'Takaful', '200', 2, 1),
(5, 'MAA', '100', 2, 1),
(6, 'Prudential', '50', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_services_type`
--

CREATE TABLE IF NOT EXISTS `dinarpal_services_type` (
  `dst_id` int(11) NOT NULL,
  `dst_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinarpal_services_type`
--

INSERT INTO `dinarpal_services_type` (`dst_id`, `dst_desc`) VALUES
(1, 'Courier Services'),
(2, 'Insurance Services');

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_transaction`
--

CREATE TABLE IF NOT EXISTS `dinarpal_transaction` (
  `dt_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `tr_amount` varchar(200) DEFAULT '0',
  `pt_id` int(11) NOT NULL,
  `at_id` int(11) NOT NULL,
  `tr_notes` varchar(500) DEFAULT NULL,
  `tr_datetime` datetime NOT NULL,
  `ft_id` int(11) NOT NULL,
  `ts_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `em_id` int(11) NOT NULL,
  `em_emails` varchar(200) NOT NULL,
  `me_id` int(11) NOT NULL,
  `em_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`em_id`, `em_emails`, `me_id`, `em_status`) VALUES
(1, 'kidzeclipes@gmail.com', 1, 2),
(2, 'umar@tuffah.info', 7, 2),
(3, 'kidzeclipes@yahoo.com', 8, 2),
(9, 'asd@asd.com', 8, 1),
(11, 'pisang@dinarpal.com', 9, 2),
(12, 'staff@dinarpal.com', 10, 2),
(13, 'lol@yahoo.com', 11, 2),
(18, 'nurumira@gmail.com', 17, 2),
(19, 'hakim@gmail.com', 18, 2),
(20, 'qwe@qwe.qwe', 19, 2),
(21, 'arash.private@live.com', 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fee_type`
--

CREATE TABLE IF NOT EXISTS `fee_type` (
  `ft_id` int(11) NOT NULL,
  `ft_name` varchar(200) DEFAULT NULL,
  `ft_price` varchar(200) DEFAULT '0.00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_type`
--

INSERT INTO `fee_type` (`ft_id`, `ft_name`, `ft_price`) VALUES
(1, 'Verification Fee', '10.00'),
(2, 'Ar-Rahnu Fee', '10.00'),
(3, 'Safe Keeping Fee', '0.00'),
(4, 'Transaction Fee', '2.00'),
(5, 'Bank Withdrawal Fee', '0.00'),
(6, 'Deposit Fee', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `itc_type`
--

CREATE TABLE IF NOT EXISTS `itc_type` (
  `itct_id` int(11) NOT NULL,
  `itct_image` varchar(2000) DEFAULT NULL,
  `itct_name` varchar(200) NOT NULL,
  `itct_price_rate` varchar(200) NOT NULL,
  `itct_weight` varchar(200) NOT NULL,
  `itct_cert` varchar(2000) DEFAULT NULL,
  `bi_id` int(11) NOT NULL,
  `pu_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itc_type`
--

INSERT INTO `itc_type` (`itct_id`, `itct_image`, `itct_name`, `itct_price_rate`, `itct_weight`, `itct_cert`, `bi_id`, `pu_id`) VALUES
(1, '3940c-1dinar.jpg', '1 Dinar', '556.75', '4.25', 'DP001', 1, 1),
(2, '190c6-5dinar.jpg', '5 Dinar', '2783.75', '21.25', 'DP002', 1, 1),
(3, 'a73dd-10dinar_2.jpg', '10 Dinar', '5567.50', '42.50', 'DP003', 1, 1),
(4, '4ed7f-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', 'KGT01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_courier`
--

CREATE TABLE IF NOT EXISTS `item_courier` (
  `ic_id` int(11) NOT NULL,
  `ic_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_courier`
--

INSERT INTO `item_courier` (`ic_id`, `ic_name`) VALUES
(1, 'Ring'),
(2, 'Locket'),
(3, 'Earing'),
(4, 'Necklace'),
(5, 'Others'),
(6, 'Gold Bar');

-- --------------------------------------------------------

--
-- Table structure for table `item_status_courier`
--

CREATE TABLE IF NOT EXISTS `item_status_courier` (
  `isc_id` int(11) NOT NULL,
  `isc_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_status_courier`
--

INSERT INTO `item_status_courier` (`isc_id`, `isc_name`) VALUES
(1, 'New'),
(2, 'Used'),
(3, 'Broken');

-- --------------------------------------------------------

--
-- Table structure for table `item_storage`
--

CREATE TABLE IF NOT EXISTS `item_storage` (
  `is_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `itct_id` int(11) NOT NULL,
  `is_qty` varchar(200) DEFAULT '0',
  `is_status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_storage`
--

INSERT INTO `item_storage` (`is_id`, `me_id`, `itct_id`, `is_qty`, `is_status`) VALUES
(1, 1, 1, '2', 1),
(2, 1, 4, '5', 1),
(3, 1, 2, '3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_storage_child`
--

CREATE TABLE IF NOT EXISTS `item_storage_child` (
  `isc_id` int(11) NOT NULL,
  `is_id` int(11) NOT NULL,
  `isc_image` varchar(500) NOT NULL,
  `isc_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_storage_child`
--

INSERT INTO `item_storage_child` (`isc_id`, `is_id`, `isc_image`, `isc_status`) VALUES
(1, 1, '3940c-1dinar.jpg', 1),
(2, 1, '3940c-1dinar.jpg', 1),
(3, 2, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(4, 2, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(5, 2, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(6, 2, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(7, 2, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(8, 3, '190c6-5dinar.jpg', 1),
(9, 3, '190c6-5dinar.jpg', 1),
(10, 3, '190c6-5dinar.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE IF NOT EXISTS `item_type` (
  `it_id` int(11) NOT NULL,
  `it_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`it_id`, `it_name`) VALUES
(1, 'Gold'),
(2, 'Silver');

-- --------------------------------------------------------

--
-- Table structure for table `item_type_child`
--

CREATE TABLE IF NOT EXISTS `item_type_child` (
  `itc_id` int(11) NOT NULL,
  `itc_name` varchar(200) NOT NULL,
  `it_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_type_child`
--

INSERT INTO `item_type_child` (`itc_id`, `itc_name`, `it_id`) VALUES
(1, 'Dinar', 1),
(2, 'Jewellery', 1),
(3, 'Bars', 1),
(4, 'Dirham', 2);

-- --------------------------------------------------------

--
-- Table structure for table `item_type_purity`
--

CREATE TABLE IF NOT EXISTS `item_type_purity` (
  `itp_id` int(11) NOT NULL,
  `it_id` int(11) NOT NULL,
  `pu_id` int(11) NOT NULL,
  `itp_price` varchar(200) NOT NULL,
  `itp_rate` varchar(200) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_type_purity`
--

INSERT INTO `item_type_purity` (`itp_id`, `it_id`, `pu_id`, `itp_price`, `itp_rate`) VALUES
(1, 1, 1, '131.43', '1'),
(2, 1, 2, '126.75', '1'),
(3, 1, 3, '122.51', '1'),
(4, 1, 4, '116.75', '1'),
(5, 1, 5, '111.19', '1'),
(6, 1, 6, '100.70', '1'),
(7, 2, 1, '9.35', '1');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `me_id` int(11) NOT NULL,
  `me_image` varchar(200) DEFAULT 'default-img.jpg',
  `me_firstname` varchar(200) NOT NULL,
  `me_lastname` varchar(200) DEFAULT NULL,
  `me_username` varchar(200) NOT NULL,
  `me_password` varchar(200) NOT NULL,
  `me_question` varchar(500) DEFAULT NULL,
  `me_answer` varchar(500) DEFAULT NULL,
  `me_unique_link` varchar(200) NOT NULL,
  `me_address1` varchar(500) DEFAULT NULL,
  `me_address2` varchar(500) DEFAULT NULL,
  `me_postcode` varchar(50) DEFAULT NULL,
  `me_country` varchar(200) DEFAULT NULL,
  `me_government_issue_id` varchar(200) DEFAULT NULL,
  `me_driver_license` varchar(200) DEFAULT NULL,
  `me_phone_no` varchar(50) DEFAULT NULL,
  `me_birth_date` varchar(20) DEFAULT NULL,
  `me_description` varchar(500) DEFAULT NULL,
  `me_maiden_name` varchar(200) DEFAULT NULL,
  `me_nationality` varchar(200) DEFAULT NULL,
  `me_whatsapp_no` varchar(50) DEFAULT NULL,
  `me_email` varchar(200) DEFAULT NULL,
  `me_register_date` datetime NOT NULL,
  `me_account_type` int(11) NOT NULL,
  `me_activation_status` int(11) NOT NULL DEFAULT '1',
  `me_last_login` varchar(50) DEFAULT NULL,
  `me_magic_num` varchar(200) DEFAULT NULL,
  `ml_id` int(11) NOT NULL,
  `me_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`me_id`, `me_image`, `me_firstname`, `me_lastname`, `me_username`, `me_password`, `me_question`, `me_answer`, `me_unique_link`, `me_address1`, `me_address2`, `me_postcode`, `me_country`, `me_government_issue_id`, `me_driver_license`, `me_phone_no`, `me_birth_date`, `me_description`, `me_maiden_name`, `me_nationality`, `me_whatsapp_no`, `me_email`, `me_register_date`, `me_account_type`, `me_activation_status`, `me_last_login`, `me_magic_num`, `ml_id`, `me_status`) VALUES
(1, 'umarkecik1.jpg', 'Umaq Mukhtardd', 'member', 'member', '$2a$08$lfiHuPrglR0H9PXbBiYbNe9RhyE3qymozXGO6COJDYKCPr17LfrRK', 'What is my pet''s name?', 'comel', 'http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3', 'Melaka', 'Pahang', '75450', 'Malaysia', 'MY001', 'B and D', '0199737579', '1989-10-31', '', 'Ntoh', 'Malaysia', '0199737579', 'kidzeclipes@gmail.com', '2014-11-10 10:12:00', 2, 2, '2015-08-18T10:04:20+02:00', '0d4368f80cd1d149576c068211e89fbf', 3, 1),
(7, 'default-img.jpg', 'asd', 'dsa', 'asd', '$2a$08$zRnQHtdGJnSdsPPqfGCXHef3VnVG06p.bQhM1vEs2b.Kcwz6aoF7K', 'Who am I?', 'Jack Sparrow', '7815696ecbf1c96e6894b779456d330e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'umar@tuffah.info', '2014-12-13 19:45:41', 1, 2, '2015-05-19T11:41:43+02:00', 'ec623adec13773d99685c93053d3228e', 3, 1),
(8, 'default-img.jpg', 'umaq2', 'yahoo', 'umaq2', '$2a$08$2ggpYdm2QKSr.jxQmOZZWeWBRfe9X2KkieEJupD8UtsBjN4EPpEsO', 'What is my username?', 'umaq2', '0f616daf1cf7fe3f91c32ddfa8821ab5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kidzeclipes@yahoo.com', '2014-12-20 18:25:46', 1, 2, '2014-12-20T18:26:19+00:00', 'f7f886855bbfc7c9e5101df6e77794ce', 3, 1),
(9, 'default-img.jpg', 'pisang', 'admin', 'pisang', '$2a$08$pn2U5NZix1EOx/.IYmmaeOYnIdxL7faB39ElDFFulsyFVRuaoTm8q', 'What is my username?', 'a1', '8a8bb7cd343aa2ad99b7d762030857a2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pisang@dinarpal.com', '2014-12-28 07:27:16', 1, 2, '2015-02-11T23:32:46+08:00', '97669d6b22a790a5feb7f9c06f6e3d03', 1, 1),
(10, 'default-img.jpg', 'staff', 'bujang', 'staff', '$2a$08$60LE6Y86CP3V8y2filvJ7eB/0HqDk/gFNmjb4y0P.tXP83X/Y/3fy', 'What is my username?', 'b1', 'edbab45572c72a5d9440b40bcc0500c0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'staff@dinarpal.com', '2014-12-28 07:28:05', 1, 2, '2015-08-18T10:04:33+02:00', '9512afcb3f0fde463ddf8e476a76be16', 2, 1),
(11, 'default-img.jpg', 'hai', 'hehe', 'hai', '$2a$08$L1jcJUSk0LH97DOtYW7BW.v7YO93fHtPT6oVODJgbo0vkLGEMgNai', 'What is my username?', 'hai', '42810cb02db3bb2cbb428af0d8b0376e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lol@yahoo.com', '2015-02-10 16:48:20', 1, 1, NULL, '7fd1bc3083e54ac8254dc6ceb78d29b6', 3, 1),
(17, '6d3ac-adeq-nur---ftmk!-20150212_151603.jpg', 'Nur Umira', 'Mustafa', 'nur', '$2a$08$R26OP4OtJ2PCewXZLW5ab.DpVPpHZwRtR.Fbfm4qKXTothzh7KkG6', 'What is my username?', 'nur', 'b55178b011bfb206965f2638d0f87047', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nurumira@gmail.com', '2015-04-27 03:12:49', 1, 2, '2015-08-05T17:46:23+02:00', '69c0e639c71a34bb6b710f043138f7f8', 3, 1),
(18, '19727-umar-mukhtar-bin-hambaran---presiden---ftmk---kidzeclipes@gmail.com.jpg', 'Hakim NICE 2015', 'Juri', 'hakim', '$2a$08$aqMvGz1cMj93wFFNlI/NeuKaIn3xo.cReF52Z22FAhEyudjskJi.2', 'What is my username?', 'hakim', 'c96041081de85714712a79319cb2be5f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hakim@gmail.com', '2015-05-20 16:29:14', 1, 2, '2015-05-21T07:14:04+02:00', '239bda67650c73ddeb39906e8d9900b0', 3, 1),
(20, '8efb5-gildarts.png', 'arash', 'rashid', 'arash', '$2a$08$drxfH60EMbBxA8FVzycJGOyL.XDjomw7rr1P3K5a5oQ0HXf8B1iwG', 'What is my username?', 'arash', '81b9a3538d93a7623ad0e9bf1347d137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'arash.private@live.com', '2015-07-02 17:17:21', 1, 2, '2015-07-02T17:19:41+02:00', '248dfd4fff3169f86edec2930684bfd4', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `members_level`
--

CREATE TABLE IF NOT EXISTS `members_level` (
  `ml_id` int(11) NOT NULL,
  `ml_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members_level`
--

INSERT INTO `members_level` (`ml_id`, `ml_desc`) VALUES
(1, 'Administrator'),
(2, 'Staff'),
(3, 'Members');

-- --------------------------------------------------------

--
-- Table structure for table `members_verification`
--

CREATE TABLE IF NOT EXISTS `members_verification` (
  `mv_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `mv_govissueid` varchar(200) DEFAULT NULL,
  `mvs_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members_verification_status`
--

CREATE TABLE IF NOT EXISTS `members_verification_status` (
  `mvs_id` int(11) NOT NULL,
  `mvs_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members_verification_status`
--

INSERT INTO `members_verification_status` (`mvs_id`, `mvs_desc`) VALUES
(1, 'Unverified'),
(2, 'Verified'),
(3, 'Rejected'),
(4, 'Declined');

-- --------------------------------------------------------

--
-- Table structure for table `pawn`
--

CREATE TABLE IF NOT EXISTS `pawn` (
  `pa_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `pa_start_date` datetime NOT NULL,
  `pa_end_date` datetime NOT NULL,
  `am_id` int(11) NOT NULL,
  `pa_total_weight` varchar(200) DEFAULT '0',
  `pa_grand_total` varchar(200) DEFAULT '0',
  `pa_rahnu_rate` varchar(200) DEFAULT '0',
  `pa_safe_fee` varchar(200) DEFAULT '0',
  `pt_id` int(11) NOT NULL COMMENT 'pawn_type',
  `sl_id` int(11) NOT NULL,
  `pa_status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pawn`
--

INSERT INTO `pawn` (`pa_id`, `me_id`, `pa_start_date`, `pa_end_date`, `am_id`, `pa_total_weight`, `pa_grand_total`, `pa_rahnu_rate`, `pa_safe_fee`, `pt_id`, `sl_id`, `pa_status`) VALUES
(1, 1, '2015-08-16 09:43:30', '2016-02-12 09:43:30', 1, '34', '4454', '0.7', '0', 1, 1, 1),
(2, 1, '2015-08-16 09:44:09', '2016-02-12 09:44:09', 1, '12.75', '1800', '0.8', '0', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pawn_child`
--

CREATE TABLE IF NOT EXISTS `pawn_child` (
  `pc_id` int(11) NOT NULL,
  `pa_id` int(11) NOT NULL,
  `itct_id` int(11) NOT NULL,
  `pc_qty` varchar(200) DEFAULT '0',
  `pc_status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pawn_child`
--

INSERT INTO `pawn_child` (`pc_id`, `pa_id`, `itct_id`, `pc_qty`, `pc_status`) VALUES
(1, 1, 1, '3', 1),
(2, 1, 2, '1', 1),
(3, 2, 4, '3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pawn_child_child`
--

CREATE TABLE IF NOT EXISTS `pawn_child_child` (
  `pcc_id` int(11) NOT NULL,
  `pc_id` int(11) NOT NULL,
  `pcc_image` varchar(500) NOT NULL,
  `pcc_status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pawn_child_child`
--

INSERT INTO `pawn_child_child` (`pcc_id`, `pc_id`, `pcc_image`, `pcc_status`) VALUES
(1, 1, '3940c-1dinar.jpg', 1),
(2, 1, '3940c-1dinar.jpg', 1),
(3, 1, '3940c-1dinar.jpg', 1),
(4, 2, '190c6-5dinar.jpg', 1),
(5, 3, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(6, 3, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(7, 3, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pawn_type`
--

CREATE TABLE IF NOT EXISTS `pawn_type` (
  `pt_id` int(11) NOT NULL,
  `pt_code` varchar(200) NOT NULL,
  `pt_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pawn_type`
--

INSERT INTO `pawn_type` (`pt_id`, `pt_code`, `pt_name`) VALUES
(1, 'PP', 'Purchase and Pawn'),
(2, 'PC', 'Pawn and Courier');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE IF NOT EXISTS `payment_method` (
  `pm_id` int(11) NOT NULL,
  `pm_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`pm_id`, `pm_name`) VALUES
(1, 'E-Dinar Balance'),
(2, 'FPX');

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE IF NOT EXISTS `payment_type` (
  `pt_id` int(11) NOT NULL,
  `pt_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`pt_id`, `pt_desc`) VALUES
(1, 'Goods'),
(2, 'Services');

-- --------------------------------------------------------

--
-- Table structure for table `purity`
--

CREATE TABLE IF NOT EXISTS `purity` (
  `pu_id` int(11) NOT NULL,
  `pu_desc` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purity`
--

INSERT INTO `purity` (`pu_id`, `pu_desc`) VALUES
(1, '999'),
(2, '950'),
(3, '916'),
(4, '875'),
(5, '835'),
(6, '750');

-- --------------------------------------------------------

--
-- Table structure for table `sellbuy_board`
--

CREATE TABLE IF NOT EXISTS `sellbuy_board` (
  `sb_id` int(11) NOT NULL,
  `me_id` int(11) DEFAULT NULL,
  `sb_date` datetime DEFAULT NULL,
  `sbt_id` int(11) DEFAULT NULL,
  `it_id` int(11) DEFAULT NULL,
  `sb_weight` varchar(200) DEFAULT '0',
  `sb_pricepergram` varchar(200) DEFAULT '0',
  `sb_notes` varchar(500) DEFAULT NULL,
  `sb_whatsapp` varchar(200) DEFAULT NULL,
  `sbs_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sellbuy_board_status`
--

CREATE TABLE IF NOT EXISTS `sellbuy_board_status` (
  `sbs_id` int(11) NOT NULL,
  `sbs_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellbuy_board_status`
--

INSERT INTO `sellbuy_board_status` (`sbs_id`, `sbs_desc`) VALUES
(1, 'Open'),
(2, 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `sellbuy_board_type`
--

CREATE TABLE IF NOT EXISTS `sellbuy_board_type` (
  `sbt_id` int(11) NOT NULL,
  `sbt_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellbuy_board_type`
--

INSERT INTO `sellbuy_board_type` (`sbt_id`, `sbt_desc`) VALUES
(1, 'Buy'),
(2, 'Sell'),
(3, 'Swap'),
(4, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `souq`
--

CREATE TABLE IF NOT EXISTS `souq` (
  `so_id` int(11) NOT NULL,
  `me_id` int(11) DEFAULT NULL,
  `so_buy_date` datetime DEFAULT NULL,
  `am_id` int(11) DEFAULT NULL,
  `so_total_weight` varchar(200) DEFAULT '0',
  `so_grand_total` varchar(200) DEFAULT '0',
  `sl_id` int(11) DEFAULT '0',
  `so_address` varchar(500) DEFAULT '-',
  `so_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `souq`
--

INSERT INTO `souq` (`so_id`, `me_id`, `so_buy_date`, `am_id`, `so_total_weight`, `so_grand_total`, `sl_id`, `so_address`, `so_status`) VALUES
(1, 1, '2015-08-14 10:16:29', 1, '17', '2213.5', 1, '-', 1),
(2, 1, '2015-08-14 10:17:16', 1, '12.75', '1700', 1, '-', 1),
(3, 1, '2015-08-14 10:21:47', 1, '21.25', '2683.75', 1, '-', 1),
(4, 1, '2015-08-14 10:22:10', 1, '42.5', '5467.5', 1, '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `souq_adc`
--

CREATE TABLE IF NOT EXISTS `souq_adc` (
  `sadc_id` int(11) NOT NULL,
  `so_id` int(11) NOT NULL,
  `adc_id` int(11) NOT NULL,
  `sadc_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `souq_adc`
--

INSERT INTO `souq_adc` (`sadc_id`, `so_id`, `adc_id`, `sadc_status`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `souq_child`
--

CREATE TABLE IF NOT EXISTS `souq_child` (
  `sc_id` int(11) NOT NULL,
  `so_id` int(11) NOT NULL,
  `itct_id` int(11) NOT NULL,
  `sc_qty` varchar(200) DEFAULT '0',
  `sc_status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `souq_child`
--

INSERT INTO `souq_child` (`sc_id`, `so_id`, `itct_id`, `sc_qty`, `sc_status`) VALUES
(1, 1, 1, '2', 1),
(2, 1, 4, '2', 1),
(3, 2, 4, '3', 1),
(4, 3, 2, '1', 1),
(5, 4, 2, '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `souq_child_child`
--

CREATE TABLE IF NOT EXISTS `souq_child_child` (
  `scc_id` int(11) NOT NULL,
  `sc_id` int(11) NOT NULL,
  `scc_image` varchar(500) NOT NULL,
  `scc_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `souq_child_child`
--

INSERT INTO `souq_child_child` (`scc_id`, `sc_id`, `scc_image`, `scc_status`) VALUES
(1, 1, '3940c-1dinar.jpg', 1),
(2, 1, '3940c-1dinar.jpg', 1),
(3, 2, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(4, 2, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(5, 3, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(6, 3, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(7, 3, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(8, 4, '190c6-5dinar.jpg', 1),
(9, 5, '190c6-5dinar.jpg', 1),
(10, 5, '190c6-5dinar.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `souq_ds`
--

CREATE TABLE IF NOT EXISTS `souq_ds` (
  `sds_id` int(11) NOT NULL,
  `so_id` int(11) NOT NULL,
  `ds_id` int(11) NOT NULL,
  `sds_status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storage_location`
--

CREATE TABLE IF NOT EXISTS `storage_location` (
  `sl_id` int(11) NOT NULL,
  `sl_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_location`
--

INSERT INTO `storage_location` (`sl_id`, `sl_name`) VALUES
(1, 'Malaysia - Melaka - Melaka International Trade Centre'),
(2, 'Brunei - Bandar Seri Begawan - Jalan Kucing'),
(3, 'UAE - Dubai - Gold Souk');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `tr_id` int(11) NOT NULL,
  `me_id_from` int(11) NOT NULL,
  `me_id_to` int(11) NOT NULL,
  `tr_amount` varchar(200) DEFAULT '0',
  `pt_id` int(11) NOT NULL COMMENT 'payment_type',
  `at_id` int(11) NOT NULL,
  `ft_id` int(11) NOT NULL,
  `tr_notes` varchar(500) DEFAULT NULL,
  `tr_datetime` datetime NOT NULL,
  `ba_id` int(11) NOT NULL,
  `tt_id` int(11) NOT NULL,
  `ts_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tr_id`, `me_id_from`, `me_id_to`, `tr_amount`, `pt_id`, `at_id`, `ft_id`, `tr_notes`, `tr_datetime`, `ba_id`, `tt_id`, `ts_id`) VALUES
(1, 1, 17, '200', 0, 1, 4, 'bagi ke nur', '2015-08-16 12:44:25', 0, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_status`
--

CREATE TABLE IF NOT EXISTS `transaction_status` (
  `ts_id` int(11) NOT NULL,
  `ts_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_status`
--

INSERT INTO `transaction_status` (`ts_id`, `ts_desc`) VALUES
(1, 'Completed'),
(2, 'Pending'),
(3, 'Disputed'),
(4, 'Canceled');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_type`
--

CREATE TABLE IF NOT EXISTS `transaction_type` (
  `tt_id` int(11) NOT NULL,
  `tt_desc` varchar(200) NOT NULL,
  `tt_code` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_type`
--

INSERT INTO `transaction_type` (`tt_id`, `tt_desc`, `tt_code`) VALUES
(1, 'Send Payment', 'SP'),
(2, 'Withdrawal', 'WI'),
(3, 'Deposit', 'DE'),
(4, 'Amanah Deal', 'AD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`at_id`);

--
-- Indexes for table `advertising_campaign`
--
ALTER TABLE `advertising_campaign`
  ADD PRIMARY KEY (`adc_id`);

--
-- Indexes for table `amanah_deal`
--
ALTER TABLE `amanah_deal`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `amil`
--
ALTER TABLE `amil`
  ADD PRIMARY KEY (`am_id`);

--
-- Indexes for table `amil_certificate`
--
ALTER TABLE `amil_certificate`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `amil_status`
--
ALTER TABLE `amil_status`
  ADD PRIMARY KEY (`as_id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`ba_id`);

--
-- Indexes for table `banks_category`
--
ALTER TABLE `banks_category`
  ADD PRIMARY KEY (`bc_id`);

--
-- Indexes for table `batch_bids`
--
ALTER TABLE `batch_bids`
  ADD PRIMARY KEY (`bb_id`);

--
-- Indexes for table `ba_account_type`
--
ALTER TABLE `ba_account_type`
  ADD PRIMARY KEY (`bat_id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`bid_id`);

--
-- Indexes for table `bid_member`
--
ALTER TABLE `bid_member`
  ADD PRIMARY KEY (`bm_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`br_id`);

--
-- Indexes for table `brands_itc`
--
ALTER TABLE `brands_itc`
  ADD PRIMARY KEY (`bi_id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`ca_id`);

--
-- Indexes for table `cards_type`
--
ALTER TABLE `cards_type`
  ADD PRIMARY KEY (`ct_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`de_id`);

--
-- Indexes for table `deposit_type`
--
ALTER TABLE `deposit_type`
  ADD PRIMARY KEY (`det_id`);

--
-- Indexes for table `dinarpal_account`
--
ALTER TABLE `dinarpal_account`
  ADD PRIMARY KEY (`da_id`);

--
-- Indexes for table `dinarpal_admin_account`
--
ALTER TABLE `dinarpal_admin_account`
  ADD PRIMARY KEY (`daa_id`);

--
-- Indexes for table `dinarpal_config`
--
ALTER TABLE `dinarpal_config`
  ADD PRIMARY KEY (`dc_id`);

--
-- Indexes for table `dinarpal_document`
--
ALTER TABLE `dinarpal_document`
  ADD PRIMARY KEY (`dd_id`);

--
-- Indexes for table `dinarpal_document_type`
--
ALTER TABLE `dinarpal_document_type`
  ADD PRIMARY KEY (`ddt_id`);

--
-- Indexes for table `dinarpal_services`
--
ALTER TABLE `dinarpal_services`
  ADD PRIMARY KEY (`ds_id`);

--
-- Indexes for table `dinarpal_services_type`
--
ALTER TABLE `dinarpal_services_type`
  ADD PRIMARY KEY (`dst_id`);

--
-- Indexes for table `dinarpal_transaction`
--
ALTER TABLE `dinarpal_transaction`
  ADD PRIMARY KEY (`dt_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`em_id`);

--
-- Indexes for table `fee_type`
--
ALTER TABLE `fee_type`
  ADD PRIMARY KEY (`ft_id`);

--
-- Indexes for table `itc_type`
--
ALTER TABLE `itc_type`
  ADD PRIMARY KEY (`itct_id`);

--
-- Indexes for table `item_courier`
--
ALTER TABLE `item_courier`
  ADD PRIMARY KEY (`ic_id`);

--
-- Indexes for table `item_status_courier`
--
ALTER TABLE `item_status_courier`
  ADD PRIMARY KEY (`isc_id`);

--
-- Indexes for table `item_storage`
--
ALTER TABLE `item_storage`
  ADD PRIMARY KEY (`is_id`);

--
-- Indexes for table `item_storage_child`
--
ALTER TABLE `item_storage_child`
  ADD PRIMARY KEY (`isc_id`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`it_id`);

--
-- Indexes for table `item_type_child`
--
ALTER TABLE `item_type_child`
  ADD PRIMARY KEY (`itc_id`);

--
-- Indexes for table `item_type_purity`
--
ALTER TABLE `item_type_purity`
  ADD PRIMARY KEY (`itp_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`me_id`);

--
-- Indexes for table `members_level`
--
ALTER TABLE `members_level`
  ADD PRIMARY KEY (`ml_id`);

--
-- Indexes for table `members_verification`
--
ALTER TABLE `members_verification`
  ADD PRIMARY KEY (`mv_id`);

--
-- Indexes for table `members_verification_status`
--
ALTER TABLE `members_verification_status`
  ADD PRIMARY KEY (`mvs_id`);

--
-- Indexes for table `pawn`
--
ALTER TABLE `pawn`
  ADD PRIMARY KEY (`pa_id`);

--
-- Indexes for table `pawn_child`
--
ALTER TABLE `pawn_child`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `pawn_child_child`
--
ALTER TABLE `pawn_child_child`
  ADD PRIMARY KEY (`pcc_id`);

--
-- Indexes for table `pawn_type`
--
ALTER TABLE `pawn_type`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`pm_id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indexes for table `purity`
--
ALTER TABLE `purity`
  ADD PRIMARY KEY (`pu_id`);

--
-- Indexes for table `sellbuy_board`
--
ALTER TABLE `sellbuy_board`
  ADD PRIMARY KEY (`sb_id`);

--
-- Indexes for table `sellbuy_board_status`
--
ALTER TABLE `sellbuy_board_status`
  ADD PRIMARY KEY (`sbs_id`);

--
-- Indexes for table `sellbuy_board_type`
--
ALTER TABLE `sellbuy_board_type`
  ADD PRIMARY KEY (`sbt_id`);

--
-- Indexes for table `souq`
--
ALTER TABLE `souq`
  ADD PRIMARY KEY (`so_id`);

--
-- Indexes for table `souq_adc`
--
ALTER TABLE `souq_adc`
  ADD PRIMARY KEY (`sadc_id`);

--
-- Indexes for table `souq_child`
--
ALTER TABLE `souq_child`
  ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `souq_child_child`
--
ALTER TABLE `souq_child_child`
  ADD PRIMARY KEY (`scc_id`);

--
-- Indexes for table `souq_ds`
--
ALTER TABLE `souq_ds`
  ADD PRIMARY KEY (`sds_id`);

--
-- Indexes for table `storage_location`
--
ALTER TABLE `storage_location`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tr_id`);

--
-- Indexes for table `transaction_status`
--
ALTER TABLE `transaction_status`
  ADD PRIMARY KEY (`ts_id`);

--
-- Indexes for table `transaction_type`
--
ALTER TABLE `transaction_type`
  ADD PRIMARY KEY (`tt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `at_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `advertising_campaign`
--
ALTER TABLE `advertising_campaign`
  MODIFY `adc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `amanah_deal`
--
ALTER TABLE `amanah_deal`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `amil`
--
ALTER TABLE `amil`
  MODIFY `am_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `amil_certificate`
--
ALTER TABLE `amil_certificate`
  MODIFY `ac_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `amil_status`
--
ALTER TABLE `amil_status`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `ba_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `banks_category`
--
ALTER TABLE `banks_category`
  MODIFY `bc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `batch_bids`
--
ALTER TABLE `batch_bids`
  MODIFY `bb_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ba_account_type`
--
ALTER TABLE `ba_account_type`
  MODIFY `bat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `bid_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bid_member`
--
ALTER TABLE `bid_member`
  MODIFY `bm_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `br_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `brands_itc`
--
ALTER TABLE `brands_itc`
  MODIFY `bi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `cards_type`
--
ALTER TABLE `cards_type`
  MODIFY `ct_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `de_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `deposit_type`
--
ALTER TABLE `deposit_type`
  MODIFY `det_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dinarpal_account`
--
ALTER TABLE `dinarpal_account`
  MODIFY `da_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `dinarpal_admin_account`
--
ALTER TABLE `dinarpal_admin_account`
  MODIFY `daa_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dinarpal_config`
--
ALTER TABLE `dinarpal_config`
  MODIFY `dc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dinarpal_document`
--
ALTER TABLE `dinarpal_document`
  MODIFY `dd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `dinarpal_document_type`
--
ALTER TABLE `dinarpal_document_type`
  MODIFY `ddt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dinarpal_services`
--
ALTER TABLE `dinarpal_services`
  MODIFY `ds_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `dinarpal_services_type`
--
ALTER TABLE `dinarpal_services_type`
  MODIFY `dst_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dinarpal_transaction`
--
ALTER TABLE `dinarpal_transaction`
  MODIFY `dt_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `em_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `fee_type`
--
ALTER TABLE `fee_type`
  MODIFY `ft_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `itc_type`
--
ALTER TABLE `itc_type`
  MODIFY `itct_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `item_courier`
--
ALTER TABLE `item_courier`
  MODIFY `ic_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `item_status_courier`
--
ALTER TABLE `item_status_courier`
  MODIFY `isc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `item_storage`
--
ALTER TABLE `item_storage`
  MODIFY `is_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `item_storage_child`
--
ALTER TABLE `item_storage_child`
  MODIFY `isc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `it_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `item_type_child`
--
ALTER TABLE `item_type_child`
  MODIFY `itc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `item_type_purity`
--
ALTER TABLE `item_type_purity`
  MODIFY `itp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `members_level`
--
ALTER TABLE `members_level`
  MODIFY `ml_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `members_verification`
--
ALTER TABLE `members_verification`
  MODIFY `mv_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `members_verification_status`
--
ALTER TABLE `members_verification_status`
  MODIFY `mvs_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pawn`
--
ALTER TABLE `pawn`
  MODIFY `pa_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pawn_child`
--
ALTER TABLE `pawn_child`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pawn_child_child`
--
ALTER TABLE `pawn_child_child`
  MODIFY `pcc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pawn_type`
--
ALTER TABLE `pawn_type`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `purity`
--
ALTER TABLE `purity`
  MODIFY `pu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sellbuy_board`
--
ALTER TABLE `sellbuy_board`
  MODIFY `sb_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sellbuy_board_status`
--
ALTER TABLE `sellbuy_board_status`
  MODIFY `sbs_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sellbuy_board_type`
--
ALTER TABLE `sellbuy_board_type`
  MODIFY `sbt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `souq`
--
ALTER TABLE `souq`
  MODIFY `so_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `souq_adc`
--
ALTER TABLE `souq_adc`
  MODIFY `sadc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `souq_child`
--
ALTER TABLE `souq_child`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `souq_child_child`
--
ALTER TABLE `souq_child_child`
  MODIFY `scc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `souq_ds`
--
ALTER TABLE `souq_ds`
  MODIFY `sds_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_location`
--
ALTER TABLE `storage_location`
  MODIFY `sl_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transaction_status`
--
ALTER TABLE `transaction_status`
  MODIFY `ts_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transaction_type`
--
ALTER TABLE `transaction_type`
  MODIFY `tt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
