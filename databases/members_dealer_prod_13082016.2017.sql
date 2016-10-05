-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 13, 2016 at 08:11 PM
-- Server version: 5.5.50
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dinarpal_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `members_dealer`
--

CREATE TABLE IF NOT EXISTS `members_dealer` (
  `md_id` int(11) NOT NULL,
  `md_image` varchar(200) NOT NULL,
  `md_name` varchar(200) NOT NULL,
  `md_desc` text NOT NULL,
  `md_comm_rate_gram` varchar(200) NOT NULL DEFAULT '1',
  `md_comm_rate_money` varchar(200) NOT NULL DEFAULT '1',
  `md_invest` varchar(200) NOT NULL DEFAULT '0',
  `md_comm_percentage` varchar(200) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members_dealer`
--

INSERT INTO `members_dealer` (`md_id`, `md_image`, `md_name`, `md_desc`, `md_comm_rate_gram`, `md_comm_rate_money`, `md_invest`, `md_comm_percentage`) VALUES
(1, '01coin', 'Ittihad Dealer', 'Normal commission. You got MYR 1.00 for every 1.00 gram of Gold that your teammate had bought. You are the leader of your team.', '1.0', '1.0', '0', '0.0'),
(2, '02coin', 'Caliph Dealer', 'More advance than ittihad dealer. You got MYR 1.00 for every 1.00 gram of Gold/Silver that your teammate had bought. Plus 2.0% from current gold/silver price that your teammate had bought. You are the leader of your team.', '1.0', '1.0', '30000', '2.0'),
(3, '03coin', 'Aldhahab Dealer', 'More advance than caliph dealer. You got MYR 1.00 for every 1.00 gram of Gold/Silver that your teammate had bought. Plus 2.5% from current gold/silver price that your teammate had bought. You are the leader of your team.', '1.0', '1.0', '100000', '2.5'),
(4, '04coin', 'Alttajir Dealer', 'The highest level of dealer. More advance than aldhahab dealer. You got MYR 1.00 for every 1.00 gram of Gold/Silver that your teammate had bought. Plus 3.0% from current gold/silver price that your teammate had bought. You are the leader of your team.', '1.0', '1.0', '2000000', '3.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members_dealer`
--
ALTER TABLE `members_dealer`
  ADD PRIMARY KEY (`md_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members_dealer`
--
ALTER TABLE `members_dealer`
  MODIFY `md_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
