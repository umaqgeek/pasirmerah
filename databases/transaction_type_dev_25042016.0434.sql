-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 24, 2016 at 10:33 PM
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
-- Table structure for table `transaction_type`
--

CREATE TABLE IF NOT EXISTS `transaction_type` (
  `tt_id` int(11) NOT NULL,
  `tt_desc` varchar(200) NOT NULL,
  `tt_code` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_type`
--

INSERT INTO `transaction_type` (`tt_id`, `tt_desc`, `tt_code`) VALUES
(1, 'Send Payment', 'SP'),
(2, 'Withdrawal', 'WI'),
(3, 'Deposit', 'DE'),
(4, 'Amanah Deal', 'AD'),
(5, 'Purchase and Pawn', 'PP'),
(6, 'Pawn and Courier', 'PC'),
(7, 'Purchase and Keep', 'PK'),
(8, 'Payment Merchant', 'PM'),
(9, 'Redeem Gold/Silver', 'RGS'),
(10, 'Purchase and Courier', 'PUC'),
(11, 'Courier and Keep', 'CK'),
(12, 'Session Bidding Puchase', 'SBP'),
(13, 'Bidding Payment', 'BP'),
(14, 'Walk-in & Pawn', 'WiP'),
(15, 'Walk-in & Keep', 'WiK'),
(16, 'Refund', 'RE'),
(17, 'Convert to MYR', 'CM'),
(18, 'Safe Keeping Fee Payment', 'SKFP'),
(19, 'Loan Payment', 'LP'),
(20, 'Item Purchase (E-Dinar/E-Dirham -MYR)', 'IPD'),
(21, 'Item Purchase ( Physical Dinar & Dirham)', 'IPG'),
(22, 'Receive & Keep', 'RK'),
(23, 'Purchase', 'PU'),
(24, 'Keep Fee', 'KF'),
(25, 'GST Tax Fee', 'GST'),
(26, 'Deposit Fee', 'DF'),
(27, 'Bank Transfer Deposit', 'BTD'),
(28, 'Affiliate Commission', 'AC'),
(29, 'Withdrawal Money Fee', 'WM'),
(30, 'Withdrawal Gram Fee', 'WGF'),
(31, 'Withdrawal Gram', 'WG'),
(32, 'Bank Transaction Fee', 'BTF'),
(33, 'Inject Cash', 'IC'),
(34, 'Account Verification Fee', 'AV'),
(35, 'Send Payment Money', 'SPM'),
(36, 'Send Payment Money Fee', 'SPMF'),
(37, 'Receive Payment Money Fee', 'RPMF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction_type`
--
ALTER TABLE `transaction_type`
  ADD PRIMARY KEY (`tt_id`),
  ADD UNIQUE KEY `tt_code` (`tt_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction_type`
--
ALTER TABLE `transaction_type`
  MODIFY `tt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
