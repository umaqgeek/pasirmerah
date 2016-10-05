-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2016 at 06:43 AM
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
(1, 'Discount', '10', 2, 'DYNAMIC'),
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=889 DEFAULT CHARSET=latin1;

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
(2, 2, '', '', 1, '', '', '', '', '', '', '', '', 1),
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
('02b92f8a4df5db923a6a98469d2e4bf2', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1458138025, ''),
('0c48e1c02dd15efe79556a796ed4e9e2', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1460011015, 'a:50:{s:5:"me_id";s:2:"17";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-07T07:18:10+02:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;}'),
('176a6fca2a1a600287573845275e998e', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1460052517, ''),
('1cc9aab9578fa3680b2593f1de0107e8', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1461040918, 'a:50:{s:5:"me_id";s:1:"3";s:8:"me_image";s:42:"6d3ac-adeq-nur---ftmk!-20150212_151603.jpg";s:12:"me_firstname";s:9:"Nur Umira";s:11:"me_lastname";s:7:"Mustafa";s:11:"me_username";s:3:"nur";s:11:"me_question";s:20:"What is my username?";s:9:"me_answer";s:3:"nur";s:14:"me_unique_link";s:32:"b55178b011bfb206965f2638d0f87047";s:11:"me_address1";s:44:"J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.";s:8:"me_city1";s:10:"AYER KEROH";s:9:"me_state1";s:6:"MELAKA";s:12:"me_postcode1";s:5:"75450";s:11:"me_country1";s:8:"MALAYSIA";s:11:"me_address2";s:28:"91, JALAN KERAI, SG. RETANG.";s:8:"me_city2";s:8:"JERANTUT";s:9:"me_state2";s:6:"PAHANG";s:12:"me_postcode2";s:5:"27000";s:11:"me_country2";s:8:"MALAYSIA";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:10:"0136420142";s:13:"me_birth_date";s:10:"1993-05-18";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:33:"https://www.facebook.com/nurumira";s:10:"me_twitter";s:28:"https://twitter.com/nurumira";s:12:"me_instagram";s:29:"http://instagram.com/nurumira";s:13:"me_googleplus";s:30:"http://googleplus.com/nurumira";s:14:"me_whatsapp_no";s:10:"0199737579";s:11:"me_telegram";s:1:"-";s:9:"me_wechat";s:1:"-";s:8:"me_email";s:18:"nurumira@gmail.com";s:16:"me_register_date";s:19:"2015-04-27 03:12:49";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-04-12T17:37:02+02:00";s:12:"me_magic_num";s:32:"69c0e639c71a34bb6b710f043138f7f8";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"2";s:9:"logged_in";b:1;}'),
('6909b2ba299d335439bfbad7119a7306', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1458531825, ''),
('77b1ec60e8c4e5a5d20fd0cfb2269c97', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1456939331, ''),
('9ed80661d089bc51f09e21508bf4307c', '66.249.71.180', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://ww', 1459089235, ''),
('acaab285c83e9953424d68c8b15a40fa', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1459437902, ''),
('d7f041768d00dd1318697762468030e0', '103.198.52.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1459089450, 'a:50:{s:5:"me_id";s:1:"7";s:8:"me_image";s:36:"007670359b0f05b910f399488e2ffcea.jpg";s:12:"me_firstname";s:3:"asd";s:11:"me_lastname";s:3:"dsa";s:11:"me_username";s:3:"asd";s:11:"me_question";s:9:"Who am I?";s:9:"me_answer";s:12:"Jack Sparrow";s:14:"me_unique_link";s:32:"7815696ecbf1c96e6894b779456d330e";s:11:"me_address1";s:0:"";s:8:"me_city1";s:0:"";s:9:"me_state1";s:0:"";s:12:"me_postcode1";s:0:"";s:11:"me_country1";s:0:"";s:11:"me_address2";s:0:"";s:8:"me_city2";s:0:"";s:9:"me_state2";s:0:"";s:12:"me_postcode2";s:0:"";s:11:"me_country2";s:0:"";s:22:"me_government_issue_id";N;s:17:"me_driver_license";N;s:11:"me_phone_no";s:3:"123";s:13:"me_birth_date";s:10:"1998-10-02";s:14:"me_description";N;s:14:"me_maiden_name";N;s:14:"me_nationality";N;s:11:"me_facebook";s:11:"facebok asd";s:10:"me_twitter";s:12:"twitter saya";s:12:"me_instagram";s:0:"";s:13:"me_googleplus";s:0:"";s:14:"me_whatsapp_no";s:0:"";s:11:"me_telegram";s:0:"";s:9:"me_wechat";s:0:"";s:8:"me_email";s:16:"umar@tuffah.info";s:16:"me_register_date";s:19:"2014-12-13 19:45:41";s:15:"me_account_type";s:1:"1";s:20:"me_activation_status";s:1:"2";s:13:"me_last_login";s:25:"2016-03-27T22:34:48+08:00";s:12:"me_magic_num";s:32:"ec623adec13773d99685c93053d3228e";s:5:"ml_id";s:1:"3";s:9:"me_status";s:1:"1";s:10:"me_company";s:0:"";s:10:"me_reg_num";s:0:"";s:15:"me_company_doc1";s:0:"";s:22:"me_company_doc1_verify";s:1:"1";s:15:"me_company_doc2";s:0:"";s:22:"me_company_doc2_verify";s:1:"1";s:7:"me_type";s:2:"NU";s:5:"sl_id";s:1:"0";s:4:"g_id";s:1:"1";s:9:"logged_in";b:1;}'),
('e8431e605a07c470ef4638e93797ef70', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1459402249, ''),
('e8a8570364e0944ce3d1952371a2b824', '0.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) Ap', 1459261361, '');

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
  `dc_geneology_rate` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinarpal_config`
--

INSERT INTO `dinarpal_config` (`dc_id`, `dc_currency_type`, `dc_admin_bank_account`, `dc_admin_bank_name`, `dc_gst_rate`, `dc_hq_username`, `dc_geneology_rate`) VALUES
(1, 'MYR', '04042010006119', 'Koperasi DinarPal Melaka Berhad', '0.06', 'dphq', '0.10');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinarpal_document`
--

INSERT INTO `dinarpal_document` (`dd_id`, `me_id`, `dd_filename`, `dd_size`, `dd_type`, `ddt_id`, `mvs_id`, `mv_id`) VALUES
(9, 1, 'bd18cd2cd4aeb9c9957662b97a2feeb4.jpg', 142, 'image/jpeg', 1, 1, 0),
(10, 1, 'fa72772d95b9e774a8e5244885553a00.jpg', 74, 'image/jpeg', 2, 1, 0),
(11, 17, '252d5411b4f2d13c083e56c951cf0f7d.jpg', 5, 'image/jpeg', 1, 1, NULL),
(12, 7, '346ab4b2c1f81da624a6ae9d63faac59.jpg', 5, 'image/jpeg', 2, 1, NULL),
(13, 7, '31ebf8816b0c0f4dad410c2566895814.pdf', 261, 'application/pdf', 1, 1, NULL);

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
(1, 'Verification Fee', '10.00', '', 'STATIC'),
(2, 'Ar-Rahnu Fee', '10.00', '', 'STATIC'),
(3, 'Safe Keeping Fee', '0.55', '', 'DYNAMIC'),
(4, 'Transaction Fee', '2.00', '', 'STATIC'),
(5, 'Withdrawal Fee (Money)', '3.00', '', 'STATIC'),
(6, 'Deposit Fee', '2.00', '', 'STATIC'),
(7, 'Vault Fee', '0.0025', '', 'DYNAMIC'),
(8, 'Liquid Gold Fee', '0.75', '', 'DYNAMIC'),
(9, 'Send Payment Money Fee', '0.00', '', 'STATIC'),
(10, 'Receive Payment Money Fee', '0.025', '0.50', 'DYNAMIC'),
(11, 'Send Payment Gram Fee', '0.00', '', 'STATIC'),
(12, 'Receive Payment Money Fee', '0.025', '0.50', 'DYNAMIC'),
(13, 'GST Tax Fee', '0.06', '', 'DYNAMIC'),
(14, 'Withdrawal Fee (Gram)', '3.00', '', 'STATIC'),
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
  `itp_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_type_child`
--

INSERT INTO `item_type_child` (`itc_id`, `itc_name`, `itp_id`) VALUES
(1, 'Dinar', 1),
(2, 'Gold Jewellery', 2),
(3, 'Gold Bars', 1),
(4, 'Dirham', 7),
(5, 'Silver Jewellery', 7),
(6, 'Silver Bars', 7);

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
  `g_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`me_id`, `me_image`, `me_firstname`, `me_lastname`, `me_username`, `me_password`, `me_question`, `me_answer`, `me_unique_link`, `me_address1`, `me_city1`, `me_state1`, `me_postcode1`, `me_country1`, `me_address2`, `me_city2`, `me_state2`, `me_postcode2`, `me_country2`, `me_government_issue_id`, `me_driver_license`, `me_phone_no`, `me_birth_date`, `me_description`, `me_maiden_name`, `me_nationality`, `me_facebook`, `me_twitter`, `me_instagram`, `me_googleplus`, `me_whatsapp_no`, `me_telegram`, `me_wechat`, `me_email`, `me_register_date`, `me_account_type`, `me_activation_status`, `me_last_login`, `me_magic_num`, `ml_id`, `me_status`, `me_company`, `me_reg_num`, `me_company_doc1`, `me_company_doc1_verify`, `me_company_doc2`, `me_company_doc2_verify`, `me_type`, `sl_id`, `g_id`) VALUES
(1, '99271c3805aa830738485064b3707cc9.jpg', 'DP System HQ', 'Dinarpal', 'dphq', '$2a$08$R26OP4OtJ2PCewXZLW5ab.DpVPpHZwRtR.Fbfm4qKXTothzh7KkG6', 'What is my pet''s name?', 'comel', 'http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://localhost/dinarpal_v2/member/uniqueLink/http://local', 'J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.', 'AYER KEROH', 'MELAKA', '75450', 'MALAYSIA', '91, JALAN KERAI, SG. RETANG.', 'JERANTUT', 'PAHANG', '27000', 'MALAYSIA', 'MY001', 'B and D', '0199737579', '1989-10-31', '', 'Ntoh', 'Malaysia', 'https://www.facebook.com/kidzeclipes', 'https://twitter.com/kidzeclipes', 'https://www.instagram.com/umaq_89/', 'https://plus.google.com/u/0/110272712192644641706/posts', '0199737579', '019-9737579', '+6 019-973 7579', 'kidzeclipes@gmail.com', '2014-11-10 10:12:00', 2, 2, '2016-04-12T19:43:13+02:00', '0d4368f80cd1d149576c068211e89fbf', 3, 1, 'Tuffah Informatics', 'MA0182480-H', '8dbaa9d1e7f114245d186c546ab9a7d6.jpg', 1, '25e878659a4d2c4c9f76576fa1656530.jpg', 1, 'DP', 1, 1),
(2, '007670359b0f05b910f399488e2ffcea.jpg', 'asd', 'dsa', 'asd', '$2a$08$zRnQHtdGJnSdsPPqfGCXHef3VnVG06p.bQhM1vEs2b.Kcwz6aoF7K', 'Who am I?', 'Jack Sparrow', '7815696ecbf1c96e6894b779456d330e', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '123', '1998-10-02', NULL, NULL, NULL, 'facebok asd', 'twitter saya', '', '', '', '', '', 'umar@tuffah.info', '2014-12-13 19:45:41', 1, 2, '2016-04-13T04:45:41+02:00', 'ec623adec13773d99685c93053d3228e', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 1),
(3, '6d3ac-adeq-nur---ftmk!-20150212_151603.jpg', 'Nur Umira', 'Mustafa', 'nur', '$2a$08$R26OP4OtJ2PCewXZLW5ab.DpVPpHZwRtR.Fbfm4qKXTothzh7KkG6', 'What is my username?', 'nur', 'b55178b011bfb206965f2638d0f87047', 'J-1-14, BLOK J, PANGSAPURI TTU3, JALAN TU61.', 'AYER KEROH', 'MELAKA', '75450', 'MALAYSIA', '91, JALAN KERAI, SG. RETANG.', 'JERANTUT', 'PAHANG', '27000', 'MALAYSIA', NULL, NULL, '0136420142', '1993-05-18', NULL, NULL, NULL, 'https://www.facebook.com/nurumira', 'https://twitter.com/nurumira', 'http://instagram.com/nurumira', 'http://googleplus.com/nurumira', '0199737579', '-', '-', 'nurumira@gmail.com', '2015-04-27 03:12:49', 1, 2, '2016-04-19T06:41:58+02:00', '69c0e639c71a34bb6b710f043138f7f8', 3, 1, '', '', '', 1, '', 1, 'NU', 0, 2),
(4, 'default-img.jpg', 'pisang', 'admin', 'pisang', '$2a$08$pn2U5NZix1EOx/.IYmmaeOYnIdxL7faB39ElDFFulsyFVRuaoTm8q', 'What is my username?', 'a1', '8a8bb7cd343aa2ad99b7d762030857a2', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 'pisang@dinarpal.com', '2014-12-28 07:27:16', 1, 2, '2015-02-11T23:32:46+08:00', '97669d6b22a790a5feb7f9c06f6e3d03', 1, 1, NULL, NULL, NULL, 1, NULL, 1, 'GA', 1, 0),
(5, 'default-img.jpg', 'God Admin', 'bujang', 'godadmin', '$2a$08$60LE6Y86CP3V8y2filvJ7eB/0HqDk/gFNmjb4y0P.tXP83X/Y/3fy', 'What is my username?', 'b1', 'edbab45572c72a5d9440b40bcc0500c0', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 'staff@dinarpal.com', '2014-12-28 07:28:05', 1, 2, '2016-04-13T04:47:26+02:00', '9512afcb3f0fde463ddf8e476a76be16', 2, 1, NULL, NULL, NULL, 1, NULL, 1, 'GA', 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

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
(25, 'GST Tax', 'GST'),
(26, 'Deposit Fee', 'DF'),
(27, 'Bank Transfer Deposit', 'BTD'),
(28, 'Affiliate Commission', 'AC'),
(29, 'Withdrawal Money Fee', 'WM'),
(30, 'Withdrawal Gram Fee', 'WGF'),
(31, 'Withdrawal Gram', 'WG'),
(32, 'Bank Transaction Fee', 'BTF'),
(33, 'Inject Cash', 'IC');

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
(1, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010001', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010002', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010003', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(4, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010004', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(5, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010005', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(6, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010006', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(7, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010007', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(8, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010008', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(9, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010009', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(10, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010010', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(11, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010011', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(12, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010012', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(13, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010013', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(14, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010014', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(15, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010015', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(16, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010016', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(17, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010017', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(18, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010018', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(19, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010019', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(20, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010020', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(21, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010021', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(22, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '195', '1', 'A1010022', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(23, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010023', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(24, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010024', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(25, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010025', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(26, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010026', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(27, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010027', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(28, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010028', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(29, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010029', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(30, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010030', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(31, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010031', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(32, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010032', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(33, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'A1010033', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(34, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'A1010034', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(35, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'A1010035', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(36, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'A1010036', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(37, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'A1010037', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(38, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010038', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(39, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010039', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(40, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010040', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(41, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010041', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(42, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010042', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(43, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010043', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(44, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010044', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(45, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010045', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(46, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010046', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(47, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '195', '1', 'A1010047', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(48, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010048', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(49, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010049', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(50, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010050', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(51, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010051', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(52, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010052', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(53, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010053', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(54, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010054', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(55, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010055', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(56, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010056', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(57, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010057', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(58, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010058', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(59, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010059', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(60, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010060', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(61, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010061', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(62, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010062', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(63, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010063', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(64, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010064', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(65, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010065', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(66, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010066', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(67, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010067', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(68, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010068', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(69, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010069', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(70, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010070', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(71, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010071', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(72, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010072', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(73, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010073', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(74, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010074', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(75, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010075', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(76, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010076', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(77, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010077', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(78, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010078', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(79, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010079', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(80, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010080', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(81, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010081', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(82, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010082', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(83, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010083', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(84, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010084', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(85, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010085', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(86, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010086', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(87, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010087', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(88, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010088', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(89, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010089', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(90, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010090', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(91, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010091', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(92, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010092', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(93, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010093', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(94, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010094', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(95, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010095', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(96, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010096', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(97, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010097', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(98, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010098', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(99, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010099', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(100, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010100', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(101, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010101', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(102, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010102', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(103, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010103', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(104, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010104', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(105, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010105', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(106, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010106', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(107, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010107', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(108, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010108', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(109, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010109', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(110, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010110', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(111, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010111', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(112, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010112', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(113, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010113', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(114, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010114', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(115, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010115', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(116, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010116', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(117, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010117', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(118, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010118', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(119, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010119', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(120, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010120', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(121, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010121', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(122, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010122', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(123, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010123', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(124, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010124', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(125, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010125', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(126, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010126', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(127, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010127', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(128, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010128', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(129, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010129', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(130, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010130', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(131, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010131', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(132, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010132', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(133, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010133', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(134, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010134', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(135, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010135', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(136, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010136', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(137, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010137', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(138, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010138', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(139, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010139', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(140, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010140', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(141, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010141', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(142, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010142', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(143, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '195', '1', 'A1010143', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(144, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010144', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(145, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010145', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(146, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010146', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(147, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010147', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(148, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010148', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(149, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010149', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(150, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010150', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(151, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010151', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(152, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010152', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(153, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010153', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(154, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010154', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(155, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010155', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(156, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010156', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(157, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010157', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(158, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010158', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(159, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010159', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(160, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '195', '1', 'A1010160', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(161, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '190', '1', 'A1010161', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(162, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010162', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(163, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010163', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(164, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010164', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(165, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010165', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(166, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010166', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(167, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010167', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(168, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010168', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(169, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010169', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(170, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010170', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(171, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010171', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(172, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010172', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(173, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010173', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(174, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010174', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(175, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010175', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(176, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010176', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(177, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010177', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(178, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '190', '1', 'A1010178', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(179, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010179', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(180, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010180', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(181, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010181', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(182, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010182', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(183, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010183', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(184, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010184', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(185, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010185', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(186, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010186', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(187, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010187', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(188, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010188', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(189, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010189', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(190, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010190', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(191, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010191', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(192, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010192', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(193, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010193', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(194, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010194', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(195, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010195', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(196, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010196', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(197, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010197', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(198, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010198', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(199, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010199', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(200, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010200', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(201, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010201', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(202, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010202', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(203, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010203', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(204, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010204', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(205, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010205', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(206, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010206', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(207, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010207', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(208, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010208', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(209, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010209', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(210, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010210', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(211, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010211', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(212, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010212', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(213, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010213', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(214, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010214', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(215, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010215', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(216, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010216', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(217, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010217', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(218, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010218', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(219, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010219', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(220, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010220', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(221, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010221', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(222, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010222', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(223, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010223', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(224, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010224', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(225, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010225', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(226, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010226', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(227, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010227', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(228, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010228', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(229, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010229', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(230, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010230', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(231, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010231', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(232, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010232', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(233, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010233', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(234, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010234', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(235, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010235', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(236, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010236', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(237, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010237', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(238, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010238', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(239, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010239', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(240, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010240', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(241, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010241', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(242, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010242', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(243, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010243', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(244, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010244', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(245, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010245', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(246, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010246', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(247, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010247', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(248, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010248', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(249, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010249', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(250, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010250', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(251, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010251', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(252, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010252', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(253, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010253', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(254, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010254', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(255, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010255', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(256, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010256', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(257, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010257', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(258, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010258', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(259, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010259', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(260, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010260', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(261, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010261', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(262, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010262', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(263, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010263', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(264, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010264', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(265, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010265', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(266, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010266', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(267, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010267', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(268, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010268', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(269, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010269', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(270, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010270', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(271, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010271', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(272, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010272', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(273, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010273', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(274, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010274', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(275, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010275', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(276, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010276', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(277, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010277', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(278, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010278', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(279, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010279', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(280, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010280', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(281, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010281', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(282, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010282', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(283, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010283', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(284, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010284', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(285, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010285', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(286, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010286', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(287, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010287', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(288, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010288', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(289, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010289', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(290, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010290', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(291, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010291', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(292, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010292', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(293, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010293', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(294, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010294', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(295, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010295', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(296, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010296', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(297, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010297', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(298, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010298', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(299, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010299', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(300, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010300', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(301, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010301', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(302, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010302', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(303, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010303', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(304, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010304', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(305, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010305', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(306, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010306', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(307, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010307', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(308, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010308', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(309, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010309', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(310, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010310', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(311, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010311', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(312, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010312', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(313, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010313', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(314, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010314', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(315, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010315', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(316, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010316', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(317, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010317', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(318, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010318', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(319, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010319', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(320, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010320', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(321, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010321', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(322, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010322', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(323, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010323', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(324, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010324', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(325, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010325', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(326, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010326', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(327, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010327', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(328, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010328', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(329, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010329', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(330, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010330', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(331, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010331', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(332, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010332', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(333, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010333', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(334, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010334', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(335, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010335', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(336, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010336', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(337, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010337', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(338, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010338', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(339, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010339', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(340, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010340', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(341, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010341', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(342, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010342', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(343, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010343', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(344, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010344', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(345, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010345', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(346, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010346', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(347, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010347', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(348, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010348', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(349, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010349', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(350, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010350', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(351, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010351', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(352, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010352', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(353, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010353', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(354, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010354', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(355, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010355', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(356, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010356', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(357, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010357', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(358, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010358', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(359, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010359', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(360, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010360', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(361, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010361', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(362, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010362', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(363, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010363', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(364, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010364', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(365, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010365', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(366, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010366', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(367, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010367', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(368, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010368', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(369, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010369', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(370, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010370', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(371, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010371', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(372, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010372', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(373, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010373', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(374, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010374', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(375, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010375', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(376, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010376', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(377, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010377', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(378, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010378', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(379, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010379', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(380, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010380', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(381, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010381', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(382, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010382', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(383, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010383', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(384, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010384', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(385, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010385', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(386, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010386', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(387, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010387', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(388, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010388', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(389, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010389', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(390, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010390', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(391, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010391', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(392, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010392', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(393, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010393', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(394, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010394', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(395, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010395', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(396, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010396', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(397, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010397', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(398, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010398', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(399, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010399', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(400, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010400', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(401, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010401', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(402, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'A1010402', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(403, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'A1010403', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(404, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '190', '1', 'A1010404', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(405, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '190', '1', 'A1010405', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(406, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010406', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(407, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010407', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(408, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010408', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(409, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010409', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(410, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'A1010410', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(411, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010411', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(412, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010412', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(413, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'A1010413', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(414, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010414', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(415, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'A1010415', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(416, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'A1010416', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(417, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'A1010417', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(418, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010418', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(419, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010419', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(420, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010420', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(421, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010421', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(422, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010422', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(423, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010423', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(424, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010424', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(425, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010425', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(426, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010426', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(427, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010427', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(428, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010428', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(429, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010429', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(430, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010430', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(431, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010431', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(432, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010432', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(433, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010433', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(434, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010434', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(435, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010435', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(436, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010436', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(437, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010437', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(438, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010438', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(439, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010439', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(440, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010440', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(441, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010441', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(442, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010442', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(443, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010443', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(444, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010444', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(445, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010445', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(446, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010446', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(447, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010447', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(448, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010448', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(449, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010449', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(450, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010450', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(451, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010451', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(452, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010452', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(453, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010453', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(454, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010454', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(455, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010455', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(456, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010456', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(457, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010457', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(458, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010458', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(459, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010459', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(460, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010460', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(461, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010461', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(462, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010462', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(463, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010463', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(464, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010464', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(465, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010465', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(466, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010466', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(467, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010467', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(468, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010468', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(469, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010469', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(470, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010470', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(471, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010471', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(472, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010472', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(473, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010473', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(474, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010474', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(475, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010475', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(476, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010476', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(477, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010477', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(478, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010478', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(479, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010479', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(480, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010480', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(481, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010481', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(482, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010482', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(483, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010483', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(484, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010484', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(485, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010485', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(486, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010486', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(487, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010487', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(488, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010488', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(489, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010489', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(490, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010490', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(491, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010491', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(492, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010492', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(493, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010493', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(494, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010494', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(495, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010495', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(496, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010496', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(497, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010497', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(498, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010498', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(499, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010499', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(500, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010500', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(501, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010501', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(502, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010502', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(503, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010503', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(504, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010504', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(505, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010505', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(506, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010506', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(507, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010507', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(508, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010508', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(509, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010509', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(510, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010510', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(511, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010511', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(512, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010512', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(513, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010513', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(514, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010514', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(515, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010515', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(516, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010516', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(517, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010517', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(518, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010518', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(519, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010519', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(520, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010520', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(521, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010521', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(522, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010522', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(523, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010523', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(524, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010524', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(525, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010525', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(526, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010526', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(527, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010527', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(528, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010528', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(529, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010529', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(530, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010530', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(531, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010531', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(532, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010532', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(533, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010533', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(534, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010534', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(535, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010535', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(536, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010536', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(537, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010537', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(538, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010538', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(539, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010539', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(540, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010540', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(541, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010541', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(542, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010542', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(543, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010543', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(544, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010544', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(545, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010545', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(546, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010546', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(547, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010547', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(548, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010548', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(549, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010549', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(550, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010550', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(551, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010551', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(552, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010552', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(553, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010553', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(554, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010554', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(555, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010555', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(556, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010556', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(557, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010557', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(558, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010558', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(559, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010559', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(560, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010560', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(561, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010561', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(562, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010562', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(563, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010563', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(564, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010564', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(565, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010565', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(566, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010566', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(567, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010567', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(568, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010568', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(569, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010569', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(570, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010570', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(571, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010571', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(572, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010572', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(573, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010573', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(574, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010574', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(575, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010575', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(576, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010576', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(577, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010577', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(578, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010578', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(579, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010579', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(580, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010580', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(581, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010581', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(582, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010582', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(583, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010583', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(584, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010584', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(585, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010585', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(586, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010586', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(587, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010587', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(588, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010588', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(589, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010589', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(590, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010590', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(591, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010591', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(592, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010592', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(593, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010593', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(594, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010594', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(595, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010595', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(596, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010596', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(597, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010597', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(598, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010598', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(599, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010599', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(600, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010600', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(601, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010601', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(602, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010602', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(603, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010603', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(604, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010604', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(605, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010605', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(606, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010606', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(607, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010607', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(608, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010608', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(609, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010609', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(610, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010610', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(611, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010611', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(612, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010612', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(613, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010613', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(614, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010614', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(615, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010615', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(616, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010616', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(617, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010617', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(618, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010618', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(619, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010619', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(620, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010620', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(621, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010621', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(622, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010622', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(623, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010623', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(624, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010624', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(625, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010625', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(626, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010626', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(627, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010627', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(628, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010628', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(629, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010629', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(630, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010630', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(631, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010631', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(632, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010632', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(633, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010633', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(634, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010634', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(635, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010635', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(636, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010636', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(637, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010637', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(638, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010638', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(639, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010639', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(640, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010640', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(641, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010641', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(642, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010642', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(643, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010643', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(644, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010644', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(645, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010645', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(646, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010646', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(647, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010647', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(648, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010648', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(649, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010649', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(650, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010650', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(651, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010651', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(652, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010652', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(653, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010653', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(654, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010654', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(655, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010655', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(656, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010656', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(657, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010657', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(658, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010658', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(659, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010659', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(660, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010660', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(661, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010661', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(662, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010662', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(663, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010663', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(664, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010664', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(665, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010665', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(666, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010666', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(667, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010667', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(668, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010668', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(669, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010669', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(670, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010670', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(671, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010671', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(672, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010672', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(673, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010673', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(674, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010674', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(675, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010675', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(676, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010676', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(677, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010677', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(678, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010678', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(679, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010679', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(680, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010680', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(681, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010681', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(682, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010682', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(683, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010683', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(684, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010684', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(685, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010685', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(686, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010686', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(687, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010687', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(688, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010688', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(689, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010689', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(690, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010690', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(691, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010691', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(692, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010692', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(693, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010693', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(694, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010694', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(695, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010695', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(696, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010696', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(697, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010697', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(698, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010698', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(699, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010699', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(700, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010700', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(701, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010701', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(702, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010702', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(703, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010703', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(704, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010704', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(705, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010705', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(706, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010706', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(707, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010707', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(708, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010708', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(709, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010709', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(710, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010710', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(711, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010711', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(712, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010712', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(713, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010713', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(714, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010714', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(715, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010715', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(716, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010716', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(717, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010717', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(718, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010718', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(719, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010719', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(720, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010720', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(721, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010721', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(722, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010722', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(723, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010723', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(724, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010724', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(725, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010725', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(726, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010726', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(727, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010727', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(728, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010728', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(729, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010729', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(730, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010730', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(731, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010731', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(732, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010732', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(733, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010733', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(734, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010734', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(735, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010735', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(736, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010736', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(737, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010737', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(738, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010738', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(739, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010739', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(740, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010740', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(741, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010741', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(742, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010742', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(743, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010743', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(744, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010744', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(745, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010745', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(746, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010746', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(747, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010747', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(748, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010748', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(749, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010749', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(750, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010750', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(751, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010751', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(752, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010752', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(753, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010753', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(754, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010754', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(755, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010755', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(756, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010756', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(757, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010757', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(758, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010758', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(759, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010759', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(760, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010760', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(761, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010761', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(762, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010762', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(763, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010763', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(764, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010764', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(765, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010765', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(766, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010766', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(767, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010767', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(768, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010768', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(769, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010769', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(770, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010770', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(771, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010771', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(772, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010772', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(773, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010773', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(774, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010774', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(775, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010775', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(776, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010776', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(777, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010777', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(778, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010778', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(779, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010779', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(780, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010780', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(781, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010781', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(782, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010782', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(783, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010783', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(784, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010784', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(785, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010785', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(786, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010786', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(787, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010787', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(788, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010788', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(789, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010789', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(790, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010790', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(791, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010791', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(792, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010792', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(793, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010793', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(794, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010794', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(795, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010795', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(796, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010796', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(797, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010797', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(798, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010798', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(799, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010799', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(800, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010800', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(801, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010801', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(802, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010802', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(803, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010803', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(804, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010804', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(805, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010805', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(806, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010806', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(807, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010807', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(808, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010808', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(809, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010809', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(810, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010810', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(811, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010811', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(812, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010812', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(813, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010813', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(814, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010814', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(815, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010815', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(816, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010816', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(817, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010817', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(818, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010818', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(819, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010819', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(820, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010820', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(821, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010821', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(822, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010822', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(823, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010823', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(824, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010824', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(825, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010825', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(826, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010826', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(827, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010827', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(828, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010828', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(829, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010829', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(830, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010830', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(831, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010831', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(832, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010832', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(833, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010833', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(834, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010834', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(835, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010835', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(836, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010836', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(837, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010837', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(838, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010838', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(839, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010839', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(840, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010840', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(841, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010841', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(842, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010842', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(843, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010843', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(844, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010844', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(845, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010845', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(846, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010846', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(847, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010847', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(848, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010848', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(849, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010849', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(850, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010850', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(851, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010851', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(852, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010852', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(853, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010853', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(854, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010854', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(855, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010855', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(856, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010856', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(857, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010857', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(858, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010858', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(859, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010859', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(860, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010860', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(861, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010861', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(862, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010862', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(863, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010863', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(864, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010864', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(865, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010865', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(866, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010866', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(867, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010867', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(868, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010868', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(869, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010869', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(870, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010870', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(871, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010871', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(872, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010872', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(873, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010873', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(874, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010874', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(875, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010875', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(876, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010876', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(877, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010877', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(878, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010878', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(879, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010879', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(880, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010880', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(881, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010881', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(882, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010882', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(883, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010883', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(884, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010884', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(885, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010885', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(886, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010886', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(887, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010887', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(888, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010888', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(889, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010889', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(890, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010890', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(891, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010891', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(892, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010892', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(893, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010893', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(894, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010894', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(895, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010895', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(896, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010896', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(897, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010897', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(898, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010898', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(899, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010899', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(900, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010900', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(901, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010901', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(902, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010902', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(903, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010903', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(904, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010904', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(905, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010905', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(906, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010906', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(907, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010907', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(908, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010908', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(909, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010909', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(910, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010910', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(911, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010911', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(912, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010912', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(913, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010913', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(914, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010914', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(915, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010915', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(916, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010916', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(917, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010917', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(918, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010918', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(919, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010919', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(920, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010920', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(921, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010921', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(922, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010922', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(923, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010923', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(924, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010924', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(925, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010925', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(926, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010926', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(927, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010927', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(928, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010928', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(929, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010929', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(930, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010930', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(931, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010931', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(932, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010932', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(933, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010933', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(934, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010934', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(935, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010935', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(936, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010936', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(937, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010937', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(938, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010938', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(939, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010939', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(940, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010940', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(941, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010941', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(942, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010942', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(943, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010943', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(944, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010944', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(945, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010945', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(946, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010946', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(947, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010947', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(948, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010948', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(949, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010949', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(950, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010950', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(951, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010951', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(952, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010952', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(953, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010953', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(954, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010954', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(955, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010955', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(956, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010956', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(957, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010957', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(958, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010958', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(959, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010959', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(960, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010960', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(961, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010961', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(962, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010962', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(963, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010963', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(964, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010964', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(965, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010965', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(966, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010966', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(967, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010967', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(968, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010968', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(969, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010969', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(970, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010970', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(971, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010971', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(972, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010972', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(973, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010973', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(974, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010974', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(975, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010975', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(976, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010976', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(977, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010977', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(978, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010978', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(979, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010979', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(980, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010980', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(981, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010981', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(982, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010982', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(983, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010983', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(984, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010984', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(985, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010985', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(986, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010986', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(987, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010987', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(988, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010988', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(989, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010989', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(990, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010990', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(991, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010991', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(992, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010992', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(993, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010993', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(994, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010994', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(995, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010995', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(996, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010996', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(997, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010997', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(998, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010998', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(999, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1010999', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1000, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011000', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1001, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011001', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1002, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011002', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1003, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011003', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1004, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011004', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1005, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011005', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1006, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011006', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1007, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011007', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1008, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011008', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1009, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011009', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1010, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011010', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1011, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011011', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1012, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011012', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1013, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011013', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1014, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011014', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1015, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011015', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1016, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011016', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1017, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011017', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1018, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011018', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1019, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011019', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1020, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011020', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1021, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011021', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1022, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011022', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1023, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011023', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1024, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011024', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1025, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011025', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1026, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011026', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1027, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011027', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1028, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011028', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1029, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011029', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1030, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011030', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1031, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011031', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1032, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011032', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1033, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011033', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1034, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011034', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1035, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011035', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1036, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011036', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1037, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011037', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1038, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011038', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1039, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011039', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1040, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011040', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1041, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011041', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1042, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011042', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1043, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011043', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1044, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011044', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1045, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011045', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1046, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011046', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1047, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011047', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1048, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011048', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1049, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011049', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1050, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011050', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1051, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011051', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1052, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011052', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1053, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011053', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1054, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011054', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1055, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011055', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1056, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011056', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1057, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011057', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1058, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011058', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1059, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011059', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1060, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011060', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1061, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011061', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1062, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011062', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1063, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011063', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1064, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011064', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1065, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011065', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1066, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011066', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1067, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011067', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1068, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011068', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1069, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011069', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1070, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011070', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1071, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011071', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1072, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011072', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1073, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011073', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1074, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011074', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1075, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011075', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1076, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011076', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1077, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011077', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1078, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011078', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1079, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011079', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1080, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011080', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1081, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011081', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1082, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011082', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1083, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011083', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1084, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011084', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1085, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011085', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1086, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011086', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(1087, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011087', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1088, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011088', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1089, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011089', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1090, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011090', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1091, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011091', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1092, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011092', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1093, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011093', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1094, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011094', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1095, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011095', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1096, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011096', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1097, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011097', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1098, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011098', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1099, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011099', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1100, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011100', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1101, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011101', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1102, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011102', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1103, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011103', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1104, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011104', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1105, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011105', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1106, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011106', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1107, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011107', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1108, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011108', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1109, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011109', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1110, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011110', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1111, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011111', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1112, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011112', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1113, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011113', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1114, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011114', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1115, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011115', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1116, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011116', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1117, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011117', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1118, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011118', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1119, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011119', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1120, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011120', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1121, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011121', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1122, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011122', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1123, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011123', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1124, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011124', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1125, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011125', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1126, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011126', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1127, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011127', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1128, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011128', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1129, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011129', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1130, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011130', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1131, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011131', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1132, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011132', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1133, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011133', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1134, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011134', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1135, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011135', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1136, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011136', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1137, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011137', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1138, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011138', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1139, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011139', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1140, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011140', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1141, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011141', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1142, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011142', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1143, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011143', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1144, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011144', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1145, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011145', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1146, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011146', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1147, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011147', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1148, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011148', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1149, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011149', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1150, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011150', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1151, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011151', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1152, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011152', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1153, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011153', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1154, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011154', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1155, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011155', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1156, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011156', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1157, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011157', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1158, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011158', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1159, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011159', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1160, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011160', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1161, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011161', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1162, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011162', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1163, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011163', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1164, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011164', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1165, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011165', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1166, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011166', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1167, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011167', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1168, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011168', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1169, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011169', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1170, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011170', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1171, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011171', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1172, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011172', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1173, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011173', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1174, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011174', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1175, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011175', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1176, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011176', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1177, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011177', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1178, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011178', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1179, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011179', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1180, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011180', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1181, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011181', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1182, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011182', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1183, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011183', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1184, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011184', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1185, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011185', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1186, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011186', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1187, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011187', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1188, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011188', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1189, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011189', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1190, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011190', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1191, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011191', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1192, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011192', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1193, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011193', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1194, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011194', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1195, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011195', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1196, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011196', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1197, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011197', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1198, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011198', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1199, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011199', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1200, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011200', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1201, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011201', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1202, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011202', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1203, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011203', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1204, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011204', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1205, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011205', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1206, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011206', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1207, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011207', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1208, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011208', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1209, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011209', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1210, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011210', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1211, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011211', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1212, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011212', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1213, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011213', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1214, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011214', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1215, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011215', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1216, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011216', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1217, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011217', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1218, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011218', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1219, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011219', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1220, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011220', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1221, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011221', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1222, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011222', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1223, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011223', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1224, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011224', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1225, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011225', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1226, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011226', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1227, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011227', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1228, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011228', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1229, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011229', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1230, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011230', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1231, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011231', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1232, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011232', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1233, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011233', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1234, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011234', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1235, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011235', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1236, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011236', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1237, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011237', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1238, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011238', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1239, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011239', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1240, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011240', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1241, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011241', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1242, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011242', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1243, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011243', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1244, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011244', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1245, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011245', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1246, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011246', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1247, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011247', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1248, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011248', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1249, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011249', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1250, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011250', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1251, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011251', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1252, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011252', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1253, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011253', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1254, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011254', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1255, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011255', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1256, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011256', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1257, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011257', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1258, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011258', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1259, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011259', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1260, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011260', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1261, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011261', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1262, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011262', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1263, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011263', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1264, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011264', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1265, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011265', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1266, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011266', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1267, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011267', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1268, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011268', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1269, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011269', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1270, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011270', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1271, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011271', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1272, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011272', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1273, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011273', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1274, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011274', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1275, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011275', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1276, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011276', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1277, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011277', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1278, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011278', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1279, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011279', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1280, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011280', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1281, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011281', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1282, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011282', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1283, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011283', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1284, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011284', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1285, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011285', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1286, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011286', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1287, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011287', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1288, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011288', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1289, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011289', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1290, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011290', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1291, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011291', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1292, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011292', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1293, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011293', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1294, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011294', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1295, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011295', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1296, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011296', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1297, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011297', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1298, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011298', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1299, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011299', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1300, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011300', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1301, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011301', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1302, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011302', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1303, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011303', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1304, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011304', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1305, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011305', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1306, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011306', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1307, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011307', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1308, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011308', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1309, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011309', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1310, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011310', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1311, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011311', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1312, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011312', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1313, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011313', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1314, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011314', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1315, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011315', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1316, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011316', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1317, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011317', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1318, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011318', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1319, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011319', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1320, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011320', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1321, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011321', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1322, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011322', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1323, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011323', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1324, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011324', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1325, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011325', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1326, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011326', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1327, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011327', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1328, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011328', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1329, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011329', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1330, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011330', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1331, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011331', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1332, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011332', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1333, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011333', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1334, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011334', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1335, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011335', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1336, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011336', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1337, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011337', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1338, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011338', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1339, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011339', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1340, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011340', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1341, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011341', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1342, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011342', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1343, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011343', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1344, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011344', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1345, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011345', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1346, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011346', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1347, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011347', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1348, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011348', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1349, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011349', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1350, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011350', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1351, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011351', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1352, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011352', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1353, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011353', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1354, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011354', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1355, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011355', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1356, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011356', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(1357, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011357', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1358, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011358', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1359, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011359', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1360, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011360', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1361, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011361', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1362, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011362', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1363, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011363', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1364, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011364', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1365, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011365', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1366, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011366', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1367, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011367', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1368, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011368', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1369, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011369', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1370, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011370', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1371, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011371', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1372, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011372', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1373, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011373', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1374, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011374', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1375, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011375', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1376, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011376', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1377, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011377', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1378, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011378', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1379, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011379', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1380, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011380', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1381, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011381', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1382, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011382', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1383, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011383', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1384, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011384', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1385, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011385', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1386, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011386', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1387, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011387', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1388, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011388', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1389, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011389', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1390, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011390', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1391, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011391', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1392, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011392', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1393, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011393', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1394, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011394', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1395, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011395', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1396, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011396', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1397, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011397', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1398, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011398', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1399, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011399', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1400, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011400', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1401, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011401', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1402, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011402', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1403, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011403', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1404, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011404', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1405, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011405', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1406, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011406', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1407, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011407', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1408, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011408', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1409, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011409', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1410, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011410', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1411, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011411', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1412, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011412', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1413, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011413', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1414, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011414', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1415, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011415', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1416, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011416', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1417, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011417', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1418, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011418', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1419, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011419', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1420, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011420', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1421, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011421', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1422, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011422', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1423, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011423', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1424, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011424', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1425, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011425', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1426, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011426', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1427, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011427', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1428, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011428', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1429, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011429', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1430, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011430', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1431, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011431', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1432, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011432', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1433, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011433', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1434, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011434', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1435, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011435', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1436, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011436', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1437, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011437', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1438, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011438', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1439, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011439', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1440, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011440', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1441, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011441', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1442, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011442', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1443, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011443', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1444, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011444', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1445, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011445', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1446, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011446', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1447, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011447', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1448, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011448', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1449, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011449', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1450, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011450', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1451, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011451', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1452, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011452', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1453, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011453', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1454, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011454', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1455, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011455', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1456, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011456', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1457, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011457', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1458, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011458', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1459, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011459', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1460, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011460', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1461, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011461', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1462, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011462', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1463, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011463', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1464, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011464', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1465, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011465', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1466, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011466', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1467, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011467', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1468, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011468', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1469, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011469', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1470, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011470', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1471, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011471', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1472, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011472', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1473, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011473', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1474, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011474', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1475, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011475', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1476, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011476', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1477, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011477', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1478, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011478', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1479, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011479', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1480, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011480', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1481, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011481', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1482, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011482', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1483, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011483', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1484, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011484', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1485, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011485', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1486, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011486', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1487, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011487', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1488, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011488', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1489, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011489', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1490, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011490', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1491, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011491', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1492, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011492', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1493, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011493', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1494, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011494', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1495, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011495', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1496, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011496', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1497, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011497', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1498, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011498', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1499, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011499', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1500, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011500', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1501, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011501', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1502, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011502', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1503, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011503', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1504, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011504', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1505, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011505', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1506, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011506', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1507, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011507', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1508, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011508', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1509, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011509', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1510, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011510', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1511, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011511', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1512, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011512', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1513, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011513', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1514, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011514', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1515, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011515', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1516, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011516', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1517, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011517', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1518, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011518', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1519, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011519', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1520, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011520', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1521, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011521', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1522, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011522', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1523, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011523', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1524, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011524', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1525, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011525', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1526, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011526', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1527, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011527', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1528, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011528', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1529, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011529', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1530, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011530', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1531, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011531', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1532, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011532', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1533, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011533', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1534, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011534', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1535, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011535', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1536, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011536', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1537, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011537', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1538, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011538', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1539, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011539', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1540, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011540', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1541, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011541', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1542, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011542', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1543, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011543', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1544, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011544', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1545, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011545', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1546, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011546', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1547, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011547', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1548, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011548', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1549, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011549', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1550, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011550', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1551, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011551', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1552, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011552', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1553, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011553', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1554, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011554', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1555, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011555', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1556, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011556', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1557, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011557', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1558, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011558', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1559, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011559', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1560, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011560', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1561, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011561', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1562, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011562', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1563, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011563', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1564, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011564', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1565, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011565', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1566, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011566', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1567, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011567', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1568, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011568', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1569, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011569', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1570, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011570', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1571, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011571', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1572, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011572', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1573, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011573', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1574, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011574', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1575, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011575', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1576, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011576', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1577, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011577', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1578, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011578', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1579, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011579', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1580, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011580', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1581, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011581', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1582, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011582', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1583, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011583', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1584, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011584', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1585, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011585', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1586, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011586', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1587, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011587', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1588, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011588', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1589, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011589', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1590, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011590', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1591, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011591', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1592, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011592', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1593, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011593', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1594, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011594', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1595, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011595', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1596, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011596', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1597, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011597', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1598, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011598', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1599, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011599', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1600, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011600', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1601, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011601', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1602, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011602', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1603, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011603', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1604, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011604', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1605, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011605', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1606, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011606', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1607, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011607', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1608, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011608', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1609, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011609', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1610, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011610', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1611, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011611', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1612, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011612', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1613, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011613', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1614, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011614', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1615, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011615', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1616, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011616', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1617, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011617', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1618, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011618', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1619, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011619', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1620, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011620', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1621, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011621', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1622, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011622', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1623, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011623', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1624, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011624', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1625, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011625', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1626, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011626', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(1627, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011627', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1628, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011628', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1629, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011629', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1630, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011630', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1631, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011631', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1632, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011632', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1633, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011633', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1634, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011634', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1635, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011635', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1636, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011636', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1637, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011637', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1638, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011638', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1639, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011639', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1640, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011640', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1641, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011641', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1642, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011642', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1643, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011643', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1644, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011644', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1645, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011645', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1646, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011646', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1647, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011647', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1648, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011648', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1649, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011649', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1650, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011650', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1651, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011651', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1652, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011652', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1653, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011653', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1654, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011654', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1655, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011655', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1656, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011656', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1657, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011657', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1658, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011658', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1659, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011659', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1660, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011660', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1661, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011661', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1662, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011662', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1663, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011663', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1664, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011664', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1665, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011665', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1666, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011666', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1667, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011667', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1668, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011668', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1669, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011669', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1670, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011670', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1671, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011671', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1672, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011672', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1673, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011673', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1674, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011674', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1675, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011675', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1676, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011676', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1677, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011677', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1678, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011678', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1679, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011679', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1680, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011680', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1681, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011681', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1682, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011682', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1683, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011683', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1684, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011684', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1685, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011685', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1686, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011686', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1687, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011687', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1688, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011688', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1689, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011689', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1690, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011690', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1691, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011691', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1692, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011692', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1693, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011693', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1694, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011694', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1695, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011695', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1696, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011696', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1697, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011697', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1698, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011698', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1699, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011699', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1700, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011700', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1701, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011701', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1702, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011702', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1703, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011703', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1704, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011704', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1705, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011705', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1706, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011706', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1707, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011707', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1708, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011708', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1709, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011709', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1710, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011710', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1711, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011711', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1712, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011712', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1713, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011713', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1714, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011714', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1715, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011715', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1716, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011716', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1717, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011717', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1718, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011718', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1719, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011719', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1720, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011720', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1721, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011721', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1722, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011722', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1723, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011723', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1724, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011724', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1725, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011725', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1726, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011726', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1727, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011727', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1728, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011728', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1729, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011729', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1730, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011730', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1731, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011731', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1732, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011732', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1733, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011733', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1734, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011734', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1735, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011735', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1736, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011736', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1737, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011737', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1738, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011738', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1739, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011739', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1740, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011740', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1741, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011741', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1742, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011742', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1743, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011743', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1744, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011744', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1745, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011745', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1746, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011746', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1747, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011747', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1748, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011748', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1749, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011749', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1750, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011750', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1751, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011751', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1752, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011752', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1753, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011753', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1754, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011754', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1755, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011755', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1756, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011756', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1757, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011757', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1758, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011758', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1759, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011759', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1760, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011760', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1761, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011761', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1762, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011762', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1763, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011763', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1764, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011764', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1765, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011765', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1766, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011766', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1767, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011767', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1768, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011768', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1769, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011769', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1770, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011770', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1771, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011771', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1772, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011772', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1773, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011773', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1774, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011774', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1775, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011775', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1776, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011776', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1777, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011777', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1778, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011778', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1779, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011779', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1780, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011780', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1781, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011781', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1782, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011782', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1783, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011783', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1784, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011784', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1785, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011785', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1786, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011786', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1787, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011787', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1788, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011788', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1789, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011789', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1790, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011790', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1791, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011791', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1792, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011792', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1793, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011793', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1794, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011794', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1795, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011795', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1796, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011796', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1797, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011797', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1798, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011798', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1799, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011799', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1800, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011800', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1801, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011801', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1802, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011802', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1803, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011803', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1804, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011804', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1805, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011805', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1806, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011806', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1807, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011807', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1808, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011808', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1809, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011809', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1810, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011810', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1811, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011811', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1812, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011812', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1813, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011813', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1814, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011814', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1815, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011815', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1816, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011816', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1817, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011817', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1818, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011818', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1819, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011819', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1820, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011820', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1821, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011821', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1822, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011822', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1823, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011823', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1824, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011824', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1825, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011825', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1826, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011826', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1827, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011827', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1828, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011828', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1829, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011829', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1830, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011830', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1831, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011831', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1832, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011832', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1833, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011833', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1834, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011834', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1835, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011835', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1836, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011836', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1837, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011837', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1838, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011838', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1839, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011839', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1840, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011840', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1841, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011841', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1842, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011842', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1843, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011843', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1844, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011844', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1845, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011845', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1846, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011846', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1847, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011847', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1848, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011848', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1849, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011849', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1850, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011850', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1851, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011851', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1852, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011852', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1853, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011853', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1854, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011854', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1855, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011855', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1856, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011856', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1857, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011857', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1858, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011858', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1859, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011859', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1860, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011860', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1861, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011861', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1862, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011862', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1863, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011863', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1864, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011864', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1865, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011865', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1866, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011866', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1867, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011867', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1868, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011868', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1869, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011869', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1870, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011870', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1871, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011871', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1872, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011872', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1873, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011873', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1874, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011874', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1875, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011875', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1876, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011876', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1877, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011877', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1878, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011878', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1879, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011879', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1880, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011880', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1881, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011881', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1882, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011882', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1883, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011883', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1884, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011884', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1885, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011885', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1886, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011886', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1887, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011887', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1888, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011888', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1889, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011889', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1890, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011890', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1891, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011891', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1892, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011892', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1893, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011893', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1894, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011894', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1895, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011895', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1896, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011896', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(1897, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011897', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1898, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011898', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1899, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011899', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1900, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011900', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1901, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011901', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1902, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011902', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1903, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011903', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1904, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011904', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1905, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011905', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1906, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011906', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1907, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011907', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1908, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011908', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1909, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011909', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1910, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011910', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1911, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011911', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1912, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011912', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1913, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011913', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1914, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011914', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1915, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011915', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1916, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011916', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1917, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011917', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1918, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011918', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1919, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011919', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1920, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011920', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1921, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011921', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1922, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011922', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1923, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011923', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1924, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011924', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1925, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011925', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1926, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011926', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1927, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011927', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1928, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011928', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1929, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011929', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1930, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011930', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1931, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011931', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1932, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011932', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1933, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011933', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1934, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011934', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1935, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011935', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1936, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011936', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1937, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011937', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1938, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011938', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1939, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011939', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1940, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011940', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1941, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011941', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1942, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011942', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1943, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011943', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1944, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011944', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1945, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011945', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1946, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011946', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1947, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011947', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1948, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011948', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1949, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011949', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1950, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011950', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1951, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011951', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1952, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011952', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1953, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011953', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1954, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011954', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1955, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011955', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1956, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011956', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1957, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011957', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1958, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011958', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1959, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011959', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1960, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011960', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1961, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011961', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1962, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011962', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1963, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011963', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1964, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011964', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1965, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011965', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1966, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011966', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1967, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011967', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1968, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011968', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1969, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011969', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1970, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011970', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1971, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011971', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1972, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011972', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1973, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011973', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1974, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011974', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1975, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011975', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1976, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011976', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1977, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011977', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1978, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011978', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1979, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011979', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1980, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011980', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1981, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011981', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1982, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011982', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1983, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011983', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1984, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011984', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1985, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011985', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1986, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011986', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1987, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011987', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1988, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011988', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1989, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011989', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1990, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011990', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1991, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011991', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1992, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011992', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1993, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011993', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1994, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011994', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1995, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011995', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1996, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011996', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1997, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011997', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1998, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011998', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(1999, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1011999', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2000, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'A1012000', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2001, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010001', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2002, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010002', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2003, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010003', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2004, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010004', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2005, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010005', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2006, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010006', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2007, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010007', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2008, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010008', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2009, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010009', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2010, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010010', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2011, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010011', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2012, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010012', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2013, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010013', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2014, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010014', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2015, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010015', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2016, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010016', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2017, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010017', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2018, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010018', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2019, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010019', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2020, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010020', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2021, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010021', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2022, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010022', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2023, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010023', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2024, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010024', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2025, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010025', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2026, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010026', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2027, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010027', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2028, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010028', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2029, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010029', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2030, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010030', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2031, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010031', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2032, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010032', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2033, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010033', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2034, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010034', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2035, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010035', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2036, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010036', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2037, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010037', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2038, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010038', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2039, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010039', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2040, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010040', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2041, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010041', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2042, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010042', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2043, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010043', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2044, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010044', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2045, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010045', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2046, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010046', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2047, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010047', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2048, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010048', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2049, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010049', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2050, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010050', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2051, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010051', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2052, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010052', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2053, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010053', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2054, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010054', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2055, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010055', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2056, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010056', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2057, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010057', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2058, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010058', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2059, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010059', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2060, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010060', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2061, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010061', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2062, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010062', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2063, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010063', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2064, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010064', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2065, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010065', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2066, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010066', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2067, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010067', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2068, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010068', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2069, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010069', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2070, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010070', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2071, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010071', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2072, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010072', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2073, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010073', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2074, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010074', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2075, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010075', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2076, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010076', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2077, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010077', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2078, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010078', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2079, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010079', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2080, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010080', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2081, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010081', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2082, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010082', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2083, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010083', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2084, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010084', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2085, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010085', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2086, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010086', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2087, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010087', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2088, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010088', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2089, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010089', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2090, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010090', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2091, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010091', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2092, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010092', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2093, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010093', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2094, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010094', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2095, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010095', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2096, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010096', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2097, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010097', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2098, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010098', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2099, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010099', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2100, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010100', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2101, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010101', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2102, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010102', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2103, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010103', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2104, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010104', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2105, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010105', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2106, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010106', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2107, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010107', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2108, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010108', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2109, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010109', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2110, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010110', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2111, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010111', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2112, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010112', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2113, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010113', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2114, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010114', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2115, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010115', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2116, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010116', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2117, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010117', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2118, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010118', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2119, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010119', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2120, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010120', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2121, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010121', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2122, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010122', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2123, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010123', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2124, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010124', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2125, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010125', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2126, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010126', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2127, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010127', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2128, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010128', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2129, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010129', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2130, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010130', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2131, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010131', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2132, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010132', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2133, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010133', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2134, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010134', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2135, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010135', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2136, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010136', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2137, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010137', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2138, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010138', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2139, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '395', '2', 'A2010139', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2140, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '395', '2', 'A2010140', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2141, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010141', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2142, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '385', '2', 'A2010142', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2143, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '385', '2', 'A2010143', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2144, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010144', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2145, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010145', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2146, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010146', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2147, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010147', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2148, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010148', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2149, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010149', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2150, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010150', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2151, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010151', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2152, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010152', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2153, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010153', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2154, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010154', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2155, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010155', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2156, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '395', '2', 'A2010156', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2157, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010157', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2158, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010158', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2159, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010159', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2160, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010160', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2161, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010161', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2162, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010162', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2163, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010163', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2164, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010164', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2165, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010165', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2166, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010166', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2167, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010167', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2168, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010168', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2169, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010169', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2170, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010170', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2171, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010171', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2172, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010172', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2173, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010173', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2174, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010174', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2175, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010175', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2176, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010176', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2177, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010177', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2178, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010178', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2179, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010179', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2180, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010180', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2181, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010181', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2182, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010182', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2183, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010183', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2184, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010184', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2185, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010185', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2186, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010186', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2187, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010187', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2188, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010188', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2189, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010189', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2190, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010190', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2191, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010191', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2192, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010192', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2193, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010193', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2194, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010194', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2195, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010195', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2196, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010196', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2197, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010197', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2198, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010198', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2199, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010199', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2200, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010200', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2201, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010201', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2202, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010202', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2203, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010203', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2204, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010204', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2205, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010205', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2206, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010206', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2207, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010207', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2208, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010208', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2209, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010209', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2210, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010210', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2211, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010211', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2212, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010212', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2213, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010213', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2214, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010214', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2215, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010215', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2216, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010216', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2217, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010217', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2218, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010218', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2219, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010219', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2220, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010220', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2221, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010221', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2222, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010222', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2223, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010223', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2224, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010224', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2225, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010225', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2226, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010226', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(2227, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010227', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2228, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010228', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2229, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010229', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2230, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010230', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2231, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '395', '2', 'A2010231', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2232, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '395', '2', 'A2010232', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2233, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010233', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2234, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010234', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2235, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010235', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2236, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010236', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2237, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010237', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2238, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010238', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2239, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010239', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2240, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '395', '2', 'A2010240', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2241, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '380', '2', 'A2010241', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2242, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010242', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2243, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '380', '2', 'A2010243', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2244, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '380', '2', 'A2010244', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2245, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010245', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2246, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '380', '2', 'A2010246', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2247, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '380', '2', 'A2010247', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2248, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '395', '2', 'A2010248', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2249, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010249', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2250, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010250', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2251, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010251', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2252, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010252', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2253, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010253', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2254, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010254', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2255, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '370', '2', 'A2010255', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2256, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010256', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2257, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010257', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2258, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010258', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2259, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010259', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2260, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010260', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2261, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '370', '2', 'A2010261', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2262, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010262', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2263, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010263', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2264, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010264', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2265, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010265', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2266, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010266', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2267, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010267', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2268, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010268', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2269, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010269', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2270, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010270', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2271, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010271', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2272, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010272', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2273, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010273', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2274, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010274', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2275, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010275', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2276, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010276', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2277, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010277', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2278, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010278', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2279, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010279', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2280, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010280', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2281, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010281', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2282, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010282', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2283, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010283', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2284, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010284', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2285, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010285', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2286, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010286', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2287, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010287', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2288, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010288', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2289, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010289', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2290, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010290', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2291, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010291', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2292, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010292', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2293, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010293', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2294, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010294', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2295, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010295', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2296, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010296', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2297, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010297', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2298, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010298', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2299, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010299', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2300, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010300', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2301, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010301', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2302, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010302', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2303, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010303', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2304, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010304', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2305, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010305', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2306, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010306', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2307, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010307', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2308, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010308', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2309, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010309', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2310, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010310', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2311, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010311', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2312, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010312', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2313, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010313', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2314, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010314', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2315, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010315', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2316, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010316', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2317, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010317', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2318, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010318', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2319, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010319', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2320, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010320', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2321, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010321', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2322, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010322', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2323, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010323', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2324, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010324', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2325, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010325', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2326, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010326', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2327, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010327', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2328, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010328', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2329, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010329', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2330, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010330', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2331, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '395', '2', 'A2010331', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2332, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '395', '2', 'A2010332', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2333, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '380', '2', 'A2010333', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2334, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '395', '2', 'A2010334', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2335, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '395', '2', 'A2010335', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2336, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010336', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2337, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010337', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2338, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010338', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2339, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010339', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2340, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010340', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2341, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010341', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2342, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010342', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2343, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010343', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2344, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010344', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2345, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010345', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2346, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010346', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2347, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010347', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2348, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010348', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2349, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010349', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2350, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010350', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2351, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010351', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2352, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010352', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2353, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010353', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2354, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010354', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2355, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010355', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2356, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010356', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2357, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010357', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2358, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010358', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2359, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010359', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2360, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010360', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2361, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010361', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2362, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010362', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2363, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010363', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2364, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010364', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2365, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010365', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2366, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010366', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2367, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010367', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2368, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010368', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2369, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010369', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2370, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010370', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2371, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010371', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2372, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010372', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2373, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010373', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2374, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010374', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2375, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010375', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2376, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010376', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2377, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010377', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2378, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010378', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2379, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010379', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2380, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010380', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2381, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010381', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2382, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010382', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2383, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010383', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2384, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010384', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2385, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010385', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2386, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010386', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2387, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010387', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2388, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010388', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2389, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010389', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2390, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010390', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2391, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010391', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2392, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010392', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2393, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010393', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2394, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010394', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2395, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010395', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2396, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010396', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2397, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010397', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2398, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010398', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2399, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010399', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2400, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010400', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2401, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010401', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2402, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010402', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2403, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010403', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2404, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '370', '2', 'A2010404', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2405, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010405', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2406, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010406', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2407, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010407', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2408, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010408', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2409, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010409', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2410, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010410', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2411, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010411', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2412, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010412', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2413, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010413', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2414, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010414', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2415, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010415', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2416, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010416', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2417, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010417', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2418, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010418', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2419, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010419', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2420, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010420', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2421, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010421', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2422, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010422', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2423, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010423', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2424, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010424', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2425, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '385', '2', 'A2010425', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2426, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010426', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2427, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010427', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2428, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010428', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2429, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010429', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2430, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010430', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2431, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010431', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2432, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010432', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2433, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010433', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2434, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010434', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2435, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010435', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2436, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010436', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2437, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010437', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2438, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010438', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2439, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010439', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2440, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010440', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2441, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010441', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2442, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010442', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2443, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010443', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2444, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010444', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2445, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010445', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2446, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010446', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2447, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010447', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2448, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '350', '2', 'A2010448', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2449, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010449', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2450, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010450', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2451, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010451', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2452, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010452', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2453, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010453', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2454, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010454', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2455, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010455', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2456, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010456', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2457, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010457', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2458, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010458', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2459, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010459', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2460, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010460', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2461, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010461', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2462, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010462', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2463, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010463', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2464, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010464', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2465, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010465', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2466, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010466', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2467, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '365', '2', 'A2010467', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2468, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010468', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2469, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010469', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2470, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010470', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2471, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010471', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2472, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010472', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2473, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010473', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2474, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010474', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2475, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010475', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2476, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '370', '2', 'A2010476', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2477, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010477', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2478, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010478', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2479, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010479', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2480, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010480', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2481, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '370', '2', 'A2010481', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2482, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '370', '2', 'A2010482', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2483, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010483', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2484, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '370', '2', 'A2010484', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2485, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010485', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2486, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010486', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2487, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010487', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2488, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010488', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2489, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010489', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2490, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010490', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2491, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010491', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2492, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010492', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2493, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010493', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2494, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '390', '2', 'A2010494', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2495, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010495', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2496, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010496', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2497, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010497', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2498, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010498', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2499, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010499', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2500, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010500', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2501, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010501', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2502, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010502', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2503, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010503', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2504, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010504', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2505, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010505', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2506, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010506', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2507, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010507', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2508, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010508', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2509, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010509', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2510, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010510', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2511, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010511', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2512, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010512', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2513, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010513', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2514, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010514', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2515, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010515', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2516, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010516', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2517, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010517', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2518, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010518', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2519, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010519', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2520, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010520', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2521, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010521', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2522, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010522', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2523, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010523', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2524, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010524', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2525, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010525', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2526, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010526', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2527, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010527', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2528, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010528', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2529, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010529', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2530, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010530', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2531, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010531', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2532, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010532', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2533, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010533', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2534, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010534', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2535, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010535', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2536, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010536', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2537, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010537', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2538, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010538', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2539, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010539', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2540, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010540', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2541, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010541', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2542, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010542', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2543, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010543', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2544, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010544', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2545, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010545', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2546, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010546', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2547, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010547', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2548, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010548', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2549, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010549', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2550, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010550', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2551, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010551', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2552, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010552', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2553, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010553', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2554, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010554', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2555, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010555', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2556, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010556', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2557, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010557', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2558, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010558', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2559, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010559', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2560, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010560', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2561, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010561', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2562, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010562', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2563, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010563', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2564, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010564', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2565, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010565', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2566, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '360', '2', 'A2010566', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2567, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010567', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2568, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010568', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2569, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010569', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2570, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010570', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2571, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010571', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2572, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010572', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2573, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010573', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2574, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010574', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2575, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010575', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2576, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010576', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2577, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010577', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2578, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010578', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2579, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010579', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2580, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010580', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2581, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010581', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2582, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010582', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2583, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010583', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2584, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010584', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2585, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010585', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2586, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010586', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2587, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010587', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2588, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010588', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2589, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010589', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2590, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010590', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2591, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010591', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2592, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010592', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2593, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010593', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2594, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010594', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2595, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010595', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2596, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010596', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(2597, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010597', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2598, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010598', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2599, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010599', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2600, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010600', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2601, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010601', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2602, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010602', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2603, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010603', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2604, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010604', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2605, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010605', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2606, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010606', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2607, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010607', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2608, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010608', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2609, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010609', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2610, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010610', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2611, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010611', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2612, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010612', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2613, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010613', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2614, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010614', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2615, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010615', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2616, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010616', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2617, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010617', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2618, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010618', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2619, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010619', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2620, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010620', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2621, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010621', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2622, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010622', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2623, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010623', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2624, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010624', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2625, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010625', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2626, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010626', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2627, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010627', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2628, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010628', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2629, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010629', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2630, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010630', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2631, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010631', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2632, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010632', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2633, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010633', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2634, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010634', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2635, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010635', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2636, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010636', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2637, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010637', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2638, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010638', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2639, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010639', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2640, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010640', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2641, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010641', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2642, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010642', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2643, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010643', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2644, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010644', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2645, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010645', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2646, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010646', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2647, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010647', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2648, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010648', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2649, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010649', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2650, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010650', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2651, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010651', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2652, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010652', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2653, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010653', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2654, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010654', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2655, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010655', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2656, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010656', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2657, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010657', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2658, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010658', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2659, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010659', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2660, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010660', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2661, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010661', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2662, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010662', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2663, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010663', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2664, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010664', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2665, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010665', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2666, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010666', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2667, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010667', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2668, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010668', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2669, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010669', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2670, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010670', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2671, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010671', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2672, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010672', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2673, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010673', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2674, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010674', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2675, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010675', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2676, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010676', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2677, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010677', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2678, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010678', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2679, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010679', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2680, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010680', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2681, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010681', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2682, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010682', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2683, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010683', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2684, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010684', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2685, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010685', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2686, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010686', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2687, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010687', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2688, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010688', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2689, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010689', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2690, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010690', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2691, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010691', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2692, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010692', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2693, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010693', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2694, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010694', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2695, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010695', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2696, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010696', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2697, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010697', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2698, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010698', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2699, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010699', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2700, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010700', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2701, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010701', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2702, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010702', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2703, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010703', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2704, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010704', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2705, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010705', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2706, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010706', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2707, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010707', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2708, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010708', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2709, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010709', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2710, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010710', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2711, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010711', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2712, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010712', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2713, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010713', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2714, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010714', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2715, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010715', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2716, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010716', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2717, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010717', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2718, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010718', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2719, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010719', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2720, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010720', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2721, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010721', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2722, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010722', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2723, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010723', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2724, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010724', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2725, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010725', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2726, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010726', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2727, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010727', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2728, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010728', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2729, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010729', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2730, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010730', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2731, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010731', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2732, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010732', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2733, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010733', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2734, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010734', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2735, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010735', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2736, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010736', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2737, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010737', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2738, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010738', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2739, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010739', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2740, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010740', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2741, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010741', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2742, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010742', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2743, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010743', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2744, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010744', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2745, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010745', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2746, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010746', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2747, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010747', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2748, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010748', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2749, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010749', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2750, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010750', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2751, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010751', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2752, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010752', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2753, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010753', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2754, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010754', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2755, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010755', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2756, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010756', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2757, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010757', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2758, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010758', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2759, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010759', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2760, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010760', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2761, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010761', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2762, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010762', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2763, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010763', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2764, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010764', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2765, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010765', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2766, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010766', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2767, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010767', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2768, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010768', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2769, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010769', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2770, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010770', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2771, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010771', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2772, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010772', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2773, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010773', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2774, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010774', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2775, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010775', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2776, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010776', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2777, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010777', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2778, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010778', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2779, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010779', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2780, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010780', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2781, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010781', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2782, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010782', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2783, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010783', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2784, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010784', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2785, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010785', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2786, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010786', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2787, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010787', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2788, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010788', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2789, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010789', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2790, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010790', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2791, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010791', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2792, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010792', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2793, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010793', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2794, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010794', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2795, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010795', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2796, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010796', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2797, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010797', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2798, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010798', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2799, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010799', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2800, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010800', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2801, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010801', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2802, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010802', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2803, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010803', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2804, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010804', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2805, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010805', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2806, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010806', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2807, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010807', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2808, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010808', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2809, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010809', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2810, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010810', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2811, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010811', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2812, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010812', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2813, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010813', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2814, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010814', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2815, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010815', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2816, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010816', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2817, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010817', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2818, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010818', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2819, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010819', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2820, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010820', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2821, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010821', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2822, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010822', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2823, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010823', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2824, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010824', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2825, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010825', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2826, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010826', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2827, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010827', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2828, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010828', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2829, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010829', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2830, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010830', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2831, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010831', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2832, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010832', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2833, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010833', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2834, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010834', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2835, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010835', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2836, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010836', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2837, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010837', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2838, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010838', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2839, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010839', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2840, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010840', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2841, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010841', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2842, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010842', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2843, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010843', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2844, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010844', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2845, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010845', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2846, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010846', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2847, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010847', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2848, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010848', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2849, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010849', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2850, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010850', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2851, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010851', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2852, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010852', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2853, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010853', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2854, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010854', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2855, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010855', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2856, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010856', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2857, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010857', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2858, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010858', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2859, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010859', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2860, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010860', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2861, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010861', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2862, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010862', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2863, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010863', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2864, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010864', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2865, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010865', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2866, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010866', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2867, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010867', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2868, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010868', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2869, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010869', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2870, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010870', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2871, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010871', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2872, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010872', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2873, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010873', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2874, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010874', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2875, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010875', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2876, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010876', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2877, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010877', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2878, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010878', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2879, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010879', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2880, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010880', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2881, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010881', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2882, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010882', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2883, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010883', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2884, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010884', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2885, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010885', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2886, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010886', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2887, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010887', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2888, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010888', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2889, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010889', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2890, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010890', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2891, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010891', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2892, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010892', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2893, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010893', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2894, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010894', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2895, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010895', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2896, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010896', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2897, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010897', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2898, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010898', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2899, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010899', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2900, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010900', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2901, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010901', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2902, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010902', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2903, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010903', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2904, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010904', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2905, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010905', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2906, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010906', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2907, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010907', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2908, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010908', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2909, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010909', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2910, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010910', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2911, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010911', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2912, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010912', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2913, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010913', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2914, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010914', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2915, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010915', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2916, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010916', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2917, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010917', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2918, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010918', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2919, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010919', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2920, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010920', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2921, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010921', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2922, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010922', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2923, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010923', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2924, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010924', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2925, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010925', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2926, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010926', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2927, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010927', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2928, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010928', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2929, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010929', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2930, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010930', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2931, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010931', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2932, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010932', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2933, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010933', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2934, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010934', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2935, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010935', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2936, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010936', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2937, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010937', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2938, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010938', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2939, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010939', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2940, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010940', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2941, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010941', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2942, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010942', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2943, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010943', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2944, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010944', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2945, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010945', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2946, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010946', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2947, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010947', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2948, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010948', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2949, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010949', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2950, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010950', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2951, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010951', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2952, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010952', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2953, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010953', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2954, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010954', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2955, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010955', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2956, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010956', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2957, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010957', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2958, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010958', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2959, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010959', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2960, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010960', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2961, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010961', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2962, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010962', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2963, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010963', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2964, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010964', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2965, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010965', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2966, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010966', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2967, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010967', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(2968, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010968', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2969, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010969', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2970, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010970', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2971, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010971', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2972, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010972', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2973, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010973', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2974, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010974', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2975, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010975', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2976, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010976', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2977, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010977', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2978, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010978', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2979, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010979', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2980, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010980', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2981, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010981', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2982, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010982', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2983, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010983', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2984, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010984', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2985, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010985', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2986, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010986', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2987, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010987', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2988, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010988', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2989, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010989', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2990, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010990', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2991, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010991', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2992, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010992', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2993, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010993', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2994, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010994', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2995, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010995', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2996, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010996', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2997, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010997', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2998, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010998', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(2999, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2010999', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3000, 'kopsya2gramdepan.png', '', '', '', '', 'KOPSYA Gold 2 Gram', '0', '2', 'A2011000', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3001, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010001', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3002, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010002', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3003, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010003', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3004, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010004', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3005, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010005', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3006, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010006', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3007, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'AK010007', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3008, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010008', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3009, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010009', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3010, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010010', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3011, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010011', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3012, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010012', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3013, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010013', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3014, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010014', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3015, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010015', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3016, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010016', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3017, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010017', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3018, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010018', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3019, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010019', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3020, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010020', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3021, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010021', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3022, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010022', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3023, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010023', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3024, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010024', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3025, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010025', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3026, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010026', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3027, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010027', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3028, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010028', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3029, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010029', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3030, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010030', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3031, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010031', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3032, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010032', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3033, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010033', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3034, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010034', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3035, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010035', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3036, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010036', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3037, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010037', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3038, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010038', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3039, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010039', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3040, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010040', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3041, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010041', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3042, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010042', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3043, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010043', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3044, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010044', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3045, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010045', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3046, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010046', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3047, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010047', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3048, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010048', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3049, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010049', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3050, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010050', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3051, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010051', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3052, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010052', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3053, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010053', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3054, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010054', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3055, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010055', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3056, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010056', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3057, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010057', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3058, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010058', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3059, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010059', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3060, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010060', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3061, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010061', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3062, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010062', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3063, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010063', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3064, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010064', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3065, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010065', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3066, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010066', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3067, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010067', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3068, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010068', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3069, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010069', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3070, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010070', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3071, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010071', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3072, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010072', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3073, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010073', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3074, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010074', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3075, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010075', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3076, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010076', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3077, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'AK010077', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3078, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '178', '1', 'AK010078', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3079, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010079', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3080, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010080', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3081, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010081', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3082, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010082', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3083, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010083', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3084, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010084', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3085, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010085', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3086, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010086', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3087, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010087', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3088, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010088', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3089, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010089', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3090, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010090', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3091, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010091', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3092, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010092', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3093, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010093', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3094, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010094', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3095, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010095', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3096, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '195', '1', 'AK010096', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3097, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010097', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3098, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010098', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3099, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010099', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3100, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010100', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3101, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010101', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3102, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010102', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3103, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010103', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3104, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010104', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3105, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010105', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3106, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010106', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3107, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010107', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3108, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010108', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3109, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010109', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3110, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010110', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3111, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010111', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3112, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010112', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3113, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010113', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3114, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010114', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3115, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010115', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3116, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010116', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3117, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010117', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3118, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010118', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3119, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010119', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3120, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010120', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3121, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010121', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3122, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010122', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3123, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010123', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3124, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010124', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3125, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010125', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3126, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010126', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3127, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010127', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3128, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010128', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3129, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '190', '1', 'AK010129', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3130, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '190', '1', 'AK010130', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3131, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010131', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3132, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010132', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3133, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010133', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3134, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010134', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3135, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010135', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3136, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010136', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3137, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010137', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3138, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010138', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3139, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010139', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3140, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010140', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3141, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010141', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3142, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010142', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3143, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010143', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3144, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010144', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3145, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010145', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3146, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010146', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3147, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010147', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3148, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010148', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3149, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010149', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3150, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010150', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3151, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010151', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3152, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010152', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3153, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010153', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3154, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010154', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3155, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010155', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3156, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010156', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3157, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010157', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3158, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010158', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3159, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010159', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3160, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010160', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3161, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010161', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3162, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010162', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3163, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010163', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3164, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010164', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3165, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010165', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3166, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010166', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3167, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010167', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3168, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010168', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3169, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010169', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3170, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010170', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3171, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010171', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3172, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010172', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3173, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010173', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3174, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010174', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3175, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '200', '1', 'AK010175', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3176, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010176', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3177, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010177', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3178, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010178', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3179, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010179', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3180, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010180', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3181, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010181', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3182, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010182', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3183, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '195', '1', 'AK010183', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3184, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '195', '1', 'AK010184', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3185, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010185', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3186, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010186', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3187, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010187', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3188, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010188', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3189, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010189', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3190, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010190', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3191, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010191', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3192, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010192', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3193, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010193', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3194, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010194', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3195, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010195', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3196, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010196', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3197, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010197', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3198, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010198', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3199, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010199', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3200, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010200', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3201, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'AK010201', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3202, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010202', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3203, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010203', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3204, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010204', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3205, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010205', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3206, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010206', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3207, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010207', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3208, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010208', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3209, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010209', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3210, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010210', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3211, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010211', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3212, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010212', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3213, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010213', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3214, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010214', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3215, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010215', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3216, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010216', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3217, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010217', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3218, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010218', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3219, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010219', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3220, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010220', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3221, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010221', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3222, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010222', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3223, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010223', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3224, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010224', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3225, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010225', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3226, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010226', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3227, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010227', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3228, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010228', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3229, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010229', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3230, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010230', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3231, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010231', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3232, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010232', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3233, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010233', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3234, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010234', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3235, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010235', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3236, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010236', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3237, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010237', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3238, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '190', '1', 'AK010238', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3239, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010239', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3240, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010240', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3241, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010241', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3242, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010242', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3243, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010243', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3244, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010244', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3245, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010245', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(3246, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010246', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3247, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010247', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3248, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010248', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3249, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010249', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3250, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010250', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3251, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010251', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3252, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010252', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3253, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010253', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3254, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010254', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3255, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010255', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3256, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010256', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3257, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010257', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3258, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010258', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3259, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010259', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3260, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010260', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3261, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010261', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3262, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010262', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3263, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010263', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3264, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010264', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3265, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010265', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3266, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010266', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3267, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010267', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3268, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010268', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3269, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010269', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3270, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010270', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3271, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010271', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3272, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010272', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3273, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010273', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3274, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010274', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3275, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010275', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3276, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010276', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3277, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010277', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3278, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010278', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3279, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010279', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3280, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010280', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3281, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010281', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3282, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010282', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3283, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010283', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3284, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010284', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3285, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010285', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3286, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010286', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3287, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010287', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3288, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010288', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3289, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010289', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3290, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010290', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3291, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010291', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3292, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010292', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3293, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010293', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3294, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010294', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3295, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010295', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3296, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010296', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3297, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010297', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3298, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010298', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3299, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010299', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3300, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010300', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3301, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010301', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3302, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010302', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3303, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010303', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3304, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010304', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3305, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010305', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3306, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010306', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3307, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010307', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3308, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010308', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3309, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010309', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3310, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010310', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3311, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010311', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3312, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010312', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3313, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010313', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3314, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010314', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3315, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010315', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3316, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010316', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3317, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010317', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3318, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010318', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3319, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010319', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3320, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010320', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3321, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010321', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3322, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010322', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3323, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010323', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3324, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010324', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3325, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010325', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3326, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010326', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3327, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010327', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3328, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010328', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3329, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010329', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3330, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010330', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3331, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010331', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3332, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010332', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3333, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010333', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3334, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010334', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3335, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010335', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3336, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010336', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3337, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010337', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3338, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010338', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3339, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010339', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3340, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010340', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3341, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010341', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3342, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010342', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3343, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010343', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3344, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010344', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3345, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010345', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3346, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010346', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3347, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010347', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3348, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010348', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3349, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010349', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3350, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010350', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3351, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010351', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3352, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010352', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3353, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010353', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3354, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010354', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3355, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010355', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3356, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010356', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3357, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010357', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3358, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010358', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3359, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010359', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3360, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010360', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3361, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010361', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3362, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010362', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3363, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010363', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3364, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010364', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3365, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010365', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3366, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010366', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3367, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010367', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3368, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010368', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3369, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010369', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3370, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010370', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3371, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010371', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3372, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010372', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3373, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010373', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3374, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010374', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3375, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010375', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3376, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010376', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3377, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010377', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3378, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010378', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3379, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010379', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3380, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010380', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3381, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010381', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3382, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010382', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3383, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010383', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3384, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010384', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3385, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010385', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3386, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010386', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3387, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010387', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3388, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010388', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3389, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010389', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3390, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010390', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3391, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010391', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3392, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010392', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3393, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010393', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3394, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010394', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3395, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010395', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3396, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010396', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3397, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010397', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3398, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010398', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3399, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010399', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3400, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010400', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3401, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010401', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3402, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010402', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3403, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010403', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3404, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010404', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3405, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010405', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3406, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010406', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3407, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010407', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3408, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010408', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3409, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010409', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3410, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010410', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3411, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010411', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3412, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010412', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3413, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010413', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3414, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010414', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3415, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010415', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3416, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010416', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3417, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010417', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3418, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010418', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3419, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010419', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3420, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010420', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3421, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010421', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3422, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010422', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3423, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010423', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3424, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010424', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3425, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010425', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3426, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010426', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3427, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010427', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3428, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010428', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3429, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010429', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3430, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010430', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3431, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010431', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3432, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010432', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3433, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '185', '1', 'AK010433', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3434, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010434', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3435, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010435', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3436, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010436', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3437, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '178', '1', 'AK010437', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3438, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '180', '1', 'AK010438', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3439, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010439', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3440, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010440', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3441, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010441', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3442, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010442', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3443, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010443', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3444, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010444', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3445, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010445', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3446, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010446', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3447, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010447', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3448, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010448', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3449, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010449', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3450, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010450', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3451, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010451', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3452, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010452', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3453, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010453', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3454, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010454', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3455, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010455', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3456, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010456', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3457, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010457', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3458, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010458', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3459, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010459', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3460, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010460', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3461, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010461', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3462, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010462', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3463, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010463', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3464, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010464', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3465, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010465', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3466, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010466', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3467, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010467', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3468, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010468', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3469, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010469', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3470, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010470', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3471, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010471', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3472, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010472', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3473, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010473', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3474, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010474', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3475, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010475', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3476, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010476', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3477, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010477', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3478, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010478', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3479, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010479', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3480, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010480', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3481, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010481', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3482, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010482', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3483, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010483', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3484, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010484', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3485, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010485', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3486, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010486', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3487, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010487', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3488, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010488', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3489, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010489', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3490, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010490', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3491, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010491', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3492, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010492', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3493, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010493', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3494, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010494', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3495, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010495', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3496, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010496', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3497, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010497', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3498, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010498', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3499, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010499', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3500, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010500', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3501, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010501', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3502, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010502', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3503, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010503', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3504, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010504', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3505, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010505', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3506, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010506', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3507, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010507', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3508, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010508', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3509, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010509', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3510, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010510', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3511, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010511', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3512, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010512', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3513, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010513', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3514, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010514', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3515, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010515', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(3516, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010516', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3517, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010517', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3518, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010518', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3519, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010519', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3520, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010520', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3521, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010521', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3522, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010522', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3523, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010523', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3524, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010524', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3525, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010525', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3526, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010526', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3527, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010527', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3528, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010528', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3529, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010529', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3530, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010530', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3531, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010531', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3532, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010532', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3533, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010533', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3534, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010534', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3535, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010535', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3536, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010536', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3537, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010537', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3538, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010538', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3539, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010539', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3540, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010540', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3541, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010541', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3542, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010542', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3543, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010543', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3544, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010544', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3545, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010545', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3546, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010546', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3547, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010547', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3548, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010548', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3549, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010549', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3550, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010550', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3551, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010551', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3552, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010552', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3553, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010553', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3554, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010554', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3555, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010555', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3556, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010556', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3557, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010557', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3558, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010558', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3559, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010559', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3560, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010560', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3561, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010561', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3562, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010562', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3563, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010563', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3564, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010564', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3565, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010565', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3566, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010566', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3567, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010567', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3568, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010568', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3569, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010569', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3570, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010570', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3571, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010571', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3572, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010572', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3573, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010573', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3574, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010574', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3575, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010575', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3576, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010576', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3577, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010577', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3578, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010578', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3579, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010579', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3580, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010580', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3581, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010581', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3582, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010582', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3583, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010583', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3584, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010584', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3585, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010585', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3586, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010586', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3587, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010587', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3588, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010588', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3589, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010589', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3590, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010590', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3591, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010591', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3592, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010592', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3593, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010593', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3594, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010594', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3595, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010595', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3596, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010596', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3597, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010597', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3598, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010598', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3599, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010599', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3600, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010600', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3601, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010601', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3602, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010602', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3603, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010603', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3604, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010604', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3605, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010605', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3606, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010606', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3607, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010607', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3608, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010608', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3609, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010609', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3610, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010610', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3611, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010611', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3612, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010612', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3613, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010613', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3614, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010614', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3615, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010615', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3616, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010616', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3617, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010617', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3618, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010618', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3619, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010619', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3620, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010620', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3621, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010621', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3622, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010622', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3623, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010623', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3624, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010624', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3625, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010625', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3626, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010626', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3627, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010627', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3628, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010628', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3629, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010629', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3630, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010630', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3631, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010631', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3632, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010632', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3633, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010633', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3634, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010634', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3635, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010635', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3636, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010636', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3637, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010637', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3638, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010638', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3639, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010639', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3640, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010640', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3641, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010641', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3642, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010642', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3643, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010643', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3644, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010644', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3645, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010645', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3646, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010646', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3647, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010647', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3648, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010648', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3649, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010649', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3650, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010650', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3651, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010651', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3652, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010652', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3653, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010653', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3654, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010654', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3655, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010655', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3656, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010656', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3657, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010657', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3658, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010658', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3659, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010659', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3660, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010660', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3661, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010661', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3662, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010662', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3663, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010663', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3664, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010664', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3665, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010665', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3666, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010666', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3667, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010667', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3668, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010668', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3669, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010669', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3670, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010670', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3671, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010671', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3672, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010672', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3673, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010673', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3674, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010674', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3675, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010675', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3676, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010676', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3677, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010677', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3678, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010678', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3679, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010679', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3680, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010680', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3681, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010681', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3682, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010682', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3683, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010683', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3684, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010684', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3685, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010685', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3686, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010686', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3687, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010687', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3688, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010688', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3689, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010689', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3690, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010690', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3691, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010691', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3692, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010692', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3693, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010693', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3694, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010694', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3695, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010695', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3696, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010696', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3697, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010697', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3698, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010698', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3699, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010699', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3700, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010700', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3701, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010701', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3702, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010702', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3703, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010703', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3704, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010704', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3705, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010705', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3706, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010706', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3707, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010707', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3708, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010708', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3709, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010709', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3710, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010710', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3711, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010711', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3712, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010712', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3713, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010713', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3714, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010714', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3715, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010715', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3716, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010716', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3717, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010717', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3718, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010718', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3719, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010719', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3720, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010720', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3721, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010721', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3722, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010722', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3723, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010723', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3724, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010724', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3725, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010725', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3726, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010726', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3727, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010727', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3728, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010728', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3729, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010729', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3730, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010730', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3731, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010731', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3732, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010732', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3733, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010733', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3734, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010734', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3735, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010735', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3736, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010736', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3737, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010737', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3738, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010738', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3739, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010739', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3740, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010740', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3741, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010741', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3742, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010742', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3743, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010743', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3744, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010744', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3745, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010745', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3746, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010746', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3747, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010747', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3748, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010748', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3749, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010749', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3750, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010750', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3751, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010751', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3752, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010752', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3753, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010753', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3754, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010754', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3755, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010755', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3756, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010756', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3757, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010757', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3758, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010758', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3759, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010759', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3760, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010760', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3761, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010761', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3762, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010762', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3763, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010763', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3764, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010764', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3765, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010765', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3766, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010766', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3767, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010767', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3768, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010768', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3769, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010769', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3770, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010770', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3771, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010771', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3772, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010772', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3773, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010773', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3774, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010774', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3775, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010775', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3776, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010776', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3777, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010777', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3778, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010778', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3779, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010779', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3780, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010780', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3781, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010781', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3782, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010782', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3783, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010783', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3784, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010784', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3785, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010785', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');
INSERT INTO `vault` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`) VALUES
(3786, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010786', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3787, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010787', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3788, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010788', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3789, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010789', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3790, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010790', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3791, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010791', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3792, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010792', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3793, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010793', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3794, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010794', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3795, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010795', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3796, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010796', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3797, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010797', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3798, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010798', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3799, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010799', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3800, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010800', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3801, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010801', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3802, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010802', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3803, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010803', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3804, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010804', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3805, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010805', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3806, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010806', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3807, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010807', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3808, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010808', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3809, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010809', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3810, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010810', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3811, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010811', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3812, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010812', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3813, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010813', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3814, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010814', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3815, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010815', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3816, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010816', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3817, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010817', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3818, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010818', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3819, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010819', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3820, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010820', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3821, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010821', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3822, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010822', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3823, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010823', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3824, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010824', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3825, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010825', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3826, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010826', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3827, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010827', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3828, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010828', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3829, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010829', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3830, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010830', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3831, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010831', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3832, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010832', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3833, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010833', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3834, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010834', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3835, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010835', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3836, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010836', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3837, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010837', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3838, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010838', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3839, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010839', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3840, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010840', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3841, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010841', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3842, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010842', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3843, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010843', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3844, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010844', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3845, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010845', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3846, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010846', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3847, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010847', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3848, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010848', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3849, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010849', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3850, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010850', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3851, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010851', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3852, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010852', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3853, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010853', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3854, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010854', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3855, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010855', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3856, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010856', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3857, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010857', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3858, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010858', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3859, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010859', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3860, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010860', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3861, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010861', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3862, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010862', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3863, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010863', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3864, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010864', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3865, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010865', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3866, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010866', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3867, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010867', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3868, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010868', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3869, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010869', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3870, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010870', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3871, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010871', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3872, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010872', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3873, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010873', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3874, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010874', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3875, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010875', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3876, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010876', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3877, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010877', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3878, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010878', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3879, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010879', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3880, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010880', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3881, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010881', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3882, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010882', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3883, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010883', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3884, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010884', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3885, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010885', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3886, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010886', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3887, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010887', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3888, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010888', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3889, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010889', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3890, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010890', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3891, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010891', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3892, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010892', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3893, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010893', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3894, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010894', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3895, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010895', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3896, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010896', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3897, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010897', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3898, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010898', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3899, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010899', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3900, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010900', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3901, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010901', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3902, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010902', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3903, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010903', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3904, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010904', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3905, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010905', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3906, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010906', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3907, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010907', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3908, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010908', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3909, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010909', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3910, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010910', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3911, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010911', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3912, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010912', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3913, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010913', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3914, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010914', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3915, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010915', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3916, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010916', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3917, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010917', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3918, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010918', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3919, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010919', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3920, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010920', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3921, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010921', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3922, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010922', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3923, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010923', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3924, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010924', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3925, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010925', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3926, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010926', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3927, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010927', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3928, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010928', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3929, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010929', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3930, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010930', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3931, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010931', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3932, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010932', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3933, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010933', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3934, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010934', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3935, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010935', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3936, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010936', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3937, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010937', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3938, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010938', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3939, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010939', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3940, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010940', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3941, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010941', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3942, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010942', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3943, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010943', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3944, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010944', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3945, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010945', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3946, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010946', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3947, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010947', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3948, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010948', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3949, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010949', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3950, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010950', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3951, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010951', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3952, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010952', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3953, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010953', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3954, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010954', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3955, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010955', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3956, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010956', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3957, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010957', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3958, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010958', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3959, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010959', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3960, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010960', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3961, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010961', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3962, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010962', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3963, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010963', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3964, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010964', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3965, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010965', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3966, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010966', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3967, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010967', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3968, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010968', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3969, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010969', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3970, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010970', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3971, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010971', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3972, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010972', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3973, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010973', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3974, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010974', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3975, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010975', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3976, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010976', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3977, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010977', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3978, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010978', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3979, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010979', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3980, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010980', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3981, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010981', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3982, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010982', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3983, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010983', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3984, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010984', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3985, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010985', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3986, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010986', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3987, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010987', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3988, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010988', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3989, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010989', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3990, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010990', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3991, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010991', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3992, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010992', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3993, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010993', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3994, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010994', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3995, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010995', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3996, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010996', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3997, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010997', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3998, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010998', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(3999, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK010999', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00'),
(4000, 'kopsya1gramdepan.png', 'kopsya1grambelakang.png', 'kopsya1gramdepanangkasa.png', '', '', 'KOPSYA Gold 1 Gram', '0', '1', 'AK011000', NULL, 6, 3, 3, 1, 1, '0000-00-00 00:00:00');

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
  MODIFY `ba_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `banks_branch_info`
--
ALTER TABLE `banks_branch_info`
  MODIFY `bbi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=889;
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
  MODIFY `dd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
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
  MODIFY `itc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
  MODIFY `ts_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transaction_type`
--
ALTER TABLE `transaction_type`
  MODIFY `tt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
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
