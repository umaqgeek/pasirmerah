-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 08, 2016 at 10:55 AM
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
-- Table structure for table `vault_parent`
--

CREATE TABLE IF NOT EXISTS `vault_parent` (
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
  `v_regdate` datetime NOT NULL,
  `me_id_lock` int(11) NOT NULL DEFAULT '0',
  `ivt_id` int(11) NOT NULL,
  `ivmt_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vault_parent`
--

INSERT INTO `vault_parent` (`v_id`, `v_image`, `v_image2`, `v_image3`, `v_image4`, `v_image5`, `v_name`, `v_price_rate`, `v_weight`, `v_cert`, `v_desc`, `br_id`, `itc_id`, `vt_id`, `me_id`, `isc_id`, `v_regdate`, `me_id_lock`, `ivt_id`, `ivmt_id`) VALUES
(1, '9e1b1-minting1.png', NULL, NULL, NULL, NULL, 'Emas Merak biru 1.0 gram', '220', '1.0', 'MB01', NULL, 1, 3, 2, 1, 1, '0000-00-00 00:00:00', 0, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vault_parent`
--
ALTER TABLE `vault_parent`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vault_parent`
--
ALTER TABLE `vault_parent`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
