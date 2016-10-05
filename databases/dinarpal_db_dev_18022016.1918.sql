-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2016 at 12:17 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `ban_id` int(11) NOT NULL,
  `ban_image` varchar(2000) DEFAULT NULL,
  `ban_name` varchar(200) NOT NULL,
  `ban_date` date DEFAULT NULL,
  `bty_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`ban_id`, `ban_image`, `ban_name`, `ban_date`, `bty_id`) VALUES
(1, 'd24fa-banner1.png', 'Banner1', '2016-01-20', 1),
(2, 'd52a9-banner2.png', 'Banner2', '2016-01-20', 1),
(3, '4254e-banner3.png', 'Banner3', '2016-01-20', 1),
(4, '94e7e-bannertegak1.png', 'BannerTegak1', '2016-01-21', 2),
(5, 'c6989-bannertegak2.png', 'BannerTegak2', '2016-01-21', 2),
(6, '71c76-bannertegak3.png', 'BannerTegak3', '2016-01-21', 2),
(7, '8afea-1.gif', 'GIF 1', '2016-01-21', 3),
(8, '21e5e-2.gif', 'GIF 2', '2016-01-21', 3),
(9, '042c3-3.gif', 'GIF 3', '2016-01-21', 3),
(10, 'bc362-11295797_847650105290368_6790949361071925503_n.jpg', 'BannerCircle2', '2016-01-21', 7);

-- --------------------------------------------------------

--
-- Table structure for table `banners_type`
--

CREATE TABLE IF NOT EXISTS `banners_type` (
  `bty_id` int(11) NOT NULL,
  `bty_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners_type`
--

INSERT INTO `banners_type` (`bty_id`, `bty_desc`) VALUES
(1, 'Horizontal Banner'),
(2, 'Vertical Banner'),
(3, 'GIF Banner'),
(4, 'Group Banner'),
(5, 'Gila Banner'),
(6, 'Colour Banner'),
(7, 'Circle Banner'),
(8, 'Formal Banner'),
(9, 'Corporate Banner');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('421de0c4be3883746508fef18654e5bc', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1450336106, ''),
('514774c27ae159490c512ba33d3224f0', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1448863786, ''),
('731867d8bedf3a5bdc7369f0182f247b', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1452515204, ''),
('77a64566bc91bafb75e793f5b626dff7', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1455794261, ''),
('f43142279937930a41351005ab23aaa5', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1448828635, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit_type`
--

INSERT INTO `deposit_type` (`det_id`, `det_desc`, `det_status`) VALUES
(1, 'Bank Transfer', 1),
(2, 'Visa Transfer', 2),
(3, 'Cash Deposit Machine', 2);

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
(1, 1, '0', '0', '200000', '0', '0', '0', '200000', '0', '0'),
(7, 7, '0', '0', '200000', '0', '0', '0', '200000', '0', '0'),
(8, 8, '0', '0', '200000', '0', '0', '0', '200000', '0', '0'),
(11, 11, '0', '0', '200000', '0', '0', '0', '200000', '0', '0'),
(16, 17, '0', '0', '200000', '0', '0', '0', '200000', '0', '0');

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
(1, '200000', '20000', '2000000', '20000');

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
(1, 'MYR', '04042010006119', 'Koperasi DinarPal Melaka Berhad');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinarpal_document`
--

INSERT INTO `dinarpal_document` (`dd_id`, `me_id`, `dd_filename`, `dd_size`, `dd_type`, `ddt_id`, `mvs_id`, `mv_id`) VALUES
(4, 1, '5f587e1d5678f04d1f5f8eb97c943269.jpg', 34, 'image/jpeg', 1, 1, 0),
(5, 1, '453af5e6a4dde1ab09ca5b367d42b1a5.png', 195, 'image/png', 2, 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

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
(18, 'nurumira@gmail.com', 17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fee_type`
--

CREATE TABLE IF NOT EXISTS `fee_type` (
  `ft_id` int(11) NOT NULL,
  `ft_name` varchar(200) DEFAULT NULL,
  `ft_price` varchar(200) DEFAULT '0.00',
  `ft_type` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_type`
--

INSERT INTO `fee_type` (`ft_id`, `ft_name`, `ft_price`, `ft_type`) VALUES
(1, 'Verification Fee', '10.00', 'STATIC'),
(2, 'Ar-Rahnu Fee', '10.00', 'STATIC'),
(3, 'Safe Keeping Fee', '0.55', 'DYNAMIC'),
(4, 'Transaction Fee', '2.00', 'STATIC'),
(5, 'Money Withdrawal Fee', '3.00', 'STATIC'),
(6, 'Deposit Fee', '2.00', 'STATIC'),
(7, 'Vault Fee', '0.0025', 'DYNAMIC');

-- --------------------------------------------------------

--
-- Table structure for table `itc_type`
--

CREATE TABLE IF NOT EXISTS `itc_type` (
  `itct_id` int(11) NOT NULL,
  `itct_image` varchar(2000) DEFAULT NULL,
  `itct_image2` varchar(2000) DEFAULT NULL,
  `itct_image3` varchar(2000) DEFAULT NULL,
  `itct_name` varchar(200) NOT NULL,
  `itct_price_rate` varchar(200) NOT NULL,
  `itct_weight` varchar(200) NOT NULL,
  `itct_cert` varchar(2000) DEFAULT NULL,
  `bi_id` int(11) NOT NULL,
  `pu_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itc_type`
--

INSERT INTO `itc_type` (`itct_id`, `itct_image`, `itct_image2`, `itct_image3`, `itct_name`, `itct_price_rate`, `itct_weight`, `itct_cert`, `bi_id`, `pu_id`) VALUES
(1, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', 'DP001', 1, 1),
(2, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', 'DP002', 1, 1),
(3, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', 'DP003', 1, 1),
(4, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', 'KGT01', 1, 1),
(8, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', 'YPE12', 1, 1),
(13, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', 'hu', 1, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `landing_page`
--

CREATE TABLE IF NOT EXISTS `landing_page` (
  `lan_id` int(11) NOT NULL,
  `lan_image` varchar(2000) NOT NULL,
  `lan_title` varchar(100) NOT NULL,
  `lan_subtitle` varchar(2000) NOT NULL,
  `lan_status` int(11) NOT NULL,
  `lan_colour` varchar(11) NOT NULL,
  `lan_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `landing_page`
--

INSERT INTO `landing_page` (`lan_id`, `lan_image`, `lan_title`, `lan_subtitle`, `lan_status`, `lan_colour`, `lan_order`) VALUES
(1, '19866-newyear.jpg', 'HAPPY NEW YEAR 2016', 'It''s time to bask in the glory Of a fresh New Year Wishing you peace & Happiness On New Year Eve', 1, '1', 1),
(2, '0f9b1-maulidulrasul.jpg', 'Maulid Nabi MUHAMMAD', ' Sallallahu Alayhi Wasallam (SAW) <BR> " His birth was a light in the dark, His preach was an oasis in the dessert, His sacrifice was a bright moon in the lightless night "', 2, '1', 2),
(3, 'a55db-maalhijrah.jpg', 'SALAM MAAL HIJRAH (1437H)', 'It''s not difficult to change, the difficulties come within us. <br/> Begin with a step. Be the change. Salam Maal Hijrah. ', 2, '2', 3),
(4, 'ee8e3-makkah.jpg', 'EID ADHA MUBARAK', 'May the devine blessings of Allah fill your home and heart with the spirit of joy and open up newer opportunities for success.', 2, '2', 4);

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
  `me_status` int(11) NOT NULL DEFAULT '1',
  `me_company` varchar(200) DEFAULT NULL,
  `me_reg_num` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`me_id`, `me_image`, `me_firstname`, `me_lastname`, `me_username`, `me_password`, `me_question`, `me_answer`, `me_unique_link`, `me_address1`, `me_address2`, `me_postcode`, `me_country`, `me_government_issue_id`, `me_driver_license`, `me_phone_no`, `me_birth_date`, `me_description`, `me_maiden_name`, `me_nationality`, `me_whatsapp_no`, `me_email`, `me_register_date`, `me_account_type`, `me_activation_status`, `me_last_login`, `me_magic_num`, `ml_id`, `me_status`, `me_company`, `me_reg_num`) VALUES
(1, '99271c3805aa830738485064b3707cc9.jpg', 'Umaq Mukhtar', 'member', 'member', '$2a$08$lfiHuPrglR0H9PXbBiYbNe9RhyE3qymozXGO6COJDYKCPr17LfrRK', 'What is my pet''s name?', 'comel', 'http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://local', 'Melaka', 'Pahang', '75450', 'Malaysia', 'MY001', 'B and D', '0199737579', '1989-10-31', '', 'Ntoh', 'Malaysia', '0199737579', 'kidzeclipes@gmail.com', '2014-11-10 10:12:00', 1, 2, '2016-02-18T03:17:21+01:00', '0d4368f80cd1d149576c068211e89fbf', 3, 1, NULL, NULL),
(7, 'default-img.jpg', 'asd', 'dsa', 'asd', '$2a$08$zRnQHtdGJnSdsPPqfGCXHef3VnVG06p.bQhM1vEs2b.Kcwz6aoF7K', 'Who am I?', 'Jack Sparrow', '7815696ecbf1c96e6894b779456d330e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'umar@tuffah.info', '2014-12-13 19:45:41', 1, 2, '2015-08-28T14:24:08+02:00', 'ec623adec13773d99685c93053d3228e', 3, 1, NULL, NULL),
(8, 'default-img.jpg', 'umaq2', 'yahoo', 'umaq2', '$2a$08$2ggpYdm2QKSr.jxQmOZZWeWBRfe9X2KkieEJupD8UtsBjN4EPpEsO', 'What is my username?', 'umaq2', '0f616daf1cf7fe3f91c32ddfa8821ab5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kidzeclipes@yahoo.com', '2014-12-20 18:25:46', 1, 2, '2014-12-20T18:26:19+00:00', 'f7f886855bbfc7c9e5101df6e77794ce', 3, 1, NULL, NULL),
(9, 'default-img.jpg', 'pisang', 'admin', 'pisang', '$2a$08$pn2U5NZix1EOx/.IYmmaeOYnIdxL7faB39ElDFFulsyFVRuaoTm8q', 'What is my username?', 'a1', '8a8bb7cd343aa2ad99b7d762030857a2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pisang@dinarpal.com', '2014-12-28 07:27:16', 1, 2, '2015-02-11T23:32:46+08:00', '97669d6b22a790a5feb7f9c06f6e3d03', 1, 1, NULL, NULL),
(10, 'default-img.jpg', 'staff', 'bujang', 'staff', '$2a$08$60LE6Y86CP3V8y2filvJ7eB/0HqDk/gFNmjb4y0P.tXP83X/Y/3fy', 'What is my username?', 'b1', 'edbab45572c72a5d9440b40bcc0500c0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'staff@dinarpal.com', '2014-12-28 07:28:05', 1, 2, '2016-02-17T02:37:19+01:00', '9512afcb3f0fde463ddf8e476a76be16', 2, 1, NULL, NULL),
(11, 'default-img.jpg', 'hai', 'hehe', 'hai', '$2a$08$L1jcJUSk0LH97DOtYW7BW.v7YO93fHtPT6oVODJgbo0vkLGEMgNai', 'What is my username?', 'hai', '42810cb02db3bb2cbb428af0d8b0376e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lol@yahoo.com', '2015-02-10 16:48:20', 1, 1, NULL, '7fd1bc3083e54ac8254dc6ceb78d29b6', 3, 1, NULL, NULL),
(17, '6d3ac-adeq-nur---ftmk!-20150212_151603.jpg', 'Nur Umira', 'Mustafa', 'nur', '$2a$08$R26OP4OtJ2PCewXZLW5ab.DpVPpHZwRtR.Fbfm4qKXTothzh7KkG6', 'What is my username?', 'nur', 'b55178b011bfb206965f2638d0f87047', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nurumira@gmail.com', '2015-04-27 03:12:49', 1, 2, '2016-01-05T19:00:15+01:00', '69c0e639c71a34bb6b710f043138f7f8', 3, 1, NULL, NULL);

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
-- Table structure for table `merchant`
--

CREATE TABLE IF NOT EXISTS `merchant` (
  `mer_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `bap_id` int(11) NOT NULL,
  `mer_address` varchar(200) NOT NULL,
  `at_id` int(11) NOT NULL,
  `mer_contact` varchar(200) NOT NULL,
  `mer_agree` varchar(200) NOT NULL,
  `mer_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pawn_child`
--

CREATE TABLE IF NOT EXISTS `pawn_child` (
  `pc_id` int(11) NOT NULL,
  `pa_id` int(11) NOT NULL,
  `pc_qty` varchar(200) DEFAULT '0',
  `pc_status` int(11) DEFAULT '1',
  `vp_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `souq_adc`
--

CREATE TABLE IF NOT EXISTS `souq_adc` (
  `sadc_id` int(11) NOT NULL,
  `so_id` int(11) NOT NULL,
  `adc_id` int(11) NOT NULL,
  `sadc_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `souq_child`
--

CREATE TABLE IF NOT EXISTS `souq_child` (
  `sc_id` int(11) NOT NULL,
  `so_id` int(11) NOT NULL,
  `vk_id` int(11) NOT NULL,
  `sc_qty` varchar(200) DEFAULT '0',
  `sc_status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `tr_deposit_code` varchar(200) DEFAULT NULL,
  `tr_file` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vault_bid`
--

CREATE TABLE IF NOT EXISTS `vault_bid` (
  `vb_id` int(11) NOT NULL,
  `vb_image` varchar(2000) DEFAULT NULL,
  `vb_image2` varchar(2000) DEFAULT NULL,
  `vb_image3` varchar(2000) DEFAULT NULL,
  `vb_name` varchar(200) NOT NULL,
  `vb_price_rate` varchar(200) NOT NULL,
  `vb_weight` varchar(200) NOT NULL,
  `vb_cert` varchar(2000) DEFAULT NULL,
  `vb_desc` varchar(2000) DEFAULT NULL,
  `br_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vault_ghost`
--

CREATE TABLE IF NOT EXISTS `vault_ghost` (
  `vg_id` int(11) NOT NULL,
  `vg_image` varchar(2000) DEFAULT NULL,
  `vg_image2` varchar(2000) DEFAULT NULL,
  `vg_image3` varchar(2000) DEFAULT NULL,
  `vg_name` varchar(200) NOT NULL,
  `vg_price_rate` varchar(200) NOT NULL,
  `vg_weight` varchar(200) NOT NULL,
  `vg_cert` varchar(2000) DEFAULT NULL,
  `vg_desc` varchar(2000) DEFAULT NULL,
  `br_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vault_keep`
--

CREATE TABLE IF NOT EXISTS `vault_keep` (
  `vk_id` int(11) NOT NULL,
  `vk_image` varchar(2000) DEFAULT NULL,
  `vk_image2` varchar(2000) DEFAULT NULL,
  `vk_image3` varchar(2000) DEFAULT NULL,
  `vk_name` varchar(200) NOT NULL,
  `vk_price_rate` varchar(200) NOT NULL,
  `vk_weight` varchar(200) NOT NULL,
  `vk_cert` varchar(2000) DEFAULT NULL,
  `vk_desc` varchar(2000) DEFAULT NULL,
  `br_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vault_pawn`
--

CREATE TABLE IF NOT EXISTS `vault_pawn` (
  `vp_id` int(11) NOT NULL,
  `vp_image` varchar(2000) DEFAULT NULL,
  `vp_image2` varchar(2000) DEFAULT NULL,
  `vp_image3` varchar(2000) DEFAULT NULL,
  `vp_name` varchar(200) NOT NULL,
  `vp_price_rate` varchar(200) NOT NULL,
  `vp_weight` varchar(200) NOT NULL,
  `vp_cert` varchar(2000) DEFAULT NULL,
  `vp_desc` varchar(2000) DEFAULT NULL,
  `br_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vault_store`
--

CREATE TABLE IF NOT EXISTS `vault_store` (
  `vs_id` int(11) NOT NULL,
  `vs_image` varchar(2000) DEFAULT NULL,
  `vs_image2` varchar(2000) DEFAULT NULL,
  `vs_image3` varchar(2000) DEFAULT NULL,
  `vs_name` varchar(200) NOT NULL,
  `vs_price_rate` varchar(200) NOT NULL,
  `vs_weight` varchar(200) NOT NULL,
  `vs_cert` varchar(2000) DEFAULT NULL,
  `vs_desc` varchar(2000) DEFAULT NULL,
  `br_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1453 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vault_store`
--

INSERT INTO `vault_store` (`vs_id`, `vs_image`, `vs_image2`, `vs_image3`, `vs_name`, `vs_price_rate`, `vs_weight`, `vs_cert`, `vs_desc`, `br_id`) VALUES
(1, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(2, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(3, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(4, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(5, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(6, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(7, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(8, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(9, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(10, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(11, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(12, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(13, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(14, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(15, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(16, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(17, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(18, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(19, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(20, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(21, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(22, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(23, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(24, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(25, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(26, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(27, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(28, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(29, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(30, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(31, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(32, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(33, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(34, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(35, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(36, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(37, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(38, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(39, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(40, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(41, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(42, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(43, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(44, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(45, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(46, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(47, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(48, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(49, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(50, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(51, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(52, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(53, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(54, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(55, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(56, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(57, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(58, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(59, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(60, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(61, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(62, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(63, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(64, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(65, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(66, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(67, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(68, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(69, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(70, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(71, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(72, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(73, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(74, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(75, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(76, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(77, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(78, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(79, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(80, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(81, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(82, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(83, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(84, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(85, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(86, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(87, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(88, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(89, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(90, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(91, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(92, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(93, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(94, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(95, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(96, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(97, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(98, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(99, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(100, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(101, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(102, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(103, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(104, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(105, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(106, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(107, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(108, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(109, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(110, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(111, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(112, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(113, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(114, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(115, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(116, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(117, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(118, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(119, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(120, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(121, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(122, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(123, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(124, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(125, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(126, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(127, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(128, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(129, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(130, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(131, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(132, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(133, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(134, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(135, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(136, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(137, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(138, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(139, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(140, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(141, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(142, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(143, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(144, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(145, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(146, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(147, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(148, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(149, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(150, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(151, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(152, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(153, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(154, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(155, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(156, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(157, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(158, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(159, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(160, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(161, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(162, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(163, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(164, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(165, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(166, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(167, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(168, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(169, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(170, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(171, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(172, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(173, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(174, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(175, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(176, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(177, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(178, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(179, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(180, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(181, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(182, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(183, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(184, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(185, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(186, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(187, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(188, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(189, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(190, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(191, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(192, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(193, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(194, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(195, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(196, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(197, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(198, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(199, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(200, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(201, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(202, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(203, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(204, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(205, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(206, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(207, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(208, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(209, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(210, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(211, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(212, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(213, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(214, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(215, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(216, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(217, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(218, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(219, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(220, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(221, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(222, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(223, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(224, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(225, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(226, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(227, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(228, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(229, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(230, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(231, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(232, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(233, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(234, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(235, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(236, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(237, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(238, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(239, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(240, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(241, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(242, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(243, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(244, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(245, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(246, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(247, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(248, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(249, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(250, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(251, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(252, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(253, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(254, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(255, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(256, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(257, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(258, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(259, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(260, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(261, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(262, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(263, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(264, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(265, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(266, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(267, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(268, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(269, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(270, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(271, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(272, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(273, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(274, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(275, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(276, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(277, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(278, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(279, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(280, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(281, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(282, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(283, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(284, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(285, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(286, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(287, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(288, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(289, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(290, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(291, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(292, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(293, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(294, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(295, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(296, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(297, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(298, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(299, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(300, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(301, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(302, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(303, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(304, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(305, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(306, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(307, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(308, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(309, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(310, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(311, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(312, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(313, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(314, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(315, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(316, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(317, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(318, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(319, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(320, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(321, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(322, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(323, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(324, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(325, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(326, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(327, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(328, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(329, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(330, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(331, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(332, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(333, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(334, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(335, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(336, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(337, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(338, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(339, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(340, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(341, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(342, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(343, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(344, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(345, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(346, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(347, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(348, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(349, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(350, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(351, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(352, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(353, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(354, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(355, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(356, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(357, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(358, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(359, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(360, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(361, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(362, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(363, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(364, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(365, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(366, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(367, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(368, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(369, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(370, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(371, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(372, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(373, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(374, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(375, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(376, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(377, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(378, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(379, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(380, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(381, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(382, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(383, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(384, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(385, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(386, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(387, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(388, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(389, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(390, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(391, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(392, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(393, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(394, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(395, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(396, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(397, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(398, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(399, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(400, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(401, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(402, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(403, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(404, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(405, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(406, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(407, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(408, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(409, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(410, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(411, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(412, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(413, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(414, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(415, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(416, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(417, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(418, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(419, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(420, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(421, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(422, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(423, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(424, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(425, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(426, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(427, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(428, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(429, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(430, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(431, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(432, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(433, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(434, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(435, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(436, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(437, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(438, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(439, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(440, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(441, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(442, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(443, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(444, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(445, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(446, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(447, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(448, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(449, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(450, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(451, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1);
INSERT INTO `vault_store` (`vs_id`, `vs_image`, `vs_image2`, `vs_image3`, `vs_name`, `vs_price_rate`, `vs_weight`, `vs_cert`, `vs_desc`, `br_id`) VALUES
(452, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(453, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(454, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(455, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(456, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(457, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(458, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(459, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(460, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(461, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(462, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(463, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(464, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(465, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(466, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(467, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(468, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(469, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(470, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(471, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(472, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(473, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(474, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(475, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(476, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(477, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(478, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(479, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(480, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(481, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(482, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(483, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(484, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(485, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(486, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(487, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(488, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(489, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(490, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(491, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(492, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(493, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(494, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(495, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(496, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(497, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(498, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(499, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(500, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(501, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(502, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(503, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(504, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(505, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(506, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(507, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(508, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(509, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(510, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(511, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(512, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(513, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(514, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(515, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(516, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(517, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(518, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(519, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(520, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(521, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(522, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(523, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(524, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(525, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(526, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(527, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(528, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(529, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(530, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(531, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(532, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(533, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(534, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(535, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(536, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(537, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(538, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(539, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(540, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(541, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(542, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(543, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(544, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(545, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(546, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(547, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(548, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(549, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(550, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(551, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(552, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(553, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(554, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(555, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(556, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(557, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(558, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(559, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(560, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(561, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(562, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(563, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(564, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(565, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(566, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(567, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(568, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(569, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(570, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(571, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(572, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(573, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(574, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(575, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(576, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(577, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(578, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(579, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(580, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(581, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(582, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(583, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(584, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(585, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(586, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(587, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(588, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(589, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(590, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(591, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(592, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(593, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(594, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(595, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(596, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(597, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(598, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(599, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(600, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(601, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(602, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(603, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(604, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(605, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(606, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(607, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(608, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(609, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(610, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(611, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(612, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(613, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(614, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(615, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(616, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(617, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(618, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(619, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(620, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(621, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(622, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(623, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(624, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(625, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(626, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(627, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(628, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(629, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(630, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(631, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(632, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(633, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(634, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(635, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(636, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(637, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(638, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(639, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(640, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(641, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(642, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(643, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(644, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(645, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(646, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(647, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(648, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(649, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(650, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(651, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(652, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(653, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(654, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(655, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(656, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(657, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(658, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(659, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(660, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(661, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(662, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(663, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(664, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(665, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(666, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(667, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(668, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(669, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(670, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(671, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(672, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(673, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(674, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(675, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(676, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(677, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(678, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(679, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(680, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(681, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(682, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(683, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(684, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(685, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(686, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(687, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(688, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(689, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(690, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(691, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(692, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(693, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(694, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(695, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(696, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(697, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(698, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(699, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(700, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(701, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(702, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(703, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(704, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(705, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(706, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(707, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(708, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(709, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(710, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(711, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(712, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(713, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(714, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(715, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(716, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(717, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(718, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(719, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(720, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(721, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(722, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(723, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(724, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(725, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(726, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(727, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(728, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(729, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(730, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(731, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(732, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(733, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(734, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(735, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(736, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(737, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(738, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(739, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(740, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(741, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(742, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(743, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(744, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(745, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(746, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(747, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(748, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(749, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(750, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(751, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(752, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(753, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(754, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(755, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(756, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(757, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(758, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(759, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(760, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(761, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(762, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(763, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(764, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(765, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(766, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(767, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(768, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(769, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(770, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(771, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(772, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(773, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(774, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(775, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(776, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(777, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(778, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(779, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(780, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(781, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(782, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(783, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(784, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(785, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(786, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(787, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(788, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(789, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(790, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(791, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(792, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(793, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(794, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(795, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(796, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(797, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(798, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(799, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(800, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(801, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(802, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(803, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(804, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(805, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(806, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(807, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(808, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(809, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(810, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(811, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(812, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(813, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(814, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(815, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(816, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(817, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(818, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(819, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(820, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(821, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(822, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(823, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(824, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(825, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(826, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(827, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(828, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(829, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(830, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(831, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(832, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(833, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(834, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(835, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(836, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(837, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(838, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(839, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(840, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(841, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(842, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(843, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(844, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(845, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(846, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(847, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(848, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(849, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(850, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(851, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(852, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(853, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(854, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(855, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(856, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(857, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(858, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(859, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(860, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(861, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(862, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(863, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(864, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(865, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(866, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(867, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(868, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(869, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(870, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(871, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(872, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(873, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(874, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(875, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(876, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(877, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(878, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(879, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(880, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(881, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(882, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(883, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(884, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(885, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(886, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(887, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(888, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(889, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(890, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(891, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(892, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(893, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(894, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(895, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(896, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(897, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(898, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(899, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(900, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(901, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1);
INSERT INTO `vault_store` (`vs_id`, `vs_image`, `vs_image2`, `vs_image3`, `vs_name`, `vs_price_rate`, `vs_weight`, `vs_cert`, `vs_desc`, `br_id`) VALUES
(902, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(903, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(904, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(905, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(906, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(907, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(908, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(909, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(910, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(911, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(912, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(913, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(914, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(915, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(916, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(917, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(918, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(919, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(920, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(921, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(922, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(923, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(924, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(925, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(926, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(927, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(928, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(929, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(930, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(931, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(932, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(933, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(934, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(935, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(936, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(937, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(938, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(939, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(940, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(941, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(942, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(943, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(944, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(945, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(946, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(947, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(948, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(949, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(950, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(951, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(952, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(953, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(954, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(955, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(956, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(957, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(958, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(959, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(960, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(961, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(962, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(963, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(964, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(965, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(966, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(967, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(968, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(969, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(970, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(971, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(972, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(973, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(974, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(975, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(976, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(977, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(978, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(979, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(980, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(981, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(982, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(983, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(984, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(985, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(986, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(987, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(988, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(989, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(990, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(991, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(992, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(993, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(994, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(995, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(996, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(997, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(998, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(999, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1000, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1001, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1002, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1003, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1004, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1005, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1006, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1007, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1008, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1009, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1010, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1011, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1012, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1013, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1014, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1015, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1016, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1017, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1018, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1019, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1020, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1021, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1022, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1023, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1024, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1025, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1026, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1027, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1028, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1029, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1030, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1031, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1032, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1033, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1034, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1035, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1036, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1037, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1038, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1039, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1040, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1041, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1042, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1043, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1044, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1045, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1046, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1047, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1048, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1049, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1050, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1051, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1052, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1053, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1054, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1055, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1056, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1057, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1058, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1059, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1060, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1061, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1062, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1063, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1064, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1065, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1066, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1067, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1068, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1069, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1070, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1071, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1072, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1073, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1074, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1075, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1076, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1077, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1078, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1079, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1080, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1081, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1082, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1083, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1084, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1085, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1086, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1087, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1088, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1089, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1090, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1091, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1092, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1093, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1094, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1095, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1096, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1097, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1098, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1099, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1100, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1101, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1102, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1103, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1104, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1105, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1106, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1107, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1108, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1109, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1110, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1111, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1112, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1113, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1114, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1115, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1116, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1117, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1118, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1119, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1120, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1121, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1122, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1123, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1124, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1125, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1126, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1127, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1128, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1129, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1130, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1131, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1132, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1133, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1134, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1135, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1136, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1137, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1138, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1139, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1140, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1141, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1142, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1143, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1144, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1145, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1146, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1147, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1148, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1149, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1150, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1151, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1152, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1153, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1154, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1155, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1156, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1157, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1158, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1159, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1160, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1161, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1162, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1163, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1164, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1165, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1166, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1167, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1168, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1169, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1170, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1171, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1172, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1173, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1174, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1175, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1176, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1177, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1178, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1179, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1180, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1181, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1182, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1183, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1184, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1185, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1186, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1187, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1188, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1189, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1190, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1191, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1192, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1193, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1194, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1195, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1196, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1197, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1198, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1199, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1200, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1201, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1202, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1203, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1204, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1205, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1206, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1207, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1208, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1209, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1210, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1211, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1212, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1213, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1214, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1215, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1216, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1217, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1218, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1219, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1220, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1221, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1222, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1223, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1224, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1225, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1226, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1227, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1228, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1229, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1230, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1231, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1232, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1233, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1234, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1235, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1236, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1237, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1238, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1239, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1240, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1241, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1242, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1243, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1244, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1245, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1246, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1247, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1248, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1249, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1250, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1251, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1252, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1253, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1254, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1255, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1256, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1257, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1258, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1259, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1260, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1261, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1262, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1263, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1264, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1265, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1266, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1267, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1268, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1269, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1270, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1271, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1272, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1273, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1274, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1275, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1276, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1277, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1278, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1279, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1280, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1281, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1282, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1283, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1284, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1285, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1286, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1287, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1288, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1289, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1290, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1291, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1292, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1293, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1294, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1295, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1296, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1297, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1298, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1299, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1300, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1301, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1302, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1303, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1304, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1305, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1306, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1307, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1308, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1309, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1310, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1311, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1312, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1313, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1314, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1315, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1316, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1317, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1318, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1319, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1320, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1321, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1322, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1323, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1324, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1325, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1326, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1327, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1328, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1329, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1330, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1331, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1332, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1333, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1334, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1335, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1336, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1337, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1338, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1339, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1340, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1341, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1342, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1343, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1344, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1345, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1346, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1347, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1);
INSERT INTO `vault_store` (`vs_id`, `vs_image`, `vs_image2`, `vs_image3`, `vs_name`, `vs_price_rate`, `vs_weight`, `vs_cert`, `vs_desc`, `br_id`) VALUES
(1348, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1349, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1350, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1351, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1352, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1353, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1354, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1355, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1356, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1357, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1358, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1359, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1360, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1361, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1362, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1363, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1364, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1365, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1366, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1367, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1368, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1369, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1370, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1371, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1372, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1373, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1374, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1375, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1376, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1377, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1378, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1379, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1380, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1381, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1382, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1383, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1384, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1385, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1386, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1387, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1388, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1389, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1390, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1391, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1392, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1393, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1394, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1395, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1396, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1397, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1398, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1399, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1400, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1401, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1402, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1403, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1404, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1405, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1406, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1407, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1408, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1409, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1410, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1411, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1412, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1413, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1414, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1415, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1416, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1417, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1418, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1419, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1420, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1421, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1422, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1423, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1424, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1425, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1426, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1427, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1428, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1429, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1430, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1431, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1432, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1433, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1434, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1435, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1436, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1437, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1438, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1439, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1440, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1441, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1442, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1443, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1444, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1445, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1446, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1),
(1447, '3940c-1dinar.jpg', NULL, NULL, '1 Dinar', '558.58', '4.25', NULL, NULL, 1),
(1448, '190c6-5dinar.jpg', 'c8b57-5dinar.jpg', '6d86e-5dinar.jpg', '5 Dinar', '2783.75', '21.25', NULL, NULL, 1),
(1449, 'a73dd-10dinar_2.jpg', NULL, NULL, '10 Dinar', '5585.80', '42.50', NULL, NULL, 1),
(1450, '4ed7f-dinar-kelantan-kgt-2012.jpg', '52c2e-dinar-kelantan-kgt-2012.jpg', '0e44e-dinar-kelantan-kgt-2012.jpg', 'Dinar KGT 1 Dinar', '600', '4.25', NULL, NULL, 1),
(1451, 'a152f-asyq8ouhqx-2vse0juumehphom8rjgd6eotoszcqtoey.jpg', NULL, NULL, 'YaPEIM', '800', '1', NULL, NULL, 1),
(1452, 'b61d5-download.jpg', '18f6a-icon.png', 'be0e6-botol+1+liter.jpg', 'juah', '78', '8', NULL, NULL, 1);

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
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`ban_id`);

--
-- Indexes for table `banners_type`
--
ALTER TABLE `banners_type`
  ADD PRIMARY KEY (`bty_id`);

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
-- Indexes for table `landing_page`
--
ALTER TABLE `landing_page`
  ADD PRIMARY KEY (`lan_id`);

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
-- Indexes for table `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`mer_id`);

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
-- Indexes for table `vault_bid`
--
ALTER TABLE `vault_bid`
  ADD PRIMARY KEY (`vb_id`);

--
-- Indexes for table `vault_ghost`
--
ALTER TABLE `vault_ghost`
  ADD PRIMARY KEY (`vg_id`);

--
-- Indexes for table `vault_keep`
--
ALTER TABLE `vault_keep`
  ADD PRIMARY KEY (`vk_id`);

--
-- Indexes for table `vault_pawn`
--
ALTER TABLE `vault_pawn`
  ADD PRIMARY KEY (`vp_id`);

--
-- Indexes for table `vault_store`
--
ALTER TABLE `vault_store`
  ADD PRIMARY KEY (`vs_id`);

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
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `ban_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `banners_type`
--
ALTER TABLE `banners_type`
  MODIFY `bty_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
  MODIFY `bap_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `det_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
  MODIFY `dd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
  MODIFY `em_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `fee_type`
--
ALTER TABLE `fee_type`
  MODIFY `ft_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `itc_type`
--
ALTER TABLE `itc_type`
  MODIFY `itct_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
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
  MODIFY `is_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_storage_child`
--
ALTER TABLE `item_storage_child`
  MODIFY `isc_id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `landing_page`
--
ALTER TABLE `landing_page`
  MODIFY `lan_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
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
-- AUTO_INCREMENT for table `merchant`
--
ALTER TABLE `merchant`
  MODIFY `mer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pawn`
--
ALTER TABLE `pawn`
  MODIFY `pa_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pawn_child`
--
ALTER TABLE `pawn_child`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pawn_child_child`
--
ALTER TABLE `pawn_child_child`
  MODIFY `pcc_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `so_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `souq_adc`
--
ALTER TABLE `souq_adc`
  MODIFY `sadc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `souq_child`
--
ALTER TABLE `souq_child`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `souq_child_child`
--
ALTER TABLE `souq_child_child`
  MODIFY `scc_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `tr_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `ui_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vault_bid`
--
ALTER TABLE `vault_bid`
  MODIFY `vb_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vault_ghost`
--
ALTER TABLE `vault_ghost`
  MODIFY `vg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vault_keep`
--
ALTER TABLE `vault_keep`
  MODIFY `vk_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vault_pawn`
--
ALTER TABLE `vault_pawn`
  MODIFY `vp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vault_store`
--
ALTER TABLE `vault_store`
  MODIFY `vs_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1453;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
