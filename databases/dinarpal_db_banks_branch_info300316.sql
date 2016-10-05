-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 30, 2016 at 09:56 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=120 ;

--
-- Dumping data for table `banks_branch_info`
--

INSERT INTO `banks_branch_info` (`bbi_id`, `ba_id`, `co_id`, `bbi_address`, `bbi_city`, `bbi_zipcode`, `bbi_state`, `bbi_phone`, `bbi_digitrouting`, `bbi_swiftcode`, `bbi_addinfo`, `bbi_status`) VALUES
(1, 10, 3, 'maybank sdn bhd, bandar mitc, 75450, ayer keroh, melaka.', 'ayer keroh', '75450', 'melaka', '0199993323', '123123123123', 'asdasdwasd', NULL, NULL),
(6, 10, 3, '138 - 142, Jalan Suria 2, Taman Malim Jaya, ', 'Melaka,', '75250 ', 'Melaka,', '+60 6-334 1559', NULL, NULL, NULL, NULL),
(7, 10, 3, 'Ayer Keroh Branch, No. G4 & G6 Lebuh Ayer Keroh, ', 'Ayer Keroh,', '75450 ', ' Malacca, ', '+60 6-232 7830', NULL, NULL, NULL, NULL),
(8, 10, 3, 'No 225, 226 & 227, Taman Melaka Jaya, Jalan Bandar Hilir,', ' Melaka, ', '75000', ' Melaka, ', '+606-281 0713', NULL, NULL, NULL, NULL),
(9, 10, 3, ' Cheng Branch, N0. 102-106 Jalan Cheng Baru 1, Taman Cheng Baru, ', 'Malacca, ', '75250 ', 'Malacca, ', '+60 6-337 1215', NULL, NULL, NULL, NULL),
(10, 10, 3, 'No. 21 & 23, Jalan KPAA 1, Kompleks Perniagaan Al-Azim,Phone:', 'Bukit Baru, ', ' 75150,  ', 'Melaka,', '+60 6-283 2776', NULL, NULL, NULL, NULL),
(11, 10, 3, '102-106, Jalan Cheng Baru 1, Taman Cheng Baru, ', ' Melaka,', '75260', ' Melaka,', NULL, NULL, NULL, NULL, NULL),
(12, 10, 3, ' Dataran Pahlawan Melaka Megamall, Lot Eatm 002, Jalan Merdeka, Melaka, ', 'Malacca,', '75000 ', 'Malacca,', '+60 6-282 8114', NULL, NULL, NULL, NULL),
(14, 10, 3, 'Kompleks Lamaniaga Pernama Kem Terendak, Kem Terendak, Melaka, ', 'Malacca, ', '76200 ', 'Malacca, ', '+60 1-300-88-6688', NULL, NULL, NULL, NULL),
(15, 10, 3, '4772-AG, Jalan Simpang Empat,', 'Alor Gajah,', ' 78000 ', 'Melaka, ', '+60 6-556 1970', NULL, NULL, NULL, NULL),
(16, 10, 3, ' Masjid Tanah Branch, SU 942 943 & 944 Jalan Bandar Baru 6, Taman Bandar Baru Masjid Tanah, ', ' Masjid Tanah,', '78300', ' Melaka, ', '+60 6-384 2323', NULL, NULL, NULL, NULL),
(17, 10, 3, 'Ground Floor & M. Floor, Bangunan UMNO, Lot 20, Jalan Kesang, ', ' Jasin,', '77000', ' Melaka,', '+606-529 2072', NULL, NULL, NULL, NULL),
(19, 10, 3, ' 114 & 114A, Graha Peladang, Jalan Hang Tuah, ', 'Melaka ', '75300  ', 'Melaka ', '+606-282 2214', NULL, 'MBBEMYKLMAL', NULL, NULL),
(20, 11, 3, '36 & 37 Lorong Setia 1 Air Keroh Heights ', ' Melaka', '75450', ' Melaka', ' 606 - 232 2189', NULL, NULL, NULL, NULL),
(21, 11, 3, 'AG 9495 Jalan Simpang 4 ', 'Alor Gajah', '78000 ', ' Melaka ', '606 - 556 2935', NULL, NULL, NULL, NULL),
(22, 11, 3, ' 30 Jalan Mutiara Melaka 2 Taman Mutiara Melaka', ' Melaka  ', ' 75350', ' Melaka  ', '606 - 317 6397', NULL, NULL, NULL, NULL),
(23, 11, 3, ' 3733 Jalan Kesang ', ' Jasin ', '77000', ' Melaka ', ' 606 - 529 8881', NULL, NULL, NULL, NULL),
(24, 11, 3, 'No 31 Kompleks Perniagaan Al-Azim Bukit Palah ', 'Melaka  ', '75150', 'Melaka  ', ' 606 - 283 8844', NULL, NULL, NULL, NULL),
(25, 11, 3, 'No 2-C  Jalan Cheng Perdana 1/1B Taman Cheng Perdana ', 'Melaka  ', '75250', 'Melaka  ', '606 - 312 5344', NULL, NULL, NULL, NULL),
(26, 11, 3, '110 Jalan Bendahara ', 'Melaka', '75100', 'Melaka', ' 606 - 283 4813', NULL, NULL, NULL, NULL),
(27, 11, 3, ' 188 Taman Melaka Raya Off Jalan Parameswara ', ' Melaka ', '75000', ' Melaka ', ' 606 - 284 8960', NULL, NULL, NULL, NULL),
(28, 11, 3, 'Graha UMNO Jalan Hang Tuah ', ' Melaka  ', '75300', ' Melaka  ', '606 - 284 0455', NULL, NULL, NULL, NULL),
(29, 12, 3, ' No. 19,21 & 23, Jalan Merdeka, Taman Delima Raya, Taman Melaka Raya, ', 'Malacca,', '75000,  ', 'Malacca,', '+60 6-282 5029', NULL, NULL, NULL, NULL),
(30, 12, 3, '5 & 6  Jalan Delima Raya 1 Taman Delima Raya  ', ' Bukit Baru ', '75150', ' Melaka ', '1 300 888 742', NULL, NULL, NULL, NULL),
(31, 12, 3, 'No.2 Jalan Lagenda 2 Taman 1 Lagenda', 'Melaka', ' 75400 ', 'Melaka', '+60 1-800-88-8742', NULL, NULL, NULL, NULL),
(32, 12, 3, ' Plaza Melaka, 477, Jalan Hang Tuah, ', ' Melaka,', '75300 ', ' Melaka,', '+60 6-284 0473', NULL, NULL, NULL, NULL),
(33, 12, 3, '329 & 329a Jalan Ong Kim Wee,', 'Malacca, ', ' 75300', 'Malacca, ', '+60 6-283 2094', NULL, NULL, NULL, NULL),
(34, 12, 3, ' No. 23, Jalan Merdeka, Taman Melaka Raya, ', 'Melaka,', '75000 ', 'Melaka,', '+60 6-282 5029', NULL, NULL, NULL, NULL),
(35, 12, 3, ' 2nd Floor, Rhb Bank Investment, Jalan Merdeka, Taman Melaka Raya,', ' Melaka,', ' 75000,', ' Melaka,', ' +60 6-283 3622', NULL, NULL, NULL, NULL),
(36, 13, 3, ' Pasaraya Bintang, Lot 213, Jalan TTC 9, Taman Teknologi Cheng,  ', 'Melaka,', '75250, ', 'Melaka,', '+60 3-2690 0900', NULL, NULL, NULL, NULL),
(37, 13, 3, 'No. 1 & 3, Jalan KF4, Kota Fesyen - MITC, Hang Tuah Jaya, 75450 Ayer Keroh, ', 'Melaka, ', '75450,', 'Melaka, ', '+60 6-232 0986', NULL, NULL, NULL, NULL),
(38, 13, 3, ' Kompleks Perniagaan Masjid Tanah,', 'Masjid Tanah,  ', ' 78300', 'Melaka,', '+60 6-384 5108', NULL, NULL, NULL, NULL),
(39, 15, 3, 'No. 2, Jalan BU 4, Taman Bachang Utama, Melaka, ', 'Malacca, ', '75350', 'Malacca, ', '+60 3-7626 8899', NULL, NULL, NULL, NULL),
(40, 15, 3, 'No. 105 & 107, Ground Floor, Jalan Melaka Raya 24, Taman Melaka Raya,', 'Melaka,', ' 75000,  ', 'Melaka,', '+60 7-433 3288', NULL, NULL, NULL, NULL),
(41, 15, 3, 'Lot BB-371 A & B Taman Melaka Baru Batu BerendamMelaka, ', 'Malacca, ', '75350 ', 'Malacca, ', '+60 6-317 3235', NULL, NULL, NULL, NULL),
(42, 15, 3, 'No. 345, Jalan Ong Kim Wee,', 'Melaka, ', ' 75300, ', 'Melaka, ', '+60 6-284 2311', NULL, NULL, NULL, NULL),
(43, 14, 3, '46 & 48, Jalan Mutiara Melaka 2, Mutiara Melaka, 75350 ', 'Bukit Berendam, ', '75350, ', 'Melaka, ', '+60 6-317 6204', NULL, NULL, NULL, NULL),
(44, 14, 3, ' 6, Jalan Suria 2, Taman Malim Jaya, ', 'Melaka,', '75250  ', 'Melaka,', '+60 6-334 6397', NULL, NULL, NULL, NULL),
(45, 14, 3, '300, Jalan Ong Kim Wee,', 'Melaka,', ' 75200', 'Melaka,', '+60 6-283 2052', NULL, NULL, NULL, NULL),
(46, 14, 3, '566, Jalan Merdeka, ', ' Melaka, ', '75000', ' Melaka, ', '+60 6-281 7527', NULL, NULL, NULL, NULL),
(47, 14, 3, ' 26, Lorong Setia 1, ', 'Ayer Keroh,', '75450 ', 'Melaka, ', '+60 6-232 7208', NULL, NULL, NULL, NULL),
(48, 12, 3, 'Lot 367 & 368,, Kompleks Perniagaan,', 'Masjid Tanah,', ' 78300,', ' Melaka', '+60 6-384 7712', NULL, NULL, NULL, NULL),
(49, 10, 3, 'AG-6344, Jalan Besar, Pulau Sebang,', ' Tampin,', ' 73000 ', ' Melaka ', '+606-441 7443', NULL, NULL, NULL, NULL),
(50, 10, 3, 'JB1, Jalan Debunga 1, Taman Debunga, ', ' Merlimau, ', '77300', 'Melaka ', '+606-263 1008', NULL, NULL, NULL, NULL),
(51, 10, 3, 'No 36 & 37, Jalan S2 B18, Biz Avenue, Seremban 2, ', 'Seremban,', '70300', ' Negeri Sembilan ', '+606-601 2166', NULL, NULL, NULL, NULL),
(52, 10, 3, '166 - 169, Jalan Dato'' Bandar Tunggal, ', 'Seremban, ', '70000 ', 'Negeri Sembilan ', '+606-762 5242', NULL, 'MBBEMYKLSBN ', NULL, NULL),
(53, 10, 3, '73 & 74, Jalan Taman Komersil Senawang 4, Taman Komersil Senawang,', ' Seremban, ', ' 70450', 'Negeri Sembilan ', '+606-679 4330', NULL, NULL, NULL, NULL),
(54, 10, 3, '56 & 57, Jalan Tuanku Antah,', ' Seremban, ', ' 70000', 'Negeri Sembilan ', '+606-761 1500', NULL, NULL, NULL, NULL),
(55, 10, 3, '409, Jalan Baru, ', 'Port Dickson, ', '71000', 'Negeri Sembilan', '+606-647 1263', NULL, NULL, NULL, NULL),
(56, 10, 3, ' PT 7443, Jalan BBN 1/2F, Bandar Baru Nilai, ', 'Nilai, ', '71800', 'Negeri Sembilan', '+606-799 3316', NULL, NULL, NULL, NULL),
(57, 10, 3, '1, Jalan Besar, Kawasan Hijau, ', 'Mantin, ', '71700 ', 'Negeri Sembilan ', '+606-758 1266', NULL, NULL, NULL, NULL),
(58, 10, 3, 'No 36 & 37, Jalan S2 B18, Biz Avenue, Seremban 2, ', ' Seremban, ', '70300', 'Negeri Sembilan', '+606-601 2166', NULL, NULL, NULL, NULL),
(59, 10, 3, '95 - 96, Jalan Dato'' Undang Johol,', ' Kuala Pilah, ', ' 72000', 'Negeri Sembilan', '+606-481 1695', NULL, NULL, NULL, NULL),
(60, 10, 3, '121, Jalan Keyser, Wisma UMNO, Jalan Dato'' Moyang Salleh,', 'Kuala Klawang, ', ' 71600', 'Negeri Sembilan', '+606-613 6344', NULL, NULL, NULL, NULL),
(61, 10, 3, 'Lots 3235-7, Gemencheh Baru, ', 'Gemencheh, ', '73200', 'Negeri Sembilan ', '+606-431 6279', NULL, NULL, NULL, NULL),
(62, 10, 3, '4 & 5, Jalan Tampin, ', 'Gemas,', '73400', ' Negeri Sembilan', '+607-948 1278', NULL, NULL, NULL, NULL),
(63, 10, 3, '58-60, Jalan Besar,', 'Bahau,', ' 72100 ', ' Negeri Sembilan', '+606-454 1137', NULL, NULL, NULL, NULL),
(64, 10, 3, '216 & 218, Jalan Besar, Taman Sembrong Baru, ', ' Yong Pen, ', '83700', 'Johor', '+607-467 5809', NULL, NULL, NULL, NULL),
(65, 10, 3, '4-5, Jalan Raya, Taman Tiram Baru, ', 'Ulu Tiram,', '81800', ' Johor', '+607-861 2662', NULL, NULL, NULL, NULL),
(66, 10, 3, '10 - 11, Jalan Muar, ', 'Tangkak, ', '84900  ', 'Johor', '+606-978 1269', NULL, NULL, NULL, NULL),
(67, 10, 3, '1, Kebudayaan 4, Taman Universiti, ', 'Skudai, ', '81300 ', 'Johor ', ' +607-521 4561', NULL, NULL, NULL, NULL),
(68, 10, 3, '15, Jalan Bestari 1/5, Taman Nusa Bestari, ', ' Skudai, ', '81300 ', 'Johor', '+607-512 7645', NULL, NULL, NULL, NULL),
(69, 10, 3, '18-20, Jalan Perwira 17, Taman Ungku Tun Aminah, ', 'Skudai, ', '81300', 'Johor', '+607-556 3944', NULL, NULL, NULL, NULL),
(70, 10, 3, '1 & 2, Jalan Kijang, Taman Mohd Yassin, ', 'Simpang Renggam, ', '86200 ', 'Johor', '+607-755 8530', NULL, NULL, NULL, NULL),
(71, 10, 3, 'No. 136 & 137, Jalan Senai Utama 5/17, ', 'Senai,', '81400', ' Johor', '+607-598 6233', NULL, NULL, NULL, NULL),
(72, 10, 3, 'No. 62J & 62K, Jalan Genuang, ', 'Segamat, ', '85000', 'Johor', '+607-932 0081', NULL, NULL, NULL, NULL),
(73, 10, 3, 'UMNO Building, Jalan Awang,', 'Segamat, Johor', ' 85000', NULL, '+607-931 7782', NULL, NULL, NULL, NULL),
(74, 10, 3, 'Lot 10, Jalan Muhibbah, ', ' Rengit, ', '83100', 'Johor', '+607-424 1322', NULL, NULL, NULL, NULL),
(76, 10, 3, 'No 7, 8, 9 & 10, Jalan Delima 5, Pusat Perdagangan Pontian, ', 'Pontian,', '82000 ', 'Johor ', '+607-687 1271', NULL, NULL, NULL, NULL),
(77, 10, 3, '7, Jalan Pasar, Sungai Rengit, ', ' Pengerang,', '81620', ' Johor', '+607-826 3466', NULL, NULL, NULL, NULL),
(78, 10, 3, '3-4, Jalan Johor, ', 'Pekan Nenas, ', '81500', 'Johor', '+607-699 1048', NULL, NULL, NULL, NULL),
(79, 10, 3, '14, Pusat Perdagangan, Jalan Bandar,', 'Pasir Gudang, ', ' 81700', 'Johor ', '+607-251 4696', NULL, 'MBBEMYKLPSG', NULL, NULL),
(80, 10, 3, 'No. 1 & 3, Jalan Cempaka 1, Taman Bunga Cempaka Biru, ', 'Parit Raja, ', '86400', 'Johor', '+607-454 4300', NULL, NULL, NULL, NULL),
(81, 10, 3, '170, Jalan Omar, ', 'Parit Jawa, ', '84150', 'Johor', '+606-987 4411', NULL, NULL, NULL, NULL),
(82, 10, 3, '2, Jalan Temenggong,', 'Paloh, ', ' 86600', 'Johor', '+607-781 2767', NULL, NULL, NULL, NULL),
(83, 10, 3, 'No. 14-3 & 14-4, Pagoh Main Road, Pekan Pagoh,', ' Muar, ', ' 84600', 'Johor', '+606-974 6051', NULL, NULL, NULL, NULL),
(84, 10, 3, '104, Jalan Abdullah, ', 'Muar, ', '80400', 'Johor', '+606-952 1544', NULL, NULL, NULL, NULL),
(85, 10, 3, 'No. 57-1 & 57-2, Jalan Sulaiman, ', 'Muar, ', '84000', 'Johor', '+606-952 3221', NULL, NULL, NULL, NULL),
(86, 10, 3, '22 - 4, Jalan Ismail, ', 'Mersing, ', '86800', 'Johor', '+607-799 1242', NULL, NULL, NULL, NULL),
(87, 10, 3, 'No. 17, Jalan Suria 3, Bandar Seri Alam, ', 'Masai, ', '81750', 'Johor', '+607-251 1966', NULL, NULL, NULL, NULL),
(88, 10, 3, ' G-01, 01-01 & 02-01, Block A, Permas Mall, No 3, Jalan Permas Utara, Bandar Baru Permas Jaya, ', ' Masai, ', '81750', 'Johor', '+607-388 1208', NULL, NULL, NULL, NULL),
(89, 10, 3, '1 & 3, Jalan Sutera 1, Taman Mewa, ', 'Layang-Layang, ', '81850  ', 'Johor', '+607-752 6485', NULL, NULL, NULL, NULL),
(90, 10, 3, '7/1, 7/2 & 7/3, Jalan Yong Peng, ', 'Labis, ', '85300', 'Johor', '+607-925 2022', NULL, NULL, NULL, NULL),
(92, 10, 3, 'Lot 101-103, Jalan Lagenda 1, Lagenda Heights, ', 'Sungai Petani,', '08000 ', ' Kedah ', '+604-425 0710', NULL, NULL, NULL, NULL),
(93, 10, 3, '146 - 7, Jalan Raya,', ' Kulai, ', ' 81000', 'Johor', '+607-663 1252', NULL, NULL, NULL, NULL),
(94, 10, 3, '21 & 22, Jalan Susur Satu, Batu 26, Jalan Air Hitam, Kelapa Sawit,', 'Kulai,  ', ' 81030 ', 'Johor', '+607-652 5384', NULL, NULL, NULL, NULL),
(95, 10, 3, '1B, Jalan Tun Abdul Jalil, Pusat Bandar, Bandar Tenggara, ', ' Kulai, ', '81000', 'Johor', '+607-896 1324', NULL, NULL, NULL, NULL),
(96, 10, 3, '18 & 19, Jalan Niaga Satu, Pusat Perdagangan,', 'Kota Tinggi,', ' 81900', ' Johor', '+607-883 5088', NULL, NULL, NULL, NULL),
(97, 10, 3, '18 & 19, Jalan Niaga Satu, Pusat Perdagangan, ', 'Kota Tinggi, ', '81900', 'Johor', '+607-883 5088', NULL, NULL, NULL, NULL),
(98, 10, 3, 'Kedai FELDA, Rancangan FELDA Air Tawar 5, ', 'Kota Tinggi, ', '81920', 'Johor', '+607-895 3641', NULL, NULL, NULL, NULL),
(99, 10, 3, 'Lot 5, Siar Jauhar, Dewan Negeri Johor, ', ' Kota Iskandar, ', '79100', 'Johor', '+607-556 0312', NULL, NULL, NULL, NULL),
(100, 10, 3, '30 - 34, Jalan Dato Haji Hassan, ', 'Kluang,', '86000', ' Johor', '+607-772 4718', NULL, NULL, NULL, NULL),
(101, 10, 3, '37, Jalan Intan 2/1, Taman Intan, ', ' Kluang, ', '86000', 'Johor ', '+607-774 5401', NULL, NULL, NULL, NULL),
(102, 10, 3, ' No. 5 & 7, Jalan Susur Dewata Satu, Larkin Perdana, ', 'Johor Bahru, ', '80350 ', 'Johor', '+607-235 3155', NULL, NULL, NULL, NULL),
(103, 10, 3, 'Lot 1-22, Level 1, 2 & 3, Johor Bahru City Centre, 106-108, Jalan Wong Ah Fook, ', 'Johor Bahru,', '80000', ' Johor', '+607-228 2400', NULL, 'MBBEMYKLJOB', NULL, NULL),
(104, 10, 3, '69 - 75, Jalan Meranti Merah, Kebun Teh,', 'Johor Bahru, ', ' 80250', 'Johor', '+607-333 2989', NULL, NULL, NULL, NULL),
(105, 10, 3, '49-A, Jalan Segget,', 'Johor Bahru, ', ' 80000', 'Johor', '+607-224 4930', NULL, NULL, NULL, NULL),
(106, 10, 3, '113-5, Jalan Glasiar, Taman Tasek, ', 'Johor Bahru, ', '80200 ', 'Johor', '+607-236 1500', NULL, NULL, NULL, NULL),
(107, 10, 3, ' No. 8, Jalan Setia Tropika 1/21, Taman Setia Tropika,', 'Johor Bahru, ', ' 81000 ', 'Johor', '+607-232 0748', NULL, NULL, NULL, NULL),
(108, 10, 3, 'Lot G02, AEON Bukit Indah Shopping Centre, No 8, Jalan Indah 15/2, Taman Bukit Indah, ', 'Johor Bahru,', '81200  ', ' Johor ', '+607-236 7045', NULL, NULL, NULL, NULL),
(109, 10, 3, '59, Jalan Sri Bahagia Lima, Taman Seri Bahagia, Tampoi,', 'Johor Bahru,', ' 81250', ' Johor', '+607-237 3645', NULL, NULL, NULL, NULL),
(110, 10, 3, 'No. 17 & 19, Jalan Persisiran Perling, Taman Perling, ', 'Johor Bahru,', '81200', ' Johor', '+607-238 5273', NULL, NULL, NULL, NULL),
(111, 10, 3, '10 & 12, Jalan Pingai, Taman Pelangi, ', 'Johor Bahru, ', '80400', 'Johor', '+607-334 7351', NULL, NULL, NULL, NULL),
(112, 10, 3, '47 & 49, Jalan Molek 3/1, Taman Molek, ', ' Johor Bahru, ', '81100 ', 'Johor', '+607-351 4568', NULL, NULL, NULL, NULL),
(113, 10, 3, '85 - 87, Jalan Dedap 6, Taman Johor Jaya, ', 'Johor Bahru, ', '81100', 'Johor ', '+607-355 3663', NULL, NULL, NULL, NULL),
(114, 10, 3, '175 & 176, Jalan PJ 7, Pekan Jitra 2,', 'Jitra, ', ' 06000 ', 'Johor', '+604-916 2248', NULL, NULL, NULL, NULL),
(115, 10, 3, 'No. 31 & 32, Jalan Mengkudu, Taman Abdul Rahman Jaafar, ', 'Batu Pahat, ', '83000 ', 'Johor ', '+607-433 4845', NULL, NULL, NULL, NULL),
(116, 10, 3, '84, Jalan Rahmat, ', ' Batu Pahat, ', '83000', 'Johor ', '+607-431 6844', NULL, NULL, NULL, NULL),
(117, 10, 3, '32 - 4, Jalan Rahmat, ', 'Batu Pahat, ', '83000 ', 'Johor ', '+607-434 1441', NULL, NULL, NULL, NULL),
(118, 10, 3, 'Lot 101-103, Jalan Lagenda 1, Lagenda Heights,', 'Sungai Petani,', ' 08000 ', ' Kedah', '+604-425 0710', NULL, NULL, NULL, NULL),
(119, 10, 3, '138 & 139, Jalan Kelab Cinta Sayang, Taman Ria Jaya, ', 'Sungai Petani,', '08000 ', ' Kedah ', '+604-441 3358', NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
