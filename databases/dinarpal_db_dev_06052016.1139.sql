-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 06, 2016 at 05:39 AM
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
  `adc_status` int(11) NOT NULL DEFAULT '1',
  `adc_type` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
  `am_image` varchar(500) DEFAULT NULL,
  `am_name` varchar(200) NOT NULL,
  `am_phone` varchar(200) DEFAULT NULL,
  `am_email` varchar(200) DEFAULT NULL,
  `am_address` varchar(500) DEFAULT NULL,
  `am_whatsapp` varchar(200) DEFAULT NULL,
  `am_status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amil`
--

INSERT INTO `amil` (`am_id`, `am_image`, `am_name`, `am_phone`, `am_email`, `am_address`, `am_whatsapp`, `am_status`) VALUES
(3, 'default-img.jpg', 'God Admin bujang', '0199737579', 'staff@dinarpal.com', NULL, '0199737579', 1);

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
  `ba_name` varchar(200) DEFAULT NULL,
  `ba_addinfo` varchar(500) DEFAULT NULL,
  `ba_status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`ba_id`, `ba_name`, `ba_addinfo`, `ba_status`) VALUES
(10, 'Maybank Sdn Bhd', NULL, 1),
(11, 'CIMB Bank bhd', NULL, NULL),
(12, 'Public Bank Berhad', NULL, NULL),
(13, 'Bank Islam ', NULL, NULL),
(14, 'RHB Bank', NULL, NULL),
(15, 'AmBank', NULL, NULL),
(16, 'Affin Bank Berhad', NULL, NULL),
(17, 'HSBC Bank Malaysia Berhad', NULL, NULL),
(18, 'Alliance Bank Malaysia Berhad', NULL, NULL),
(19, 'Hong Leong Bank Berhad', NULL, NULL),
(20, 'OCBC Bank (Malaysia) Berhad', NULL, NULL),
(21, 'Citibank Berhad ', NULL, NULL),
(22, 'Bank Muamalat Malaysia Berhad', NULL, NULL),
(23, 'Bank Simpanan Nasional', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banks_branch_info`
--

CREATE TABLE IF NOT EXISTS `banks_branch_info` (
  `bbi_id` int(11) NOT NULL,
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
  `bbi_status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2446 DEFAULT CHARSET=latin1;

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
(888, 12, 3, '24-26, Jalan 1A/27A,  Section 1, Wangsa Maju,  ', 'Kuala Lumpur  ', '53300 ', 'Kuala Lumpur ', '03-41428577, 03-41428579', NULL, NULL, NULL, NULL),
(889, 12, 3, '21 & 22, Rumahkedai LKNP ', 'Benta ', '27300 ', 'Pahang  ', '09-323 8622 , 09-323 8621', NULL, NULL, NULL, NULL),
(890, 12, 3, 'MDCH 41-43, Bandar Baru Brinchang,  ', 'Brinchang, Cameron Highlands, ', '39100 ', ' Pahang', '05-4911590 , 05-4912682', NULL, NULL, NULL, NULL),
(891, 12, 3, '1 & 2 Jalan Inderapura, Bandar Inderapura, ', 'Jerantut,  ', '27000 ', 'Pahang', '09-2661972, 2661917 & 2662351', NULL, NULL, NULL, NULL),
(892, 12, 3, '79 - 85, Jalan Haji Abdul Aziz,', 'Kuantan,', ' 25000 ', '  Pahang ', '09-5179822 , 09-5178288', NULL, NULL, NULL, NULL),
(893, 12, 3, '11 & 12, Jalan Ahmad Shah, Bandar Sri Semantan, ', 'Temerloh,  ', '28000 ', 'Pahang  ', '09-2965652, 09-2965662 & 09-2965653', NULL, NULL, NULL, NULL),
(894, 12, 3, '25-27, Jalan Chui Yin,', 'Bentong, ', ' 28700 ', 'Pahang  ', ' 09-222 5653 , 09-2225659', NULL, NULL, NULL, NULL),
(895, 12, 3, 'Lot F/L 1.2, First World Hotel, Genting Highlands Resort, ', 'Genting Highlands,  ', '69000 ', 'Pahang  ', '03-64360088 , 03-64360145', NULL, NULL, NULL, NULL),
(896, 12, 3, '30 & 32, Ground Floor, Jalan Besar,', 'Kemayan, ', ' 28380 ', 'Pahang ', '09-2409 824 , 09-2409 866', NULL, NULL, NULL, NULL),
(897, 12, 3, '16 - 18, Jalan Bunga Matahari,', 'Mentakab,', ' 28400 ', ' Pahang ', '09-2775800 , 09-2775801', NULL, NULL, NULL, NULL),
(898, 12, 3, '38 & 39, Jalan Temerloh, ', ' Triang,  ', ' 28300', 'Pahang', ' 09-2553480 , 09-2553481', NULL, NULL, NULL, NULL),
(899, 12, 3, '7th Floor, Resorts Hotel Genting Highlands Resort ', 'Genting Highlands, ', '69000 ', 'Pahang ', '03-6101 1237', NULL, NULL, NULL, NULL),
(900, 12, 3, 'A379/1, A379/2, A379/3 & A379/4, Jalan Beserah,  ', ' Kuantan,  ', '25300', 'Pahang ', '09-5688088, 09-5678461', NULL, NULL, NULL, NULL),
(901, 12, 3, '5G & 5H, Jalan Pekeliling', 'Kuala Lipis, ', ' 27200 ', ' Pahang ', '09-3122 077', NULL, NULL, NULL, NULL),
(902, 12, 3, '18 & 19, Bandar Raub Perdana Jalan Lipis,  ', 'Raub,  ', '27600 ', 'Pahang  ', '09-3553471, 09-355 3502', NULL, NULL, NULL, NULL),
(903, 12, 3, 'KCP 1  Kemaman Centre Point ', ' Kemaman ', '24000', ' Terengganu ', '09-8595 962 /09-8594 069', NULL, NULL, NULL, NULL),
(904, 12, 3, 'K-156 & K-157  Jalan Paka Batu 48  ', 'Kuala Dungun  ', '23000 ', 'Terengganu', '09-8482 511', NULL, NULL, NULL, NULL),
(905, 12, 3, '1849  Bangunan Wisma Maju Jalan Sultan Ismail ', 'Kuala Terengganu ', '20200 ', 'Terengganu ', '09-6226 122 / 016', NULL, NULL, NULL, NULL),
(906, 12, 3, '42, Jalan Besar ', 'Gua Musang ', '18300 ', 'Kelantan', '09-912 2600, 09-912 2602', NULL, NULL, NULL, NULL),
(907, 12, 3, '443 - 444,  Jalan Dato` Nik Mustapha,  ', 'Tanah Merah,  ', '17500 ', 'Kelantan  ', '09-9556244 , 09-9556139', NULL, NULL, NULL, NULL),
(908, 12, 3, 'PT Nos. 272, 282, 283, 284 & 285 Jalan Kebun Sultan ', 'Kota Bharu ', '15300 ', 'Kelantan  ', '09-7447143, 09-7446944', NULL, NULL, NULL, NULL),
(909, 12, 3, '6, 7, 8 & 9, Wakaf Siku, Jalan Sultan Yahya Petra, ', ' Kota Bharu, ', '15200', 'Kelantan  ', '09-747 0111', NULL, NULL, NULL, NULL),
(910, 12, 3, '91 & 92, Jalan Chin Hua,  ', 'Kuala Krai, ', '18000 ', 'Kelantan', '09-9664027 , 09-9664028', NULL, NULL, NULL, NULL),
(911, 13, 3, 'xPT380 & 381 Bandar Baru Tunjong Jalan Kuala Krai', ' Kota Bharu', ' 15100', ' Kelantan ', '09-743 0190/ 09-743 0192', NULL, NULL, NULL, NULL),
(912, 13, 3, 'PT 8281 & PT 8282 Wisma Sri Galas ', 'Gua Musang ', '18300 ', 'Kelantan', '09-912 2003', NULL, NULL, NULL, NULL),
(913, 13, 3, 'No. 3486-P Jalan Sultan Ibrahim ', 'Kota Bharu ', '15050 ', 'Kelantan', '09-743 4020/ 09-743 4030', NULL, NULL, NULL, NULL),
(914, 13, 3, 'No. 72, Seksyen 25 Jalan Sultan Yahya Petra ', 'Kota Bharu ', '15720 ', 'Kelantan ', ' 09-741 9222/ 09-741 9333', NULL, NULL, NULL, NULL),
(915, 13, 3, 'No. 36 & 37 Jalan Sultan Yahya Petra', 'Kuala Krai ', ' 18000 ', 'Kelantan', ' 09-966 4627 / 09-960 3004', NULL, NULL, NULL, NULL),
(916, 13, 3, 'Tingkat Bawah PT 1540, 1541 & 1542 Persiaran KK 6, Jalan Raja Perempuan Zainab II Bandar Baru Kubang Kerian', 'Kota Bharu ', ' 16150 ', 'Kelantan ', '09-764 0052 / 09-764 0058', NULL, NULL, NULL, NULL),
(917, 13, 3, 'No. 26 & 27, Pasar Baru  Jalan Tanjung ', 'Machang ', '18500 ', 'Kelantan', '09-975 2800', NULL, NULL, NULL, NULL),
(918, 13, 3, 'Lot 4142, Jalan Tasik ', ' Tanah Merah ', '17500', 'Kelantan', '09-955 8341', NULL, NULL, NULL, NULL),
(919, 13, 3, 'Lot PT 346, Tingkat Bawah Mukim Bandar Kecil Rantau Panjang ', 'Rantau Panjang', '17200 ', ' Kelantan ', '09-795 0077/09-795 2768 ', NULL, NULL, NULL, NULL),
(920, 13, 3, 'No. 8033 & 8034 Bandar Satelit Islam Pasir Tumboh  Jalan Pasir Puteh ', 'Kota Bharu ', '16150 ', 'Kelantan  ', '09-764 4077', NULL, NULL, NULL, NULL),
(921, 13, 3, 'Lot No. 493, Section 1 Bandar Pasir Puteh ', 'Pasir Puteh ', '16800 ', 'Kelantan ', '09-786 0061 / 09-786 0062', NULL, NULL, NULL, NULL),
(922, 13, 3, 'Tingkat Bawah & Mezzanine No. 41 & 42 Jalan Tengku Ahmad ', 'Pasir Mas ', '17000 ', 'Kelantan', '09-790 0750        09-790 0751', NULL, NULL, NULL, NULL),
(923, 13, 3, 'PT 433 & 434 Jalan Padang Garong  ', 'Kota Bharu ', '15000 ', 'Kelantan ', '09-747 1867        09-747 9313', NULL, NULL, NULL, NULL),
(924, 13, 3, 'PT16096 - PT16098 Jalan Kubang Kurus ', 'Kemaman ', '24000 ', 'Terengganu ', '09-859 9999        09-859 9997', NULL, NULL, NULL, NULL),
(925, 13, 3, 'Tingkat Bawah & Satu Lot 7928 & 7929 Jalan Baru Pak Sabah ', 'Dungun ', '23000 ', 'Terengganu ', '09-848 5498 / 09-845 3302', NULL, NULL, NULL, NULL),
(926, 13, 3, 'No. F-18 Giant Hypermarket Kuala Terengganu Jalan Padang Hiliran ', 'Cabang Tiga Kuala Terengganu ', '21000 ', 'Terengganu  ', '09-631 3533        09-631 8354', NULL, NULL, NULL, NULL),
(927, 13, 3, 'Tingkat Bawah & Satu Lot 1128, Bangunan Majlis Agama Islam & Adat  Melayu Terengganu  Jalan Banggol, Peti Surat 205 ', 'Kuala Terengganu ', '20720 ', 'Terengganu ', '09-622 4730 /  09-622 4744 / 09-622 4754', NULL, NULL, NULL, NULL),
(928, 13, 3, 'Tingkat Bawah & Satu Lot 180 & 181 Jalan Tuan Hitam ', 'Jerteh ', '22000 ', 'Terengganu ', '09-697 3388        09-697 1672', NULL, NULL, NULL, NULL),
(929, 13, 3, 'Tingkat Bawah & Satu MT 1357 & 1358 Kompleks Perniagaan Masjid Tanah ', 'Masjid Tanah', '78300 ', ' Melaka ', ' 06-384 5108, 06-384 8340', NULL, NULL, NULL, NULL),
(930, 13, 3, 'JC 526 & JC 527 Tingkat Bawah Jalan Bestari 5 Bandar Jasin Bestari Seksyen 2 ', 'Jasin ', '77200 ', 'Melaka', '06-529 5301, 06-529 5302', NULL, NULL, NULL, NULL),
(931, 13, 3, 'Lot G1, G2 & G3 Wisma Air Jalan Hang Tuah ', 'Melaka', '75300 ', 'Melaka ', '06-284 1366,06-284 1367', NULL, NULL, NULL, NULL),
(932, 13, 3, 'No. 1 & 3, Jalan KF4 Kota Fesyen MITC Hang Tuah Jaya ', 'Ayer Keroh ', '75450 ', 'Melaka', '06-232 0986, 06-232 1273', NULL, NULL, NULL, NULL),
(933, 13, 3, ' Lot E7 & E8 Public Concourse Aero Mall Senai International Airport ', 'Johor Bahru ', '81250 ', 'Johor', '07-598 5975 /  07-598 5977', NULL, NULL, NULL, NULL),
(934, 13, 3, 'Bangunan Pusat Penerangan Pelancongan Jalan Dato'' Onn 1 ', 'Bandar Penawar Kota Tinggi', '81930 ', ' Johor   ', '07-822 2802,07-822 2803', NULL, NULL, NULL, NULL),
(935, 13, 3, 'No. 91-5 & 91-6  Jalan Rahmat  ', 'Batu Pahat  ', '83000 ', 'Johor  ', '07-431 9350 , 07-431 9352', NULL, NULL, NULL, NULL),
(936, 13, 3, 'Tingkat Bawah  Menara Tabung Haji Jalan Ayer Molek ', 'Johor Bahru ', ' 80000 ', 'Johor  ', '07-223 7030 ,  07-223 7031', NULL, NULL, NULL, NULL),
(937, 13, 3, 'No. 50 Jalan Sri Putra 1  Bandar Putra ', 'Kulai  ', '81000 ', 'Johor', ' 07-663 5204        07-663 5205', NULL, NULL, NULL, NULL),
(938, 13, 3, 'No. 14C & 14D  Jalan Tun Habab  ', 'Kota Tinggi  ', '81900 ', 'Johor', '07-883 8800 , 07-883 5582', NULL, NULL, NULL, NULL),
(939, 13, 3, 'No. 46 & 48  Bangunan Tabung Haji  Jalan Dato’ Kapten Ahmad ', ' Kluang  ', '86000', 'Johor ', '07-772 6423 ,  07-772 6417', NULL, NULL, NULL, NULL),
(940, 13, 3, 'L1-18 Level 1  Galleria@Kotaraya Jalan Trus  ', 'Johor Bahru ', '80000 ', ' Johor', '07-224 0242  , 07-224 0244', NULL, NULL, NULL, NULL),
(941, 13, 3, 'Tingkat Bawah & Tingkat 1  No. 43 & 44 Jalan Jeti  Bandar Tepian Sungai  ', 'Mersing  ', '86800 ', 'Johor', ' 07-799 5076 , 07-799 6606', NULL, NULL, NULL, NULL),
(942, 13, 3, 'Tingkat Bawah & Mezzanine No. 75-4 & 75-5  Jalan Arab ', 'Muar  ', ' 84000 ', 'Johor ', '06-952 8301 , 06-952 8302', NULL, NULL, NULL, NULL),
(943, 13, 3, 'Tingkat Bawah & Satu Lot 112719, No. 11  Pusat Perdagangan Pasir Gudang Jalan Bandar  ', 'Pasir Gudang  ', '81700 ', 'Johor ', '07-252 6671        07-252 6672', NULL, NULL, NULL, NULL),
(944, 13, 3, 'Tingkat Bawah & Satu  No. 29 Jalan Delima  Pusat Perdagangan Pontian', 'Pontian  ', ' 82000 ', 'Johor ', '07-688 1909        07-688 2259', NULL, NULL, NULL, NULL),
(945, 13, 3, 'No. 8 & 10  Jalan Padi Emas 5/2  Bandar Baru Uda  ', 'Johor Bahru ', '81200 ', 'Johor', '07-234 5228,  07-234 5229', NULL, NULL, NULL, NULL),
(946, 13, 3, 'No. 33 Indah Walk 2  Jalan Indah 15/2  Taman Bukit Indah  ', ' Johor Bahru  ', '81200', 'Johor ', '07-239 5977 ,  07-239 5978', NULL, NULL, NULL, NULL),
(947, 13, 3, 'No. 48 & 49  Jalan Genuang  ', 'Segamat  ', '85000 ', 'Johor', '07-932 4257,  07-932 2901', NULL, NULL, NULL, NULL),
(948, 13, 3, 'No. 122 & 123 Jalan Mewah ', 'Bahau ', '72100 ', 'Negeri Sembilan ', '06-4553008, 06-4553001, 06-4553002', NULL, NULL, NULL, NULL),
(949, 13, 3, 'No. 1001 & 1002 Jalan Bandar ', 'Port Dickson', '71000 ', ' Negeri Sembilan ', '06-6471398, 06-6461013, 06-6461016', NULL, NULL, NULL, NULL),
(950, 13, 3, 'Unit 5-G, 5-1 & 6-G, 6-1 Bank Islam Business Centre Jalan Pasar ', 'Seremban ', '70000 ', 'Negeri Sembilan ', '06-7647735, 06-7647734, 06-7647742', NULL, NULL, NULL, NULL),
(951, 13, 3, 'Lot 3395 & 3396  Jalan Besar ', 'Mantin ', '71700 ', 'Negeri Sembilan', ' 06-7581240, 06-7583631, 06-7583630', NULL, NULL, NULL, NULL),
(952, 13, 3, 'No 3820 &3821;, Ground Floor Jalan RJ 6/8 Taman Rasah Jaya ', 'Seremban', '70300 ', ' Negeri Sembilan ', '06-6328463, 06-6328420', NULL, NULL, NULL, NULL),
(953, 13, 3, 'No. 22 & 23  Jalan Dato'' Lee Fong Yee ', 'Seremban ', '70000 ', 'Negeri Sembilan ', '06-7678894, 06-7624463, 06-7636988', NULL, NULL, NULL, NULL),
(954, 13, 3, 'Lot PT 7435 & 7436 Jalan BBN 1/2f Putra Point 1, Bandar Baru Nilai ', 'Nilai ', '71800 ', 'Negeri Sembilan ', '06-794 0412, 06-794 0413, 06-794 0414', NULL, NULL, NULL, NULL),
(955, 13, 3, 'Lot 77 & 78, Bandar Pasaraya Mile 4, North Road ', 'Sandakan ', '90000 ', 'Sabah ', '089-218240, 089-213419', NULL, NULL, NULL, NULL),
(956, 13, 3, 'No. G1-G3 Bangunan Uni. Asia No. 1, Jalan Sagunting PO Box 11455 ', 'Kota Kinabalu ', '88816 ', 'Sabah', '088-246112, 088-234458, 088-243725', NULL, NULL, NULL, NULL),
(957, 13, 3, 'Lot 9 & 10, Sedco Building, Jalan Melor P.O.Box 344 ', 'Kudat', '89058 ', ' Sabah  ', '088-613255, 088-612301, 088-613194', NULL, NULL, NULL, NULL),
(958, 13, 3, 'Lot 13 & 14 Sabindo Square Jalan Dunlop ', 'Tawau ', '91007 ', 'Sabah', '089-770430, 089-764905, 089-764932', NULL, NULL, NULL, NULL),
(959, 13, 3, 'Ground Floor, Lot 9, Block 4 Jalan Teo On', 'Tuaran ', ' 89200 ', 'Sabah', '088-792900, 088-792901', NULL, NULL, NULL, NULL),
(960, 13, 3, 'MDLD A154 & 155 Block 24, Sedco Shophouse ', ' Lahad Datu ', '91100', 'Sabah ', '089-881561, 089-881562, 089-884992', NULL, NULL, NULL, NULL),
(961, 13, 3, 'Ground Floor, Wisma SESB Jalan Tunku Abdul Rahman', 'Kota Kinabalu ', ' 88673 ', 'Sabah', '088-265657, 088-265643', NULL, NULL, NULL, NULL),
(962, 13, 3, 'ot 11 & 12, Block F Inanam New Towship ', 'Kota Kinabalu ', '89357 ', 'Sabah ', '088-421534, 088-427851', NULL, NULL, NULL, NULL),
(963, 13, 3, 'Lot 32-34, Blok HS-3 Sandakan Harbour Square, Phase 2 Jln Pryer ', 'Sandakan ', '90000 ', 'Sabah', '089-212627, 089-215332', NULL, NULL, NULL, NULL),
(964, 13, 3, 'Ground & 1st Floor, Lot 41 & 42, Blok D, Luyang Commercial Centre Lorong Pokok Kayu Manis 1, Jalan Damai Luyang ', 'Kota Kinabalu ', '88300 ', 'Sabah ', ' 088-280164, 088-280162, 088-280160', NULL, NULL, NULL, NULL),
(965, 13, 3, 'Lot 41 & 42, Ground & First Floor Adika Commercial Complex ', 'Keningau ', '90007 ', 'Sabah', '087-331393, 087-33745, 087-331088', NULL, NULL, NULL, NULL),
(966, 13, 3, 'No. 195 & 196, Lot 3743  Bintulu Park City Commercial Centre  Jalan Tun Ahmad Zaidi  ', 'Bintulu  ', '97000 ', 'Sarawak ', '086-337 413 , 086-337 418', NULL, NULL, NULL, NULL),
(967, 13, 3, 'No. 1-3 Blok 1  Desa Ilmu Commercial Centre Jalan Datuk Musa  ', ' Kota Samarahan ', '94300', 'Sarawak ', '082-662 616 ,  082-662 617', NULL, NULL, NULL, NULL),
(968, 13, 3, 'Lot 433 434 & 435  Seksyen 11  KTLD Bangunan Tuanku Muhamad Al-Idrus  Jalan Kulas  ', 'Kuching ', '93400 ', ' Sarawak', '082-412 259        082-413 229', NULL, NULL, NULL, NULL),
(969, 13, 3, 'No. 1 (Ground & 1st Floor) & No. 2 (Ground Floor)  Lorong Kampung Datu 3 ', 'Sibu  ', '96000 ', 'Sarawak ', '084-327 140 ,  084-327 141', NULL, NULL, NULL, NULL),
(970, 13, 3, 'No. 1257 & 1258, Blok 9  Centre Point Commercial District Jalan Melayu ', 'Miri ', ' 98000 ', ' Sarawak', '085-415 422, 085-415 424', NULL, NULL, NULL, NULL),
(971, 13, 3, 'Lot 49 & 51 Lorong Seruling Off Jalan Raja Syed Alwi P.O. Box 30 ', 'Kangar ', '01700 ', 'Perlis', '04-976 3711 / 3712 ', NULL, NULL, NULL, NULL),
(972, 13, 3, 'No. 18, 18A & 18B Jalan PPZ 1 Pusat Perniagaan Zamrud ', 'Sungai Petani ', '08000 ', 'Kedah ', '04-422 0061, 04-422 0062', NULL, NULL, NULL, NULL),
(973, 13, 3, 'Varsity Mall Universiti Utara Malaysia ', 'Sintok ', '06010 ', 'Kedah ', '04-924 6271, 04-924 6272', NULL, NULL, NULL, NULL),
(974, 13, 3, 'Lot 71 & 72 Jalan Lagenda 1 Lagenda Height ', 'Sungai Petani ', '08000 ', 'Kedah ', '04-422 0620, 04-422 0621', NULL, NULL, NULL, NULL),
(975, 13, 3, 'Tingkat Bawah Bangunan Tabung Haji Lot 1598, Pokok Asam Kuah', 'Langkawi ', ' 07000 ', 'Kedah', '04-966 2463,04-966 2464', NULL, NULL, NULL, NULL),
(976, 13, 3, 'No. 165 & 166 Kompleks Perniagaan Sultan Abdul Hamid Fasa 2 Susuran Sultan Abdul Hamid 11 Persiaran Sultan Abdul Hamid ', 'Alor Setar ', '05050 ', 'Kedah ', '04-772 8800, 04-772 5818', NULL, NULL, NULL, NULL),
(977, 13, 3, 'Lot 185 & 186 Taman Angsana Jalan Angsana 9 ', ' Pokok Sena ', '06400', 'Kedah ', '04-782 1033, 04-782 1034', NULL, NULL, NULL, NULL),
(978, 13, 3, 'No. 1 Kompleks Perniagaan Utama Jalan Sultanah Sambungan', 'Alor Setar ', ' 05150 ', 'Kedah', '04-733 5126, 04-733 5136', NULL, NULL, NULL, NULL),
(979, 13, 3, 'Tingkat Bawah, Lot B Bangunan Tabung Haji Baling Jalan Bandar Baru', 'Baling ', ' 09100 ', 'Kedah ', '04-470 1678, 04-470 0248', NULL, NULL, NULL, NULL),
(980, 13, 3, 'Lot No. 00681 Jalan Besar Bangunan Tabung Haji ', 'Guar Chempedak ', '08800 ', 'Kedah ', '04-468 0880, 04-468 4827', NULL, NULL, NULL, NULL),
(981, 13, 3, 'No. 64 & 65 Kompleks Jitra Jalan Sungai Korok', 'Jitra ', ' 06000 ', 'Kedah', '04-917 4404, 04-917 1151', NULL, NULL, NULL, NULL),
(982, 13, 3, 'No. 23 & 24, Persiaran 1 Taman Kulim Avenue Kulim Hi-Tech ', ' Kulim ', '09000', 'Kedah ', '04-403 3300, 04-403 3003', NULL, NULL, NULL, NULL),
(983, 13, 3, 'No. 126 & 128 Jalan Setia Pusat Bandar Bagan Serai ', 'Bagan Serai', '34300 ', ' Perak ', '05-721 8509 , 05-721 8513', NULL, NULL, NULL, NULL),
(984, 13, 3, 'Tingkat Bawah Kompleks Islam Darul Ridzuan Jalan Panglima Bukit  Gantang Wahab Peti Surat 671 ', 'Ipoh ', '30770 ', 'Perak', '05-255 3866 ,  05-255 3867', NULL, NULL, NULL, NULL),
(985, 13, 3, 'No. 21 & 23 Jalan Taman Meru Utama A1 Medan Meru Utama ', ' Ipoh ', '30020', 'Perak', '05-527 7701, 05-527 7702', NULL, NULL, NULL, NULL),
(986, 13, 3, 'xNo. 1 & 2, Bangunan YPEIM Jalan Kelichap Pekan Baru Parit Buntar ', 'Parit Buntar', '34200 ', ' Perak  ', '05-716 4493 ,  05-716 4494', NULL, NULL, NULL, NULL),
(987, 13, 3, 'Ground Floor No. 21 & 22 Persiaran SIBC 2 ', 'Bandar Seri Iskandar ', '32610 ', 'Perak  ', ' 05-371 6020 ,  05-371 6021', NULL, NULL, NULL, NULL),
(988, 13, 3, 'xNo. 5002, 5003, 5004 & 5006 Blok A, Kompleks SKOMK Jalan Mahkamah ', 'Teluk Intan ', '36000 ', 'Perak', '05-622 1700        05-622 1200', NULL, NULL, NULL, NULL),
(989, 13, 3, 'Tingkat Bawah & Satu No. 33 & 35 Jalan Bunga Anggerik ', 'Tanjung Malim ', '35900 ', 'Perak  ', '05-459 8237 ,  05-459 5127,  05-459 5125', NULL, NULL, NULL, NULL),
(990, 13, 3, 'Tingkat Bawah & Satu Lot 29 & 30 Pusat Perniagaan Tupai ', ' Taiping ', '34000', 'Perak ', '05-806 5441 ,  05-806 5442', NULL, NULL, NULL, NULL),
(991, 13, 3, 'Tingkat Bawah & Satu No. 2408, Taman Samudera ', 'Sri Manjung ', '32040 ', 'Perak ', '05-688 1227 , 05-688 9071', NULL, NULL, NULL, NULL),
(992, 13, 3, 'Lot No. C49 & C50 Jalan Tengku Ismail ', 'Temerloh ', '28000 ', 'Pahang ', '09-296 5301, 09-296 3222, 09-296 1416', NULL, NULL, NULL, NULL),
(993, 13, 3, 'Lot 16474 & 16475 Pusat Perniagaan Inderapura Jalan Tras ', 'Raub ', '27600 ', 'Pahang ', ' 09-355 8300, 09-355 8301', NULL, NULL, NULL, NULL),
(994, 13, 3, 'No. 1, Jalan Putra Square 2 Putra Square ', 'Kuantan ', '25200 ', 'Pahang', '09-517 3225, 09-517 3229', NULL, NULL, NULL, NULL),
(995, 13, 3, 'No. 1 & 2 Lot 61, Section 7 Jalan Engku Muda Mansor ', 'Pekan ', '26600 ', 'Pahang ', '09-422 8622, 09-422 8922', NULL, NULL, NULL, NULL),
(996, 13, 3, 'No. G-05, G-06 & G-07 Mahkota Square Jalan Mahkota ', 'Kuantan ', '25000 ', 'Pahang', '09-513 3366, 09-513 3367', NULL, NULL, NULL, NULL),
(997, 13, 3, 'No. 2 & 3, Tingkat Bawah Jalan Cemara Utama Taman Rompin Jaya Fasa 3 ', 'Kuala Rompin ', '26800 ', 'Pahang ', ' 09-414 6064, 09-414 6065', NULL, NULL, NULL, NULL),
(998, 13, 3, 'No. 4, Lorong Dulang 1 Bandar Baru Jerantut ', 'Jerantut ', '27000 ', 'Pahang ', '09-266 6120, 09-266 6121', NULL, NULL, NULL, NULL),
(999, 13, 3, 'No. 33 & 34 Kedai 36 Unit LKWJ Nadi Kota ', 'Bandar Jengka ', '26400 ', 'Pahang ', '09-466 2890, 09-466 2871', NULL, NULL, NULL, NULL),
(1000, 13, 3, 'Lot No. 112 & 113 Medan Mewah ', ' Muadzam Shah ', '26700', 'Pahang ', '09-452 3175, 09-452 5175', NULL, NULL, NULL, NULL),
(1001, 13, 3, 'Tingkat Bawah No. 2146 & 2147 Jalan Bertam ', 'Kepala Batas ', '13200 ', 'Pulau Pinang ', '04-575 5517, 04-575 5579', NULL, NULL, NULL, NULL),
(1002, 13, 3, 'Tingkat Bawah Wisma Great Eastern Light Street Peti Surat 1204 ', 'Georgetown', '10200 ', ' Pulau Pinang', '04-262 4724, 04-262 4933', NULL, NULL, NULL, NULL),
(1003, 13, 3, 'No. 71 & 73 Jalan Taman Selat Off Jalan Bagan Luar Peti Surat 303 ', 'Butterworth', '12720 ', ' Pulau Pinang', '04-331 2357, 04-331 2358', NULL, NULL, NULL, NULL),
(1004, 13, 3, 'No. 3 & 5 Persiaran Mahsuri 1/3 Sunway Tunas ', 'Bayan Baru ', '11900 ', 'Pulau Pinang', '04-642 5094, 04-642 5095', NULL, NULL, NULL, NULL),
(1005, 13, 3, 'Tingkat Bawah No. 32 & 34 Jalan Perda Selatan Bandar Perda ', 'Bukit Mertajam ', '14000 ', 'Pulau Pinang', '04-540 3150, 04-540 3151', NULL, NULL, NULL, NULL),
(1006, 13, 3, 'No. 1 & 3, Jalan Pandan Prima 2, Dataran Prima Ampang, ', 'Ampang, ', '68000 ', 'Selangor', '03-9200 4389 / 4392 / 4497', NULL, NULL, NULL, NULL),
(1007, 13, 3, 'A-G-01 & A-1-01, Block A No. 2, Jalan PJU 1A/7A Ara Damansara, PJU 1A ', ' Petaling Jaya ', '47301', 'Selangor', '03-7846 0557 / 1165 / 1347', NULL, NULL, NULL, NULL),
(1008, 13, 3, 'No. 2 & 4, Jalan 6C/7, ', 'Bandar Baru Bangi, ', '43650 ', 'Selangor', '03-8925 8490 / 8491 / 8492', NULL, NULL, NULL, NULL),
(1009, 13, 3, 'No. 1, Jalan Mahogani 5, Bandar Botanic, ', 'Klang, ', '41200 ', 'Selangor', '03-3324 7132/ 7623/ 8671', NULL, NULL, NULL, NULL),
(1010, 13, 3, 'ZP-G-13A, ZP-G-15 & ZP-1-15, Lebuhraya Bukit Jalil, Bandar Kinrara 9, ', 'Puchong, ', '47180 ', 'Selangor', '03-8079 1601 / 1602 / 1603', NULL, NULL, NULL, NULL),
(1011, 13, 3, 'No. 2 & 6, Jalan Cemerlang 2, Banting Business Centre, ', 'Banting, ', '42700 ', 'Selangor', '03-3187 3772 / 3181 4772 / 3776', NULL, NULL, NULL, NULL),
(1012, 13, 3, 'No. 10, D’bayu, Jalan Serambi U8/24, Bukit Jelutong, ', 'Shah Alam, ', '40150 ', 'Selangor', '03-7847 3710 / 3711 / 3712', NULL, NULL, NULL, NULL),
(1013, 13, 3, 'Suite 0-55 & 0-56, 4812 Central Business District Perdana 2, Jalan Perdana, Cyber 12, ', ' Cyberjaya, ', '63000', 'Selangor', '03-8319 3491 / 3492 / 3493', NULL, NULL, NULL, NULL),
(1014, 13, 3, 'No. 20 & 21, Jalan Jeloh 3, ', 'Kajang,', '43000 ', ' Selangor', '03-8736 0798 / 1773 / 2185', NULL, NULL, NULL, NULL),
(1015, 13, 3, 'A-G-01, Jalan SS6/5A, Dataran Glomac, Pusat Bandar Kelana Jaya, ', ' Petaling Jaya,', '47301', ' Selangor', '03–7806 2955 / 2946 / 7803 8190', NULL, NULL, NULL, NULL),
(1016, 13, 3, 'Lot 336, Kompleks Majlis Agama Islam Selangor, Section 23, Jalan Kapar, ', 'Klang,', '41400 ', ' Selangor', '03-3342 1911 / 1912 / 1913', NULL, NULL, NULL, NULL),
(1017, 13, 3, 'No. 32-1, Jalan PJU 5/5, Dataran Sunway, ', 'Kota Damansara, ', '47810 ', 'Selangor', '03-6141 8447 / 8456 / 8465', NULL, NULL, NULL, NULL),
(1018, 13, 3, 'No. 1, Jalan 52/16, ', 'Petaling Jaya ', '46200 ', 'Selangor', '03-7960 4812 / 4813 / 4814', NULL, NULL, NULL, NULL),
(1019, 13, 3, 'No. 1, Jalan Bandar Rawang 12, Bandar Baru Rawang, ', 'Rawang, ', '48000 ', 'Selangor', '03-6091 7652 / 7657 / 7661', NULL, NULL, NULL, NULL),
(1020, 13, 3, 'No. 42A, Jalan Putra Mahkota 7/7A, Putra Point Business Centre, ', 'Putra Heights, Subang Jaya, ', '47650 ', 'Selangor', '03-5192 0981 / 1516 / 1532', NULL, NULL, NULL, NULL),
(1021, 13, 3, 'No. 1G, 2G & 36G, SU Mall, ', 'Bandar Saujana Utama,', '47000 ', ' Selangor', '03-6038 2877 / 3275 / 3308', NULL, NULL, NULL, NULL),
(1022, 13, 3, 'Tingkat Bawah & Satu, No. 2 & 4, Jalan 14/22, Seksyen 14, ', 'Petaling Jaya, ', '46100 ', 'Selangor', '03-7957 3131 / 3834', NULL, NULL, NULL, NULL),
(1023, 13, 3, 'No. 28, Jalan Pinang 18/D, Seksyen 18, ', 'Shah Alam, ', '40200 ', 'Selangor', '03-5541 0250 / 0255', NULL, NULL, NULL, NULL),
(1024, 13, 3, 'No. 2, Jalan TPS 1/4 Taman Pelangi Semenyih ', ' Semenyih ', '43500', 'Selangor ', '03-8723 4624 / 4629 / 4630', NULL, NULL, NULL, NULL),
(1025, 13, 3, 'Tingkat Bawah, Wisma PKPS, Seksyen 14, Persiaran Perbandaran, ', ' Shah Alam, ', '40675', 'Selangor', '03-5510 1481 / 1492 / 4509', NULL, NULL, NULL, NULL),
(1026, 13, 3, 'Lot No. 120 & 121 Jalan Prima SG 5 Prima Sri Gombak ', 'Batu Caves ', '68100 ', 'Selangor', '03-6185 9655 / 9667 / 9672', NULL, NULL, NULL, NULL),
(1027, 13, 3, 'No. 56A, Tingkat Bawah, Jalan USJ 10/1F, Pusat Perniagaan USJ 10,', 'UEP Subang Jaya, ', ' 47610 ', 'Selangor', '03-8023 2072 / 2087 / 2125', NULL, NULL, NULL, NULL),
(1028, 13, 3, 'No. 1 & 3, Jalan SBBC 1, Sungai Besar Business Centre, ', ' Sungai Besar, ', '45300', 'Selangor', '03-3224 2886 / 3478 / 2434 / 2876', NULL, NULL, NULL, NULL),
(1029, 13, 3, '69-G, 69-1& 71-G Jalan Nautika A U20/A Seksyen U20, Pusat Komersial TSB ', 'Sungai Buloh ', '40160 ', 'Selangor', '03-6156 0082 / 0084 / 0086', NULL, NULL, NULL, NULL),
(1030, 13, 3, 'Tingkat Bawah, Lot 342, Bangunan Tabung Haji, ', 'Tanjung Karang, ', '45500 ', 'Selangor', '03-3269 1090 / 0090', NULL, NULL, NULL, NULL),
(1031, 13, 3, 'Tingkat Bawah Bangunan Prima Siswa Universiti Teknologi MARA ', ' Shah Alam ', '40450', 'Selangor', '03-5510 4194/ 4196', NULL, NULL, NULL, NULL),
(1032, 14, 3, 'No.2 Jalan Lagenda 2 Taman 1 Lagenda ', 'Melaka', '75400 ', 'Melaka ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1033, 14, 3, '5 & 6  Jalan Delima Raya 1 Taman Delima Raya  ', ' Bukit Baru  ', '75150', 'Melaka', '1 300 888 742', NULL, NULL, NULL, NULL),
(1034, 14, 3, '477 Plaza Melaka  Jalan Hang Tuah  ', 'Melaka  ', '75300 ', 'Melaka ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1035, 14, 3, 'Lot 3 & 4 Jalan MP3  Taman Merdeka Permai  ', ' Malim ', '75350', 'Melaka', '1 300 888 742', NULL, NULL, NULL, NULL),
(1036, 14, 3, 'No. 19, 21 & 23  Jalan Merdeka  Taman Melaka Raya  ', ' Melaka', '75000', ' Melaka x', '06-282 5029 , 06-282 5030', NULL, NULL, NULL, NULL),
(1037, 14, 3, 'No. 14 & 16, Jalan Padi Emas 6/1,  Bandar Baru UDA, ', 'Johor Bahru,', ' 81200 ', ' Johor ', '07 - 234 0678 / 0729', NULL, NULL, NULL, NULL),
(1038, 14, 3, '89, Jalan Rahmat,  Batu Pahat,  ', 'Johor   ', '83000 ', 'Johor   ', '07 - 431 7000 / 7011 / 7022', NULL, NULL, NULL, NULL),
(1039, 14, 3, 'Lot J1-22 & J2-31, Johor Bahru City Square,  106 & 108, Jalan Wong Ah Fook,  ', 'Johor Bahru,  ', '80000 ', 'Johor  ', '07 - 224 5333 / 0333 / 223 0573', NULL, NULL, NULL, NULL),
(1040, 14, 3, '35 & 37, Jalan Permas 10/2,  Bandar Baru Permas Jaya,  ', 'Johor Bahru, ', '81750 ', 'Johor ', ' 07 - 388 6741 / 6744', NULL, NULL, NULL, NULL),
(1041, 14, 3, '110 & 111, Jalan Genuang,  ', 'Segamat, ', '85000 ', ' Johor', '07 - 931 1366 / 1367 / 5442', NULL, NULL, NULL, NULL);
INSERT INTO `banks_branch_info` (`bbi_id`, `ba_id`, `co_id`, `bbi_address`, `bbi_city`, `bbi_zipcode`, `bbi_state`, `bbi_phone`, `bbi_digitrouting`, `bbi_swiftcode`, `bbi_addinfo`, `bbi_status`) VALUES
(1042, 14, 3, '7 & 9, Jalan Dedap 18,  Taman Johor Jaya,  ', 'Johor Bahru,  ', '81100 ', 'Johor   ', ' 07 - 355 5226 / 5327 / 0844', NULL, NULL, NULL, NULL),
(1043, 14, 3, 'Suite 1-2,  Menara Pelang 2, Jalan Kuning, Taman Pelangi,  ', ' Johor Bahru, ', '80400', ' Johor   ', '07 - 334 3476 / 3481', NULL, NULL, NULL, NULL),
(1044, 14, 3, '351 & 352, Jalan Muar,  ', ' Tangkak,  ', '84900', 'Johor   x', ' 06 - 978 6588 / 6591', NULL, NULL, NULL, NULL),
(1045, 14, 3, '10A, Pusat Perdagangan,  Jalan Bandar,  ', 'Pasir Gudang,  ', '81700 ', 'Johor', '07 - 251 1578 / 1573 ', NULL, NULL, NULL, NULL),
(1046, 14, 3, 'G34 & G36, Jalan Wijaya,  ', 'Bekok, ', '86500 ', ' Johor  ', '07 - 922 1639 / 1643', NULL, NULL, NULL, NULL),
(1047, 14, 3, '4 & 5, Taman Seraya Kulai Besar, ', 'Kulai, ', ' 81000 ', ' Johor ', '07 - 663 1911 / 1912', NULL, NULL, NULL, NULL),
(1048, 14, 3, 'Lot G-03, G-05 & 01-05, Jalan Masai Jaya 1,  Plentong, ', 'Johor Bahru,  ', ' 81750 ', 'Johor ', '07 - 352 7684 / 358 2715 / 2716', NULL, NULL, NULL, NULL),
(1049, 14, 3, '180 & 181, Jalan Belimbing 1, ', 'Senai,  ', ' 81400 ', 'Johor', ' 07 - 599 7154 / 6960 / 6546', NULL, NULL, NULL, NULL),
(1050, 14, 3, '56 & 58, Jalan Molek 2/2,  Taman Molek, ', 'Johor Bahru,  ', ' 81100 ', 'Johor   ', '07 - 351 4643 / 4641 / 4642', NULL, NULL, NULL, NULL),
(1051, 14, 3, '9 & 11, Jalan Sutera,  Taman Sentosa,  ', 'Johor Bahru,  ', '80150 ', 'Johor  ', '07 - 332 2243 / 2244 / 2246', NULL, NULL, NULL, NULL),
(1052, 14, 3, '1 & 2, Jalan Raya,  ', 'Ulu Tiram,  ', '81800 ', 'Johor  ', '07 - 861 3002 / 7609 / 3003', NULL, NULL, NULL, NULL),
(1053, 14, 3, '18 & 20, Jalan Dato Rauf,  ', ' Kluang,  ', '86000', 'Johor ', ' 07 - 772 4111 / 4112', NULL, NULL, NULL, NULL),
(1054, 14, 3, 'Ground Floor MCA Building, Jalan Muar,  ', 'Jementah, ', '85200 ', ' Johor ', '07 - 947 1578 / 1353', NULL, NULL, NULL, NULL),
(1055, 14, 3, '9, Jalan Abdullah, ', 'Muar,  ', '84000 ', 'Johor  ', '06 - 952 2234 / 951 9080', NULL, NULL, NULL, NULL),
(1056, 14, 3, '192, Jalan Bakek,  Pontian Kechil,  ', ' Pontian, ', '82000', ' Johor   ', ' 07 - 687 8368 / 8369', NULL, NULL, NULL, NULL),
(1057, 14, 3, '8 & 9, Jalan Kijang,  ', 'Simpang Renggam,  ', '86200 ', 'Johor', ' 07 - 755 8531 / 8532', NULL, NULL, NULL, NULL),
(1058, 14, 3, '87 & 89 Jalan Austin Heights 3,  Austin Heights,  Taman Mount Austin,  ', 'Johor Bahru,  ', '81100 ', 'Johor   ', '07 - 353 9648 / 649 / 659 ', NULL, NULL, NULL, NULL),
(1059, 14, 3, '62, 64 & 66, Jalan Bendahara 12, Taman Ungku Tun Aminah,  Sekudai,  ', 'Johor ', '81300 ', 'Johor   ', '07 - 557 1477 / 1097 / 554 9926 / 1790', NULL, NULL, NULL, NULL),
(1060, 14, 3, '106, Jalan Besar, ', 'Yong Peng, ', ' 83700 ', 'Johor ', ' 07 - 467 1006 / 1146', NULL, NULL, NULL, NULL),
(1061, 14, 3, 'Ground & First Floor, Lot 982 & 983,  Wisma UMNO Jempol  Jalan Gurney,  ', 'Bahau,  ', '72100 ', 'Negeri Sembilan ', '06 - 454 1305 / 2722', NULL, NULL, NULL, NULL),
(1062, 14, 3, '158 & 159, Jalan Besar,  ', 'Rantau, ', '71200 ', ' Negeri Sembilan', '06 - 694 1969 / 1589', NULL, NULL, NULL, NULL),
(1063, 14, 3, '163G & 164G, Jalan Taman Komersial Senawang 1, Taman Komersil Senawang, ', 'Seremban,  ', '70450 ', 'Negeri Sembilan  ', '06 - 678 1320 / 1318', NULL, NULL, NULL, NULL),
(1064, 14, 3, 'PT 7460 & 7461, Jalan Bandar Baru Nilai 1/1A, Putra Point, Bandar Baru Nilai, ', ' Nilai,  ', '71800', 'Negeri Sembilan', '06 - 794 1006 / 1007', NULL, NULL, NULL, NULL),
(1065, 14, 3, '10 & 11, Jalan Dato Abdul Rahman, ', ' Seremban, ', ' 70000', 'Negeri Sembilan ', '06 - 763 8623 / 8555 ', NULL, NULL, NULL, NULL),
(1066, 14, 3, 'Lot P.T. 9 & 10, Jalan Melewar,  ', 'Kuala Pilah,  ', '72000, ', 'Negeri Sembilan', '06 - 481 1442 / 1513', NULL, NULL, NULL, NULL),
(1067, 14, 3, '15, Jalan Helang,  Taman Sri Pertang,  ', 'Simpang Pertang,  ', '72300 ', 'Negeri Sembilan', ' 06 - 492 9520 / 9550', NULL, NULL, NULL, NULL),
(1068, 14, 3, 'Blok L DBKK  No. 1, 2 & 3  Lorong KK Taipan 3  Inanam New Township  ', 'Kota Kinabalu  ', '88450 ', 'Sabah  ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1069, 14, 3, 'Lot 27-Lot 29  Adnan Shopping Complex Jalan O-K-K- Sedomon  ', 'Keningau  ', '89008 ', 'Sabah   ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1070, 14, 3, 'Lot BG-01 Ground Floor  Block B Bangunan KWSP 49 Jalan Karamunsing  ', 'Kota Kinabalu  ', '88100 ', 'Sabah  ', '088-245 777', NULL, NULL, NULL, NULL),
(1071, 14, 3, '81 & 83  Jalan Gaya  ', ' Kota Kinabalu ', '88000', ' Sabah', '1 300 888 742', NULL, 'RHBBMYK1KKB', NULL, NULL),
(1072, 14, 3, '6-19 Ground Floor  Lintas Station Complex  Jalan Lintas  Luyang  ', ' Kota Kinabalu  ', '88300', 'Sabah  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1073, 14, 3, 'No. 5, 6, 7 & 8  Block M, Metrotown  Jalan Lintas Off Jalan Tuaran  ', 'Kota Kinabalu  ', '88300 ', 'Sabah', '1 300 888 742', NULL, NULL, NULL, NULL),
(1074, 14, 3, 'Ground & First Floor  Lot 5 Block 27  Fajar Complex  Jalan Mahkamah Town Extension II ', 'Tawau ', ' 91000 ', 'Sabah', '1 300 888 742', NULL, NULL, NULL, NULL),
(1075, 14, 3, 'Sub Lot 1-7 Ground Floor Wisma Khoo Siak Chiew  Lebuh Tiga  Jalan Sim Sim  ', 'Sandakan  ', '90009 ', 'Sabah  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1076, 14, 3, 'Block 7 Lot 64, 65 & 66  Phase 1 Prima Square  Mile 4 Jalan Utara  ', ' Sandakan ', '90000', ' Sabah ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1077, 14, 3, 'Lot 1 & 2 Block A  Metro Commercial Complex ', 'Lahad Datu  ', '91100 ', 'Sabah  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1078, 14, 3, 'Lot G-203 Ground Floor  One Borneo Hypermall  Jalan Sulaman  ', 'Kota Kinabalu  ', '88450 ', 'Sabah', '1 300 888 742', NULL, NULL, NULL, NULL),
(1079, 14, 3, 'GBd 104/204 & 105/205  Batu Kawah New Township Jalan Batu Kawah ', 'Kuching', ' 93250 ', ' Sarawak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1080, 14, 3, '258 Jalan Masjid  Taman Sri Dagang  ', 'Bintulu ', '97000 ', ' Sarawak ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1081, 14, 3, 'Ground Floor  Pejabat Daerah Dalat  ', 'Dalat  ', '96300 ', 'Sarawak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1082, 14, 3, 'Lots 127 & 128  65-66, Jalan Kubu  Kanowit Town District  ', 'Kanowit  ', '96700 ', 'Sarawak ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1083, 14, 3, 'Lot 504  Jalan Temenggong Jugah ', 'Kapit  ', '96800 ', 'Sarawak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1084, 14, 3, 'Lot 363  Jalan Kulas  ', 'Kuching  ', '93400 ', 'Sarawak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1085, 14, 3, '256 Jalan Padungan  ', ' Kuching  ', '93100', 'Sarawak  ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1086, 14, 3, 'Lot 469, Lot 470 & Lot 471  Al-Idrus Commercial Centre Jalan Satok ', 'Kuching  ', ' 93400 ', 'Sarawak', '082-258 800', NULL, NULL, NULL, NULL),
(1087, 14, 3, 'No. 12 & 13 Eastern Commercial Centre 17th Mile Kuching Serian Road ', 'Kuching  ', '94200 ', 'Sarawak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1088, 14, 3, '11 Jalan Simpang Tiga ', 'Kuching  ', '93758 ', 'Sarawak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1089, 14, 3, 'GF No. 12 & 13  Lot 5608 & 5609  Unisquare  Kota Samarahan ', 'Kuching  ', ' 94300 ', 'Sarawak   ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1090, 14, 3, 'Level 1 Wisma Mahmud  Jalan Sungei Sarawak  ', 'Kuching ', '93100 ', 'Sarawak', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1091, 14, 3, 'Lot 355 Jalan Punang ', 'Lawas  ', ' 98850 ', 'Sarawak', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1092, 14, 3, 'Lot 1563 Jalan Buangsiol ', 'Limbang  ', '98700 ', 'Sarawak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1093, 14, 3, 'Lot 249-250  Jalan Blacksmith  Pekan Lundu ', 'Lundu ', '94500 ', 'Sarawak ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1094, 14, 3, 'Lot 29  Jalan Kapitan Lim Ching Kiat Marudi  ', ' Baram  ', '98050', 'Sarawak ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1095, 14, 3, 'Lot 25, 26 & 27, Section 65  Kuching Town Land District  Taman Lee Ling Commercial Centre ', 'Matang Jaya  Kuching, ', ' 93050 ', 'Sarawak ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1096, 14, 3, 'Lot 2468 - 2470  Boulevard Commercial Centre Jalan Boulevard Utama ', 'Miri ', '98000 ', ' Sarawak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1097, 14, 3, 'Lot 25, 26 & 27, Section 65  Kuching Town Land District  Taman Lee Ling Commercial Centre  ', 'Matang Jaya  Kuching, ', '93050 ', 'Sarawak   ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1098, 14, 3, 'Lot 29  Jalan Kapitan Lim Ching Kiat Marudi  ', 'Baram  ', '98050 ', 'Sarawak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1099, 14, 3, 'Lot 1468  Jalan Repok  ', 'Sarikei  ', '96108 ', 'Sarawak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1100, 14, 3, '31 Jalan Tengku Osman ', 'Sibu  ', '96000 ', 'Sarawak  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1101, 14, 3, 'Lot 839 Jalan Sabu  ', 'Sri Aman  Kuching  ', '95000 ', 'Sarawak', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1102, 14, 3, '891 - 892  Lorong Bayor Bukit 2A  Tabuan Jaya Shopping Centre  Jalan Wan Alwi ', 'Kuching  ', '93350 ', 'Sarawak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1103, 14, 3, 'No. 1 & 3  Lorong Sungai Merah, 2C  ', 'Sibu ', '96000 ', 'Sarawak  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1104, 14, 3, '41 & 43 Persiaran Jubli Emas Taman Suriani ', 'Kangar ', '01000 ', 'Perlis ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1105, 14, 3, '1519, Jalan Tunku Ibrahim ', 'Alor Setar ', '05700 ', 'Kedah ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1106, 14, 3, 'No. 242, Jalan PJ 2/2  Pekan Jitra 2  ', 'Jitra ', '06000 ', 'Kedah ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1107, 14, 3, 'Ground & First Floor  262 & 263 Block C  Bangunan Peruda  ', ' Kuala Kedah ', '06600', '  Kedah ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1108, 14, 3, 'No. 8 & 9  Jalan KLC1  ', 'Kulim ', '09000 ', ' Kedah   ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1109, 14, 3, '97J Seberang Jalan Putra  ', 'Alor Setar  ', '05150 ', 'Kedah ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1110, 14, 3, '104 - 106 Jalan Pengkalan Taman Pekan Baru ', 'Sungai Petani ', '08000 ', 'Kedah  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1111, 14, 3, 'Lot No. 41 Jalan Perdana Heights 2/2 Perdana Heights ', 'Sungai Petani ', '08000 ', 'Kedah   ', '04-422 8088', NULL, NULL, NULL, NULL),
(1112, 14, 3, '27 & 28 Jalan Bakar Arang ', 'Sungai Petani', '08000 ', ' Kedah ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1113, 14, 3, '13 & 15  Jalan Pandak Mayah Satu ', ' Langkawi  ', '07000', 'Kedah', '1 300 888 742', NULL, NULL, NULL, NULL),
(1114, 14, 3, '18 & 19  Jalan Taman Damai 11  Taman Damai  ', 'Padang Serai ', '09400 ', ' Kedah ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1115, 14, 3, '33A & B Jalan Besar  Taman Ayer Tawar 2  ', 'Air Tawar', '32400 ', '  Perak   ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1116, 14, 3, '243 Jalan Besar  ', 'Bagan Serai  ', '34300 ', 'Perak  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1117, 14, 4, '67 & 69 High Street ', ' Gopeng  ', ' 31600', 'Perak ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1118, 14, 3, '57 & 59  Medan Gopeng  1 Jalan Gopeng  Gunung Rapat  ', ' Ipoh ', '31350 ', 'Perak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1119, 14, 3, '2, 4, 6 & 8  Jalan Tun Sambanthan ', 'Ipoh  ', ' 30000 ', 'Perak ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1120, 14, 3, 'Ground & First Floor  19 Jalan Besar  ', 'Kuala Kurau ', '34350 ', ' Perak', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1121, 14, 3, '6 & 7  Jalan Daeng Selili ', ' Kuala Kangsar ', ' 33000', ' Perak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1122, 14, 3, '81, 83 & 85  Jalan Gopeng ', 'Kampar  ', ' 31900 ', 'Perak    ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1123, 14, 3, '433 & 435  Jalan Silibin  Taman Silibin  ', 'Ipoh  ', '30760 ', 'Perak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1124, 14, 3, '12 & 14  Tingkat Taman Ipoh 6 Ipoh Garden South ', 'Ipoh ', ' 31400 ', ' Perak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1125, 14, 3, 'Ground & First Floor 50 & 52 Jalan Besar  ', 'Menglembu ', '31450 ', 'Perak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1126, 14, 3, 'No 1 & 3  Jalan Wawasan Jaya  Taman Wawasan Jaya  ', 'Parit Buntar ', '34200 ', ' Perak ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1127, 14, 3, '62 Persiaran Greenhill  ', ' Ipoh  ', '30450', 'Perak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1128, 14, 3, 'Lot P.T 1374 & 1375  Jalan Hutan Melintang  Taman Seri Perak  ', ' Simpang Empat  ', '36400', 'Perak  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1129, 14, 3, '25C  Jalan Datuk Ahmad Yunus ', 'Sitiawan  ', '32000 ', 'Perak', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1130, 14, 3, '31 & 33 Jalan Intan 2  Bandar Baru Teluk Intan  ', ' Teluk Intan  ', '36000', 'Perak ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1131, 14, 3, '699 & 701  Jalan Tasek  Taman Musim Bunga  ', ' Ipoh  ', '31400', 'Perak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1132, 14, 3, '68 & 70  Jalan Kota  ', 'Taiping  ', '34000 ', 'Perak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1133, 14, 3, '18 & 19  Jalan Besar  ', 'Sungkai  ', '35600 ', 'Perak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1134, 14, 3, '139 & 140  Jalan Besar  ', 'Sungai Siput  ', '31100 ', 'Perak', '1 300 888 742', NULL, NULL, NULL, NULL),
(1135, 14, 3, '27G-29G Ground Floor &  29A First Floor Jalan Wawasan Ampang 2/3 Bandar Baru Ampang', 'Ampang ', ' 68000 ', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1136, 14, 3, '39-G-1 Jalan Medan Pusat Bandar 4 ', ' Bandar Baru Bangi ', '43650', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1137, 14, 3, 'Unit A6  22A Jalan Tiara 2A/KU1  Pusat Perniagaan BBK  ', 'Klang  ', '41150 ', 'Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1138, 14, 3, '391 & 392 Jalan 1A/1  Bandar Baru Sungai Buloh ', 'Sungai Buloh  ', '47000 ', 'Selangor  ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1139, 14, 3, 'Lot No. 53  Jalan Batu Nilam 1 Bandar Bukit Tinggi 1  Klang ', 'Selangor ', '41200  ', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1140, 14, 3, 'Ground & 1st Floor  Lot 2 Jalan Mahkota  Residence 2  Bandar Mahkota  ', 'Cheras', '43200 ', ' Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1141, 14, 3, ' M38 & M40  Jalan Besar  ', 'Jenjarom  ', '42600 ', 'Selangor  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1142, 14, 3, 'Lot G.01A Ground Floor  First Avenue Bandar Utama ', 'Petaling Jaya ', '47800 ', ' Selangor ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1143, 14, 3, '2M & 2G Jalan SS 21/39  Damansara Utama  ', 'Petaling Jaya  ', '47400 ', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1144, 14, 3, '22 & 24 Jalan SS 22/25  Damansara Jaya  ', 'Petaling Jaya ', '47400 ', 'Selangor', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1145, 14, 3, 'No.1 Jalan Bayu Tinggi 6 Taman Bayu Tinggi ', ' Klang ', ' 41200', ' Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1146, 14, 3, '1 & 2 Jalan Tanjung SD 13/1 Bandar Sri Damansara ', 'Sri Damansara  ', ' 52200 ', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1147, 14, 3, '25 Jalan Raja Harun  Taman Hijau  ', 'Kajang  ', '43000 ', 'Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1148, 14, 3, '25 Jalan Public  Kampung Baru Sungai Buloh', 'Sungai Buloh', ' 47000 ', ' Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1149, 14, 3, 'A-G-3 Jalan SS 6/5A  Dataran Glomac  Pusat Bandar Kelana Jaya Kelana Jaya ', 'Petaling Jaya  ', '47301 ', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1150, 14, 3, 'Lot CF-17 (Concourse Level) Paradigm Mall  No. 1 Jalan SS 7/26A  Kelana Jaya  ', 'Petaling Jaya  ', '47301 ', 'Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1151, 14, 3, '24 & 26 Jalan Stesen ', 'Kelang ', ' 41000 ', ' Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1152, 14, 3, ' 33 Persiaran Sultan Ibrahim ', 'Kelang  ', '41300 ', 'Selangor  ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1153, 14, 3, '1 Jalan 14/20 ', 'Petaling Jaya ', '46100 ', ' Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1154, 14, 3, '1, 3 & 5 Jalan 52/18  New Town Centre  ', 'Petaling Jaya ', '46200 ', 'Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1155, 14, 3, 'Ground & Mezzanine Floor  7 & 9 Jalan Pandan Indah 4/2 ', 'Pandan Indah  Kuala Lumpur', '55100 ', 'Gazette in Selangor', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1156, 14, 3, 'Lot 31 & 33  Jalan Batu 6  Pekan Meru ', 'Kang  ', '41050 ', 'Selangor  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1157, 14, 3, 'No. 1 Ground Floor  Jalan Anggerik Vanilla X31/X  Kota Kemuning  Seksyen 31  ', 'Shah Alam ', '40460 ', ' Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1158, 14, 3, 'No. 27-G & 27-I  Jalan PJU 5/3  Dataran Sunway  Kota Damansara  ', 'Petaling Jaya ', '47810 ', ' Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1159, 14, 3, '157 & 159  Jalan SS2/24  ', 'Petaling Jaya  ', '47300 ', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1160, 14, 3, 'Persiaran Raja Muda Musa ', 'Port Klang  ', '42000 ', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1161, 14, 3, 'No. B-G-5 & B-1-5  Ground Floor & 1st Floor  IOI Boulevard  Jalan kenari 5  Bandar Puchong Jaya  ', ' Puchong  ', '47100', 'Selangor  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1162, 14, 3, 'Ground First & Second Floor 10 & 11 Jalan Maxwell  ', ' Rawang ', '48000', ' Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1163, 14, 3, 'Lot 1484 A & B  Jalan Besar  ', 'Seri Kembangan ', '43300 ', 'Selangor  ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1164, 14, 3, 'G20 The Mines Shopping Fair Mines Resort City  Jalan Dulang  Off Jalan Balakong  ', ' Seri Kembangan ', '43300', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1165, 14, 3, 'No. 2 Persiaran Setia Impian  Precint 8  Setia Alam  Seksyen U13 ', 'Shah Alam ', '40170 ', 'Selangor ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1166, 14, 3, '16 & 18  Ground & First Floor  Jalan T. Amp Zabedah D9/D Section 9 ', 'Shah Alam  ', '40100 ', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1167, 14, 3, '11, 13 & 15  Jalan Niaga 16/3A  Section 16  ', 'Shah Alam  ', '40000 ', 'Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1168, 14, 3, 'Lot 17 - 1 & 17 - 2  No. 1 Laman Seri Business Park  Seksyen 13  ', 'Shah Alam ', '40100 ', ' Selangor  ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1169, 14, 3, 'B26-27  Giant Hypermarket Shah Alam  2 Jalan Persiaran Sukan Section 13  ', 'Shah Alam  ', '40100 ', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1170, 14, 3, 'B23 & B25 Alam Avenue 2 Jalan Serai Wangi K-16/5 Seksyen 16 ', 'Shah Alam  ', ' 40000 ', 'Selangor  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1171, 14, 3, 'Lot 48-50  Jalan SS15/4D', ' Subang Jaya', ' 47500', ' Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1172, 14, 3, '76 & 77  Jalan Besar ', 'Sungai Pelek  ', ' 43950 ', 'Selangor   ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1173, 14, 3, '7 & 9 Jalan SS 2/1  Off Jalan Balakong  Taman Indah  Batu 11  ', 'Cheras  ', '43200 ', 'Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1174, 14, 3, '11-15  Jalan SS 24/11  Taman Megah  ', 'Petaling Jaya  ', '47301 ', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1175, 14, 3, '5 & 6  Jalan Kijang 1  Taman Suntex  Batu 9 ', ' Cheras  ', '43200', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1176, 14, 3, '47 & 49  Jalan USJ 10/1  UEP Subang Jaya ', 'Petaling Jaya  ', ' 47620 ', 'Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1177, 14, 3, '1 & 3 Jalan Senangin Satu Taman Tanjung ', 'Tanjung Sepat  ', ' 42809 ', 'Selangor  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1178, 14, 3, 'Lot 1 & 3 Jalan Satu  Taman Tanjong Karang Baru ', ' Tanjong Karang ', '45500', ' Selangor ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1179, 14, 3, '1 Jalan Taming Kanan 2 Taman Taming Jaya  ', 'Balakong  ', '43300 ', 'Selangor', '1 300 888 742', NULL, NULL, NULL, NULL),
(1180, 14, 3, ' 15, Jalan Pasar', 'Ayer Itam ', ' 11500 ', 'Pulau Pinang ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1181, 14, 3, '42A, 42B & 42C  Jalan Tengah  ', ' Bayan Baru ', '11950', 'Pulau Pinang   ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1182, 14, 3, 'No. 21, 23 & 25  Jalan Lembah Permai  ', 'Bukit Mertajam  ', '14000 ', 'Pulau Pinang   ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1183, 14, 3, '6774 - 6776  Jalan Kampung Gajah  ', ' Butterworth  ', '12200', 'Pulau Pinang  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1184, 14, 3, 'No. 380-A  Jalan Burma  ', 'Pulau Pinang    ', '10350 ', 'Pulau Pinang  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1185, 14, 3, 'Ground & Mezzanine Floor 6957 & 6958  Jalan Raja Uda  Raja Uda Light Industrial Park ', ' Butterworth  ', '12300', 'Pulau Pinang  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1186, 14, 3, '4H & 4J  Desa Universiti Commercial Complex  Jalan Sungai Dua  ', 'Gelugor ', '11700 ', ' Pulau Pinang   ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1187, 14, 3, '1433-1434  Jalan Besar Sungai Bakap  ', 'Sungai Jawi  ', '14200 ', ' Pulau Pinang   ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1188, 14, 3, '2784 & 2785  Jalan Chain Ferry  Taman Inderawasih ', 'Prai  ', ' 13600 ', 'Pulau Pinang ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1189, 14, 3, '44 Lebuh Pantai  ', 'Georgetown  ', '10300 ', 'Pulau Pinang    ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1190, 14, 3, '112 & 114  Jalan Tan Sri Teh Ewe Lim ', ' Pulau Pinang', '11600', ' Pulau Pinang ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1191, 14, 3, 'Lot PT 383 & 384  Kedai Ketereh  Bandar Ketereh  ', 'Ketereh  ', '16450 ', 'Kelantan   ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1192, 14, 3, 'No. 782-786  Jalan Tok Hakim ', 'Kota Bharu  ', ' 15000 ', 'Kelantan   ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1193, 14, 3, 'Lot 1679  Jalan Raja Perempuan Zainab 2 Bandar Baru Kubang Kerian  ', 'Kota Bahru  ', '16150 ', 'Kelantan   ', ' 09-764 0222', NULL, NULL, NULL, NULL),
(1194, 14, 3, '18A Jalan Tengku Ahmad  ', 'Pasir Mas ', '17000 ', 'Kelantan  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1195, 14, 3, '11289 & 11290  Bandar Cukai Utama  Phase 3  ', 'Kemaman  ', '24000 ', 'Terengganu ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1196, 14, 3, 'Lot 50038  Jalan Kemaman Dungun  Kampung Baru Kerteh  ', 'Kerteh  ', '24300 ', 'Terengganu', '1 300 888 742', NULL, NULL, NULL, NULL),
(1197, 14, 3, 'K231 Jalan Besar  Kuala Dungun  ', 'Dungun ', '23000 ', ' Terengganu  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1198, 14, 3, '59 Jalan Sultan Ismail  ', 'Kuala Terengganu ', '20200 ', 'Terengganu ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1199, 14, 3, '20 Pusat Niaga Paya Keladi ', ' Kuala Terengganu  ', '20000', 'Terengganu ', '09-6305 577', NULL, NULL, NULL, NULL),
(1200, 14, 3, 'Lot 13 & 14  Jalan Loke Yew ', 'Bentong  ', ' 28700 ', 'Pahang  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1201, 14, 3, 'Lot 4360 & 4361  Jalan Kuantan  ', 'Jerantut ', '27000 ', ' Pahang', '1 300 888 742', NULL, NULL, NULL, NULL),
(1202, 14, 3, 'No. A237 & A239  Jalan Air Putih  ', 'Kuantan  ', '25300 ', 'Pahang', '1 300 888 742', NULL, NULL, NULL, NULL),
(1203, 14, 3, '2 - 6 Jalan Putra Square 1 Putra Square  ', 'Kuantan ', '25200 ', ' Pahang ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1204, 14, 3, 'No. 40 & 42  Jalan Dagangan 7 Pusat Dagangan Triang  ', 'Triang ', '28300 ', ' Pahang', '1 300 888 742', NULL, NULL, NULL, NULL),
(1205, 14, 3, 'Lot PT 16477 & 16478  Pusat Perniagaan Indrapura Jalan Tras  ', 'Raub', '27600 ', ' Pahang', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1206, 14, 3, 'Lot 94 & 95  Jalan Temerloh  ', ' Mentakab', '28400', ' Pahang  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1207, 14, 3, '37 & 38, Jalan Memanda 7 Taman Dato Ahmad Razali Jalan Ampang ', 'Ampang ', '68000 ', 'Kuala Lumpur', '1 300 888 742', NULL, NULL, NULL, NULL),
(1208, 14, 3, 'Lot G-01, Ground Floor Bangsar Shopping Centre Office Tower Jalan Maarof Bangsar ', 'Kuala Lumpur  ', '59100 ', 'Kuala Lumpur  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1209, 14, 3, '58-60, Jalan Bukit Bintang', 'Kuala Lumpur', ' 55100 ', 'Kuala Lumpur', '1 300 888 742', NULL, NULL, NULL, NULL),
(1210, 14, 3, 'Lot C9-C12, Block C Pusat Bandar Damansara Damansara Heights ', 'Petaling Jaya ', '50490 ', 'Kuala Lumpur', '1 300 888 742', NULL, NULL, NULL, NULL),
(1211, 14, 3, 'No. 58, 58-1 & 58-2 Jalan Dataran Wangsa Melawati  Wangsa Melawati ', 'Kuala Lumpur ', '53300 ', 'Kuala Lumpur  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1212, 14, 3, 'Lot LGF 019-021  Lower Ground Floor  Kenanga Wholesale City  28 Jalan Gelugor  off Jalan Kenanga  ', 'Kuala Lumpur  ', '52200 ', 'Kuala Lumpur  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1213, 14, 3, 'Ground Floor  3471- A Jalan Besar  Jinjang Utara  ', 'Kuala Lumpur  ', '52000 ', 'Kuala Lumpur ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1214, 14, 3, '50-52 Jalan Pasar  ', 'Kuala Lumpur', '55100 ', 'Kuala Lumpur', '1 300 888 742', NULL, NULL, NULL, NULL),
(1215, 14, 3, '14-16 Jalan Ipoh  ', 'Kuala Lumpur', '51200 ', 'Kuala Lumpur   ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1216, 14, 3, 'Lot LG-83, Two IOI Square IOI Resort City, Putrajaya ', 'Kuala Lumpur  ', '62502 ', 'Kuala Lumpur  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1217, 14, 3, '321  Batu 7 Jalan Kepong  Kepong Baru ', 'Kuala Lumpur   ', '52100 ', 'Kuala Lumpur   ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1218, 14, 3, 'Ground Floor  RHB Centre  426 Jalan Tun Razak  ', 'Kuala Lumpur ', '50400 ', 'Kuala Lumpur  x', '03-9281 3030', NULL, 'RHBBMYKLXXX', NULL, NULL),
(1219, 14, 3, 'Lot LC-C03  Concourse Floor  Suria KLCC  Kuala Lumpur City Centre ', 'Kuala Lumpur ', ' 50088 ', 'Kuala Lumpur', '1 300 888 742', NULL, NULL, NULL, NULL),
(1220, 14, 3, 'Ground Floor  Menara Shell  Lot 348 KL Sentral  ', ' Kuala Lumpur  ', '50470', ' Kuala Lumpur ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1221, 14, 3, 'Ground Floor  Menara Yayasan Tun Razak 200 Jalan Bukit Bintang ', 'Kuala Lumpur', ' 55100 ', 'Kuala Lumpur', '1 300 888 742', NULL, NULL, NULL, NULL),
(1222, 14, 3, 'Ground & Mezzanine Floor Podium Block  Plaza OSK  114 - 116  Jalan Ampang ', 'Kuala Lumpur', ' 50450 ', 'Kuala Lumpur  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1223, 14, 3, 'Unit No: B2-08 & B2-09  Block B Plaza Damas 3 No. 63 Jalan Sri Hartamas', 'Kuala Lumpur  ', ' 50480 ', 'Kuala Lumpur ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1224, 14, 3, '53 & 55, Jalan 2/3A Off KM 12 Jalan Ipoh  Batu Caves  ', 'Kuala Lumpur', '68100 ', 'Kuala Lumpur', '1 300 888 742', NULL, NULL, NULL, NULL),
(1225, 14, 3, '140 & 142  Jalan Mega Mendung  Bandar Complex  Batu 4 1/2 Jalan Kelang Lama ', 'Kuala Lumpur ', '58200 ', 'Kuala Lumpur  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1226, 14, 3, '17-G & 17-1  The Boulevard Mid Valley City Lingkaran Syed Putra  ', 'Kuala Lumpur', '59200 ', 'Kuala Lumpur  ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1227, 14, 3, '178-180  Main Street  Salak South  ', 'Kuala Lumpur  ', '57100 ', 'Kuala Lumpur ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1228, 14, 3, '42 & 42A  Jalan Segambut Tengah  Segambut  ', 'Kuala Lumpur  ', '51200 ', 'Kuala Lumpur ', '03-9281 3030', NULL, NULL, NULL, NULL),
(1229, 14, 3, '257 & 259  Jalan Genting Kelang  Setapak  ', 'Kuala Lumpur', '53300 ', 'Kuala Lumpur', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1230, 14, 3, 'No. 134 - 136  Jalan Cerdas  Taman Connaught  Cheras  ', 'Kuala Lumpur  ', '56000 ', 'Kuala Lumpur   ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1231, 14, 3, '18 & 20  Jalan Midah Satu  Taman Midah  Cheras  ', 'Kuala Lumpur   ', '56000 ', 'Kuala Lumpur   ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1232, 14, 3, '75 Jalan Tun H.S. Lee  ', 'Kuala Lumpur  ', '50000 ', 'Kuala Lumpur', '1 300 888 742', NULL, NULL, NULL, NULL),
(1233, 14, 3, 'Unit G10 & 3A  The Sphere  No.1, Avenue 1  Bangsar South  No. 8 Jalan Kerinchi  ', 'KualaLumpur', '59200 ', 'KualaLumpur  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1234, 14, 3, '15 & 17  Jalan Tun Mohd Fuad 3  Taman Tun Dr. Ismail  Petaling Jaya  ', ' Kuala Lumpur ', '60000', ' Kuala Lumpur ', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1235, 14, 3, '30 Jalan 7/108C  Taman Sungai Besi  ', 'Kuala Lumpur', '57100 ', 'Kuala Lumpur', ' 1 300 888 742', NULL, NULL, NULL, NULL),
(1236, 14, 3, '38-1-5  Shamelin Business Center Jalan 4/91  Taman Shamelin Perkasa  ', 'Kuala Lumpur  ', '56100 ', 'Kuala Lumpur  ', '1 300 888 742', NULL, NULL, NULL, NULL),
(1237, 15, 3, '28, Lorong Setia 1 Ayer Keroh Height ', 'Melaka  ', '75450 ', 'Melaka ', '06-2323668,, 06-2326221, ', NULL, NULL, NULL, NULL),
(1238, 15, 3, 'No 53 & 55, Jalan Inang 3, Taman Paya Rumput Utama,', 'Melaka ', ' 76450 ', 'Melaka  ', '06 3356066 ', NULL, NULL, NULL, NULL),
(1239, 15, 3, 'No. 1800 Pusat Bandar Baru ', 'Jasin ', '77000 ', 'Melaka', '06-5294361,, 06-5294433 ', NULL, NULL, NULL, NULL),
(1240, 15, 3, 'No.1 & 3, Jalan Melaka Raya 11, Taman Melaka Raya, ', 'Melaka ', '75000 ', 'Melaka ', '06-2825785,, 06-2825804, ', NULL, NULL, NULL, NULL),
(1241, 15, 3, 'No 154 &156;, Kompleks Munshi Abdullah, Jalan Munshi Abdullah, ', 'Melaka', '75100 ', 'Melaka', '06-2866530 , 06-2862871', NULL, NULL, NULL, NULL),
(1242, 15, 3, 'No. 2430, Jalan Besar ', ' Tampin ', '73000', 'Melaka  ', '06-4416526, ', NULL, NULL, NULL, NULL),
(1243, 15, 3, 'No. 35 Jalan Rahmat', 'Batu Pahat, ', ' 83000 ', 'Johor', '07-4324208, 07-4318218', NULL, NULL, NULL, NULL),
(1244, 15, 3, 'No. 178, Jalan Rugayah ', 'Batu Pahat, ', '83000 ', 'Johor', '07-4319848,, 07-4348550, ', NULL, NULL, NULL, NULL),
(1245, 15, 3, 'No. 28 & 30, Jalan Indah 16/5, Taman Bukit Indah, ', ' Johor Bahru, ', '81200', 'Johor ', '07-2354708, 072354722,', NULL, NULL, NULL, NULL),
(1246, 15, 3, 'Lot No. G3, Tropika Welcome Center, Jalan Setia Tropika 1/21, Taman Setia Tropika, Kempas ', ' Johor Bahru', '81200', ' Johor Bahru', '07 236 1124 ', NULL, NULL, NULL, NULL),
(1247, 15, 3, 'No. 77 & 79, Jalan Meranti Merah, Melodies Garden,', ' Johor Bahru, ', ' 80250', 'Johor', '07-3343000,, 07-3341054 ', NULL, NULL, NULL, NULL),
(1248, 15, 3, 'GF & Mezz Flr Metropolis Tower, Jalan Abdullah Tahir', 'Johor Bahru, ', ' 80300 ', 'Johor ', '07-3350600, 07-3350695 ', NULL, NULL, NULL, NULL),
(1249, 15, 3, ' No. 1 & 3 Jalan Ros Merah 2/8, Taman Johor Jaya, ', 'Johor Bahru,', '81100 ', ' Johor', '07-3557759,, 07-3546819 ', NULL, NULL, NULL, NULL),
(1250, 15, 3, '21, 22 & 23 Jalan Dato'' Teoh Siew Khor ', 'Kluang, ', '86000 ', 'Johor  ', '07-7711948, 07-7723178 ', NULL, NULL, NULL, NULL),
(1251, 15, 3, 'No. 8F & 8G Jalan Lombong ', 'Kota Tinggi, ', '81900 ', 'Johor  ', '07-8834544,, 07-8834978, ', NULL, NULL, NULL, NULL),
(1252, 15, 3, 'No. 34 & 35, Lorong Dua ', 'Kulai ', '81000 ', 'Johor  ', '07-6634830, 07-6630611, ', NULL, NULL, NULL, NULL),
(1253, 15, 3, 'Ground & 1st Floor, No. 111, Jalan Abdullah, ', 'Muar, ', '84000 ', 'Johor', '06-9540069, 06-9540071, ', NULL, NULL, NULL, NULL),
(1254, 15, 3, 'No.1, Jalan Sejambak 14, Taman Bukit Dahlia,', 'Pasir Gudang, ', ' 81700 ', 'Johor', '07-2512916, 07-2510164', NULL, NULL, NULL, NULL),
(1255, 15, 3, 'No. 13 & 15 Jalan Permas Jaya 10/1, Bandar Baru Permas Jaya ', ' Johor Bahru  ', '81750', ' Johor Bahru  ', '07-3869842, 07-3878978 ', NULL, NULL, NULL, NULL),
(1256, 15, 3, 'No. 663 & 664, Jalan Taib, ', 'Pontian, ', '82000 x', 'Johor', '07-6876388,, 07-6873169', NULL, NULL, NULL, NULL),
(1257, 15, 3, 'No. 14-15 Jalan Abdullah ', ' Segamat, ', '85000', 'Johor', '07-9315012, 07-9319050,', NULL, NULL, NULL, NULL),
(1258, 15, 3, 'No. 5 & 7, Jalan Nakhoda 1, Taman Ungku Tun Aminah, ', ' Skudai, ', '81300', 'Johor', '07-5568031', NULL, NULL, NULL, NULL),
(1259, 15, 3, 'No. 33, Jalan Haji Abu Bakar, ', 'Sungai Rengit, Pengerang, ', '81620 ', 'Johor', '07-8263011, 07-8263017', NULL, NULL, NULL, NULL),
(1260, 15, 3, 'No 4 & 6, Jalan Padi Emas 6/1 Pusat Bandar Tampoi ', 'Johor Bahru, ', '81200 ', 'Johor ', '07-2341217, 07-2359891 ', NULL, NULL, NULL, NULL),
(1261, 15, 3, 'LC285/259 Jalan Muar ', 'Tangkak ', '84900 ', 'Johor ', '06-9781331, 06-9789519 ', NULL, NULL, NULL, NULL),
(1262, 15, 3, 'No. 2 Jalan Badik 15 Taman Putri Wangsa ', 'Ulu Tiram, ', '81800 ', 'Johor  ', '07-8671002, 07-8671005 ', NULL, NULL, NULL, NULL),
(1263, 15, 3, 'No. 100 Jalan Besar ', 'Yong Peng ', '83700 ', 'Johor ', '07-4672499, 07-4674100', NULL, NULL, NULL, NULL),
(1264, 15, 3, 'No.1567, Wisma Landag Jalan Kota ', 'Alor Setar ', '05000 ', 'Kedah', '04-7303030, 04-7301905 ', NULL, NULL, NULL, NULL),
(1265, 15, 3, 'Ground & 1st Floor, No 56 & 57, Pekan Jitra 3, ', 'Jitra,', '06000 ', ' Kedah ', '04-9175555,  04-9176725, ', NULL, NULL, NULL, NULL),
(1266, 15, 3, 'No.171 & 172, Jalan Tunku Putera, ', 'Kulim, ', '09000 ', 'Kedah', '04-4903667,  04-4903669', NULL, NULL, NULL, NULL),
(1267, 15, 3, ' No.20 & 22, Jalan Pandak Mayah 5 Pusat Bandar Kuah ', 'Langkawi, ', '07000 ', 'Kedah', '04-9663130,  04-9663133', NULL, NULL, NULL, NULL),
(1268, 15, 3, 'No 95, 96 & 97, Jalan Lagenda 1 ,Lagenda Heights, ', 'Sungai Petani,', '08000 ', ' Kedah  ', '04-4202382 ', NULL, NULL, NULL, NULL),
(1269, 15, 3, 'No.24-H & 24-J Jalan Kampong Baru ', ' Sungai Petani, ', '08000', 'Kedah', '04-4229095, 04-4223277', NULL, NULL, NULL, NULL),
(1270, 15, 3, 'Ground & First Floor Lot 343, Jalan Sultan Ibrahim ', 'Kota Bharu', '15000 ', 'Kelantan', '09-7419499, 09-7419508', NULL, NULL, NULL, NULL),
(1271, 15, 3, 'Lot 151 Jalan Masjid Lama ', 'Pasir Mas ', '17000 ', 'Kelantan', '09-7900701,  09-7901952 ', NULL, NULL, NULL, NULL),
(1272, 15, 3, 'No. 122 & 123, Jalan Mewah ', ' Bahau ', '72100', 'Negeri Sembilan ', '06-4553008, 06-4553002', NULL, NULL, NULL, NULL),
(1273, 15, 3, 'Lot 3395 & 3396 Jalan Besar ', 'Mantin ', '71700 ', 'Negeri Sembilan', '06-7581240,, 06-7583630', NULL, NULL, NULL, NULL),
(1274, 15, 3, 'Lot PT 7435 & 7436, Jalan BBN 1/2f Putra Point 1, Bandar Baru Nilai, ', 'Nilai, ', '71800 ', 'Negeri Sembilan', '06-7940412,, 06-7940417', NULL, NULL, NULL, NULL),
(1275, 15, 3, ' No. 1001 & 1002, Jalan Bandar ', ' Port Dickson ', '71000', 'Negeri Sembilan', '06-6471398,  06-6461016', NULL, NULL, NULL, NULL),
(1276, 15, 3, 'No 3820 &3821;, Ground Floor Jalan RJ 6/8, Taman Rasah Jaya', 'Seremban, ', ' 70300 ', 'Negeri Sembilan', '06-6328463', NULL, NULL, NULL, NULL),
(1277, 15, 3, 'No. 22 & 23 Jalan Dato'' Lee Fong Yee ', 'Seremban', '70000 ', ' Negeri Sembilan', '06-7678894, 06-7636988 ', NULL, NULL, NULL, NULL),
(1278, 15, 3, 'Unit 5-G, 5-1 & 6-G, 6-1 AmBank Business Centre, Jalan Pasar, ', 'Seremban, ', '70000 ', 'Negeri Sembilan', '06-7647735, 06-7647742 ', NULL, NULL, NULL, NULL),
(1279, 15, 3, 'No. 105, Jalan Loke Yew, ', 'Bentong, ', '28700 ', 'Pahang', '09-2223888, 09-2221629 ', NULL, NULL, NULL, NULL),
(1280, 15, 3, 'Lot K-1 Jalan Dewangsa Jerantut New Town ', 'Jerantut , ', '27000 ', 'Pahang ', '09-2666211, 09-2663005', NULL, NULL, NULL, NULL),
(1281, 15, 3, 'No. A-3786, Jalan Beserah, ', 'Kuantan, ', '25300 ', 'Pahang', '09-5601818, 09-5678368', NULL, NULL, NULL, NULL),
(1282, 15, 3, 'No. 93, Jalan Haji Abdul Aziz ', 'Kuantan ', '25000 ', 'Pahang', '09-5164389, 09-5162607', NULL, NULL, NULL, NULL),
(1283, 15, 3, 'No .28, Jalan Zabidin ', ' Mentakab', '28400', ' Pahang  ', '09-2771196, 09-2777962', NULL, NULL, NULL, NULL),
(1284, 15, 3, 'No. 5, Bandar Raub Perdana, ', 'Raub,', '27600 ', ' Pahang', '09-3553166, 09-3561846 ', NULL, NULL, NULL, NULL),
(1285, 15, 3, 'No. 43 Jalan Besar, ', 'Tanah Rata Cameron Highlands, ', '39000, ', 'Pahang', '05-4911088, 05-4911089 ', NULL, NULL, NULL, NULL),
(1286, 15, 3, 'No. 60 & 61, Jalan Ahmad Shah 1 ', 'Temerloh, ', '28000 ', 'Pahang', '09-2965887,, 09-2901128 ', NULL, NULL, NULL, NULL),
(1287, 15, 3, 'No. 21A & 22A, Jalan Temerloh ', ' Triang ', '28300', 'Pahang  ', '09-2553304, 09-2553124', NULL, NULL, NULL, NULL),
(1288, 15, 3, 'No. 135-J & 135-K Jalan Paya Terubang ', 'Ayer Itam', '11500 ', ' Penang ', '04-8288566, 04-8270154 ', NULL, NULL, NULL, NULL),
(1289, 15, 3, ' Lot 7174 Ground, 1st and 2nd Floor Jalan Bagan Ajam ', ' Butterworth, ', '13000', 'Penang ', '04-3319005, 04-3319080', NULL, NULL, NULL, NULL),
(1290, 15, 3, 'No. 23 & 25 Jalan Tun Sardon, MK.6, Balik Pulau', 'Pulau Pinang ', ' 11000 ', 'Pulau Pinang ', '04-8660863, 04-8668633 ', NULL, NULL, NULL, NULL),
(1291, 15, 3, '56 & 58, Jalan Mahsuri, Bandar Bayan Baru, ', 'Penang', '11909 ', 'Penang', '04-6448142, 04-6448149 ', NULL, NULL, NULL, NULL),
(1292, 15, 3, 'Ground & First Floor, No. 1394, Jalan Padang Lallang, ', 'Bukit Mertajam, ', '14000 ', 'Penang', '04-5302391, 04-5302393', NULL, NULL, NULL, NULL),
(1293, 15, 3, '723D & 723E, Ground Floor Vanda Business Park, Jalan Sungai Dua ', ' Penang  ', '11700', ' Penang ', '04-6582650, 04-6571284', NULL, NULL, NULL, NULL),
(1294, 15, 3, 'No. 546 & 548, Jalan Jelutong, ', 'Jelutong, ', '11600 ', 'Penang ', '04-6592410, 04-6572339', NULL, NULL, NULL, NULL),
(1295, 15, 3, 'No.15, Leboh Pantai ', 'Penang x', '10300 ', 'Penang', '04-2615263, 04-2632523 ', NULL, NULL, NULL, NULL),
(1296, 15, 3, 'Menara Liang Court No. 37, Jalan Sultan Ahmad Shah ', 'Pulau Pinang', '10050 ', 'Pulau Pinang', '04-2263939, 04-2282491', NULL, NULL, NULL, NULL),
(1297, 15, 3, 'Ground & Mezzanine Floor No. 368-1-16 & 368-1-17, Bellisa Row, Jalan Burmah', 'Penang', ' 10350 ', 'Penang  ', '04-2298942, 04-2298944 ', NULL, NULL, NULL, NULL),
(1298, 15, 3, 'No. 52, Jalan Todak 2, Pusat Bandar Seberang Jaya, ', 'Prai, ', '13700 ', 'Pulau Pinang', '04-3979569', NULL, NULL, NULL, NULL),
(1299, 15, 3, 'No. 1388 7 1389, Jalan Sungai Bakap, Taman Sungai Bakap Permai, ', ' Sungai Jawi, ', '14200,', 'Pulau Pinang ', '04-5821296, 04-5822507', NULL, NULL, NULL, NULL),
(1300, 15, 3, 'No. 1 & 3, Lorong Murni 6, Taman Desa Murni, Sungai Dua, ', 'Butterworth, ', '13800 ', 'Penang', '04-3566494, 04-3567691', NULL, NULL, NULL, NULL),
(1301, 15, 3, 'No 2T & 2U Jalan Lembah Permai Tanjung Bungah, ', 'Penang', '11200 ', 'Penang', '04-8904502, 04-8904658 ', NULL, NULL, NULL, NULL),
(1302, 15, 3, 'No. 79, Jalan Besar ', 'Ayer Tawar ', '32400 ', 'Perak', '05-6722677, 05-6723126', NULL, NULL, NULL, NULL),
(1303, 15, 3, 'No. 244-D & 244-E Jalan Besar ', 'Bagan Serai, ', '34300 ', 'Perak ', '05-7215805', NULL, NULL, NULL, NULL),
(1304, 15, 3, 'No. 19, Jalan Kemajuan ', 'Batu Gajah ', '31000 ', 'Perak ', '05-3661442, 05-3661372', NULL, NULL, NULL, NULL),
(1305, 15, 3, 'No. 225, 227 & 229, Jalan Bercham Taman Desa Kenchana, ', ' Ipoh,', '31400', ' Perak', '05-5487109, 05-5459695', NULL, NULL, NULL, NULL),
(1306, 15, 3, 'No 7, Greentown Utama, Jalan Dato’ Seri Ahmad Said,', ' Ipoh, ', ' 30450', 'Perak', '05-2085619, 05-2085617, 05-2085616 ', NULL, NULL, NULL, NULL),
(1307, 15, 3, 'No. 50, Jalan Balai,', 'Kampar ', ' 31900, ', 'Perak ', '05-4665657, 05-4665836', NULL, NULL, NULL, NULL),
(1308, 15, 3, 'No. 5 & 6 Jalan Raja Chulan ', 'Kuala Kangsar, ', '33000 ', 'Perak ', '05-7774273, 05-7761955', NULL, NULL, NULL, NULL),
(1309, 15, 3, 'No. 27, Jalan Trump Kuala Sepetang ', 'Taiping,', '34650 ', ' Perak ', '05-8581773, 05-8581993 ', NULL, NULL, NULL, NULL),
(1310, 15, 3, 'No. 1 & 2, Lorong 1, Projek Perumahan Awam Langkap 2, Pekan Langkap, ', 'Langkap, ', '36700 ', 'Perak  ', '05-65912227', NULL, NULL, NULL, NULL),
(1311, 15, 3, 'No. 5E & 5F, Jalan Tranchell ', 'Menglembu ', '31450 ', 'Perak  ', '05-2810402, 05-2810400 ', NULL, NULL, NULL, NULL),
(1312, 15, 3, 'No. 5, Main Road,', 'Pangkor,', ' 32300 ', ' Perak ', '05-6851051, 05-6852776 ', NULL, NULL, NULL, NULL),
(1313, 15, 3, 'No. 2 & 4 Jalan Temenggong Taman Krian Tambahan 6 ', 'Parit Buntar,', '34200 ', 'Perak ', '05-7166668, 05-7161732 ', NULL, NULL, NULL, NULL),
(1314, 15, 3, 'No. 405, Jalan Silibin Taman Seri Tahan ', 'Ipoh,', '30100 ', ' Perak  ', '05-5277718, 05-5277716 ', NULL, NULL, NULL, NULL),
(1315, 15, 3, 'No. 23 & 24, Jalan Raja Omar ', 'Sitiawan ', '32000 ', 'Perak ', '05-6917645, 05-6912476 ', NULL, NULL, NULL, NULL),
(1316, 15, 3, 'No. 181, Jalan Besar ', 'Sungai Siput ', '31100 ', 'Perak  ', '05-5972388, 05-5984804 ', NULL, NULL, NULL, NULL),
(1317, 15, 3, 'No. 52-54, Jalan Taming Sari ', 'Taiping ', '34000 ', 'Perak ', '05-8061306, 05-8062031', NULL, NULL, NULL, NULL),
(1318, 15, 3, 'No. 14 & 15, Jalan Douglas ', ' Tanjung Malim ', '35900', 'Perak ', '05-4598139, 05-4590825', NULL, NULL, NULL, NULL),
(1319, 15, 3, 'No. 1049, Jalan Mahkota', 'Teluk Intan ', ' 36000 ', 'Perak', '05-6217173, 05-6211008', NULL, NULL, NULL, NULL),
(1320, 15, 3, 'No. 21 & 23 Jalan Bukit Lagi Bangunan PKENPs ', 'Kangar, ', '01000 ', 'Perlis', '04-9763388, 04-9769177', NULL, NULL, NULL, NULL),
(1321, 15, 3, 'G-01, Blok A, Menara PJ, No. 18, Jln Persiaran Barat, Off Jalan Timur, ', 'Petaling Jaya, ', '46050 ', 'Selangor  ', '03-79541327, 03-79588727 ', NULL, NULL, NULL, NULL),
(1322, 15, 3, 'Lot 1A, Jalan Mamanda 7, Ampang Point, 4 1/2 Mile, ', 'Ampang, ', '68000 ', 'Selangor', '03-42522630, 03-42522636 ', NULL, NULL, NULL, NULL),
(1323, 15, 3, 'S-13, Taman Indah, Batu 11, ', 'Cheras ', '43200 ', 'Selangor', '03-90744013, 03-90744078 ', NULL, NULL, NULL, NULL),
(1324, 15, 3, 'No. 13 & 14, Jalan Ipoh Batu 18, Bandar Baru Rawang ', 'Rawang, ', '48000 ', 'Selangor', '03-60916835, 03-60931609 ', NULL, NULL, NULL, NULL),
(1325, 15, 3, 'No. 338 & 389 Jalan 1A/1 Bandar Baru Sungai Buloh, Seksyen U20 ', 'Sungai Buloh, ', '40160 ', 'Selangor ', '03-61566500, 03-61577500', NULL, NULL, NULL, NULL),
(1326, 15, 3, 'No. 338 & 389 Jalan 1A/1 Bandar Baru Sungai Buloh, Seksyen U20 ', 'Sungai Buloh, ', '40160 ', 'Selangor ', '03-61566500, 03-61577500 ', NULL, NULL, NULL, NULL),
(1327, 15, 3, 'No. 37 & 39, Lorong Batu Nilam 1A Bandar Bukit Tinggi ', ' Klang, ', '41200', 'Selangor ', '03-33246275/6325/5695 ', NULL, NULL, NULL, NULL),
(1328, 15, 3, 'No. 36 & 38, Jalan Temenggung 1/9 Bandar Mahkota Cheras ', 'Cheras, ', '43200 ', 'Selangor', '03-90105901 ', NULL, NULL, NULL, NULL),
(1329, 15, 3, 'No. 139 & 141,Wisma Mutiara Jalan Sultan Abdul Samad, ', 'Banting, ', '42700 ', 'Selangor', '03-31877462, 03-31871919 ', NULL, NULL, NULL, NULL),
(1330, 15, 3, 'No. 28B, Jalan Besar ', 'Batang Berjuntai ', '45600 ', 'Selangor ', '03-32710378, 03-32710380 ', NULL, NULL, NULL, NULL),
(1331, 15, 3, 'No. 56, 58 & 60G Jalan SS 21/35 Damansara Utama, ', 'Petaling Jaya, ', '47400 ', 'Selangor', '03-77263660, 03-77263662', NULL, NULL, NULL, NULL),
(1332, 15, 3, 'No. 20, Jalan PJS8/17, Dataran Mentari, ', ' Petaling Jaya, ', '46150', 'Selangor', '03-56222451, 03-56222452 ', NULL, NULL, NULL, NULL),
(1333, 15, 3, 'Level 3-03, Gateway @ KLIA2, Terminal 2, Kuala Lumpur International Airport, Jalan KLIA2/1, ', 'KLIA  ', '64000 ', 'Selangor', '03 8787 8153 ', NULL, NULL, NULL, NULL),
(1334, 15, 3, 'No. 6 & 7, Jalan S10/1 Section 10 Off Jalan Bukit ', ' Kajang, ', '43000', 'Selangor  ', '03-87376272, 03-87378700 ', NULL, NULL, NULL, NULL),
(1335, 15, 3, 'Unit E102 & 103, Ground Floor, Kelana Parkview No. 1, Jalan SS6/2 Kelana Jaya ', 'Petaling Jaya ', '47301 ', 'Selangor', '03-78034574, 03-78043508 ', NULL, NULL, NULL, NULL),
(1336, 15, 3, 'Ground Floor, No. 1, Lorong Sanggul 1F Bandar Puteri Klang ', 'Klang, ', '41200 ', 'Selangor', '03-51613324 ', NULL, NULL, NULL, NULL),
(1337, 15, 3, 'Wisma SH NG, No. 42 - 44, Persiaran Sultan Ibrahim, ', ' Klang  ', '41300', 'Selangor', '03-33420609, 03-33426010 ', NULL, NULL, NULL, NULL),
(1338, 15, 3, ' No. 23 & 25, Blok T, Jalan PJU 5/3, Dataran Sunway Kota Damansara, ', 'Petaling Jaya, ', '47810 ', 'Selangor', '03-61417470, 03-61417472 ', NULL, NULL, NULL, NULL),
(1339, 15, 3, 'No 1-1, Jalan Anggerik Vanilla BE31/BE, Kota Kemuning, Seksyen 31, ', ' Shah Alam, ', '40460,', 'Selangor  ', '03-5120 1186 ', NULL, NULL, NULL, NULL),
(1340, 15, 3, 'No. 6, Road 52/4, New Town Centre, ', 'Petaling Jaya, ', '46200 ', 'Selangor', '03-79569077, 03-79569748', NULL, NULL, NULL, NULL),
(1341, 15, 3, 'No. 30, 32 & 34, Jalan SS2/61 ', 'Petaling Jaya ', '47300 ', 'Selangor', '03-78740042, 03-78740012', NULL, NULL, NULL, NULL),
(1342, 15, 3, 'No. 2998G, Wisma Palmbase, Persiaran Raja Muda Musa, ', ' Klang,', '41100', ' Selangor', '03-33717672, 03-33717698 ', NULL, NULL, NULL, NULL),
(1343, 15, 3, 'Ground Floor No. 4 & 6, Jalan Puteri1/1, Bandar Puteri', 'Puchong, ', ' 47100 ', 'Selangor ', '03-80605944, 03-80606341, ', NULL, NULL, NULL, NULL),
(1344, 15, 3, 'No. 14A & 15A, Jalan TK 1/11A, Taman Kinrara, Seksyen 1, Batu 7 1/2, Jln Puchong, ', 'Selangor', '47100 ', 'Selangor ', '03-80754461, 03-80754680, 03-80752478 ', NULL, NULL, NULL, NULL),
(1345, 15, 3, 'No. 51, 53 & 55, Jalan Pusat BCH 1A, Bandar Country Homes, ', 'Rawang,', '48000 ', ' Selangor', '03-60925730, 03-60925732 ', NULL, NULL, NULL, NULL),
(1346, 15, 3, 'No. 43-G & 45-G, Ground Floor Jalan Semenyih Sentral 1 ', ' Semenyih, ', '43500', 'Selangor  ', '03-87239609, 03-87239897 ', NULL, NULL, NULL, NULL),
(1347, 15, 3, 'No. 56, Jalan Besar ', 'Sepang ', '43900 ', 'Selangor', '03-31422171, 03-31422250', NULL, NULL, NULL, NULL),
(1348, 15, 3, 'xNo. 7 & 9 Jalan Perusahaan 2 Off Jalan Kolej, Taman Jinma ', 'Seri Kembangan, ', '43300 ', 'Selangor', '03-89457470, 03-89422093', NULL, NULL, NULL, NULL),
(1349, 15, 3, 'No. 15 & 17, Jalan Setia Prima RU13/R Setia Alam, Seksyen U/13 ', 'Shah Alam, ', '40170 ', 'Selangor', '03-33437740, 03-33437792 ', NULL, NULL, NULL, NULL),
(1350, 15, 3, 'Lot 13-1 & Lot 14-1 Ground Floor, Laman Seri Business Park Seksyen 13, ', 'Shah Alam  ', '40100 ', 'Shah Alam  ', '03-55195645, 03-55195702 ', NULL, NULL, NULL, NULL),
(1351, 15, 3, 'No. 47 & 49, Jalan Utas B/15B Section 15B ', 'Shah Alam, ', '40000 ', 'Selangor', '03-55122860, 03-55122861 ', NULL, NULL, NULL, NULL),
(1352, 15, 3, 'Lot No. A6 & A7 Jalan SS15/4D ', 'Subang Jaya, ', '47500 ', 'Selangor ', '03-56350093, 03-56364434 ', NULL, NULL, NULL, NULL),
(1353, 15, 3, 'No.8A, Lebuh Raya B, Subang New Village', 'Shah Alam ', ' 40150 ', 'Selangor  ', '03-78467052, 03-78467371 ', NULL, NULL, NULL, NULL),
(1354, 15, 3, 'No. 58E Jalan Mahsuri ', 'Sg Besar, ', '45300 ', 'Selangor', '03-32242128,03-32241153, 03-32241203 ', NULL, NULL, NULL, NULL),
(1355, 15, 3, 'Lot 132, 132A & 133B Jalan Besar ', ' Tanjung Karang ', '45500:', 'Selangor ', '03-32698518, 03-32695429 ', NULL, NULL, NULL, NULL),
(1356, 15, 3, ' No. 24, Jalan USJ10/1 USJ Taipan Triangle ', 'UEP Subang Jaya,', '47620 ', ' Selangor  ', '03-56310878, 0356375048, 03-56368699 ', NULL, NULL, NULL, NULL),
(1357, 15, 3, ' No 5 & 7, Jalan USJ Sentral 2 USJ Sentral ', 'Subang Jaya, ', '47620 ', 'Selangor  ', '03-80259390, 03-80259379 ', NULL, NULL, NULL, NULL),
(1358, 15, 3, 'No. 50, Jalan Lim Teck Wan', 'Dungun', ' 23000 ', ' Terengganu', '09-8485220, 09-8485221 ', NULL, NULL, NULL, NULL),
(1359, 15, 3, 'No. 164-G, Jalan Tuan Hitam ', 'Jerteh ', '22000 ', 'Terengganu', '009-6972511, 09-6972516', NULL, NULL, NULL, NULL),
(1360, 15, 3, '42, 1st Floor Bangunan Dato''Isaac, Jalan Dato Isaac, ', 'Kuala Terengganu', '20000 ', 'Terengganu', '09-6242388, 09-6242361 ', NULL, NULL, NULL, NULL),
(1361, 15, 3, '42, 1st Floor Bangunan Dato'' Isaac, Jalan Dato'' Isaac, ', ' Kuala Terengganu', '20000', 'Terengganu', '09-6242388, 09-6242361 ', NULL, NULL, NULL, NULL),
(1362, 15, 3, 'No. 12487 & 12488 Jalan Kubang Kurus ', 'Kemaman, ', '24000 ', 'Terengganu', '09-8593534,, 09-8592534 ', NULL, NULL, NULL, NULL),
(1363, 15, 3, 'No. 69/2,Ground & Mezzanine Floor, Bangunan UMNO Terengganu, Jalan Sultan Ismail,', 'Kuala Terengganu', ' 20200 ', 'Terengganuc', '09-6249954,09-6249957, 09-6249958,09-6249891', NULL, NULL, NULL, NULL),
(1364, 15, 3, 'Lot 77 & 78, Bandar Pasaraya Mile 4, North Road ', 'Sandakan, ', '90000 ', 'Sabah ', '089-218240, 089-208237', NULL, NULL, NULL, NULL),
(1365, 15, 3, ' Lot 41 & 42, Ground & First Floor, Adika Commercial Complex, ', 'Keningau, Sabah.  Tel:', '90007 ', 'Sabah', '087-331393, 087-331088 ', NULL, NULL, NULL, NULL),
(1366, 15, 3, '1st Floor, Lot 34(No. 35), Block D, Damai Plaza Luyang Commercial Plaza, Jalan Damai Luyang,', 'Kota Kinabalu', '88300 ', 'Sabah', '088-240480, 088-240481 ', NULL, NULL, NULL, NULL),
(1367, 15, 3, 'Ground & 1st Floors, Menara PBSB,Wisma Tun Fuad Stephens, Km 2.4 Jalan Tuaran,', 'Kota Kinabalu', '88300 ', 'Sabah', '088-213488 ', NULL, NULL, NULL, NULL),
(1368, 15, 3, 'Unit 1- 3, Ground & 1st Floor, Block M,  Jalan Bunga Ulam Raja,  ', 'Kota Kinabalu, ', '88830 ', 'Sabah  ', '088-393202, 088-393203', NULL, NULL, NULL, NULL),
(1369, 15, 3, '1st Floor Lot 35(No.36), Block D, Damai Plaza Luyang, Commercial Plaza, Jalan Damai Luyang, ', 'Kota Kinabalu, ', '88300 ', 'Sabah', '088-234488', NULL, NULL, NULL, NULL),
(1370, 15, 3, 'No. G1-G3 Bangunan Uni. Asia No. 1, Jalan Sagunting PO Box 11455 ', 'Kota Kinabalu, ', '88816 ', 'Sabah  ', '088-246112, 088-243725', NULL, NULL, NULL, NULL),
(1371, 15, 3, 'Ground & 1st Floor, Lot 41 & 42, Blok D, Luyang Commercial Centre, Lorong Pokok Kayu Manis 1, Jalan Damai Luyang ', 'Kota Kinabalu,', '88300 ', ' Sabah', '088-280164, 088-280160 ', NULL, NULL, NULL, NULL),
(1372, 15, 3, 'Lot 9 & 10, Sedco Building, Jalan Melor P.O.Box 344 ', 'Kudat, ', '89058', 'Sabah ', '088-613255, 088-613194', NULL, NULL, NULL, NULL),
(1373, 15, 3, 'MDLD A154 & 155, Block 24, Sedco Shophouse, ', 'Lahad Datu, ', '91100 ', 'Sabah', '089-881561, 089-884992 ', NULL, NULL, NULL, NULL),
(1374, 15, 3, 'Lot 32-34, Blok HS-3, Sandakan Harbour Square, Phase 2, Jln Pryer ', 'Sandakan, ', '90000 ', 'Sabah', '089-212627, 089-215332', NULL, NULL, NULL, NULL),
(1375, 15, 3, 'Lot 13 & 14 Sabindo Square Jalan Dunlop ', 'Tawau,', '91007 ', ' Sabah ', '089-770430,, 089-764932 ', NULL, NULL, NULL, NULL),
(1376, 15, 3, 'Ground Floor, Block B, L 273, Jalan Market, Bau Town District ', 'Bau ', '94000 ', 'Sarawak', '082-762325, 082-762322 ', NULL, NULL, NULL, NULL),
(1377, 15, 3, ' Ground Floor, Right Wing, Bangunan BDA, Jalan Sommerville, ', ' Bintulu, ', '97000', 'Sarawak ', '086-334152, 086-334154 ', NULL, NULL, NULL, NULL),
(1378, 15, 3, 'No 164, 166 & 168, 1st Floor, Jalan Abell, ', 'Kuching, ', '93100 ', 'Sarawak, ', '082-244791 ', NULL, NULL, NULL, NULL),
(1379, 15, 3, 'Lot 585 & 586, 2nd Floor, Block 10, KTLD, Wisma Singh,Jalan Tun Ahmad Adruce, ', 'Kuching, ', '93400 ', 'Sarawak', '082-415296 ', NULL, NULL, NULL, NULL),
(1380, 15, 3, 'No.164, 166 & 168 1st Floor, Jalan Abell ', 'Kuching  ', '93100 ', 'Sarawak', '082-244791 ', NULL, NULL, NULL, NULL);
INSERT INTO `banks_branch_info` (`bbi_id`, `ba_id`, `co_id`, `bbi_address`, `bbi_city`, `bbi_zipcode`, `bbi_state`, `bbi_phone`, `bbi_digitrouting`, `bbi_swiftcode`, `bbi_addinfo`, `bbi_status`) VALUES
(1381, 15, 3, 'Lot 584, (1st & 2nd Floors, 585 ( 1st Floor) , Block 10, KTLD Wisma Singh, Jalan Tun Ahmad Adruce, ', 'Kuching, ', '93400 ', 'Sarawak', '082-415067 ', NULL, NULL, NULL, NULL),
(1382, 15, 3, 'Lot 92,93 & 94, Ground Floor, Premier 101, Jalan Tun Jugah,  ', 'Kuching, ', '93350 ', 'Sarawak', '082 466 116', NULL, NULL, NULL, NULL),
(1383, 15, 3, 'No. 164, 166 & 168, Jalan Abell,', 'Kuching, ', ' 93100 ', 'Sarawak', '082-244604, 082-256015', NULL, NULL, NULL, NULL),
(1384, 15, 3, 'xBangunan AmBank Lot 257, Section 8, Jalan Haji Taha', 'Kuching, ', ' 93400 ', 'Sarawak x', '082-422992, 082-207066,', NULL, NULL, NULL, NULL),
(1385, 15, 3, 'Ground & First Floor, Lot 16, 17 & 18 Golden Court Commercial Centre, Batu 4 1/2 Jalan Penrissen ', ' Kuching, ', '93250', 'Sarawak ', '082-455560 ', NULL, NULL, NULL, NULL),
(1386, 15, 3, 'Ground Floor, Lot 41 & 42 Pusat Komersil Tabuan Stutong, Jalan Setia Raja ', 'Kuching, ', '93350 ', 'Sarawak', '082-360644, 082-360761', NULL, NULL, NULL, NULL),
(1387, 15, 3, 'Lot 2497, Boulevard Commercial Centre, KM3, Jalan Miri Pujut, ', 'Miri, ', '98000 ', 'Sarawak', '085-425595, 085-422275 ', NULL, NULL, NULL, NULL),
(1388, 15, 3, 'Lot 2497, Boulevard Commercial Centre, KM 3, Jalan Miri Pujut, ', 'Miri,  ', '98000 ', 'Sarawak', '085-415526 ', NULL, NULL, NULL, NULL),
(1389, 15, 3, 'Lot 244 & 246, Beautiful Jade Centre, P.O. Box 638, ', 'Miri,', '98007 ', ' Sarawak', '085-414676, 085-425982', NULL, NULL, NULL, NULL),
(1390, 15, 3, 'Lot No. 2504 & 2505, Boulevard Commercial Centre,KM 3, Jalan Miri-Pujut, ', 'Miri, ', '98000 ', 'Sarawak', '085-437908, 085-437910', NULL, NULL, NULL, NULL),
(1391, 15, 3, 'Ground & 1st Floor No. 18A & 18B, Lorong Tun Razak ', ' Sarikei, ', '96100', 'Sarawak  ', '084-655776, 084-655777 ', NULL, NULL, NULL, NULL),
(1392, 15, 3, 'Ground Floor Lot 295, Serian Town District ', 'Serian, ', '94700 ', 'Sarawak', '082-875158, 082-875177 ', NULL, NULL, NULL, NULL),
(1393, 15, 3, '151, 2nd Floor, Jalan Kampung Nyabor, ', 'Sibu, ', '96000 ', 'Sarawak', '084-310930, 084-318289', NULL, NULL, NULL, NULL),
(1394, 15, 3, 'Lot 1195 S/L 37, Ground Floor Block 1, Menyan L.D Sibu Jaya,', 'Sibu ', ' 96000 ', 'Sarawak  ', '084-237849, 084-236978 ', NULL, NULL, NULL, NULL),
(1395, 15, 3, '149, 3rd Floor, Jalan Kampung Nyabor, ', 'Sibu, ', '96000 ', 'Sarawak', '084-313901, 084-313902 ', NULL, NULL, NULL, NULL),
(1396, 15, 3, 'Delta Commercial Centre, 14-15 Ground Floor Pusat Pedada, Jalan Pedada ', 'Sibu, ', '96000 ', 'Sarawak', '084-337791, 084-339105', NULL, NULL, NULL, NULL),
(1397, 15, 3, 'No. 21, 23 & 25 Ground & 1st Floor, Jalan Tuanku Osman ', ' Sibu ', '96000', 'Sarawak  ', '084-348746, 084-349643', NULL, NULL, NULL, NULL),
(1398, 15, 3, 'Lot 115, 101 & 102 Wisma Sibu Chinese Chamber of Commerce & Industry, Jalan Chambers, ', 'Sibu, ', '96000 ', 'Sarawak ', '084-322766, 084-341508 ', NULL, NULL, NULL, NULL),
(1399, 15, 3, '45 & 47, Jalan Telawi , Bangsar Baru', 'Kuala Lumpur', '59100 ', 'Kuala Lumpur', '03-2282 8739 / 40', NULL, NULL, NULL, NULL),
(1400, 15, 3, 'S13, Jalan Indah 1/6, Off Jalan Balakong , Taman Indah ', 'Cheras ', '43200 ', 'Selangor', '03-9074 4013 / 78', NULL, NULL, NULL, NULL),
(1401, 15, 3, '36 & 38, Jalan Temenggung 1/9 , Bandar Mahkota Cheras ', ' Cheras ', '43200', 'Selangor', '03-9010 5901', NULL, NULL, NULL, NULL),
(1402, 15, 3, '14332 & 14333, Batu 4, Jalan Klang Lama ', 'Jalan Klang Lama ', '58100 ', 'Kuala Lumpur', '03-7980 8069 / 8704', NULL, NULL, NULL, NULL),
(1403, 15, 3, '87 & 89, Batu 3, Jalan Ipoh', 'Jalan Ipoh ', '51200 ', 'Kuala Lumpur', '03-4042 3577, 03-4043 7489', NULL, NULL, NULL, NULL),
(1404, 15, 3, 'Grd & Mezzanine, Bangunan Lim, Batu 4 1/2, Jalan Ipoh ', 'Kuala Lumpur', '51200 ', 'Kuala Lumpur', '03-6259 3253 / 3260', NULL, NULL, NULL, NULL),
(1405, 15, 3, '2 & 4, Jalan 23/70A, Desa Sri Hartamas ', ' Kuala Lumpur', '50480', ' Kuala Lumpur', '03-6201 0550', NULL, NULL, NULL, NULL),
(1406, 15, 3, '21, Jalan Ambong Kiri 2, Kepong Baru', 'Kuala Lumpur', '52100 ', 'Kuala Lumpur', '03-6251 3322 / 0585', NULL, NULL, NULL, NULL),
(1407, 15, 3, '2 & 2A, Wisma Manjalara, Jalan 7A/62A, Bandar Manjalara ', 'Kuala Lumpur', '52200 ', 'Kuala Lumpur', '03-6274 1315 / 85', NULL, NULL, NULL, NULL),
(1408, 15, 3, 'Ground Floor 23, Bangunan AmBank Group, 55, Jalan Raja Chulan ', 'Kuala Lumpur', '50200 ', 'Kuala Lumpur', '03-2078 2100 / 77', NULL, 'ARBKMYKLXXX', NULL, NULL),
(1409, 15, 3, 'Grd Flr, Menara AmBank , 8, Jalan Yap Kwan Seng', 'Kuala Lumpur', '50450 ', 'Kuala Lumpur', '03-2167 3000 / 6201', NULL, NULL, NULL, NULL),
(1410, 15, 3, 'Level 1, Menara Dion, Jalan Sultan Ismail ', ' Kuala Lumpur', '50250', ' Kuala Lumpur', '03-2381 1552, 03-2026 3939', NULL, NULL, NULL, NULL),
(1411, 15, 3, 'Lot G-52, Berjaya Times Square Area: 1, Jalan Imbi ', 'Kuala Lumpur', '55100 ', 'Kuala Lumpur', '03-2141 8003', NULL, NULL, NULL, NULL),
(1412, 15, 3, 'Wisma Maran,  Medan Pasar ', 'Kuala Lumpur', '50050 ', 'Kuala Lumpur', '03-20263833,, 03-20264886', NULL, NULL, NULL, NULL),
(1413, 15, 3, '48, Jalan Pasar, Off Jalan Pudu', 'Kuala Lumpur', ' 55100 ', 'Kuala Lumpur', '03-2141 3635 / 34', NULL, NULL, NULL, NULL),
(1414, 15, 3, 'Lot 78, 79 & 80, LG Flr, Kenanga Wholesale City , 2, Jalan Gelugor', ' Kuala Lumpur', '55200', ' Kuala Lumpur', '03-9221 3343', NULL, NULL, NULL, NULL),
(1415, 15, 3, '7 & 9, Jalan Solaris 1, Solaris Mont Kiara ', 'Kuala Lumpur', ' 50480 ', 'Kuala Lumpur', '03-6203 7920 / 22', NULL, NULL, NULL, NULL),
(1416, 15, 3, '16, Jalan 3/50C, Taman Setapak Indah, Off Jalan Genting Klang', 'Kuala Lumpur', '53300 ', 'Kuala Lumpur', '03-4023 6381 / 0201', NULL, NULL, NULL, NULL),
(1417, 15, 3, '159 & 161, Jalan 2/3A, Pusat Bandar Utara ', 'Batu Caves, ', '68100, ', 'Kuala Lumpur', '03-6136 8560 / 63', NULL, NULL, NULL, NULL),
(1418, 15, 3, '24 & 26, Jalan Hujan Rahmat 2, OUG ', 'Kuala Lumpur', '58200 ', 'Kuala Lumpur', '03-7784 7035 / 38', NULL, NULL, NULL, NULL),
(1419, 15, 3, '18 & 20, Jalan Radin Tengah, Bandar Baru Seri Petaling', 'Kuala Lumpur', '57000 ', 'Kuala Lumpur', '03-9059 4462 / 5458', NULL, NULL, NULL, NULL),
(1420, 15, 3, '6-1-G, Jalan Tun Mohd Fuad 3, Taman Tun Dr Ismail', 'Kuala Lumpur', '60000 ', 'Kuala Lumpur', '03-7940 0999 / 97', NULL, NULL, NULL, NULL),
(1421, 15, 3, '54 & 56, Jalan 1/27F,  Kuala Lumpur Suburban Centre (KLSC) ', 'Kuala Lumpur', '53300 ', 'Kuala Lumpur', '03-4149 5191 / 5213', NULL, NULL, NULL, NULL),
(1422, 16, 3, 'No 7 & 8 Jalan DR1 Delima Point Taman Delima Raya ', 'Melaka ', '75150 ', 'Melaka ', ' 06-232 1386 / 1390 / 1395', NULL, NULL, NULL, NULL),
(1423, 16, 3, '200 & 201 Taman Melaka Raya Off Jalan Parameswara P.O.Box 164 ', 'Melaka', '75000 ', 'Melaka', '06-283 5500 / 5501 / 5502', NULL, NULL, NULL, NULL),
(1424, 16, 3, 'No. 765 Jalan Batu Pahat ', 'Ayer Hitam ', '86100 ', 'Johor', '07-758 1100 / 1616 ', NULL, NULL, NULL, NULL),
(1425, 16, 3, '3 & 4, Jalan Merah Taman Bukit Pasir ', 'Batu Pahat  ', '83000 ', 'Johor ', '07-433 4210 / 4213', NULL, NULL, NULL, NULL),
(1426, 16, 3, 'No. 17 & 18, Blok 6 Danga Bay Jalan Skudai ', 'Johor Bahru  ', '80200 ', 'Johor', ' 07-234 3842', NULL, NULL, NULL, NULL),
(1427, 16, 3, 'No. 24 & 25 Jalan Kebun Teh 1 Kebun Teh Commercial City ', 'Johor Bahru ', '80250 ', 'Johor   ', '07-221 2403', NULL, NULL, NULL, NULL),
(1428, 16, 3, '130 & 132 Jalan Rosmerah 2/17 Taman Johor Jaya ', ' Johor Bahru ', '81100', 'Johor ', '07-351 8602 / 8603 / 8596', NULL, NULL, NULL, NULL),
(1429, 16, 3, '503, Jalan Mersing', 'Kluang', ' 86000 ', ' Johor', '07-772 4736 / 4750', NULL, NULL, NULL, NULL),
(1430, 16, 3, '49 & 51 Jalan Sri Perkasa 2/1 Taman Tampoi Utara ', 'Tampoi ', '81200 ', ' Johor ', '07-241 4946 / 4948', NULL, NULL, NULL, NULL),
(1431, 16, 3, 'No. 1, Ground Floor Jalan Nagasari 23 Bandar Segamat Baru ', 'Segamat', '85000 ', ' Johor', '07-943 1378 / 1428 / 1432', NULL, NULL, NULL, NULL),
(1432, 16, 3, 'No. 23 & 25 Jalan Permas 10/2 Bandar Baru Permas Jaya ', 'Johor Bahru ', '81750 ', 'Johor ', '07-386 3703 / 3857 / 3904', NULL, NULL, NULL, NULL),
(1433, 16, 3, 'No. 28 & 30 Jalan Utama 45 Taman Mutiara Rini ', 'Skudai ', '81300 ', 'Johor   ', '07-557 0900', NULL, NULL, NULL, NULL),
(1434, 16, 3, 'No.30A & 30A-1 Jalan Arab ', 'Muar  ', '84000 ', 'Johor  ', '06-953 2384 / 3753 / 9795', NULL, NULL, NULL, NULL),
(1435, 16, 3, '13 & 14, Jalan Raya  Taman Sri Kulai Baru Batu 21 ', 'Kulai  ', '81000 ', 'Johor', '07-663 9799 / 9802 / 9803', NULL, NULL, NULL, NULL),
(1436, 16, 3, 'No. 1 & 2, Tingkat Bawah Laman Niaga Pernama Kem Syed Sirajuddin ', 'Gemas ', '73400 ', 'Negeri Sembilan ', '07-948 3622', NULL, NULL, NULL, NULL),
(1437, 16, 3, '5733 & 5734, Jalan TS 2/1 Taman Semarak Phase II ', ' Nilai ', '71800', 'Negeri Sembilan ', '06-799 4114 / 5836 / 5837', NULL, NULL, NULL, NULL),
(1438, 16, 3, 'No 175 Jalan Dato'' Bandar Tunggal ', ' Seremban ', '70000', 'Negeri Sembilan', ' 06-762 9651 / 9652 / 9653', NULL, NULL, NULL, NULL),
(1439, 16, 3, '3 & 4 Jalan Mahajaya PD Centre Point', 'Port Dickson ', ' 71000 ', 'Negeri Sembilan ', '06-647 3950 / 3951 / 3955 ', NULL, NULL, NULL, NULL),
(1440, 16, 3, 'No. 86, Jalan Gaya ', 'Kota Kinabalu ', '88000 ', 'Sabah ', ' 088-230 213 / 233 232', NULL, NULL, NULL, NULL),
(1441, 16, 3, 'Lot 19 & 20, Block K Sadong Jaya Complex Jalan Ikan Juara 3 Karamunsing ', ' Kota Kinabalu ', '88300', 'Sabah    ', '088-264 410 / 413 / 261 515', NULL, NULL, NULL, NULL),
(1442, 16, 3, 'Ground Floor, Lot 1 & 2  Bandar Sri Perdana  Fasa 5 KM4 Jalan Silam Bandar Sri Perdana  ', ' Lahad Datu ', '91100', ' Sabah', '089-865 730 / 731 / 732 / 733', NULL, NULL, NULL, NULL),
(1443, 16, 3, 'TB 281, 282 & 283 Jalan Haji Karim Tawau Extension II P.O. Box 630 ', ' Tawau ', '91008', 'Sabah ', '089-778 197 / 198', NULL, NULL, NULL, NULL),
(1444, 16, 3, 'Lot No. 163 & 164 Block 18 Jalan Prima Square Batu 4, Jalan Utara ', 'Sandakan ', '90000 ', 'Sabah ', '089-212 752 / 753', NULL, NULL, NULL, NULL),
(1445, 16, 3, 'Sub Lot 13, Off Lot 3299 Parkcity Commerce Square ', 'Bintulu ', '97000 ', 'Sarawak', '086-314 248 / 249 / 261', NULL, NULL, NULL, NULL),
(1446, 16, 3, 'Lot 247 & 248 Section 49, KTLD Jalan Tuanku Abdul Rahman ', ' Kuching', '93100', ' Sarawak ', '082-245 888 / 256 899 / 422 909 / 589 / 598', NULL, NULL, NULL, NULL),
(1447, 16, 3, 'Lot 2387 & 2388 Block A4 Jalan Boulevard 1A Boulevard Commercial Center KM 3, Jalan Miri-Pujut ', ' Miri ', '98000', 'Sarawak', '085-437 442 / 443 / 445', NULL, NULL, NULL, NULL),
(1448, 16, 3, 'No. 91 & 93 Jalan Kampung Nyabor ', 'Sibu ', '96000 ', 'Sarawak', '084-325 943 / 926', NULL, NULL, NULL, NULL),
(1449, 16, 3, 'Lot 2387 & 2388 Block A4 No. 1 & 2, Jalan Penrissen Batu 7 Kota Sentosa', 'Kuching ', ' 93250 ', 'Sarawak ', ' 082-613 466', NULL, NULL, NULL, NULL),
(1450, 16, 3, 'No. 25 & 27, Jalan Satu Taman Pertiwi Indah Jalan Kangar - Alor Setar ', ' Kangar', '01000', ' Perlis', ' 04-9777 200 ', NULL, NULL, NULL, NULL),
(1451, 16, 3, 'No. 147 & 148 Susuran Sultan Abdul Hamid 8 Kompleks Sultan Abdul Hamid Fasa 2 Persiaran Sultan Abdul Hamid ', ' Alor Setar ', '05050', 'Kedah', '04-772 1477', NULL, NULL, NULL, NULL),
(1452, 16, 3, 'No. 13 & 14 Jalan KLC Satu (1) Kulim Landmark Central ', 'Kulim  ', '09000 ', 'Kedah', '04-495 5566', NULL, NULL, NULL, NULL),
(1453, 16, 3, '55 Jalan Perdana Heights 2/2 Perdana Heights ', 'Sungai Petani', '08000 ', ' Kedah', '04-422 0831 / 421 1808 / 423 0684 ', NULL, NULL, NULL, NULL),
(1454, 16, 3, '149-151 Persiaran Bunga Raya Langkawi Mall ', 'Kuah Langkawi ', '07000 ', 'Kedah', '04-966 4426 / 4427 / 4510', NULL, NULL, NULL, NULL),
(1455, 16, 3, 'No 1 & 3 Ground & First Floor Persiaran Greentown 9 Greentown Business Centre ', ' Ipoh ', '30450', 'Perak', ' 05-255 0980 / 0987', NULL, NULL, NULL, NULL),
(1456, 16, 3, 'No 27A-27A1  Jalan Sultan Azlan Shah Utara ', ' Ipoh', ' 31400', ' Perak', '05-549 7277 / 7266', NULL, NULL, NULL, NULL),
(1457, 16, 3, 'Tingkat Bawah Kompleks Mutiara Armada Jalan Nakhoda Pengkalan TLDM ', ' Lumut ', '32100', 'Perak  ', '05-683 5051 / 5066', NULL, NULL, NULL, NULL),
(1458, 16, 3, 'No 11, Medan Sri Intan Jalan Sekolah ', 'Teluk Intan ', '36000 ', 'Perak', '05-621 0130 / 0131 / 0133', NULL, NULL, NULL, NULL),
(1459, 16, 3, 'No 40 & 42 Jalan Tupai ', 'Taiping  ', '34000 ', 'Perak  ', '05-806 6816', NULL, NULL, NULL, NULL),
(1460, 16, 3, 'No 11 & 12 Taman Sitiawan 1 Jalan Lumut ', 'Sitiawan', '32000 ', ' Perak', '05-692 1328 / 8401 / 691 3486', NULL, NULL, NULL, NULL),
(1461, 16, 3, 'No 124 & 126 Jalan Mayang Pasir Taman Sri Tunas ', 'Bayan Baru ', '11950 ', 'Pulau Pinang  ', '04-644 7593 / 7643 / 3815 / 4171', NULL, NULL, NULL, NULL),
(1462, 16, 3, 'No 55-57, Jalan Selat Taman Selat P.O.Box 165 Off Jalan Bagan Luar ', 'Butterworth', '12000 ', ' Pulau Pinang ', ' 04-333 1372 / 3177', NULL, NULL, NULL, NULL),
(1463, 16, 3, 'No G98-G-32 Jalan Fettes Prima Tanjung Business Centre Tanjung Tokong ', 'Pulau Pinang  ', '11200 ', 'Pulau Pinang  ', '04-899 9069', NULL, NULL, NULL, NULL),
(1464, 16, 3, 'No 104C, 104D & 104E Jalan Macalister', 'Pulau Pinang', ' 10400 ', 'Pulau Pinang', '04-229 1495', NULL, NULL, NULL, NULL),
(1465, 16, 3, '1A, Light Street  Wisma Pelaut ', 'Pulau Pinang', ' 10200 ', 'Pulau Pinang', ' 04-263 6633 / 2121 / 4373 / 261 2494', NULL, NULL, NULL, NULL),
(1466, 16, 3, 'No 10, Jalan Todak Satu Pusat Bandar Seberang Jaya ', 'Prai ', '13700 ', 'Pulau Pinang ', ' 04-399 5881', NULL, NULL, NULL, NULL),
(1467, 16, 3, 'No 2, Tingkat Kikik 7 Taman Inderawasi ', 'Pulau Pinang', '13600 ', 'Pulau Pinang  ', '04-397 8534 / 8535 / 399 3900', NULL, NULL, NULL, NULL),
(1468, 16, 3, 'Lot 1317 & 1318 Lorong Malinja Taman Sepakat Off Jalan Butterworth,  Kepala Batas ', 'Seberang Prai Utara ', '13200', 'Pulau Pinang ', '04-575 1824 / 1853 / 1902', NULL, NULL, NULL, NULL),
(1469, 16, 3, 'Nadi Kota ', 'Bandar Jengka ', '26400 ', 'Pahang  ', ' 09-466 2233 / 2253', NULL, NULL, NULL, NULL),
(1470, 16, 3, 'G2-Ground Floor G2 Menara Zenith Jalan Putra Square 6 Putra Square ', 'Kuantan ', '25200 ', 'Pahang  ', '09-514 8584', NULL, NULL, NULL, NULL),
(1471, 16, 3, '9, Ground Floor Jalan Ahmad Shah ', 'Temerloh ', '28000 ', 'Pahang  ', '09-296 8811', NULL, NULL, NULL, NULL),
(1472, 16, 3, '70, Jalan Temerloh', 'Mentakab ', ' 28400 ', 'Pahang ', '09-278 4487 / 2201 / 277 2969', NULL, NULL, NULL, NULL),
(1473, 16, 3, 'No. A1 & A2, Blok A Bandar Baru Bukit Bunga  ', 'Bukit Bunga Tanah Merah ', '11700 ', 'Kelantan ', '09-946 8955 / 8952', NULL, NULL, NULL, NULL),
(1474, 16, 3, '13788H & 3788I Seksyen 13 Jalan Sultan Ibrahim ', 'Kota Bharu ', '15050 ', 'Kelantan', '09-744 5688 / 5582 / 743 8653', NULL, NULL, NULL, NULL),
(1475, 16, 3, 'K711-713 Wisma Zahid Jalan Sulaimani ', ' Kemaman ', '24000', 'Terengganu', '09-858 1744 / 2544 / 6572 / 3980', NULL, NULL, NULL, NULL),
(1476, 16, 3, 'Ground Floor Admin Building Block B Kemaman Supply Base ', 'Kemaman ', '24007 ', 'Terengganu ', '09-863 1297 / 1303', NULL, NULL, NULL, NULL),
(1477, 16, 3, 'No 11 & 11A Jalan Mamanda 7/1 Ampang Point', 'Ampang ', ' 68000 ', 'Selangor ', '03-4257 6802/ 6804', NULL, NULL, NULL, NULL),
(1478, 16, 3, 'No. 21G & 23G Jalan Wawasan 2/2 Bandar Baru Ampang', ' Ampang  ', ' 68000', 'Selangor   ', '03-4296 2311', NULL, NULL, NULL, NULL),
(1479, 16, 3, 'Unit B-G-07 & B-G-08 Block B No.2, Jln PJU 1A/7A Ara Damansara ', 'Petaling Jaya ', '47301 ', 'Selangor', '03-7847 3177 ', NULL, NULL, NULL, NULL),
(1480, 16, 3, 'No. 77 & 79 Jalan Batu Nilam 5 Bandar Bukit Tinggi ', ' Klang  ', '41200', 'Selangor', '03-3323 2822', NULL, NULL, NULL, NULL),
(1481, 16, 3, '46, Jalan 54 Desa Jaya ', 'Kepong ', '52100 ', 'Selangor ', '03-6276 4942 / 4943 / 4946 ', NULL, NULL, NULL, NULL),
(1482, 16, 3, '2 & 3, Jalan Saga Taman Sri Saga Off Jalan Sg. Chua ', 'Kajang ', '43000 ', ' Selangor', '03-8737 7435 / 7436 / 7437', NULL, NULL, NULL, NULL),
(1483, 16, 3, 'No. 40, Pelangi Avenue Jalan Kelicap 42A/KU1 Klang Bandar Diraja ', 'Klang  ', '41050 ', 'Selangor ', '03-3341 5237', NULL, NULL, NULL, NULL),
(1484, 16, 3, 'P1-13, Shaftsbury Square Lot No. 2350, Cyber 6 Persiaran Multimedia ', 'Cyberjaya  ', '63000 ', 'Selangor', '03-8318 1944', NULL, NULL, NULL, NULL),
(1485, 16, 3, 'No 1, Jalan TK1/11A Taman Kinrara Section 1, Batu 7 1/2 Jalan Puchong ', 'Puchong  ', '47100 ', 'Selangor', '03-8070 3403', NULL, NULL, NULL, NULL),
(1486, 16, 3, 'No 29 & 31 Jalan Tiara 3 Bandar Baru Klang ', 'Klang  ', '41150 ', 'Selangor', '03-3342 1585 / 1597 / 1602', NULL, NULL, NULL, NULL),
(1487, 16, 3, 'Lot G17-20 Ground Floor Kompleks PKNS ', 'Shah Alam  ', '40000 ', 'Selangor', '03-5510 5200 / 6990 / 0523', NULL, NULL, NULL, NULL),
(1488, 16, 3, 'No.15-1 & 17-1 (GF) No.8, Jalan Anggerik Vanilla BE 31/BE Kota Kemuning, Section 31', 'Shah Alam  ', ' 40460 ', 'Selangor ', '03-5120 1811', NULL, NULL, NULL, NULL),
(1489, 16, 3, 'J-03-G, Block J Setiawalk Persiaran Wawasan Pusat Bandar Puchong ', 'Puchong  ', '47160 ', 'Selangor ', '03-5882 2880 / 2810 / 2816 / 2817', NULL, NULL, NULL, NULL),
(1490, 16, 3, 'No 1, Jalan Berangan ', 'Port Klang  ', '42000 ', 'Selangor', '03-3168 8366 / 3167 / 7346', NULL, NULL, NULL, NULL),
(1491, 16, 3, 'No 38 & 40 Jalan Yong Shook Lin ', 'Petaling Jaya ', '46050 ', 'Selangor ', '03-7955 0032 , 03-7956 0022 (HPC) ', NULL, NULL, NULL, NULL),
(1492, 16, 3, 'No 48 Jalan Warisan Megah 1/4 ', ' Sepang', '43900', ' Selangor', '03-8706 6300', NULL, NULL, NULL, NULL),
(1493, 16, 3, 'No. 33G & 35G Jalan 1B, Fortune Avenue ', 'Rawang ', '48000 ', ' Selangor', '03-6091 3322 / 3311 / 2394 / 2396', NULL, NULL, NULL, NULL),
(1494, 16, 3, '20-22 Jalan 21/12 Sea Park ', 'Petaling Jaya', '46730 ', ' Selangor', '03-7875 6514 / 6255 / 6461', NULL, NULL, NULL, NULL),
(1495, 16, 3, '36, Jalan PSK 3 Pusat Perdagangan Seri Kembangan ', 'Seri Kembangan ', '43300 ', 'Selangor ', '03-8945 6429 / 8943 6488', NULL, NULL, NULL, NULL),
(1496, 16, 3, '7 & 9, Jalan SS 15/8A ', ' Petaling Jaya ', '47500', 'Selangor', '03-5634 8043 / 8045 / 8049', NULL, NULL, NULL, NULL),
(1497, 16, 3, '8A & 8B Jalan USJ 10/1J , UEP Subang Jaya', ' Petaling Jaya  ', '47610 ', 'Selangor', ' 03-8023 7271', NULL, NULL, NULL, NULL),
(1498, 16, 3, 'Institut Teknologi MARA 2nd. Floor Menara UiTM ', 'Shah Alam  ', '40450 ', 'Selangor', '03-5519 2377 / 1160', NULL, NULL, NULL, NULL),
(1499, 16, 3, 'Lot K-G32A-D & G32 Ground Floor The Curve Shopping Complex Jalan PJU 7/8 Mutiara Damansara ', 'Petaling Jaya', '47820 ', ' Selangor  ', '03-7726 7258 / 7728 7035', NULL, NULL, NULL, NULL),
(1500, 16, 3, 'No. 47, Jalan DD3A/1 BASCO Business Centre Taman Dato'' Demang  ', 'Seri Kembangan  ', '43300 ', 'Selangor  ', '03-8959 2588', NULL, NULL, NULL, NULL),
(1501, 16, 3, 'No 4 & 6 Jalan Telawi 3 Bangsar Baru ', 'Kuala Lumpur', '59100 ', 'Kuala Lumpur', '03-2283 5025 / 5026 / 5027 ', NULL, NULL, NULL, NULL),
(1502, 16, 3, 'Ground Floor 148, Jalan Ampang', 'Kuala Lumpur', ' 50450 ', 'Kuala Lumpur', ' 03-2162 8770 ', NULL, NULL, NULL, NULL),
(1503, 16, 3, 'No 840 & 842 Batu 4 3/4 Jalan Ipoh ', 'Kuala Lumpur', '51200 ', 'Kuala Lumpur  ', ' 03-6258 7370 / 7690 ', NULL, NULL, NULL, NULL),
(1504, 16, 3, 'Ground & Mezzanine Floor  Menara Affin 80, Jalan Raja Chulan  P.O.Box 12744  ', 'Kuala Lumpur ', '51200 ', 'Kuala Lumpur ', '03-2055 2222', NULL, 'PHBMMYKL', NULL, NULL),
(1505, 16, 3, '81-85, Jalan 2/3A Pusat Bandar Utara KM 12, Jalan Ipoh ', ' Batu Caves ', '68100', 'Kuala Lumpur', '03-6137 2053 / 7122 ', NULL, NULL, NULL, NULL),
(1506, 16, 3, 'Ground Floor Bangunan LTAT Jalan Bukit Bintang ', 'Kuala Lumpur', '55100 ', 'Kuala Lumpur ', '03-2142 6311 / 6173 / 6681', NULL, NULL, NULL, NULL),
(1507, 16, 3, '468-11 & 468-11B Batu 3, Jalan Ipoh ', 'Kuala Lumpur ', '51200 ', 'Kuala Lumpur  ', '03-4042 5554 ', NULL, NULL, NULL, NULL),
(1508, 16, 3, '133, Jalan Bunus Off Jalan Masjid India ', 'Kuala Lumpur  ', '50100 ', 'Kuala Lumpur ', '03-2693 4686 ', NULL, NULL, NULL, NULL),
(1509, 16, 3, '10-12 Jalan Raden Tengah Bandar Baru Seri Petaling', 'Kuala Lumpur ', ' 57000 ', 'Kuala Lumpur ', '03-9058 5600', NULL, NULL, NULL, NULL),
(1510, 16, 3, '159 & 161 Jalan Genting Kelang P.O.Box 202 ', 'Setapak  ', '53300 ', 'Kuala Lumpur ', '03-4023 0455 / 0552 ', NULL, NULL, NULL, NULL),
(1511, 16, 3, '250 & 252 Jalan Mahkota Taman Maluri', 'Kuala Lumpur', ' 55100 ', 'Kuala Lumpur  ', '03-9282 7250 ', NULL, NULL, NULL, NULL),
(1512, 16, 3, '38 & 40, Jalan Midah 1 Taman Midah, Cheras ', 'Kuala Lumpur   ', '56000 ', 'Kuala Lumpur   ', '03-9130 0366 / 0194 / 0215 ', NULL, NULL, NULL, NULL),
(1513, 16, 3, 'G.05, Ground Floor Wisma Pertahanan Kementerian Pertahanan Malaysia  Jalan Padang Tembak  ', 'Kuala Lumpur  ', '50634 ', 'Kuala Lumpur x', ' 03-2698 7912, 2691 5649', NULL, NULL, NULL, NULL),
(1514, 16, 3, 'No 2 & 4, Jalan 1/27F Kuala Lumpur Sub-Urban Centre Wangsa Maju ', 'Kuala Lumpur ', '53300 ', 'Kuala Lumpur ', '03-4143 2814 / 2816 ', NULL, NULL, NULL, NULL),
(1515, 16, 3, '47 & 49 Jalan Tun Mohd Fuad 3 Taman Tun Dr. Ismail ', 'Kuala Lumpur  ', '60000 ', 'Kuala Lumpur  ', '03-7727 9080 / 9062 / 9082 ', NULL, NULL, NULL, NULL),
(1516, 17, 3, 'No 61 & 63  (Ground and 1st Floor)  Jalan Inang 3 Taman Paya Rumput Utama ', 'Cheng ', '76450 ', 'Melaka  ', '1-300-80-2428, 603-8321 5502 (from overseas)', NULL, NULL, NULL, NULL),
(1517, 17, 3, '777 Jalan Hang Tuah ', 'Melaka ', '75300 ', 'Melaka ', '1-300-88-1388 ', NULL, NULL, NULL, NULL),
(1518, 17, 3, '32A-C Jalan Rahmat ', 'Batu Pahat ', '83000 ', 'Johor ', '1-300-88-1388, 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1519, 17, 3, '1 Jalan Bukit Timbalan ', ' Johor Bahru ', '80000', 'Johor', '1-300-88-1388, 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1520, 17, 3, 'No. 8 Jalan Sri Putra1 Bandar Putra', 'Kulai  ', ' 81000 ', 'Johor  ', '1-300-80-2626,  603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1521, 17, 3, '46 Jalan Molek 1/10 Taman Molek ', ' Johor Bahru ', '81100', 'Johor ', '1-300-88-1388, 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1522, 17, 3, 'No. 2, Jalan Bestari 7/2 Taman Nusa Bestari ', 'Skudai ', '81300 ', 'Johor', ' 1-300-80-2626, 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1523, 17, 3, '15 Jalan Petrie ', 'Muar', '84000 ', ' Johor', '1-300-88-1388 ,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1524, 17, 3, 'Lot 5 Ground & First Floors Lot 6 Ground Floor Block L, Loring KK Taipan 3 Inanam New Township ', ' Kota Kinabalu', '88450', ' Sabah  ', '1-300-80-2626 , 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1525, 17, 3, '56 Jalan Gaya ', 'Kota Kinabalu ', '88000 ', 'Sabah', '1-300-88-1388, 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1526, 17, 3, 'Jalan Persatuan Fajar Complex ', 'Tawau ', '91000 ', 'Sabah ', '1-300-88-1388 , 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1527, 17, 3, 'No 1 Jalan Pelabohan Leboh 3 ', 'Sandakan ', '90000 ', 'Sabah ', '1-300-88-1388, 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1528, 17, 3, 'Unit No 135-G and 135-1 Ground & First Floor Jalan Taman Komersil Senawang 1 Taman Komersil Senawang ', ' Seremban ', '70450', 'Negeri Sembilan', '1-300-80-2626 , 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1529, 17, 3, '50-52  Jalan Dato Bandar Tunggal', ' Seremban ', ' 70000', 'Negeri Sembilan  ', '1-300-88-1388 , 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1530, 17, 3, '25-27  Jalan Law Gek Soon ', 'Bintulu', '97000 ', ' Sarawak', '1-300-88-1388 , 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1531, 17, 3, 'Bangunan Binamas Jalan Padungan ', 'Kuching ', '93100 ', 'Sarawak  ', '1-300-88-1388, 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1532, 17, 3, 'Lot 1623, Pujut 1A Pujut-Lutong Road ', ' Miri ', '98000', 'Sarawak ', '1-300-88-1388,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1533, 17, 3, 'No 2 Lot 16767 &  No 3 Lot 16868 Block 11 MTLD Tabuan Tranquility Commerce Centre Jalan Canna ', ' Kuching ', '93350', 'Sarawak  ', '1-300-80-2626, 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1534, 17, 3, '131 Jalan Kampung Nyabor ', ' Sibu ', '96000', 'Sarawak', '1-300-88-1388 ,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1535, 17, 3, '2 & 3 Kompleks Perniagaan Sultan Abdul Hamid Persiaran Sultan Abdul Hamid', 'Alor Star ', ' 05050 ', 'Kedah', '1-300-88-1388  ,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1536, 17, 3, '69 Jalan Ibrahim ', 'Sungai Petani', '08000 ', ' Kedah', '1-300-88-1388 , 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1537, 17, 3, '138 Jalan Sultan Yussuf ', ' Ipoh', '30000', ' Perak  ', '1-300-88-1388, 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1538, 17, 3, 'No 8 Laluan Medan Rapat Off Jalan Raja Dr Nazrin Shah ', ' Ipoh ', '31350', 'Perak', '1-300-80-2626, 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1539, 17, 3, '2A Jalan Mahkamah ', 'Teluk Intan', '36009 ', ' Perak', '1-300-88-1388  ,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1540, 17, 3, '2, Jalan Simpang', 'Taiping ', ' 34000 ', 'Perak  ', '1-300-88-1388 , 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1541, 17, 3, 'No. 26, 28 & 30 Persiaran Bayan Indah Bayan Bay ', 'Bayan Lepas', '11900 ', ' Pulau Pinang', '1-300-88-1388 , 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1542, 17, 3, '4778 Jalan Bagan Luar ', 'Butterworth ', '12000 ', 'Pulau Pinang  ', '1-300-88-1388,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1543, 17, 3, '1 Lebuh Downing', 'Pulau Pinang  ', ' 10300 ', 'Pulau Pinang', '1-300-88-1388 , 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1544, 17, 3, 'Unit 25, Precint 10 Jalan Tanjong Tokong ', ' Georgetown', '10470', ' Pulau Pinang  ', '1-300-80-2626,  603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1545, 17, 3, '1812 Jalan Perusahaan Autocity Juru Interchange ', 'Prai ', '13600 ', 'Pulau Pinang', '1-300-80-2626,  603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1546, 17, 3, '1 Jalan Mahkota ', 'Kuantan ', '25000 ', 'Pahang  ', '1-300-88-1388,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1547, 17, 3, '1/F & 2/F Bangunan KWSP  Jalan Padang Garong', 'Kota Bahru ', ' 15000 ', 'Kelantan  ', '1-300-88-1388 , 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1548, 17, 3, 'PT 1562 Persiaran KK 6/1 Bandar Baru Kubang Kerian  ', 'Kubang Kerian Kota Bharu,', '16150 ', ' Kelantan ', '1-300-80-2626 ,  603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1549, 17, 3, '57 Jalan Sultan Ismail ', 'Kuala Terengganu', '20200 ', ' Terengganu ', '1-300-88-1388  ,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1550, 17, 3, 'No. 18, 19 & 20 Jalan Mamanda 5 Ampang Point ', 'Ampang ', '68000 ', 'Selangor  ', '1-300-80-2626 , 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1551, 17, 3, 'G361 Ground Floor Rain Forest 1 Utama Shopping Centre (New Wing) Lebuh Bandar Utama Bandar Utama ', 'Petaling Jaya', '47800 ', ' Selangor  ', '1-300-80-2626  , 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1552, 17, 3, 'No. 55  Jalan Medan Pusat 2D Persiaran Bangi ', 'Bangi ', '43650 ', 'Selangor ', '1-300-80-2626 , 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1553, 17, 3, 'Unit 10-G & 10-1 Jalan C180/1 Dataran C180 ', 'Cheras South ', '43200 ', 'Selangor  ', '1-300-80-2626 , 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1554, 17, 3, 'Lot 55, 57 & 59 Jalan SS 21/37  Damansara Utama ', 'Petaling Jaya', '47400 ', ' Selangor', ' 1-300-88-1388  ,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1555, 17, 3, 'No 1 Jalan KP 1/2 Taman Kajang Prima Kilometer 5  Jalan Kajang-Semenyih ', ' Kajang ', '43000', 'Selangor  ', '1-300-88-1388 , 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1556, 17, 3, '2 Lorong Tiara 2A Bandar Baru Klang ', 'Klang ', '41150 ', 'Selangor  ', '1-300-80-2626, 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1557, 17, 3, 'Ground Floor  Wisma UEP Jalan USJ 10/1A', 'Subang Jaya ', ' 47620 ', 'Selangor', ' 1-300-88-1388 ,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1558, 17, 3, 'No. 5, Jalan Seri Pagi 1 Pusat Perdagangan Seri Pagi ', 'Rawang', '48200 ', ' Selangor', '1-300-88-1388,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1559, 17, 3, 'B - 20 - G & B - 20 - 1 Jalan Prima SG 1 Prima Sri Gombak ', 'Gombak  ', '68100 ', 'Selangor ', '1-300-80-2626 , 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1560, 17, 3, 'G12, 13 & 14, Ground Floor  Plaza Shah Alam No. 2, Jalan Tengku Ampuan Zabedah E9/E Seksyen 9 ', ' Shah Alam ', '40100', 'Selangor   ', '1-300-80-2626 ,  603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1561, 17, 3, 'No 7 Jalan Kenari 5 Bandar Puchong Jaya ', ' Puchong ', '47100', 'Selangor', '1-300-88-1388  , 603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1562, 17, 3, '17-23 Jalan Sultan ', 'Petaling Jaya', '46200 ', ' Selangor', '1-300-88-1388 ,  603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1563, 17, 3, 'No 42, Jalan PJU 5/8 Dataran Sunway Kota Damansara ', 'Petaling Jaya ', '47810 ', 'Selangor ', '1-300-80-2626, 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1564, 17, 3, 'No. 66 - 68G Jalan Telawi Bangsar Baru ', 'Kuala Lumpur  ', '59100 ', 'Kuala Lumpur ', '1-300-80-2626 ,  603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1565, 17, 3, 'No.92 & 94 Jalan Cerdas Taman Connaught ', 'Cheras ', '56000 ', 'Kuala Lumpur   ', '1-300-80-2626 ,  603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1566, 17, 3, 'Units G -12 &M-16 Grd & Mezzanine Floors Wisma UOA II No 21 Jalan Pinang ', 'Kuala Lumpur ', '50450 ', 'Kuala Lumpur', ' 1-300-80-2626 , 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1567, 17, 3, 'Level 1 Annexe Menara Milenium Jalan Damanlela Damansara ', ' Kuala Lumpur  ', '50490', ' Kuala Lumpur', '1-300-88-1388  ,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1568, 17, 3, '460 Jalan Ipoh ', ' Kuala Lumpur ', '51200', ' Kuala Lumpur ', '1-300-88-1388,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1569, 17, 3, '3rd Mile Square 151 Jalan Kelang Lama Batu 3 ½ ', 'Kuala Lumpur ', '58100 ', 'Kuala Lumpur   ', '1-300-80-2626 ,  603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1570, 17, 3, 'Nos. 37, 37-1 & 39 Jalan Rampai Niaga 5 Medan Niaga Rampai ', 'Kuala Lumpur ', '53300 ', 'Kuala Lumpur', '1-300-80-2626  , 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1571, 17, 3, 'Ground & First Floors No 1 Jalan Jejaka 9 Taman Maluri ', 'Kuala Lumpur', '55100 ', 'Kuala Lumpur ', '1-300-80-2626 ,  603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1572, 17, 3, 'Plaza Mont Kiara No. 2, Jalan Kiara Mont Kiara ', 'Kuala Lumpur  ', '50480 ', 'Kuala Lumpur  ', '1-300-88-1388  ,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1573, 17, 3, '2 Leboh Ampang ', 'Kuala Lumpur', '50100 ', 'Kuala Lumpur', '1-300-88-1388  ,  603-8321 5400 (from overseas)', NULL, NULL, NULL, NULL),
(1574, 17, 3, '43 & 45 Jalan Metro Perdana 7 Taman Usahawan  Kepong ', 'Kuala Lumpur', '52100 ', 'Kuala Lumpur', '1-300-88-1388 , 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1575, 17, 3, '33 Jalan Sultan Ismail ', 'Kuala Lumpur', '50250 ', 'Kuala Lumpur', '1-300-88-1388 , 603-8321 5200 (from overseas)', NULL, NULL, NULL, NULL),
(1576, 18, 3, '101 & 103 Jalan Melaka Raya 24 Taman Melaka Raya  ', 'Melaka   ', '75000 ', 'Melaka    ', '06-284 9249 ', NULL, NULL, NULL, NULL),
(1577, 18, 3, 'G-1, Ground Floor Bangunan KK Jalan Cheng Perdana 1/1A  Taman Desa Cheng Perdana 1 ', 'Melaka   ', '75260 ', 'Melaka    ', '06-3365 111', NULL, NULL, NULL, NULL),
(1578, 18, 3, 'Ground, 1st & 2nd Floor 2 & 4, Jalan Kundang 3 Taman Bukit Pasir  ', 'Batu Pahat ', '83000 ', 'Johor  ', ' 07-431 4088 ', NULL, NULL, NULL, NULL),
(1579, 18, 3, '88, Jalan Tepi Pasar Bukit Bakri  ', 'Muar ', '84200 ', 'Johor ', '06-986 7633', NULL, NULL, NULL, NULL),
(1580, 18, 3, 'Unit G128, Holiday Plaza  Jalan Dato Suleiman Century Garden ', 'Johor Bahru ', '80250 ', 'Johor ', '07-331 1200 ', NULL, NULL, NULL, NULL),
(1581, 18, 3, 'No. 24 & 25 Jalan Kebun Teh 1 Kebun Teh Commercial City ', 'Johor Bahru ', '80250 ', 'Johor   ', '07-221 2403', NULL, NULL, NULL, NULL),
(1582, 18, 3, '396B & 396B-1 Jalan Tebrau Taman Majidee ', 'Johor Bahru ', '80250 ', 'Johor ', '07-332 2331', NULL, NULL, NULL, NULL),
(1583, 18, 3, '1 & 2, Jalan Ria 1  Taman Ria Jaya Sri Gading  ', 'Batu Pahat ', '83000 ', 'Johor ', '07-455 9406 ', NULL, NULL, NULL, NULL),
(1584, 18, 3, '109A & 109B Jalan Genuang  ', ' Segamat', '85000', '  Johor ', '07-931 1170 ', NULL, NULL, NULL, NULL),
(1585, 18, 3, '1 & 3 Jalan Permas Jaya 10/2  Bandar Baru Permas Jaya  ', 'Johor Bahru', '81750 ', ' Johor ', '07-386 2480 ', NULL, NULL, NULL, NULL),
(1586, 18, 3, '16 & 17, Jalan Susur Satu 26th Mile, Jalan Air Hitam Kelapa Sawit ', 'Kulai', '81030 ', ' Johor   ', '07-652 3704 / 5 / 7', NULL, NULL, NULL, NULL),
(1587, 18, 3, '50 & 52, Jalan Dedap 13 Taman Johor Jaya  ', 'Johor Bahru ', '81100 ', 'Johor ', ' 07-353 5388 ', NULL, NULL, NULL, NULL),
(1588, 18, 3, '1 & 1-01, Jalan Molek 1/29 Taman Molek  ', 'Johor Bahru', '81100 ', ' Johor ', '07-355 6577 ', NULL, NULL, NULL, NULL),
(1589, 18, 3, 'No. 1-G & 1-01, Jalan Bestari 6/2 Taman Nusa Bestari  ', 'Skudai ', '81300 ', 'Johor   ', '07-237 8626 ', NULL, NULL, NULL, NULL),
(1590, 18, 3, 'P.O. Box 61 Taman Sri Tebrau  ', ' Johor Bahru ', '80057', 'Johor  ', ' 07-332 7016', NULL, NULL, NULL, NULL),
(1591, 18, 3, 'Ground Floor, Shoplot  No. 1 & 3 Jalan Perang Taman Pelangi  ', 'Johor Bahru ', '80400 ', 'Johor  ', '07-332 7016', NULL, NULL, NULL, NULL),
(1592, 18, 3, 'Ground Floor Lots 34 & 36 Jalan Johar 3 Desa Cemerlang  ', 'Ulu Tiram ', '81800 ', 'Johor   ', '07-861 5143 ', NULL, NULL, NULL, NULL),
(1593, 18, 3, '3 & 5, Jalan Bentara 1 Taman Ungku Tun Aminah  ', 'Skudai ', '81300 ', 'Johor ', ' 07-554 0031 ', NULL, NULL, NULL, NULL),
(1594, 18, 3, '1G & 1-1 Seremban City Centre Jalan Tuanku Munawir ', 'Seremban ', '70000 ', 'Negeri Sembilan  ', '06-762 5610 / 21', NULL, NULL, NULL, NULL),
(1595, 18, 3, 'Lot 1, Block C, Bandar Kim Fung Mile 4 1/2, Jalan Utara P.O. Box 163 Post Office Mile 1 1/2, Jalan Utara ', ' Sandakan ', '90307', 'Sabah', '089-275 020', NULL, NULL, NULL, NULL),
(1596, 18, 3, 'Lot B, Block A Beaufort Jaya Commercial Centre P.O. Box 220 ', 'Beaufort', '89808 ', ' Sabah ', ' 087-211 721', NULL, NULL, NULL, NULL),
(1597, 18, 3, 'Wisma PPS  Donggongon New Township W.D.T. No. 56  ', 'Penampang', '80509 ', ' Sabah', ' 088-713 411', NULL, NULL, NULL, NULL),
(1598, 18, 3, 'Kingfisher''s Park Aras 1, Blok A Kompleks Pentadbiran Kerajaan Persekutuan Sabah  Jalan UMS  ', 'Kota Kinabalu', '88400 ', ' Sabah ', '088-484 718', NULL, NULL, NULL, NULL),
(1599, 18, 3, 'Shoplot No 8, Block E Sedco Shophouses P.O. Box 260 ', 'Kota Marudu ', '89108 ', 'Sabah ', ' 088-661 104', NULL, NULL, NULL, NULL),
(1600, 18, 3, 'Lot No 1, Block B-8  Jalan Arusap  ', 'Keningau ', '89000 ', 'Sabah   ', '087-330 301', NULL, NULL, NULL, NULL),
(1601, 18, 3, '84, Jalan Gaya  ', 'Kota Kinabalu ', '88000 ', 'Sabah ', '088-251 177 ', NULL, NULL, NULL, NULL),
(1602, 18, 3, 'Ground, 1st & 2nd Floor  Lot 7 & 9 Block D  Nountun Industrial Estate  ', ' Inanam Kota Kinabalu ', '89350', 'Sabah ', ' 088-435 761', NULL, NULL, NULL, NULL),
(1603, 18, 3, 'Shoplot No 6, Block B  Sedco Shophouses P.O. Box 152  ', 'Ranau ', '89308 ', 'Sabah', '088-889 679 ', NULL, NULL, NULL, NULL),
(1604, 18, 3, 'Lot 1 MDLD 4709  Jalan Kastam Lama ', ' Lahad Datu ', '91100', 'Sabah  ', '089-883 911 / 15', NULL, NULL, NULL, NULL),
(1605, 18, 3, 'Ground & 1st Floor Shoplot No 2 & 3 Block A Luyang Commercial Centre Damai Plaza, Phase III Jalan Damai ', 'Kota Kinabalu ', ' 88300 ', 'Sabah ', '088-249 073', NULL, NULL, NULL, NULL),
(1606, 18, 3, '59-61, Jalan Tiga  P.O. Box 224  ', 'Sandakan ', '90702 ', 'Sabah', '089-275 193', NULL, NULL, NULL, NULL),
(1607, 18, 3, 'Ground & Mezzanine Floor Shoplot Nos 1 & 2, Block A Pangie Light Industrial Complex Jalan Jungkat Tenom New Township P.O. Box 379  ', 'Tenom ', '89909 ', ' Sabah   ', '087-737 757 / 60', NULL, NULL, NULL, NULL),
(1608, 18, 3, '1086, Jalan Utara  W.D.T. 127  ', ' Tawau ', '91009', 'Sabah  ', '089-776 483 / 84', NULL, NULL, NULL, NULL),
(1609, 18, 3, 'Lot 1, Block B Sedco Shophouses  W.D.T. 55 ', 'Tambunan', '89659 ', ' Sabah  ', '087-771 171', NULL, NULL, NULL, NULL),
(1610, 18, 3, 'Lot 4, 5, & 6, Block K  Sinsuran Complex', ' Kota Kinabalu  ', ' 88000', 'Sabah ', ' 088-237 758', NULL, NULL, NULL, NULL),
(1611, 18, 3, '178, Jalan Chan Chin Ann ', 'Kuching', '93100 ', ' Sarawak  ', ' 082-257 129', NULL, NULL, NULL, NULL),
(1612, 18, 3, '70 and 71, Block 10 Jalan Laksamana Cheng Ho', 'Kuching', ' 93200 ', ' Sarawak   ', '082-230 888', NULL, NULL, NULL, NULL),
(1613, 18, 3, 'Ground & 1st Floor Lot 353, Block 7 Miri Concession Land District (Pelita Commercial Centre) Jalan Miri Pujut', 'Miri ', ' 98000 ', 'Sarawak  ', '085-427 535', NULL, NULL, NULL, NULL),
(1614, 18, 3, 'Ground Floor 32, Jalan Bako Brooke Drive 3 ', ' Sibu ', '96000', 'Sarawak   ', '084-317 628', NULL, NULL, NULL, NULL),
(1615, 18, 3, 'No. 24 Bintulu Park City Commerce Square Phase 1, Jalan Tun Ahmad Zaidi ', 'Bintulu ', '97000 ', 'Sarawak  ', ' 086-318 626', NULL, NULL, NULL, NULL),
(1616, 18, 3, '1960 E & F Jalan Stadium  ', ' Alor Setar', '05100', ' Kedah ', ' 04-731 0744 ', NULL, NULL, NULL, NULL),
(1617, 18, 3, '888 & 889, Jalan Aman Taman Sejahtera  ', ' Lunas Kulim, ', '09600', 'Kedah  ', '04-484 3275 / 76 / 78 ', NULL, NULL, NULL, NULL),
(1618, 18, 3, 'Ground Floor Wisma Uni-Green  18, Jalan Permatang Gedong Taman Sejati Indah', 'Sungai Petani ', ' 08000 ', 'Kedah  ', ' 04-431 1673 / 81 ,  04-431 2139 ', NULL, NULL, NULL, NULL),
(1619, 18, 3, '40 & 42 Persiaran Greenhill  ', 'Ipoh ', '30450 ', 'Perak  ', '05-241 2342 / 43  ,  05-241 2346 / 48 ', NULL, NULL, NULL, NULL),
(1620, 18, 3, '23 & 24 Jalan Raja Omar  Taman Selamat  ', 'Sitiawan ', '32000 ', 'Perak  ', '05-691 1212 / 13 / 16 / 18 ', NULL, NULL, NULL, NULL),
(1621, 18, 3, 'No. 37, Jalan Angsana  Bandar Baru Air Itam  ', 'Pulau Pinang ', '11500 ', 'Pulau Pinang ', ' 04-8273 288', NULL, NULL, NULL, NULL),
(1622, 18, 3, 'Ground & 1st Floor  Wisma Ng Ah Yan  42, Lebuh Nangka 2  Taman Mutiara ', 'Bukit Mertajam  ', ' 14000 ', 'Pulau Pinang  ', ' 04-530 3130 ', NULL, NULL, NULL, NULL),
(1623, 18, 3, '4105-4107 Jalan Bagan Luar', 'Butterworth ', ' 12000 ', 'Pulau Pinang', '04-331 4863 / 64', NULL, NULL, NULL, NULL),
(1624, 18, 3, 'Ground & Mezzanine Floor Wisma Malvest 20 & 20A, Jalan Tun Dr Awang Sungai Nibong Kecil ', 'Bayan Lepas', ' 11900 ', '  Pulau Pinang  ', ' 04-642 5918 ', NULL, NULL, NULL, NULL),
(1625, 18, 3, 'Ground Floor Bangunan Barkath  21, Beach Street  ', 'Georgetown  ', '10300 ', 'Pulau Pinang ', ' 04-262 8100 ', NULL, NULL, NULL, NULL),
(1626, 18, 3, 'B400, Jalan Beserah  ', 'Kuantan ', '25300 ', 'Pahang ', ' 09-567 2508 ', NULL, NULL, NULL, NULL),
(1627, 18, 3, 'Ground & Mezzanine Floor Wisma Kam Choon  101 Jalan Kampong Tiong ', ' Kuala Terengganu', '20100', ' Terengganu    ', '09-623 5244 ', NULL, NULL, NULL, NULL),
(1628, 18, 3, 'J-G-23 & J-G-25,Block J  Jalan PJU 1/43 PJU1 Aman Suria Damansara  ', 'Petaling Jaya ', '47301 ', 'Selangor   ', '03-7880 8842 ', NULL, NULL, NULL, NULL),
(1629, 18, 3, 'Ground & Mezzanine Floor 65, Jalan Mamanda 9 Ampang Point  Taman Dato Ahmad Razali ', 'Ampang ', '68000 ', 'Selangor ', '  03-4252 3822 ', NULL, NULL, NULL, NULL),
(1630, 18, 3, '45, Jalan Sungai Besi Indah 1/21 Taman Sungai Besi Indah  ', 'Seri Kembangan', '43300 ', ' Selangor', '03-8948 6972 ', NULL, NULL, NULL, NULL),
(1631, 18, 3, '56, Lorong Batu Nilam 4B  Bandar Bukit Tinggi  ', 'Klang', '41200 ', ' Selangor ', ' 03-3324 1122', NULL, NULL, NULL, NULL),
(1632, 18, 3, 'Lot 4 & 5, Jalan Jeloh 3  Off Jalan Bukit  ', ' Kajang ', '43000', 'Selangor', '03-8733 5966', NULL, NULL, NULL, NULL),
(1633, 18, 3, 'Unit 102 & 103 Level 1, Uptown 2  No 2, Jalan SS21/37  Damansara Uptown ', 'Petaling Jaya ', ' 47400 ', 'Selangor  ', '03-7660 9798 ', NULL, NULL, NULL, NULL),
(1634, 18, 3, 'Unit 1-2, Right Wing  Level 1, CP Tower 11 Jalan 16/11  Off Jalan Damansara ', 'Petaling Jaya ', '46350 ', 'Selangor  ', '  03-7957 3366 ', NULL, NULL, NULL, NULL),
(1635, 18, 3, '11 & 13, Jalan Puteri 2/1  Bandar Puteri Puchong  ', 'Puchong', '47100 ', ' Selangor', ' 03-8063 2833 ', NULL, NULL, NULL, NULL),
(1636, 18, 3, 'Ground Floor 1 Lorong Kasawari 4B  Taman Eng Ann ', ' Klang ', '41150', 'Selangor  ', '03-3345 3700', NULL, NULL, NULL, NULL),
(1637, 18, 3, '7-G & 9-G, Jalan PJU 5/20 Pusat Perdagangan Kota Damansara PJU5  Kota Damansara  ', ' Petaling Jaya', '47810', ' Selangor   ', ' 03-6142 8632 ', NULL, NULL, NULL, NULL),
(1638, 18, 3, 'G19, IKANO Power Centre  No.2 Jalan PJU 7/2  Mutiara Damansara  ', ' Petaling Jaya', '47800', ' Selangor ', '03-7727 1041', NULL, NULL, NULL, NULL),
(1639, 18, 3, 'Ground & Mezzanine Floor  11 & 13 Jalan Pandan Indah 4/34 Pandan Indah  ', 'Selangor', '55100 ', 'Selangor', '03-4295 7300', NULL, NULL, NULL, NULL),
(1640, 18, 3, 'Ground & 1st Floor  2, Jalan Murni 25/61  Taman Sri Muda Seksyen 25 ', ' Shah Alam', ' 40400', ' Selangor   ', '03-5121 9336 ', NULL, NULL, NULL, NULL),
(1641, 18, 3, '31-1 & 31-2 Jalan Serdang Perdana 2/1  Taman Serdang Perdana  ', 'Seri Kembangan', '43300 ', ' Selangor  ', '03-8941 6610 ', NULL, NULL, NULL, NULL),
(1642, 18, 3, '71, Jalan Bandar Rawang 2 Bandar Baru Rawang ', 'Rawang ', ' 48000 ', 'Selangor', '03-6091 7622 ', NULL, NULL, NULL, NULL),
(1643, 18, 3, '11, Jalan Kenari 5  Bandar Puchong Jaya  ', 'Puchong Jaya', '47100 ', ' Selangor ', '03-8075 9185 ', NULL, NULL, NULL, NULL),
(1644, 18, 3, '1, Jalan Tembaga SD 5/2A Bandar Sri Damansara ', ' Selangor  ', ' 52100 ', ' Selangor ', '03-6275 0144', NULL, NULL, NULL, NULL),
(1645, 18, 3, ' Ground & 1st Floor 55, Jalan SS2/55', 'Petaling Jaya ', '  47300 ', 'Selangor  ', ' 03-7875 8255 ', NULL, NULL, NULL, NULL),
(1646, 18, 3, 'Wisma Projass  3, Jalan SS15/2A ', 'Subang Jaya ', ' 47500 ', 'Selangor ', '03-5634 2870 / 71 ', NULL, NULL, NULL, NULL),
(1647, 18, 3, 'Ground & 1st Floor 17, 19 & 21 Jalan USJ 9/5N  ', ' UEP Subang Jaya ', '47620', 'Selangor ', ' 03-8024 1300 ', NULL, NULL, NULL, NULL),
(1648, 18, 3, '43-45, Jalan Bunga Tanjung 6A Taman Putra  ', 'Ampang', '68000 ', ' Selangor', ' 03-4291 7740', NULL, NULL, NULL, NULL),
(1649, 18, 3, '1, Jalan Telawi 5 Bangsar Baru ', 'Kuala Lumpur ', '59100 ', 'Kuala Lumpur  ', '03-2284 8633', NULL, NULL, NULL, NULL),
(1650, 18, 3, 'Ground Floor Menara Multi-Purpose Capital Square 8, Jalan Munshi Abdullah ', 'Kuala Lumpur', '50100 ', 'Kuala Lumpur  ', '03-2604 3333', NULL, 'MFBBMYKL', NULL, NULL),
(1651, 18, 3, 'Lot No. G-06 Ground Floor, GTower  No. 199, Jalan Tun Razak  ', ' Kuala Lumpur', '50400', ' Kuala Lumpur ', '03-2164 8240 ', NULL, NULL, NULL, NULL),
(1652, 18, 3, '41 & 43, Jalan Ipoh ', 'Kuala Lumpur', '51200 ', 'Kuala Lumpur', '03-4041 2288', NULL, NULL, NULL, NULL),
(1653, 18, 3, '116, Jalan Mega Mendung Bandar Park Off Jalan Klang Lama', 'Kuala Lumpur', ' 58200 ', 'Kuala Lumpur', '03-7983 1177', NULL, NULL, NULL, NULL),
(1654, 15, 3, '15-G & 15-1 The Boulevard Offices Mid Valley City Lingkaran Syed Putra ', ' Kuala Lumpur', '59200', ' Kuala Lumpur', '03-2283 1849', NULL, NULL, NULL, NULL),
(1655, 18, 3, '1, Jalan 1/116B Kuchai Entrepreneurs Park ', ' Kuala Lumpur ', '58200', ' Kuala Lumpur ', '03-7984 8800', NULL, NULL, NULL, NULL),
(1656, 18, 3, 'Ground Floor 52, Jalan Prima Vista Magna Metro Prima Kepong  ', 'Kuala Lumpur   ', '52100 ', 'Kuala Lumpur ', '03-6257 9997', NULL, NULL, NULL, NULL),
(1657, 18, 3, '15, Jalan Tun Tan Cheng Lock  ', 'Kuala Lumpur ', '50000 ', 'Kuala Lumpur ', '03-2072 0978', NULL, NULL, NULL, NULL),
(1658, 18, 3, 'Mezzanine Floor  Menara Prudential 10, Jalan Sultan Ismail ', ' Kuala Lumpur', '50250', ' Kuala Lumpur ', '03-2070 4477', NULL, NULL, NULL, NULL),
(1659, 18, 3, 'Unit A-0G-02 Block A Plaza Mont'' Kiara 2, Jalan Kiara Mont'' Kiara ', 'Kuala Lumpur ', '50480 ', 'Kuala Lumpur ', '03-6203 1543 ', NULL, NULL, NULL, NULL),
(1660, 18, 3, 'Ground & 1st Floor Wisma Sin Hoh Huat  22, Persiaran Segambut Tengah  ', 'Kuala Lumpur   ', '51200 ', 'Kuala Lumpur    ', '03-6257 2105', NULL, NULL, NULL, NULL),
(1661, 18, 3, '71 & 73, Jalan 2/3A Pusat Bandar Utara Selayang KM 12, Jalan Ipoh ', 'Batu Caves ', ' 68100 ', 'Selangor ', '03-6135 1800 ', NULL, NULL, NULL, NULL),
(1662, 18, 3, 'No. D-1-2, D-2-2 & D-3-2 StarParc Point  Taman Danau Ibu Kota  Jalan Genting Klang Setapak ', 'Kuala Lumpur   ', ' 53300 ', 'Kuala Lumpur   ', ' 03-4143 9643 ', NULL, NULL, NULL, NULL),
(1663, 18, 3, '6-3-0 & 6-3-1, Sinaran TTDI Jalan Tun Mohd Fuad 3 Taman Tun Dr Ismail ', ' Kuala Lumpur ', '60000', ' Kuala Lumpur ', '03-7729 8239 ', NULL, NULL, NULL, NULL),
(1664, 18, 3, '254 & 254A Jalan Mahkota Taman Maluri Cheras  ', 'Kuala Lumpur ', '55100 ', 'Kuala Lumpur   ', '03-9285 4133 ', NULL, NULL, NULL, NULL),
(1665, 18, 3, '150-152, Jalan Cerdas  Taman Connaught  ', 'Kuala Lumpur', '56000 ', 'Kuala Lumpur x', '03-9102 3973', NULL, NULL, NULL, NULL),
(1666, 19, 3, 'Lot BB-371A & B Taman Melaka Baru Batu Berendam ', ' Melaka', '75350', ' Melaka ', '06-317 3235', NULL, NULL, NULL, NULL),
(1667, 19, 3, '150 & 152 Kompleks Munshi Abdullah Jalan Munshi Abdullah', 'Melaka ', ' 75100 ', 'Melaka  ', ' 06-286 5988', NULL, NULL, NULL, NULL),
(1668, 19, 3, '345, Jalan Ong Kim Wee ', 'Melaka   ', '75300 ', 'Melaka    ', ' 06-284 2309 , 06-284 2310', NULL, NULL, NULL, NULL),
(1669, 19, 3, 'Lot 215 & 130 Jalan Besar ', 'Masjid Tanah ', '78300 ', 'Melaka   ', '06-384 7137', NULL, NULL, NULL, NULL),
(1670, 19, 3, 'No. 1, 1-1 & 3 Jalan Malim Jaya 2/7A Taman Malim Permai ', 'Melaka ', '75250 ', 'Melaka', ' 06-336 3188', NULL, NULL, NULL, NULL),
(1671, 19, 3, 'No. 102 & 104 Jalan Suria 2 Taman Malim Jaya', ' Melaka ', ' 75250', ' Melaka ', '  06-334 3137', NULL, NULL, NULL, NULL),
(1672, 19, 3, 'No. 67 & 69 Jalan Merdeka Taman Melaka Raya ', 'Melaka ', '75000 ', 'Melaka ', '06-281 2688', NULL, NULL, NULL, NULL),
(1673, 19, 3, 'Ground & Mezzanine Floors Penggaram Complex No. 1, Jalan Abdul Rahman Off Jalan Rahmat ', ' Batu Pahat', '83000', ' Johor  ', '07-431 4435', NULL, NULL, NULL, NULL),
(1674, 19, 3, '9, Jalan Kundang Taman Bukit Pasir ', ' Batu Pahat ', '83000', 'Johor   ', '  07-433 7488', NULL, NULL, NULL, NULL),
(1675, 19, 3, 'Ground Floor No. 121 & 123 Jalan Austin Heights 3 Taman Mount Austin ', ' Johor Bahru ', '81100', 'Johor   ', '07-351 3420', NULL, NULL, NULL, NULL),
(1676, 19, 3, 'No 8, Jalan Stesen', ' Johor Bahru ', ' 80000', 'Johor ', ' 07-222 8462', NULL, NULL, NULL, NULL),
(1677, 19, 3, '12 - 16 Jalan Wong Ah Fook', 'Johor Bahru ', ' 80000 ', 'Johor   ', ' 07-222 8311', NULL, NULL, NULL, NULL),
(1678, 19, 3, 'No. 20 & 21 Jalan Harimau Tarum Taman Abad ', 'Johor Bahru ', '80250 ', 'Johor  ', '07-331 1421', NULL, NULL, NULL, NULL),
(1679, 19, 3, 'No. 80, Jalan Dedap 13  Taman Johor Jaya', 'Johor Bahru', ' 81100 ', ' Johor ', ' 07-354 6320', NULL, NULL, NULL, NULL),
(1680, 19, 3, 'Ground Floor Bangunan Persekutuan Tiong Hua Johor Baru No. 8, Jalan Keris Taman Sri Tebrau ', 'Johor Bahru ', '80400 ', 'Johor', '07-332 1323', NULL, NULL, NULL, NULL),
(1681, 19, 3, 'Ground Floor No.1, Jalan Setia Tropika 1/15 Taman Setia Tropika ', 'Johor Bahru ', '81200 ', 'Johor   ', '  07-235 9531', NULL, NULL, NULL, NULL),
(1682, 19, 3, 'No. 29 & 31 Jalan Molek 2/4 Taman Molek ', 'Johor Bahru ', '81100 ', 'Johor ', ' 07-353 7003', NULL, NULL, NULL, NULL),
(1683, 19, 3, 'No. 173 & 175 Jalan Sri Pelangi Taman Pelangi ', 'Johor Bahru ', '80400 ', 'Johor  ', '07-335 3614', NULL, NULL, NULL, NULL),
(1684, 19, 3, 'No. 21 & 23 Jalan Indah 15/1 Bukit Indah ', 'Johor Bahru', '81200 ', ' Johor ', '07-239 1388', NULL, NULL, NULL, NULL),
(1685, 19, 3, '14, Jalan Besar', 'Gelang Patah ', ' 81550 ', 'Johor ', '07-510 4188', NULL, NULL, NULL, NULL),
(1686, 19, 3, '120 - 122 Jalan Mersing ', ' Kluang ', '86000', 'Johor   ', '07-773 2233', NULL, NULL, NULL, NULL),
(1687, 19, 3, 'Lot No. 24 & 25 Jalan Ahmad Ujan Taman Kota Besar ', 'Kota Tinggi ', '81900 ', 'Johor ', '07-883 2020', NULL, NULL, NULL, NULL),
(1688, 19, 3, 'No 6 & 7, Jalan Anggerik 1 Taman Kulai Utama ', 'Kulai', '81000 ', ' Johor   ', '07-663 5282', NULL, NULL, NULL, NULL),
(1689, 19, 3, 'No. 70 Jalan Segamat ', 'Labis ', '85300 ', 'Johor', '07-925 1200', NULL, NULL, NULL, NULL),
(1690, 19, 3, '105-106 Jalan Besar ', 'Masai', '81750 ', ' Johor ', '07-252 2960', NULL, NULL, NULL, NULL),
(1691, 19, 3, 'No. 43A & 45 Jalan Genuang Kampung Abdullah ', 'Segamat ', '85000 ', 'Johor', '07-931 3650', NULL, NULL, NULL, NULL),
(1692, 19, 3, 'No. 30 & 31, Jalan Delima Pusat Perdagangan Pontian ', 'Pontian', '82000 ', ' Johor ', '07-687 5002', NULL, NULL, NULL, NULL),
(1693, 19, 3, 'No. 21, Jalan Permas 10/1 Bandar Baru Permas Jaya ', 'Masai ', '81750 ', 'Johor ', '07-387 1828', NULL, NULL, NULL, NULL),
(1694, 19, 3, '30 & 31, Jalan Mawar 1 Taman Mawar ', ' Pasir Gudang ', '81700', 'Johor ', '07-252 2740', NULL, NULL, NULL, NULL),
(1695, 19, 3, 'Ground & 1st Floor No. 3, Pusat Dagangan Bakri Jalan Bakri ', 'Muar ', '84000 ', 'Johor ', ' 06-954 2888', NULL, NULL, NULL, NULL),
(1696, 19, 3, 'No. 345A Jalan Ismail ', 'Mersing', '86800 ', ' Johor ', '07-799 6018', NULL, NULL, NULL, NULL),
(1697, 19, 3, '1, 1A, 1B & 1C Jalan Belimbing', ' Senai ', ' 81400', 'Johor', ' 07-599 4598', NULL, NULL, NULL, NULL),
(1698, 19, 3, 'No 2, Jalan Jati Satu Taman Nusa Bestari Jaya ', 'Skudai ', '81300 ', 'Johor   ', '07-511 2596', NULL, NULL, NULL, NULL),
(1699, 19, 3, 'Ground & 1st Floor No 115 Jalan Sutera Tanjung 8/2 Taman Sutera Utama', 'Skudai', ' 81300 ', ' Johor ', ' 07-554 8298', NULL, NULL, NULL, NULL),
(1700, 19, 3, '6 & 8, Jalan Nakhoda 12 Taman Ungku Tun Aminah ', 'Skudai ', '81300 ', 'Johor', ' 07-556 6681', NULL, NULL, NULL, NULL),
(1701, 19, 3, 'No 39 & 41 Jalan Kebudayaan 1 Taman Universiti ', 'Skudai ', '81300 ', 'Johor', '07-521 7817', NULL, NULL, NULL, NULL),
(1702, 19, 3, '109 Main Road ', 'Yong Peng ', '83700 ', 'Johor', '07-467 2350', NULL, NULL, NULL, NULL),
(1703, 19, 3, '37 & 39, Jalan Johar 1 Taman Desa Cemerlang ', ' Ulu Tiram ', '81800', 'Johor   ', '07-861 7488', NULL, NULL, NULL, NULL);
INSERT INTO `banks_branch_info` (`bbi_id`, `ba_id`, `co_id`, `bbi_address`, `bbi_city`, `bbi_zipcode`, `bbi_state`, `bbi_phone`, `bbi_digitrouting`, `bbi_swiftcode`, `bbi_addinfo`, `bbi_status`) VALUES
(1704, 19, 3, 'No. LC 531 Jalan Payamas ', 'Tangkak ', '84900 ', 'Johor ', '06-978 1994', NULL, NULL, NULL, NULL),
(1705, 19, 3, 'Lot No. S 122, KIP Mart Taman Tampoi Indah ', 'Tampoi ', '81200 ', 'Johor   ', '07-241 8200', NULL, NULL, NULL, NULL),
(1706, 19, 3, '1 & 3, Jalan Persiaran Tanjung Susur 1 Taman Bukit Alif Tampoi ', ' Johor Bahru ', '81200', 'Johor   ', '07-235 5930', NULL, NULL, NULL, NULL),
(1707, 19, 3, '100, Jalan Gurney ', 'Bahau', '72100 ', ' Negeri Sembilan ', ' 06-454 1413', NULL, NULL, NULL, NULL),
(1708, 19, 3, '1278 Jalan Rasah', ' Seremban ', ' 70300', 'Negeri Sembilan ', ' 06-761 5789', NULL, NULL, NULL, NULL),
(1709, 19, 3, '112 Jalan Yam Tuan Raden ', ' Kuala Pilah ', '72000', 'Negeri Sembilan ', '06-481 6922', NULL, NULL, NULL, NULL),
(1710, 19, 3, 'Lot 3120 & 3121 Jalan Besar Lukut', 'Port Dickson ', ' 71010 ', 'Negeri Sembilan  ', '06-651 1878', NULL, NULL, NULL, NULL),
(1711, 19, 3, 'Ground, 1st & 2nd Floors No: 7 & 8 Jalan S2 B15 Biz Avenue, Seremban 2 ', 'Seremban ', '70300 ', 'Negeri Sembilan ', ' 06-601 7488', NULL, NULL, NULL, NULL),
(1712, 19, 3, 'No. 69, 70 & 71 Jalan Dato Bandar Tunggal ', 'Seremban ', '70000 ', 'Negeri Sembilan   ', '06-762 8699', NULL, NULL, NULL, NULL),
(1713, 19, 3, 'Lot PT 5729 & 5730 Jalan TS 2/1D Taman Semarak ', 'Nilai ', '71800 ', 'Negeri Sembilan ', ' 06-799 5289', NULL, NULL, NULL, NULL),
(1714, 19, 3, 'Lot 4, 5 & 6, Block C Lorong KK Taipan 2 Inanam New Township ', ' Kota Kinabalu ', '88450', 'Sabah', '088-437 601', NULL, NULL, NULL, NULL),
(1715, 19, 3, 'No. 38, Block E Alamesra Plaza Permai ', 'Kota Kinabalu ', '88400 ', 'Sabah', ' 088-486 510', NULL, NULL, NULL, NULL),
(1716, 19, 3, 'Lot 3-0-14 to 3-0-16 Block 3, Lorong Api-Api 2 Api-Api Centre ', 'Kota Kinabalu ', '88000 ', 'Sabah  ', '088-247 688', NULL, NULL, NULL, NULL),
(1717, 19, 3, '19 Jalan Haji Saman P.O. Box 11989', 'Kota Kinabalu ', ' 88821 ', 'Sabah  ', ' 088-235 699', NULL, NULL, NULL, NULL),
(1718, 19, 3, 'No. 8, Jalan Pantai Locked Bag No. 124 ', 'Kota Kinabalu', '88999 ', ' Sabah', '088-214 733', NULL, NULL, NULL, NULL),
(1719, 19, 3, 'Ground & 1st Floor Lot No.1, Block 35 Fajar Commercial Complex Jalan Lembaga', ' Tawau', ' 91013', ' Sabah  ', '089-770 393', NULL, NULL, NULL, NULL),
(1720, 19, 3, 'Ground & First Floor Wisma Sandaraya Humprey Street ', ' Sandakan ', '90000', 'Sabah   ', '089-226 911', NULL, NULL, NULL, NULL),
(1721, 19, 3, 'Lot 1, 2 & 3, Block 18 Mile 4, North Road Bandar Indah ', 'Sandakan ', '90722 ', 'Sabah', '089-229 545', NULL, NULL, NULL, NULL),
(1722, 19, 3, 'No.5 & 6 (Ground Floor) Lorong Lintas Plaza 1 Lintas Plaza', 'Kota Kinabalu ', ' 88300 ', 'Sabah ', '  088-318 806', NULL, NULL, NULL, NULL),
(1723, 19, 3, 'MDLD 4712, Lot 4 Jalan Kastam Lama ', 'Lahad Datu ', '91100 ', 'Sabah ', ' 089-884 488', NULL, NULL, NULL, NULL),
(1724, 19, 3, '10, Lot 734 Jalan Lee Kai Teng ', 'Betong', '95700 ', ' Sarawak', ' 083-472 278', NULL, NULL, NULL, NULL),
(1725, 19, 3, '8-10, Lorong Maju PO Box 279 ', 'Bintangor ', '96508 ', 'Sarawak   ', '084-693 049', NULL, NULL, NULL, NULL),
(1726, 19, 3, 'Lot 3073 & 3074 Jalan Abang Galau', 'Bintulu', ' 97000 ', ' Sarawak', '086-332 393', NULL, NULL, NULL, NULL),
(1727, 19, 3, '211-213 Bintulu Parkcity Commerce Square Jalan Tun Ahmad Zaidi ', 'Bintulu ', '97000 ', 'Sarawak x', ' 086-312 941', NULL, NULL, NULL, NULL),
(1728, 19, 3, 'Lot 122  Jalan Yong Moo Chai P.O. Box 15 ', ' Kapit ', '96807', 'Sarawak  ', ' 084-796 413', NULL, NULL, NULL, NULL),
(1729, 19, 3, '42, Jalan Pending ', 'Kuching', '93450 ', ' Sarawak', '082-336 666', NULL, NULL, NULL, NULL),
(1730, 19, 3, 'Ground & First Floor Lot 10901 & 10902 Jalan Tun Jugah', 'Kuching', ' 93350 ', ' Sarawak', '082-575 075', NULL, NULL, NULL, NULL),
(1731, 19, 3, 'No. 35, Jalan Khoo Hun Yeang ', 'Kuching', '93000 ', ' Sarawak', ' 082-240 311', NULL, NULL, NULL, NULL),
(1732, 19, 3, '345-347, Ground & 1st Floor Central Park Commercial Centre Jalan Tun Ahmad Zaidi Adruce ', 'Kuching', '93200 ', ' Sarawak  ', '082-254 224', NULL, 'HLBBMYKLKCH', NULL, NULL),
(1733, 19, 3, 'Lot 13 & 14, Olive Garden 7th Mile Bazaar Jalan Penrissen ', 'Kuching', '93250 ', ' Sarawak ', '082-611 587', NULL, NULL, NULL, NULL),
(1734, 19, 3, '10, Lot 734 Jalan Lee Kai Teng', 'Betong ', ' 95700 ', 'Sarawak', '083-472 278', NULL, NULL, NULL, NULL),
(1735, 19, 3, 'Lot 11600-1602, Block 16 No: 127-129 R.H.Plaza Jalan Lapangan Terbang', ' Kuching ', ' 93550', 'Sarawak ', ' 082-466 000', NULL, NULL, NULL, NULL),
(1736, 19, 3, 'Lot 1078-1079 Buangsiol Road P O Box 69 ', 'Limbang', '98707 ', ' Sarawak ', ' 085-212 097', NULL, NULL, NULL, NULL),
(1737, 19, 3, 'Ground & First Floor Lot 715, Merbau Road ', 'Miri ', '98008 ', 'Sarawak', '085-415 371', NULL, NULL, NULL, NULL),
(1738, 19, 3, 'Lot 2499 & 2500, Grd & 1st Flr Boulevard Commercial Centre Jalan Miri-Pujut, KM 3 ', 'Miri ', '98000 ', 'Sarawak  ', '085 - 410 518', NULL, NULL, NULL, NULL),
(1739, 19, 3, '6, Jalan Merdeka', 'Sarikei ', ' 96100 ', 'Sarawak  ', '084-651 461', NULL, NULL, NULL, NULL),
(1740, 19, 3, 'No. 18C & 20 Lorong Tun Razak 1 Jalan Masjid Lama', 'Sarikei ', ' 96100 ', 'Sarawak ', '084-659 188', NULL, NULL, NULL, NULL),
(1741, 19, 3, 'No. 155C Jalan Satok ', 'Kuching ', '93400 ', 'Sarawak ', '082-233 437', NULL, NULL, NULL, NULL),
(1742, 19, 3, 'Lot 124 Saratok Baazar P.O Box 71 ', 'Saratok', '95407 ', ' Sarawak', '083-436 011', NULL, NULL, NULL, NULL),
(1743, 19, 3, 'No 722, Jalan Masjid P.O Box 19 ', 'Mukah ', '96400 ', 'Sarawak  ', '084-871 726', NULL, NULL, NULL, NULL),
(1744, 19, 3, 'No. 175, Serian Bazaar ', ' Serian ', '94700', 'Sarawak   ', '082-874 877', NULL, NULL, NULL, NULL),
(1745, 19, 3, '18, Chew Geok Lin Street P.O Box 1461 ', 'Sibu ', '96000 ', 'Sarawak', ' 084-336 653', NULL, NULL, NULL, NULL),
(1746, 19, 3, 'No. 133, 135 & 137 Jalan Kampung Nyabor ', ' Sibu ', '96000', 'Sarawak  ', ' 084-332 698', NULL, NULL, NULL, NULL),
(1747, 19, 3, 'Lot 171, Jalan Council ', 'Bandar Sri Aman ', '95000 ', 'Sarawak ', '083-322 117', NULL, NULL, NULL, NULL),
(1748, 19, 3, 'No: 21-23 Suria Permata Commercial Centre Jalan Lanang', ' Sibu ', ' 96000', 'Sarawak', '084-218 568', NULL, NULL, NULL, NULL),
(1749, 19, 3, 'No. 40 & 42 Jalan Bukit Lagi ', ' Kangar', '01000', ' Perlis', '04-977 1888', NULL, NULL, NULL, NULL),
(1750, 19, 3, 'Ground Floor & 1st Floor  No 212 Jalan Gangsa  Seberang Jalan Putra ', 'Alor Setar  ', ' 05150 ', 'Kedah', '04-731 5269', NULL, NULL, NULL, NULL),
(1751, 19, 3, 'No 172, Susuran Sultan Abdul Hamid 10 Kompleks Perniagaan Sultan Abdul Hamid Phase 2 Persiaran Sultan Abdul Hamid ', 'Alor Setar ', '05050 ', 'Kedah  ', '04-771 3228', NULL, NULL, NULL, NULL),
(1752, 19, 3, '18K & 18L Jalan Raya ', 'Gurun ', '08300 ', 'Kedah ', '04-468 4785', NULL, NULL, NULL, NULL),
(1753, 19, 3, 'xNo 1520-2A Pantai Halban Jalan Kepala Batas', 'Jitra ', ' 06000 ', 'Kedah ', ' 04-919 0278', NULL, NULL, NULL, NULL),
(1754, 19, 3, '62 & 63 Jalan Bayu Satu ', 'Kulim ', '09000 ', 'Kedah', ' 04-491 3606', NULL, NULL, NULL, NULL),
(1755, 19, 3, 'No. 93, Langkawi Mall Jalan Kelibang ', 'Kuah Langkawi ', '07000 ', 'Kedah   ', '04-966 8118', NULL, NULL, NULL, NULL),
(1756, 19, 3, '9A & 9B Jalan Kampung Baru', 'Sungai Petani', ' 08000 ', ' Kedah    ', ' 04-420 5225', NULL, NULL, NULL, NULL),
(1757, 19, 3, 'Ground & 1st Floor No. 64 & 65 Jalan Pengkalan Taman Pekan Baru', ' Sungai Petani ', ' 08000', 'Kedah  ', '04-423 6117', NULL, NULL, NULL, NULL),
(1758, 19, 3, 'Ground & First Floor 255 Jalan Legenda 10 Legenda Heights ', 'Sungai Petani', '08000 ', ' Kedah', '04-422 4352', NULL, NULL, NULL, NULL),
(1759, 19, 3, 'No 1 & 2 Jalan Raya ', ' Serdang', '09800', ' Kedah ', ' 04-407 6919', NULL, NULL, NULL, NULL),
(1760, 19, 3, '167 & 168  Susuran Sultan Abdul Hamid 11 Kompleks Perniagaan Sultan Abdul Hamid Fasa 2', ' Alor Setar ', ' 05050', 'Kedah  ', '04-771 2918', NULL, NULL, NULL, NULL),
(1761, 19, 3, '86 & 88, Jalan Besar ', 'Ayer Tawar ', '32400 ', 'Perak', '05-672 7470', NULL, NULL, NULL, NULL),
(1762, 19, 3, '27 Jalan Dewangsa ', 'Batu Gajah', '31000 ', ' Perak  ', ' 05-365 3191', NULL, NULL, NULL, NULL),
(1763, 19, 3, 'Ground & First Floor No. 362, Medan Bercham Jalan Bercham ', ' Ipoh ', '31400', 'Perak ', '05-546 6235', NULL, NULL, NULL, NULL),
(1764, 19, 3, 'N-20, Jalan Bidor Raya Off Jalan Persatuan ', ' Bidor ', '35500', 'Perak', ' 05-434 1211', NULL, NULL, NULL, NULL),
(1765, 19, 3, 'Ground & First Floor No.254 & 254A Jalan Raja Dr. Nazrin Shah Gunung Rapat ', 'Ipoh ', '31350 ', 'Perak  ', '05-313 3288', NULL, NULL, NULL, NULL),
(1766, 19, 3, 'No. 91 & 93 Jalan Dato Lau Pak Khuan Ipoh Garden ', 'Ipoh', '31400 ', ' Perak ', '05-549 5160 ,  05-549 5161', NULL, NULL, NULL, NULL),
(1767, 19, 3, 'Lot-A-G-2 (Ground Floor) No 1, Persiaran Greentown 2 Greentown Business Centre', ' Ipoh ', ' 30450', 'Perak', '05-253 0048', NULL, NULL, NULL, NULL),
(1768, 19, 3, 'No. 54, 56 & 58 Jalan Kamaruddin Isa ', ' Ipoh ', '31400', 'Perak', ' 05-547 4203', NULL, NULL, NULL, NULL),
(1769, 19, 3, '579 & 579A Jalan Pasir Puteh ', ' Ipoh ', '31650', 'Perak   ', '05-322 8989', NULL, NULL, NULL, NULL),
(1770, 19, 3, '75, Jalan Sultan Idris Shah ', 'Ipoh', '30000 ', ' Perak ', '05-253 7528', NULL, NULL, NULL, NULL),
(1771, 19, 3, 'Level 1 & 2 55-57, Jalan Yang Kalsom ', ' Ipoh ', '30250', 'Perak  ', '05-249 1539', NULL, NULL, NULL, NULL),
(1772, 19, 3, 'No. 396 & 398  Taman Saujana Kamunting ', ' Taiping ', '34600', 'Perak ', ' 05-807 8915', NULL, NULL, NULL, NULL),
(1773, 19, 3, '133 & 135 Jalan Gopeng ', ' Kampar ', '31900', 'Perak ', '05-466 5050', NULL, NULL, NULL, NULL),
(1774, 19, 3, 'Lot 63 Jalan Chui Chak ', 'Langkap', '36700 ', ' Perak ', '05-659 2840', NULL, NULL, NULL, NULL),
(1775, 19, 3, 'Ground & First Floors No.116 & 117 Jalan Besar ', 'Menglembu Ipoh, ', '31450 ', 'Perak', '05-281 2088', NULL, NULL, NULL, NULL),
(1776, 19, 3, '41, Jalan Taiping ', 'Parit Buntar ', '34200 ', 'Perak', ' 05-716 4688', NULL, NULL, NULL, NULL),
(1777, 19, 3, 'No.28, Medan Silibin ', 'Ipoh ', '30100 ', 'Perak ', '05-526 6333', NULL, NULL, NULL, NULL),
(1778, 19, 3, '11 & 12 Kompleks Menara Condong Jalan Ah Chong ', 'Teluk Intan ', '36000 ', 'Perak  ', '05-623 3637', NULL, NULL, NULL, NULL),
(1779, 19, 3, 'No. 25 & 27 Jalan Bunga Anggerik Taman Bunga Raya ', 'Tanjong Malim', '35900 ', ' Perak ', '05-459 8272', NULL, NULL, NULL, NULL),
(1780, 19, 3, 'No. 53, 55 & 57 Jalan Stesyen ', ' Taiping ', '34000', 'Perak ', ' 05-806 5229', NULL, NULL, NULL, NULL),
(1781, 19, 3, 'No. 16 & 17 Taman Sitiawan Maju Jalan Lumut ', ' Sitiawan ', '32000', 'Perak   ', '05-692 2316', NULL, NULL, NULL, NULL),
(1782, 19, 3, 'No.3350 & 3351 Jalan Rozhan Taman Industri Alma Jaya ', 'Bukit Mertajam ', '14000 ', 'Penang ', '04-552 2188', NULL, NULL, NULL, NULL),
(1783, 19, 3, 'No.1823-G1 Jalan Perusahaan Auto-City North-South Highway Juru Interchange ', 'Prai ', '13600 ', 'Pulau Pinang  ', ' 04-502 1488', NULL, NULL, NULL, NULL),
(1784, 19, 3, 'No. 82, Jalan Besar ', 'Balik Pulau ', '11000 ', 'Pulau Pinang', '04-866 5188', NULL, NULL, NULL, NULL),
(1785, 19, 3, 'No. 16A & 16B Lebuhraya Thean Teik Bandar Baru Ayer Itam ', 'Pulau Pinang  ', '11500 ', 'Pulau Pinang  ', ' 04-827 1688', NULL, NULL, NULL, NULL),
(1786, 19, 3, 'No 15-G-1 (Bayan Point) Medan Kampung Relau ', 'Pulau Pinang  ', '11900 ', 'Pulau Pinang  ', '04-642 8643', NULL, NULL, NULL, NULL),
(1787, 19, 3, 'No. 130 & 132, Jalan Raja Uda Pusat Perniagaan Raja Uda ', 'Butterworth ', '12300 ', 'Pulau Pinang ', '04-324 3288', NULL, NULL, NULL, NULL),
(1788, 19, 3, 'No 6963 & 6964 Jalan Ong Yi How Kawasan Perusahan Raja Uda ', 'Butterworth', '13400 ', ' Pulau Pinang', '04-331 2277', NULL, NULL, NULL, NULL),
(1789, 19, 3, '2828-G-02 & 2828-1-02 Jalan Bagan Luar ', 'Butterworth ', '12000 ', 'Pulau Pinang ', '04-331 5659', NULL, NULL, NULL, NULL),
(1790, 19, 3, 'No. 31, 33, 35 Jalan Usahaniaga 1 Taman Niagajaya ', 'Bukit Mertajam ', '14000 ', 'Pulau Pinang   ', '04-538 1549', NULL, NULL, NULL, NULL),
(1791, 19, 3, 'No. 58 & 60, Jalan Tengah Taman Seri Tunas Bandar Bayan Baru ', 'Bayan Lepas ', '11950 ', 'Pulau Pinang', '04-645 2881', NULL, NULL, NULL, NULL),
(1792, 19, 3, 'No 1, Light Street Georgetown ', 'Pulau Pinang', '10200 ', 'Pulau Pinang', '04-261 5022', NULL, NULL, NULL, NULL),
(1793, 19, 3, 'No. 77-G-17 & 77-G-18 Jalan Dato Keramat Penang Times Square ', 'Georgetown ', '10150 ', 'Pulau Pinang  ', '04-226 4177', NULL, NULL, NULL, NULL),
(1794, 19, 3, '163D-1-18 Gurney Paragon Persiaran Gurney', 'Pulau Pinang', ' 10250 ', 'Pulau Pinang ', '04-218 9288', NULL, NULL, NULL, NULL),
(1795, 19, 3, '45 Jalan Burma ', 'Pulau Pinang', '10050 ', 'Pulau Pinang', ' 04-210 3501', NULL, NULL, NULL, NULL),
(1796, 19, 3, 'No. 421 & 423 Jalan Burmah ', 'Pulau Pinang', '10350 ', 'Pulau Pinang', ' 04-228 3202', NULL, NULL, NULL, NULL),
(1797, 19, 3, 'No. 9 & 10, Jalan Todak 2 Pusat Bandar Seberang Jaya ', 'Prai ', '13700 ', 'Pulau Pinang', '04-397 2097', NULL, NULL, NULL, NULL),
(1798, 19, 3, 'No. 1, Lebuh Kurau 1 Taman Chai Leng ', 'Prai ', '13700 ', 'Pulau Pinang', '04-397 2499', NULL, NULL, NULL, NULL),
(1799, 19, 3, ' 19 Jalan Bertam 1', 'Kepala Batas Seberang Prai ', '3200 ', 'Pulau Pinang', '04-575 4900', NULL, NULL, NULL, NULL),
(1800, 19, 3, 'No. 1-G-03, Tesco Penang No. 1, Leboh Tengku Kudin 1 Bandar Jelutong ', 'Pulau Pinang', '11700 ', 'Pulau Pinang ', '04-656 4698', NULL, NULL, NULL, NULL),
(1801, 19, 3, 'No. 300 Jalan Jelutong', ' Pulau Pinang  ', ' 11600', ' Pulau Pinang  ', '04-282 6688', NULL, NULL, NULL, NULL),
(1802, 19, 3, 'No 1, Light Street Georgetown ', 'Pulau Pinang', '10200 ', 'Pulau Pinang', '04-261 5022', NULL, NULL, NULL, NULL),
(1803, 19, 3, '441-G-1, 441-G-2 & 441-G-3 Jalan Burmah ', 'Pulau Pinang', '10350 ', 'Pulau Pinang ', '04-228 8475', NULL, NULL, NULL, NULL),
(1804, 19, 3, '1781, Jalan Nibong Tebal Taman Panchor Indah ', 'Nibong Tebal ', '14300 ', 'Pulau Pinang ', '04-594 2889', NULL, NULL, NULL, NULL),
(1805, 19, 3, 'No. 1306-F Jalan Dato Ismail Hashim Sungai Ara ', 'Bayan Lepas ', '11900 ', 'Pulau Pinang  ', ' 04-646 2331', NULL, NULL, NULL, NULL),
(1806, 19, 3, '98-G-15, Prima Tanjung Jalan Fettes Tanjung Tokong ', 'Pulau Pinang', '10470 ', 'Pulau Pinang', '04-890 4188', NULL, NULL, NULL, NULL),
(1807, 19, 3, 'No. 723-G-G, 723-H-G &  723-I-G Jalan Sungai Dua', 'Pulau Pinang  ', ' 11700 ', 'Pulau Pinang  ', '04-658 6699', NULL, NULL, NULL, NULL),
(1808, 19, 3, 'No. 26, 28 & 30, Jalan Murni 1 Taman Desa Murni Sungai Dua ', 'Butterworth ', '13800 ', 'Pulau Pinang  ', '04-356 2688', NULL, NULL, NULL, NULL),
(1809, 19, 3, '1435 & 1436 Jalan Besar', 'Sungai Bakap ', ' 14200 ', 'Pulau Pinang', '04-582 1134', NULL, NULL, NULL, NULL),
(1810, 19, 3, '1 Bentong Heights ', 'Bentong ', '28700 ', 'Pahang  ', '09-222 1080', NULL, NULL, NULL, NULL),
(1811, 19, 3, '36 Main Road Tanah Rata', 'Cameron Highlands ', ' 39000 ', 'Pahang ', '05-491 1941', NULL, NULL, NULL, NULL),
(1812, 19, 3, 'No. B 278 & B 280 Jalan Beserah ', 'Kuantan ', '25300 ', 'Pahang', ' 09-566 4100', NULL, NULL, NULL, NULL),
(1813, 19, 3, 'No. 25, Jalan Tun Ismail ', 'Kuantan ', '25000 ', 'Pahang ', '09-515 7288', NULL, NULL, NULL, NULL),
(1814, 19, 3, 'F107 Jalan Kuantan ', ' Temerloh ', '28000', 'Pahang ', ' 09-296 7492', NULL, NULL, NULL, NULL),
(1815, 19, 3, '21 Jalan Tun Razak ', 'Raub ', '27600 ', 'Pahang ', '09-355 4422', NULL, NULL, NULL, NULL),
(1816, 19, 3, '59 & 60, Jalan Temerloh Locked Bag No. 9 ', 'Mentakab ', '28409 ', 'Pahang', '09-277 2953', NULL, NULL, NULL, NULL),
(1817, 19, 3, 'No. 113 Jalan Inderapura 1  Bandar Inderapura ', 'Jerantut  ', ' 27000 ', 'Pahang ', '09-266 3184', NULL, NULL, NULL, NULL),
(1818, 19, 3, ' PT 320 & 321, Seksyen 25 Jalan Sultan Yahya Petra', 'Kota Bharu ', ' 15200 ', 'Kelantan   ', '09-748 6888', NULL, NULL, NULL, NULL),
(1819, 19, 3, ' Lot 3594 & 3595 Jalan Baru Pak Sabah ', 'Dungun ', '23000 ', 'Terengganu', '09-848 2766', NULL, NULL, NULL, NULL),
(1820, 19, 3, 'No. 5686 & 5694-B  Jalan Kubang Kurus  ', ' Kemaman', '24000', '  Terengganu ', ' 09-858 8898', NULL, NULL, NULL, NULL),
(1821, 19, 3, 'No. 116, Jalan Pejabat ', 'Kuala Terengganu ', '20000 ', 'Terengganu  ', ' 09-624 2505', NULL, NULL, NULL, NULL),
(1822, 19, 3, 'xNo. 31, Jalan Sultan Ismail ', 'Kuala Terengganu ', '20200 ', 'Terengganu   ', ' 09-624 4458', NULL, NULL, NULL, NULL),
(1823, 19, 3, 'No. 91, Lorong Memanda 1 Ampang Point ', 'Ampang', '68000 ', ' Selangor', '03-4253 2449', NULL, NULL, NULL, NULL),
(1824, 19, 3, '1G-3G, Jalan Wawasan 2/10 Bandar Baru Ampang ', 'Ampang ', '68000 ', 'Selangor', '03-4291 0437', NULL, NULL, NULL, NULL),
(1825, 19, 3, 'No. 7 & 9 Jalan Bunga Tanjong 6A Taman Putra ', 'Ampang', '68000 ', ' Selangor', '03-4293 9988', NULL, NULL, NULL, NULL),
(1826, 19, 3, 'No. 2G, 2-1 & 2A-G Jalan Cheras Maju Pusat Perniagaan Cheras Maju ', 'Balakong', '43200 ', ' Selangor ', '03-9074 4205', NULL, NULL, NULL, NULL),
(1827, 19, 3, 'No. 24, Medan Taming 2 Taman Taming Jaya', ' Balakong ', ' 43300', 'Selangor ', '03-8961 5948', NULL, NULL, NULL, NULL),
(1828, 19, 3, 'No. 119 & 121 Jalan Sultan Abdul Samad ', 'Banting ', '42700 ', 'Selangor  ', '03-3187 6757', NULL, NULL, NULL, NULL),
(1829, 19, 3, 'Wisma Keringat 2 No. 17, Lorong Batu Caves 2 ', 'Batu Caves ', '68100 ', 'Selangor    ', ' 03-6187 7402', NULL, NULL, NULL, NULL),
(1830, 19, 3, 'No. 1, Jalan Temenggung 21/9 Bandar Mahkota Cheras ', 'Cheras ', '43200 ', 'Selangor', '03-9074 6682', NULL, NULL, NULL, NULL),
(1831, 19, 3, '1 & 3, Jalan Seri Taming 1F Taman Seri Taming, Batu 9 ', 'Cheras ', '43200 ', 'Selangor  ', ' 03-9100 3770', NULL, NULL, NULL, NULL),
(1832, 19, 3, 'Lot G-18 & G-19 Perdana The Place Damansara Perdana ', 'Petaling Jaya ', '47820 ', 'Selangor ', '03-7724 1357', NULL, NULL, NULL, NULL),
(1833, 19, 3, 'No 25-29G, Jalan SS 21/60 ', 'Damansara Utama Petaling Jaya ', '47400 ', 'Selangor   ', '03-7726 9822', NULL, NULL, NULL, NULL),
(1834, 19, 3, 'No.G-16, 1-16, & 2-16  No.G-17, 1-17 & 2-17  Jalan Prima SG 1 Taman Prima Sri Gombak  ', 'Batu Caves ', '68100 ', 'Selangor  ', '03-6185 3199', NULL, NULL, NULL, NULL),
(1835, 19, 3, 'xGround Floor 36, Jalan Sulaiman ', ' Kajang ', '43000', 'Selangor  ', '03-8734 1093', NULL, NULL, NULL, NULL),
(1836, 19, 3, 'No. 11 & 13, Jalan M/J 1 Taman Majlis Jaya Jalan Sungai Chua ', 'Kajang ', '43000 ', 'Selangor', '03-8737 6090', NULL, NULL, NULL, NULL),
(1837, 19, 3, 'A-G-08, A-1-08, A-2-08 &  A-G-09, A-1-09 & A-2-09 Glomac Square Jalan SS 6/5A Dataran Glomac Pusat Bandar Kelana Jaya ', 'Petaling Jaya ', '47301 ', 'Selangor   ', ' 03-7805 1178', NULL, NULL, NULL, NULL),
(1838, 19, 3, 'No. 216 & 218 Persiaran Pegaga Taman Bayu Perdana', 'Klang ', ' 41200 ', 'Selangor  ', ' 03-3324 3303 ', NULL, NULL, NULL, NULL),
(1839, 19, 3, '26-32, Jalan Kapar ', 'Klang ', '41400 ', 'Selangor  ', '03-3343 1188', NULL, NULL, NULL, NULL),
(1840, 19, 3, 'No. 68, Lorong Batu Nilam 4A Bandar Bukit Tinggi ', ' Klang ', '41200', 'Selangor ', '03-3324 9490', NULL, NULL, NULL, NULL),
(1841, 19, 3, 'Ground Floor No. 109 & 111 Jalan Mahogani 5 Bandar Botanic  ', 'Klang  ', '41200 ', 'Selangor   ', ' 03-3323 0526', NULL, NULL, NULL, NULL),
(1842, 19, 3, 'Ground Floor, No.35 Lorong Tiara 1B Bandar Baru Klang ', 'Klang ', '41150 ', 'Selangor  ', '03-3341 4824', NULL, NULL, NULL, NULL),
(1843, 19, 3, '90, Persiaran Raja Muda Musa', ' Pelabuhan Klang ', ' 42000', 'Selangor    ', ' 03-3166 1188', NULL, NULL, NULL, NULL),
(1844, 19, 3, 'No. 1 & 3 Jalan Sri Sarawak 17 Taman Sri Andalas ', ' Klang ', '41200', 'Selangor   ', '03-3324 2545', NULL, NULL, NULL, NULL),
(1845, 19, 3, 'No.36 Jalan Dato Shahbudin 30 Taman Sentosa ', 'Klang', '41200 ', ' Selangor ', '03-5161 1602', NULL, NULL, NULL, NULL),
(1846, 19, 3, '169, Jalan Teluk Pulai ', 'Klang ', '41100 ', 'Selangor', ' 03-3372 1000', NULL, NULL, NULL, NULL),
(1847, 19, 3, 'Wisma Meru No. 1, Lintang Pekan Baru Off Jalan Meru ', ' Klang ', '41050', 'Selangor  ', '03-3343 7677', NULL, NULL, NULL, NULL),
(1848, 19, 3, 'No. 2, Jalan PJU 5/8 Dataran Sunway Kota Damansara ', 'Petaling Jaya', '47810 ', ' Selangor  ', ' 03-6141 3886', NULL, NULL, NULL, NULL),
(1849, 19, 3, '12 & 14, Jalan PJS 11/28A Metro Bandar Sunway Bandar Sunway', 'Petaling Jaya ', ' 46150 ', 'Selangor  ', '03-5637 5395', NULL, NULL, NULL, NULL),
(1850, 19, 3, 'No.1 & 3 Jalan PJU 1/43  Aman Suria ', 'Petaling Jaya ', '47301 ', 'Selangor   ', '03-7803 0969', NULL, NULL, NULL, NULL),
(1851, 19, 3, 'No. 64, Jalan Stesen', 'Kuala Selangor ', ' 45000 ', 'Selangor  ', '03-3289 5957', NULL, NULL, NULL, NULL),
(1852, 19, 3, 'No. 3-G Jalan Anggerik Vanilla N31/N Kota Kemuning  ', 'Shah Alam', '40460 ', ' Selangor ', '03-5122 5912', NULL, NULL, NULL, NULL),
(1853, 19, 3, 'eCurve Lot LG-01, Lower Ground Floor No.2A Jalan PJU 7/3 Mutiara Damansara ', 'Petaling Jaya ', '47810 ', 'Selangor   ', ' 03-7722 2964', NULL, NULL, NULL, NULL),
(1854, 19, 3, 'Lot 9, Blok C GIZA Dataran Sunway Kota Damansara ', 'Petaling Jaya ', '47810 ', 'Selangor  ', '03-6148 1613', NULL, NULL, NULL, NULL),
(1855, 19, 3, '80 & 82 Jalan Othman (1/14) ', 'Petaling Jaya ', '46000 ', 'Selangor   ', ' 03-7781 4259', NULL, NULL, NULL, NULL),
(1856, 19, 3, 'Ground Floor, Tower A PJ City Development 15A, Jalan 219, Section 51A ', 'Petaling Jaya ', '46100 ', 'Selangor  ', ' 03-7877 1629', NULL, NULL, NULL, NULL),
(1857, 19, 3, 'No. 9 & 11, Jalan 52/2 PJ New Town Centre ', 'Petaling Jaya ', '46200 ', 'Selangor', '03-7958 6488', NULL, NULL, NULL, NULL),
(1858, 19, 3, 'No. 32 & 34 Jalan 21/19 Sea Park', 'Petaling Jaya', ' 46300 ', ' Selangor ', '03-7874 5968', NULL, NULL, NULL, NULL),
(1859, 19, 3, 'Ground Floor 18 Jalan 14/14 ', 'Petaling Jaya ', '46100 ', 'Selangor   ', '03-7956 8490', NULL, NULL, NULL, NULL),
(1860, 19, 3, '63 & 65, SS 23/15 Taman SEA', 'Petaling Jaya ', ' 47400 ', 'Selangor   ', '03-7804 8024', NULL, NULL, NULL, NULL),
(1861, 19, 3, 'No 18 & 20 Jalan 20/16A Taman Paramount ', 'Petaling Jaya', '46300 ', ' Selangor ', ' 03-7876 5115', NULL, NULL, NULL, NULL),
(1862, 19, 3, 'No.2, Jalan Puteri 2/4 Bandar Puteri ', 'Puchong ', '47100 ', 'Selangor', '03-8063 6839', NULL, NULL, NULL, NULL),
(1863, 19, 3, 'IOI Mall No. EG001A, Ground Floor  Bandar Puchong Jaya ', 'Puchong  ', ' 47170 ', 'Selangor  ', ' 03-8070 1643', NULL, NULL, NULL, NULL),
(1864, 19, 3, 'No. 26 & 27, Jalan Kenari 1 Bandar Puchong Jaya ', 'Puchong ', '47100 ', 'Selangor   ', '03-5882 7100', NULL, NULL, NULL, NULL),
(1865, 19, 3, 'No. E-01-07 & E-01-08 Jalan Puchong Prima 5/3 Puchong Prima ', 'Puchong ', '47100 ', 'Selangor  ', '03-8068 3285', NULL, NULL, NULL, NULL),
(1866, 19, 3, '3, Jalan Bandar Satu Pusat Bandar Puchong ', ' Puchong ', '47100', 'Selangor ', '03-5882 4388', NULL, NULL, NULL, NULL),
(1867, 19, 3, 'No. 48, Jalan Bandar 3 Pusat Bandar Puchong ', 'Puchong', '47100 ', ' Selangor ', '03-5882 2072', NULL, NULL, NULL, NULL),
(1868, 19, 3, 'No. 2, Jalan Kinrara Taman Kinrara Jalan Puchong ', ' Puchong', '47100', ' Selangor   ', '  03-8075 2994', NULL, NULL, NULL, NULL),
(1869, 19, 3, 'Ground Floor, Lot G01 Giant Hypermarket  Putra Heights Persiaran Putra Perdana ', ' Putra Heights ', '47560', 'Selangor   ', '03 - 5101 9006', NULL, NULL, NULL, NULL),
(1870, 19, 3, 'No. 59A, Jalan Welman', 'Rawang ', ' 48000 ', 'Selangor ', ' 03-6091 0459', NULL, NULL, NULL, NULL),
(1871, 19, 3, 'No.39 & 41, Jalan SJ 17 Taman Selayang Jaya ', 'Batu Caves ', '68100 ', 'Selangor ', '  03-6120 6803', NULL, NULL, NULL, NULL),
(1872, 19, 3, 'No.15 & 16  Jalan Menteri Besar 2 New Sekinchan Business Centre ', 'Sekinchan ', '45400 ', 'Selangor', '03-3241 6351', NULL, NULL, NULL, NULL),
(1873, 19, 3, 'No. 7 & 9, Jalan Pasar Baru 2 Seksyen 3, Bandar Semenyih ', ' Semenyih ', '43500', 'Selangor', ' 03-8724 8639', NULL, NULL, NULL, NULL),
(1874, 19, 3, 'No. 5 & 7, Jalan Cempaka 1 Taman Cempaka', 'Serendah Hulu Selangor ', ' 48200  ', 'Selangor ', '03-6081 3182', NULL, NULL, NULL, NULL),
(1875, 19, 3, 'No 5 & 7 Jalan Besar Susur 1  ', 'Seri Kembangan  ', '43300 ', 'Selangor   ', '  03-8948 3162', NULL, NULL, NULL, NULL),
(1876, 19, 3, '29-1, Jalan SP 2/1 Taman Serdang Perdana ', 'Seri Kembangan', '43300 ', ' Selangor ', '03-8943 0795', NULL, NULL, NULL, NULL),
(1877, 19, 3, 'No. 19 Jalan Setia Prima R U 13/R Setia Alam, Seksyen U13 ', 'Shah Alam ', '40170 ', ' Selangor  ', '03-3344 6888', NULL, NULL, NULL, NULL),
(1878, 19, 3, 'No. 3, Jalan Takal 15/21 Seksyen 15 ', 'Shah Alam ', '40000 ', 'Selangor', '03-5510 9021', NULL, NULL, NULL, NULL),
(1879, 19, 3, '34, Jalan Perbahan Satu Section 26/2A ', ' Shah Alam ', '40000', 'Selangor    ', '03-5191 8888', NULL, NULL, NULL, NULL),
(1880, 19, 3, 'No. 26  Jalan Tengku Ampuan Zabedah D9/D Seksyen 9 ', 'Shah Alam ', '40100 ', 'Selangor  ', '03-5880 8047', NULL, NULL, NULL, NULL),
(1881, 19, 3, 'No. 16, Jalan SS19/6 ', 'Subang Jaya', '47500 ', ' Selangor ', '03-5636 8295', NULL, NULL, NULL, NULL),
(1882, 19, 3, 'W-1-0, W-2-0 & W-1-1 Subang Square Business Centre Jalan SS15/4G ', 'Subang Jaya ', '47500 ', 'Selangor   ', '03-5632 9034', NULL, NULL, NULL, NULL),
(1883, 19, 3, 'Lot 43, Jalan USJ 10/1G ', 'Subang Jaya ', '47620 ', 'Selangor   ', '03-5637 1984', NULL, NULL, NULL, NULL),
(1884, 19, 3, '5, Jalan SL 1/4 Bandar Sungai Long ', 'Kajang', '43000 ', NULL, '03-9074 9950', NULL, NULL, NULL, NULL),
(1885, 19, 3, 'No. 64, Jalan BRP 1/2 Bukit Rahman Putra ', 'Sungai Buloh ', '47000 ', 'Selangor  ', '03-6157 4042', NULL, NULL, NULL, NULL),
(1886, 19, 3, 'No. 19 Jalan Setia Prima R U 13/R Setia Alam, Seksyen U13 ', 'Shah Alam  ', '40170 ', 'Selangor   ', ' 03-3344 6888', NULL, NULL, NULL, NULL),
(1887, 19, 3, 'No. 30, Jalan Public Sungai Buloh New Village ', 'Sungai Buloh', '47000 ', ' Selangor ', ' 03-6156 9385', NULL, NULL, NULL, NULL),
(1888, 19, 3, '51 & 53, Jalan TSB 10A Taman Industri Sungai Buloh ', 'Sungai Buloh', '47000 ', ' Selangor ', ' 03-6157 5811', NULL, NULL, NULL, NULL),
(1889, 19, 3, 'No 174 & 174A, Jalan Besar ', 'Tanjung Sepat Kuala Langat ', '42800 ', 'Selangor  ', ' 03-3197 2059', NULL, NULL, NULL, NULL),
(1890, 19, 3, 'W-1-0, W-2-0 & W-1-1 Subang Square Business Centre Jalan SS15/4G ', 'Subang Jaya', '47500 ', ' Selangor  ', ' 03-5632 9034', NULL, NULL, NULL, NULL),
(1891, 19, 3, 'Level 1 Wisma Hong Leong 18, Jalan Perak ', 'Kuala Lumpur', '50450 ', 'Kuala Lumpur', '03-2164 2525', NULL, 'HLBBMYKLXXX', NULL, NULL),
(1892, 19, 3, 'Ground Floor No. 111, Jalan Dwitasik 1 Bandar Sri Permaisuri', 'Kuala Lumpur   ', ' 56100 ', 'Kuala Lumpur  ', '03-9171 0861', NULL, NULL, NULL, NULL),
(1893, 19, 3, 'No. 37, Jalan Telawi 3 Bangsar Baru ', 'Kuala Lumpur', '59100 ', 'Kuala Lumpur ', '03-2283 3710', NULL, NULL, NULL, NULL),
(1894, 19, 3, '150, Jalan Tun Sambanthan ', 'Kuala Lumpur ', '50470 ', 'Kuala Lumpur ', '03-2274 7100', NULL, NULL, NULL, NULL),
(1895, 19, 3, 'No. 53 & 55 Jalan Sultan Ismail ', ' Kuala Lumpur ', '50250', ' Kuala Lumpur', ' 03-2148 8077', NULL, NULL, NULL, NULL),
(1896, 19, 3, 'No. 114 & 116  Jalan Cerdas Taman Connaught Cheras ', 'Kuala Lumpur ', '56000   ', 'Kuala Lumpur ', '03-9102 1499', NULL, NULL, NULL, NULL),
(1897, 19, 3, 'A-G-10 & A-01-11  No 21 Jalan 26/70A  Desa Sri Hartamas  ', 'Kuala Lumpur  ', '50480 ', 'Kuala Lumpur  ', '03-6201 2635', NULL, NULL, NULL, NULL),
(1898, 19, 3, '147, Jalan Imbi ', 'Kuala Lumpur', '55100 ', 'Kuala Lumpur ', '03-2141 1402', NULL, NULL, NULL, NULL),
(1899, 19, 3, 'No 468-B2(A), Blok B Ground Floor, Rivercity  3rd Mile Jalan Ipoh ', 'Kuala Lumpur   ', '51200 ', 'Kuala Lumpur  ', '03-4044 4764', NULL, NULL, NULL, NULL),
(1900, 19, 3, 'No 2-0, Lorong 2/137C Off Jalan Kelang Lama', 'Kuala Lumpur   ', ' 58200 ', 'Kuala Lumpur  ', '03-7782 0823', NULL, NULL, NULL, NULL),
(1901, 19, 3, 'No.50 Jalan Merlimau Off Jalan Kenanga ', ' Kuala Lumpur   ', '55200', ' Kuala Lumpur ', '03-9222 1498', NULL, NULL, NULL, NULL),
(1902, 19, 3, 'No. 31 & 33, Jalan 1/116 B Kuchai Entrepreneurs Park Off Jalan Kuchai Lama', 'Kuala Lumpur ', ' 58200 ', 'Kuala Lumpur', '03-7982 6033', NULL, NULL, NULL, NULL),
(1903, 19, 3, '111, Jalan Mega Mendung Kompleks Bandar Off Jalan Kelang Lama ', 'Kuala Lumpur ', '58200 ', 'Kuala Lumpur', '03-7981 4411', NULL, NULL, NULL, NULL),
(1904, 19, 3, '55-57, Jalan Pasar ', 'Kuala Lumpur ', '55100 ', 'Kuala Lumpur ', '03-9223 5249', NULL, NULL, NULL, NULL),
(1905, 19, 3, 'Level 1, Wisma Hong Leong 18, Jalan Perak ', 'Kuala Lumpur   ', '50450 ', 'Kuala Lumpur  ', '03-2164 3939', NULL, NULL, NULL, NULL),
(1906, 19, 3, 'No. 34, 36 & 38 Jalan Petaling ', 'Kuala Lumpur ', '50000 ', 'Kuala Lumpur ', '03-2072 3211', NULL, NULL, NULL, NULL),
(1907, 19, 3, 'Ground Floor Menara Eon Bank No. 288, Jalan Raja Laut ', ' Kuala Lumpur ', '50350', ' Kuala Lumpur ', '03-2694 7688', NULL, NULL, NULL, NULL),
(1908, 19, 3, 'Ground & Mezzanine Floors Wisma Sin Heap Lee No. 346 Jalan Tun Razak ', ' Kuala Lumpur ', '50400', ' Kuala Lumpur ', '03-2163 1457', NULL, NULL, NULL, NULL),
(1909, 19, 3, 'No 77C & D, Lot 58529 Jalan Kepong ', ' Kuala Lumpur ', '52100', ' Kuala Lumpur ', '03-6257 1022', NULL, NULL, NULL, NULL),
(1910, 19, 3, 'Ground & Mezzanine Floors No. 2-21A & 2-21A1 Jalan Desa 1/1 Desa Aman Puri', 'Kepong ', ' 52100 ', 'Kuala Lumpur  ', ' 03-6273 5688', NULL, NULL, NULL, NULL),
(1911, 19, 3, '19, Jalan 54 Desa Jaya ', 'Kepong ', '52100 ', 'Kuala Lumpur', '03-6276 3701', NULL, NULL, NULL, NULL),
(1912, 19, 3, 'No 23 & 24, Jalan KIP 1 Taman Perindustrian KIP Kepong ', ' Kuala Lumpur   ', '52200', ' Kuala Lumpur   ', '03-6277 6310', NULL, NULL, NULL, NULL),
(1913, 19, 3, '26, Persiaran Ara Kiri Lucky Garden Bangsar ', 'Kuala Lumpur  ', '59100 ', 'Kuala Lumpur  ', '03-2094 3914', NULL, NULL, NULL, NULL),
(1914, 19, 3, 'G2.01, Menara Raja Laut No. 288 Jalan Raja Laut ', 'Kuala Lumpur ', '50350 ', 'Kuala Lumpur ', ' 03-2694 2288', NULL, NULL, NULL, NULL),
(1915, 19, 3, 'Ground & 1st Floor Unit 25-G & 25-1 Signature Office Mid Valley City Lingkaran Syed Putra ', 'Kuala Lumpur ', '59200 ', 'Kuala Lumpur  ', '03-2282 0462', NULL, NULL, NULL, NULL),
(1916, 19, 3, 'Ground Floor & Mezzanine 27, Jalan Pandan Indah ', 'Kuala Lumpur ', '55100 ', 'Kuala Lumpur ', ' 03-4292 2988', NULL, NULL, NULL, NULL),
(1917, 19, 3, 'No. 1 & 3 Jalan Pandan 3/5 Pandan Jaya ', ' Kuala Lumpur ', '55100', ' Kuala Lumpur ', '03-9283 7988', NULL, NULL, NULL, NULL),
(1918, 19, 3, 'No.1-GM Jalan Perdana 4/6 Pandan Perdana ', 'Kuala Lumpur    ', '55300 ', 'Kuala Lumpur ', ' 03-9287 8735', NULL, NULL, NULL, NULL),
(1919, 19, 3, 'No. 47 & 48 Jalan Chow Kit ', 'Kuala Lumpur', '50350 ', 'Kuala Lumpur ', ' 03-4043 3458', NULL, NULL, NULL, NULL),
(1920, 19, 3, 'A 54, Jalan Tuanku Empat Salak South Garden Off Jalan Sungei Besi', 'Kuala Lumpur', ' 57100 ', 'Kuala Lumpur ', ' 03-7982 9063', NULL, NULL, NULL, NULL),
(1921, 19, 3, 'No. 8 & 10, Jalan 3/50C Taman Setapak Indah Jaya Off Jalan Genting Kelang ', 'Kuala Lumpur ', '53300 ', 'Kuala Lumpur ', ' 03-4023 9046', NULL, NULL, NULL, NULL),
(1922, 19, 3, 'Unit E-1-2 Level 1 Block E Pusat Komersial Southgate No 2 Jalan Dua Off Jalan Chan Sow Lin', 'Kuala Lumpur  ', ' 55200 ', 'Kuala Lumpur  ', '03-9221 0813', NULL, NULL, NULL, NULL),
(1923, 19, 3, 'No. 7 & 9, Jalan 2/109F Plaza Danau 2 Taman Danau Desa Off Jalan Klang Lama', 'Kuala Lumpur   ', ' 58100 ', 'Kuala Lumpur   ', '03-7987 3868', NULL, NULL, NULL, NULL),
(1924, 19, 3, '180-0-7 & 180-0-8 Wisma Mahkota Taman Maluri, Cheras ', 'Kuala Lumpur  ', '55100 ', 'Kuala Lumpur   ', '03-9282 1507', NULL, NULL, NULL, NULL),
(1925, 19, 3, 'No. 266 & 267 Jalan Bandar 12 Taman Melawati ', 'Kuala Lumpur   ', '53100 ', 'Kuala Lumpur   ', '03-4106 8951', NULL, NULL, NULL, NULL),
(1926, 19, 3, 'No. 50, Jalan Manis 1 Taman Segar, Cheras ', 'Kuala Lumpur   ', '56100 ', 'Kuala Lumpur  ', '03-9132 5026', NULL, NULL, NULL, NULL),
(1927, 19, 3, 'No. 2 Jalan Rampai Niaga 1 Rampai Business Park Taman Sri Rampai ', 'Kuala Lumpur ', '53300 ', 'Kuala Lumpur ', '03-4143 2639', NULL, NULL, NULL, NULL),
(1928, 19, 3, 'No. 44 & 46, Block A Plaza Sinar, Jalan 8/38D Taman Sri Sinar Segambut ', 'Kuala Lumpur  ', '51200 ', 'Kuala Lumpur  ', '03-6272 9637', NULL, NULL, NULL, NULL),
(1929, 19, 3, '38, Jalan 7/108C Jalan Sungai Besi Taman Sungai Besi ', 'Kuala Lumpur ', '57100 ', 'Kuala Lumpur ', '03-7980 0747', NULL, NULL, NULL, NULL),
(1930, 19, 3, '26, Lorong Rahim Kajai 14 Taman Tun Dr Ismail ', 'Kuala Lumpur   ', '60000 ', 'Kuala Lumpur  ', '03-7729 3716', NULL, NULL, NULL, NULL),
(1931, 19, 3, 'No. 15, 16 & 17 Jalan Midah Satu Taman Midah Cheras', 'Kuala Lumpur ', ' 56000 ', 'Kuala Lumpur', ' 03-9131 9388', NULL, NULL, NULL, NULL),
(1932, 19, 3, 'No. 71 & 73 Jalan Radin Tengah Zone J 4 Bandar Baru Seri Petaling ', 'Kuala Lumpur ', '57000 ', 'Kuala Lumpur  ', ' 03-9058 2349', NULL, NULL, NULL, NULL),
(1933, 19, 3, 'Lot G-03, Ground Floor Wisma Perintis Jalan Dungun Damasara Heights ', 'Kuala Lumpur   ', '50490 ', 'Kuala Lumpur   ', '03-2094 0069', NULL, NULL, NULL, NULL),
(1934, 19, 3, '166 & 168, Jalan 2/3A Off KM 12, Jalan Ipoh ', 'Batu Caves', '68100 ', ' Kuala Lumpur     ', '03-6138 8988', NULL, NULL, NULL, NULL),
(1935, 19, 3, 'Tingkat Bawah, No. 6 & 8 Blok 5, Jalil Link Jalan Jalil Jaya 6 Bukit Jalil ', 'Kuala Lumpur ', '57000 ', 'Kuala Lumpur   ', '03-8993 9034', NULL, NULL, NULL, NULL),
(1936, 19, 3, 'Lot No. P4.02.00, Level 4 Pavilion Kuala Lumpur Mall 168, Jalan Bukit Bintang ', 'Kuala Lumpur  ', '55100 ', 'Kuala Lumpur  ', '03-2141 2821', NULL, NULL, NULL, NULL),
(1937, 19, 3, 'No 63, Jalan Medan Putra 1 Medan Putra Business Centre Menjalara ', 'Kuala Lumpur    ', '52200 ', 'Kuala Lumpur   ', '03-6270 1460', NULL, NULL, NULL, NULL),
(1938, 19, 3, 'No. 28, Ground & First Floor Jalan Setiawangsa 10/55A Taman Setiawangsa ', 'Kuala Lumpur   ', '54200 ', 'Kuala Lumpur    ', ' 03-4251 1258', NULL, NULL, NULL, NULL),
(1939, 19, 3, 'Ground Floor & 1st Floor No.25, Jalan Delima 13 D''Wangsa Wangsa Maju ', 'Kuala Lumpur   ', '53300 ', 'Kuala Lumpur   ', ' 03-4142 1069', NULL, NULL, NULL, NULL),
(1940, 19, 3, '10, Jalan 1/27B Section 1 Wangsa Maju ', 'Kuala Lumpur   ', '53300 ', 'Kuala Lumpur   ', '03-4142 2989', NULL, NULL, NULL, NULL),
(1941, 20, 3, 'Lot FG-001, Ground Floor Dataran Pahlawan Melaka Megamall Jalan Merdeka ', 'Bandar Hilir  ', ' 75000 ', 'Melaka  ', ' 1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1942, 20, 3, '108-2 Jalan Rahmat ', 'Batu Pahat ', '83000 ', 'Johor ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1943, 20, 3, '1 Jalan Ibrahim ', 'Johor Bahru ', '80000 ', 'Johor ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1944, 20, 3, '8A  Jalan Dato'' Haji Hassan', 'Kluang', ' 86000 ', ' Johor   ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1945, 20, 3, '26 Jalan Maharani ', 'Muar ', '84000 ', 'Johor ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1946, 20, 3, '109C-109E  Jalan Genuang ', 'Segamat', '85000 ', ' Johor ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1947, 20, 3, 'No. 143  Jalan Sutera Tanjung 8/2 Taman Sutera Utama ', 'Skudai ', '81300 ', 'Johor ', '1-300-88-5000 , 603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1948, 20, 3, '47 & 49  Jalan Molek 1/29 Taman Molek  ', 'Johor Bahru ', '81100 ', 'Johor ', '1-300-88-5000 ,  603-8317 5000 (from overseas)  ', NULL, NULL, NULL, NULL),
(1949, 20, 3, ' 63 - 65, Jalan Dato Bandar Tunggal ', 'Seremban ', '70000 ', 'Negeri Sembilan ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1950, 20, 3, '21 & 23 Jalan Pantai ', 'Kota Kinabalu ', '88000 ', 'Sabah ', ' 1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1951, 20, 3, 'UG Floor Gateway Kuching No. 9, Jalan Bukit Mata ', 'Kuching ', '93100 ', 'Sarawak  ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1952, 20, 3, 'Lot1375 & 1376  Centrepoint Commercial Centre (Phase 2) Block 10 Miri Concession Land District Kubu Road ', 'Miri ', '98000 ', 'Sarawak  ', ' 1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1953, 20, 3, 'No 209 Jalan Gangsa Kawasan Perusahaan Mergong 2 ', 'Alor Setar ', '05150 ', 'Kedah   ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1954, 20, 3, '104, JalanLegenda 4 Legenda Heights ', 'Sungai Petani ', '08000 ', 'Kedah ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1955, 20, 3, '2 Jalan Dato Maharaja Lela ', 'Ipoh', '30000 ', ' Perak ', ' 1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1956, 20, 3, '24-30 Jalan Berek ', ' Taiping', '34000', ' Perak  ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1957, 20, 3, '1054 Jalan Mahkota ', 'Teluk Intan ', '36000 ', 'Perak', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1958, 20, 3, 'No.13 & 15  Lintang Batu Maung 1 ', 'Pulau Pinang', '11960 ', 'Pulau Pinang', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1959, 20, 3, 'No 47, 49 , 51 & 53 Jalan Perniagaan Gemilang 1 Pusat Perniagaan Gemilang ', 'Bukit Mertajam P', '14000 ', 'ulau Pinang  ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1960, 20, 3, '36 Lebuh Pantai ', 'Pulau Pinang ', '10300 ', 'Pulau Pinang ', '1-300-88-5000 Tel: 603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1961, 20, 3, '40 Jalan Teluk Sisek ', 'Kuantan ', '25000 ', 'Pahang   ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1962, 20, 3, '3940 Jalan Temenggong ', 'Kota Bharu ', '15000 ', 'Kelantan', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1963, 20, 3, '3A-G, Jalan C180/1 Dataran C180 ', 'Cheras ', '43200 ', 'Selangor ', '1-300-88-5000 , 603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1964, 20, 3, 'No. 53 & 55 Jalan PPAJ 3/1 Pusat Perdagangan Alam Jaya ', 'Bandar Puncak Alam ', '42300 ', 'Selangor', ' 1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1965, 20, 3, 'A-19-P1, Blok A Jaya One 72A, Jalan Universiti', ' Petaling Jaya ', ' 46200', 'Selangor ', '1-300-88-5000 , 603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1966, 20, 3, '4 & 5 Jalan Raja Haroun ', 'Kajang ', '43000 ', 'Selangor  ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1967, 20, 3, '19 Jalan Stesen', ' Klang ', ' 41000', 'Selangor   ', '1-300-88-5000 , 603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1968, 20, 3, '1A-A – 4A-A Jalan USJ 10/1A Pusat Perniagaan USJ 10 ', 'UEP Subang Jaya ', '47610 ', 'Selangor ', '1-300-88-5000  ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1969, 20, 3, 'GF-2 & 3, 1F-1 & 2, Tower 2 Puchong Financial Corporate Centre (PFCC) Jalan Puteri ½ Bandar Puteri ', 'Puchong', '47100 ', ' Selangor ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1970, 20, 3, '89, 91 & 93  Jalan SS 21/60 Damansara Utama ', ' Petaling Jaya ', '47400', 'Selangor ', '1-300-88-5000  603-8317 5000 (from overseas)  ', NULL, NULL, NULL, NULL),
(1971, 20, 3, '1 Jalan PJU 5/20 Pusat Perdagangan Kota Damansara (THE STRAND) Kota Damansara PJU 5 ', 'Petaling Jaya ', '47810 ', 'Selangor ', ' 1-300-88-5000 ,  603-8317 5000 (from overseas)  ', NULL, NULL, NULL, NULL),
(1972, 20, 3, 'Menara Great Eastern 303 Jalan Ampang ', 'Kuala Lumpur', '50450 ', NULL, ' 1-300-88-5000  ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1973, 20, 3, 'No. K03 RapidKL Ampang Park LRT Station Jalan Ampang ', 'Kuala Lumpur   ', '50450 ', 'Kuala Lumpur  ', ' 1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1974, 20, 3, 'Kiosk K08 & K09 Bukit Bintang Monorail Station Jalan Bukit Bintang ', 'Kuala Lumpur  ', '55100 ', 'Kuala Lumpur   ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1975, 20, 3, '19 Jalan Setia Puspa Bukit Damansara', 'Kuala Lumpur   ', ' 50490 ', 'Kuala Lumpur   ', ' 1-300-88-5000,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1976, 20, 3, 'No. 1, 3, 5 & 7 Jalan Damai Niaga 1 Alam Damai, Cheras ', 'Kuala Lumpur  ', '56000 ', 'Kuala Lumpur ', ' 1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1977, 20, 3, '35 G & 35-1 Jalan Wangsa Delima 13 D''Wangsa, WangsaMaju', 'Kuala Lumpur  ', ' 53300 ', 'Kuala Lumpur   ', '1-300-88-5000 , 603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1978, 20, 3, '234, Jalan Bandar 13 Taman Melawati Metro 1 Taman Melawati ', 'Kuala Lumpur ', '53100 ', 'Kuala Lumpur ', '1-300-88-5000 , 603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1979, 20, 3, 'K01, RapidKL Masjid Jamek LRT Station Jalan Tun Perak ', 'Kuala Lumpur ', '50050 ', 'Kuala Lumpur ', '1-300-88-5000 ,  603-8317 5000 (from overseas)', NULL, NULL, NULL, NULL),
(1980, 20, 3, 'Ground Floor Menara OCBC 18 Jalan Tun Perak', 'Kuala Lumpur', ' 50050 ', 'Kuala Lumpur ', ' 1-300-88-5000, 603-8317 5000 (from overseas)', NULL, 'OCBCMYKL', NULL, NULL),
(1981, 20, 3, '60 Vista Magna Jalan Prima Metro Prima Kepong ', 'Kuala Lumpur   ', '52100 ', 'Kuala Lumpur   ', '1-300-88-5000 , 603-8317 5000 (from overseas)  ', NULL, NULL, NULL, NULL),
(1982, 21, 3, 'DT3615 Jalan Angkasa Nuri 1 Taman Angkasa Nuri ', 'Durian Tunggal', '76100 ', ' Melaka ', '606 852 1000', NULL, NULL, NULL, NULL),
(1983, 22, 3, '1st Floor, Podium Block, Menara Bumiputra, 21,  Jalan Melaka, ', 'Kuala Lumpur  ', '50100 ', 'Kuala Lumpur  ', '1300-88-8787 ', NULL, 'BMMBMYKL', NULL, NULL),
(1984, 22, 3, 'Ground Floor, Wisma TCT, No. 516/1,  Batu 3, Jalan Ipoh, ', ' Kuala Lumpur ', '51200', ' Kuala Lumpur ', '1300-88-8787', NULL, NULL, NULL, NULL),
(1985, 22, 3, 'No. 2 & 2A, Jalan Tasik Utama 7, Medan Niaga Tasik Damai, Sungai Besi, ', ' Kuala Lumpur.  ', '57000', ' Kuala Lumpur.  ', '1300-88-8787', NULL, NULL, NULL, NULL),
(1986, 22, 3, 'No. 399, Ground Floor, Bangunan UMNO Lama,  Jalan Tuanku Abdul Rahman, ', 'Kuala Lumpur', '50100 ', 'Kuala Lumpur', '1300-88-8787 ', NULL, NULL, NULL, NULL),
(1987, 22, 3, 'No. 2 & 4, Ground & 1st Floor, Jalan Diplomatik 2,  Pusat Komersial Diplomatik, Precinct 15, ', 'Putrajaya ', '62050 ', 'Putrajaya ', '1300-88-8787', NULL, NULL, NULL, NULL),
(1988, 22, 3, '268, 269 & 270, Jalan Bandar 12, Taman Melawati,  ', 'Kuala Lumpur ', '53100 ', 'Kuala Lumpur ', '1300-88-8787', NULL, NULL, NULL, NULL),
(1989, 22, 3, '52A, 52a-1 and 56, Wisma Alam Damai, Jalan Alam Damai 1, Alam Damai, Cheras, ', 'Kuala Lumpur', '56100 ', 'Kuala Lumpur', '1300-88-8787', NULL, NULL, NULL, NULL),
(1990, 22, 3, 'Ground, 1st & 2nd Floor, D32 & D33, Jalan Medan Pusat Bandar 4, Seksyen 9, ', ' Bandar Baru Bangi ', '43650', 'Selangor', '1300-88-8787', NULL, NULL, NULL, NULL),
(1991, 22, 3, 'No.3A & 3A-1 (Ground & Level 1) & No.5 (Ground Floor), Prima Samudera, Jalan Samudera Utara 11, Taman Samudera, ', 'Batu Caves  ', '68100 ', 'Selangor', '1300-88-8787 ', NULL, NULL, NULL, NULL),
(1992, 22, 3, 'No.46 & 48, Jalan Kelicap 42A/Ku1, Klang Bandar Diraja, Off Jalan Meru, ', 'Klang,', '41050 ', ' Selangor ', '1300-88-8787', NULL, NULL, NULL, NULL),
(1993, 22, 3, 'Ground & First Floor No. G03A & 103A, Laman Seri Business Park, No. 7, Jalan Sukan, Seksyen 13, ', 'Shah Alam, ', '40100 ', 'Selangor ', '1300-88-8787', NULL, NULL, NULL, NULL),
(1994, 22, 3, 'No. B-29-1 & 2, Block B, Jaya One, 72A, Jalan Universiti, ', 'Petaling Jaya, ', '46200 ', 'Selangor', '1300-88-8787 ', NULL, NULL, NULL, NULL),
(1995, 22, 3, 'Ground & First Floor, No. 1, Jalan USJ Sentral 2, USJ Sentral, ', 'Subang Jaya, ', '47500 ', 'Selangor Darul Ehsan ', '1300-88-8787', NULL, NULL, NULL, NULL),
(1996, 22, 3, 'No. 2, Jalan Presiden F U1/F, Accentra Glenmarie, Seksyen U1, ', 'Shah Alam', '40150 ', 'Selangor', '1300-88-8787 ', NULL, NULL, NULL, NULL),
(1997, 22, 3, 'No. 9 & 11, Jalan Bandar Rawang 1, Bandar Baru Rawang, ', 'Rawang', '48000 ', 'Selangor', '1300-88-8787', NULL, NULL, NULL, NULL),
(1998, 22, 3, 'Ground & 1st Floor, Azman Hashim Complex, Pt 5063 Mukim Setapak, Universiti Islam Antarabangsa Malaysia, Jalan Gombak, ', 'Kuala Lumpur  ', '53300 ', 'Kuala Lumpur  ', ' 1300-88-8787', NULL, NULL, NULL, NULL),
(1999, 22, 3, 'Ground, 1st & 2nd Floor, No. 2-1-G/1/2, Jalan Prima Saujana 2/1, Prima Saujana,', 'Kajang, ', ' 43000 ', 'Selangor Darul Ehsan  ', ' 1300-88-8787', NULL, NULL, NULL, NULL),
(2000, 22, 3, 'G-1, 2 & 3 Ground Floor, Kompleks PKNS, ', 'Shah Alam ', '40000 ', 'Selangor', '1300-88-8787', NULL, NULL, NULL, NULL),
(2001, 22, 3, 'Wisma Great Eastern, No.105, 107 & 109, Jalan Yam Tuan,', 'Seremban,', ' 70000 ', ' Negeri Sembilan', '1300-88-8787', NULL, NULL, NULL, NULL),
(2002, 22, 3, 'Ground Floor, No 3 & 3A, Jalan Remis 2, Medan Remis, Telok Kemang, ', 'Port Dickson, ', '71050 ', 'Negeri Sembilan. ', '1300-88-8787', NULL, NULL, NULL, NULL),
(2003, 22, 3, 'Ground & 1st Floor, No.92, Jalan Cheng Baru, Taman Cheng Baru, ', 'Melaka  ', '75250 ', 'Melaka ', '1300-88-8787', NULL, NULL, NULL, NULL),
(2004, 22, 3, '395, Taman Sinn, Jalan Semabuk, ', ' Melaka ', '75050', ' Melaka', '1300-88-8787', NULL, NULL, NULL, NULL),
(2005, 22, 3, '24-25, Ground & 1st Floor, Jalan Kundang, Taman Bukit Pasir, ', 'Batu Pahat ', '83000 ', 'Johor', '1300-88-8787', NULL, NULL, NULL, NULL),
(2006, 22, 3, 'No. 32 Jalan Sri Putra 1, Bandar Putra, ', 'Kulai, ', '81000 ', 'Johor Darul Takzim', '1300-88-8787', NULL, NULL, NULL, NULL),
(2007, 22, 3, 'No. 23,25 & 27, Jalan Sri Warisan 1, Kota Tinggi Heritage Mall, ', 'Kota Tinggi. ', '81920 ', 'Johor', '1300-88-8787', NULL, NULL, NULL, NULL),
(2008, 22, 3, 'Ground & 1st Floor, Lot 1 & 2, Kebun Teh Commercial City, Jalan Kebun Teh, ', 'Johor Bahru, ', '80250 ', 'Johor.  ', '1300-88-8787', NULL, NULL, NULL, NULL),
(2009, 22, 3, 'No. 37&38;, Jalan Genuang Perdana, Taman Genuang Perdana,', 'Segamat,', ' 85000 ', ' Johor.  ', ' 1300-88-8787', NULL, NULL, NULL, NULL),
(2010, 22, 3, 'Ground & 1st Floor, No. 17, Jalan Ros Merah 2/20, Taman Johor Jaya, ', 'Johor Bahru ', '81100 ', 'Johor Bahru ', '1300-88-8787', NULL, NULL, NULL, NULL),
(2011, 22, 3, 'Ground & 1st Floor, No. 28, Jalan Kebudayaan 5, Taman Universiti, ', ' Skudai ', '81300', 'Johor', '1300-88-8787', NULL, NULL, NULL, NULL),
(2012, 22, 3, 'No. 1, Jalan Persiaran Dato’ Haji Ismail Hassan,', 'Kluang', ' 86000 ', 'Johor', ' 1300-88-8787', NULL, NULL, NULL, NULL),
(2013, 22, 3, 'Ground Floor, Bangunan Pusat Khidmat Pelajar, Universiti Tun Hussein Onn Malaysia, ', 'Parit Raja, Batu Pahat', '86400 ', 'Johor', '1300-88-8787', NULL, NULL, NULL, NULL),
(2014, 22, 3, '1, Jalan Air Jerneh, ', 'Kuala Terengganu ', '20300 ', 'Terengganu ', '1300-88-8787', NULL, NULL, NULL, NULL),
(2015, 22, 3, 'Lot 5678 & 5679, Taman D''Lahar, Gong Kepas, Kampung Raja, ', 'Besut', '22200 ', ' Terengganu Darul Iman. ', '1300-88-8787', NULL, NULL, NULL, NULL),
(2016, 22, 3, 'Ground Floor, Lot PT 265 & PT 266, Wisma Nik Kob,  Jalan Sultan Yahya Petra, ', 'Kota Bharu ', '15200 ', 'Kelantan', '1300-88-8787', NULL, NULL, NULL, NULL),
(2017, 22, 3, 'No. 692, 693 & 694, Kompleks Perniagaan Humaira, Pusat Bandar Tanah Merah, ', 'Tanah Merah, ', '17500 ', 'Kelantan Darul Naim. ', '09-9544549', NULL, NULL, NULL, NULL),
(2018, 22, 3, 'Ground & First Floor, Bangunan Perbadanan Menteri Besar Kelantan (PMBK),  Jalan Kuala Krai, ', 'Kota Bharu, ', '15150 ', 'Kelantan ', '1300-88-8787', NULL, NULL, NULL, NULL),
(2019, 22, 3, 'Ground & 1st Floor, No. PT 4646, Lot 2003 PN 3523,  ', 'Bandar Jeli ', '17600 ', 'Kelantan', '1300-88-8787', NULL, NULL, NULL, NULL),
(2020, 22, 3, 'Ground & 1st Floor, Lot PT 5080, Kompleks Perniagaan Saidina Ali, Jalan Kuala Krai, Kok Lanas, ', 'Kota Bharu ', '16450 ', 'Kelantan', '1300-88-8787', NULL, NULL, NULL, NULL),
(2021, 22, 3, 'Ground & Mezzanine Floor, Wisma Maju UMNO, Jalan Sultan Idris Shah,', ' Ipoh', ' 30000', 'Perak', '1300-88-8787', NULL, NULL, NULL, NULL),
(2022, 22, 3, 'No. 40 & 42, Jalan Wawasan 4, Taman Wawasan Jaya, Pusat Bandar Baru, ', 'Parit Buntar, ', '34200 ', 'Perak ', ' 1300-88-8787', NULL, NULL, NULL, NULL),
(2023, 22, 3, 'Ground & 1st Floor, No. 392, Taman Samudera, ', 'Seri Manjung ', '32040 ', 'Perak', '1300-88-8787', NULL, NULL, NULL, NULL),
(2024, 22, 3, '98-100, Ground & 1st Floor, Jalan Kota, ', 'Taiping ', '34000 ', 'Perak', '1300-88-8787', NULL, NULL, NULL, NULL),
(2025, 22, 3, 'Lot T-1, Ground & Mezzanine Floor, Wisma PKNK, Jalan Sultan Badlishah,', 'Alor Star', ' 05000 ', 'Kedah', '1300-88-8787', NULL, NULL, NULL, NULL),
(2026, 22, 3, 'No. 6, Bangunan Al-Ikhwan, Pusat Perniagaan Putra, Jalan Kilang Lama, ', 'Kulim ', '09000 ', 'Kedah', '1300-88-8787', NULL, NULL, NULL, NULL),
(2027, 22, 3, 'No. 21, Lot 88, Jalan Perdana Heights 2/2, Perdana Heights, ', 'Sungai Petani ', '08000, ', 'Kedah Darul Aman  ', '1300-88-8787', NULL, NULL, NULL, NULL),
(2028, 22, 3, 'Ground Floor, Bazaar Souq Al-Bukhary, No. 1, Jln Tun Abdul Razak, ', ' Alor Setar. ', '05200', 'Kedah', '1300-88-8787', NULL, NULL, NULL, NULL),
(2029, 22, 3, '2A-G-26 & 2A-G-28, QuarterMile, Solok Mayang Pasir, ', 'Bayan Baru, Pulau Pinang Tel: ', '11950 ', ' Pulau Pinang', '1300-88-8787', NULL, NULL, NULL, NULL),
(2030, 22, 3, 'Ground, 1st & 2nd Floor, No. 27&28;, Jalan Todak 2, Bandar Sunway, Seberang Jaya,', 'Perai, Butterworth,', ' 13700 ', ' Penang ', '1300-88-8787', NULL, NULL, NULL, NULL),
(2031, 22, 3, 'No. 64, Lebuh Pantai, ', 'Georgetown ', '10300, ', 'Pulau Pinang', '1300-88-8787', NULL, NULL, NULL, NULL),
(2032, 22, 3, 'Bangunan D12, Minden Campus, ', 'Minden ', '11800 ', 'Pulau Pinang', ' 1300-88-8787', NULL, NULL, NULL, NULL),
(2033, 22, 3, 'No. 11 & 13, Jalan Bukit Lagi, ', 'Kangar ', '01000 ', 'Perlis', '1300-88-8787', NULL, NULL, NULL, NULL),
(2034, 22, 3, 'B-114 & B-116, Sri Dagangan Centre, Jalan Tun Ismail, ', 'Kuantan', '25000 ', 'Pahang', '1300-88-8787', NULL, NULL, NULL, NULL),
(2035, 22, 3, '6 & 7, Jalan Tun Abd Razak, ', 'Mentakab ', '28400 ', 'Pahang', '1300-88-8787', NULL, NULL, NULL, NULL),
(2036, 22, 3, 'G-02, Ground Floor, Bangunan UMNO (Bahagian Pekan), Jalan Teng Que, ', 'Pekan ', '26600 ', 'Pahang', '1300-88-8787', NULL, NULL, NULL, NULL),
(2037, 22, 3, 'C-8,Jalan Tengku Ismail, Temerloh, ', 'Pahang ', '28000 ', 'Pahang Darul Makmur  ', '1300-88-8787', NULL, NULL, NULL, NULL);
INSERT INTO `banks_branch_info` (`bbi_id`, `ba_id`, `co_id`, `bbi_address`, `bbi_city`, `bbi_zipcode`, `bbi_state`, `bbi_phone`, `bbi_digitrouting`, `bbi_swiftcode`, `bbi_addinfo`, `bbi_status`) VALUES
(2038, 22, 3, 'Ground 1st & 2nd Floor, No. 252, Lot 73 Park City Commercial Centre, Jalan Tanjung Batu, ', 'Bintulu ', '97012 ', 'Sarawak', '1300-88-87872', NULL, NULL, NULL, NULL),
(2039, 22, 3, 'Lot 543-545, Bangunan Cheema, Jalan Tun Ahmad Zaidi Adruce, ', 'Kuching ', '93400 ', 'Sarawak ', '1300-88-8787', NULL, NULL, NULL, NULL),
(2040, 22, 3, '433-434 Ground & First Floor Jalan Bendahara ', 'Miri ', '98000 ', 'Sarawak', '1300-88-8787', NULL, NULL, NULL, NULL),
(2041, 22, 3, 'Ground & Mezzanine Floor, Wisma Gek Poh, No.18, Jalan Haji Saman, ', 'Kota Kinabalu, ', '88000 ', 'Sabah ', '1300-88-8787', NULL, NULL, NULL, NULL),
(2042, 22, 3, 'U0 114, Ground Floor, Jalan OKK Awang Besar, ', 'Wilayah Persekutuan ', '87000 ', 'Labuan ', '1300-88-8787', NULL, NULL, NULL, NULL),
(2043, 22, 3, 'Lot 69 & 70, Ground & 1st Floor, Kubota Square, Jalan Kubota, ', ' Tawau, ', '91000', 'Sabah. ', '1300-88-8787', NULL, NULL, NULL, NULL),
(2044, 21, 3, 'City Plaza, 21, Jalan Tebrau Johor Bahru ', 'Johor', '80300  ', 'Johor', '+60 (7) 2680000', NULL, 'CITIMYKLJOD', NULL, NULL),
(2045, 21, 3, 'DT3615 Jalan Angkasa Nuri 1 Taman Angkasa Nuri Durian Tunggal', ' Melaka', ' 76100 ', ' Melaka', '+60 (6) 8520000', NULL, NULL, NULL, NULL),
(2046, 21, 3, 'No. A9, Ground Floor, Pusat Komersial, Kuantan Perdana Jalan Tun Ismail Kuantan', ' Pahang ', ' 25000 ', ' Pahang ', '+60 (9) 5090000', NULL, NULL, NULL, NULL),
(2047, 21, 3, '1819-B, Jalan Perusahaan Perai ', ' Penang', '13600 ', ' Penang', '+60 (4) 2960000', NULL, NULL, NULL, NULL),
(2048, 21, 3, '42, Jalan Sultan Ahmad Shah Georgetown', 'Penang ', ' 10050  ', 'Penang ', '+60 (4) 2960000', NULL, 'CITIMYKLPEN', NULL, NULL),
(2049, 21, 3, 'No 54, Jalan Suarasa 8/4 Bandar Tun Hussein Onn Cheras ', 'Selangor ', '43200  ', 'Selangor ', '+60 (3) 23830000', NULL, NULL, NULL, NULL),
(2050, 21, 3, 'Lot C108, Centre Wing, Jalan PJU 8/1 Bandar Damansara Perdana Petaling Jaya', 'Selangor ', ' 47820  ', 'Selangor', '+60 (3) 23830000', NULL, NULL, NULL, NULL),
(2051, 21, 3, 'G101, Centro, 8, Jalan Batu Tiga Lama Kampong Bukit Kuda Klang ', 'Selangor ', '41300  ', 'Selangor ', '+60 (3) 23830000', NULL, NULL, NULL, NULL),
(2052, 21, 3, '26, Jalan Puteri 1/1, Bandar Puteri Puchong', 'Selangor', ' 47100  ', 'Selangor', '+60 (3) 23830000', NULL, NULL, NULL, NULL),
(2053, 21, 3, 'No. 10A, Jalan USJ 10/1H Taipan Triangle Subang Jaya ', 'Selangor ', '47610  ', 'Selangor', '+60 (3) 23830000', NULL, NULL, NULL, NULL),
(2054, 21, 3, 'Menara Citibank, 165, Jalan Ampang Kuala Lumpur ', 'Wilayah Persekutuan ', '50450  ', 'Wilayah Persekutuan ', '+60 (3) 23830000', NULL, 'CITIMYKLLAB', NULL, NULL),
(2055, 23, 3, 'Lot 779 Jalan Munshi Abdullah ', ' Melaka  ', '75100', ' Melaka   ', ' 06-283 6001', NULL, NULL, NULL, NULL),
(2056, 23, 3, 'No. 1 Taman Sri Duyong Air Molek ', 'Melaka   ', '75460 ', 'Melaka    ', '06-268 1242', NULL, NULL, NULL, NULL),
(2057, 23, 3, 'KM 3059 Prima Alor Gajah Jalan Besar  Bandar Alor Gajah', 'Melaka   ', ' 78000 ', 'Melaka   ', ' 06-556 2602', NULL, NULL, NULL, NULL),
(2058, 23, 3, 'No. 52 Lorong Setia 1 Ayer Keroh Heights ', ' Melaka   ', '75450', ' Melaka  ', '06-232 1053', NULL, NULL, NULL, NULL),
(2059, 23, 3, 'Ground Floor No. 92 Jalan Mutiara Melaka 1  Taman Mutiara Batu Berendam ', 'Melaka    ', '75350 ', 'Melaka    ', ' 06-317 0969', NULL, NULL, NULL, NULL),
(2060, 23, 3, 'Tingkat Bawah  No. JA 8280  Bandar Baru Jasin III ', 'Melaka   ', '77000 ', 'Melaka   ', '06-529 2916', NULL, NULL, NULL, NULL),
(2061, 23, 3, 'DT 48, Lot No. 28 Pekan Durian Tunggal ', 'Melaka     ', '76100 ', 'Melaka    ', ' 06-553 1354', NULL, NULL, NULL, NULL),
(2062, 23, 3, 'Tingkat Bawah  No. 67, Jalan Rambai Jaya 2 Taman Rambai Jaya ', 'Melaka', '75250 ', 'Melaka   ', '06-3513 733', NULL, NULL, NULL, NULL),
(2063, 23, 3, ' No. 658C  Taman Bukit Beruang Bukit Beruang ', 'Melaka   ', '75450 ', 'Melaka  ', ' 06-232 4003', NULL, NULL, NULL, NULL),
(2064, 23, 3, 'C Jalan KPAA 1 Kompleks Perniagaan Al-Azim Bukit Baru', 'Melaka    ', ' 75150 ', 'Melaka    ', '06-283 6340', NULL, NULL, NULL, NULL),
(2065, 23, 3, 'KS 1060 (DN) Jalan KJ 1 Taman Kuala Jaya Kuala Sungai Baru ', 'Melaka  ', '78200 ', 'Melaka  ', ' 06-387 6660', NULL, NULL, NULL, NULL),
(2066, 23, 3, 'No. 3, Jalan Wangi 2 Taman Wangi Malim ', 'Melaka   ', '75250 ', 'Melaka    ', '06-334 1295', NULL, NULL, NULL, NULL),
(2067, 23, 3, 'Tingkat Bawah No. 9906 Bangunan Hj Sulong Siban Pekan Masjid Tanah ', 'Melaka   ', '78300 ', 'Melaka    ', '06-384 2666', NULL, NULL, NULL, NULL),
(2068, 23, 3, 'Ground Floor JB 8694 Taman Merlimau Maju Merlimau ', 'Melaka   ', '77300 ', 'Melaka   ', '06-263 1698', NULL, NULL, NULL, NULL),
(2069, 23, 3, 'Level 1, Urban Transformation Centre (UTC) Yayasan DMDI Jalan Tan Chay Yan Off Jalan Hang Tuah', 'Melaka   ', ' 75300 ', 'Melaka  ', '06-283 0051', NULL, NULL, NULL, NULL),
(2070, 23, 3, 'No. 112 Jalan CB 1 Taman Cheng Baru ', 'Melaka  ', '75250 ', 'Melaka  ', '06-312 1025', NULL, NULL, NULL, NULL),
(2071, 23, 3, 'No. 19, Jalan Kerambit 1 Bandar Baru Sungai Udang Sungai Udang', 'Melaka    ', ' 76300 ', 'Melaka    ', '06-351 4710', NULL, NULL, NULL, NULL),
(2072, 23, 3, 'No. 87-G  Bangunan Bagus Berhad Jalan Hang Tuah ', 'Melaka   ', '75300 ', 'Melaka   ', ' 06-283 6005', NULL, NULL, NULL, NULL),
(2073, 23, 3, 'Wisma Maria Jalan Ngee Heng ', 'Johor Bahru ', '80100 ', 'Johor ', '607 - 223 0133', NULL, NULL, NULL, NULL),
(2074, 23, 3, 'No. 31, Jalan Balai Raya  Bukit Bakri ', ' Muar ', '84200', 'Johor    ', '606 - 986 6793', NULL, NULL, NULL, NULL),
(2075, 23, 3, 'No. 16A, Bangunan Kedai Pusat Bandar ', 'Bandar Penawar ', '81900 ', 'Johor  ', '607 - 822 1427', NULL, NULL, NULL, NULL),
(2076, 23, 3, 'Tingkat Bawah No. 15 Jalan Ismail ', ' Batu Pahat ', '83000', 'Johor    ', ' 607 - 431 0444', NULL, NULL, NULL, NULL),
(2077, 23, 3, 'No. 168, Jalan Besar ', 'Bukit Gambir ', '84800 ', 'Johor ', '606 - 976 1017', NULL, NULL, NULL, NULL),
(2078, 23, 3, 'No. 65 Jalan Muar  Jementah ', 'Segamat ', '85200 ', 'Johor  ', '607 - 947 2994', NULL, NULL, NULL, NULL),
(2079, 23, 3, 'No. 28, Jalan Padi 1 Bandar Baru Uda ', 'Johor Bahru ', '81200 ', 'Johor    ', '607 - 236 3592', NULL, NULL, NULL, NULL),
(2080, 23, 3, 'Bangunan Dewan Perniagaan Melayu Jalan Segget ', ' Johor Bahru', '80000', ' Johor ', '607 - 223 0734', NULL, NULL, NULL, NULL),
(2081, 23, 3, 'No. 56, Jalan Dedap 13 Taman Johor Jaya ', 'Johor Bahru', '81100 ', ' Johor    ', '607 - 354 4957', NULL, NULL, NULL, NULL),
(2082, 23, 3, 'No.40 Jalan Persisiran Perling Taman Perling ', ' Johor Bahru ', '81200', 'Johor  ', ' 607 - 238 1533', NULL, NULL, NULL, NULL),
(2083, 23, 3, 'No. 40, Jalan Dahlia 20 Taman Dahlia Tampoi ', 'Johor Bahru ', '81200 ', 'Johor  ', '607 - 237 0959', NULL, NULL, NULL, NULL),
(2084, 23, 3, 'No. 2, Jalan Sagu 8 Taman Daya ', 'Johor Bharu ', '81200 ', 'Johor ', ' 607 - 354 2345', NULL, NULL, NULL, NULL),
(2085, 23, 3, 'No.11 Jalan Perang Taman Pelangi ', 'Johor Bahru', '80400 ', ' Johor  ', '607 - 334 1766', NULL, NULL, NULL, NULL),
(2086, 23, 3, 'No. 71, Jalan Sutera Taman Sentosa ', 'Johor Bahru ', '80100 ', 'Johor    ', '607 - 334 2998', NULL, NULL, NULL, NULL),
(2087, 23, 3, 'No. 37, Jalan Sri Bahagia 10 Taman Sri Bahagia ', 'Johor Bahru ', '81200 ', 'Johor', '607 - 238 3808', NULL, NULL, NULL, NULL),
(2088, 23, 3, 'Lot No Ptd 8019  Kampung Baru ', 'Kelapa Sawit ', '81000 ', 'Johor ', '607 - 652 3262', NULL, NULL, NULL, NULL),
(2089, 23, 3, 'No. 3 & 4 Persiaran Yayasan ', 'Kluang ', '86000 ', 'Johor', '607 - 773 6471', NULL, NULL, NULL, NULL),
(2090, 23, 3, 'No. 5 & 6 Jalan Niaga 1 ', 'Kota Tinggi ', '81900 ', 'Johor   ', '607 - 883 8896', NULL, NULL, NULL, NULL),
(2091, 23, 3, 'Tingkat Bawah & Satu No. 132, Bukit Gambir', 'Kulai', ' 81000 ', ' Johor  ', '607 - 663 4949', NULL, NULL, NULL, NULL),
(2092, 23, 3, 'Tingkat Bawah No. 72, Jalan Segamat Taman Asia Timur', 'Labis ', ' 85300 ', 'Johor   ', '607 - 925 1232', NULL, NULL, NULL, NULL),
(2093, 23, 3, 'No. 10N Jalan Cenderawasih ', 'Larkin Jaya ', '80350 ', 'Johor  ', '607 - 238 9599', NULL, NULL, NULL, NULL),
(2094, 23, 3, 'No. 72 & 73 Jalan Ismail ', ' Mersing ', '86800', 'Johor  ', '607 - 799 3221', NULL, NULL, NULL, NULL),
(2095, 23, 3, 'No. 87 & 90 Jalan Ali ', 'Muar ', '84000 ', 'Johor ', '606 - 951 5800', NULL, NULL, NULL, NULL),
(2096, 23, 3, 'No.7, Jalan Ibrahim ', 'Paloh ', '86600 ', 'Johor ', ' 607 - 781 2850', NULL, NULL, NULL, NULL),
(2097, 23, 3, 'No. 2-1, Jalan Dahlia 1/1 Taman Dahlia Jalan Abdul Jabbar Parit Jawa ', 'Muar ', '84150 ', 'Johor    ', '606 - 987 3964', NULL, NULL, NULL, NULL),
(2098, 23, 3, 'Bangunan Umno No. 16, Jalan Besar ', 'Parit Raja ', '86400 ', 'Johor  ', ' 607 - 454 4741', NULL, NULL, NULL, NULL),
(2099, 23, 3, 'No. 31 Jalan Siakap  Off Jalan Muar ', ' Parit Sulong ', '83500', 'Johor ', '607 - 418 6553', NULL, NULL, NULL, NULL),
(2100, 23, 3, 'NB Level 3 Kompleks Pusat Bandar ', 'Pasir Gudang ', '81700 ', 'Johor ', ' 607 - 251 4211', NULL, NULL, NULL, NULL),
(2101, 23, 3, 'MSE ', 'Pasir Gudang', '81700 ', ' Johor', ' 607 - 251 4780', NULL, NULL, NULL, NULL),
(2102, 23, 3, 'No. 73, Jalan 9/7 Taman Air Biru ', 'Pasir Gudang ', '81700 ', 'Johor   ', '607 - 251 0964', NULL, NULL, NULL, NULL),
(2103, 23, 3, 'SH 49 Jalan Besar ', 'Pekan Nenas ', '81500 ', 'Johor', '607 - 699 3377', NULL, NULL, NULL, NULL),
(2104, 23, 3, 'No.14-G & 15-G Jalan Delima 5 Pusat Perdagangan Pontian ', 'Pontian ', '82000 ', 'Johor ', '607 - 687 6377', NULL, NULL, NULL, NULL),
(2105, 23, 3, 'Lot 155 Jalan S.M.R.K Rengit ', 'Batu Pahat ', '83100 ', 'Johor  ', '607 - 424 1781', NULL, NULL, NULL, NULL),
(2106, 23, 3, 'Tingkat Bawah & Satu No. 94 & 95, Jalan Genuang ', 'Segamat', '85000 ', ' Johor', '607 - 931 5629', NULL, NULL, NULL, NULL),
(2107, 23, 3, '1755 PTD Jalan Senai Utama 1/2 Taman Senai Utama ', 'Senai ', '81400 ', 'Johor   ', '607 - 598 8133', NULL, NULL, NULL, NULL),
(2108, 23, 3, 'Tingkat Bawah No 13, Jalan Bunga Raya Pekan Layang-Layang Baru ', 'Layang-Layang ', '81850 ', 'Johor  ', '607 - 752 7616', NULL, NULL, NULL, NULL),
(2109, 23, 3, ' No. 13 Taman Bintang Ria ', ' Simpang Renggam ', '86200', 'Johor   ', '607 - 755 6121', NULL, NULL, NULL, NULL),
(2110, 23, 3, 'No. 169 Jalan Pahlawan 1 ', 'Skudai ', '81300 ', 'Johor ', '607 - 556 1385', NULL, NULL, NULL, NULL),
(2111, 23, 3, 'No. 69 Jalan Tembaga Kuning 1 Taman Sri Skudai ', ' Skudai ', '81300', 'Johor  ', '607 - 557 7535', NULL, NULL, NULL, NULL),
(2112, 23, 3, 'No. 2, Jalan Parit Jabar ', 'Senggarang  ', '83200 ', 'Johor', ' 607 - 429 2735', NULL, NULL, NULL, NULL),
(2113, 23, 3, 'Felda Sungai Sayong', 'Senggarang ', ' 83200 ', 'Johor', '607 - 897 7850', NULL, NULL, NULL, NULL),
(2114, 23, 3, 'Tingkat Bawah Lot 217 Jalan Raya Mas ', 'Tangkak ', '84900 ', 'Johor ', '606 - 978 2224', NULL, NULL, NULL, NULL),
(2115, 23, 3, 'No. 3, Jalan Raya Taman Tiram Baru ', 'Ulu Tiram ', '81800 ', 'Johor ', '606 - 861 2273', NULL, NULL, NULL, NULL),
(2116, 23, 3, 'No. 6, Jalan Cahaya Baru Taman BCB ', 'Yong Peng ', '83700 ', 'Johor', '607 - 467 2488', NULL, NULL, NULL, NULL),
(2117, 23, 3, 'Lot 894 Jalan Dato Bandar Tunggal ', 'Seremban', '70000 ', ' Negeri Sembilan ', '06-761 2266', NULL, NULL, NULL, NULL),
(2118, 23, 3, 'No. 21 Fasa 1C Bandar Baru Ampangan Batu 2, Jalan Kuala Pilah ', 'Seremban', '70400 ', ' Negeri Sembilan   ', '06-763 1154', NULL, NULL, NULL, NULL),
(2119, 23, 3, 'Tingkat Bawah Wisma Umno No. 3 & 4, Jalan Mewah', 'Bahau ', ' 72100 ', 'Negeri Sembilan  ', '06-454 4644', NULL, NULL, NULL, NULL),
(2120, 23, 3, 'No. 38, Jalan Beringin 4 Batu Kikir ', 'Kuala Pilah ', '72200 ', 'Negeri Sembilan ', '06-498 3101', NULL, NULL, NULL, NULL),
(2121, 23, 3, 'No. 68 & 69 G  Dataran Senawang ', 'Seremban', '70450 ', ' Negeri Sembilan', '06-677 5079', NULL, NULL, NULL, NULL),
(2122, 23, 3, 'Tingkat Bawah & Satu No. 4643, Bandar Gemas ', 'Gemas ', '73400 ', 'Negeri Sembilan', '607 - 948 1316', NULL, NULL, NULL, NULL),
(2123, 23, 3, 'Tingkat Bawah Lot 3231 Taman Gemencheh Baru ', 'Gemencheh ', '73200 ', 'Negeri Sembilan', '06-431 6384', NULL, NULL, NULL, NULL),
(2124, 23, 3, 'No. 201  Jalan Simpang Pertang', 'Kuala Klawang ', ' 71600 ', 'Negeri Sembilan ', '06-613 7022', NULL, NULL, NULL, NULL),
(2125, 23, 3, 'No. 10 Jalan Angkasa Jaya Taman Bukit Pilah Perdana ', 'Kuala Pilah ', '72000 ', 'Negeri Sembilan', '06-481 4011', NULL, NULL, NULL, NULL),
(2126, 23, 3, 'Lot No. 3132 ', 'Lukut ', '71010 ', 'Negeri Sembilan ', ' 06-651 2641', NULL, NULL, NULL, NULL),
(2127, 23, 3, 'No. 47 Jalan Besar ', 'Mantin ', '71700 ', 'Negeri Sembilan   ', '06-758 1316', NULL, NULL, NULL, NULL),
(2128, 23, 3, 'Tingkat Bawah PT 5725, Jalan TS 2/1D Taman Semarak ', 'Nilai ', '71800 ', 'Negeri Sembilan   ', '06-799 1560', NULL, NULL, NULL, NULL),
(2129, 23, 3, 'No. 5 & 6  Jalan Aman Centre Point ', 'Port Dickson ', '71000 ', 'Negeri Sembilan ', ' 06-647 2766', NULL, NULL, NULL, NULL),
(2130, 23, 3, 'No. 126A, Jalan Besar ', ' Rantau ', ' 71200', 'Negeri Sembilan   ', '06-694 1070', NULL, NULL, NULL, NULL),
(2131, 23, 3, 'No. 16 & 17  Jalan Terentang ', 'Rembau ', '71300 ', 'Negeri Sembilan   ', '06-685 2230', NULL, NULL, NULL, NULL),
(2132, 23, 3, 'Tingkat Bawah PR 43, Jalan Besar Tampin ', 'Tampin ', '73000 ', 'Negeri Sembilan   ', '06-441 4230', NULL, NULL, NULL, NULL),
(2133, 23, 3, 'No. 532  Taman Tuanku Jaafar ', ' Sungai Gadut ', '71450', 'Negeri Sembilan ', '06-677 3504', NULL, NULL, NULL, NULL),
(2134, 23, 3, 'Tingkat Bawah No. 3824 Jalan RJ 6/8 Taman Rasah Jaya ', 'Seremban ', '70300 ', 'Negeri Sembilan', '06-631 6844', NULL, NULL, NULL, NULL),
(2135, 23, 3, 'No. 1179 Jalan Rasah', 'Seremban ', ' 70300 ', 'Negeri Sembilan ', '06-762 4475', NULL, NULL, NULL, NULL),
(2136, 23, 3, 'No. 7 Taman Sri Simpang Pertang Simpang Pertang ', 'Seremban ', '72300 ', 'Negeri Sembilan', '06-492 9846', NULL, NULL, NULL, NULL),
(2137, 23, 3, 'Wisma BSN Sabah Jalan Kemajuan Karamunsing ', 'Kota Kinabalu ', '88000 ', 'Sabah ', '6088 - 215 600', NULL, NULL, NULL, NULL),
(2138, 23, 3, 'Tingkat Bawah  No. 3 Blok A Alamesra Plaza Utama  Kuala Menggatal ', 'Kota Kinabalu ', '88450 ', 'Sabah  ', '6089 - 485 192', NULL, NULL, NULL, NULL),
(2139, 23, 3, 'Tingkat Bawah & Satu  Lot 15 Blok C New Beaufort Jaya', 'Beaufort ', ' 89800 ', 'Sabah    ', '6087 - 212 488', NULL, NULL, NULL, NULL),
(2140, 23, 3, 'Blok A Lot 6 Bangunan SEDCO ', 'Beluran ', '90107 ', 'Sabah  ', '6089 - 512 966', NULL, NULL, NULL, NULL),
(2141, 23, 3, 'Tingkat Bawah  No. 53, Blok H Donggongon Square ', 'Penampang ', '89507 ', 'Sabah', '6088 - 731 441', NULL, NULL, NULL, NULL),
(2142, 23, 3, 'Tingkat Bawah Bangunan Perkasa Realty Blok F, Lot 10 Jalan MDK WDT 268  ', ' Kota Kinabatangan ', '90200', 'Sabah    ', '6089 - 561 218', NULL, NULL, NULL, NULL),
(2143, 23, 3, 'Tingkat Bawah  Blok A1 Pegalan Shopping Complex Lorong Chu Sin Kee  ', 'Keningau ', '89008 ', 'Sabah   ', '6087 - 331 987', NULL, NULL, NULL, NULL),
(2144, 23, 3, 'No. 36 Taman Che Mei KM 4 Jalan Penampang ', 'Kota Kinabalu ', '89500 ', 'Sabah  ', '6088 - 224 272', NULL, NULL, NULL, NULL),
(2145, 23, 3, 'Tingkat Bawah & Satu Lot 104 Jalan Gaya', 'Kota Kinabalu ', ' 88000 ', 'Sabah', '6088 - 240 501', NULL, NULL, NULL, NULL),
(2146, 23, 3, 'Tingkat Bawah Lot 1, Blok H KK Taipan Inanam New Township ', 'Kota Kinabalu', '88450 ', ' Sabah', ' 6088 - 422 203', NULL, NULL, NULL, NULL),
(2147, 23, 3, 'Tingkat Bawah No. 1 Yick Ming Commercial Centre ', 'Kota Belud ', '89157 ', 'Sabah ', '6088 - 977 203', NULL, NULL, NULL, NULL),
(2148, 23, 3, 'Tingkat Bawah & Satu  Lot 5 & 6 Shophouse Development Kampung Kampak', 'Kota Marudu', ' 89107 ', ' Sabah   ', '6088 - 661 294', NULL, NULL, NULL, NULL),
(2149, 23, 3, 'Lot No. 1 Blok E Sedco Complex ', 'Kudat ', '89050 ', 'Sabah ', '6088 - 612 334', NULL, NULL, NULL, NULL),
(2150, 23, 3, 'Lot 18  Kunak New Township ', 'Kunak ', '91200 ', 'Sabah   ', ' 6089 - 851 368', NULL, NULL, NULL, NULL),
(2151, 23, 3, 'Tingakt Bawah  No.11 Metro Shopping Complex ', 'Lahad Datu ', '91100 ', 'Sabah   ', '6089 - 884 088', NULL, NULL, NULL, NULL),
(2152, 23, 3, 'Lot 42 Membakut Jaya  ', ' Membakut ', '89727', 'Sabah    ', '6087 - 887 863', NULL, NULL, NULL, NULL),
(2153, 23, 3, 'Lot 5 Papar Commercial Centre Phase 2  ', 'Papar ', '89607 ', 'Sabah', ' 6088 - 913 421', NULL, NULL, NULL, NULL),
(2154, 23, 3, 'Blok A  No. 3 Putatan Baru ', 'Putatan ', '88100 ', 'Sabah   ', '6088 - 763 331', NULL, NULL, NULL, NULL),
(2155, 23, 3, 'Tingkat Bawah  Lot 1 Blok I Kompleks Sedco  ', 'Ranau', '89307 ', ' Sabah  ', ' 6088 - 876 430', NULL, NULL, NULL, NULL),
(2156, 23, 3, 'Lot 2, Blok 3  Bandar Indah Batu 4 Jalan Utara ', 'Sandakan ', '90000 ', 'Sabah', ' 6089 - 236 103', NULL, NULL, NULL, NULL),
(2157, 23, 3, 'Tl 706 Block XXXIV  Third Avenue ', 'Sandakan ', '90000 ', 'Sabah ', '6089 - 216 515', NULL, NULL, NULL, NULL),
(2158, 23, 3, 'Tingkat Bawah & Satu  Lot No. 1, Jalan Hospital Off Jalan Bubul  Bandar Baru Semporna', 'Semporna ', ' 91307 ', 'Sabah    ', '6089 - 784 054', NULL, NULL, NULL, NULL),
(2159, 23, 3, 'Lot No. 5 Jalan Balai  ', 'Sipitang', '89850 ', ' Sabah', '6087 - 821 743', NULL, NULL, NULL, NULL),
(2160, 23, 3, 'Tingkat Bawah Bahagian 10, Jalan Padang ', 'Tamparuli ', '89257 ', 'Sabah   ', '6088 - 782 571', NULL, NULL, NULL, NULL),
(2161, 23, 3, 'Lot 3, Jalan Hon ', ' Tuaran ', '89200', 'Sabah', '6088 - 788 959', NULL, NULL, NULL, NULL),
(2162, 23, 3, 'Lot TL 83  Pekan Tenom ', 'Tenom ', '89900 ', 'Sabah    ', '6087 - 735 354', NULL, NULL, NULL, NULL),
(2163, 23, 3, 'Lot No 7  Blok C Telupid ', 'Telupid ', '89300 ', 'Sabah    ', ' 6089 - 521 120', NULL, NULL, NULL, NULL),
(2164, 23, 3, 'Tingkat Bawah & 1  Lot 24 & 25, Lorong Sabindo Square Sabindo Square ', 'Tawau', '91000 ', ' Sabah  ', ' 6089 - 763 947', NULL, NULL, NULL, NULL),
(2165, 23, 3, 'Bangunan Hj A Rasit  Lot 173-175  Jalan Muda Hashim ', 'Kuching ', '93400 ', 'Sarawak  ', '6082 - 244 749', NULL, NULL, NULL, NULL),
(2166, 23, 3, 'No. 30 Lot 363  ', 'Bau ', '94000 ', 'Sarawak    ', '6082 - 763 980', NULL, NULL, NULL, NULL),
(2167, 23, 3, 'Lot 232, Belaga Bazaar ', 'Belaga', '93000 ', ' Sarawak   ', '6086 - 461 037', NULL, NULL, NULL, NULL),
(2168, 23, 3, 'Tingkat Bawah Sublot 15 Lot 1924 Blok 9 Batu Api Land District ', 'Betong ', '95700 ', 'Sarawak  ', '6083 - 472 480', NULL, NULL, NULL, NULL),
(2169, 23, 3, 'No. 28 Wharf Road  Bintangor ', 'Sarawak    ', '96500 ', 'Sarawak    ', '6084 - 692 264', NULL, NULL, NULL, NULL),
(2170, 23, 3, 'No. 27 Jalan Sommerville ', ' Bintulu ', '97000', 'Sarawak    ', '6086 - 336 582', NULL, NULL, NULL, NULL),
(2171, 23, 3, 'Lot 224  Fort Emma Commercial Centre Jalan Cinema  ', 'Kanowit ', '96700 ', 'Sarawak  ', '6084 - 752 758', NULL, NULL, NULL, NULL),
(2172, 23, 3, 'No. 29 New Bazaar ', 'Kapit ', '96800 ', 'Sarawak   ', '6084 - 797 373', NULL, NULL, NULL, NULL),
(2173, 23, 3, 'Lot.1938 & 1939 Blok 233  Kuching North Land District Cinmuk Commercial Centre Kota Sentosa  Batu 7 Jalan Penrissen ', 'Kuching', '93250 ', ' Sarawak  ', '6082 - 625 068', NULL, NULL, NULL, NULL),
(2174, 23, 3, 'Wisma Empire  Lot 200 Section 24 KTLD Jalan Khoo Hun Yeang  ', 'Kuching ', '93000 ', 'Sarawak    ', '6082 - 420 852', NULL, NULL, NULL, NULL),
(2175, 23, 3, 'No. 325  Chan Bee Kiew Building Jalan Padungan ', ' Kuching', ' 93100', ' Sarawak   ', '6082 - 330 675', NULL, NULL, NULL, NULL),
(2176, 23, 3, 'No. 26 Siburan Bazaar  17th Mile Jalan Kuching - Serian ', 'Kuching ', '94200 ', 'Sarawak  ', '6082 - 863 699', NULL, NULL, NULL, NULL),
(2177, 23, 3, 'Tingkat Bawah No.53, Jalan Tun Jugah ', 'Kuching ', '93250 ', 'Sarawak    ', '6082 - 428 706', NULL, NULL, NULL, NULL),
(2178, 23, 3, 'Tingkat Bawah  No. 902 Tabuan Jaya Shopping Centre Tabuan Jaya ', ' Kuching ', '93350', 'Sarawak  ', '6082 - 369 987', NULL, NULL, NULL, NULL),
(2179, 23, 3, 'Tingkat Bawah  Lot 318, Lawas Town District Jalan Sloating Trusan ', 'Lawas ', '98850 ', 'Sarawak    ', '6085 - 285 990', NULL, NULL, NULL, NULL),
(2180, 23, 3, 'Tingkat Bawah Lot 34, Sungai Kudong Shophouse Jalan Buangsiol ', ' Limbang', '98700', ' Sarawak    ', ' 6085 - 213 634', NULL, NULL, NULL, NULL),
(2181, 23, 3, 'No. 946 Lot 87  Marudi Town District ', 'Baram', '98050 ', ' Sarawak    ', ' 6085 - 756 242', NULL, NULL, NULL, NULL),
(2182, 23, 3, 'Lot 1145 & 1146  Miri Waterfront Jalan Sri Dagang ', ' Miri ', '98000', 'Sarawak  ', '6085 - 415 126', NULL, NULL, NULL, NULL),
(2183, 23, 3, 'Tingkat Bawah  Blok 52 Lot 163', 'Mukah', ' 96400 ', ' Sarawak', '6084 - 872 446', NULL, NULL, NULL, NULL),
(2184, 23, 3, 'Tingkat Bawah  Lot No. 5, Jalan Astana Petra Jaya  ', 'Kuching ', '93050 ', 'Sarawak   ', '6082 - 443 498', NULL, NULL, NULL, NULL),
(2185, 23, 3, 'Lot 544  Saratok Town District ', ' Saratok', '95400', ' Sarawak   ', '6083 - 436 843', NULL, NULL, NULL, NULL),
(2186, 23, 3, 'No. 2 Sublot 2143-2144  Blok 36 Jalan Barrack  ', 'Sarikei ', '96100 ', 'Sarawak', '6084 - 654 352', NULL, NULL, NULL, NULL),
(2187, 23, 3, 'Ground Floor Sub Lot 10 & 11 Lot 373, Serian Town', 'Serian ', ' 94700 ', 'Sarawak   ', '6082 - 874 008', NULL, NULL, NULL, NULL),
(2188, 23, 3, 'No. 3 Lot 835  Jalan Sabu ', 'Sri Aman', '95000 ', ' Sarawak', '6083 - 320 920', NULL, NULL, NULL, NULL),
(2189, 23, 3, 'No. 38 New Commercial Centre Song ', ' Song ', '96850', 'Sarawak', '6084 - 777 623', NULL, NULL, NULL, NULL),
(2190, 23, 3, 'Tingkat Bawah & Tiga No. 173B Lot 809  Jalan Kampung Nyabor', 'Sibu ', ' 96000 ', 'Sarawak   ', '6084 - 318 851', NULL, NULL, NULL, NULL),
(2191, 23, 3, 'No. 7 & 9 Station Bas Ekspress Jalan Bukit Lagi ', 'Kangar', '01000 ', ' Perlis', '04-976 3377', NULL, NULL, NULL, NULL),
(2192, 23, 3, 'No. 17-A Jalan Dua Kompleks Tok Arau Jalan Arau Kodiang ', 'Arau ', '02600 ', 'Perlis ', '04-986 2181', NULL, NULL, NULL, NULL),
(2193, 23, 3, 'No. 17  Persiaran Putra Timur 1 ', 'Kuala Perlis ', '02000 ', 'Perlis ', '04-985 5212', NULL, NULL, NULL, NULL),
(2194, 23, 3, 'No. 11 Jalan Dato Ahmad Musa Simpang 4', ' Perlis  ', ' 02700', ' Perlis  ', '04-980 7758', NULL, NULL, NULL, NULL),
(2195, 23, 3, 'No. 214, Taman Delima Jalan Dato Kumbar ', 'Alor Setar', '05300 ', ' Kedah   ', '04-733 1580', NULL, NULL, NULL, NULL),
(2196, 23, 3, '1258, Jalan Sultan Badlishah ', ' Alor Setar ', '05700', 'Kedah ', '04-733 5562', NULL, NULL, NULL, NULL),
(2197, 23, 3, 'No. 54 Pusat Perniagaan Kota Jaya Kota Sarang Semut ', 'Alor Setar ', '06800 ', 'Kedah   ', '04-769 5244', NULL, NULL, NULL, NULL),
(2198, 23, 3, 'No. 3, Taman Kelisa Pekan Air Hitam ', 'Alor Setar ', '06150 ', 'Kedah   ', '04-794 9143', NULL, NULL, NULL, NULL),
(2199, 23, 3, 'No. 6, Taman Simpang Jaya Simpang Empat ', ' Alor Setar ', '06650', 'Kedah  ', '04-764 1955', NULL, NULL, NULL, NULL),
(2200, 11, 3, 'Lot 5005, Taman PKNK Jalan Tun Abdul Razak ', 'Alor Setar', '05200 ', ' Kedah   ', '04-732 6443', NULL, NULL, NULL, NULL),
(2201, 23, 3, 'No. 1412 Taman Sultan Badlishah Jalan Pegawai ', ' Alor Setar ', '05050', 'Kedah  ', '04-772 0855', NULL, NULL, NULL, NULL),
(2202, 23, 3, 'No. 72, Jalan Badlishah ', 'Baling', '09000 ', ' Kedah   ', ' 04-470 1003', NULL, NULL, NULL, NULL),
(2203, 23, 3, 'No. 8B, Bangunan MDKT ', 'Bedong ', '08100 ', 'Kedah ', '04-458 2292', NULL, NULL, NULL, NULL),
(2204, 23, 3, 'No. 1, Pekan Baru ', 'Changlun ', '06010 ', 'Kedah', ' 04-924 1473', NULL, NULL, NULL, NULL),
(2205, 23, 3, 'Tingkat Bawah  Lot 67C, Jalan Raya ', 'Gurun', '08300 ', ' Kedah', '04-468 7421', NULL, NULL, NULL, NULL),
(2206, 23, 3, 'No. 47 & 48 Kompleks Jitra', 'Jitra ', ' 06000 ', 'Kedah', '04-917 0217', NULL, NULL, NULL, NULL),
(2207, 23, 3, 'No 132 & 134 PSRN Bunga Raya Langkawi The Mall', 'Kuah Langkawi,', ' 07000 ', ' Kedah   ', '04-966 7407', NULL, NULL, NULL, NULL),
(2208, 23, 3, 'Lot 1264 Taman Kuala Kedah ', 'Kuala Kedah', '06600 ', ' Kedah   ', '04-762 1132', NULL, NULL, NULL, NULL),
(2209, 23, 3, ' No. 21B Taman Haji Muslim Mukim Tawar ', 'Kuala Ketil ', '09300 ', 'Kedah   ', '04-416 3463', NULL, NULL, NULL, NULL),
(2210, 23, 3, ' 6B, Pekan Kuala Nerang', 'Kuala Nerang ', ' 06300 ', 'Kedah  ', '04-786 6679', NULL, NULL, NULL, NULL),
(2211, 23, 3, 'Tingkat Bawah  No. 39A, Jalan Sekolah Kulim ', ' Kedah   ', '09000', ' Kedah    ', '04-490 4325', NULL, NULL, NULL, NULL),
(2212, 23, 3, 'No. 24A Taman Lembah Bujang Indah ', 'Merbok ', '08400 ', 'Kedah  ', '04-457 4199', NULL, NULL, NULL, NULL),
(2213, 23, 3, 'No. 33  Seberang Jalan Putra Mergong ', 'Alor Setar', '05150 ', ' Kedah   ', '04-731 4511', NULL, NULL, NULL, NULL),
(2214, 23, 3, 'No. 1 Jalan Damai 2  Taman Damai', 'Padang Serai ', ' 09400 ', 'Kedah    ', '04-485 5514', NULL, NULL, NULL, NULL),
(2215, 23, 3, 'No. 20 & 23 Kompleks Teratai Jalan Pendang Kota Sarang Semut ', 'Pendang ', '06700 ', 'Kedah   ', '04-759 6390', NULL, NULL, NULL, NULL),
(2216, 23, 3, 'No. 188  Taman Angsana ', 'Pokok Sena ', '06400 ', 'Kedah    ', '04-782 1508', NULL, NULL, NULL, NULL),
(2217, 23, 3, 'No. 439, Tingkat Bawah Bangunan Sykt Bekerjasama Serbaguna ', ' Sik ', '08200', 'Kedah  ', '04-469 5189', NULL, NULL, NULL, NULL),
(2218, 23, 3, 'No. 14 & 15 Lengkok Cempaka 1 Persiaran Cempaka ', 'Sungai Petani', '08000 ', ' Kedah    ', '04-441 9428', NULL, NULL, NULL, NULL),
(2219, 23, 3, ' Lot 124 MK Sungai Pasir Daerah Kuala Muda Bakar Arang', 'Sungai Petani ', ' 08000 ', 'Kedah   ', '04-421 4221', NULL, NULL, NULL, NULL),
(2220, 23, 3, 'No. 1 & 2 Bangunan Majlis Daerah Yan ', 'Yan ', '06900 ', 'Kedah ', '04-465 5746', NULL, NULL, NULL, NULL),
(2221, 23, 3, 'Ruang Niaga  The Mall Shopping Center Universiti Utara Malaysia (UUM)', 'Sintok ', ' 06010 ', 'Kedah ', '04-924 1164', NULL, NULL, NULL, NULL),
(2222, 23, 3, 'No. 124B Pekan Tikam Batu Tikam Batu ', 'Sungai Petani', '08600 ', ' Kedah   ', '04-438 8303', NULL, NULL, NULL, NULL),
(2223, 23, 3, ' Tingkat Bawah No. 10 PT 8 Kompleks Sri Temin Jalan Tunku Ibrahim', 'Sungai Petani ', ' 08000 ', 'Kedah  ', '04-421 9885', NULL, NULL, NULL, NULL),
(2224, 23, 3, ' Jalan Panglima Bukit Gantang Wahab ', ' Ipoh', '30000', ' Perak ', ' 05-241 4400', NULL, NULL, NULL, NULL),
(2225, 23, 3, ' No 263, Jalan Besar', 'Ayer Tawar ', ' 32400 ', 'Perak  ', '05-672 2411', NULL, NULL, NULL, NULL),
(2226, 23, 3, 'Bangunan Pertubuhan Peladang Lot 1873, Simpang 3 Jalan Rangkop Selekoh ', 'Bagan Datoh ', '36200 ', 'Perak   ', '05-646 8096', NULL, NULL, NULL, NULL),
(2227, 23, 3, 'No. 120, Jalan Setia Pusat Bandar', 'Bagan Serai ', ' 34300 ', 'Perak  ', '05-721 8073', NULL, NULL, NULL, NULL),
(2228, 23, 3, ' No. 30, Jalan 1 Taman Iskandar Bistari', 'Bandar Sri Iskandar ', ' 32610 ', 'Perak    ', '05-371 4013', NULL, NULL, NULL, NULL),
(2229, 23, 3, 'No. 55, Jalan Besar ', 'Bruas ', '32700 ', 'Perak ', '05-674 9860', NULL, NULL, NULL, NULL),
(2230, 23, 3, 'No. 22, Jalan Bruseh ', 'Bidor ', '33500 ', 'Perak', '05-4343 533', NULL, NULL, NULL, NULL),
(2231, 23, 3, '194, Jalan Bercham Taman Ria', ' Ipoh ', ' 31400', 'Perak', ' 05-549 6562', NULL, NULL, NULL, NULL),
(2232, 23, 3, ' Tingkat Bawah Lot 140A, Bangunan UMNO ', ' Batu Kurau ', '34500', 'Perak  ', '05-888 0135', NULL, NULL, NULL, NULL),
(2233, 23, 3, 'Blok A, Tingkat Bawah Bangunan Tabung Haji Jalan Pejabat Pos ', 'Batu Gajah', '31000 ', ' Perak ', '05-366 4579', NULL, NULL, NULL, NULL),
(2234, 23, 3, ' No. 12, Jalan Changkat Maju ', ' Changkat Jering ', '34850', 'Perak  ', '05-855 1582', NULL, NULL, NULL, NULL),
(2235, 23, 3, 'Tingkat Bawah  No. 26, Laluan Chemor Sinaran Desa Chemor Sinaran ', 'Chemor ', '32000 ', 'Perak', ' 05-201 1660', NULL, NULL, NULL, NULL),
(2236, 23, 3, 'No. 78, High Street ', 'Gopeng', '31600 ', ' Perak   ', '05-359 3455', NULL, NULL, NULL, NULL),
(2237, 23, 3, 'Tingkat Bawah No. 315, Bangunan Ali Ahmad Jalan Iskandar', 'Grik ', ' 33300 ', 'Perak  ', '05-791 1742', NULL, NULL, NULL, NULL),
(2238, 23, 3, 'No. 16 Jalan Hutan Melintang Taman Desa Bersatu ', 'Hutan Melintang ', '36400 ', 'Perak   ', '05-641 2553', NULL, NULL, NULL, NULL),
(2239, 23, 3, 'No. 29, Jalan Idris ', ' Kampar', '31900', ' Perak  ', '05-466 4953', NULL, NULL, NULL, NULL),
(2240, 23, 3, 'Wisma Maju UMNO Jalan Sultan Idris Shah ', 'Ipoh ', '30000 ', 'Perak    ', ' 05-243 1455', NULL, NULL, NULL, NULL),
(2241, 23, 3, 'No. 775, Jalan Tasik Medan Tasik ', ' Ipoh ', '31400', ' Perak  ', '05-547 2499', NULL, NULL, NULL, NULL),
(2242, 23, 3, ' Tingkat Bawah  No. 4, Jalan Lapangan Terbang Jalan Pasir Putih Off Jalan Gopeng', ' Ipoh ', ' 31350', 'Perak', '05-312 7317', NULL, NULL, NULL, NULL),
(2243, 23, 3, ' No. 48, Jalan Pesara 1 Ipoh Garden ', ' Ipoh', '31400', ' Perak   ', '05-547 2922', NULL, NULL, NULL, NULL),
(2244, 23, 3, 'No 11, Bangunan PKNP ', 'Kampung Gajah ', '36800 ', 'Perak', '05-631 1960', NULL, NULL, NULL, NULL),
(2245, 23, 3, 'No. 11 & 13  Jalan Medan Saujana 1 Medan Saujana ', 'Kamunting ', '34600 ', 'Perak', '05-807 7399', NULL, NULL, NULL, NULL),
(2246, 23, 3, 'Lot 89-90, Jalan Kuala', 'Kuala Kangsar ', ' 33000 ', 'Perak  ', ' 05-776 4518', NULL, NULL, NULL, NULL),
(2247, 23, 3, 'No. 53, Jalan Besar ', ' Kuala Kurau ', '34350', 'Perak   ', '05-727 7955', NULL, NULL, NULL, NULL),
(2248, 23, 3, ' PT 2669, Taman Baru Jalan Kampar ', 'Langkap', '36700 ', ' Perak  ', '05-659 1886', NULL, NULL, NULL, NULL),
(2249, 23, 3, 'No. 28, Taman Pantai Remis Jalan Sungai Batu ', 'Pantai Remis ', '34900 ', 'Perak', '05-677 1262', NULL, NULL, NULL, NULL),
(2250, 23, 3, 'No. 8 Jalan Besar Menglembu ', 'Menglembu ', '31450 ', 'Perak  ', '05-281 2068', NULL, NULL, NULL, NULL),
(2251, 23, 3, ' No. 4, Kedai MDKK Jalan Besar Manong ', 'Kuala Kangsar ', '33800 ', 'Perak ', '05-743 1272', NULL, NULL, NULL, NULL),
(2252, 23, 3, 'Lot 4160 & 4161 Jalan Sultan Idrus Shah ', ' Lumut ', '32200', 'Perak   ', '05-683 5601', NULL, NULL, NULL, NULL),
(2253, 23, 3, ' Lot 191, Jalan Alang Iskandar', 'Lenggong', ' 33400 ', ' Perak ', '05-767 7977', NULL, NULL, NULL, NULL),
(2254, 23, 3, 'Tingkat Bawah & 1 No 5A, Jalan Dua Taman Parit Wira Jalan Belanja', ' Parit ', ' 32800', 'Perak   ', '05-377 1972', NULL, NULL, NULL, NULL),
(2255, 23, 3, ' No. 11 & 12  Jalan Shah Bandar ', ' Parit Buntar ', '34200', 'Perak  ', '05-716 4521', NULL, NULL, NULL, NULL),
(2256, 23, 3, ' Lot 1 & 2  Bangunan Pusat Membeli Belah ', 'Pasir Puteh ', '16800 ', 'Kelantan ', '609 - 786 7699', NULL, NULL, NULL, NULL),
(2257, 23, 3, ' No. 30, Jalan Batu Gajah ', 'Pusing', '31550 ', ' Perak', '05-288 1252', NULL, NULL, NULL, NULL),
(2258, 23, 3, ' Lot 387 & 388 Jalan Besar ', 'Selama ', '35000 ', 'Perak   ', '05-839 4033', NULL, NULL, NULL, NULL),
(2259, 23, 3, 'Lot 121 &123; Jalan Barrack ', ' Taiping ', '34000', 'Perak', '05-808 3337', NULL, NULL, NULL, NULL),
(2260, 23, 3, 'No. 8, Taman Orkid Raya ', 'Sungkai ', '35600 ', 'Perak    ', ' 05-438 7045', NULL, NULL, NULL, NULL),
(2261, 23, 3, ' No. 7140, Jalan Besar ', ' Sungai Siput', '31100', ' Perak ', '05-598 3822', NULL, NULL, NULL, NULL),
(2262, 23, 3, 'Tingkat Bawah No. 28, Jalan Stesen ', 'Slim River', '35800 ', ' Perak ', '05-452 8911', NULL, NULL, NULL, NULL),
(2263, 23, 3, 'No. 139 & 140 Jalan Lumut ', 'Sitiawan ', '32000 ', 'Perak', '05-691 4880', NULL, NULL, NULL, NULL),
(2264, 23, 3, 'Tingkat Bawah & Tingkat 1 No 26, Jalan Bunga Angerik ', 'Tanjung Malim ', '55900 ', 'Perak    ', '05-495 6390', NULL, NULL, NULL, NULL),
(2265, 23, 3, 'No. 20, Jalan Piandang 1 Taman Piandang Indah', 'Tanjung Piandang', ' 34250 ', ' Perak   ', ' 05-725 5405', NULL, NULL, NULL, NULL),
(2266, 23, 3, ' No. 59, Jalan Coufield Tanjung Rambutan', 'Ipoh', ' 30000 ', ' Perak   ', ' 05-533 2848', NULL, NULL, NULL, NULL),
(2267, 23, 3, ' Tingkat Bawah Lot A-2 & A-3 Bangunan Aik-Aik Jalan Mahkota ', ' Teluk Intan ', '36000', 'Perak  ', '05-621 2441', NULL, NULL, NULL, NULL),
(2268, 23, 3, ' No. 22, Jalan Raja ', 'Tapah ', '35000 ', 'Perak  ', '05-461 3042', NULL, NULL, NULL, NULL),
(2269, 23, 3, ' No.13, Jalan Macalister Georgetown ', ' Pulau Pinang ', '10400', ' Pulau Pinang   ', '04-222 6400', NULL, NULL, NULL, NULL),
(2270, 23, 3, 'No. 7167 & 7168 Jalan Bagan Ajam ', ' Butterworth ', '13000', 'Pulau Pinang    ', '04-331 8653', NULL, NULL, NULL, NULL),
(2271, 23, 3, ' No. 42, Jalan Besar Balik Pulau ', 'Pulau Pinang     ', '11000 ', 'Pulau Pinang     ', '04-866 9976', NULL, NULL, NULL, NULL),
(2272, 23, 3, ' 0. 35 A Lintang Angsana Bandar Baru Air Itam', 'Pulau Pinang  ', ' 11500 ', 'Pulau Pinang', '04-829 8621', NULL, NULL, NULL, NULL),
(2273, 23, 3, ' 86 Rumah Pangsa Batu Lanchang ', ' Pulau Pinang  ', '11600', ' Pulau Pinang   ', '04-282 6378', NULL, NULL, NULL, NULL),
(2274, 23, 3, ' No. 65 & 67 Jalan Persiaran Mahsuri 1-3 Bayan Baru ', 'Pulau Pinang   ', '11950 ', 'Pulau Pinang    ', '04-644 3310', NULL, NULL, NULL, NULL),
(2275, 23, 3, 'No. 32 Jalan Sungai Tiram 3 Taman Tunas Damai Bayan Lepas ', ' Pulau Pinang  ', '11900', ' Pulau Pinang   ', '04-641 1611', NULL, NULL, NULL, NULL),
(2276, 23, 3, 'No. 36, Jalan Perda Barat Bukit Mertajam ', 'Pulau Pinang    ', '14000 ', 'Pulau Pinang', '04-538 0040', NULL, NULL, NULL, NULL),
(2277, 23, 3, 'No. 47, Jalan Aston', 'Bukit Mertajam ', ' 14000 ', 'Pulau Pinang    ', '04-538 3467', NULL, NULL, NULL, NULL),
(2278, 23, 3, ' Lot No. 2478 Jalan Sultan Azlan Shah Gelugor ', 'Pulau Pinang   ', '11700 ', 'Pulau Pinang    ', ' 04-657 6002', NULL, NULL, NULL, NULL),
(2279, 23, 3, ' 4111, Jalan Bagan Luar ', 'Butterworth ', '12000 l: ', 'Pulau Pinang ', '04-332 3986', NULL, NULL, NULL, NULL),
(2280, 23, 3, ' No. 15 & 17 Lorong Bertam Indah 49 Kepala Batas ', ' Pulau Pinang   ', '13200', ' Pulau Pinang ', '04-575 4030', NULL, NULL, NULL, NULL),
(2281, 23, 3, '   No. 61 - 63 Lebuh Bishop ', 'Pulau Pinang    ', '10200 ', 'Pulau Pinang  ', '04-263 0703', NULL, NULL, NULL, NULL),
(2282, 23, 3, 'No. 1336 Jalan Atas', 'Nibong Tebal ', ' 14300 ', 'Pulau Pinang   ', ' 04-593 3640', NULL, NULL, NULL, NULL),
(2283, 23, 3, ' Tingkat Bawah  Lot No. 271 Jalan Burma  Pulau Tikus ', ' Pulau Pinang    ', '10350', ' Pulau Pinang   ', '04-226 1404', NULL, NULL, NULL, NULL),
(2284, 23, 3, ' No. 6 Blok B 2 Jalan Todak 2 Pusat Bandar Seberang Jaya ', 'Pulau Pinang   ', '13700 ', 'Pulau Pinang   ', ' 04-397 5875', NULL, NULL, NULL, NULL),
(2285, 23, 3, 'Lot No. 20-G Jalan Gemilang Indah 1 Taman Gemilang Indah ', 'Sungai Bakap ', '14200 ', 'Pulau Pinang    ', ' 04-582 1939', NULL, NULL, NULL, NULL),
(2286, 23, 3, '12A Pusat Niaga Sungai Dua ', 'Butterworth ', '13800 ', 'Pulau Pinang   ', '04-356 1962', NULL, NULL, NULL, NULL),
(2287, 23, 3, 'No. 753  Jalan Sultan Azlan Shah Sungai Nibong ', 'Bayan Lepas ', '11900 ', 'Pulau Pinang    ', '04-643 6600', NULL, NULL, NULL, NULL),
(2288, 23, 3, ' No. 1316, Jalan Baru Taman Chai Leng  ', ' Perai ', '13700', 'Pulau Pinang   ', '04-390 8998', NULL, NULL, NULL, NULL),
(2289, 23, 3, ' No. 73F Jalan Terengganu Taman Free School', 'Pulau Pinang  ', ' 10460 ', 'Pulau Pinang   ', '04-281 1626', NULL, NULL, NULL, NULL),
(2290, 23, 3, '98-G-22 Prima Tanjung Jalan Fettes Tanjung Tokong ', ' Pulau Pinang   ', '10470', ' Pulau Pinang    ', ' 04-890 3402', NULL, NULL, NULL, NULL),
(2291, 23, 3, ' No. 2441 Jalan Besar', 'Tasek Gelugor  ', ' 13300 ', 'Pulau Pinang', '04-573 1929', NULL, NULL, NULL, NULL),
(2292, 23, 3, ' Pusat Mahasiswa USM Minden', 'Pulau Pinang ', ' 11800 ', 'Pulau Pinang ', '04-657 1712', NULL, NULL, NULL, NULL),
(2293, 23, 3, ' Lot 46, Jalan Bank', 'Kuantan ', ' 25050 ', 'Pahang  ', '09-515 6500', NULL, NULL, NULL, NULL),
(2294, 23, 3, ' Jalan Persiaran Sultan Abu Bakar ', ' Indera Mahkota', '25200', ' Pahang    ', '09-573 7701', NULL, NULL, NULL, NULL),
(2295, 23, 3, 'No. 11 Bangunan LKNP ', ' Benta ', '27300', 'Pahang    ', '09-323 8134', NULL, NULL, NULL, NULL),
(2296, 23, 3, 'No. 119 & 120 Jalan Loke Yew ', ' Bentong ', '28700', 'Pahang   ', '09-222 4833', NULL, NULL, NULL, NULL),
(2297, 23, 3, 'No. 5, Bangunan LKNP Jalan Besar ', 'Tanah Rata', '39000 ', ' Pahang   ', '05-491 1853', NULL, NULL, NULL, NULL),
(2298, 23, 3, ' Tingkat Bawah  B18 & B20 Lorong Jaya Gading 30 Bandar Baru Jaya Gading ', 'Pahang    ', '26070 ', 'Pahang    ', '09-538 4233', NULL, NULL, NULL, NULL),
(2299, 23, 3, 'No. 86 & 87 Nadi Kota ', 'Bandar Pusat Jengka ', '26400 ', 'Pahang    ', ' 09-466 2558', NULL, NULL, NULL, NULL),
(2300, 23, 3, ' Tingkat Bawah  Lot 20 & 21 Bandar Indera Putra', 'Jerantut ', ' 27000 ', 'Pahang   ', '09-266 9830', NULL, NULL, NULL, NULL),
(2301, 23, 3, ' Tingkat Bawah Bangunan Umno No. 647A, Jalan Besar ', ' Karak ', '28600', 'Pahang   ', ' 09-231 2200', NULL, NULL, NULL, NULL),
(2302, 23, 3, ' No. 30 Jalan 2/21 Bandar Baru Kuala Lipis ', 'Kuala Lipis ', '27200 ', 'Pahang   ', '09-312 6990', NULL, NULL, NULL, NULL),
(2303, 23, 3, ' No. 10B, Jalan Rompin Jaya Taman Rompin Jaya Fasa 2 ', ' Bandar Baru Kuala Rompin ', '26800', 'Pahang   ', '09-414 5025', NULL, NULL, NULL, NULL),
(2304, 23, 3, ' Tingkat Bawah B-1837, Jalan Berserah', 'Kuantan ', ' 25300 ', 'Pahang  ', ' 09-566 5579', NULL, NULL, NULL, NULL),
(2305, 23, 3, ' G-18 Kuantan Parade  Shopping Centre ', ' Kuantan', '25000', ' Pahang', '09-514 2532', NULL, NULL, NULL, NULL),
(2306, 23, 3, ' No. 54, Bangunan LKNP', ' Bandar Baru Maran', ' 26500', 'Pahang  ', '09-477 1871', NULL, NULL, NULL, NULL),
(2307, 23, 3, ' No. 66, Jalan Temerloh', 'Mentakab', ' 28400 ', ' Pahang    ', '09-277 3515', NULL, NULL, NULL, NULL),
(2308, 23, 3, ' Tingkat Bawah  Lot 117 Jalan Masjid Muadzam Shah ', 'Muadzam Shah ', '26700 ', 'Pahang    ', ' 09-452 2137', NULL, NULL, NULL, NULL),
(2309, 23, 3, ' No. 50, Jalan Dagangan 7 Pusat Dagangan Triang ', 'Triang ', '28300 ', 'Pahang   ', '09-255 8054', NULL, NULL, NULL, NULL),
(2310, 23, 3, ' No. 75 & 76 Jalan Ahmad Shah 1 Lurah ', 'Temerloh ', ' 28000 ', 'Pahang    ', '09-296 5400', NULL, NULL, NULL, NULL),
(2311, 23, 3, ' No. 11 & 12  Bandar Raub Perdana ', 'Raub ', '27600 ', 'Pahang   ', '09-355 3833', NULL, NULL, NULL, NULL),
(2312, 23, 3, 'Kampung Tekek  Pulau Tioman ', 'Kuala Rompin', '26800 ', ' Pahang   ', '09-419 1014', NULL, NULL, NULL, NULL),
(2314, 23, 3, ' Tingkat Bawah  Bangunan Umno Jalan Tang Quee ', 'Pekan ', '26600 ', 'Pahang ', ' 09-422 4272', NULL, NULL, NULL, NULL),
(2315, 23, 3, ' Lot 61-63 & 80-82 Jalan Pintu Pong ', 'Kota Bharu ', '15710 ', 'Kelantan', '09-748 4466', NULL, NULL, NULL, NULL),
(2316, 23, 3, ' Lot PT 7806 Jalan Persiaran Raya ', 'Gua Musang ', '18300 ', 'Kelantan   ', ' 09-912 2560', NULL, NULL, NULL, NULL),
(2317, 23, 3, ' No. 5169 M  Jalan Kuala Krai ', 'Kota Bharu ', '15150 ', 'Kelantan   ', '09-744 1311', NULL, NULL, NULL, NULL),
(2318, 23, 3, 'Komp. Niaga Luth  Jalan Dato Pati', 'Kota Bharu    ', '  15000 ', 'Kelantan', '09-744 9433', NULL, NULL, NULL, NULL),
(2319, 23, 3, ' Bharu Lot B031 & B032 Kompleks Terminal Agribisnes Negara (Teman) Lot 3309, Batu 4 Lebuhraya Pasir Mas - Salor ', 'Kota Bharu ', ' 15150 ', 'Kelantan  ', ' 09-743 1057', NULL, NULL, NULL, NULL),
(2320, 23, 3, 'Lot 1714  Jalan Raja Perempuan Zainab 2 Kubang Kerian ', ' Kota Bharu', '16150', ' Kelantan  ', '09-764 9155', NULL, NULL, NULL, NULL),
(2321, 23, 3, ' Lot 1525  Jalan Tengku Zainal Abidin ', ' Kuala Krai ', '18000', 'Kelantan  ', '09-966 5001', NULL, NULL, NULL, NULL),
(2322, 23, 3, ' PT 5073  Wisma Saidina Haji Ali Jalan Kuala Krai - Kok Lanas  ', 'Kota Bharu ', '16450 ', 'Kelantan  ', '09-788 6396', NULL, NULL, NULL, NULL),
(2323, 23, 3, 'Tingakt Bawah & Satu Lot 2010 Bandar Jeli ', ' Jeli ', '17600', 'Kelantan ', '09-944 0241', NULL, NULL, NULL, NULL),
(2324, 23, 3, ' Tingkat Bawah  Bangunan Umno Jelawat ', ' Bachok', '16070', ' Kelantan', ' 09-778 9488', NULL, NULL, NULL, NULL),
(2325, 23, 3, 'Lot 298 Jalan Pasir Puteh ', 'Kota Bharu ', '15200 ', 'Kelantan  ', ' 09-747 1485', NULL, NULL, NULL, NULL),
(2326, 23, 3, ' Tingkat Bawah  Lot 29, Bangunan LUTH ', ' Machang', '18500', ' Kelantan  ', ' 09-975 2331', NULL, NULL, NULL, NULL),
(2327, 23, 3, ' PT 352 Kedai Melor ', ' Kota Bharu ', '16400', 'Kelantan  ', '09-783 4866', NULL, NULL, NULL, NULL),
(2328, 23, 3, 'Wisma Hajah Nik Nadiah Jalan Masjid Lama', 'Pasir Mas', ' 17000 ', ' Kelantan  ', '09-790 5577', NULL, NULL, NULL, NULL),
(2329, 23, 3, ' Lot 1 & 2  Bangunan Pusat Membeli Belah', 'Pasir Puteh ', ' 16800 ', 'Kelantan   ', '09-786 7699', NULL, NULL, NULL, NULL),
(2330, 23, 3, ' No.12 Blok J Taman Bendahara Pengkalan Chepa ', 'Kota Bharu', '16100 ', ' Kelantan', '09-773 7544', NULL, NULL, NULL, NULL),
(2331, 23, 3, ' No. 6 Wisma Majlis Daerah Tumpat', 'Wakaf Baru ', ' 16520 ', 'Kelantan    ', '09-719 3153', NULL, NULL, NULL, NULL),
(2332, 23, 3, 'No. 124 Jalan Besar ', 'Tumpat ', '16200 ', 'Kelantan    ', '09-725 7701', NULL, NULL, NULL, NULL),
(2333, 23, 3, 'Lot 217 & 218  Tingkat Bawah & Mezza Bangunan Kopkejat', ' Tanah Merah ', ' 17500', 'Kelantan   ', '09-955 7001', NULL, NULL, NULL, NULL),
(2334, 23, 3, 'PT 152 ', ' Rantau Panjang ', '17200', 'Kelantan    ', '09-795 0955', NULL, NULL, NULL, NULL),
(2335, 23, 3, ' Lot PT 253  Bangunan Binaraya Taman Sri Ketil  Pengkalan Kubor', ' Tumpat', ' 16200', ' Kelantan  ', '09-721 1120', NULL, NULL, NULL, NULL),
(2336, 23, 3, 'No. 11D - 11E  Jalan Kota Lama ', 'Kuala Terengganu', '20930 ', ' Terengganu  ', '09-622 7622', NULL, NULL, NULL, NULL),
(2337, 23, 3, ' 1980 Bangunan Koperasi 3K Berhad Jalan Sultan Zainal Abidin 1', 'Dungun ', ' 23400 ', 'Terengganu   ', '09-822 1089', NULL, NULL, NULL, NULL),
(2338, 23, 3, ' Tingkat Bawah Lot PT 3760P  Mukim Batu Rakit ', ' Kuala Terengganu', '21020', ' Terengganu   ', ' 09-669 6343', NULL, NULL, NULL, NULL),
(2339, 23, 3, 'Tingkat Bawah Lot 99 Pekan Bukit Payong ', 'Marang ', '21400 ', 'Terengganu  ', '09-619 2948', NULL, NULL, NULL, NULL),
(2340, 23, 3, 'No. 912  Taman Permint Jaya Chendering', 'Kuala Terengganu', ' 21080 ', ' Terengganu   ', '09-617 5739', NULL, NULL, NULL, NULL),
(2341, 23, 3, ' Tingkat Bawah  Lot 246 & 247 Bangunan Yayasan Islam Terengganu ', 'Kuala Berang', '21700 ', ' Terengganu   ', '09-681 1677', NULL, NULL, NULL, NULL),
(2342, 23, 3, ' Lot 6236 & 6237  Jalan Besar Kg Baru  Jalan Kuantan - Kuala Terengganu', 'Kerteh  Kemaman, ', ' 24300 ', 'Terengganu    ', '09-826 1900', NULL, NULL, NULL, NULL),
(2343, 23, 3, 'No. K2 & K3  Jalan Da’ Omar Chukai  ', 'Kemaman ', '24000 ', 'Terengganu', '09-859 3339', NULL, NULL, NULL, NULL),
(2344, 23, 3, ' Lot 336 & 337  Jalan Pasar ', 'Jerteh ', '22000 ', 'Terengganu   ', '09-690 3548', NULL, NULL, NULL, NULL),
(2345, 23, 3, ' Lot 7930 & 7931  Jalan Besar Pak Sabah  ', 'Dungun ', '23000 ', 'Terengganu', '09-842 2265', NULL, NULL, NULL, NULL),
(2346, 23, 3, ' No. MDB B  Perkedaian 2 Tingkat (Blok A) Pasar Kuala Besut ', ' Kuala Besut', '22300', ' Terengganu   ', '09-697 3539', NULL, NULL, NULL, NULL),
(2347, 23, 3, 'Tingkat Bawah Lot 13766, Batu Enam Mukim Kuala Nerus Jalan Kelantan  ', 'Kuala Terengganu', '21200 ', ' Terengganu   ', '09-666 0385', NULL, NULL, NULL, NULL),
(2348, 23, 3, ' No. 1107 Q  Jalan Pejabat ', 'Kuala Terengganu ', '20200 ', 'Terengganu   ', '09-631 5088', NULL, NULL, NULL, NULL),
(2349, 23, 3, 'No. 28-B  Jalan Sultan Mahmud ', 'Kuala Terengganu ', '20400 ', 'Terengganu    ', ' 09-631 5066', NULL, NULL, NULL, NULL),
(2350, 23, 3, ' No. 727 Rumah Kedai PMINT Bangunan Tabung Haji', 'Bandar Permaisuri Setiu ', ' 22100 ', 'Terengganu   ', ' 09-609 9177', NULL, NULL, NULL, NULL),
(2351, 23, 3, ' Tingkat Bawah & Satu Suite 12, Pusat Perniagaan Paya Keladi ', 'Kuala Terengganu', '20200 ', ' Terengganu    ', '09-630 9592', NULL, NULL, NULL, NULL),
(2352, 23, 3, 'Lot PT 14747  Jalan Besar ', 'Paka', '23100 ', ' Terengganu', '09-827 1998', NULL, NULL, NULL, NULL),
(2353, 23, 3, 'Lot 8993 Bangunan MDM Jalan Lama  ', 'Marang', '21600 ', ' Terengganu', '09-618 2688', NULL, NULL, NULL, NULL),
(2354, 23, 3, ' B2/1/1, Ground Floor Wisma PlC  One Ampang Business Avenue Jalan Ampang 1/2  Off Jalan Ampang ', 'Ampang', '68000 ', ' Selangor  ', '03-4252 7305', NULL, NULL, NULL, NULL),
(2355, 23, 3, ' No S-11 Taman Indah Bt 11 Jalan Cheras ', ' Kajang', '43200', ' Selangor ', '03-9074 8712', NULL, NULL, NULL, NULL),
(2356, 23, 3, ' No. 3G, Jalan Wawasan 2/2 Bandar Baru Ampang', 'Ampang', ' 68000 ', ' Selangor   ', '03-4297 7854', NULL, NULL, NULL, NULL),
(2357, 23, 3, ' No. 30  Jalan Medan Pusat Bandar 4 Seksyen 9 Bandar Baru Bangi ', 'Bangi', '43650 ', ' Selangor ', '03-8926 2457', NULL, NULL, NULL, NULL),
(2358, 23, 3, ' No. 28 - 30, Jalan 1C/4 ', 'Sepang ', '43900 ', 'Selangor   ', '03-8706 5976', NULL, NULL, NULL, NULL),
(2359, 23, 3, ' No.11 & 12, Wisma MBA Jalan 53, Desa Jaya ', ' Kepong ', '52000', 'Selangor  ', '03-6276 9786', NULL, NULL, NULL, NULL),
(2360, 23, 3, ' No. 7, Jalan Deluxe Pusat Perniagaan Deluxe ', 'Dengkil ', '47800 ', 'Selangor    ', ' 03-8768 0455', NULL, NULL, NULL, NULL),
(2361, 23, 3, '  No. 28A Jalan Besar', 'Bestari Jaya', ' 45600 ', ' Selangor      ', '03-3271 9137', NULL, NULL, NULL, NULL),
(2362, 23, 3, 'Lot 192 & 194 Jalan Sultan Abdul Samad', ' Banting ', ' 42700', 'Selangor ', '03-3187 9353', NULL, NULL, NULL, NULL),
(2363, 23, 3, ' No. 3 53 Jalan 1A/3 Bandar Baru Sungai Buloh ', ' Sungai Buloh ', '47000', 'Selangor   ', '03-6156 1789', NULL, NULL, NULL, NULL),
(2364, 23, 3, ' No. 1 Bangunan Dato'' Tan Teng Kuey Jalan Besar Sungai Buluh ', 'Jeram ', '41300 ', 'Selangor   ', '03-3264 0223', NULL, NULL, NULL, NULL),
(2365, 23, 3, 'No. 1, Jalan SP 1/5 Bandar Seri Putra ', 'Kajang ', '43000 ', 'Selangor  ', '03-8926 6997', NULL, NULL, NULL, NULL),
(2366, 23, 3, ' Lot 55 & 56 Jalan Raja Haroun', 'Kajang ', ' 43000 ', 'Selangor   ', '03-8736 1125', NULL, NULL, NULL, NULL),
(2367, 23, 3, ' Lot 156, Jalan Besar Kapar', 'Klang ', ' 42200 ', 'Selangor ', '03-3250 6060', NULL, NULL, NULL, NULL),
(2368, 23, 3, ' No 26, Jalan SS 5B/2 Kelana Jaya ', 'Petaling Jaya ', '47301 ', 'Selangor   ', '03-7874 3043', NULL, NULL, NULL, NULL),
(2369, 23, 3, 'No. 15 & 17 Jalan Medan Niaga 2 Medan Niaga Kuala Selangor ', ' Kuala Selangor ', '45000', 'Selangor   ', '03-3289 7870', NULL, NULL, NULL, NULL),
(2370, 23, 3, 'No. 39, Jalan Kamarudin', 'Kuala Kubu Bharu ', ' 44000 ', 'Selangor', '03-6064 3050', NULL, NULL, NULL, NULL),
(2371, 23, 3, ' No. 51 & 53 Jalan Cungah ', 'Pelabuhan Klang ', '42000 ', 'Selangor  ', '03-3168 3636', NULL, NULL, NULL, NULL),
(2372, 23, 3, ' No. 12, Jalan Pos Bharu ', ' Klang ', '41300', 'Selangor     ', '03-3342 6675', NULL, NULL, NULL, NULL),
(2373, 23, 3, ' No.52A Lorong Batu Nilam 4B Bandar Bukit Tinggi ', ' Klang ', '41200', 'Selangor   ', '03-3323 7293', NULL, NULL, NULL, NULL),
(2374, 23, 3, 'No. 117, Jalan Gasing ', 'Petaling Jaya', '46000 ', ' Selangor     ', '03-7957 5719', NULL, NULL, NULL, NULL),
(2375, 23, 3, 'No. 98 Jalan Othman 1/14', 'Petaling Jaya', ' 46770 ', ' Selangor   ', '03-7781 2986', NULL, NULL, NULL, NULL),
(2376, 23, 3, ' No.46 Jalan 52/4  PJ New Town ', 'Petaling Jaya ', '46200 ', 'Selangor', ' 03-7955 4545', NULL, NULL, NULL, NULL),
(2377, 23, 3, ' No. 10, Jalan 14/14 Seksyen 14 ', 'Petaling Jaya ', '46100 ', 'Selangor', '03-7957 2545', NULL, NULL, NULL, NULL),
(2378, 23, 3, 'No. 5, Jalan SS 2/64 ', 'Petaling Jaya ', '46000 ', 'Selangor   ', '03-7875 3809', NULL, NULL, NULL, NULL),
(2379, 23, 3, 'No. 42 Jalan Menteri Besar 2 ', 'Sekinchan', '45400 ', ' Selangor    ', '03-3241 0881', NULL, NULL, NULL, NULL),
(2380, 23, 3, ' No. 3, Jalan Raja Chulan Bangunan Umno Bahagian ', 'Sabak Bernam ', '45200 ', 'Selangor    ', '03-3216 2937', NULL, NULL, NULL, NULL),
(2381, 23, 3, ' No. 11 & 13 Jalan Bandar Rawang 15 Bandar Baru Rawang 2', 'Rawang ', ' 45300 ', 'Selangor   ', '03-6091 2295', NULL, NULL, NULL, NULL),
(2382, 23, 3, 'No 14, Jalan Kenari 5 Bandar Puchong Jaya ', 'Puchong', '47100 ', ' Selangor   ', ' 03-8070 2757', NULL, NULL, NULL, NULL),
(2383, 23, 3, ' No. 608, Jalan SS 9/13 Sungai Way ', 'Petaling Jaya ', '47300 ', 'Selangor   ', ' 03-7876 7115', NULL, NULL, NULL, NULL),
(2384, 23, 3, 'No.75, Jalan 2/16 Dataran Templer Bandar Baru Selayang ', 'Selayang ', '68100 ', 'Selangor    ', '03-6137 0118', NULL, NULL, NULL, NULL),
(2385, 23, 3, ' 2-4-6, Jalan SJ 14 Selayang Jaya Selayang ', ' Batu Caves ', '68100', 'Selangor    ', '03-6138 0877  , 03-6137 3059', NULL, NULL, NULL, NULL),
(2386, 23, 3, 'Tingkat Bawah No. 17, Jalan Sri Selayang Taman Sri Selayang ', ' Selangor   ', '68100', ' Selangor   ', '03-6188 0401', NULL, NULL, NULL, NULL),
(2387, 23, 3, 'No. 21, Jalan Pasar Baru', 'Semenyih ', ' 43500 ', 'Selangor   ', ' 03-8723 5101', NULL, NULL, NULL, NULL),
(2388, 23, 3, 'No. 17, Jalan Plumbum S7/S Pusat Bandar Seksyen 7', ' Shah Alam', ' 40000', ' Selangor  ', ' 03-5511 3936', NULL, NULL, NULL, NULL),
(2389, 23, 3, 'No. 20, Jalan Bersatu 25/9 Taman Sri Muda ', 'Shah Alam ', '40400 ', 'Selangor  ', ' 03-5121 3545', NULL, NULL, NULL, NULL),
(2390, 23, 3, ' No. 19 (Lot 32) Jalan Dinar GU/3G Taman Subang Perdana Seksyen U3', 'Shah Alam ', ' 40150 ', 'Selangor ', '03-7846 1240', NULL, NULL, NULL, NULL),
(2391, 23, 3, 'No. 11-1-1  Jalan Setia Prima U13/R Setia Alam Seksyen U13 ', ' Shah Alam ', '40170', 'Selangor ', '03-3344 1764', NULL, NULL, NULL, NULL),
(2392, 23, 3, ' No. 32, Jalan 17/21 Seksyen 17 ', 'Shah Alam ', '46400 ', 'Selangor ', ' 03-5519 8455', NULL, NULL, NULL, NULL),
(2393, 23, 3, 'No. 9A, Jalan Niaga 16/3A Seksyen 16 ', 'Shah Alam ', '46350 ', 'Selangor    ', ' 03-5510 8575', NULL, NULL, NULL, NULL),
(2394, 23, 3, ' Tingkat Bawah Wisma PKNS ', ' Shah Alam ', '40000', 'Selangor   ', ' 03-5519 8333', NULL, NULL, NULL, NULL),
(2395, 23, 3, ' No. 23 Jalan SS 15 / 8A ', 'Subang Jaya', '47500 ', ' Selangor', '03-5637 8473', NULL, NULL, NULL, NULL),
(2396, 23, 3, 'No. 6, Jalan USJ 9/5R ', 'UEP Subang Jaya ', '47620 ', 'Selangor  ', ' 03- 8023 2866', NULL, NULL, NULL, NULL),
(2397, 23, 3, 'No. 21A, Jalan Menteri Sungai Besar', ' Sabak Bernam ', ' 45300', 'Selangor', '03-3224 2911', NULL, NULL, NULL, NULL),
(2398, 23, 3, 'No.13, Jalan Damai 1 Sungai Pelek ', 'Sepang ', '43950 ', 'Selangor   ', '03-3141 1488', NULL, NULL, NULL, NULL),
(2399, 23, 3, ' Bangunan Unikeb Universiti Kebangsaan Malaysia', 'Bangi ', ' 43600 ', 'Selangor    ', '03-8926 4498', NULL, NULL, NULL, NULL),
(2400, 23, 3, ' No. 2, Jalan PB1 Pusat Bandar Tanjung Karang ', 'Tanjung Karang ', '45500 ', 'Selangor  ', '03-3269 2912', NULL, NULL, NULL, NULL),
(2401, 23, 3, 'No.30, Jalan SG 1/2 Taman Sri Gombak ', ' Selayang ', '68100', 'Selangor    ', '03-6189 6075', NULL, NULL, NULL, NULL),
(2402, 23, 3, ' No. 226, Jalan 18/23 Taman Seri Serdang', 'Seri Kembangan ', ' 43300 ', 'Selangor  ', '03-8948 2585', NULL, NULL, NULL, NULL),
(2403, 23, 3, ' 8-G Jalan Utama Suria Tropika 1 Taman Suria Tropika ', 'Seri Kembangan ', '43300 ', 'Selangor    ', ' 03-8957 6424', NULL, NULL, NULL, NULL);
INSERT INTO `banks_branch_info` (`bbi_id`, `ba_id`, `co_id`, `bbi_address`, `bbi_city`, `bbi_zipcode`, `bbi_state`, `bbi_phone`, `bbi_digitrouting`, `bbi_swiftcode`, `bbi_addinfo`, `bbi_status`) VALUES
(2404, 23, 3, '  Bangunan Kolej Kediaman Mohamad Rashid Universiti Putra Malaysia ', ' Serdang', '43300', ' Selangor   ', '03-8948 8544', NULL, NULL, NULL, NULL),
(2405, 23, 3, ' Lot 1.02 Ground Floor Ampang Park Shopping Complex Jalan Ampang ', ' Kuala Lumpur   ', '50450', ' Kuala Lumpur    ', '03-2161 9301', NULL, NULL, NULL, NULL),
(2406, 23, 3, ' No. 73-G Tingkat Bawah & Satu Jalan Dwitasik 1 Dataran Dwitasik Bandar Sri Permaisuri, Cheras ', 'Kuala Lumpur    ', '56100 ', 'Kuala Lumpur   ', '03-9173 9601', NULL, NULL, NULL, NULL),
(2407, 23, 3, 'Tingkat Bawah No. 14 Jalan Telawi Bangsar Baru ', ' Kuala Lumpur  ', '59100', ' Kuala Lumpur ', '03-2283 5108', NULL, NULL, NULL, NULL),
(2408, 23, 3, 'No.721 Batu 4 1/2 Jalan Ipoh ', 'Kuala Lumpur ', '51200 ', 'Kuala Lumpur  ', '03-6251 5594', NULL, NULL, NULL, NULL),
(2409, 23, 3, '  No.10 Jalan Kijang 1 Taman Suntex Batu 9, Cheras ', 'Kuala Lumpur   ', '43200 ', 'Kuala Lumpur   ', '03-9075 7617', NULL, NULL, NULL, NULL),
(2410, 23, 3, 'No 69, Jalan Haji Hussein ', 'Kuala Lumpur  ', '50300 ', 'Kuala Lumpur   ', '03-2693 6293', NULL, NULL, NULL, NULL),
(2411, 23, 3, ' Blok 10, Kompleks Kerajaan Jalan Duta ', 'Kuala Lumpur ', '50480 ', 'Kuala Lumpur', '03-6201 6061', NULL, NULL, NULL, NULL),
(2412, 23, 3, 'Lot 160, City Point Kompleks Dayabumi ', ' Kuala Lumpur    ', '50050', ' Kuala Lumpur  ', '03-2274 6764', NULL, NULL, NULL, NULL),
(2413, 23, 3, 'Tingkat Bawah No.96 Jalan SS 21/35 Damansara Utama', 'Kuala Lumpur    ', ' 47400 ', 'Kuala Lumpur  ', '03-7727 1427', NULL, NULL, NULL, NULL),
(2414, 23, 3, 'No 166 Tingkat Bawah Wisma MAB Jalan Tun Sambanthan ', 'Kuala Lumpur  ', '50470 ', 'Kuala Lumpur', '03-2274 0815', NULL, NULL, NULL, NULL),
(2415, 23, 3, ' No.178, Jalan Maharajalela', ' Kuala Lumpur   ', ' 50150', ' Kuala Lumpur ', '03-2142 0461', NULL, NULL, NULL, NULL),
(2416, 23, 3, '  No.154, Jalan Raja Laut ', 'Kuala Lumpur     ', '50350 ', 'Kuala Lumpur   ', '03-4042 5695', NULL, NULL, NULL, NULL),
(2417, 23, 3, '  D-G-07, Tingkat Bawah M-Avenue Segambut ', ' Kuala Lumpur ', '52100', ' Kuala Lumpur  ', ' 03-6250 2094', NULL, NULL, NULL, NULL),
(2418, 23, 3, '  No. 720, Jalan Sentul', 'Kuala Lumpur  ', ' 51000 ', 'Kuala Lumpur  ', '03-4042 9920', NULL, NULL, NULL, NULL),
(2419, 23, 3, ' No. 77 Jalan Kampung Pandan', ' Kuala Lumpur ', ' 55100', ' Kuala Lumpur', '03-9285 0263', NULL, NULL, NULL, NULL),
(2420, 23, 3, 'No. 24 Jalan Pandan Jaya 2/1 Pandan Jaya', 'Kuala Lumpur  ', ' 55100 ', 'Kuala Lumpur', '03-9283 7396', NULL, NULL, NULL, NULL),
(2421, 23, 3, '  No.9, Jalan Perubatan 2 Pandan Indah ', 'Kuala Lumpur  ', '55100 ', 'Kuala Lumpur', '03-4296 0486', NULL, NULL, NULL, NULL),
(2422, 23, 3, '  No. 14, Lot 89 Leboh Ampang ', 'Kuala Lumpur', '50100 ', 'Kuala Lumpur  ', '03-2031 8770', NULL, NULL, NULL, NULL),
(2423, 23, 3, ' Ground Floor & First Floor Wisma BSN 117 Jalan Ampang ', ' Kuala Lumpur  ', '50450', ' Kuala Lumpur   ', '03-2162 3222', NULL, 'BSNAMYK1', NULL, NULL),
(2424, 23, 3, ' No. 51, Jalan Ambong Kepong Baru ', 'Kuala Lumpur  ', '52100 ', 'Kuala Lumpur   ', ' 03-6251 4433', NULL, NULL, NULL, NULL),
(2425, 23, 3, '  Lot 1.92 Tingkat 1 Pertama Kompleks Jalan Tuanku Abdul Rahman ', 'Kuala Lumpur', '50100 ', 'Kuala Lumpur ', ' 03-2691 8263', NULL, NULL, NULL, NULL),
(2426, 23, 3, 'Blok K, Tingkat Bawah Pusat Bandar Damansara', 'Kuala Lumpur  ', ' 50490 ', 'Kuala Lumpur ', '03-2095 9979', NULL, NULL, NULL, NULL),
(2427, 23, 3, ' No. 245, Serene Park Jalan Genting Klang Setapak ', ' Kuala Lumpur  ', '53300', ' Kuala Lumpur    ', ' 03-4021 8224', NULL, NULL, NULL, NULL),
(2428, 23, 3, 'No.G-2-18, Prima Peninsular Jalan Setiawangsa 11 Taman Setiawangsa ', 'Kuala Lumpur ', '54200 ', 'Kuala Lumpur', '03-4256 5824', NULL, NULL, NULL, NULL),
(2429, 23, 3, 'No. 12A, Jalan Radin Tengah Bandar Baru Sri Petaling ', ' Kuala Lumpur ', '57000', ' Kuala Lumpur  ', '03-9057 9068', NULL, NULL, NULL, NULL),
(2430, 23, 3, '  Tingkat Bawah No 57, Jalan Melati Utama 4 Taman Melati Utama', 'Kuala Lumpur  ', ' 53100 ', 'Kuala Lumpur  ', '03-4105 4421', NULL, NULL, NULL, NULL),
(2431, 23, 3, 'No.45G & 47G Jalan Jejaka 9 Taman Maluri, Cheras ', ' Kuala Lumpur  ', '55100', ' Kuala Lumpur', '03-9285 3354', NULL, NULL, NULL, NULL),
(2432, 23, 3, ' No. 57, Jalan 2 Taman Len Seng ', 'Kuala Lumpur', '56000 ', 'Kuala Lumpur  ', '603-9100 2557', NULL, NULL, NULL, NULL),
(2433, 23, 3, '  No 19, Jalan Burung Jentayu Taman Bukit Maluri Kepong ', 'Kuala Lumpur  ', '52100 ', 'Kuala Lumpur ', '03-6276 3000', NULL, NULL, NULL, NULL),
(2434, 23, 3, 'No. 33, Jalan Tasik Utama 6 Medan Niaga Tasik Damai Sungai Besi ', 'Kuala Lumpur', '56700 ', 'Kuala Lumpur ', '03-9058 1407', NULL, NULL, NULL, NULL),
(2435, 23, 3, 'No.313 & 314 Lorong Selangor Pusat Bandar Melawati ', 'Kuala Lumpur  ', '53100 ', 'Kuala Lumpur  ', '03-4105 8453', NULL, NULL, NULL, NULL),
(2436, 23, 3, '  Tingkat Bawah No. 12 Jalan Midah Besar Tmn Midah, Cheras ', 'Kuala Lumpur  ', '56000 ', 'Kuala Lumpur ', '03-9131 2289', NULL, NULL, NULL, NULL),
(2437, 23, 3, 'No. 148, Jalan Mega Mendung Kompleks Bandar BT 5 Jalan Kelang Lama', 'Kuala Lumpur ', ' 58200 ', 'Kuala Lumpur ', '03-7981 5944', NULL, NULL, NULL, NULL),
(2438, 23, 3, 'No. 7 Jalan Manis 6 Taman Segar, Cheras ', 'Kuala Lumpur ', '56100 ', 'Kuala Lumpur  ', '03-9130 2324', NULL, NULL, NULL, NULL),
(2439, 23, 3, 'No. 99, Jalan 1/91 Taman Shamelin Perkasa Cheras ', 'Kuala Lumpur ', '56100 ', 'Kuala Lumpur  ', '03-9281 0841', NULL, NULL, NULL, NULL),
(2440, 23, 3, ' Blok Urologi Jalan Pahang', 'Kuala Lumpur  ', ' 50586 ', 'Kuala Lumpur  ', '03-2691 3162', NULL, NULL, NULL, NULL),
(2441, 23, 3, '  No.42 Jalan 2A/27A Seksyen 1 Bandar Baru Wangsa Maju ', ' Kuala Lumpur ', '53300', ' Kuala Lumpur', '03-4149 0567', NULL, NULL, NULL, NULL),
(2442, 23, 3, '  Urban Transformation Centre (UTC) No T3-2 Bangunan Pudu Sentral Jalan Pudu', 'Kuala Lumpur   ', ' 55100 ', 'Kuala Lumpur   ', '03-2026 1020', NULL, NULL, NULL, NULL),
(2443, 23, 3, '  Plaza Siswa Universiti Malaya Jalan Lembah Pantai ', ' Kuala Lumpur   ', '59100', ' Kuala Lumpur', '03-7956 8127', NULL, NULL, NULL, NULL),
(2444, 23, 3, 'No. 136 Jalan Burhanuddin Helmi Taman Tun Dr Ismail ', 'Kuala Lumpur ', '60000 ', 'Kuala Lumpur  ', ' 03-7729 7526', NULL, NULL, NULL, NULL),
(2445, 23, 3, 'No. 12 Jalan 46/26 Taman Sri Rampai Setapak ', ' Kuala Lumpur  ', '53300', ' Kuala Lumpur  ', ' 03-4022 1548', NULL, NULL, NULL, NULL);

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
-- Table structure for table `banks_members`
--

CREATE TABLE IF NOT EXISTS `banks_members` (
  `bm_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `bat_id` int(11) NOT NULL,
  `bc_id` int(11) NOT NULL,
  `bbi_id` int(11) NOT NULL,
  `bm_holdername` varchar(200) NOT NULL,
  `bm_accountnumber` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `bene_info_waris`
--

CREATE TABLE IF NOT EXISTS `bene_info_waris` (
  `biw_id` int(11) NOT NULL,
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
  `biw_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bene_info_waris`
--

INSERT INTO `bene_info_waris` (`biw_id`, `me_id`, `biw_firstname`, `biw_lastname`, `g_id_biw`, `biw_relationship`, `biw_email`, `biw_phone`, `biw_address`, `biw_city`, `biw_state`, `biw_postcode`, `biw_country`, `biw_status`) VALUES
(1, 1, 'HAMBARAN', 'ABD SAMAD', 1, 'FATHER', 'hambaran@gmail.com', '0199318284', '91, JALAN KERAI, SG. RETANG.', 'JERANTUT', 'PAHANG', '27000', 'MALAYSIA', 1),
(2, 2, 'asas', '', 2, '', '', '', '', '', '', '', '', 1),
(4, 4, '', '', 1, '', '', '', '', '', '', '', '', 1),
(5, 5, '', '', 1, '', '', '', '', '', '', '', '', 1),
(7, 3, 'Mustafa', '-', 1, 'Father', 'mustafa@gmail.com', '0199993323', 'Rumah di Taman Cempaka', 'Ipoh', 'Perak', '-', 'Malaysia', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`br_id`, `br_code`, `br_name`) VALUES
(1, 'DP', 'DinarPal'),
(2, 'DEPB', 'DEPB'),
(3, 'GCP', 'GCP'),
(4, 'PG', 'PG'),
(5, 'PAMP', 'PAMP'),
(6, 'KOPSYA', 'KOPSYA'),
(7, '-', 'Others');

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
-- Table structure for table `brands_itc_purity`
--

CREATE TABLE IF NOT EXISTS `brands_itc_purity` (
  `bip_id` int(11) NOT NULL,
  `bi_id` int(11) NOT NULL,
  `pu_id` int(11) NOT NULL,
  `bip_price` varchar(200) NOT NULL,
  `bip_rate` varchar(200) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`ca_id`, `me_id`, `ct_id`, `ca_name`, `ca_number`, `ca_cvnnumber`, `ca_expiredmonth`, `ca_expiredyear`, `ca_status`) VALUES
(11, 1, 1, 'ASDASDASD', '123321123321', '323', '1', '2015', 1),
(19, 3, 2, 'VISA CARD', '6666555544443333', '324', '4', '2020', 1);

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
('013e76beebb7022990e20460844db1d1', '66.249.66.55', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461253229, ''),
('018a94cddcd3f49915a65483c8050285', '69.171.228.116', 'facebookexternalhit/1.1', 1461231335, ''),
('02b39d0d2a97fbeae856b7ff0182906c', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160553, ''),
('02b92f8a4df5db923a6a98469d2e4bf2', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1458138025, ''),
('032a83590f5396845cbc86fff3588277', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461260011, ''),
('034d0818d0ffe04c794054143713da08', '130.193.51.30', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247728, ''),
('0360c8e4210ff57b3997cb5940a02c74', '123.125.71.108', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461112598, ''),
('069ebeb343dc698e2459c7e271fec0a5', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; AOL 9.0; Window', 1461188319, ''),
('0873a7b75e83865955954d9c31dae681', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231994, ''),
('08f2539879b806f8819fb089a988aa68', '64.233.173.130', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-N750 Build/L', 1461132184, ''),
('0954b61d17d2d63cb508d559f82de4c7', '180.76.15.136', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461285196, ''),
('09e1e4b806deff0a8aff1610b856457c', '66.249.66.187', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461243394, ''),
('09f5df1bf397a4d2efbfff7bcb56d1c6', '1.9.103.6', 'Mozilla/5.0 (Linux; Android 4.4.4; 3006 Build/KTU8', 1461234408, 'a:1:{s:12:"me_id_parent";s:88:"HvV7mdJP2jeO2p-InEJsMQqYYlDJQUUhFVDMGmO5xL_uKSoVIz5vo-Fu8FfVVJXNPhFMqJ_axXsFJu2LyIYUKw==";}'),
('0a3b4df0df7867f591d35c6c1791b633', '123.125.71.23', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461160468, ''),
('0b02446fffd2548348141b125e27c4fe', '134.249.55.100', 'Opera/9.0 (Windows NT 5.1; U; en)', 1461188428, ''),
('0b2c8ce9f42565854cff148cd9c9d415', '1.171.249.242', '0', 1461132303, ''),
('0b745c53dc8a5513c893b2842d203065', '184.105.139.68', '0', 1461291074, ''),
('0b935abcfbc5806cdc1050b5396bb4c6', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461226261, ''),
('0be03ee8de433bde5d9cf2a9f3ca3b0c', '66.249.66.30', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461294765, ''),
('0c2421a70c319c7bfb4754fdf11dd334', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232047, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('0c48e1c02dd15efe79556a796ed4e9e2', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1460011015, 'a:50:{s:5:"me_id";s:2:"17";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-07T07:18:10+02:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;}'),
('0f0931ec561bd64263ba9c3df273ba19', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461253229, ''),
('0f53f19334c0ae4570f2bb21c5c194d7', '60.169.79.233', '0', 1461269930, ''),
('0f9c29b0fbf42608dabb42218da32bea', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232011, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('10158562bf54c99d8ab8161094470491', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461394619, ''),
('10a6371d50976e5895b08bba396f9562', '115.164.220.239', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461308597, 'a:50:{s:5:"me_id";s:1:"2";s:8:"me_image";s:36:"007670359b0f05b910f399488e2ffcea.jpg";s:12:"me_firstname";s:3:"asd";s:11:"me_lastname";s:3:"dsa";s:11:"me_username";s:3:"asd";s:11:"me_question";s:9:"Who am I?";s:9:"me_answer";s:12:"Jack Sparrow";s:14:"me_unique_link";s:32:"7815696ecbf1c96e6894b779456d330e";s:11:"me_address1";s:0:"";s:8:"me_city1";s:0:"";s:9:"me_state1";s:0:"";s:12:"me_postcode1";s:0:"";s:11:"me_country1";s:0:"";s:11:"me_address2";s:0:"";s:8:"me_city2";s:0:"";s:9:"me_state2";s:0:"";s:12:"me_postcode2";s:0:"";s:11:"me_country2";s:0:"";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:3:"123";s:13:"me_birth_date";s:10:"1998-10-02";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:11:"facebok asd";s:10:"me_twitter";s:12:"twitter saya";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:16:"umar@tuffah.info";s:16:"me_register_date";s:19:"2014-12-13 19:45:41";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-21T10:41:56+08:00";s:12:"me_magic_num";s:32:"ec623adec13773d99685c93053d3228e";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('10a8f03f7d32a77e30ecbf885d6a31ac', '208.115.113.93', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461125885, ''),
('10d8a4a5e93fa890e545fc9deb2e268d', '180.76.15.23', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461160093, ''),
('121abf99ada25d13b7893bebb49f326a', '91.209.51.22', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461154908, ''),
('133c25d08ac8372617e115ed593ff437', '113.210.54.28', 'Microsoft Office PowerPoint 2013', 1461135640, ''),
('13a0cf5d58b4890fde241ea40dde78a7', '211.0.154.125', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100', 1461143750, ''),
('1470a6cc81a13ad9c2b541278568b935', '40.77.167.45', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258645, ''),
('15d3cc3f70849b338617edabc76632b0', '130.193.51.10', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247721, ''),
('15e5ad3905543a77e7261a366b042b8b', '103.1.71.178', 'WhatsApp/2.16.13 A', 1461232765, 'a:1:{s:12:"me_id_parent";s:88:"vG-FKqR3eKBqFS4rGK-GfXf-rNVUU1ABy6_OEzLclcogltS_bu4P-XFexqnk_JIyf96cvrrxaXqvpe5d0LusEA==";}'),
('161d419e88aa505cf53a4e69fb9bb8c5', '180.76.15.138', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461296480, ''),
('1689d80ea97784b29732f9781c73aa23', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461170775, ''),
('176a6fca2a1a600287573845275e998e', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1460052517, ''),
('186e394293889619f6697fc0eb5d115e', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160573, ''),
('18d7dc7188797ffeb73831d5959a8688', '157.55.39.182', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461303304, ''),
('19106c29ad75873f42ae0c8819582dc6', '103.1.71.178', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461232728, 'a:2:{s:12:"me_id_parent";s:88:"H8qnHJ_skzAJfA1Lfy-szgWWwjAqpJSazh7034AyOjyg3qfd17Jb686eRJphrjM9f756S7bV6kUJM0l6764AbQ==";s:15:"flash:old:error";s:24:"Wrong username/password!";}'),
('191614e6dc6f844cf05fbcd04e6dedbe', '180.76.15.149', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461317842, ''),
('192b1f31f825b63970867f689f343988', '66.249.71.194', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461226887, ''),
('193f43b81ff345bfcde9efb973bd9cb5', '175.136.237.209', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (', 1461215050, ''),
('1950ae045ee916a0242d84360ddd5839', '66.249.77.7', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461192089, ''),
('19b4c96f3d1774aafe08dbc25dff13bd', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232004, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('1a79396b35c956d05e17900ed05ccf6c', '1.9.209.50', 'Mozilla/5.0 (Linux; Android 5.0.2; vivo Y51 Build/', 1461117345, ''),
('1a7abde58448f7f7655b011ec72d3011', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2;', 1461188450, ''),
('1b2710343f5ef7db3055bc4ed56c7a17', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232011, ''),
('1c348da899398f6b4f476da796a889ac', '180.76.15.146', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461246588, ''),
('1cc9aab9578fa3680b2593f1de0107e8', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461040918, 'a:50:{s:5:"me_id";s:1:"3";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-12T17:37:02+02:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;}'),
('1cd315dda2222fb70a6cc99982007935', '109.236.94.216', 'python-requests/2.9.1', 1461234989, ''),
('1d48ca86532e3be9117489948738fa9f', '207.46.13.19', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461181400, ''),
('1eaeb5b465d5fe1b5f614e4e666947d5', '40.77.167.93', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461133097, ''),
('1edfee877f21829d59a418d85f4b8039', '1.9.100.109', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-I8262 Build/', 1461126606, 'a:1:{s:12:"me_id_parent";s:88:"TJqelvsGdE085R4oanCdsDapwEy-DboHTvpY7F83TO8RVbI5Iqv0WuzPIF3FSmhk38MhS1AymvgotAw673WtFw==";}'),
('1fd535bb244fe1571115daf2ab7b07b9', '103.1.71.178', 'WhatsApp/2.16.13 A', 1461232765, ''),
('20d650059d3e5fbf313463abca0b7cbc', '175.141.171.212', 'WhatsApp/2.12.15/i', 1461102521, 'a:1:{s:12:"me_id_parent";s:88:"uw-PP7jguedS0LceHjLJxM_hDB6WLa8IE6Cf42zBtrX1-cRa52lK1Zyeb8ErQdxr8ee1F3HwLHXoARngW5TjOg==";}'),
('22a0171380e4e7991241956bda766d62', '60.169.79.233', '0', 1461176959, ''),
('2361b3e1db9c30055a68b4a29737c0eb', '180.76.15.158', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461149016, ''),
('23bc7fbf592e8575664c072fc1aeae78', '157.55.39.245', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461306140, ''),
('23bd7b0adca067772ed8545189392a8a', '180.76.15.31', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461166775, ''),
('244c87bc20076e0937ab679f6db8bd3c', '180.76.15.10', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461131647, ''),
('2467171d9cc680050084f3b9abe11781', '40.77.167.93', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461135627, ''),
('24da90d7bc0762c853660ca96df4358d', '149.154.167.162', 'TelegramBot (like TwitterBot)', 1461164497, ''),
('24e1187619e62050fcd440d165cd2ce1', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160559, ''),
('25c66180d08f4a9d6573fa0562c77c0a', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160562, ''),
('25e31f17de9bda3344245109e5f51f5e', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461244598, ''),
('27f9eeefedfd8b23e529335c516b0728', '66.249.66.58', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461286252, ''),
('2a4d83df09c75394646ee45207a7dc2e', '180.76.15.21', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461177259, ''),
('2cfb854c58c6523d0d2bbf1b9771bf9b', '5.149.254.109', 'Mozilla/4.0 (compatible  MSIE 6.0  Windows NT 5.1 ', 1461279770, ''),
('2db00373564aa2c9f28bfa48c9a32e25', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461299099, 'a:61:{s:5:"me_id";s:2:"13";s:8:"me_image";s:36:"de66e1a79cbe5484bd29e4842d8c73c6.jpg";s:12:"me_firstname";s:5:"Siti ";s:11:"me_lastname";s:8:"Zulaikha";s:11:"me_username";s:3:"sza";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"sza";s:14:"me_unique_link";s:32:"eeae174735e6f8a579b3b9bc1849ac17";s:11:"me_address1";s:29:"600-6 Batu 2 1/2 Padang Temu ";s:8:"me_city1";s:6:"Melaka";s:9:"me_state1";s:6:"Melaka";s:12:"me_postcode1";s:5:"75050";s:11:"me_country1";s:6:"Melaka";s:11:"me_address2";s:29:"600-6 Batu 2 1/2 Padang Temu ";s:8:"me_city2";s:6:"Melaka";s:9:"me_state2";s:6:"Melaka";s:12:"me_postcode2";s:5:"75050";s:11:"me_country2";s:6:"Melaka";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136720330";s:13:"me_birth_date";s:10:"1993-04-07";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:18:"@mawaddah_alzahrah";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:10:"0136720330";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:28:"zulaikhaabdullah75@gmail.com";s:16:"me_register_date";s:19:"2016-04-21 15:06:42";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T10:35:17+08:00";s:12:"me_magic_num";s:32:"968b1b6bdc426e86092695466c3ae464";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;s:18:"session_withdrawal";a:6:{s:5:"ft_id";s:1:"5";s:10:"me_id_from";s:2:"13";s:11:"tr_datetime";s:19:"2016-04-22 12:25:53";s:5:"at_id";s:1:"1";s:9:"tr_amount";s:2:"10";s:5:"bc_id";s:1:"1";}s:5:"tr_id";i:102;s:11:"tr_datetime";s:19:"2016-04-22 12:25:53";s:7:"bank_to";s:12:"198735410825";s:11:"bank_holder";s:13:"SITI ZULAIKHA";s:9:"bank_name";s:15:"Maybank Sdn Bhd";s:9:"tr_amount";s:5:"10.00";s:8:"ft_price";s:4:"3.00";s:6:"bc_fee";s:4:"2.00";s:7:"gst_tax";s:4:"0.30";s:10:"amount_get";s:4:"4.70";}'),
('2e6c6f0e49249c3c476d82d222a607e2', '40.77.167.104', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461116193, ''),
('2e728f6438886fb2de77f22447acdc7a', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461254789, ''),
('2ecda203e2fab05119160bde06ab53f8', '113.210.50.134', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461237709, 'a:1:{s:12:"me_id_parent";s:88:"-07pQCsyzOUoI6NxSC6lZfeZPMBoWNZs0G2BHkuf1vQ4IALBCfvB67yP6zVO0tQXbDra7DG7-kB7wYombD8k0A==";}'),
('2f6eac80e5185361fc87210c991950ff', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231997, ''),
('2f737afa19e9346c008faea674fc07b4', '180.76.15.136', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461112494, ''),
('2f754245255f22d23bbd046b8cd9c224', '180.76.15.16', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461170852, ''),
('2f8db89c4ee048cbdcc051ec393ea312', '134.249.55.100', 'Mozilla/1.22 (compatible; MSIE 2.0; Windows 95)', 1461188428, ''),
('3057ffe467b35c5edcecd9f3d211f991', '82.193.127.15', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461299105, ''),
('32d965b00dc532bd9c2ae9b4179c8dc3', '80.227.174.18', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:28.0) Gecko', 1461111176, ''),
('32f1f08ddc9645e9dd0e21ce49d0debf', '157.55.39.190', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461143044, ''),
('33573d89f2da8010751004729143de5b', '180.76.15.17', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461105920, ''),
('3391f484dd230fbed8ca385dda402bb7', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232045, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('33941a67443c4ca6f0baa1c1b22574f3', '180.76.15.19', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461213959, ''),
('343416dd5cb2716129377813d1d236e4', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461287643, ''),
('356c881091c2391c03f730104063689e', '68.180.228.190', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461179256, ''),
('35946066485109b38f0cbaae59901c30', '157.55.39.190', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461137061, ''),
('3663f1032fe44982d3ebaa95b6afe5bf', '180.76.15.28', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461141890, ''),
('3674f3a09c3cabf78a2c5915e7997ef3', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160564, ''),
('36a363bd6f8476b866abdd5b21e7cda2', '157.55.39.27', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461106446, ''),
('3734494d0419a6a6fd86b903cca6d382', '207.46.13.26', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258674, ''),
('389673bff1b02f2815423bb500a3a810', '69.30.213.82', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461230865, ''),
('38a059ae66f099b579068eff517b21a6', '61.6.6.66', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461131664, ''),
('38a1714f834ad6d93f9f9b882785ab38', '180.76.15.25', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461105995, ''),
('396b0f9bbbe544c9354534b6d54b89a3', '66.249.66.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461312935, ''),
('397a82e6445d7db997efb2d4405a5255', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461135005, ''),
('399e48938afc91ebe14a112d8e660641', '185.94.190.155', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', 1461104270, ''),
('39deb43e6b4c6cb240d5341129072912', '61.6.25.203', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) Ap', 1461130807, ''),
('3a019ee087aea721e7452af0e723af2d', '180.76.15.137', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461306929, ''),
('3a5685d938d0a28291c1c287562aa891', '45.33.36.127', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461271173, ''),
('3aca0346316f109ce10cdb50fbbf4ff4', '134.249.55.100', 'Opera/9.0 (Windows NT 5.1; U; en)', 1461188429, ''),
('3ae976574ae43863e5e10b8972bd4304', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160578, ''),
('3b1c100c6ab37918ef6b44f01d2dee65', '113.210.58.106', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00J Build', 1461233213, 'a:1:{s:12:"me_id_parent";s:88:"ddu3fBRZM5TA9Fb_f-IDmYSqoSJXKnLwYDHZz7RTBDGlAE__euuu4pbkUyOJYXUbvWQYgueewqT_H1bAq9udqg==";}'),
('3baec21e131ca54217249bbf10b80345', '180.76.15.8', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461231482, ''),
('3bd523f0ba185c4f5c786ec468bf0e72', '157.55.39.27', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461100306, ''),
('3c416ebd67b6b91ac04f5477367976ac', '169.54.233.124', 'Mozilla/5.0 (Windows NT 6.1; rv:31.0) Gecko/201001', 1461221004, ''),
('3d30268bf382c21a57c4cb3595e832a2', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0;', 1461188283, ''),
('3dce12a3d87800d27de67adf48473524', '157.55.39.158', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461167166, ''),
('3e6f2ff75f5c28f444473f50c7a3ce0e', '180.76.15.140', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461123745, ''),
('3e9c4e5b9967fcfdf71953f2d5f6e166', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160555, ''),
('3ee8cd9ed2b0553e28eb22b283115849', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461192399, ''),
('3eeaabdca1b8092b12a2b0f9a6bbd9e3', '66.249.66.30', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461267813, ''),
('3f03cbe541cc23996d9d5f06dec9e2c0', '141.8.142.15', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247725, ''),
('3fb8f0e8e8aa53771eac41fbac33408b', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0;', 1461188281, ''),
('40cc0f4817e372877970e8e7b83c10ac', '123.125.71.85', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461142852, ''),
('41c18c403333fc273493dadf56114548', '175.143.113.162', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461311934, ''),
('41e475366967a0da2de6f36ce7c18e53', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461394613, ''),
('420387451362032d937986d597da9b17', '89.163.148.58', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461115279, ''),
('42567fe22737d86d00c7370f4884e5ad', '180.76.15.155', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461284524, ''),
('42bb35a2b69d9dee8600f2dd36665e5b', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461262396, ''),
('43f0f325efca6516526eed7e6960c5b0', '5.248.253.133', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows XP)', 1461159325, ''),
('43f1a03835ffc61f6f855cd6e9f7e507', '180.76.15.135', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461095330, ''),
('440e1c4cdc34cf014b3d22407719054d', '180.76.15.150', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461188367, ''),
('449bb9257f141680847916c000bdd4a3', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186645, ''),
('44a09e92caa73bb5dbd96d0e52a88b53', '180.76.15.159', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461242250, ''),
('451ca0242b82d957581fc19f8cbee2a8', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; AOL 9.0; Window', 1461188320, ''),
('4523895453010a5c2f6ef1d493946611', '115.134.161.155', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/53', 1461307176, ''),
('4553e0360886a0177391e4518ba7e8f3', '134.249.55.100', 'Mozilla/1.22 (compatible; MSIE 2.0; Windows 95)', 1461188427, ''),
('4635db9b2400c45ffb676d1e9c8e3431', '157.55.39.218', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461216684, ''),
('466666f9377074030aaa21117cdf955e', '45.79.89.188', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461311753, ''),
('46885cfbc024ea7990c0cf17b945a41d', '66.249.66.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461303464, ''),
('4693503f741af0328f70f171bb7b3027', '66.249.77.57', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461169653, ''),
('46bbd599aa63dd576374bf973e2a0e5b', '173.252.74.109', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461231329, ''),
('4701dc5e4c811c79b32e101356d00744', '180.76.15.8', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461095413, ''),
('47cabdf771c5deda52f89b37ca49f658', '180.76.15.140', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461279626, ''),
('4a08831ba7b3548e748a261505e5ef3c', '66.249.66.55', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461290527, ''),
('4ad46a3635545ca757c16f7f037b7342', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461232632, ''),
('4b06726228cfda5dbff779cc9f3209a2', '173.252.90.243', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461249131, 'a:1:{s:12:"me_id_parent";s:88:"vejHSQphqjR4ZHgUUUTTgWg0qf61JCrVFtAAkMdbtK6qDyWZ8g-miuVSFcehaewLyo9tUGaWp78tdL2nyP_WcQ==";}'),
('4b18df237138435fa98e6d949f4767c7', '157.55.39.200', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461308998, ''),
('4b349dc467eb11a990333df960d182f3', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461394619, 'a:50:{s:5:"me_id";s:1:"3";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-23T08:41:34+02:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;}'),
('4b5aaf1b12c9186358786f68cdf659ed', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461167106, ''),
('4bbae0e49f43c378a527949febbf5782', '66.249.66.33', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461272445, ''),
('4c1da313355245df84338fc895981dc6', '66.249.65.37', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461097044, ''),
('4c3c27c842d37aaf5a227d1b5e9bee30', '180.76.15.14', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461166840, ''),
('4c3daccbd28d1c825f021ea2f18e22cf', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; AOL 9.0; Window', 1461188318, ''),
('4c7d7c3d3319fd0cff7724e29611fd14', '195.154.184.40', 'Mozilla/5.0 (Windows NT 6.1; rv:34.0) Gecko/201001', 1461308126, ''),
('4d52d54cd064080fe47c310852eeb776', '183.171.18.77', 'WhatsApp/2.16.13 A', 1461232123, ''),
('4efbdc96e5b9fae26e312c22a9c06cff', '74.82.47.2', '0', 1461124847, ''),
('4f98471fe28e506b54547eee8cbb81db', '208.115.113.93', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461125207, ''),
('4fc482f5f13ec70f02635bf659ddd438', '185.94.190.155', '0', 1461104264, ''),
('500fee89a3e6e8d676a9a00ae0a2b7ed', '216.55.186.43', '0', 1461253473, ''),
('5034ea745a612ecd05c9c971f6e01b7f', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160549, ''),
('5081dc4de7e271a3f7b8eafd19966fd5', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231994, ''),
('50d6d04ff3800c3daebdef9bee34063d', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 95) Ope', 1461197227, ''),
('51559fe17368ad5e311adafce5da32cb', '157.55.39.158', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461230640, ''),
('52eae75c3534b5d4188751090ae5f655', '180.76.15.155', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461177211, ''),
('5339df736f9d37dea38eb47fba791657', '5.248.253.133', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows XP)', 1461159325, ''),
('5447da71f462c5aa6c25141abfe286ad', '130.193.51.30', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247730, ''),
('5474df9ee79610c538ec9f8043cfffe5', '66.249.66.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461279764, ''),
('54792bd1728be81de46daa14d4362792', '208.115.111.74', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461157780, ''),
('551bad869ea91c9fe9771fa893c1c0c7', '113.210.54.28', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461133639, 'a:51:{s:5:"me_id";s:1:"9";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:3:"mzh";s:11:"me_lastname";s:3:"mzh";s:11:"me_username";s:3:"mzh";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"mzh";s:14:"me_unique_link";s:32:"eab54c7fb6a1daabe6b845752b0b5234";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:16:"ijul89@gmail.com";s:16:"me_register_date";s:19:"2016-04-20 14:07:58";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"ba64d4c8f84e926af9e9955542eff18c";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;}'),
('564513b38b064684a5d96e3d2f2c1469', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232003, ''),
('56a522431c2dab7e6e9b416034904410', '180.76.15.148', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461220511, ''),
('56c7ca86a581c657cf08b658044b3bc4', '180.76.15.20', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461141923, ''),
('56f35d1c1dadd894ebef88814ff62da0', '66.249.65.195', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461107945, ''),
('58c0a96417c4d62da4cb3b02586253e5', '42.99.164.60', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461127758, ''),
('58e8efa699b01ce4ef36365e9cef44a4', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2;', 1461188451, ''),
('5c3e0d7c6154a923522097982c4e222c', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461108918, ''),
('5caf212df1ec2d49def072a79bc1cd84', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1462463317, ''),
('5ce9ba007aea2b4c13843faf9279fbd6', '180.76.15.144', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461179167, ''),
('5d46c2c6fdd2f2121a122b565e1dfffc', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461201329, ''),
('5e9b15c2ca7a3d7a6f8ec8cfd439741d', '130.193.51.34', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247724, ''),
('5ed3eb010a5faa9e3f1489dcf2c79c6a', '180.76.15.162', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461127524, ''),
('5f095e41176552ac5de9b3dd16554a3a', '141.8.142.82', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247725, ''),
('5f3bc131a1e20f2810a5de47e73a9c41', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232010, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('5f942531feb56ee4bf686f169c1e5a03', '66.249.66.30', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461250327, ''),
('5fbd19f57150dfbcb657a77498ace361', '173.252.106.115', '0', 1461244032, ''),
('6032a73b6be9a710511aaf6b2114f019', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231965, ''),
('605e1f8e36a9373f828e7b3aaefa3e9d', '180.76.15.156', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461127598, ''),
('60a2d76a3458048ae2c60c1e905f95ef', '207.46.13.19', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461187390, ''),
('61a22f6c8fc98c87e812ba4fe6344652', '139.195.10.210', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/53', 1461152831, ''),
('624561a7063c2f3b0b2ffdf7bb60b346', '45.33.59.157', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461134175, ''),
('62c165ff4be00ea73e7cc1cf5fc3a3a1', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461188321, ''),
('634cdd281d32cd5fc717c9b4c7eaea1a', '180.76.15.162', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461154585, ''),
('6398996e027370a3e2a4c96522c3fe8d', '178.63.123.105', 'python-requests/2.9.1', 1461104413, ''),
('63a32b328917882e5e1e5742d2ef4177', '64.246.165.140', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.', 1461256675, ''),
('64f24f55ab99d0e1a3d1e4e7a794bfc1', '180.76.15.34', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461149089, ''),
('6580e41326ddbe38a838739375935de6', '141.8.132.32', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247723, ''),
('660cbb60d290cc8662aef0d692a7030f', '45.55.133.227', '0', 1461155551, ''),
('6641ce48167c318273c61ec208418c98', '207.46.13.125', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461169923, ''),
('66757c55a69d597dca7f9972e3d6db71', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461277470, ''),
('668abafc752dee0a691e8b4a501d0f71', '180.76.15.15', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461151736, ''),
('66c24dba1526fc4dcf2259252daa024a', '66.249.66.165', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461246092, ''),
('66e2d504a3e03f3fa1f13f9dee9c37cb', '69.30.226.222', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;', 1461192641, ''),
('673145e286bcd088788856ec33fff120', '180.76.15.143', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461289663, ''),
('6746227ce19a1f73345bd913255b9fa4', '164.132.161.55', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461103290, ''),
('67e4a0cca5924238bbb081a883105873', '180.76.15.32', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461102055, ''),
('686bd6d0af8d054da030a7055c41762d', '60.52.24.225', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461290827, ''),
('6909b2ba299d335439bfbad7119a7306', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1458531825, ''),
('697ac2dbe830353ea47d49c7a102b053', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186643, ''),
('6a0d2534c5cf56888ffed7f3ebd33e8b', '184.168.152.7', '0', 1461242311, ''),
('6afbeb33e8e2cc2a1fd3c9ba0bc9c7ac', '91.209.51.22', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461154910, ''),
('6ce591e7b654851b29bf63bd9a4c2919', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461267074, 'a:50:{s:5:"me_id";s:1:"1";s:8:"me_image";s:36:"99271c3805aa830738485064b3707cc9.jpg";s:12:"me_firstname";s:12:"DP System HQ";s:11:"me_lastname";s:8:"Dinarpal";s:11:"me_username";s:4:"dphq";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:200:"http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://local";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:11:"me_facebook";s:36:"https://www.facebook.com/kidzeclipes";s:10:"me_twitter";s:31:"https://twitter.com/kidzeclipes";s:12:"me_instagram";s:34:"https://www.instagram.com/umaq_89/";s:13:"me_googleplus";s:55:"https://plus.google.com/u/0/110272712192644641706/posts";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:11:"019-9737579";s:9:"me_wechat";s:15:"+6 019-973 7579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T03:30:18+08:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:18:"Tuffah Informatics";s:10:"me_reg_num";s:11:"MA0182480-H";s:15:"me_company_doc1";s:36:"8dbaa9d1e7f114245d186c546ab9a7d6.jpg";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:36:"25e878659a4d2c4c9f76576fa1656530.jpg";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"DP";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('6e436790d8a71bf48f626ccb43fc5a9f', '157.55.39.71', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461150359, ''),
('6ea18b32602f96bf6ec63c52b7e67ae2', '82.193.127.15', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461299100, ''),
('6f726e02124385add3255258089d4656', '130.193.51.30', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461255825, ''),
('702199c8f409952ee1f670877903c4c7', '180.76.15.19', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461133657, ''),
('7103aa51ef04ab49a18718936bc2404f', '66.249.79.118', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461196148, ''),
('7195e22f725cb5a96de0229029ca1f19', '82.193.127.15', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461299108, ''),
('71d49a3db78983f29a131093664ffca9', '66.249.65.37', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461135405, ''),
('73bd39787b6bd92b51662ad377f7eae7', '200.178.253.165', 'Mozilla/5.0', 1461111318, ''),
('73bfb0a5efd8e5f8140dcfb2b90c5e06', '180.76.15.134', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461198945, ''),
('747c48c3b61a6fb149a096490d97891b', '180.76.15.25', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461274848, ''),
('74fe2c8fcf56c8ab10d650f80bd786fa', '180.76.15.15', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461160174, ''),
('7616bf712c3c534eebd0a62b3d83e122', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461249894, ''),
('768a6dece4c72b5d362b0930c589104c', '1.9.209.50', 'Mozilla/5.0 (Linux; Android 5.1.1; D6503 Build/23.', 1461117319, ''),
('76fa1e46d27e970fad7fc9f49adc7774', '115.28.7.221', '0', 1461171052, ''),
('77b1ec60e8c4e5a5d20fd0cfb2269c97', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1456939331, ''),
('78513c78d4ad47f8297880ba36a9f5fc', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461250110, ''),
('7977b0456de8e66edfbb00c7a4720791', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461260005, ''),
('7a2cee2c763320decb4ae3471929ffa1', '210.186.54.157', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461171764, 'a:1:{s:12:"me_id_parent";s:88:"uaCUIvQX3O8d8WkqNTal9WZfXWKne8gnUUd9kPXMRdCYLlkAY6cDHB61LdfsCk2LpZ97s7bV3mXRUS6XpuorKA==";}'),
('7ba576f5e33d7ff1bd133680a0929bef', '180.76.15.159', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461134923, ''),
('7c2ea5667685c30c2d725e0009473e5f', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461188318, ''),
('7c3aab291a33a57b82754d1e067e05cd', '66.249.66.58', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461252532, ''),
('7c7169e0964e7377a29b3634bcf826da', '207.46.13.10', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461172341, ''),
('7c82b42aadf4a5c527e084ee47b41443', '180.76.15.29', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461311388, ''),
('7ce0567d0bfe4846db7e50ae87685020', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461271153, ''),
('7cf43f697b2358b7a7e4de91a2404342', '103.1.71.55', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461311503, ''),
('7d63755c6c16456bd96de1acb56fab71', '207.46.13.57', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258656, ''),
('7d9cb69d7e09b5aea3819fa6cc84e6ca', '1.9.100.143', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', 1461203415, ''),
('7daeaf375e962aad04b75978813cb605', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160568, ''),
('7dd04dff9d18d12a1f259a570af1180e', '66.249.65.34', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461143165, ''),
('7dd4b6d3c6d4265857935363cb6d0fcc', '141.8.142.82', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461134992, ''),
('7e15343472c078c98df2bd088b68df02', '113.210.54.28', 'Microsoft Office PowerPoint 2013', 1461135720, ''),
('7ed8b00738a043b56568b5678e2e4e59', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186643, ''),
('7fd71ac2451d160ad7fbf15cc5c2dfd5', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231997, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('80daff6acf2dc380d30db599fa022b3d', '207.46.13.129', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461315063, ''),
('84506f56bac5de7591c609b6ecc59070', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231976, ''),
('84e62e013c55656176401f73265583e9', '183.171.18.77', 'WhatsApp/2.16.13 A', 1461232123, 'a:1:{s:12:"me_id_parent";s:88:"4vb5b1W9H484ES0uyOihDWejxP6FVHabSbpY5EyRjazmV3dc_th4c7gyWtqbg7NOawQfmnLtFgUXEIpuRv9Abw==";}'),
('85cb40cb21e1ae7e2708a009238b5e11', '180.76.15.16', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461156592, ''),
('874bd9ada6dc157549959c5c678b1546', '157.55.39.104', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461130804, ''),
('87752388f473ed913efa8cd19db3e25a', '141.8.142.82', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247728, ''),
('87cefc8b267e2b3a2db86abda244e689', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160566, ''),
('884e0bfe5fea55869475a1e11540d044', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160551, ''),
('88536e8ec8197d41d046b4274c1adb9c', '66.249.65.125', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461118668, ''),
('88c7e9edcb4a8d3db82fa30747c60b9c', '134.249.55.100', 'Mozilla/1.22 (compatible; MSIE 2.0; Windows 95)', 1461188429, ''),
('89314019ec20c50a0dc31e17149a6e28', '66.249.65.76', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461127224, ''),
('8a3529a486bfb30ad60819a64225e25f', '66.249.65.119', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461149829, ''),
('8bb823fe7d92ef404fa50f170030a505', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461394610, ''),
('8bf9349589fb5949d7604d845905f214', '173.252.115.11', 'facebookexternalhit/1.1', 1461231336, ''),
('8d6b09afabd5dc49b16649eceb1f274d', '45.55.133.227', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;', 1461155538, ''),
('8e819c8f6be277adb97ea25ef2565699', '173.252.90.243', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461249132, ''),
('8ec3703d65bb37a86d1ee648056be354', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461166204, ''),
('90662f9505fc9e8835d85b100cec49dc', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1462441073, 'a:1:{s:16:"flash:old:sucess";s:40:"Activation is successful, please log in!";}'),
('91094135018c091423887013b4edc59b', '115.134.161.155', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (K', 1461313505, ''),
('91202cccd39aa9d792669db49ab6bda5', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231994, ''),
('917bb32e6318de0f767cd1921315123b', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461262905, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T02:12:42+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('9194a48e0ed1e6de1fa9aaeb971e1b50', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232000, ''),
('91bd25ff26ca6656daed302b95552813', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461318913, ''),
('9295c5f12a0e58e7353d14781076fd45', '180.76.15.158', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461198895, ''),
('935f48d42662013be14ad7d3148d7ae9', '180.76.15.158', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461274790, ''),
('94fd77048d081c0c6b467b7676a0dcb6', '222.186.34.155', '0', 1461288453, ''),
('953f7f8d22aa361f1636a3e45466e84a', '54.157.10.203', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko', 1461133076, ''),
('956f96180a76f371c7a4393801565821', '115.134.161.155', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (K', 1461220691, ''),
('95fedf57aa0c4be7f200718c2f935001', '180.76.15.25', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461217110, ''),
('9701b1d42fe375c4ba01d304adbf3e44', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461210185, ''),
('98a1884356d41de3724ef65d186efe23', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461206882, 'a:51:{s:5:"me_id";s:1:"3";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-20T23:44:39+08:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;s:12:"me_id_parent";s:1:"1";}'),
('99dbb70cbe124b7c1d48ad2ac9556305', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160557, ''),
('99f31ffab74e597f460d8d9754f2fce9', '216.145.11.94', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.', 1461257073, ''),
('9b0b9e7704ff63b2ac0f16eb674e76b5', '216.55.186.43', '0', 1461288516, ''),
('9b67540b2d0c4fff3abf4f4d44eb62f1', '66.249.77.8', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461205506, ''),
('9e76a6c55887115279bf3866a8bb067b', '180.76.15.6', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461246504, '');
INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('9ed80661d089bc51f09e21508bf4307c', '66.249.71.180', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1459089235, ''),
('9f53f93cf07acb0b2107c017f6ed6fe3', '45.79.87.104', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461102961, ''),
('a07e31ef9312a7d82bd00047a3c2caf0', '141.8.132.32', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247724, ''),
('a118cbba6935c6c0665e35369764d76a', '211.123.208.20', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100', 1461240937, ''),
('a2686fe65802826bf5b891d24be052cc', '180.76.15.140', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461257239, ''),
('a274cbbbbe46a0976fea8694e1c7d6f3', '180.76.15.22', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461156509, ''),
('a3759bd91a7c168299c755d901f68ada', '91.194.84.106', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461298738, ''),
('a3a46de65913ebfb4b35398830e5316f', '66.249.66.33', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461247763, ''),
('a4c5f001f23b2efa52267e27075894bc', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461209789, ''),
('a4f182f54a1f79607f89b44257c18175', '66.249.66.50', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461285916, ''),
('a576c30d9bad0619ebbf625c2c8d4758', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160575, ''),
('a63de2e00799cbb796209302859e1f65', '91.209.51.22', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461154914, ''),
('a67858de49cd6b2f21b0d69d3b135554', '66.249.77.14', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461209206, ''),
('a69ff7a9732d57bd754e641366ba3d3d', '173.252.74.109', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461231328, 'a:1:{s:12:"me_id_parent";s:88:"aeDwnYlApUE0eS4tD_OQnh7fpGpZlyWiu2bNps-sDAVE8qjOJvFyhuMhFqahhCwy4d6uJ2Ey4uDg3_bHy7MjPw==";}'),
('a8abb5f26fd7c82aa7e013c88877e908', '157.55.39.163', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461260004, ''),
('a8dd08abe42342a31b86f19075382b32', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232007, ''),
('a909d66b1931fbce5787a5b7621c6247', '144.76.29.162', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461110658, ''),
('a921b25451f924bf3c0ef69f94f091ef', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461262911, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T02:21:49+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('a959096695e2e8732eb95e7344603178', '93.115.95.201', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', 1461282644, ''),
('a97c905faca8f9a11f6779414aa99618', '180.76.15.27', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461299424, ''),
('aa2cb056144d0975ea2c125cd4ce5b93', '180.76.15.28', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461214033, ''),
('ab40335b122ede9865239de1c0a5e76b', '182.118.25.214', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;', 1461304417, ''),
('ac0bf67e10cf2a1eab1b384ce605db68', '180.76.15.141', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461210116, ''),
('ac39802816624111d805867db47c460a', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232044, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('acaab285c83e9953424d68c8b15a40fa', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1459437902, ''),
('ace46b4029776bab6e9a8020d9d9991b', '157.55.39.218', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461262138, ''),
('ad2da2c5e6116ee18616c2ad2e3ac21a', '178.63.86.11', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461204122, ''),
('ad2e51cec180caa894e9dec4214bfc52', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232011, ''),
('ae69fed5ccd98d23f9e803cc6bd5ec91', '141.212.122.161', 'Go http package', 1461098658, ''),
('aec81345fe7be82fe662004b9c8ed475', '103.1.71.217', 'Mozilla/5.0 (Linux; U; Android 4.4.2; en-gb; SM-G3', 1461108563, 'a:1:{s:12:"me_id_parent";s:88:"jAORs0iXTCW1CT75hSpDmDsv_SluIF4DGczUMtFJkBFu-PYs_abfPnMc8kMFIH_VzSEQTGsXgvskdELtiyRBNg==";}'),
('aeea8b7dbac3fb992d507deecc6f03f5', '180.76.15.136', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461192322, ''),
('af206d75ebd457da0ab2a2101739b265', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186643, ''),
('af691c9ee9abeaf0680da7abaea1285a', '118.101.24.30', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', 1461129260, ''),
('afeb41f506ca0d80a78ff8463e9f6021', '113.210.54.93', 'Mozilla/5.0 (Linux; Android 5.0; SM-N9005 Build/LR', 1461231863, 'a:1:{s:12:"me_id_parent";s:88:"4w4Cl_Aeg6IaC-4tFimD9aQzF1a7QZd0wW2v2cWmFIaotb1HH1EIxTyEWk1I1vbiuvPGKOUIjv43hgy7Jqvkag==";}'),
('b0b7e2ff2c974a95b8dbf8fdeb18f42c', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1462383670, ''),
('b20ff8a292feef312d991cb21856bb7b', '180.76.15.149', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461285245, ''),
('b23c4fb7df215a37d39169314f3d3761', '115.164.218.117', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac ', 1461249037, 'a:51:{s:5:"me_id";s:2:"16";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-21 18:07:10";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-21T18:09:33+08:00";s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;s:12:"me_id_parent";s:88:"VIDaYB9QpHzlnSpGkaw1On2iKGR8NOlOx1ajwnWgQCwXOFjz1xJ6VGk_myrLn2caYYPYG5exVhJqpnXg24pqRw==";}'),
('b24029d9a5c321ee41717b9ffc791954', '220.181.108.94', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461316483, ''),
('b3cf548230e6c6df6049eed79050f55e', '180.76.15.142', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461101991, ''),
('b3f67c89893cc20fc76b7cd7a23364ee', '180.76.15.14', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461231543, ''),
('b4243f78347fcfcea8755ac7bdeb30d7', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160581, ''),
('b449b87e2cdfe6f92f1fcc18edb10e61', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186643, ''),
('b58d5d2d7659d27da76404569d446853', '180.76.15.13', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461296546, ''),
('b5a2279a78054041beb3503f989e2380', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231962, ''),
('b5f62679d72c752054bb1b10e030dcbc', '1.9.209.50', 'Mozilla/5.0 (Linux; Android 4.4.2; Lenovo A5000 Bu', 1461117926, ''),
('b75efb9d3539b81a414d19a27941b36a', '103.1.71.55', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461310243, ''),
('b77e86940f0700ff3ccc8e38adea45c0', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186644, ''),
('b83aeeba18e3cf0b7c76bc8f0e8f51d2', '91.209.51.22', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461154912, ''),
('b9aefa71f1597cbe7d62f862ca8906a7', '109.236.94.216', 'python-requests/2.9.1', 1461245462, ''),
('ba509e7c81c1c31f4c94fb8d89579283', '157.55.39.218', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461219616, ''),
('ba593d74f46acc7bc0501a432dc84967', '113.210.54.28', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 10.0', 1461135643, ''),
('bb586f4ab165ba89e53c969bacb7db3b', '180.76.15.160', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461220462, ''),
('bb93793033ec3c422b4a5dbbc0f80776', '180.76.15.23', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461145166, ''),
('bd703c95f4e36cfb4c0fcb3aaeba3160', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461262911, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T02:21:49+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('bd840eeb729bbe754a1e0eb76f6426ab', '178.255.215.70', 'Mozilla/5.0 (compatible; Exabot/3.0; +http://www.e', 1461199640, ''),
('be92b29add37c5ff292809ce9e2ee75c', '134.249.55.100', 'Opera/9.0 (Windows NT 5.1; U; en)', 1461188427, ''),
('bf86d96ff6f941fca6ae8dfa67e0c33a', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461188320, ''),
('c05a34393656d8ee0b2523f008589897', '130.193.51.30', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461146373, ''),
('c24b444e50370b667da4159bd7125d69', '45.79.89.188', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461273665, ''),
('c257a310c86b9bd1e678af64e895f389', '115.134.161.155', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1461126757, ''),
('c2a58bb3dafc1eee1fd210e63ac075a5', '183.171.26.140', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac ', 1461164329, ''),
('c2ad549b22c7e5166d601f89e0b766f6', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186645, ''),
('c2d770afdd8bb7445fd55eaacbd1175d', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232081, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('c305aeaaa076919df4d3561a22e659cd', '45.79.89.188', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461318150, ''),
('c314cd0c85a4fe7aca1ea783d89ae513', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232045, ''),
('c3eceee7b23905a631c748c38c309a2d', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461259102, ''),
('c417c381530868b9bf27679dd09071e2', '89.163.148.58', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461115281, ''),
('c4c952de823b8a0258152f1d48f82f77', '115.132.21.250', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:46.0) Gecko', 1461125037, ''),
('c4f4009b95c9487d401618f8960405b6', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461262911, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T02:21:49+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('c5d0c36a29fea8e692943f4d49ab8287', '180.76.15.150', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461278780, ''),
('c5f550e189fc35901011e280b545e3b1', '157.55.39.5', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461161245, ''),
('c616d89faf91e15f1e93ca17a5e42d7f', '82.193.127.15', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461299111, ''),
('c67b540b1e324032237c9ef3284ba803', '66.249.79.97', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461182377, ''),
('c744fbc6843d2e95fa9184470483675e', '5.248.253.133', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows XP)', 1461159325, ''),
('c75472b841e6043e957cfeabbed59511', '180.76.15.138', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461317903, ''),
('c76d04498c9f03ee257aee76b2714053', '66.249.66.36', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461290344, ''),
('c899955dcf0fa065582e21b6ab944dd2', '45.79.81.142', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461224716, ''),
('c8b0a2c61f7dddcb4f5e3d5d78123d0a', '173.252.115.12', 'facebookexternalhit/1.1', 1461231334, 'a:1:{s:12:"me_id_parent";s:88:"RglFzVZPSGk15Nb-d8brCz2jXiCjd1Ogfh-znqXWo7H6cwFwy0aXvw51nFSLt21qnSuaoW8MoxyK4PmggjNkjg==";}'),
('c8be9a95fefa727e175dd04784e9ec58', '69.30.213.82', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461230862, ''),
('c947e372c3e25a7cb7db8fe21f280fe5', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186644, ''),
('caa8b9d4e57105a619c3c94cc24d5c82', '180.76.15.25', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461306880, ''),
('cafbc0599afc48e2daa0a6ad4de23c19', '180.76.15.155', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461112445, ''),
('cb0a0da291a3f7f182734441df897be6', '14.1.193.236', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461119150, ''),
('cbac1b6d161f94efd40256c89e651155', '180.76.15.140', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461289746, ''),
('cbc63e8e8c03b0558e9cb8a4c9d7eff1', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461394619, ''),
('cbcc8866dc2b91cb8eed685af4d97e92', '66.249.66.55', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461268737, ''),
('cbf271222bb03b22a88be22abe11cfdf', '45.79.89.188', 'Mozilla/5.0 (compatible; Uptimebot/1.0; +http://ww', 1461179366, ''),
('cc798c3f577f365f5679c8867c8292db', '40.77.167.45', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258647, ''),
('ccbec6021b02c95d1e5134a2fc356fa4', '216.218.206.67', '0', 1461235903, ''),
('ccc2d8760eb77fef313ddab3c0cf4e81', '130.193.51.10', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1461247720, ''),
('ccd779313104513e35867b1d6c40be72', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186643, ''),
('cd3caf3d85554cf60a9ae5b27e585d33', '180.76.15.30', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461242195, ''),
('cd65f9760179f35eaccaee517aacee65', '207.46.13.26', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258678, ''),
('ce088069dbc3a0649afec263601e9b00', '66.249.65.125', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461130747, ''),
('cffdfa8a93e96e0baaf71e57cd224a01', '66.249.66.30', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461260075, ''),
('d0679dea821bd72333688b3e8ab9d835', '180.76.15.20', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461145227, ''),
('d0d12d5f259f88bd4114920050fcd05f', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232005, ''),
('d106c07cac73fe674a4f785b187f5aad', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232004, ''),
('d120e5cb244f42f65f60399fd07fef65', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461244599, ''),
('d2908b2af5b6151f62f336a3bcc29d3c', '69.171.228.121', 'facebookexternalhit/1.1', 1461231334, 'a:1:{s:12:"me_id_parent";s:88:"dpczOaiwDlhve-uv2Oo4pNe-cM6aePxquCnvZNMkCnayJK_XiDWINU_zWFsbHf9pRlwN2qqnx4xd93ojdCMdqw==";}'),
('d2a721fd7947ba73275257c8096ebc6d', '180.76.15.9', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461240790, ''),
('d2ee2f1062c949f03ddd0059f11541c4', '180.76.15.11', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461188430, ''),
('d4af7a632c8a5dd2a7e0978e8dbce368', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231997, ''),
('d4cd065fd893d32f1f51444a95c804f6', '180.76.15.25', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461155145, ''),
('d56c0ea5a76a28619abf942cd42cd8e5', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232007, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('d607f10d0b5db9f5fd6dca0bcb9d9434', '175.141.171.212', 'Mozilla/5.0 (iPad; CPU OS 7_0_2 like Mac OS X) App', 1461233373, 'a:51:{s:5:"me_id";s:2:"16";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:5:"arash";s:11:"me_lastname";s:5:"arash";s:11:"me_username";s:5:"arash";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:5:"arash";s:14:"me_unique_link";s:32:"81b9a3538d93a7623ad0e9bf1347d137";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:22:"arash.private@live.com";s:16:"me_register_date";s:19:"2016-04-21 18:07:10";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";N;s:12:"me_magic_num";s:32:"248dfd4fff3169f86edec2930684bfd4";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"msg_login";s:153:"Thank You for choosing Dinarpal for your platform <br/>Please fill in all your personal detail<br />and deposit your money for your account verification.";s:9:"logged_in";b:1;}'),
('d7351b8ee5f25675ad596ead035ebcef', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232000, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('d789f062681a81d231cf03fb2902bddc', '103.198.52.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461234466, 'a:1:{s:16:"flash:old:sucess";s:40:"Activation is successful, please log in!";}'),
('d7f041768d00dd1318697762468030e0', '103.198.52.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1459089450, 'a:50:{s:5:"me_id";s:1:"7";s:8:"me_image";s:36:"007670359b0f05b910f399488e2ffcea.jpg";s:12:"me_firstname";s:3:"asd";s:11:"me_lastname";s:3:"dsa";s:11:"me_username";s:3:"asd";s:11:"me_question";s:9:"Who am I?";s:9:"me_answer";s:12:"Jack Sparrow";s:14:"me_unique_link";s:32:"7815696ecbf1c96e6894b779456d330e";s:11:"me_address1";s:0:"";s:8:"me_city1";s:0:"";s:9:"me_state1";s:0:"";s:12:"me_postcode1";s:0:"";s:11:"me_country1";s:0:"";s:11:"me_address2";s:0:"";s:8:"me_city2";s:0:"";s:9:"me_state2";s:0:"";s:12:"me_postcode2";s:0:"";s:11:"me_country2";s:0:"";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:3:"123";s:13:"me_birth_date";s:10:"1998-10-02";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:11:"facebok asd";s:10:"me_twitter";s:12:"twitter saya";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:16:"umar@tuffah.info";s:16:"me_register_date";s:19:"2014-12-13 19:45:41";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-03-27T22:34:48+08:00";s:12:"me_magic_num";s:32:"ec623adec13773d99685c93053d3228e";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('d861ad7c6a02038e1730c82a706018cb', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461262911, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T02:21:49+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('d9420b44162346607302a24193ca4630', '74.91.23.108', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;', 1461172903, ''),
('d966698e005c6ab84113a04536271b4e', '180.76.15.26', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461257164, ''),
('d9cfe8e10f3b072942adc46c195e8d3f', '66.249.71.188', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461200586, ''),
('d9f3d6f33f8fa762635df8c16f124b50', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461267106, 'a:50:{s:5:"me_id";s:1:"1";s:8:"me_image";s:36:"99271c3805aa830738485064b3707cc9.jpg";s:12:"me_firstname";s:12:"DP System HQ";s:11:"me_lastname";s:8:"Dinarpal";s:11:"me_username";s:4:"dphq";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:200:"http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://local";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:11:"me_facebook";s:36:"https://www.facebook.com/kidzeclipes";s:10:"me_twitter";s:31:"https://twitter.com/kidzeclipes";s:12:"me_instagram";s:34:"https://www.instagram.com/umaq_89/";s:13:"me_googleplus";s:55:"https://plus.google.com/u/0/110272712192644641706/posts";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:11:"019-9737579";s:9:"me_wechat";s:15:"+6 019-973 7579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T03:32:01+08:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:18:"Tuffah Informatics";s:10:"me_reg_num";s:11:"MA0182480-H";s:15:"me_company_doc1";s:36:"8dbaa9d1e7f114245d186c546ab9a7d6.jpg";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:36:"25e878659a4d2c4c9f76576fa1656530.jpg";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"DP";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('d9f43cd65430117d4bc55429883cf2cc', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186645, ''),
('da37a4a54995c65307b1240cf59b588c', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231979, ''),
('dac571ccbaa6d9a587bff4d026608a48', '103.198.52.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461320047, 'a:50:{s:5:"me_id";s:1:"5";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:9:"God Admin";s:11:"me_lastname";s:6:"bujang";s:11:"me_username";s:8:"godadmin";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:2:"b1";s:14:"me_unique_link";s:32:"edbab45572c72a5d9440b40bcc0500c0";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";s:0:"";s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:0:"";s:10:"me_twitter";s:0:"";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:18:"staff@dinarpal.com";s:16:"me_register_date";s:19:"2014-12-28 07:28:05";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T18:11:42+08:00";s:12:"me_magic_num";s:32:"9512afcb3f0fde463ddf8e476a76be16";s:5:"ml_id";s:1:"2";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"GA";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;}'),
('daf992b97fa1f55e39312f9cf0af6c20', '66.249.66.55', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461252902, ''),
('db96823de6d7c0e7e44b9edc07ec513c', '115.164.60.84', 'Mozilla/5.0 (Linux; Android 5.0; ASUS_Z00AD Build/', 1461232159, 'a:1:{s:12:"me_id_parent";s:88:"RwBmBzAdadtfXS7CQq-KJID7PD_alZ6LwTkEHhXHb3hZc1oPIAo4c_M7IMKrq6pQhQ-9eIiaWDLh3scDrX0B7g==";}'),
('dbd38df54191feefb9fc7d3d55f01f11', '208.115.111.74', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461270094, ''),
('dcce830d8a3db287a6042f6781fbed4a', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461394613, 'a:1:{s:15:"flash:new:error";s:24:"Wrong username/password!";}'),
('dd88f495634e7d8dc122664a5b79c018', '113.210.54.28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', 1461135649, ''),
('ddcb69fd69eadd257b181a297c798270', '66.249.77.14', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/', 1461221613, ''),
('de4b6d4af28903c0818855c18750cb37', '66.249.66.61', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461244625, ''),
('de6cb8ac7ab15697cea7b26e168d4c42', '68.180.230.178', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461286723, ''),
('def5bf6f0ab1da4d7f1cf61355dc9d74', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461244600, ''),
('df64480f1b217a46e1ca06a7d4fa7cd4', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160579, ''),
('df6d23f2d319349aac7c7734383063b3', '210.195.155.54', 'Mozilla/5.0 (Linux; Android 4.4.2; ASUS_T00J Build', 1461286420, 'a:1:{s:15:"flash:old:error";s:158:"Password validation failure ( your choise is weak ) <br /><br />Password must include at least one CAPS!<br />Password must include at least one symbol!<br />";}'),
('dfbeedcdb02901e5c8696abb41ba307b', '220.181.108.176', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461203764, ''),
('e03b71f10251a7376674dd8d5ebbc1ca', '180.76.15.156', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461253271, ''),
('e04d66b06007a185b0404e1b68d20f50', '123.246.120.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', 1461167107, ''),
('e165e90c2fa4556608aa58025298be4e', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160544, ''),
('e187ec14bfc45697f00e748ae176c676', '180.76.15.15', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461203282, ''),
('e1d80d2a732d05459605116a6c207df3', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2;', 1461188452, ''),
('e295e6b1a01bd3dd41a7f9dc94bc7522', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231997, ''),
('e340b44e2cc44f79dcd4f4c9e41771de', '69.30.236.2', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461316067, ''),
('e3414e8692274b94d14be6da1a4b8eb1', '66.249.65.40', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461139446, ''),
('e3c6c9ae3559dd5cbf7a8aab81b66173', '178.137.90.202', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0;', 1461188281, ''),
('e3cd4dfa745f36340a2220c5bf4c87c2', '66.249.77.51', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461156306, ''),
('e59a82af403785226ee2baaeb57dd0e4', '115.134.161.155', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (K', 1461319287, ''),
('e5aa28b03c1e916ca4cd06d8b2d64413', '66.249.77.14', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461154096, ''),
('e71384ef78b95a79eac345989e1b3bcb', '66.249.66.33', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461310325, ''),
('e7279b7cb9ff88db9997b8862d025eae', '115.134.161.155', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (K', 1461291423, 'a:83:{s:5:"me_id";s:2:"12";s:8:"me_image";s:15:"default-img.jpg";s:12:"me_firstname";s:11:"nurulizwani";s:11:"me_lastname";s:11:"nurulizwani";s:11:"me_username";s:11:"nurulizwani";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:11:"nurulizwani";s:14:"me_unique_link";s:32:"69091538608efddbbc47fbdd828de9fe";s:11:"me_address1";N;s:8:"me_city1";N;s:9:"me_state1";N;s:12:"me_postcode1";N;s:11:"me_country1";N;s:11:"me_address2";N;s:8:"me_city2";N;s:9:"me_state2";N;s:12:"me_postcode2";N;s:11:"me_country2";N;s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";N;s:13:"me_birth_date";N;s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";N;s:10:"me_twitter";N;s:12:"me_instagram";N;s:13:"me_googleplus";N;s:14:"me_whatsapp_no";N;s:11:"me_telegram";N;s:9:"me_wechat";N;s:8:"me_email";s:20:"izwani5493@gmail.com";s:16:"me_register_date";s:19:"2016-04-21 11:39:27";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-21T11:40:29+08:00";s:12:"me_magic_num";s:32:"26554fcd9af2a829aa8f95e0f00fa656";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";N;s:10:"me_reg_num";N;s:15:"me_company_doc1";N;s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";N;s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"0";s:9:"logged_in";b:1;s:7:"de_code";s:16:"VoWec2uvnXD0Ntym";s:16:"admin_account_no";s:14:"04042010006119";s:18:"admin_account_name";s:31:"Koperasi DinarPal Melaka Berhad";s:9:"de_amount";d:1202.1199999999998908606357872486114501953125;s:11:"deposit_fee";s:4:"2.00";s:7:"gst_tax";d:0.11999999999999999555910790149937383830547332763671875;s:8:"tr_notes";s:0:"";s:12:"payment_temp";a:9:{s:5:"ft_id";s:1:"4";s:10:"me_id_from";s:2:"12";s:8:"username";s:9:"Shafira09";s:8:"me_id_to";s:2:"20";s:5:"pt_id";s:1:"1";s:5:"at_id";s:1:"2";s:13:"table1_length";s:2:"10";s:5:"v_ids";a:1:{i:0;s:4:"2002";}s:8:"tr_notes";s:0:"";}s:15:"me_rec_fullname";s:19:"Shafira09 Shafira09";s:15:"me_rec_username";s:9:"Shafira09";s:7:"pt_desc";s:5:"Goods";s:7:"at_desc";s:15:"E-Gold Reserved";s:12:"amount_trans";s:6:"400.00";s:15:"send_fee_amount";s:4:"0.00";s:12:"total_weight";i:2;s:11:"img_deposit";s:0:"";s:11:"arr_deposit";s:0:"";s:18:"session_withdrawal";a:6:{s:5:"ft_id";s:1:"5";s:10:"me_id_from";s:2:"12";s:11:"tr_datetime";s:19:"2016-04-22 12:27:07";s:5:"at_id";s:1:"1";s:9:"tr_amount";s:4:"5000";s:5:"bc_id";s:1:"1";}s:5:"tr_id";i:104;s:11:"tr_datetime";s:19:"2016-04-22 15:06:44";s:7:"bank_to";s:11:"12345678910";s:11:"bank_holder";s:9:"SHAFIRA09";s:9:"bank_name";s:15:"Maybank Sdn Bhd";s:9:"tr_amount";s:8:"5,000.00";s:8:"ft_price";s:4:"3.00";s:6:"bc_fee";s:4:"2.00";s:10:"amount_get";s:8:"4,994.70";s:12:"gs_sub_total";d:1998;s:11:"gs_discount";d:222;s:6:"gs_fee";d:66.599999999999994315658113919198513031005859375;s:6:"gs_gst";d:3.99599999999999955235807647113688290119171142578125;s:11:"gs_datetime";s:19:"2016-04-22 15:09:14";s:7:"gs_amil";s:21:"Ustazah Amira Nadirah";}'),
('e79ec3e8e85bfb4a6bf3965c8bd27258', '175.139.164.173', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461117174, ''),
('e8431e605a07c470ef4638e93797ef70', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1459402249, ''),
('e8a8570364e0944ce3d1952371a2b824', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1459261361, ''),
('e942c10622d79b4b72abd3d797ea358c', '207.46.13.26', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258676, ''),
('e96590c53c9bf2946f8070e3a0bfc6e7', '180.76.15.156', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461278704, ''),
('e9c7b78cbb4b522ebb057f118b1d75cf', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232003, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('eaf82806c07a0a6db44b51852ea041ea', '178.137.87.242', 'Mozilla/5.0 (Windows 10; WOW64; rv:41.0) Gecko/201', 1461170351, ''),
('eb95455ba3f005cb10857dc27b0d8d3a', '66.249.66.55', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461306256, ''),
('ebf771234d9b85df9c9fefdf1e6d885f', '66.249.77.51', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1461202354, ''),
('ec8ae10f069eb171990b9400cf225c5a', '157.55.39.218', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461264640, ''),
('ecfd97629de7863970dded09abcd7dd2', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461528375, ''),
('ed2412aec1c6db6a15f300ee3147c2ca', '180.76.15.149', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461123680, ''),
('ede33ab7343b3a406868214a04d1a139', '74.91.20.194', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;', 1461180659, ''),
('eef202c327d1c973ce575aca5e1678f2', '115.134.161.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', 1461229161, 'a:50:{s:5:"me_id";s:1:"3";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-21T10:48:02+08:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;}'),
('efbefdb7c7826b1f266405a3d9d4c5c9', '208.115.113.93', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.op', 1461110706, ''),
('f00b7106b48343452a4afad6a0e9e591', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232079, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('f1202af98e67104b69a0934d1c8d600b', '43.252.216.136', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', 1461310239, ''),
('f1a1dead35383c4b33fe4128f1559234', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186644, ''),
('f239fd5aff35e6b032ad7d20572888d8', '134.249.55.100', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 95) Ope', 1461197229, ''),
('f299308256bd968054c5cde653f1b7c1', '5.9.83.211', 'Mozilla/5.0 (compatible; MegaIndex.ru/2.0; +http:/', 1461160571, ''),
('f30bd854548f742217437e67ffcd87f5', '138.201.16.71', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.', 1461223709, ''),
('f5c3589800b15802f48a55b70b2b1efb', '211.167.85.2', '0', 1461295530, ''),
('f67f5c570182ee36180af44a100e547d', '1.9.102.21', 'Mozilla/5.0 (Linux; Android 4.3; GT-I9300 Build/JS', 1461172071, ''),
('f6d925bacfaec40928d675bbfde8aa90', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231982, ''),
('f73bc564d6c8e8580d1ffb58be9838c6', '180.76.15.147', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461311304, ''),
('f8f78b38f9b44074345a09320aae1d56', '175.138.178.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461267106, 'a:50:{s:5:"me_id";s:1:"1";s:8:"me_image";s:36:"99271c3805aa830738485064b3707cc9.jpg";s:12:"me_firstname";s:12:"DP System HQ";s:11:"me_lastname";s:8:"Dinarpal";s:11:"me_username";s:4:"dphq";s:11:"me_question";s:22:"What is my pet''s name?";s:9:"me_answer";s:5:"comel";s:14:"me_unique_link";s:200:"http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://local";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";s:5:"MY001";s:17:"me_driver_license";s:7:"B and D";s:11:"me_phone_no";s:10:"0199737579";s:13:"me_birth_date";s:10:"1989-10-31";s:14:"me_description";s:0:"";s:14:"me_maiden_name";s:4:"Ntoh";s:14:"me_nationality";s:8:"Malaysia";s:11:"me_facebook";s:36:"https://www.facebook.com/kidzeclipes";s:10:"me_twitter";s:31:"https://twitter.com/kidzeclipes";s:12:"me_instagram";s:34:"https://www.instagram.com/umaq_89/";s:13:"me_googleplus";s:55:"https://plus.google.com/u/0/110272712192644641706/posts";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:11:"019-9737579";s:9:"me_wechat";s:15:"+6 019-973 7579";s:8:"me_email";s:21:"kidzeclipes@gmail.com";s:16:"me_register_date";s:19:"2014-11-10 10:12:00";s:15:"me_account_type";s:1:"2";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-22T03:32:01+08:00";s:12:"me_magic_num";s:32:"0d4368f80cd1d149576c068211e89fbf";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:18:"Tuffah Informatics";s:10:"me_reg_num";s:11:"MA0182480-H";s:15:"me_company_doc1";s:36:"8dbaa9d1e7f114245d186c546ab9a7d6.jpg";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:36:"25e878659a4d2c4c9f76576fa1656530.jpg";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"DP";s:5:"sl_id";s:1:"1";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('f9893a99512a274c201c3f38796ddd9f', '180.76.15.160', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1461203368, ''),
('fc3f9680f27018dcce1ea83c321735f9', '46.118.156.3', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;', 1461186644, ''),
('fce54a8bb8e0bddf34a4e77116f3f228', '69.30.213.82', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://ww', 1461230860, ''),
('fd5d9c383ee0cd2da6b82f092f426207', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461232004, 'a:2:{s:12:"me_id_parent";s:1:"0";s:15:"flash:new:error";s:33:"Opss! Invalid member unique link.";}'),
('fdbcdb6c9da0ed0e2df01eb3c2207c4c', '113.210.54.93', 'WhatsApp/2.16.13 A', 1461231975, ''),
('fdee922e3c8da12e9a841323cb0e9d5a', '51.255.65.87', 'Mozilla/5.0 (compatible; AhrefsBot/5.1; +http://ah', 1461095888, ''),
('fec032a0b43c9ec1d125d998691440f9', '207.46.13.26', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.', 1461258972, ''),
('feede5c4111220dabbe412ab0d9ecb81', '173.252.90.243', 'facebookexternalhit/1.1 (+http://www.facebook.com/', 1461319601, ''),
('ff39e41c70e392af28a27bf71ccb8e12', '68.180.230.178', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help', 1461204131, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinarpal_account`
--

INSERT INTO `dinarpal_account` (`da_id`, `me_id`, `da_gold_rahnu_gram`, `da_gold_rahnu_money`, `da_gold_balance`, `da_gold_reserved`, `da_silver_rahnu_gram`, `da_silver_rahnu_money`, `da_silver_balance`, `da_silver_reserved`, `da_point_balance`) VALUES
(1, 1, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2, 2, '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(3, 3, '0', '0', '0', '0', '0', '0', '0', '0', '0');

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
(1, '200004', '20000', '2000000', '20000');

-- --------------------------------------------------------

--
-- Table structure for table `dinarpal_config`
--

CREATE TABLE IF NOT EXISTS `dinarpal_config` (
  `dc_id` int(11) NOT NULL,
  `dc_currency_type` varchar(200) DEFAULT NULL,
  `dc_admin_bank_account` varchar(50) NOT NULL,
  `dc_admin_bank_name` varchar(200) NOT NULL,
  `dc_gst_rate` varchar(200) NOT NULL,
  `dc_hq_username` varchar(200) NOT NULL,
  `dc_geneology_rate` varchar(200) NOT NULL,
  `dc_comm_gram_rate` varchar(200) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
  `dd_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `dd_filename` varchar(200) DEFAULT NULL,
  `dd_size` int(11) DEFAULT '0',
  `dd_type` varchar(200) DEFAULT NULL,
  `ddt_id` int(11) NOT NULL,
  `mvs_id` int(11) DEFAULT '1',
  `mv_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`em_id`, `em_emails`, `me_id`, `em_status`) VALUES
(1, 'kidzeclipes@gmail.com', 1, 2),
(2, 'umar@tuffah.info', 2, 2),
(3, 'nurumira@gmail.com', 3, 2),
(4, 'pisang@dinarpal.com', 4, 2),
(5, 'staff@dinarpal.com', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fee_type`
--

CREATE TABLE IF NOT EXISTS `fee_type` (
  `ft_id` int(11) NOT NULL,
  `ft_name` varchar(200) DEFAULT NULL,
  `ft_price` varchar(200) DEFAULT '0.00',
  `ft_addon` varchar(200) DEFAULT '',
  `ft_type` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

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
  `g_id` int(11) NOT NULL,
  `g_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
  `ga_id` int(11) NOT NULL,
  `ga_datetime` datetime NOT NULL,
  `me_id` int(11) NOT NULL,
  `me_id_parent` int(11) NOT NULL,
  `ga_status` int(11) NOT NULL DEFAULT '1',
  `ga_unique_link` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geneology_aff`
--

INSERT INTO `geneology_aff` (`ga_id`, `ga_datetime`, `me_id`, `me_id_parent`, `ga_status`, `ga_unique_link`) VALUES
(1, '2014-11-10 10:12:00', 1, 0, 1, '5713344965592526'),
(2, '2014-12-13 19:45:41', 2, 1, 1, '3452197058634491'),
(4, '2014-12-28 07:27:16', 4, 1, 1, '2917536403071913'),
(5, '2014-12-28 07:28:05', 5, 2, 1, '0864178593668232'),
(7, '2015-04-27 03:12:49', 3, 2, 1, '6413038609762746');

-- --------------------------------------------------------

--
-- Table structure for table `geneology_aff_child`
--

CREATE TABLE IF NOT EXISTS `geneology_aff_child` (
  `gac_id` int(11) NOT NULL,
  `ga_id` int(11) NOT NULL,
  `gac_datetime` datetime NOT NULL,
  `gac_paymentdate` datetime DEFAULT NULL,
  `gac_amount` varchar(200) NOT NULL,
  `gac_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `geneology_material`
--

CREATE TABLE IF NOT EXISTS `geneology_material` (
  `gm_id` int(11) NOT NULL,
  `gm_name` varchar(200) NOT NULL,
  `gmt_id` int(11) NOT NULL,
  `gm_desc` text NOT NULL,
  `gm_link` varchar(500) NOT NULL,
  `gm_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
  `gmt_id` int(11) NOT NULL,
  `gmt_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
  `gs_id` int(11) NOT NULL,
  `gs_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

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
  `it_name` varchar(200) NOT NULL,
  `it_comm_rate_gram` varchar(200) NOT NULL DEFAULT '1.00',
  `it_comm_rate_money` varchar(200) NOT NULL DEFAULT '1.00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
  `itc_id` int(11) NOT NULL,
  `itc_name` varchar(200) NOT NULL,
  `itp_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

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
(13, 'Dinar', 3);

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
  `k_id` int(11) NOT NULL,
  `k_startdate` datetime NOT NULL,
  `k_enddate` datetime NOT NULL,
  `sl_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `k_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keep_child`
--

CREATE TABLE IF NOT EXISTS `keep_child` (
  `kc_id` int(11) NOT NULL,
  `k_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `kc_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `liquid_item`
--

CREATE TABLE IF NOT EXISTS `liquid_item` (
  `li_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `li_datetime` datetime NOT NULL,
  `sl_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `lis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `liquid_item_status`
--

CREATE TABLE IF NOT EXISTS `liquid_item_status` (
  `lis_id` int(11) NOT NULL,
  `lis_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
  `me_is_amil` varchar(200) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`me_id`, `me_image`, `me_firstname`, `me_lastname`, `me_username`, `me_password`, `me_question`, `me_answer`, `me_unique_link`, `me_address1`, `me_city1`, `me_state1`, `me_postcode1`, `me_country1`, `me_address2`, `me_city2`, `me_state2`, `me_postcode2`, `me_country2`, `me_government_issue_id`, `me_driver_license`, `me_phone_no`, `me_birth_date`, `me_description`, `me_maiden_name`, `me_nationality`, `me_facebook`, `me_twitter`, `me_instagram`, `me_googleplus`, `me_whatsapp_no`, `me_telegram`, `me_wechat`, `me_email`, `me_register_date`, `me_account_type`, `me_activation_status`, `me_last_login`, `me_magic_num`, `ml_id`, `me_status`, `me_company`, `me_reg_num`, `me_company_doc1`, `me_company_doc1_verify`, `me_company_doc2`, `me_company_doc2_verify`, `me_type`, `sl_id`, `g_id`, `me_is_amil`) VALUES
(1, '99271c3805aa830738485064b3707cc9.jpg', 'DP System HQ', 'Dinarpal', 'dphq', '$2a$08$R26OP4OtJ2PCewXZLW5ab.DpVPpHZwRtR.Fbfm4qKXTothzh7KkG6', 'What is my pet''s name?', 'comel', 'http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://local', 'J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.', 'AYER KEROH', 'MELAKA', '75450', 'MALAYSIA', '91, JALAN KERAI, SG. RETANG.', 'JERANTUT', 'PAHANG', '27000', 'MALAYSIA', 'MY001', 'B and D', '0199737579', '1989-10-31', '', 'Ntoh', 'Malaysia', 'https://www.facebook.com/kidzeclipes', 'https://twitter.com/kidzeclipes', 'https://www.instagram.com/umaq_89/', 'https://plus.google.com/u/0/110272712192644641706/posts', '0199737579', '019-9737579', '+6 019-973 7579', 'kidzeclipes@gmail.com', '2014-11-10 10:12:00', 2, 2, '2016-04-22T12:45:27+02:00', '0d4368f80cd1d149576c068211e89fbf', 3, 1, 'Tuffah Informatics', 'MA0182480-H', '8dbaa9d1e7f114245d186c546ab9a7d6.jpg', 1, '25e878659a4d2c4c9f76576fa1656530.jpg', 1, 'DP', 1, 1, 'yes'),
(2, '007670359b0f05b910f399488e2ffcea.jpg', 'asd', 'dsa', 'asd', '$2a$08$zRnQHtdGJnSdsPPqfGCXHef3VnVG06p.bQhM1vEs2b.Kcwz6aoF7K', 'Who am I?', 'Jack Sparrow', '7815696ecbf1c96e6894b779456d330e', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '123', '1998-10-02', NULL, NULL, NULL, 'facebok asd', 'twitter saya', '', '', '', '', '', 'umar@tuffah.info', '2014-12-13 19:45:41', 1, 2, '2016-05-05T04:40:44+02:00', 'ec623adec13773d99685c93053d3228e', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 1, 'no'),
(3, '6d3ac-adeq-nur---ftmk!-20150212_151603.jpg', 'Nur Umira', 'Mustafa', 'nur', '$2a$08$R26OP4OtJ2PCewXZLW5ab.DpVPpHZwRtR.Fbfm4qKXTothzh7KkG6', 'What is my username?', 'nur', 'b55178b011bfb206965f2638d0f87047', 'J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.', 'AYER KEROH', 'MELAKA', '75450', 'MALAYSIA', '91, JALAN KERAI, SG. RETANG.', 'JERANTUT', 'PAHANG', '27000', 'MALAYSIA', NULL, NULL, '0136420142', '1993-05-18', NULL, NULL, NULL, 'https://www.facebook.com/nurumira', 'https://twitter.com/nurumira', 'http://instagram.com/nurumira', 'http://googleplus.com/nurumira', '0199737579', '-', '-', 'nurumira@gmail.com', '2015-04-27 03:12:49', 1, 2, '2016-05-05T17:38:37+02:00', '69c0e639c71a34bb6b710f043138f7f8', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 2, 'no'),
(4, 'default-img.jpg', 'pisang', 'admin', 'pisang', '$2a$08$pn2U5NZix1EOx/.IYmmaeOYnIdxL7faB39ElDFFulsyFVRuaoTm8q', 'What is my username?', 'a1', '8a8bb7cd343aa2ad99b7d762030857a2', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 'pisang@dinarpal.com', '2014-12-28 07:27:16', 1, 2, '2015-02-11T23:32:46+08:00', '97669d6b22a790a5feb7f9c06f6e3d03', 1, 1, NULL, NULL, NULL, 1, NULL, 1, 'GA', 1, 0, 'no'),
(5, 'default-img.jpg', 'God Admin', 'bujang', 'godadmin', '$2a$08$60LE6Y86CP3V8y2filvJ7eB/0HqDk/gFNmjb4y0P.tXP83X/Y/3fy', 'What is my username?', 'b1', 'edbab45572c72a5d9440b40bcc0500c0', 'J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.', 'AYER KEROH', 'MELAKA', '75450', 'MALAYSIA', NULL, '', NULL, NULL, NULL, NULL, NULL, '0199737579', NULL, NULL, NULL, NULL, '', '', '', '', '0199737579', NULL, NULL, 'staff@dinarpal.com', '2014-12-28 07:28:05', 1, 2, '2016-05-05T17:34:13+02:00', '9512afcb3f0fde463ddf8e476a76be16', 2, 1, NULL, NULL, NULL, 1, NULL, 1, 'GA', 1, 0, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `members_activation_status`
--

CREATE TABLE IF NOT EXISTS `members_activation_status` (
  `mas_id` int(11) NOT NULL,
  `mas_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

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
-- Table structure for table `members_status`
--

CREATE TABLE IF NOT EXISTS `members_status` (
  `ms_id` int(11) NOT NULL,
  `ms_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
  `mt_id` int(11) NOT NULL,
  `mt_code` varchar(20) NOT NULL,
  `mt_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
(3, 'Accepted'),
(4, 'Rejected');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`pm_id`, `pm_name`) VALUES
(1, 'E-Dinar Balance'),
(3, 'E-Dirham Balance');

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
-- Table structure for table `send_payment_gram`
--

CREATE TABLE IF NOT EXISTS `send_payment_gram` (
  `spg_id` int(11) NOT NULL,
  `me_id_to` int(11) NOT NULL,
  `me_id_from` int(11) NOT NULL,
  `pt_id` int(11) NOT NULL,
  `at_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `spg_notes` varchar(500) NOT NULL,
  `tr_id` int(11) NOT NULL,
  `spg_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `v_id` int(11) NOT NULL,
  `sc_qty` varchar(200) DEFAULT '0',
  `sc_status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `souq_child_child`
--

CREATE TABLE IF NOT EXISTS `souq_child_child` (
  `scc_id` int(11) NOT NULL,
  `so_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `scc_datetime` datetime NOT NULL,
  `scc_fee` varchar(200) NOT NULL,
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
  `sl_address` varchar(500) DEFAULT NULL,
  `sl_code` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
  `tr_id` int(11) NOT NULL,
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
  `tr_file` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_status`
--

CREATE TABLE IF NOT EXISTS `transaction_status` (
  `ts_id` int(11) NOT NULL,
  `ts_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
  `tt_id` int(11) NOT NULL,
  `tt_desc` varchar(200) NOT NULL,
  `tt_code` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

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
-- Table structure for table `vault`
--

CREATE TABLE IF NOT EXISTS `vault` (
  `v_id` int(11) NOT NULL,
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
  `v_regdate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4001 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vault`
--

INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(1, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010001', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010002', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010003', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(4, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010004', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(5, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010005', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(6, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010006', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(7, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010007', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(8, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010008', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(9, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010009', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(10, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010010', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(11, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010011', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(12, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010012', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(13, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010013', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(14, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010014', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(15, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010015', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(16, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010016', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(17, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010017', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(18, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010018', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(19, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010019', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(20, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010020', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(21, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010021', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(22, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010022', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(23, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010023', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(24, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010024', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(25, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010025', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(26, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010026', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(27, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010027', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(28, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010028', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(29, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010029', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(30, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010030', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(31, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010031', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(32, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010032', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(33, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010033', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(34, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010034', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(35, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010035', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(36, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010036', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(37, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200.00', '1', 'A1010037', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
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
  `vi_id` int(11) NOT NULL,
  `vi_name` varchar(200) NOT NULL,
  `vi_size` int(11) NOT NULL DEFAULT '0',
  `vi_type` varchar(200) NOT NULL,
  `vi_status` int(11) NOT NULL DEFAULT '1',
  `v_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vault_type`
--

CREATE TABLE IF NOT EXISTS `vault_type` (
  `vt_id` int(11) NOT NULL,
  `vt_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
  `wg_id` int(11) NOT NULL,
  `tr_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `wg_code` varchar(200) NOT NULL,
  `wg_datetime` datetime NOT NULL,
  `wg_type` varchar(200) NOT NULL,
  `wg_address` varchar(500) NOT NULL,
  `wgs_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_gram_child`
--

CREATE TABLE IF NOT EXISTS `withdrawal_gram_child` (
  `wgc_id` int(11) NOT NULL,
  `wg_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `wgc_collectdatetime` datetime NOT NULL,
  `wgcs_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_gram_child_status`
--

CREATE TABLE IF NOT EXISTS `withdrawal_gram_child_status` (
  `wgcs_id` int(11) NOT NULL,
  `wgcs_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
  `wgs_id` int(11) NOT NULL,
  `wgs_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawal_gram_status`
--

INSERT INTO `withdrawal_gram_status` (`wgs_id`, `wgs_desc`) VALUES
(1, 'Pending'),
(2, 'Completed'),
(3, 'Rejected');

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
-- Indexes for table `banks_branch_info`
--
ALTER TABLE `banks_branch_info`
  ADD PRIMARY KEY (`bbi_id`);

--
-- Indexes for table `banks_category`
--
ALTER TABLE `banks_category`
  ADD PRIMARY KEY (`bc_id`);

--
-- Indexes for table `banks_members`
--
ALTER TABLE `banks_members`
  ADD PRIMARY KEY (`bm_id`);

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
-- Indexes for table `bene_info_waris`
--
ALTER TABLE `bene_info_waris`
  ADD PRIMARY KEY (`biw_id`);

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
-- Indexes for table `brands_itc_purity`
--
ALTER TABLE `brands_itc_purity`
  ADD PRIMARY KEY (`bip_id`);

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
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `geneology_aff`
--
ALTER TABLE `geneology_aff`
  ADD PRIMARY KEY (`ga_id`);

--
-- Indexes for table `geneology_aff_child`
--
ALTER TABLE `geneology_aff_child`
  ADD PRIMARY KEY (`gac_id`);

--
-- Indexes for table `geneology_material`
--
ALTER TABLE `geneology_material`
  ADD PRIMARY KEY (`gm_id`);

--
-- Indexes for table `geneology_material_type`
--
ALTER TABLE `geneology_material_type`
  ADD PRIMARY KEY (`gmt_id`);

--
-- Indexes for table `geneology_status`
--
ALTER TABLE `geneology_status`
  ADD PRIMARY KEY (`gs_id`);

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
-- Indexes for table `keep`
--
ALTER TABLE `keep`
  ADD PRIMARY KEY (`k_id`);

--
-- Indexes for table `keep_child`
--
ALTER TABLE `keep_child`
  ADD PRIMARY KEY (`kc_id`);

--
-- Indexes for table `landing_page`
--
ALTER TABLE `landing_page`
  ADD PRIMARY KEY (`lan_id`);

--
-- Indexes for table `liquid_item`
--
ALTER TABLE `liquid_item`
  ADD PRIMARY KEY (`li_id`);

--
-- Indexes for table `liquid_item_status`
--
ALTER TABLE `liquid_item_status`
  ADD PRIMARY KEY (`lis_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`me_id`),
  ADD UNIQUE KEY `me_username` (`me_username`);

--
-- Indexes for table `members_activation_status`
--
ALTER TABLE `members_activation_status`
  ADD PRIMARY KEY (`mas_id`);

--
-- Indexes for table `members_level`
--
ALTER TABLE `members_level`
  ADD PRIMARY KEY (`ml_id`);

--
-- Indexes for table `members_status`
--
ALTER TABLE `members_status`
  ADD PRIMARY KEY (`ms_id`);

--
-- Indexes for table `members_type`
--
ALTER TABLE `members_type`
  ADD PRIMARY KEY (`mt_id`);

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
-- Indexes for table `send_payment_gram`
--
ALTER TABLE `send_payment_gram`
  ADD PRIMARY KEY (`spg_id`);

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
  ADD PRIMARY KEY (`tt_id`),
  ADD UNIQUE KEY `tt_code` (`tt_code`);

--
-- Indexes for table `used_item`
--
ALTER TABLE `used_item`
  ADD PRIMARY KEY (`ui_id`);

--
-- Indexes for table `vault`
--
ALTER TABLE `vault`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `vault_image`
--
ALTER TABLE `vault_image`
  ADD PRIMARY KEY (`vi_id`);

--
-- Indexes for table `vault_type`
--
ALTER TABLE `vault_type`
  ADD PRIMARY KEY (`vt_id`);

--
-- Indexes for table `withdrawal_gram`
--
ALTER TABLE `withdrawal_gram`
  ADD PRIMARY KEY (`wg_id`),
  ADD UNIQUE KEY `wg_code` (`wg_code`);

--
-- Indexes for table `withdrawal_gram_child`
--
ALTER TABLE `withdrawal_gram_child`
  ADD PRIMARY KEY (`wgc_id`);

--
-- Indexes for table `withdrawal_gram_child_status`
--
ALTER TABLE `withdrawal_gram_child_status`
  ADD PRIMARY KEY (`wgcs_id`);

--
-- Indexes for table `withdrawal_gram_status`
--
ALTER TABLE `withdrawal_gram_status`
  ADD PRIMARY KEY (`wgs_id`);

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
  MODIFY `am_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
  MODIFY `ba_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `banks_branch_info`
--
ALTER TABLE `banks_branch_info`
  MODIFY `bbi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2446;
--
-- AUTO_INCREMENT for table `banks_category`
--
ALTER TABLE `banks_category`
  MODIFY `bc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `banks_members`
--
ALTER TABLE `banks_members`
  MODIFY `bm_id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `bene_info_waris`
--
ALTER TABLE `bene_info_waris`
  MODIFY `biw_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
  MODIFY `br_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `brands_itc`
--
ALTER TABLE `brands_itc`
  MODIFY `bi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `brands_itc_purity`
--
ALTER TABLE `brands_itc_purity`
  MODIFY `bip_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
  MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
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
  MODIFY `da_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
  MODIFY `dd_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `em_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fee_type`
--
ALTER TABLE `fee_type`
  MODIFY `ft_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `geneology_aff`
--
ALTER TABLE `geneology_aff`
  MODIFY `ga_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `geneology_aff_child`
--
ALTER TABLE `geneology_aff_child`
  MODIFY `gac_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `geneology_material`
--
ALTER TABLE `geneology_material`
  MODIFY `gm_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `geneology_material_type`
--
ALTER TABLE `geneology_material_type`
  MODIFY `gmt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `geneology_status`
--
ALTER TABLE `geneology_status`
  MODIFY `gs_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `itc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `item_type_purity`
--
ALTER TABLE `item_type_purity`
  MODIFY `itp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `keep`
--
ALTER TABLE `keep`
  MODIFY `k_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keep_child`
--
ALTER TABLE `keep_child`
  MODIFY `kc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `landing_page`
--
ALTER TABLE `landing_page`
  MODIFY `lan_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `liquid_item`
--
ALTER TABLE `liquid_item`
  MODIFY `li_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `liquid_item_status`
--
ALTER TABLE `liquid_item_status`
  MODIFY `lis_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `members_activation_status`
--
ALTER TABLE `members_activation_status`
  MODIFY `mas_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `members_level`
--
ALTER TABLE `members_level`
  MODIFY `ml_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `members_status`
--
ALTER TABLE `members_status`
  MODIFY `ms_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `members_type`
--
ALTER TABLE `members_type`
  MODIFY `mt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
-- AUTO_INCREMENT for table `send_payment_gram`
--
ALTER TABLE `send_payment_gram`
  MODIFY `spg_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `ts_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `transaction_type`
--
ALTER TABLE `transaction_type`
  MODIFY `tt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `used_item`
--
ALTER TABLE `used_item`
  MODIFY `ui_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vault`
--
ALTER TABLE `vault`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4001;
--
-- AUTO_INCREMENT for table `vault_image`
--
ALTER TABLE `vault_image`
  MODIFY `vi_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vault_type`
--
ALTER TABLE `vault_type`
  MODIFY `vt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `withdrawal_gram`
--
ALTER TABLE `withdrawal_gram`
  MODIFY `wg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `withdrawal_gram_child`
--
ALTER TABLE `withdrawal_gram_child`
  MODIFY `wgc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `withdrawal_gram_child_status`
--
ALTER TABLE `withdrawal_gram_child_status`
  MODIFY `wgcs_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `withdrawal_gram_status`
--
ALTER TABLE `withdrawal_gram_status`
  MODIFY `wgs_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
