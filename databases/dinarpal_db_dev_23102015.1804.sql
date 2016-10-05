-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2015 at 12:03 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amanah_deal`
--

INSERT INTO `amanah_deal` (`ad_id`, `me_id_from`, `me_id_to`, `ad_amount`, `at_id`, `ft_id`, `ad_notes`, `ad_datetime`, `ts_id`) VALUES
(1, 1, 17, '200', 1, 4, 'sje2', '2015-10-15 16:16:06', 1),
(2, 1, 17, '50', 1, 4, '', '2015-10-20 05:43:06', 3);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `button_api`
--

CREATE TABLE IF NOT EXISTS `button_api` (
  `bap_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `bap_name` varchar(200) DEFAULT NULL,
  `bap_price` varchar(200) NOT NULL,
  `bap_delivery` varchar(200) NOT NULL,
  `bap_gst` int(11) NOT NULL,
  `bap_desc` varchar(500) NOT NULL,
  `bap_code` varchar(200) NOT NULL,
  `bap_image` varchar(200) NOT NULL,
  `bap_info_url` varchar(200) NOT NULL,
  `bap_goto_url` varchar(200) NOT NULL,
  `bap_hit` int(11) NOT NULL DEFAULT '0',
  `bap_sales` int(11) NOT NULL DEFAULT '0',
  `bap_status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `button_api`
--

INSERT INTO `button_api` (`bap_id`, `me_id`, `bap_name`, `bap_price`, `bap_delivery`, `bap_gst`, `bap_desc`, `bap_code`, `bap_image`, `bap_info_url`, `bap_goto_url`, `bap_hit`, `bap_sales`, `bap_status`) VALUES
(8, 1, 'Battlefield 3 Installer', '250', '10', 1, 'Installer Game Battlefield 3', 'BF3', '8742f28e29ab987364e6406654c7e23f.jpg', 'http://www.battlefield.com/battlefield3', 'payment/?product=xvWAEXSl7E1ifoyHrpCi99xgYfj9e4XOV0F4TPJdy-2Y3OY8Ez7QsQw9pI3So6zTBg64bQmI9XaZm_pGinoiDg==', 15, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `button_api_action`
--

CREATE TABLE IF NOT EXISTS `button_api_action` (
  `baa_id` int(11) NOT NULL,
  `baa_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `button_api_action`
--

INSERT INTO `button_api_action` (`baa_id`, `baa_desc`) VALUES
(1, 'Payment'),
(2, 'Subscription'),
(3, 'Donation');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

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
('041eef4fa4efca8f81019350f886cb42', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1441290309, ''),
('08576437a5a760b9bec1947d0dc16216', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950919, ''),
('0c40411b63c719e68d0f4667056f9dda', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1445324747, ''),
('13bff1839634c960a5c4d8c47f60c995', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1441796396, ''),
('146c0159d2d4ed1a7430a528f80b7da3', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1443458742, ''),
('1be97f132d5a6e91e60a17c4698ff211', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439228239, ''),
('1eff8635743de62266f86d773cdb5cbe', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1440764672, 'a:34:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:79:"http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-08-28T14:20:43+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;s:8:"col_rate";d:0.75;s:14:"col_percentage";s:3:"75%";s:5:"pa_id";i:3;s:9:"data_post";a:9:{s:5:"sl_id";s:1:"1";s:14:"pa_grand_total";s:6:"5585.8";s:13:"pa_start_date";s:19:"2015-08-28 19:47:50";s:11:"pa_end_date";s:19:"2016-02-24 19:47:50";s:5:"am_id";s:1:"1";s:5:"me_id";s:1:"1";s:13:"pa_rahnu_rate";d:0.75;s:5:"pt_id";i:1;s:15:"pa_total_weight";d:42.5;}s:13:"cart_dinarpal";a:1:{s:32:"2e8d14a2fe221511ce4b79007c6fd1bf";a:7:{s:5:"rowid";s:32:"2e8d14a2fe221511ce4b79007c6fd1bf";s:2:"id";s:1:"1";s:3:"qty";s:2:"10";s:5:"price";s:6:"558.58";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:2:"10";s:7:"itct_id";s:1:"1";s:5:"price";s:6:"558.58";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:18:"131.43058823529412";s:9:"itct_name";s:7:"1 Dinar";s:9:"itct_cert";s:5:"DP001";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":8:{s:7:"itct_id";s:1:"1";s:10:"itct_image";s:16:"3940c-1dinar.jpg";s:9:"itct_name";s:7:"1 Dinar";s:15:"itct_price_rate";s:6:"558.58";s:11:"itct_weight";s:4:"4.25";s:9:"itct_cert";s:5:"DP001";s:5:"bi_id";s:1:"1";s:5:"pu_id";s:1:"1";}}s:8:"subtotal";d:5585.8000000000001818989403545856475830078125;}}}'),
('2075ecb21fdde0179090e1788003fa36', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950712, ''),
('2270f5347cd5aa7707f3c4bc68da3d64', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1445573532, ''),
('28b3f3b327c858d1579ba556598599c3', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1443568550, ''),
('28f03f577620805bcf6c6e6cba957911', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1442857226, ''),
('2a18bb6273f26ce5d9fa99c1a62660b4', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950445, ''),
('2d6a25908a0fc626964fe36877c5f60e', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1442115959, ''),
('2f1eb78a8724a87c0e1dcf3bd68cde82', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950781, ''),
('2f954fd254cc655d9b7eb87362089127', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950442, ''),
('3014f88e7813232e4b90566c1d86752a', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439975169, ''),
('33e60b6c16df388b7cd0861e1b060485', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1444583238, 'a:29:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:12:"Umaq Mukhtar";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:126:"http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-10-10T17:28:45+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;}'),
('348f3c841bf4818f7c051d783214fc3d', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1441293254, ''),
('35f7437769b20a1f313dc54617271c5c', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950726, ''),
('38570c3814c4bcd44764e1f86d794b0a', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950913, ''),
('396ef44570e0b7cf1f1924e16e0f0061', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950445, ''),
('44dbb40ba951ad6d3b0ae72a1352de9d', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1440573313, ''),
('4553819fcc54ff85defc5bbf7d671f46', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1440002416, ''),
('511c28daa715cf1ee7663a3fcfabb92e', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1442857226, ''),
('5284096595aabeed41c802e7ca94cca6', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440951279, ''),
('54edcc76c03a70c99c1e5333f8d46e53', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439396937, ''),
('55e8d1e4743b554bd2c59760298c8d47', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440951738, ''),
('569e5e5f7e295d22a0f664e0cb125f6c', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440951287, ''),
('56bc798219a64e04d26d968dcc0cf6da', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1438874385, ''),
('5c5b1de8be4be81609d0225a87144ea0', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950889, ''),
('5ea871d9e7031ecddb2587de7265a2a0', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1444213155, ''),
('65b77bdf18bac95833920c951b4408b7', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1440772139, ''),
('67b5e2dbff8b90a5ab411f4a2f6fb3af', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440951344, ''),
('698c0f6381b2d34048a2cd2cfc0ba266', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440951145, ''),
('6c9ffcc25ee52cc2a90fd8934a92b8e6', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1442857226, ''),
('70701be06654ffc57b33375d1b7de440', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1441984960, ''),
('70b1f238892b620fbfdd8cbfd50366ca', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1442124328, 'a:34:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:79:"http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-09-11T19:08:10+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;s:8:"col_rate";d:0.5;s:14:"col_percentage";s:3:"50%";s:5:"pa_id";i:4;s:9:"data_post";a:9:{s:5:"sl_id";s:1:"1";s:14:"pa_grand_total";s:7:"11171.6";s:13:"pa_start_date";s:19:"2015-09-13 21:07:21";s:11:"pa_end_date";s:19:"2016-03-11 21:07:21";s:5:"am_id";s:1:"1";s:5:"me_id";s:1:"1";s:13:"pa_rahnu_rate";d:0.5;s:5:"pt_id";i:1;s:15:"pa_total_weight";d:85;}s:13:"cart_dinarpal";a:1:{s:32:"efe341107ad1d826493e5abf7b453368";a:7:{s:5:"rowid";s:32:"efe341107ad1d826493e5abf7b453368";s:2:"id";s:1:"1";s:3:"qty";s:2:"20";s:5:"price";s:6:"558.58";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:2:"20";s:7:"itct_id";s:1:"1";s:5:"price";s:6:"558.58";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:18:"131.43058823529412";s:9:"itct_name";s:7:"1 Dinar";s:9:"itct_cert";s:5:"DP001";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":8:{s:7:"itct_id";s:1:"1";s:10:"itct_image";s:16:"3940c-1dinar.jpg";s:9:"itct_name";s:7:"1 Dinar";s:15:"itct_price_rate";s:6:"558.58";s:11:"itct_weight";s:4:"4.25";s:9:"itct_cert";s:5:"DP001";s:5:"bi_id";s:1:"1";s:5:"pu_id";s:1:"1";}}s:8:"subtotal";d:11171.600000000000363797880709171295166015625;}}}'),
('7b77a0c0b06235b17e9d8ba6ccccc212', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1443884551, ''),
('7c6841e974eeac12b579e298be4f1f00', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1442120160, ''),
('7f9d8e6d9f9d11618438446feacb5627', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1440173210, ''),
('8426eefd91f329ab851220477a79fbb1', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1440096993, ''),
('86a85cc4981b9644ac6f85a2ff8b5482', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950231, ''),
('87276a93e1761ff6c80c3140c4b93ba1', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1444490925, 'a:29:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:12:"Umaq Mukhtar";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:126:"http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-10-10T17:01:10+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;}'),
('87f00f22e8f97002ae3b73ab7389e5ae', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1445450140, ''),
('8a4e4f655b0558b9cd158cafcf005c7c', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950202, ''),
('8f9f2a5a1bcca5579d3fd075cbb64bb5', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439745643, ''),
('9327dd5e7b3083640766856779f8ce63', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440951395, ''),
('946aef219fff2d371da398d29f4af485', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950893, ''),
('95b47ebfc921585fba8a4d994e194992', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439920411, ''),
('969fdf40e41393f9a2cba79cdc35aad8', '192.168.1.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1441117770, 'a:29:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:79:"http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-09-01T13:51:39+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;}'),
('9ddbda78b36e696130d39a513ce65dcc', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1441963347, 'a:29:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:79:"http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-09-11T11:17:21+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;}'),
('9de8c8dc5b322c38dc6274cc08ffb3fe', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439472992, ''),
('9f18a58420eff9c4e7c8b1b1a5f76f51', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440951755, ''),
('a1a41660c0aa01630d0e1211ad384385', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1445592497, ''),
('a26704f42f9ae100149d8f9e1dca7d41', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1445338150, ''),
('aa79902319dc88662073e8fd7cee0a60', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950774, ''),
('abc049012265e83f54fe7540cfea1f08', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950707, ''),
('ae1f1dedb7efde2585509d1e84531016', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1445581391, ''),
('ae4f3484199e4d0badbea0c9d95332b9', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950446, ''),
('b007864740c3d3f31c83d6f3a312754a', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950446, ''),
('b0ef745f1c9dd984713d3ecdb8ae8749', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1442857226, ''),
('b8734829f6a4a3ac763a28f91f64b759', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950719, ''),
('b91bf4ab106baf29173751a850d065db', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1440156157, ''),
('bae0f6870cc713f455575a87a86a463d', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1442499438, ''),
('bb0b8b870b1b7399691d2b8e055baa15', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440951386, ''),
('bb6d9bed550588f894bfec1bf3bf20e6', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1442854218, ''),
('bdbea75c61956d0aa24d7c786ca1924b', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1444485973, 'a:29:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:12:"Umaq Mukhtar";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:126:"http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-10-09T12:43:46+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;}'),
('c01e3a740ca016b9161e876db187e978', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1440685615, ''),
('c0dfda6f097b3dca503e4b7c5db6fea6', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440949954, ''),
('c7b6460df2dda73e8ef7361a8aad7db7', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439090425, 'a:34:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:79:"http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-08-08T16:10:18+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;s:8:"col_rate";d:0.65000000000000002220446049250313080847263336181640625;s:14:"col_percentage";s:3:"65%";s:5:"pa_id";i:5;s:13:"cart_dinarpal";a:1:{s:32:"341b384a5f90eae3f2c0e9dc52c57763";a:7:{s:5:"rowid";s:32:"341b384a5f90eae3f2c0e9dc52c57763";s:2:"id";s:1:"4";s:3:"qty";s:1:"3";s:5:"price";s:3:"600";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:1:"3";s:7:"itct_id";s:1:"4";s:5:"price";s:3:"600";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:17:"141.1764705882353";s:9:"itct_name";s:17:"Dinar KGT 1 Dinar";s:9:"itct_cert";s:5:"KGT01";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":7:{s:7:"itct_id";s:1:"4";s:10:"itct_image";s:33:"4ed7f-dinar-kelantan-kgt-2012.jpg";s:9:"itct_name";s:17:"Dinar KGT 1 Dinar";s:15:"itct_price_rate";s:3:"600";s:11:"itct_weight";s:4:"4.25";s:9:"itct_cert";s:5:"KGT01";s:5:"bi_id";s:1:"1";}}s:8:"subtotal";i:1800;}}s:9:"data_post";a:9:{s:5:"sl_id";s:1:"1";s:14:"pa_grand_total";s:4:"1800";s:13:"pa_start_date";s:19:"2015-08-09 05:34:10";s:11:"pa_end_date";s:19:"2016-02-05 05:34:10";s:5:"am_id";s:1:"1";s:5:"me_id";s:1:"1";s:13:"pa_rahnu_rate";d:0.65000000000000002220446049250313080847263336181640625;s:5:"pt_id";i:1;s:15:"pa_total_weight";d:12.75;}}'),
('c88bb24f88531e45a9921818b9da54c0', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1440951721, ''),
('ccbf8eb0e2781e9e73510e7fa118ba31', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440951749, ''),
('d2db505f7a7d5ec421e08583746bc356', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440950460, ''),
('d434977e17bc0b684ff4c3d2ed52ffb4', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1440613200, ''),
('d753eee414e8c0152fb885f1e29e9591', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1442857226, ''),
('d8078efdcba5ce77c179dfbceee6784d', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1443638424, ''),
('dd7764e6d434505a74fdea787771b83e', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1438614423, ''),
('e096b222a801f86b994f6a7afb0f5bc4', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1440613200, ''),
('e16a520e7c60e02482bc983d418984f9', '10.211.55.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1440951029, ''),
('ec5a7fd513a91cf975441c5d2d83ee07', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1441293724, ''),
('ec958e9773ccb480382e560722e8ea47', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1441991290, 'a:29:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:79:"http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-09-11T17:21:03+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;}'),
('f2655c3ca99e8ca5a241e91c898f0401', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1440240219, 'a:34:{s:5:"me_id";s:2:"17";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";N;s:11:"me_address2";N;s:11:"me_postcode";N;s:10:"me_country";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:14:"me_whatsapp_no";N;s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-08-22T12:41:54+02:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;s:8:"col_rate";d:0.65000000000000002220446049250313080847263336181640625;s:14:"col_percentage";s:3:"65%";s:5:"pa_id";i:2;s:9:"data_post";a:9:{s:5:"sl_id";s:1:"1";s:14:"pa_grand_total";s:5:"11135";s:13:"pa_start_date";s:19:"2015-08-22 13:13:54";s:11:"pa_end_date";s:19:"2016-02-18 13:13:54";s:5:"am_id";s:1:"1";s:5:"me_id";s:2:"17";s:13:"pa_rahnu_rate";d:0.65000000000000002220446049250313080847263336181640625;s:5:"pt_id";i:1;s:15:"pa_total_weight";d:85;}s:13:"cart_dinarpal";a:1:{s:32:"adb2a5ef90dda18fda04a8d89307bcc2";a:7:{s:5:"rowid";s:32:"adb2a5ef90dda18fda04a8d89307bcc2";s:2:"id";s:1:"3";s:3:"qty";s:1:"2";s:5:"price";s:7:"5567.50";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:1:"2";s:7:"itct_id";s:1:"3";s:5:"price";s:7:"5567.50";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:3:"131";s:9:"itct_name";s:8:"10 Dinar";s:9:"itct_cert";s:5:"DP003";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":8:{s:7:"itct_id";s:1:"3";s:10:"itct_image";s:19:"a73dd-10dinar_2.jpg";s:9:"itct_name";s:8:"10 Dinar";s:15:"itct_price_rate";s:7:"5567.50";s:11:"itct_weight";s:5:"42.50";s:9:"itct_cert";s:5:"DP003";s:5:"bi_id";s:1:"1";s:5:"pu_id";s:1:"1";}}s:8:"subtotal";d:11135;}}}'),
('f5ca581768819af9a889596dbcea3395', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1442857226, ''),
('f79f2b07ab915bf99142c5433165ca61', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1439170271, 'a:34:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:79:"http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-08-09T15:10:09+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;s:8:"col_rate";d:0.8000000000000000444089209850062616169452667236328125;s:14:"col_percentage";s:3:"80%";s:5:"pa_id";i:6;s:13:"cart_dinarpal";a:2:{s:32:"341b384a5f90eae3f2c0e9dc52c57763";a:7:{s:5:"rowid";s:32:"341b384a5f90eae3f2c0e9dc52c57763";s:2:"id";s:1:"4";s:3:"qty";s:1:"3";s:5:"price";s:3:"600";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:1:"3";s:7:"itct_id";s:1:"4";s:5:"price";s:3:"600";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:17:"141.1764705882353";s:9:"itct_name";s:17:"Dinar KGT 1 Dinar";s:9:"itct_cert";s:5:"KGT01";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":7:{s:7:"itct_id";s:1:"4";s:10:"itct_image";s:33:"4ed7f-dinar-kelantan-kgt-2012.jpg";s:9:"itct_name";s:17:"Dinar KGT 1 Dinar";s:15:"itct_price_rate";s:3:"600";s:11:"itct_weight";s:4:"4.25";s:9:"itct_cert";s:5:"KGT01";s:5:"bi_id";s:1:"1";}}s:8:"subtotal";i:1800;}s:32:"e244ca06ab263a67b5eaccb03f9c0407";a:7:{s:5:"rowid";s:32:"e244ca06ab263a67b5eaccb03f9c0407";s:2:"id";s:1:"1";s:3:"qty";s:1:"1";s:5:"price";s:6:"556.75";s:4:"name";s:1:"-";s:7:"options";a:11:{s:3:"qty";s:1:"1";s:7:"itct_id";s:1:"1";s:5:"price";s:6:"556.75";s:10:"metal_type";s:1:"1";s:5:"brand";s:1:"1";s:8:"rate_per";s:3:"131";s:9:"itct_name";s:7:"1 Dinar";s:9:"itct_cert";s:5:"DP001";s:2:"it";O:8:"stdClass":2:{s:5:"it_id";s:1:"1";s:7:"it_name";s:4:"Gold";}s:2:"br";O:8:"stdClass":3:{s:5:"br_id";s:1:"1";s:7:"br_code";s:2:"DP";s:7:"br_name";s:8:"DinarPal";}s:4:"itct";O:8:"stdClass":7:{s:7:"itct_id";s:1:"1";s:10:"itct_image";s:16:"3940c-1dinar.jpg";s:9:"itct_name";s:7:"1 Dinar";s:15:"itct_price_rate";s:6:"556.75";s:11:"itct_weight";s:4:"4.25";s:9:"itct_cert";s:5:"DP001";s:5:"bi_id";s:1:"1";}}s:8:"subtotal";d:556.75;}}s:9:"data_post";a:9:{s:5:"sl_id";s:1:"1";s:14:"pa_grand_total";s:7:"2356.75";s:13:"pa_start_date";s:19:"2015-08-10 03:44:59";s:11:"pa_end_date";s:19:"2016-02-06 03:44:59";s:5:"am_id";s:1:"1";s:5:"me_id";s:1:"1";s:13:"pa_rahnu_rate";d:0.8000000000000000444089209850062616169452667236328125;s:5:"pt_id";i:1;s:15:"pa_total_weight";d:17;}}'),
('f80a9900e6492176930fb8773888153c', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1438942412, 'a:29:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:79:"http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-08-06T15:22:02+02:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;}'),
('f91e73f7228af7655caf024caded6040', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1438789580, ''),
('febef88d816250fcc75f6b78891b225a', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1444202139, ''),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 1, '29.75', '3910.06', '193031.879', '144.5', '0', '0', '200000', '0', '0'),
(7, 7, '0', '0', '200000', '0', '0', '0', '200000', '0', '0'),
(8, 8, '0', '0', '200000', '0', '0', '0', '200000', '0', '0'),
(11, 11, '0', '0', '200000', '0', '0', '0', '200000', '0', '0'),
(16, 17, '0', '0', '183479', '25.5', '0', '0', '200000', '0', '0'),
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
(1, '2000016', '20000', '2000000', '20000');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinarpal_document`
--

INSERT INTO `dinarpal_document` (`dd_id`, `me_id`, `dd_filename`, `dd_size`, `dd_type`, `ddt_id`, `mvs_id`, `mv_id`) VALUES
(2, 1, '11921792_756003244526445_3151789648727902990_n.jpg', 14, 'image/jpeg', 1, 1, 0),
(3, 1, '11420770_1599312956997184_1047131925_n.jpg', 79, 'image/jpeg', 2, 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinarpal_transaction`
--

INSERT INTO `dinarpal_transaction` (`dt_id`, `me_id`, `tr_amount`, `pt_id`, `at_id`, `tr_notes`, `tr_datetime`, `ft_id`, `ts_id`) VALUES
(1, 1, '2.00', 0, 1, NULL, '2015-10-08 16:42:26', 4, 1),
(2, 17, '0', 0, 2, NULL, '2015-10-08 17:04:01', 4, 1),
(3, 1, '0', 0, 2, NULL, '2015-10-10 17:27:57', 4, 1),
(4, 1, '2.00', 0, 1, NULL, '2015-10-15 16:14:12', 4, 1),
(5, 1, '0', 0, 2, NULL, '2015-10-15 16:14:20', 4, 1),
(6, 17, '0', 0, 2, NULL, '2015-10-15 16:17:29', 4, 1),
(7, 17, '2.00', 0, 1, NULL, '2015-10-15 16:17:45', 4, 1),
(8, 1, '0', 0, 2, NULL, '2015-10-20 12:36:36', 4, 1),
(9, 17, '2.00', 0, 1, NULL, '2015-10-23 08:37:12', 4, 1),
(10, 17, '2.00', 0, 1, NULL, '2015-10-23 08:51:34', 4, 1),
(11, 17, '2.00', 0, 1, NULL, '2015-10-23 09:11:53', 4, 1),
(12, 17, '0', 0, 2, NULL, '2015-10-23 11:23:34', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `em_id` int(11) NOT NULL,
  `em_emails` varchar(200) NOT NULL,
  `me_id` int(11) NOT NULL,
  `em_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_type`
--

INSERT INTO `fee_type` (`ft_id`, `ft_name`, `ft_price`) VALUES
(1, 'Verification Fee', '10.00'),
(2, 'Ar-Rahnu Fee', '10.00'),
(3, 'Safe Keeping Fee', '0.55'),
(4, 'Transaction Fee', '2.00'),
(5, 'Bank Withdrawal Fee', '0.00'),
(6, 'Deposit Fee', '0.00'),
(7, 'Vault Fee', '0.0025');

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
(1, '3940c-1dinar.jpg', '1 Dinar', '558.58', '4.25', 'DP001', 1, 1),
(2, '190c6-5dinar.jpg', '5 Dinar', '2783.75', '21.25', 'DP002', 1, 1),
(3, 'a73dd-10dinar_2.jpg', '10 Dinar', '5585.80', '42.50', 'DP003', 1, 1),
(4, '4ed7f-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', 'KGT01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_courier`
--

CREATE TABLE IF NOT EXISTS `item_courier` (
  `ic_id` int(11) NOT NULL,
  `ic_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_courier`
--

INSERT INTO `item_courier` (`ic_id`, `ic_name`) VALUES
(1, 'Others'),
(2, 'Locket'),
(3, 'Earing'),
(4, 'Necklace'),
(5, 'Bar'),
(6, 'Ring'),
(7, 'Dinar'),
(8, 'Dirham'),
(9, 'Jewellery');

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
  `itct_id` int(11) DEFAULT '0',
  `ui_id` int(11) DEFAULT '0',
  `is_qty` varchar(200) DEFAULT '0',
  `is_status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_storage`
--

INSERT INTO `item_storage` (`is_id`, `me_id`, `itct_id`, `ui_id`, `is_qty`, `is_status`) VALUES
(1, 17, 2, 0, '1', 1),
(3, 1, 2, 0, '3', 1),
(4, 1, 1, 0, '19', 1),
(5, 17, 1, 0, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_storage_child`
--

CREATE TABLE IF NOT EXISTS `item_storage_child` (
  `isc_id` int(11) NOT NULL,
  `is_id` int(11) NOT NULL,
  `isc_image` varchar(500) NOT NULL,
  `isc_datetime` datetime NOT NULL,
  `isc_price` varchar(200) NOT NULL DEFAULT '0',
  `isc_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_storage_child`
--

INSERT INTO `item_storage_child` (`isc_id`, `is_id`, `isc_image`, `isc_datetime`, `isc_price`, `isc_status`) VALUES
(1, 3, '190c6-5dinar.jpg', '2015-10-08 17:03:09', '0', 1),
(2, 3, '190c6-5dinar.jpg', '2015-10-08 17:03:09', '0', 1),
(3, 3, '190c6-5dinar.jpg', '2015-10-08 17:03:09', '0', 1),
(4, 1, '190c6-5dinar.jpg', '2015-10-08 17:03:09', '0', 1),
(5, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(6, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(7, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(8, 5, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(9, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(10, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(11, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(12, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(13, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(14, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(15, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(16, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(17, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(18, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(19, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(20, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(21, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(22, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(23, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1),
(24, 4, '3940c-1dinar.jpg', '2015-10-20 12:35:27', '0', 1);

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
(1, 'umarkecik1.jpg', 'Umaq Mukhtar', 'member', 'member', '$2a$08$lfiHuPrglR0H9PXbBiYbNe9RhyE3qymozXGO6COJDYKCPr17LfrRK', 'What is my pet''s name?', 'comel', 'http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/aa08769cdcb26674c6706093503ff0a3', 'Melaka', 'Pahang', '75450', 'Malaysia', 'MY001', 'B and D', '0199737579', '1989-10-31', '', 'Ntoh', 'Malaysia', '0199737579', 'kidzeclipes@gmail.com', '2014-11-10 10:12:00', 2, 2, '2015-10-23T11:24:08+02:00', '0d4368f80cd1d149576c068211e89fbf', 3, 1),
(7, 'default-img.jpg', 'asd', 'dsa', 'asd', '$2a$08$zRnQHtdGJnSdsPPqfGCXHef3VnVG06p.bQhM1vEs2b.Kcwz6aoF7K', 'Who am I?', 'Jack Sparrow', '7815696ecbf1c96e6894b779456d330e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'umar@tuffah.info', '2014-12-13 19:45:41', 1, 2, '2015-08-28T14:24:08+02:00', 'ec623adec13773d99685c93053d3228e', 3, 1),
(8, 'default-img.jpg', 'umaq2', 'yahoo', 'umaq2', '$2a$08$2ggpYdm2QKSr.jxQmOZZWeWBRfe9X2KkieEJupD8UtsBjN4EPpEsO', 'What is my username?', 'umaq2', '0f616daf1cf7fe3f91c32ddfa8821ab5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kidzeclipes@yahoo.com', '2014-12-20 18:25:46', 1, 2, '2014-12-20T18:26:19+00:00', 'f7f886855bbfc7c9e5101df6e77794ce', 3, 1),
(9, 'default-img.jpg', 'pisang', 'admin', 'pisang', '$2a$08$pn2U5NZix1EOx/.IYmmaeOYnIdxL7faB39ElDFFulsyFVRuaoTm8q', 'What is my username?', 'a1', '8a8bb7cd343aa2ad99b7d762030857a2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pisang@dinarpal.com', '2014-12-28 07:27:16', 1, 2, '2015-02-11T23:32:46+08:00', '97669d6b22a790a5feb7f9c06f6e3d03', 1, 1),
(10, 'default-img.jpg', 'staff', 'bujang', 'staff', '$2a$08$60LE6Y86CP3V8y2filvJ7eB/0HqDk/gFNmjb4y0P.tXP83X/Y/3fy', 'What is my username?', 'b1', 'edbab45572c72a5d9440b40bcc0500c0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'staff@dinarpal.com', '2014-12-28 07:28:05', 1, 2, '2015-09-21T18:49:02+02:00', '9512afcb3f0fde463ddf8e476a76be16', 2, 1),
(11, 'default-img.jpg', 'hai', 'hehe', 'hai', '$2a$08$L1jcJUSk0LH97DOtYW7BW.v7YO93fHtPT6oVODJgbo0vkLGEMgNai', 'What is my username?', 'hai', '42810cb02db3bb2cbb428af0d8b0376e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lol@yahoo.com', '2015-02-10 16:48:20', 1, 1, NULL, '7fd1bc3083e54ac8254dc6ceb78d29b6', 3, 1),
(17, '6d3ac-adeq-nur---ftmk!-20150212_151603.jpg', 'Nur Umira', 'Mustafa', 'nur', '$2a$08$R26OP4OtJ2PCewXZLW5ab.DpVPpHZwRtR.Fbfm4qKXTothzh7KkG6', 'What is my username?', 'nur', 'b55178b011bfb206965f2638d0f87047', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nurumira@gmail.com', '2015-04-27 03:12:49', 1, 2, '2015-10-23T11:16:52+02:00', '69c0e639c71a34bb6b710f043138f7f8', 3, 1),
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
  `pa_pay_loan` varchar(200) DEFAULT '0',
  `pa_safe_fee` varchar(200) DEFAULT '0',
  `pt_id` int(11) NOT NULL COMMENT 'pawn_type',
  `sl_id` int(11) NOT NULL,
  `pa_status` int(11) DEFAULT '1',
  `pa_tracking` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pawn`
--

INSERT INTO `pawn` (`pa_id`, `me_id`, `pa_start_date`, `pa_end_date`, `am_id`, `pa_total_weight`, `pa_grand_total`, `pa_rahnu_rate`, `pa_pay_loan`, `pa_safe_fee`, `pt_id`, `sl_id`, `pa_status`, `pa_tracking`) VALUES
(1, 1, '2015-10-08 17:06:16', '2016-04-05 17:06:16', 1, '29.75', '3910.06', '0.65', '0', '0', 1, 1, 1, NULL),
(2, 1, '2015-10-08 17:10:13', '2016-04-08 17:10:13', 1, '3', '394.29', '0.8', '0', '0', 2, 1, 2, 'asd'),
(3, 1, '2015-10-20 12:40:30', '2016-04-20 12:40:30', 1, '2', '262.86', '0.7', '0', '0', 2, 1, 2, 'ghgghg');

-- --------------------------------------------------------

--
-- Table structure for table `pawn_child`
--

CREATE TABLE IF NOT EXISTS `pawn_child` (
  `pc_id` int(11) NOT NULL,
  `pa_id` int(11) NOT NULL,
  `itct_id` int(11) DEFAULT '0',
  `ui_id` int(11) DEFAULT '0',
  `pc_qty` varchar(200) DEFAULT '0',
  `pc_status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pawn_child`
--

INSERT INTO `pawn_child` (`pc_id`, `pa_id`, `itct_id`, `ui_id`, `pc_qty`, `pc_status`) VALUES
(1, 1, 1, 0, '7', 1),
(2, 2, 0, 1, '1', 1),
(3, 3, 0, 2, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pawn_child_child`
--

CREATE TABLE IF NOT EXISTS `pawn_child_child` (
  `pcc_id` int(11) NOT NULL,
  `pc_id` int(11) NOT NULL,
  `pcc_image` varchar(500) NOT NULL,
  `pcc_datetime` datetime NOT NULL,
  `pcc_price` varchar(200) NOT NULL DEFAULT '0',
  `pcc_fee` varchar(200) NOT NULL DEFAULT '0',
  `pcc_status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pawn_child_child`
--

INSERT INTO `pawn_child_child` (`pcc_id`, `pc_id`, `pcc_image`, `pcc_datetime`, `pcc_price`, `pcc_fee`, `pcc_status`) VALUES
(1, 1, '3940c-1dinar.jpg', '2015-10-08 17:06:16', '0', '0', 1),
(2, 1, '3940c-1dinar.jpg', '2015-10-08 17:06:16', '0', '0', 1),
(3, 1, '3940c-1dinar.jpg', '2015-10-08 17:06:16', '0', '0', 1),
(4, 1, '3940c-1dinar.jpg', '2015-10-08 17:06:16', '0', '0', 1),
(5, 1, '3940c-1dinar.jpg', '2015-10-08 17:06:16', '0', '0', 1),
(6, 1, '3940c-1dinar.jpg', '2015-10-08 17:06:16', '0', '0', 1),
(7, 1, '3940c-1dinar.jpg', '2015-10-08 17:06:16', '0', '0', 1),
(8, 2, '66b91249691c30689389c693ebe78286.jpg', '2015-10-08 17:10:13', '0', '0', 1),
(9, 3, '0ccb7d75153566f7703fb48bdf6e54bb.jpg', '2015-10-20 12:40:30', '0', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pawn_status`
--

CREATE TABLE IF NOT EXISTS `pawn_status` (
  `ps_id` int(11) NOT NULL,
  `ps_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pawn_status`
--

INSERT INTO `pawn_status` (`ps_id`, `ps_desc`) VALUES
(1, 'Successful'),
(2, 'Pending'),
(3, 'Redeemed');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `souq`
--

INSERT INTO `souq` (`so_id`, `me_id`, `so_buy_date`, `am_id`, `so_total_weight`, `so_grand_total`, `sl_id`, `so_address`, `so_status`) VALUES
(1, 17, '2015-10-08 17:03:09', 1, '85', '11035', 1, '-', 1),
(2, 1, '2015-10-20 12:35:27', 1, '85', '11071.6', 1, '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `souq_adc`
--

CREATE TABLE IF NOT EXISTS `souq_adc` (
  `sadc_id` int(11) NOT NULL,
  `so_id` int(11) NOT NULL,
  `adc_id` int(11) NOT NULL,
  `sadc_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `souq_adc`
--

INSERT INTO `souq_adc` (`sadc_id`, `so_id`, `adc_id`, `sadc_status`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `souq_child`
--

INSERT INTO `souq_child` (`sc_id`, `so_id`, `itct_id`, `sc_qty`, `sc_status`) VALUES
(1, 1, 2, '4', 1),
(2, 2, 1, '20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `souq_child_child`
--

CREATE TABLE IF NOT EXISTS `souq_child_child` (
  `scc_id` int(11) NOT NULL,
  `sc_id` int(11) NOT NULL,
  `scc_image` varchar(500) NOT NULL,
  `scc_datetime` datetime NOT NULL,
  `scc_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `souq_child_child`
--

INSERT INTO `souq_child_child` (`scc_id`, `sc_id`, `scc_image`, `scc_datetime`, `scc_status`) VALUES
(1, 1, '190c6-5dinar.jpg', '2015-10-08 17:03:09', 1),
(2, 1, '190c6-5dinar.jpg', '2015-10-08 17:03:09', 1),
(3, 1, '190c6-5dinar.jpg', '2015-10-08 17:03:09', 1),
(4, 1, '190c6-5dinar.jpg', '2015-10-08 17:03:09', 1),
(5, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(6, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(7, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(8, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(9, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(10, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(11, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(12, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(13, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(14, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(15, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(16, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(17, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(18, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(19, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(20, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(21, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(22, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(23, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1),
(24, 2, '3940c-1dinar.jpg', '2015-10-20 12:35:27', 1);

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
  `sl_name` varchar(200) NOT NULL,
  `sl_address` varchar(500) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_location`
--

INSERT INTO `storage_location` (`sl_id`, `sl_name`, `sl_address`) VALUES
(1, 'Malaysia - Melaka - Melaka International Trade Centre', 'Lot X1, Depan Mydin MiTC Melaka, Bandar MiTC, 75450, Ayer Keroh, Melaka.'),
(2, 'Brunei - Bandar Seri Begawan - Jalan Kucing', 'Bandar Brunei.'),
(3, 'UAE - Dubai - Gold Souk', 'Atas Bangunan Tertinggi di Dubai.');

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
  `ts_id` int(11) NOT NULL,
  `det_id` int(11) DEFAULT '0',
  `tr_deposit_code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tr_id`, `me_id_from`, `me_id_to`, `tr_amount`, `pt_id`, `at_id`, `ft_id`, `tr_notes`, `tr_datetime`, `ba_id`, `tt_id`, `ts_id`, `det_id`, `tr_deposit_code`) VALUES
(1, 1, 17, '195000', 1, 1, 4, '', '2015-10-08 16:42:26', 0, 1, 1, 0, NULL),
(2, 17, 0, '11035', 0, 1, 7, '', '2015-10-08 17:03:09', 0, 7, 1, 0, ''),
(3, 17, 1, '42.5', 1, 2, 4, '', '2015-10-08 17:04:01', 0, 1, 1, 0, NULL),
(4, 1, 0, '1368.521', 0, 1, 2, '', '2015-10-08 17:06:16', 0, 5, 1, 0, ''),
(5, 1, 17, '21.25', 1, 2, 4, '', '2015-10-10 17:27:57', 0, 1, 1, 0, NULL),
(6, 1, 17, '100', 1, 1, 4, '', '2015-10-15 16:14:12', 0, 1, 1, 0, NULL),
(7, 1, 17, '21.25', 1, 2, 4, '', '2015-10-15 16:14:20', 0, 1, 1, 0, NULL),
(8, 1, 17, '200', 0, 1, 4, 'sje2', '2015-10-15 16:16:14', 0, 4, 1, 0, NULL),
(9, 17, 1, '63.75', 1, 2, 4, '', '2015-10-15 16:17:29', 0, 1, 1, 0, NULL),
(10, 17, 1, '200000', 1, 1, 4, '', '2015-10-15 16:17:45', 0, 1, 1, 0, NULL),
(11, 1, 0, '11071.6', 0, 1, 7, '', '2015-10-20 12:35:27', 0, 7, 1, 0, ''),
(12, 1, 17, '8.5', 1, 2, 4, '', '2015-10-20 12:36:36', 0, 1, 1, 0, NULL),
(13, 17, 1, '260', 1, 1, 4, 'Installer Game Battlefield 3', '2015-10-23 08:37:12', 0, 8, 1, 0, NULL),
(14, 17, 1, '260', 1, 1, 4, 'Installer Game Battlefield 3', '2015-10-23 08:51:34', 0, 8, 1, 0, NULL),
(15, 17, 1, '260', 1, 1, 4, 'Installer Game Battlefield 3', '2015-10-23 09:11:53', 0, 8, 1, 0, NULL),
(16, 17, 1, '4.25', 1, 2, 4, '', '2015-10-23 11:23:34', 0, 1, 1, 0, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_type`
--

INSERT INTO `transaction_type` (`tt_id`, `tt_desc`, `tt_code`) VALUES
(1, 'Send Payment', 'SP'),
(2, 'Withdrawal', 'WI'),
(3, 'Deposit', 'DE'),
(4, 'Amanah Deal', 'AD'),
(5, 'Purchase and Pawn', 'PP'),
(6, 'Pawn and Courier', 'PC'),
(7, 'Purchase and Keep', 'PK'),
(8, 'Payment Merchant', 'PM'),
(9, 'Redeem Gold/Silver', 'RGS'),
(10, 'Purchase and Courier', 'PUC'),
(11, 'Courier and Keep', 'CK'),
(12, 'Session Bidding Puchase', 'SBP'),
(13, 'Bidding Payment', 'BP'),
(14, 'Walk-in & Pawn', 'WiP'),
(15, 'Walk-in & Keep', 'WiK'),
(16, 'Refund', 'RE'),
(17, 'Convert to MYR', 'CM'),
(18, 'Safe Keeping Fee Payment', 'SKFP'),
(19, 'Loan Payment', 'LP'),
(20, 'Item Purchase (E-Dinar/E-Dirham -MYR)', 'IPD'),
(21, 'Item Purchase ( Physical Dinar & Dirham)', 'IPG');

-- --------------------------------------------------------

--
-- Table structure for table `used_item`
--

CREATE TABLE IF NOT EXISTS `used_item` (
  `ui_id` int(11) NOT NULL,
  `it_id` int(11) NOT NULL,
  `br_id` int(11) NOT NULL,
  `ic_id` int(11) NOT NULL,
  `isc_id` int(11) NOT NULL,
  `pu_id` int(11) NOT NULL,
  `ui_weight` varchar(200) NOT NULL DEFAULT '0',
  `ui_qty` int(11) NOT NULL DEFAULT '0',
  `ui_image` varchar(500) NOT NULL,
  `me_id` int(11) NOT NULL,
  `ui_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `used_item`
--

INSERT INTO `used_item` (`ui_id`, `it_id`, `br_id`, `ic_id`, `isc_id`, `pu_id`, `ui_weight`, `ui_qty`, `ui_image`, `me_id`, `ui_status`) VALUES
(1, 1, 1, 1, 1, 1, '3', 1, '66b91249691c30689389c693ebe78286.jpg', 1, 2),
(2, 1, 1, 2, 2, 1, '2', 1, '0ccb7d75153566f7703fb48bdf6e54bb.jpg', 1, 2);

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
-- Indexes for table `button_api`
--
ALTER TABLE `button_api`
  ADD PRIMARY KEY (`bap_id`);

--
-- Indexes for table `button_api_action`
--
ALTER TABLE `button_api_action`
  ADD PRIMARY KEY (`baa_id`);

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
-- Indexes for table `pawn_status`
--
ALTER TABLE `pawn_status`
  ADD PRIMARY KEY (`ps_id`);

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
-- Indexes for table `used_item`
--
ALTER TABLE `used_item`
  ADD PRIMARY KEY (`ui_id`);

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
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
  MODIFY `bid_id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `button_api`
--
ALTER TABLE `button_api`
  MODIFY `bap_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `button_api_action`
--
ALTER TABLE `button_api_action`
  MODIFY `baa_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
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
  MODIFY `de_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `dd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
  MODIFY `dt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `em_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `fee_type`
--
ALTER TABLE `fee_type`
  MODIFY `ft_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `itc_type`
--
ALTER TABLE `itc_type`
  MODIFY `itct_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `item_courier`
--
ALTER TABLE `item_courier`
  MODIFY `ic_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `item_status_courier`
--
ALTER TABLE `item_status_courier`
  MODIFY `isc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `item_storage`
--
ALTER TABLE `item_storage`
  MODIFY `is_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `item_storage_child`
--
ALTER TABLE `item_storage_child`
  MODIFY `isc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
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
  MODIFY `pa_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pawn_child`
--
ALTER TABLE `pawn_child`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pawn_child_child`
--
ALTER TABLE `pawn_child_child`
  MODIFY `pcc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pawn_status`
--
ALTER TABLE `pawn_status`
  MODIFY `ps_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
  MODIFY `sb_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
  MODIFY `so_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `souq_adc`
--
ALTER TABLE `souq_adc`
  MODIFY `sadc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `souq_child`
--
ALTER TABLE `souq_child`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `souq_child_child`
--
ALTER TABLE `souq_child_child`
  MODIFY `scc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
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
  MODIFY `tr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `transaction_status`
--
ALTER TABLE `transaction_status`
  MODIFY `ts_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transaction_type`
--
ALTER TABLE `transaction_type`
  MODIFY `tt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `used_item`
--
ALTER TABLE `used_item`
  MODIFY `ui_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
