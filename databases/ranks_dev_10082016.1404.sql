-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 10, 2016 at 08:04 AM
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
-- Table structure for table `ranks`
--

CREATE TABLE IF NOT EXISTS `ranks` (
  `r_id` int(11) NOT NULL,
  `r_name` varchar(200) NOT NULL,
  `r_image` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`r_id`, `r_name`, `r_image`) VALUES
(1, 'Novice', '01private.png'),
(2, 'Beginner', '02corporal.png'),
(3, 'Merchant', '03sergeant.png'),
(4, 'Trader', '04lieutenant.png'),
(5, 'Senior Trader', '05captain.png'),
(6, 'Business Advisor', '06major.png'),
(7, 'Manager', '07commander.png'),
(8, 'General Manager', '08ltcolonel.png'),
(9, 'Wantrepreneur', '09colonel.png'),
(10, 'Aspiring Entrepreneur', '10general.png'),
(11, 'Successful Entrepreneur', '11fieldmarshal.png'),
(12, 'Serial Entrepreneur', '12suprememarshal.png'),
(13, 'National Gold Silver Trader', '13nationalforce.png'),
(14, 'World Class Gold Silver Trader', '14worldclassforce.png'),
(15, 'Legendary Gold Silver Trader', '15legendaryforce.png'),
(16, 'Caliph of Traders', '16godofwar.png'),
(17, 'Titan', '17titan.png'),
(18, 'Legend', '18legends.png'),
(19, 'Shark', '19shark3.png'),
(20, 'War Falcon', '20falcon1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
