-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2016 at 11:43 AM
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
-- Table structure for table `withdrawal_gram_type`
--

CREATE TABLE IF NOT EXISTS `withdrawal_gram_type` (
  `wgt_id` int(11) NOT NULL,
  `wgt_code` varchar(200) NOT NULL,
  `wgt_desc` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawal_gram_type`
--

INSERT INTO `withdrawal_gram_type` (`wgt_id`, `wgt_code`, `wgt_desc`) VALUES
(1, 'outlet', 'Withdraw at Outlet'),
(2, 'home', 'Withdraw to Home'),
(3, 'outlet_purchased', 'Purchase at Outlet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `withdrawal_gram_type`
--
ALTER TABLE `withdrawal_gram_type`
  ADD PRIMARY KEY (`wgt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `withdrawal_gram_type`
--
ALTER TABLE `withdrawal_gram_type`
  MODIFY `wgt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
