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
-- Table structure for table `merchant_payment_api`
--

CREATE TABLE IF NOT EXISTS `merchant_payment_api` (
  `mpa_id` int(11) NOT NULL,
  `mia_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `mpa_product_name` varchar(200) NOT NULL,
  `mpa_detail` varchar(500) NOT NULL,
  `mpa_amount` varchar(200) NOT NULL DEFAULT '0',
  `mpa_gold_price` varchar(200) NOT NULL DEFAULT '0',
  `mpa_gold_purity` int(11) NOT NULL,
  `mpa_silver_price` varchar(200) NOT NULL DEFAULT '0',
  `mpa_silver_purity` int(11) NOT NULL,
  `mpa_delivery` varchar(200) NOT NULL DEFAULT '0',
  `mpa_gst` int(11) NOT NULL,
  `mpa_order_id` varchar(200) NOT NULL DEFAULT '0',
  `mpa_name` varchar(200) NOT NULL,
  `mpa_email` varchar(200) NOT NULL,
  `mpa_phone` varchar(200) NOT NULL,
  `mpa_hash` varchar(200) NOT NULL,
  `mpa_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `merchant_payment_api`
--
ALTER TABLE `merchant_payment_api`
  ADD PRIMARY KEY (`mpa_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `merchant_payment_api`
--
ALTER TABLE `merchant_payment_api`
  MODIFY `mpa_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
