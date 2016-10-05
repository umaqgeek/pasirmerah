-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 30, 2014 at 03:11 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

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
('8a47383c373c329efb80d97c311c34dd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1417357932, ''),
('aa9e83c5431b23b846593e2e48354f04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1417360259, ''),
('c264186bedd062a92b23c16409688090', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1417357931, 'a:29:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:14:"me_unique_link";s:32:"aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2014-11-30T14:05:30+00:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:9:"logged_in";b:1;s:8:"col_rate";d:0.8000000000000000444089209850062616169452667236328125;s:14:"col_percentage";s:3:"80%";s:5:"pa_id";i:1;s:13:"cart_dinarpal";a:1:{s:32:"443ac9b88d4409804cb075ed75124c55";a:7:{s:5:"rowid";s:32:"443ac9b88d4409804cb075ed75124c55";s:2:"id";s:1:"1";s:3:"qty";s:3:"123";s:5:"price";s:6:"556.75";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:3:"123";s:7:"itct_id";s:1:"1";s:5:"price";s:6:"556.75";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:3:"131";s:9:"itct_name";s:7:"1 Dinar";s:9:"itct_cert";s:5:"DP001";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":7:{s:7:"itct_id";s:1:"1";s:10:"itct_image";s:9:"gold1.png";s:9:"itct_name";s:7:"1 Dinar";s:15:"itct_price_rate";s:6:"556.75";s:11:"itct_weight";s:4:"4.25";s:9:"itct_cert";s:5:"DP001";s:5:"bi_id";s:1:"1";}}s:8:"subtotal";d:68480.25;}}}'),
('f729db6c3101e36eddd89a325fadbba5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1417358242, 'a:30:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:14:"me_unique_link";s:32:"aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2014-11-30T14:08:55+00:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:9:"logged_in";b:1;s:8:"col_rate";d:0.8000000000000000444089209850062616169452667236328125;s:14:"col_percentage";s:3:"80%";s:5:"pa_id";i:2;s:13:"cart_dinarpal";a:3:{s:32:"18e99f0981ff0fcd95147ab9bd2cedd0";a:7:{s:5:"rowid";s:32:"18e99f0981ff0fcd95147ab9bd2cedd0";s:2:"id";s:1:"1";s:3:"qty";s:2:"12";s:5:"price";s:6:"556.75";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:2:"12";s:7:"itct_id";s:1:"1";s:5:"price";s:6:"556.75";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:3:"131";s:9:"itct_name";s:7:"1 Dinar";s:9:"itct_cert";s:5:"DP001";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":7:{s:7:"itct_id";s:1:"1";s:10:"itct_image";s:9:"gold1.png";s:9:"itct_name";s:7:"1 Dinar";s:15:"itct_price_rate";s:6:"556.75";s:11:"itct_weight";s:4:"4.25";s:9:"itct_cert";s:5:"DP001";s:5:"bi_id";s:1:"1";}}s:8:"subtotal";d:6681;}s:32:"0e1e6042bec9b93f5e9f0fb654bdd55b";a:7:{s:5:"rowid";s:32:"0e1e6042bec9b93f5e9f0fb654bdd55b";s:2:"id";s:1:"2";s:3:"qty";s:1:"3";s:5:"price";s:7:"2783.75";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:1:"3";s:7:"itct_id";s:1:"2";s:5:"price";s:7:"2783.75";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:3:"131";s:9:"itct_name";s:7:"5 Dinar";s:9:"itct_cert";s:5:"DP002";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":7:{s:7:"itct_id";s:1:"2";s:10:"itct_image";s:9:"gold1.png";s:9:"itct_name";s:7:"5 Dinar";s:15:"itct_price_rate";s:7:"2783.75";s:11:"itct_weight";s:5:"21.25";s:9:"itct_cert";s:5:"DP002";s:5:"bi_id";s:1:"1";}}s:8:"subtotal";d:8351.25;}s:32:"adb2a5ef90dda18fda04a8d89307bcc2";a:7:{s:5:"rowid";s:32:"adb2a5ef90dda18fda04a8d89307bcc2";s:2:"id";s:1:"3";s:3:"qty";s:1:"2";s:5:"price";s:7:"5567.50";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:1:"2";s:7:"itct_id";s:1:"3";s:5:"price";s:7:"5567.50";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:3:"131";s:9:"itct_name";s:8:"10 Dinar";s:9:"itct_cert";s:5:"DP003";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":7:{s:7:"itct_id";s:1:"3";s:10:"itct_image";s:9:"gold1.png";s:9:"itct_name";s:8:"10 Dinar";s:15:"itct_price_rate";s:7:"5567.50";s:11:"itct_weight";s:5:"42.50";s:9:"itct_cert";s:5:"DP003";s:5:"bi_id";s:1:"1";}}s:8:"subtotal";d:11135;}}s:13:"cart_contents";a:3:{s:32:"175deb9521cd8b8fb6b9aff02004a8ae";a:7:{s:5:"rowid";s:32:"175deb9521cd8b8fb6b9aff02004a8ae";s:2:"id";s:1:"1";s:3:"qty";s:1:"2";s:5:"price";s:6:"556.75";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:1:"2";s:7:"itct_id";s:1:"1";s:5:"price";s:6:"556.75";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:3:"131";s:9:"itct_name";s:7:"1 Dinar";s:9:"itct_cert";s:5:"DP001";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":7:{s:7:"itct_id";s:1:"1";s:10:"itct_image";s:9:"gold1.png";s:9:"itct_name";s:7:"1 Dinar";s:15:"itct_price_rate";s:6:"556.75";s:11:"itct_weight";s:4:"4.25";s:9:"itct_cert";s:5:"DP001";s:5:"bi_id";s:1:"1";}}s:8:"subtotal";d:1113.5;}s:11:"total_items";i:1;s:10:"cart_total";d:1113.5;}}'),
('f7f4ca956ebd43772ef244513603f599', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1417358243, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dinarpal_account`
--

INSERT INTO `dinarpal_account` (`da_id`, `me_id`, `da_gold_rahnu_gram`, `da_gold_rahnu_money`, `da_gold_balance`, `da_gold_reserved`, `da_silver_rahnu_gram`, `da_silver_rahnu_money`, `da_silver_balance`, `da_silver_reserved`, `da_point_balance`) VALUES
(1, 1, '773.5', '101328.5', '98671.5', '0', '0', '0', '1600', '1000', '0');

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
(1, 1, 1, '233.43', '1'),
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
  PRIMARY KEY (`me_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`me_id`, `me_image`, `me_firstname`, `me_lastname`, `me_username`, `me_password`, `me_unique_link`, `me_address1`, `me_address2`, `me_postcode`, `me_country`, `me_government_issue_id`, `me_driver_license`, `me_phone_no`, `me_birth_date`, `me_description`, `me_maiden_name`, `me_nationality`, `me_whatsapp_no`, `me_email`, `me_register_date`, `me_account_type`, `me_activation_status`, `me_last_login`, `me_magic_num`) VALUES
(1, 'umarkecik1.jpg', 'Umaq Mukhtardd', 'member', 'member', '$2a$08$GaRSPD8G6qX8Ww8rLFesju4lA0QopVFStmSu1y.cWzXIbrAwryxLy', 'aa08769cdcb26674c6706093503ff0a3', 'Melaka', 'Pahang', '75450', 'Malaysia', 'MY001', 'B and D', '0199737579', '1989-10-31', '', 'Ntoh', 'Malaysia', '0199737579', 'kidzeclipes@gmail.com', '2014-11-10 10:12:00', 2, 2, '2014-11-30T15:02:03+00:00', '0d4368f80cd1d149576c068211e89fbf');

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
  `pa_status` int(11) DEFAULT '1',
  PRIMARY KEY (`pa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pawn`
--

INSERT INTO `pawn` (`pa_id`, `me_id`, `pa_start_date`, `pa_end_date`, `am_id`, `pa_total_weight`, `pa_grand_total`, `pa_rahnu_rate`, `pa_status`) VALUES
(1, 1, '2014-11-30 14:31:40', '2015-05-29 14:31:40', 1, '522.75', '68480.25', '0.65', 1),
(2, 1, '2014-11-30 14:32:51', '2015-05-29 14:32:51', 1, '199.75', '26167.25', '0.55', 1),
(3, 1, '2014-11-30 14:42:07', '2015-05-29 14:42:07', 2, '51', '6681', '0.75', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pawn_child`
--

INSERT INTO `pawn_child` (`pc_id`, `pa_id`, `itct_id`, `pc_qty`, `pc_status`) VALUES
(1, 1, 1, '123', 1),
(2, 2, 1, '12', 1),
(3, 2, 2, '3', 1),
(4, 2, 3, '2', 1),
(5, 3, 1, '2', 1),
(6, 3, 2, '2', 1);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
