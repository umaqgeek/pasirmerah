-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2016 at 09:51 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`r_id`, `r_name`, `r_image`) VALUES
(1, 'Private', '01private.png'),
(2, 'Corporal', '02corporal.png'),
(3, 'Sergeant', '03sergeant.png'),
(4, 'Lieutenant', '04lieutenant.png'),
(5, 'Captain', '05captain.png'),
(6, 'Major', '06major.png'),
(7, 'Commander', '07commander.png'),
(8, 'Lt. Colonel', '08ltcolonel.png'),
(9, 'Colonel', '09colonel.png'),
(10, 'General', '10general.png'),
(11, 'Field Marshal', '11fieldmarshal.png'),
(12, 'Supreme Marshal', '12suprememarshal.png'),
(13, 'National Force', '13nationalforce.png'),
(14, 'World Class Force', '14worldclassforce.png'),
(15, 'Legendary Force', '15legendaryforce.png'),
(16, 'God of War', '16godofwar.png'),
(17, 'Titan', '17titan.png'),
(18, 'Legend', '18legends.png');

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
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
