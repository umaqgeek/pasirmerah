-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2016 at 10:19 AM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.13

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
-- Table structure for table `landing_page`
--

CREATE TABLE IF NOT EXISTS `landing_page` (
  `lan_id` int(11) NOT NULL AUTO_INCREMENT,
  `lan_image` varchar(2000) NOT NULL,
  `lan_title` varchar(100) NOT NULL,
  `lan_subtitle` varchar(2000) NOT NULL,
  `lan_status` int(11) NOT NULL,
  `lan_colour` varchar(11) NOT NULL,
  `lan_order` int(11) NOT NULL,
  PRIMARY KEY (`lan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `landing_page`
--

INSERT INTO `landing_page` (`lan_id`, `lan_image`, `lan_title`, `lan_subtitle`, `lan_status`, `lan_colour`, `lan_order`) VALUES
(1, '19866-newyear.jpg', 'HAPPY NEW YEAR 2016', 'It''s time to bask in the glory Of a fresh New Year Wishing you peace & Happiness On New Year Eve', 1, '1', 1),
(2, '0f9b1-maulidulrasul.jpg', 'Maulid Nabi MUHAMMAD', ' Sallallahu Alayhi Wasallam (SAW) <BR> " His birth was a light in the dark, His preach was an oasis in the dessert, His sacrifice was a bright moon in the lightless night "', 2, '1', 2),
(3, 'a55db-maalhijrah.jpg', 'SALAM MAAL HIJRAH (1437H)', 'It''s not difficult to change, the difficulties come within us. <br/> Begin with a step. Be the change. Salam Maal Hijrah. ', 2, '2', 3),
(4, 'ee8e3-makkah.jpg', 'EID ADHA MUBARAK', 'May the devine blessings of Allah fill your home and heart with the spirit of joy and open up newer opportunities for success.', 2, '2', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
