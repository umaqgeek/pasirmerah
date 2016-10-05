-- phpMyAdmin SQL Dump
-- version 4.0.10.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 08, 2015 at 01:01 AM
-- Server version: 5.5.40-cll
-- PHP Version: 5.4.23

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
  `at_id` int(11) NOT NULL AUTO_INCREMENT,
  `at_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`at_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
-- Table structure for table `amil`
--

CREATE TABLE IF NOT EXISTS `amil` (
  `am_id` int(11) NOT NULL AUTO_INCREMENT,
  `am_image` varchar(2000) DEFAULT NULL,
  `am_name` varchar(200) NOT NULL,
  `am_phone` varchar(200) DEFAULT NULL,
  `am_email` varchar(200) DEFAULT NULL,
  `am_address` varchar(2000) DEFAULT NULL,
  `am_whatsapp` varchar(200) DEFAULT NULL,
  `am_status` int(11) DEFAULT '1',
  PRIMARY KEY (`am_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `amil`
--

INSERT INTO `amil` (`am_id`, `am_image`, `am_name`, `am_phone`, `am_email`, `am_address`, `am_whatsapp`, `am_status`) VALUES
(1, 'default-img.jpg', 'Kizaru Ahmad', '019-9737579', 'kizaru@dinarpal.com', 'Melaka', '019-9737579', 1),
(2, 'default-img.jpg', 'Himura Kenshin', '019-3355979', 'kenshin@dinarpal.com', 'Pahang', '019-3355979', 1);

-- --------------------------------------------------------

--
-- Table structure for table `amil_certificate`
--

CREATE TABLE IF NOT EXISTS `amil_certificate` (
  `ac_id` int(11) NOT NULL AUTO_INCREMENT,
  `ac_link` varchar(2000) DEFAULT NULL,
  `ac_size` varchar(200) DEFAULT NULL,
  `am_id` int(11) NOT NULL,
  PRIMARY KEY (`ac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
  `ba_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bc_id` int(11) NOT NULL,
  PRIMARY KEY (`ba_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`ba_id`, `me_id`, `ba_name`, `ba_address`, `ba_city`, `ba_zipcode`, `co_id`, `ba_state`, `ba_phone`, `ba_holdername`, `ba_accountnumber`, `bat_id`, `ba_digitrouting`, `ba_swiftcode`, `ba_addinfo`, `ba_status`, `bc_id`) VALUES
(3, 1, 'MAYBANK SDN BHD', 'MAYBANK SDN BHD, BANDAR MITC, 75450, AYER KEROH, MELAKA.', 'AYER KEROH', '75450', 3, 'MELAKA', '-', 'OMAR MUKHTAR BIN HAMBARAN', '154110057084', 2, '-', '033', '-', 1, 1),
(7, 9, 'MAYBANK MALAYSIA BERHAD', '888 JALAN HANG TUAH', 'AYER KEROH MELAKA', '75', 3, 'STATE', '+60166707888', 'ARASH RASHID', '`15845589785', 2, '369856258', '365987452', 'AS', 1, 1),
(8, 11, 'MAYBANK SDN BHD', 'MAYBANK SDN BHD, BANDAR MITC, 75450, AYER KEROH, MELAKA.', 'AYER KEROH', '75450', 3, 'MELAKA', '-', 'OMAR MUKHTAR BIN HAMBARAN', '154110057084', 2, '-', '033', '-', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banks_category`
--

CREATE TABLE IF NOT EXISTS `banks_category` (
  `bc_id` int(11) NOT NULL AUTO_INCREMENT,
  `bc_name` varchar(200) NOT NULL,
  `bc_fee` varchar(200) DEFAULT '0.00',
  PRIMARY KEY (`bc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `banks_category`
--

INSERT INTO `banks_category` (`bc_id`, `bc_name`, `bc_fee`) VALUES
(1, 'Malaysia Favorite Bank', '2.00'),
(2, 'International Favorite Bank', '2.00');

-- --------------------------------------------------------

--
-- Table structure for table `ba_account_type`
--

CREATE TABLE IF NOT EXISTS `ba_account_type` (
  `bat_id` int(11) NOT NULL AUTO_INCREMENT,
  `bat_name` varchar(200) NOT NULL,
  PRIMARY KEY (`bat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `br_id` int(11) NOT NULL AUTO_INCREMENT,
  `br_code` varchar(200) NOT NULL,
  `br_name` varchar(200) NOT NULL,
  PRIMARY KEY (`br_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`br_id`, `br_code`, `br_name`) VALUES
(1, 'DP', 'DinarPal'),
(2, 'DEPB', 'DEPB'),
(3, 'GCP', 'GCP'),
(4, 'PG', 'PG'),
(5, 'PAMP', 'PAMP');

-- --------------------------------------------------------

--
-- Table structure for table `brands_itc`
--

CREATE TABLE IF NOT EXISTS `brands_itc` (
  `bi_id` int(11) NOT NULL AUTO_INCREMENT,
  `br_id` int(11) NOT NULL,
  `itc_id` int(11) NOT NULL,
  PRIMARY KEY (`bi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

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
  `ca_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) NOT NULL,
  `ct_id` int(11) NOT NULL,
  `ca_name` varchar(200) DEFAULT NULL,
  `ca_number` varchar(200) DEFAULT NULL,
  `ca_cvnnumber` varchar(200) DEFAULT NULL,
  `ca_expiredmonth` varchar(200) DEFAULT NULL,
  `ca_expiredyear` varchar(200) DEFAULT NULL,
  `ca_status` int(11) NOT NULL,
  PRIMARY KEY (`ca_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`ca_id`, `me_id`, `ct_id`, `ca_name`, `ca_number`, `ca_cvnnumber`, `ca_expiredmonth`, `ca_expiredyear`, `ca_status`) VALUES
(3, 1, 1, 'OMAR MUKHTAR BIN HAMBARAN', '1234567890123456', '031', '6', '2016', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cards_type`
--

CREATE TABLE IF NOT EXISTS `cards_type` (
  `ct_id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(200) NOT NULL,
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cards_type`
--

INSERT INTO `cards_type` (`ct_id`, `ct_name`) VALUES
(1, 'Visa'),
(2, 'Master Card'),
(3, 'American Express'),
(4, 'Discover');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('013503ed208241bad98d32e3754e9aa4', '188.165.15.214', 'Mozilla/5.0 (compatible; AhrefsBot/5.0; +http://ah', 1420644872, ''),
('041fb02592032f9bfcc19fccf51d25d7', '115.134.161.132', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1420636817, ''),
('0aca5a210c8dd989481ad6cb5238364d', '123.125.71.31', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1420632930, ''),
('33cb6bceb24b786e3895f65a5cbd1614', '177.16.39.208', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1420631892, ''),
('3421b170b9da2d44eda9991c33f11a51', '188.165.15.209', 'Mozilla/5.0 (compatible; AhrefsBot/5.0; +http://ah', 1420636483, ''),
('384b0b476411822ffe7c81bba0552f22', '123.125.71.45', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1420647690, ''),
('3b5e90e61fdaeaffadb5066f5970a7d2', '220.181.108.93', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1420636689, ''),
('3c66e684902ae1ebfa814a7a3c359c3d', '66.249.71.231', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS', 1420645145, ''),
('3e47b224396e2e9eac5c090048f8b4e2', '220.181.108.107', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1420647162, ''),
('48308990962fefe701510723f60ea32b', '125.64.35.68', '0', 1420639342, ''),
('4d2e87e8f71ddc2053c6f8c9eeda2e70', '130.211.129.204', 'NerdyBot', 1420648733, ''),
('4d65e129aab7b7a1c8339d4a5172a4d6', '220.181.108.102', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1420633507, ''),
('55b6c1c6a6be87c6604cfcd4a722ea8e', '175.137.136.154', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1420650025, ''),
('5a5deda7c6b543f901d8769f7f0e16bc', '66.249.71.193', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS', 1420644505, ''),
('793cf3bd70eebe08e046cd3261f61819', '192.169.244.12', '0', 1420632532, ''),
('80bba9aa571d617bb615cb263808e1ce', '220.181.108.121', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1420630154, ''),
('83711d98dffc0d3a195fc65e06357b7a', '188.165.15.231', 'Mozilla/5.0 (compatible; AhrefsBot/5.0; +http://ah', 1420646378, ''),
('8553515e7095400f27fe8901b6fc2630', '188.165.15.209', 'Mozilla/5.0 (compatible; AhrefsBot/5.0; +http://ah', 1420647774, ''),
('8dc93b21623fd494b9c4cce5c91a6533', '183.171.162.249', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac ', 1420644117, ''),
('91805cc30c75f9cca877f555bb40ee63', '220.181.108.97', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1420643587, ''),
('9b202b6393e37741916c8d54875f2fb8', '54.146.179.178', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1420636086, ''),
('a15cdaa51be3b3fada20a5c6a9db712f', '154.106.171.105', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1420638893, ''),
('a48b420e9feeae477057f0d6e347a440', '188.165.15.117', 'Mozilla/5.0 (compatible; AhrefsBot/5.0; +http://ah', 1420649055, ''),
('ab4775aeb35d369c676cc567b4f0927e', '180.76.4.15', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)', 1420643263, ''),
('ba0b07eb0c554f96b5e055e07b3b2580', '220.181.108.108', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1420640384, ''),
('bd3f5fea232437488dc49736e9d47aea', '188.165.15.148', 'Mozilla/5.0 (compatible; AhrefsBot/5.0; +http://ah', 1420632370, ''),
('be93c28ec736c0695cbcf0c59c60fded', '95.148.5.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1420644146, ''),
('ca565c656b2812c9d0f4b99a2cb45ce5', '180.76.4.207', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)', 1420636361, ''),
('f45f39223bac2642e867f1839018db0a', '123.125.71.54', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1420636611, ''),
('f8fb3cc2926c59e4b96acec8037c9f3f', '123.125.71.50', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1420640032, ''),
('fbb13262ec9c2f68e9f360f92fa8245b', '123.125.71.17', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1420643979, '');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_name` varchar(200) NOT NULL,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
-- Table structure for table `dinarpal_account`
--

CREATE TABLE IF NOT EXISTS `dinarpal_account` (
  `da_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) NOT NULL,
  `da_gold_rahnu_gram` varchar(200) DEFAULT '0',
  `da_gold_rahnu_money` varchar(200) DEFAULT '0',
  `da_gold_balance` varchar(200) DEFAULT '0',
  `da_gold_reserved` varchar(200) DEFAULT '0',
  `da_silver_rahnu_gram` varchar(200) DEFAULT '0',
  `da_silver_rahnu_money` varchar(200) DEFAULT '0',
  `da_silver_balance` varchar(200) DEFAULT '0',
  `da_silver_reserved` varchar(200) DEFAULT '0',
  `da_point_balance` varchar(200) DEFAULT '0',
  PRIMARY KEY (`da_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `dinarpal_account`
--

INSERT INTO `dinarpal_account` (`da_id`, `me_id`, `da_gold_rahnu_gram`, `da_gold_rahnu_money`, `da_gold_balance`, `da_gold_reserved`, `da_silver_rahnu_gram`, `da_silver_rahnu_money`, `da_silver_balance`, `da_silver_reserved`, `da_point_balance`) VALUES
(1, 1, '820.25', '107452.75', '99996', '101094', '0', '0', '1600', '1000', '0'),
(7, 7, '0', '0', '202168', '299998', '0', '0', '200000', '200000', '0'),
(8, 8, '0', '0', '200000', '200000', '0', '0', '200000', '200000', '0'),
(9, 9, '4.25', '556.75', '99541.25', '198700', '0', '0', '200000', '200000', '0'),
(10, 10, '0', '0', '200000', '200000', '0', '0', '200000', '200000', '0'),
(11, 11, '148.75', '19486.25', '180513.75', '200198', '0', '0', '200000', '200000', '0'),
(12, 12, '42.5', '5567.5', '193332.5', '200000', '0', '0', '200000', '200000', '0'),
(13, 13, '0', '0', '200000', '200000', '0', '0', '200000', '200000', '0'),
(14, 14, '0', '0', '200000', '200000', '0', '0', '200000', '200000', '0'),
(15, 15, '0', '0', '200000', '200000', '0', '0', '200000', '200000', '0'),
(16, 16, '0', '0', '200000', '200000', '0', '0', '200000', '200000', '0');

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_config`
--

CREATE TABLE IF NOT EXISTS `dinarpal_config` (
  `dc_id` int(11) NOT NULL AUTO_INCREMENT,
  `dc_currency_type` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`dc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dinarpal_config`
--

INSERT INTO `dinarpal_config` (`dc_id`, `dc_currency_type`) VALUES
(1, 'MYR');

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_transaction`
--

CREATE TABLE IF NOT EXISTS `dinarpal_transaction` (
  `dt_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) NOT NULL,
  `tr_amount` varchar(200) DEFAULT '0',
  `pt_id` int(11) NOT NULL,
  `at_id` int(11) NOT NULL,
  `tr_notes` varchar(500) DEFAULT NULL,
  `tr_datetime` datetime NOT NULL,
  `ft_id` int(11) NOT NULL,
  `tr_status` int(11) DEFAULT '1',
  PRIMARY KEY (`dt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `dinarpal_transaction`
--

INSERT INTO `dinarpal_transaction` (`dt_id`, `me_id`, `tr_amount`, `pt_id`, `at_id`, `tr_notes`, `tr_datetime`, `ft_id`, `tr_status`) VALUES
(1, 1, '2.00', 0, 1, NULL, '2014-12-14 14:37:49', 4, 1),
(2, 7, '2.00', 0, 1, NULL, '2014-12-14 14:38:29', 4, 1),
(3, 1, '2.00', 0, 1, NULL, '2014-12-14 14:45:35', 4, 1),
(4, 7, '2.00', 0, 1, NULL, '2014-12-14 14:47:08', 4, 1),
(5, 7, '2.00', 0, 1, NULL, '2014-12-14 14:58:11', 4, 1),
(7, 1, '2.00', 0, 1, NULL, '2014-12-14 15:32:37', 4, 1),
(8, 1, '2.00', 0, 1, NULL, '2014-12-14 15:42:49', 4, 1),
(9, 1, '2.00', 0, 1, NULL, '2014-12-14 15:48:35', 4, 1),
(11, 1, '2.00', 0, 1, NULL, '2014-12-26 20:21:44', 4, 1),
(12, 1, '2.00', 0, 1, NULL, '2014-12-26 20:22:30', 5, 1),
(13, 1, '2.00', 0, 2, NULL, '2014-12-26 20:58:02', 4, 1),
(14, 9, '2.00', 0, 1, NULL, '2014-12-30 09:35:00', 4, 1),
(15, 9, '2.00', 0, 2, NULL, '2014-12-30 09:35:43', 4, 1),
(16, 9, '2.00', 0, 1, NULL, '2014-12-30 09:36:09', 4, 1),
(17, 9, '2.00', 0, 2, NULL, '2014-12-30 09:37:37', 4, 1),
(18, 9, '2.00', 0, 1, NULL, '2014-12-30 09:38:21', 5, 1),
(19, 9, '2.00', 0, 2, NULL, '2014-12-31 08:29:07', 4, 1),
(20, 12, '2.00', 0, 1, NULL, '2014-12-31 13:51:45', 4, 1),
(21, 12, '2.00', 0, 1, NULL, '2014-12-31 13:59:56', 5, 1),
(22, 9, '2.00', 0, 2, NULL, '2015-01-05 15:52:31', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `em_id` int(11) NOT NULL AUTO_INCREMENT,
  `em_emails` varchar(200) NOT NULL,
  `me_id` int(11) NOT NULL,
  `em_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`em_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`em_id`, `em_emails`, `me_id`, `em_status`) VALUES
(1, 'kidzeclipes@gmail.com', 1, 2),
(2, 'umar@tuffah.info', 7, 2),
(3, 'kidzeclipes@yahoo.com', 8, 2),
(9, 'asd@asd.com', 8, 1),
(11, 'arash.private@live.com', 9, 2),
(13, 'arash.business@live.com', 9, 1),
(14, 'kamarulrizam94@gmail.com', 10, 2),
(15, 'dinarpal@outlook.com', 11, 2),
(17, 'enze2@yahoo.com', 12, 2),
(18, 'ongkuoghee@yahoo.co.uk', 13, 2),
(19, 'herman.anuar@yahoo.com', 14, 2),
(20, 'ezwanshahrin@gmail.com', 15, 2),
(21, 'ijul89@gmail.com', 16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fee_type`
--

CREATE TABLE IF NOT EXISTS `fee_type` (
  `ft_id` int(11) NOT NULL AUTO_INCREMENT,
  `ft_name` varchar(200) DEFAULT NULL,
  `ft_price` varchar(200) DEFAULT '0.00',
  PRIMARY KEY (`ft_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `fee_type`
--

INSERT INTO `fee_type` (`ft_id`, `ft_name`, `ft_price`) VALUES
(1, 'Verification Fee', '10.00'),
(2, 'Ar-Rahnu Fee', '10.00'),
(3, 'Safe Keeping Fee', '0.00'),
(4, 'Transaction Fee', '2.00'),
(5, 'Bank Withdrawal Fee', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `itc_type`
--

CREATE TABLE IF NOT EXISTS `itc_type` (
  `itct_id` int(11) NOT NULL AUTO_INCREMENT,
  `itct_image` varchar(2000) DEFAULT NULL,
  `itct_name` varchar(200) NOT NULL,
  `itct_price_rate` varchar(200) NOT NULL,
  `itct_weight` varchar(200) NOT NULL,
  `itct_cert` varchar(2000) DEFAULT NULL,
  `bi_id` int(11) NOT NULL,
  PRIMARY KEY (`itct_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `itc_type`
--

INSERT INTO `itc_type` (`itct_id`, `itct_image`, `itct_name`, `itct_price_rate`, `itct_weight`, `itct_cert`, `bi_id`) VALUES
(1, 'gold1.png', '1 Dinar', '556.75', '4.25', 'DP001', 1),
(2, 'gold1.png', '5 Dinar', '2783.75', '21.25', 'DP002', 1),
(3, 'gold1.png', '10 Dinar', '5567.50', '42.50', 'DP003', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE IF NOT EXISTS `item_type` (
  `it_id` int(11) NOT NULL AUTO_INCREMENT,
  `it_name` varchar(200) NOT NULL,
  PRIMARY KEY (`it_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
  `itc_id` int(11) NOT NULL AUTO_INCREMENT,
  `itc_name` varchar(200) NOT NULL,
  `it_id` int(11) NOT NULL,
  PRIMARY KEY (`itc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
  `itp_id` int(11) NOT NULL AUTO_INCREMENT,
  `it_id` int(11) NOT NULL,
  `pu_id` int(11) NOT NULL,
  `itp_price` varchar(200) NOT NULL,
  `itp_rate` varchar(200) NOT NULL DEFAULT '1',
  PRIMARY KEY (`itp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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
  `me_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_image` varchar(200) DEFAULT NULL,
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
  PRIMARY KEY (`me_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`me_id`, `me_image`, `me_firstname`, `me_lastname`, `me_username`, `me_password`, `me_question`, `me_answer`, `me_unique_link`, `me_address1`, `me_address2`, `me_postcode`, `me_country`, `me_government_issue_id`, `me_driver_license`, `me_phone_no`, `me_birth_date`, `me_description`, `me_maiden_name`, `me_nationality`, `me_whatsapp_no`, `me_email`, `me_register_date`, `me_account_type`, `me_activation_status`, `me_last_login`, `me_magic_num`, `ml_id`) VALUES
(1, 'umarkecik1.jpg', 'Umaq Mukhtardd', 'member', 'member', '$2a$08$lfiHuPrglR0H9PXbBiYbNe9RhyE3qymozXGO6COJDYKCPr17LfrRK', 'What is my pet''s name?', 'comel', 'aa08769cdcb26674c6706093503ff0a3', 'Melaka', 'Pahang', '75450', 'Malaysia', 'MY001', 'B and D', '0199737579', '1989-10-31', '', 'Ntoh', 'Malaysia', '0199737579', 'kidzeclipes@gmail.com', '2014-11-10 10:12:00', 2, 2, '2014-12-28T04:21:31+08:00', '0d4368f80cd1d149576c068211e89fbf', 3),
(7, 'default-img.jpg', 'asd', 'dsa', 'asd', '$2a$08$zRnQHtdGJnSdsPPqfGCXHef3VnVG06p.bQhM1vEs2b.Kcwz6aoF7K', 'Who am I?', 'Jack Sparrow', '7815696ecbf1c96e6894b779456d330e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'umar@tuffah.info', '2014-12-13 19:45:41', 1, 2, '2014-12-26T20:58:25+00:00', 'ec623adec13773d99685c93053d3228e', 3),
(8, 'default-img.jpg', 'umaq2', 'yahoo', 'umaq2', '$2a$08$2ggpYdm2QKSr.jxQmOZZWeWBRfe9X2KkieEJupD8UtsBjN4EPpEsO', 'What is my username?', 'umaq2', '0f616daf1cf7fe3f91c32ddfa8821ab5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kidzeclipes@yahoo.com', '2014-12-20 18:25:46', 1, 2, '2014-12-20T18:26:19+00:00', 'f7f886855bbfc7c9e5101df6e77794ce', 3),
(9, 'default-img.jpg', 'Arash', 'Rashid', 'arash', '$2a$08$1sLE9IXB53tp2e3HWf38qeyikoBBwkIoc6hmHdVpV0HBXe//L0mXa', 'What is my username?', 'arash', '81b9a3538d93a7623ad0e9bf1347d137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'arash.private@live.com', '2014-12-30 09:33:16', 1, 2, '2015-01-05T15:51:56+08:00', '248dfd4fff3169f86edec2930684bfd4', 3),
(10, 'default-img.jpg', 'kamarul', 'rizam', 'kamarul', '$2a$08$pEh9t8GaZjOETFApIpJyOOUCGgs6PkFBMzMEpTIawC42qkJIGPAo.', 'What is my username?', 'kamarul', 'f5b3b860399ae6f635c953f99504f9f8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kamarulrizam94@gmail.com', '2014-12-30 11:15:25', 1, 2, '2014-12-30T11:57:25+08:00', '65f35810ccae27eb7222552d8ca383c2', 3),
(11, 'default-img.jpg', 'dinarpal', 'dinarpal', 'dinarpal', '$2a$08$N7mygkpE6NjetupE1k2fj.eQie/GmflyRFsdk4SgIpWC6ShtN8eZO', 'What is my username?', 'dinarpal', 'http://www.dinarpal.com/member/uniqueLink/d1adb9d8db99b975e3d99261f7267374', '', '', '', '', '891031065213', 'B and D', '', '', '', '', '', '', 'dinarpal@outlook.com', '2014-12-30 21:27:02', 1, 2, '2014-12-30T23:05:16+08:00', 'fccfc16e6c08ace2802f528b34f4c894', 3),
(12, 'default-img.jpg', 'Enze', 'Amom', 'enze', '$2a$08$Gnm4Xlz.7aHxFLV75AerZ.0mR1Q8EALpHAuA4se3bRrKz2/yhEuEy', 'What is my username?', 'enze', '365106b0955809717402578378898d9a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'enze2@yahoo.com', '2014-12-31 13:47:41', 1, 2, '2014-12-31T13:55:57+08:00', 'ebf76aebaaaf96c8ba83f129569c8271', 3),
(13, 'default-img.jpg', 'Kuo Ghee', 'Ong', 'kuoghee', '$2a$08$Dk00B967s9RGFaH/1xiKwuYtqp.jnvgCIEmiGhz4II/zYrj3Nwz9G', 'What is my username?', 'kuoghee', 'b7b405bf4270bd50cc89dc4af33bad6c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ongkuoghee@yahoo.co.uk', '2015-01-03 23:07:49', 1, 2, '2015-01-03T23:08:27+08:00', '7d46cbbbfc18e29280311341b698fd93', 3),
(14, 'default-img.jpg', 'suherman', 'anuar', 'suherman', '$2a$08$2iKIZfdeKmEPo/hxY.Obae6PGniddFEx6uhW0/Bj5QZEJpvPsk5T2', 'What is my username?', 'suherman', '32b092f86e6995e1607ae9122b79b032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'herman.anuar@yahoo.com', '2015-01-05 22:37:42', 1, 2, '2015-01-05T22:47:01+08:00', '7120347ead3680f906356ab66280d4cf', 3),
(15, 'default-img.jpg', 'ezwan', 'shahrin', 'ezwan', '$2a$08$eUiNg10psjCf5L0lNxrniuFgcfbuSPoHYAZsFWBABuyVxUA7ieiW.', 'What is my username?', 'ezwan', '29fdf584d7c6cbc913f685363d966a7c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ezwanshahrin@gmail.com', '2015-01-06 12:30:15', 1, 2, '2015-01-06T12:31:29+08:00', 'ac29ed1c5e14b4d6ffbca4f9e09c4700', 3),
(16, 'default-img.jpg', 'ijul', 'kefli', 'ijul', '$2a$08$CeooVjLGUNszShWfUQ/.FubnmvqbjuGNGyojkkH6M0cEeaw0LNBdy', 'What is my username?', 'ijul', '2037a7b65f3bc47544d8f7e00b32e203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ijul89@gmail.com', '2015-01-07 13:46:28', 1, 2, '2015-01-07T14:30:47+08:00', 'ba64d4c8f84e926af9e9955542eff18c', 3);

-- --------------------------------------------------------

--
-- Table structure for table `members_level`
--

CREATE TABLE IF NOT EXISTS `members_level` (
  `ml_id` int(11) NOT NULL AUTO_INCREMENT,
  `ml_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`ml_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `members_level`
--

INSERT INTO `members_level` (`ml_id`, `ml_desc`) VALUES
(1, 'Administrator'),
(2, 'Staff'),
(3, 'Members');

-- --------------------------------------------------------

--
-- Table structure for table `pawn`
--

CREATE TABLE IF NOT EXISTS `pawn` (
  `pa_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) NOT NULL,
  `pa_start_date` datetime NOT NULL,
  `pa_end_date` datetime NOT NULL,
  `am_id` int(11) NOT NULL,
  `pa_total_weight` varchar(200) DEFAULT '0',
  `pa_grand_total` varchar(200) DEFAULT '0',
  `pa_rahnu_rate` varchar(200) DEFAULT '0',
  `pa_safe_fee` varchar(200) DEFAULT '0',
  `pa_status` int(11) DEFAULT '1',
  PRIMARY KEY (`pa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `pawn`
--

INSERT INTO `pawn` (`pa_id`, `me_id`, `pa_start_date`, `pa_end_date`, `am_id`, `pa_total_weight`, `pa_grand_total`, `pa_rahnu_rate`, `pa_safe_fee`, `pa_status`) VALUES
(1, 1, '2014-11-30 14:31:40', '2015-05-29 14:31:40', 1, '522.75', '68480.25', '0.65', '0', 1),
(2, 1, '2014-11-30 14:32:51', '2015-05-29 14:32:51', 1, '199.75', '26167.25', '0.55', '0', 1),
(3, 1, '2014-11-30 14:42:07', '2015-05-29 14:42:07', 2, '51', '6681', '0.75', '0', 1),
(4, 1, '2014-12-12 13:42:27', '2015-06-10 13:42:27', 1, '12.75', '1670.25', '0.8', '0', 1),
(5, 1, '2014-12-15 14:50:35', '2015-06-13 14:50:35', 1, '34', '4454', '0.8', '0', 1),
(6, 9, '2014-12-30 09:49:28', '2015-06-28 09:49:28', 1, '4.25', '556.75', '0.8', '0', 1),
(7, 9, '2014-12-30 09:49:32', '2015-06-28 09:49:32', 1, '0', '556.75', '0.8', '0', 1),
(8, 11, '2014-12-30 22:22:18', '2015-06-28 22:22:18', 1, '148.75', '19486.25', '0.8', '0', 1),
(9, 12, '2014-12-31 13:57:33', '2015-06-29 13:57:33', 1, '42.5', '5567.5', '0.8', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pawn_child`
--

CREATE TABLE IF NOT EXISTS `pawn_child` (
  `pc_id` int(11) NOT NULL AUTO_INCREMENT,
  `pa_id` int(11) NOT NULL,
  `itct_id` int(11) NOT NULL,
  `pc_qty` varchar(200) DEFAULT '0',
  `pc_status` int(11) DEFAULT '1',
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `pawn_child`
--

INSERT INTO `pawn_child` (`pc_id`, `pa_id`, `itct_id`, `pc_qty`, `pc_status`) VALUES
(1, 1, 1, '123', 1),
(2, 2, 1, '12', 1),
(3, 2, 2, '3', 1),
(4, 2, 3, '2', 1),
(5, 3, 1, '2', 1),
(6, 3, 2, '2', 1),
(7, 4, 1, '3', 1),
(8, 5, 1, '3', 1),
(9, 5, 2, '1', 1),
(10, 6, 1, '1', 1),
(11, 8, 3, '3', 1),
(12, 8, 1, '5', 1),
(13, 9, 1, '10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE IF NOT EXISTS `payment_method` (
  `pm_id` int(11) NOT NULL AUTO_INCREMENT,
  `pm_name` varchar(200) NOT NULL,
  PRIMARY KEY (`pm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
  `pt_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`pt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
  `pu_id` int(11) NOT NULL AUTO_INCREMENT,
  `pu_desc` varchar(20) NOT NULL,
  PRIMARY KEY (`pu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

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
-- Table structure for table `storage_location`
--

CREATE TABLE IF NOT EXISTS `storage_location` (
  `sl_id` int(11) NOT NULL AUTO_INCREMENT,
  `sl_name` varchar(200) NOT NULL,
  PRIMARY KEY (`sl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id_from` int(11) NOT NULL,
  `me_id_to` int(11) NOT NULL,
  `tr_amount` varchar(200) DEFAULT '0',
  `pt_id` int(11) NOT NULL,
  `at_id` int(11) NOT NULL,
  `ft_id` int(11) NOT NULL,
  `tr_notes` varchar(500) DEFAULT NULL,
  `tr_datetime` datetime NOT NULL,
  `ba_id` int(11) NOT NULL,
  `tt_id` int(11) NOT NULL,
  `tr_status` int(11) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tr_id`, `me_id_from`, `me_id_to`, `tr_amount`, `pt_id`, `at_id`, `ft_id`, `tr_notes`, `tr_datetime`, `ba_id`, `tt_id`, `tr_status`) VALUES
(1, 1, 7, '50', 1, 1, 4, 'test 1', '2014-12-14 14:37:49', 0, 1, 1),
(2, 7, 1, '100', 1, 1, 4, 'test 2', '2014-12-14 14:38:29', 0, 1, 1),
(3, 1, 7, '48', 1, 1, 4, 'test 3', '2014-12-14 14:45:35', 0, 1, 1),
(4, 7, 1, '100', 1, 1, 4, 'test 4', '2014-12-14 14:47:08', 0, 1, 1),
(5, 7, 1, '892', 1, 1, 4, 'test 5', '2014-12-14 14:58:11', 0, 1, 1),
(6, 1, 7, '988', 1, 1, 4, 'test 6', '2014-12-14 15:32:37', 0, 1, 1),
(7, 1, 7, '100', 1, 1, 4, 'test 7', '2014-12-14 15:42:49', 0, 1, 1),
(8, 1, 7, '100', 1, 1, 4, 'test 8', '2014-12-14 15:48:35', 0, 1, 1),
(9, 1, 7, '1000', 1, 1, 4, 'umaq kasi free', '2014-12-26 20:21:44', 0, 1, 1),
(10, 1, 0, '8998', 0, 1, 5, NULL, '2014-12-26 20:22:09', 3, 2, 2),
(11, 1, 7, '100000', 1, 2, 4, '', '2014-12-26 20:58:02', 0, 1, 1),
(12, 9, 1, '12300', 1, 1, 4, 'as', '2014-12-30 09:35:00', 0, 1, 1),
(13, 9, 1, '20', 2, 2, 4, 'RS', '2014-12-30 09:35:43', 0, 1, 1),
(14, 9, 1, '7700', 2, 1, 4, 'as', '2014-12-30 09:36:09', 0, 1, 1),
(15, 9, 1, '980', 2, 2, 4, 'ready stock', '2014-12-30 09:37:37', 0, 1, 1),
(16, 9, 0, '79998', 0, 1, 5, NULL, '2014-12-30 09:38:14', 3, 2, 2),
(17, 9, 11, '200', 1, 2, 4, 'exchange gold with tshirt', '2014-12-31 08:29:07', 0, 1, 1),
(18, 12, 9, '100', 1, 1, 4, 'Test', '2014-12-31 13:51:45', 0, 1, 1),
(19, 12, 0, '998', 0, 1, 5, NULL, '2014-12-31 13:59:23', 7, 2, 2),
(20, 9, 1, '100', 1, 2, 4, 'pamp suisse ', '2015-01-05 15:52:31', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_status`
--

CREATE TABLE IF NOT EXISTS `transaction_status` (
  `ts_id` int(11) NOT NULL AUTO_INCREMENT,
  `ts_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`ts_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `transaction_status`
--

INSERT INTO `transaction_status` (`ts_id`, `ts_desc`) VALUES
(1, 'Completed'),
(2, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_type`
--

CREATE TABLE IF NOT EXISTS `transaction_type` (
  `tt_id` int(11) NOT NULL AUTO_INCREMENT,
  `tt_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`tt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `transaction_type`
--

INSERT INTO `transaction_type` (`tt_id`, `tt_desc`) VALUES
(1, 'Send Payment'),
(2, 'Withdrawal');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
