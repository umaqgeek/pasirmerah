-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 09, 2015 at 03:00 PM
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
-- Table structure for table `pawn_child_child`
--

CREATE TABLE IF NOT EXISTS `pawn_child_child` (
  `pcc_id` int(11) NOT NULL,
  `pc_id` int(11) NOT NULL,
  `pcc_image` varchar(500) NOT NULL,
  `pcc_status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pawn_child_child`
--

INSERT INTO `pawn_child_child` (`pcc_id`, `pc_id`, `pcc_image`, `pcc_status`) VALUES
(1, 2, '3940c-1dinar.jpg', 1),
(2, 2, '3940c-1dinar.jpg', 1),
(3, 2, '3940c-1dinar.jpg', 1),
(4, 2, '3940c-1dinar.jpg', 1),
(5, 2, '3940c-1dinar.jpg', 1),
(6, 2, '3940c-1dinar.jpg', 1),
(7, 2, '3940c-1dinar.jpg', 1),
(8, 2, '3940c-1dinar.jpg', 1),
(9, 2, '3940c-1dinar.jpg', 1),
(10, 2, '3940c-1dinar.jpg', 1),
(11, 2, '3940c-1dinar.jpg', 1),
(12, 2, '3940c-1dinar.jpg', 1),
(13, 2, '3940c-1dinar.jpg', 1),
(14, 2, '3940c-1dinar.jpg', 1),
(15, 2, '3940c-1dinar.jpg', 1),
(16, 2, '3940c-1dinar.jpg', 1),
(17, 2, '3940c-1dinar.jpg', 1),
(18, 2, '3940c-1dinar.jpg', 1),
(19, 2, '3940c-1dinar.jpg', 1),
(20, 4, '3940c-1dinar.jpg', 1),
(21, 5, '3940c-1dinar.jpg', 1),
(22, 5, '3940c-1dinar.jpg', 1),
(23, 5, '3940c-1dinar.jpg', 1),
(24, 5, '3940c-1dinar.jpg', 1),
(25, 1, '190c6-5dinar.jpg', 1),
(26, 1, '190c6-5dinar.jpg', 1),
(27, 1, '190c6-5dinar.jpg', 1),
(28, 3, 'a73dd-10dinar_2.jpg', 1),
(29, 3, 'a73dd-10dinar_2.jpg', 1),
(30, 6, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(31, 6, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1),
(32, 6, '4ed7f-dinar-kelantan-kgt-2012.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pawn_child_child`
--
ALTER TABLE `pawn_child_child`
  ADD PRIMARY KEY (`pcc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pawn_child_child`
--
ALTER TABLE `pawn_child_child`
  MODIFY `pcc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
