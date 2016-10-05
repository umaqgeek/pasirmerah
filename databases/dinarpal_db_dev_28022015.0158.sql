-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 28, 2015 at 01:58 AM
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
CREATE DATABASE IF NOT EXISTS `dinarpal_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dinarpal_db`;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`ba_id`, `me_id`, `ba_name`, `ba_address`, `ba_city`, `ba_zipcode`, `co_id`, `ba_state`, `ba_phone`, `ba_holdername`, `ba_accountnumber`, `bat_id`, `ba_digitrouting`, `ba_swiftcode`, `ba_addinfo`, `ba_status`, `bc_id`) VALUES
(3, 1, 'MAYBANK SDN BHD', 'MAYBANK SDN BHD, BANDAR MITC, 75450, AYER KEROH, MELAKA.', 'AYER KEROH', '75450', 3, 'MELAKA', '-', 'OMAR MUKHTAR BIN HAMBARAN', '154110057084', 2, '-', '033', '-', 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`ca_id`, `me_id`, `ct_id`, `ca_name`, `ca_number`, `ca_cvnnumber`, `ca_expiredmonth`, `ca_expiredyear`, `ca_status`) VALUES
(4, 1, 2, 'OMAR MUKHTAR BIN HAMBARAN', '1234567890123456', '553', '4', '2026', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cards_type`
--

CREATE TABLE IF NOT EXISTS `cards_type` (
  `ct_id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(200) NOT NULL,
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('0ab0a54c6c1e1a005fce037051d9c61d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303506, ''),
('0bb0ff6ebcb3e65c71c668bdffc3d855', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1424539165, ''),
('0fdf333b44a2d81896489b059a0fb1eb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303506, ''),
('18adc893fa4d87860f875005f18cfe9c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370604, ''),
('1940c9d93856310c9f8e553f409289bb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421245115, ''),
('1959d9661a9e2ee883b6b513e9c7efe5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421366921, 'a:29:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:32:"aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-01-15T18:05:29+00:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;}'),
('1a4b05f55b67e99fb7742c3c277ea858', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421245115, ''),
('1ad48a6eebe8dbc989fff6f7c5cec627', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1424857896, ''),
('1b707c07da91726a578707a89353fb92', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303507, ''),
('1cce8ed295870db55b4ea0b5ed4e5575', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422305866, ''),
('239379a8c43f4994eda8d91f75c5e819', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303507, ''),
('23c3bc364c6771d4bf2b4ddad9f4ecc2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422307320, ''),
('273718993cd5c788d46f91452026df81', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370601, ''),
('274512af51b279b14ab6ae18c6f1e8bd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303507, ''),
('29365d82a0444800300f28d1921963a4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370601, ''),
('2a02a4df19cf6d4204dc7158249a3d7f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421171084, ''),
('2ee3307d99ff95a2f9de1a1ae909634f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421171084, ''),
('355f2fc0a72e3cb33f2b094d83f44398', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1425058784, 'a:29:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:32:"aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-02-26T04:02:01+08:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;}'),
('380a5adf1c8d2290344b0b8d81b7b337', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421179545, ''),
('3aa39c7d7a5bd1b41d77712de3872f78', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1423678614, ''),
('3bf9a23815c7365593a4bc332f2d0ecb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370601, ''),
('40dca1a8b6484373c9607fa9e0287b0f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421305752, ''),
('41b675da5b57c19b8651ee2cb501d102', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421691413, ''),
('45aad87aa2948676ce175f0555b59f62', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370602, ''),
('47721c617382a89daa2a74bb4c2b2ac5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421691412, ''),
('4959bbc10eb99021350354e3de1b4a3f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421247735, ''),
('4ab99c6f7e342034bb49397f74f3ead8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421242947, ''),
('4d967fdd6873810c52ae419f1ddaab6d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370652, ''),
('4daa76d1eb56a843280ccc7c87cb08b1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303507, ''),
('53ba08eb40ddba2a563f7843061559b1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303506, ''),
('576bc71746579209a875e37f0b283f6c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303506, ''),
('581dd9155b03f91891e5cc6f04dba6e7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422305866, ''),
('5ade118d91f288574321a3891360ba92', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421682483, ''),
('5b10f2c03523318570cfc773307f6371', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421170204, ''),
('5c48e96262394ac35dcf829ab18bdfd9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1423027283, ''),
('6123963c06bfb1dc4751928d8f4dbd84', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422716803, ''),
('61d9671682d32517b589234dacf4df82', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303506, ''),
('6823fbe2d285ac41c57e61c703b55d90', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421178123, ''),
('6870fa33d63cd5037473454653aa199b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422305866, ''),
('6a4dfffa8fc7ff631650efaf035652d1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1424932207, ''),
('6b838f3603a39ea377370d5695bef415', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303506, ''),
('6e9f69ef2c650999be7c414ab75bcd72', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421255190, ''),
('71b1fe191aeea7a1ea00b6677f484663', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370601, ''),
('757d7c72efcfd4b03a7f02513bdc22df', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421691412, ''),
('760b37ede1b71f490fbb40fb4b5935a8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1424539165, ''),
('787c8f7254887fd68933f489b33f128b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1424539165, ''),
('7b59b5c4ccf73f465f6ce97a98140a6e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422305866, ''),
('7ea48d91ff847845b3d3e9d45ace867e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303507, ''),
('809f085d5c64b8fdeb732740b4b5db1c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421682483, ''),
('82fb0fda9f71303a6288cb0c1d122060', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303507, ''),
('83a920724fc744e0359c17fd521c7a5c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370604, ''),
('83bfa0c955c3f4594c7877383497feb0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421179544, ''),
('853985207b875b0a730706545adb5721', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421373578, ''),
('89a7d805983c2775d8a80843804db10b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421246323, ''),
('8f6d950577e265da479a5f0a11497b4a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370652, ''),
('915bafbcf9fda383f4f9aac1a3ce7ae2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421178124, ''),
('949c638ca2487eed398d404c28e846e1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421246323, ''),
('94da39841ea409f53e714cf60d4c62ab', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421178061, ''),
('9b0a77ae3a5d6cc4e8f7a2d538a80d7f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1423558080, 'a:1:{s:16:"flash:old:sucess";s:64:"Registration Success .. Check your email for account activation.";}'),
('a1824377dabb2a4ed526ffac54ff0a44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421178124, ''),
('a2f1349247b85a25291e4e919af9e00f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421691413, ''),
('a476bad729e6e80ef13aae04ef6ddd1f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303507, ''),
('abfd53cc164fa9e437f87a6fc0110e69', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421246687, ''),
('ad562cdc55fb10af6e606e1df214244f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370601, ''),
('b0c262d3ef2c7256292db5d810ff743b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421682483, ''),
('b56f17fe532d8654de88bc80ce59ad36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370601, ''),
('ba01724235f116e631cd692d8acb0474', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370652, ''),
('bdc4956c91606b8a884e6a1a0c280766', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421294121, 'a:29:{s:5:"me_id";s:1:"1";s:8:"me_image";s:14:"umarkecik1.jpg";s:12:"me_firstname";s:14:"Umaq Mukhtardd";s:11:"me_lastname";s:6:"member";s:11:"me_username";s:6:"member";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:32:"aa08769cdcb26674c6706093503ff0a3";s:11:"me_address1";s:6:"Melaka";s:11:"me_address2";s:6:"Pahang";s:11:"me_postcode";s:5:"75450";s:10:"me_country";s:8:"Malaysia";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:14:"me_whatsapp_no";s:10:"0199737579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2015-01-14T17:10:58+00:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:9:"logged_in";b:1;}'),
('bdfe1a8d01bdba13137785068ca836af', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421242947, ''),
('be0445ec469ed5c6161d791624a3c010', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303506, ''),
('c9afadfd722e9169659a142bbfe90e0f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421171084, ''),
('cde1293d02213afdeb2e6a095488e967', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422195126, ''),
('d49315ecb86eb90f5e55abcbfbd8eb2e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370603, ''),
('da62ac32856d8ade4ef779095a7bdbb9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1423501012, ''),
('efc965f4c3ebbd4681766c9edfd5067d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1422303506, ''),
('fc0ebb9678f6efd521c9da0879f9c748', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1421370601, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `dinarpal_account`
--

INSERT INTO `dinarpal_account` (`da_id`, `me_id`, `da_gold_rahnu_gram`, `da_gold_rahnu_money`, `da_gold_balance`, `da_gold_reserved`, `da_silver_rahnu_gram`, `da_silver_rahnu_money`, `da_silver_balance`, `da_silver_reserved`, `da_point_balance`) VALUES
(1, 1, '943.5', '123598.5', '43745.46', '99990', '0', '0', '1600', '1000', '0'),
(7, 7, '0', '0', '200000', '300002', '0', '0', '200000', '200000', '0'),
(8, 8, '0', '0', '192738.49', '200000', '0', '0', '200000', '200000', '0'),
(9, 9, '0', '0', '200000', '200000', '0', '0', '200000', '200000', '0'),
(10, 10, '0', '0', '200000', '200000', '0', '0', '200000', '200000', '0'),
(11, 11, '0', '0', '200000', '200000', '0', '0', '200000', '200000', '0');

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
-- Table structure for table `dinarpal_document`
--

CREATE TABLE IF NOT EXISTS `dinarpal_document` (
  `dd_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) NOT NULL,
  `dd_filename` varchar(200) DEFAULT NULL,
  `dd_size` int(11) DEFAULT '0',
  `dd_type` varchar(200) DEFAULT NULL,
  `dd_status` int(11) DEFAULT '1',
  `mv_id` int(11) DEFAULT '0',
  PRIMARY KEY (`dd_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

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
  `ts_id` int(11) DEFAULT '1',
  PRIMARY KEY (`dt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `dinarpal_transaction`
--

INSERT INTO `dinarpal_transaction` (`dt_id`, `me_id`, `tr_amount`, `pt_id`, `at_id`, `tr_notes`, `tr_datetime`, `ft_id`, `ts_id`) VALUES
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
(14, 1, '2.00', 0, 2, NULL, '2015-02-19 03:23:45', 4, 1),
(15, 7, '2.00', 0, 2, NULL, '2015-02-19 03:26:12', 4, 1),
(16, 1, '2.00', 0, 2, NULL, '2015-02-19 03:36:29', 4, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

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
(13, 'lol@yahoo.com', 11, 2);

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
-- Table structure for table `item_courier`
--

CREATE TABLE IF NOT EXISTS `item_courier` (
  `ic_id` int(11) NOT NULL AUTO_INCREMENT,
  `ic_name` varchar(200) NOT NULL,
  PRIMARY KEY (`ic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `item_courier`
--

INSERT INTO `item_courier` (`ic_id`, `ic_name`) VALUES
(1, 'Ring'),
(2, 'Locket'),
(3, 'Earing'),
(4, 'Necklace'),
(5, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `item_status_courier`
--

CREATE TABLE IF NOT EXISTS `item_status_courier` (
  `isc_id` int(11) NOT NULL AUTO_INCREMENT,
  `isc_name` varchar(200) NOT NULL,
  PRIMARY KEY (`isc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `item_status_courier`
--

INSERT INTO `item_status_courier` (`isc_id`, `isc_name`) VALUES
(1, 'New'),
(2, 'Used'),
(3, 'Broken');

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
  PRIMARY KEY (`me_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`me_id`, `me_image`, `me_firstname`, `me_lastname`, `me_username`, `me_password`, `me_question`, `me_answer`, `me_unique_link`, `me_address1`, `me_address2`, `me_postcode`, `me_country`, `me_government_issue_id`, `me_driver_license`, `me_phone_no`, `me_birth_date`, `me_description`, `me_maiden_name`, `me_nationality`, `me_whatsapp_no`, `me_email`, `me_register_date`, `me_account_type`, `me_activation_status`, `me_last_login`, `me_magic_num`, `ml_id`, `me_status`) VALUES
(1, 'umarkecik1.jpg', 'Umaq Mukhtardd', 'member', 'member', '$2a$08$lfiHuPrglR0H9PXbBiYbNe9RhyE3qymozXGO6COJDYKCPr17LfrRK', 'What is my pet''s name?', 'comel', 'aa08769cdcb26674c6706093503ff0a3', 'Melaka', 'Pahang', '75450', 'Malaysia', 'MY001', 'B and D', '0199737579', '1989-10-31', '', 'Ntoh', 'Malaysia', '0199737579', 'kidzeclipes@gmail.com', '2014-11-10 10:12:00', 2, 2, '2015-02-28T01:39:44+08:00', '0d4368f80cd1d149576c068211e89fbf', 3, 1),
(7, 'default-img.jpg', 'asd', 'dsa', 'asd', '$2a$08$zRnQHtdGJnSdsPPqfGCXHef3VnVG06p.bQhM1vEs2b.Kcwz6aoF7K', 'Who am I?', 'Jack Sparrow', '7815696ecbf1c96e6894b779456d330e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'umar@tuffah.info', '2014-12-13 19:45:41', 1, 2, '2015-02-19T03:36:38+08:00', 'ec623adec13773d99685c93053d3228e', 3, 1),
(8, 'default-img.jpg', 'umaq2', 'yahoo', 'umaq2', '$2a$08$2ggpYdm2QKSr.jxQmOZZWeWBRfe9X2KkieEJupD8UtsBjN4EPpEsO', 'What is my username?', 'umaq2', '0f616daf1cf7fe3f91c32ddfa8821ab5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kidzeclipes@yahoo.com', '2014-12-20 18:25:46', 1, 2, '2014-12-20T18:26:19+00:00', 'f7f886855bbfc7c9e5101df6e77794ce', 3, 1),
(9, 'default-img.jpg', 'pisang', 'admin', 'pisang', '$2a$08$pn2U5NZix1EOx/.IYmmaeOYnIdxL7faB39ElDFFulsyFVRuaoTm8q', 'What is my username?', 'a1', '8a8bb7cd343aa2ad99b7d762030857a2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pisang@dinarpal.com', '2014-12-28 07:27:16', 1, 2, '2015-02-11T23:32:46+08:00', '97669d6b22a790a5feb7f9c06f6e3d03', 1, 1),
(10, 'default-img.jpg', 'staff', 'bujang', 'staff', '$2a$08$60LE6Y86CP3V8y2filvJ7eB/0HqDk/gFNmjb4y0P.tXP83X/Y/3fy', 'What is my username?', 'b1', 'edbab45572c72a5d9440b40bcc0500c0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'staff@dinarpal.com', '2014-12-28 07:28:05', 1, 2, '2015-02-24T14:41:49+08:00', '9512afcb3f0fde463ddf8e476a76be16', 2, 1),
(11, 'default-img.jpg', 'hai', 'hehe', 'hai', '$2a$08$L1jcJUSk0LH97DOtYW7BW.v7YO93fHtPT6oVODJgbo0vkLGEMgNai', 'What is my username?', 'hai', '42810cb02db3bb2cbb428af0d8b0376e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lol@yahoo.com', '2015-02-10 16:48:20', 1, 1, NULL, '7fd1bc3083e54ac8254dc6ceb78d29b6', 3, 1);

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
-- Table structure for table `members_verification`
--

CREATE TABLE IF NOT EXISTS `members_verification` (
  `mv_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) NOT NULL,
  `mv_govissueid` varchar(200) DEFAULT NULL,
  `mv_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mv_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `members_verification`
--

INSERT INTO `members_verification` (`mv_id`, `me_id`, `mv_govissueid`, `mv_status`) VALUES
(1, 1, '1235434-m', 1);

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
  `pt_id` int(11) NOT NULL COMMENT 'pawn_type',
  `pa_status` int(11) DEFAULT '1',
  PRIMARY KEY (`pa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `pawn`
--

INSERT INTO `pawn` (`pa_id`, `me_id`, `pa_start_date`, `pa_end_date`, `am_id`, `pa_total_weight`, `pa_grand_total`, `pa_rahnu_rate`, `pa_safe_fee`, `pt_id`, `pa_status`) VALUES
(1, 1, '2014-11-30 14:31:40', '2015-05-29 14:31:40', 1, '522.75', '68480.25', '0.65', '373.41', 1, 1),
(2, 1, '2014-11-30 14:32:51', '2015-05-29 14:32:51', 1, '199.75', '26167.25', '0.55', '120.74', 1, 1),
(3, 1, '2014-11-30 14:42:07', '2015-05-29 14:42:07', 2, '51', '6681', '0.75', '42.03', 1, 1),
(4, 1, '2014-12-12 13:42:27', '2015-06-10 13:42:27', 1, '12.75', '1670.25', '0.8', '8.28', 1, 1),
(5, 1, '2014-12-15 14:50:35', '2015-06-13 14:50:35', 1, '34', '4454', '0.8', '20.09', 1, 1),
(6, 1, '2015-01-07 17:22:37', '2015-07-06 17:22:37', 1, '55.25', '7237.75', '0.8', '31.85', 1, 1),
(7, 1, '2015-01-14 18:04:14', '2015-07-13 18:04:14', 1, '42.5', '5567.5', '0.75', '22.97', 1, 1),
(8, 1, '2015-01-20 00:23:34', '2015-07-19 00:23:34', 1, '25.5', '3340.5', '0.8', '0', 1, 1),
(9, 1, '2015-01-27 04:23:10', '2015-07-27 04:23:10', 1, '85', '11171.55', '75', '0.00', 1, 1),
(10, 1, '2015-01-27 05:04:45', '2015-07-27 05:04:45', 1, '165.75', '21784.53', '5', '0.00', 1, 1),
(11, 1, '2015-01-27 05:08:20', '2015-07-27 05:08:20', 2, '17', '2234.31', '6.5', '0.00', 1, 1),
(12, 1, '2015-01-27 05:23:26', '2015-07-27 05:23:26', 1, '89.25', '11730.13', '0.55', '0.00', 1, 1),
(13, 8, '2015-01-27 05:44:08', '2015-07-27 05:44:08', 1, '4.25', '558.58', '0.5', '0.00', 1, 1),
(14, 8, '2015-01-27 12:31:54', '2015-07-27 12:31:54', 1, '55.25', '7261.51', '0.6', '0.00', 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

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
(10, 6, 1, '3', 1),
(11, 6, 2, '2', 1),
(12, 7, 3, '1', 1),
(13, 8, 1, '6', 1),
(14, 9, 1, '5', 1),
(15, 9, 2, '3', 1),
(16, 9, 1, '', 1),
(17, 9, 1, '', 1),
(18, 9, 1, '', 1),
(19, 10, 1, '9', 1),
(20, 10, 3, '3', 1),
(21, 11, 1, '4', 1),
(22, 12, 1, '6', 1),
(23, 12, 2, '3', 1),
(24, 13, 1, '1', 1),
(25, 14, 2, '2', 1),
(26, 14, 1, '3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pawn_type`
--

CREATE TABLE IF NOT EXISTS `pawn_type` (
  `pt_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_code` varchar(200) NOT NULL,
  `pt_name` varchar(200) NOT NULL,
  PRIMARY KEY (`pt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
  `pt_id` int(11) NOT NULL COMMENT 'payment_type',
  `at_id` int(11) NOT NULL,
  `ft_id` int(11) NOT NULL,
  `tr_notes` varchar(500) DEFAULT NULL,
  `tr_datetime` datetime NOT NULL,
  `ba_id` int(11) NOT NULL,
  `tt_id` int(11) NOT NULL,
  `ts_id` int(11) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tr_id`, `me_id_from`, `me_id_to`, `tr_amount`, `pt_id`, `at_id`, `ft_id`, `tr_notes`, `tr_datetime`, `ba_id`, `tt_id`, `ts_id`) VALUES
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
(12, 1, 0, '8.28', 0, 1, 3, NULL, '2015-01-15 08:41:26', 0, 1, 2),
(13, 1, 0, '22.97', 0, 1, 3, NULL, '2015-01-15 08:43:08', 0, 1, 2),
(14, 1, 0, '31.85', 0, 1, 3, NULL, '2015-01-15 08:43:11', 0, 1, 2),
(15, 1, 0, '20.09', 0, 1, 3, NULL, '2015-01-15 08:43:13', 0, 1, 2),
(16, 1, 0, '42.03', 0, 1, 3, NULL, '2015-01-15 08:43:15', 0, 1, 2),
(17, 1, 0, '120.74', 0, 1, 3, NULL, '2015-01-15 08:43:17', 0, 1, 2),
(18, 1, 0, '373.41', 0, 1, 3, NULL, '2015-01-15 08:43:20', 0, 1, 2),
(19, 1, 7, '123', 2, 2, 4, '', '2015-02-19 03:23:45', 0, 1, 1),
(20, 7, 1, '119', 2, 2, 4, '', '2015-02-19 03:26:11', 0, 1, 1),
(21, 1, 7, '4', 2, 2, 4, '', '2015-02-19 03:36:29', 0, 1, 1);

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
