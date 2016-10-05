-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 21, 2016 at 10:55 AM
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
-- Table structure for table `merchant_integration_api`
--

CREATE TABLE IF NOT EXISTS `merchant_integration_api` (
  `mia_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `mia_datetime` datetime NOT NULL,
  `mia_merchant_id` varchar(200) NOT NULL,
  `mia_secret_key` varchar(200) NOT NULL,
  `mia_return_url` varchar(500) NOT NULL,
  `mia_callback_url` varchar(500) NOT NULL,
  `mia_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `merchant_integration_api`
--
ALTER TABLE `merchant_integration_api`
  ADD PRIMARY KEY (`mia_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `merchant_integration_api`
--
ALTER TABLE `merchant_integration_api`
  MODIFY `mia_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
