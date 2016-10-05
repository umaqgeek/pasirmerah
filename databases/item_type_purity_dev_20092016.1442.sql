-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 20, 2016 at 08:42 AM
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
-- Table structure for table `item_type_purity`
--

CREATE TABLE IF NOT EXISTS `item_type_purity` (
  `itp_id` int(11) NOT NULL,
  `it_id` int(11) NOT NULL,
  `pu_id` int(11) NOT NULL,
  `itp_price` varchar(200) NOT NULL DEFAULT '0',
  `itp_price_buy` varchar(200) NOT NULL DEFAULT '0',
  `itp_marhun` varchar(200) NOT NULL DEFAULT '0',
  `itp_price_anon` varchar(200) NOT NULL DEFAULT '0',
  `itp_rate` varchar(200) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_type_purity`
--

INSERT INTO `item_type_purity` (`itp_id`, `it_id`, `pu_id`, `itp_price`, `itp_price_buy`, `itp_marhun`, `itp_price_anon`, `itp_rate`) VALUES
(1, 1, 1, '215', '193.5', '0', '0', '1'),
(2, 1, 2, '215', '193.5', '0', '0', '1'),
(3, 1, 3, '205', '184.5', '0', '0', '1'),
(4, 1, 4, '205', '0', '0', '0', '1'),
(5, 1, 5, '190', '0', '0', '0', '1'),
(6, 1, 6, '172', '0', '0', '0', '1'),
(7, 2, 1, '9.35', '8.00', '0', '0', '1'),
(8, 1, 7, '0', '0', '0', '0', '1'),
(9, 1, 8, '0', '0', '0', '0', '1'),
(10, 1, 9, '0', '0', '0', '0', '1'),
(11, 1, 10, '0', '0', '0', '0', '1'),
(12, 1, 11, '0', '0', '0', '0', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item_type_purity`
--
ALTER TABLE `item_type_purity`
  ADD PRIMARY KEY (`itp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item_type_purity`
--
ALTER TABLE `item_type_purity`
  MODIFY `itp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
