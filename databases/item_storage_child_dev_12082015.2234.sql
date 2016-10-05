-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 12, 2015 at 04:33 PM
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
-- Table structure for table `item_storage_child`
--

CREATE TABLE IF NOT EXISTS `item_storage_child` (
  `isc_id` int(11) NOT NULL,
  `is_id` int(11) NOT NULL,
  `isc_image` varchar(500) NOT NULL,
  `isc_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_storage_child`
--

INSERT INTO `item_storage_child` (`isc_id`, `is_id`, `isc_image`, `isc_status`) VALUES
(1, 1, '3940c-1dinar.jpg', 1),
(2, 1, '3940c-1dinar.jpg', 1),
(3, 1, '3940c-1dinar.jpg', 1),
(4, 4, '3940c-1dinar.jpg', 1),
(5, 4, '3940c-1dinar.jpg', 1),
(6, 4, '3940c-1dinar.jpg', 1),
(7, 5, '3940c-1dinar.jpg', 1),
(8, 5, '3940c-1dinar.jpg', 1),
(9, 5, '3940c-1dinar.jpg', 1),
(10, 5, '3940c-1dinar.jpg', 1),
(11, 7, '3940c-1dinar.jpg', 1),
(12, 7, '3940c-1dinar.jpg', 1),
(13, 7, '3940c-1dinar.jpg', 1),
(14, 7, '3940c-1dinar.jpg', 1),
(15, 7, '3940c-1dinar.jpg', 1),
(16, 7, '3940c-1dinar.jpg', 1),
(17, 7, '3940c-1dinar.jpg', 1),
(18, 7, '3940c-1dinar.jpg', 1),
(19, 7, '3940c-1dinar.jpg', 1),
(20, 7, '3940c-1dinar.jpg', 1),
(21, 7, '3940c-1dinar.jpg', 1),
(22, 7, '3940c-1dinar.jpg', 1),
(23, 7, '3940c-1dinar.jpg', 1),
(24, 9, '3940c-1dinar.jpg', 1),
(25, 9, '3940c-1dinar.jpg', 1),
(26, 9, '3940c-1dinar.jpg', 1),
(27, 9, '3940c-1dinar.jpg', 1),
(28, 9, '3940c-1dinar.jpg', 1),
(29, 10, '3940c-1dinar.jpg', 1),
(30, 2, '190c6-5dinar.jpg', 1),
(31, 2, '190c6-5dinar.jpg', 1),
(32, 2, '190c6-5dinar.jpg', 1),
(33, 6, '190c6-5dinar.jpg', 1),
(34, 6, '190c6-5dinar.jpg', 1),
(35, 8, '190c6-5dinar.jpg', 1),
(36, 8, '190c6-5dinar.jpg', 1),
(37, 3, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(38, 3, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item_storage_child`
--
ALTER TABLE `item_storage_child`
  ADD PRIMARY KEY (`isc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item_storage_child`
--
ALTER TABLE `item_storage_child`
  MODIFY `isc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
