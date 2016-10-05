-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 23, 2016 at 08:19 AM
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
-- Table structure for table `dinarpal_funds`
--

CREATE TABLE IF NOT EXISTS `dinarpal_funds` (
  `df_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `df_code` varchar(200) NOT NULL,
  `df_desc` varchar(200) NOT NULL,
  `df_balance` varchar(200) NOT NULL,
  `df_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinarpal_funds`
--

INSERT INTO `dinarpal_funds` (`df_id`, `me_id`, `df_code`, `df_desc`, `df_balance`, `df_status`) VALUES
(1, 1, 'FEES', 'Fees Fund', '0', 1),
(2, 1, 'GST', 'GST Fund', '0', 1),
(3, 1, 'SALES', 'Sales Fund', '0', 1),
(4, 1, 'RAHNU', 'Ar-Rahnu Fund', '0', 1),
(5, 1, 'ITTIHAD', 'Ittihad Commission Fund', '0', 1),
(6, 1, 'AMANAH', 'Amanah Deal Fund', '0', 1),
(7, 1, 'BUYBACK', 'Item Buy Back Fund ', '0', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dinarpal_funds`
--
ALTER TABLE `dinarpal_funds`
  ADD PRIMARY KEY (`df_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dinarpal_funds`
--
ALTER TABLE `dinarpal_funds`
  MODIFY `df_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
