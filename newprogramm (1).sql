-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 02, 2020 at 05:23 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newprogramm`
--

-- --------------------------------------------------------

--
-- Table structure for table `affliated_payment`
--

DROP TABLE IF EXISTS `affliated_payment`;
CREATE TABLE IF NOT EXISTS `affliated_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `REGNO` varchar(20) NOT NULL,
  `ORDERID` varchar(30) NOT NULL,
  `MID` varchar(30) DEFAULT NULL,
  `TXNID` varchar(40) NOT NULL,
  `TXNAMOUNT` decimal(10,2) NOT NULL,
  `PAYMENTMODE` varchar(10) NOT NULL,
  `CURRENCY` varchar(10) DEFAULT NULL,
  `TXNDATE` datetime NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `TXNTYPE` varchar(20) NOT NULL,
  `RESPCODE` smallint(6) NOT NULL,
  `RESPMSG` varchar(30) NOT NULL,
  `GATEWAYNAME` varchar(30) NOT NULL,
  `BANKTXNID` varchar(20) NOT NULL,
  `BANKNAME` varchar(50) NOT NULL,
  `REFUNDAMT` decimal(10,2) NOT NULL,
  `CHECKSUMHASH` varchar(300) DEFAULT NULL,
  `DEGL` varchar(20) DEFAULT NULL,
  `DEGREE` varchar(200) DEFAULT NULL,
  `Addi` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affliated_payment`
--

INSERT INTO `affliated_payment` (`id`, `REGNO`, `ORDERID`, `MID`, `TXNID`, `TXNAMOUNT`, `PAYMENTMODE`, `CURRENCY`, `TXNDATE`, `STATUS`, `TXNTYPE`, `RESPCODE`, `RESPMSG`, `GATEWAYNAME`, `BANKTXNID`, `BANKNAME`, `REFUNDAMT`, `CHECKSUMHASH`, `DEGL`, `DEGREE`, `Addi`) VALUES
(3, '113', 'PERAFFI87428401', 'Periya71653095213095', '20191010111212800110168816592107650', '19040.00', 'NB', NULL, '2019-10-10 11:17:44', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'INDB', '1805008539', 'INDB', '0.00', NULL, '', '', 'New'),
(4, '108', 'PERAFFI58759312', 'Periya71653095213095', '20191010111212800110168317691572858', '19040.00', 'NB', NULL, '2019-10-10 12:46:44', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', '85Y943R4AQ', 'LVB', '0.00', NULL, '', '', 'New'),
(5, '164', 'PERAFFI77876895', NULL, '20191014111212800110168344392381530', '19040.00', 'NB', NULL, '2019-10-14 12:35:57', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', 'CNH0PCM9XN', 'LVB', '0.00', NULL, '', '', 'New'),
(6, '5011', 'PERAFFI89286537', NULL, '20191018111212800110168170693082674', '1.00', 'DC', NULL, '2019-10-18 14:36:38', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'ICICIPAY', '68062517952', 'CANARA BANK', '0.00', NULL, 'UG', 'B.A.English', 'New'),
(7, '165', 'PERAFFI98321923', NULL, '20191019111212800110168168493538519', '19040.00', 'NB', NULL, '2019-10-19 15:18:07', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'INDB', '1817896153', 'INDB', '0.00', NULL, 'PG', 'M.A. History', 'New'),
(8, '164', 'PERAFFI12044678', NULL, '20191019111212800110168276993616441', '19040.00', 'NB', NULL, '2019-10-19 15:23:05', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', 'LPIWZZI5P4', 'LVB', '0.00', NULL, 'UG', 'B.Sc. Microbiology', 'New'),
(9, '164', 'PERAFFI8275369', NULL, '20191019111212800110168432893370313', '19040.00', 'NB', NULL, '2019-10-19 15:25:50', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', 'TC5RQE2IN7', 'LVB', '0.00', NULL, 'PG', 'M.Sc. Physics', 'New'),
(10, '108', 'PERAFFI32909946', NULL, '20191019111212800110168614094038110', '19040.00', 'NB', NULL, '2019-10-19 15:30:21', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', 'H0ACVYRT7U', 'LVB', '0.00', NULL, 'UG', 'B.Sc Visual Communication ', 'New'),
(11, '108', 'PERAFFI70241323', NULL, '20191019111212800110168858793235880', '19040.00', 'NB', NULL, '2019-10-19 15:33:05', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', 'AEJTRQPCJC', 'LVB', '0.00', NULL, 'UG', '0', 'New'),
(12, '108', 'PERAFFI69406521', NULL, '20191019111212800110168063693154723', '19040.00', 'NB', NULL, '2019-10-19 15:34:43', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', 'MIR75DNB4Q', 'LVB', '0.00', NULL, 'PG', 'M.A. Tamil', 'New'),
(13, '165', 'PERAFFI21971682', NULL, '20191019111212800110168995293346790', '19040.00', 'NB', NULL, '2019-10-19 15:36:05', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'INDB', '1817932144', 'INDB', '0.00', NULL, 'PG', 'M.Sc. Nutrition and Dietetics ', 'New'),
(14, '165', 'PERAFFI25742159', NULL, '20191019111212800110168368493597917', '19040.00', 'NB', NULL, '2019-10-19 16:21:58', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'INDB', '1818007553', 'INDB', '0.00', NULL, 'UG', 'B.Sc. Psychology ', 'New'),
(15, '165', 'PERAFFI26639913', 'Periya71653095213095', '20191019111212800110168325893574320', '19040.00', 'NB', NULL, '2019-10-19 15:43:32', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'INDB', '1817940077', 'INDB', '0.00', NULL, 'UG', 'B.A.Sociology-2018-2019 Onwards', 'New'),
(16, '117', 'PERAFFI82155198', NULL, '20191023111212800110168461194094930', '19040.00', 'NB', NULL, '2019-10-23 12:41:41', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'KVB', '656089900401869', 'KVB', '0.00', NULL, 'UG', 'B.Sc. Nutrition  & Dietetics', 'New'),
(17, '117', 'PERAFFI42788785', NULL, '20191023111212800110168247994111401', '19040.00', 'NB', NULL, '2019-10-23 12:45:04', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'KVB', '884662900405171', 'KVB', '0.00', NULL, 'UG', 'B.Sc. Costume Design and Fashion', 'New'),
(18, '211', 'PERAFFI57652450', NULL, '20191023111212800110168790794226736', '19040.00', 'DC', NULL, '2019-10-23 16:20:24', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'ICICIPAY', '68089942553', 'IDBI BANK LTD', '0.00', NULL, 'UG', 'B.Sc. Zoology', 'New'),
(19, '156', 'PERAFFI30636060', 'Periya71653095213095', '20191023111212800110168433294074964', '19040.00', 'NB', NULL, '2019-10-23 15:51:54', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '112981153', 'UNI', '0.00', NULL, 'UG', 'B.Sc. Geography', 'New'),
(20, '156', 'PERAFFI65930337', 'Periya71653095213095', '20191023111212800110168654494303922', '19040.00', 'NB', NULL, '2019-10-23 15:35:42', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '112979573', 'UNI', '0.00', NULL, 'UG', 'B.Sc Visual Communication', 'New'),
(21, '5011', 'PERAFFI74730788', NULL, '20191025111212800110168793594611858', '1.00', 'DC', NULL, '2019-10-25 10:04:53', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'ICICIPAY', '68099375438', 'CANARA BANK', '0.00', NULL, 'UG', 'B.Sc. Computer Science', 'New'),
(22, '210', 'PERAFFI67154042', NULL, '20191025111212800110168285494729340', '19040.00', 'NB', NULL, '2019-10-25 11:52:39', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', '1W02XI3J59', 'LVB', '0.00', NULL, 'UG', 'B.A. History', 'New'),
(23, '206', 'PERAFFI74415420', NULL, '20191025111212800110168002694104311', '19040.00', 'NB', NULL, '2019-10-25 11:58:08', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '113073439', 'UNI', '0.00', NULL, 'UG', 'B.Sc. Chemistry', 'New'),
(24, '210', 'PERAFFI39297808', NULL, '20191025111212800110168978894908519', '19040.00', 'NB', NULL, '2019-10-25 11:59:03', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', 'VUON19A8SU', 'LVB', '0.00', NULL, 'UG', 'B.Sc. Biotechnology', 'New'),
(25, '176', 'PERAFFI74115078', NULL, '20191025111212800110168660394331658', '19040.00', 'DC', NULL, '2019-10-25 12:01:06', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'ICICIPAY', '68099981372', 'THE SOUTH INDIAN BANK LTD', '0.00', NULL, 'UG', 'B.A. History', 'New'),
(26, '210', 'PERAFFI87306400', NULL, '20191025111212800110168571494311148', '19040.00', 'NB', NULL, '2019-10-25 12:02:31', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', 'UDQ6KLG607', 'LVB', '0.00', NULL, 'UG', 'B.B.A', 'New'),
(27, '206', 'PERAFFI9608958', NULL, '20191025111212800110168981795005305', '19040.00', 'NB', NULL, '2019-10-25 12:03:06', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '113073827', 'UNI', '0.00', NULL, 'UG', 'B.Sc. Physics', 'New'),
(28, '210', 'PERAFFI91250297', NULL, '20191025111212800110168402894215620', '19040.00', 'NB', NULL, '2019-10-25 12:06:01', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', '9QLNZ9LIE2', 'LVB', '0.00', NULL, 'UG', 'B.Sc. Chemistry', 'Add'),
(29, '206', 'PERAFFI32637303', NULL, '20191025111212800110168968294395008', '19040.00', 'NB', NULL, '2019-10-25 12:07:14', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '113074374', 'UNI', '0.00', NULL, 'UG', 'B.Com (Computer Application)', 'Add'),
(30, '176', 'PERAFFI99764981', NULL, '20191025111212800110168422794437527', '19040.00', 'DC', NULL, '2019-10-25 12:12:34', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'ICICIPAY', '68100030694', 'THE SOUTH INDIAN BANK LTD', '0.00', NULL, 'UG', 'B.Sc. Textile and Fashion Designing', 'New'),
(31, '210', 'PERAFFI22813182', NULL, '20191025111212800110168829794477056', '19040.00', 'NB', NULL, '2019-10-25 12:16:53', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', '4PGASIMT2D', 'LVB', '0.00', NULL, 'UG', 'B.Sc. Computer Science', 'Add'),
(32, '210', 'PERAFFI57247182', NULL, '20191025111212800110168214294224084', '19040.00', 'NB', NULL, '2019-10-25 12:19:58', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', 'TSX4UARE09', 'LVB', '0.00', NULL, 'UG', 'B.Com', 'Add'),
(33, '210', 'PERAFFI43030617', NULL, '20191025111212800110168912394311421', '19040.00', 'NB', NULL, '2019-10-25 12:26:23', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', 'PLWR65NXD1', 'LVB', '0.00', NULL, 'PG', 'M.A. Tamil', 'New'),
(34, '210', 'PERAFFI77680491', NULL, '20191025111212800110168597594632977', '19040.00', 'NB', NULL, '2019-10-25 12:29:06', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', 'BKZDY4MLCB', 'LVB', '0.00', NULL, 'PG', 'M.Com', 'New'),
(35, '192', 'PERAFFI5989755', 'Periya71653095213095', '20191023111212800110168614494702717', '19040.00', 'NB', NULL, '2019-10-23 16:14:30', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '112982799', 'UNI', '0.00', NULL, 'UG', 'B.A Tamil', 'New'),
(36, '192', 'PERAFFI30636060', 'Periya71653095213095', '20191023111212800110168433294074964', '19040.00', 'NB', NULL, '2019-10-23 15:51:54', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '112981153', 'UNI', '0.00', NULL, 'UG', 'B.A Economics', 'New'),
(37, '192', 'PERAFFI93613944', 'Periya71653095213095', '20191023111212800110168840794138925', '19040.00', 'NB', NULL, '2019-10-23 13:24:05', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '112968327', 'UNI', '0.00', NULL, 'UG', 'B.Sc Botony', 'New'),
(38, '192', 'PERAFFI42698178', 'Periya71653095213095', '20191025111212800110168485894144832', '19040.00', 'NB', NULL, '2019-10-25 15:58:41', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '113094468', 'UNI', '0.00', NULL, 'UG', 'B.Com CA ', 'Addi'),
(39, '146', 'PERAFFI21521247', 'Periya71653095213095', '20191025111212800110168716694405102', '19040.00', 'NB', NULL, '2019-10-25 12:24:27', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '113076227', 'UNI', '0.00', NULL, 'UG', 'B.Sc Botony', 'New'),
(40, '103', 'PERAFFI28723457', 'Periya71653095213095', '20191022111212800110168370993396850', '19040.00', 'NB', NULL, '2019-10-22 11:34:19', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '112903428', 'UNI', '0.00', NULL, NULL, NULL, NULL),
(41, '103', 'PERAFFI99883900', 'Periya71653095213095', '20191022111212800110168953693582301', '19040.00', 'NB', NULL, '2019-10-22 11:28:12', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '112902909', 'UNI', '0.00', NULL, NULL, NULL, NULL),
(42, '103', 'PERAFFI51166596', 'Periya71653095213095', '20191022111212800110168105393640745', '19040.00', 'NB', NULL, '2019-10-22 11:19:06', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '112902199', 'UNI', '0.00', NULL, NULL, NULL, NULL),
(43, '129', 'PERAFFI27205218', NULL, '20191029111212800110168965295050716', '19040.00', 'DC', NULL, '2019-10-29 14:25:26', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'ICICIPAY', '68114381310', 'SBI', '0.00', NULL, 'PG', 'M.Sc.Chemistry', 'Add'),
(44, '207', 'PERAFFI97615762', NULL, '20191029111212800110168688295096684', '19040.00', 'DC', NULL, '2019-10-29 15:17:14', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'ICICIPAY', '68114569933', 'SBI', '0.00', NULL, 'UG', 'B.A. Tamil', 'New'),
(45, '164', 'PERAFFI17061420', NULL, '20191029111212800110168342494961930', '19040.00', 'NB', NULL, '2019-10-29 15:37:07', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', 'OFGBWBF2GK', 'LVB', '0.00', NULL, 'UG', 'B.A. Economics', 'New'),
(46, '209', 'PERAFFI54611966', NULL, '20191030111212800110168971695638497', '19040.00', 'NB', NULL, '2019-10-30 12:34:11', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'ASBI', '108695777248', 'ASBI', '0.00', NULL, 'UG', 'B.Sc. Zoology', 'New'),
(47, '209', 'PERAFFI45027986', NULL, '20191030111212800110168686395188421', '19040.00', 'NB', NULL, '2019-10-30 13:10:24', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'ASBI', '108695808681', 'ASBI', '0.00', NULL, 'UG', 'B.Com', 'New'),
(48, '143', 'PERAFFI13823729', 'Periya71653095213095', '20191025111212800110168640294146797', '19040.00', 'NB', NULL, '2019-10-25 12:07:42', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '113074484', 'UNI', '0.00', NULL, 'UG', 'B.Com (Financial Analytics)-2019-20', 'New'),
(49, '206', 'PERAFFI93156982', NULL, '20191030111212800110168082895298561', '19040.00', 'NB', NULL, '2019-10-30 17:00:59', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '113252684', 'UNI', '0.00', NULL, 'UG', 'B.C.A. (Bachelor of Computer Application)', 'Add'),
(50, '164', 'PERAFFI44258635', 'Periya71653095213095', '20190930111212800110168042790329811', '19040.00', 'NB', NULL, '2019-09-30 15:12:45', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '111867901', 'UNI', '0.00', NULL, 'UG', 'B.Com CA', 'New'),
(51, '118', 'PERAFFI9473092', NULL, '20191031111212800110168398195551085', '19040.00', 'NB', NULL, '2019-10-31 10:56:35', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'IOB', '20191031504989', 'IOB', '0.00', NULL, 'UG', 'B.Sc. Nutrition  & Dietetics', 'New'),
(52, '118', 'PERAFFI59233183', NULL, '20191031111212800110168970895836303', '19040.00', 'NB', NULL, '2019-10-31 10:59:41', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'IOB', '20191031505160', 'IOB', '0.00', NULL, 'UG', 'B.Sc Visual Communication ', 'New'),
(53, '118', 'PERAFFI30665382', NULL, '20191031111212800110168627495284181', '19040.00', 'NB', NULL, '2019-10-31 11:01:43', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'IOB', '20191031505306', 'IOB', '0.00', NULL, 'UG', 'B.A. Journalism and Mass Communication', 'New'),
(54, '118', 'PERAFFI69261338', NULL, '20191031111212800110168910195202965', '19040.00', 'NB', NULL, '2019-10-31 11:03:39', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'IOB', '20191031505467', 'IOB', '0.00', NULL, 'UG', 'B.Sc. Textile and Fashion Designing', 'New'),
(55, '118', 'PERAFFI72772679', NULL, '20191031111212800110168303495246696', '19040.00', 'NB', NULL, '2019-10-31 11:05:49', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'IOB', '20191031505742', 'IOB', '0.00', NULL, 'UG', 'B.Sc. Costume Design and Fashion', 'New'),
(56, '197', 'PERAFFI11178401', NULL, '20191031111212800110168200495321328', '19040.00', 'DC', NULL, '2019-10-31 14:32:18', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'ICICIPAY', '68122170199', 'INDIAN BANK', '0.00', NULL, 'UG', 'B.Com (Computer Application)', 'New'),
(57, '143', 'PERAFFI6968343', 'Periya71653095213095', '20191030111212800110168327395370395', '19040.00', 'NB', NULL, '2019-10-30 15:38:42', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '113246321', 'UNI', '0.00', NULL, 'UG', 'B.Sc. Microbiology', 'New'),
(58, '141', 'PERAFFI53420175', NULL, '20191031111212800110168881995463911', '19040.00', 'NB', NULL, '2019-10-31 15:16:47', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'IOB', '20191031522387', 'IOB', '0.00', NULL, 'UG', 'B.Sc Visual Communication ', 'New'),
(59, '198', 'PERAFFI43601413', NULL, '20191031111212800110168991395329475', '19040.00', 'DC', NULL, '2019-10-31 16:18:40', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'ICICIPAY', '68122619992', 'Central Bank of India', '0.00', NULL, 'UG', '', 'New'),
(60, '163', 'PERAFFI34687455', NULL, '20191105111212800110168159395793205', '19040.00', 'DC', NULL, '2019-11-05 09:27:15', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'ICICIPAY', '68142904131', 'SBI', '0.00', NULL, 'PG', 'Master of Social Work (MSW)', 'New'),
(61, '208', 'PERAFFI87570498', NULL, '20191112111212800110168672797032718', '19040.00', 'NB', NULL, '2019-11-12 13:05:48', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'AXIS', '704062370', 'AXIS', '0.00', NULL, 'UG', 'B.A. Tamil', 'New'),
(62, '208', 'PERAFFI20673883', NULL, '20191113111212800110168286497754824', '19040.00', 'NB', NULL, '2019-11-13 11:52:02', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'AXIS', '704250273', 'AXIS', '0.00', NULL, 'UG', 'B.Sc. Costume Design and Fashion', 'New'),
(63, '208', 'PERAFFI76945773', NULL, '20191113111212800110168753097111296', '19040.00', 'NB', NULL, '2019-11-13 13:22:32', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'AXIS', '704277921', 'AXIS', '0.00', NULL, 'UG', 'B.Sc. Mathematics', 'New'),
(64, '208', 'PERAFFI7325553', NULL, '20191113111212800110168038697559444', '19040.00', 'NB', NULL, '2019-11-13 13:25:04', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'AXIS', '704278408', 'AXIS', '0.00', NULL, 'UG', 'B.Sc. Physics', 'New'),
(65, '208', 'PERAFFI23484753', NULL, '20191113111212800110168718097350107', '19040.00', 'NB', NULL, '2019-11-13 13:26:38', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'AXIS', '704278773', 'AXIS', '0.00', NULL, 'UG', 'B.Sc. Biochemistry', 'New'),
(66, '208', 'PERAFFI28549688', NULL, '20191113111212800110168396397618948', '19040.00', 'NB', NULL, '2019-11-13 13:27:59', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'AXIS', '704279216', 'AXIS', '0.00', NULL, 'UG', 'B.Com', 'Add'),
(67, '208', 'PERAFFI57128734', NULL, '20191113111212800110168327797502171', '19040.00', 'NB', NULL, '2019-11-13 13:31:45', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'AXIS', '704280297', 'AXIS', '0.00', NULL, 'UG', 'B.Sc. Computer Science', 'Add'),
(68, '208', 'PERAFFI85793368', NULL, '20191113111212800110168309797444403', '19040.00', 'NB', NULL, '2019-11-13 13:33:16', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'AXIS', '704280682', 'AXIS', '0.00', NULL, 'UG', 'B.Sc. Microbiology', 'Add'),
(69, '204', 'PERAFFI85482325', NULL, '20191115111212800110168388597996383', '19040.00', 'NB', NULL, '2019-11-15 11:45:38', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '114037263', 'UNI', '0.00', NULL, 'PG', 'M.A. English', 'New'),
(70, '204', 'PERAFFI10429761', NULL, '20191115111212800110168473497395478', '19040.00', 'NB', NULL, '2019-11-15 11:49:50', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'UNI', '114037683', 'UNI', '0.00', NULL, 'PG', 'M.Com', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
CREATE TABLE IF NOT EXISTS `college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `cstauts` enum('Government','Aided','Self-Financing') NOT NULL,
  `nameprinc` varchar(40) NOT NULL,
  `qustatus` enum('Obtained','Not-Obtained') NOT NULL,
  `cbody` enum('Autonomous','Non-Autonomous') NOT NULL,
  `email` varchar(60) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `code`, `name`, `cstauts`, `nameprinc`, `qustatus`, `cbody`, `email`, `passwd`) VALUES
(5, 108, 'K.S.Rangasamy College of Arts and Science(Autonomous)', 'Self-Financing', 'Dr. V. Radhakrishnan', 'Obtained', 'Autonomous', 'contact@ksrcas.edu', 'ksrcas19'),
(4, 164, 'K.S.R COLLEGE OF ARTS AND SCIENCE FOR WOMEN', 'Self-Financing', 'Dr.M.Karthikeyan', 'Obtained', 'Non-Autonomous', 'ksrcaswomen@gmail.com', '12345678'),
(46, 184, 'Shevaroys College of Arts and Science', 'Self-Financing', 'Dr. S. Mangala Ethaiya Rani', 'Obtained', 'Non-Autonomous', 'prinshevaroysarts@gmail.com', 'SHEVAROYS'),
(45, 103, 'BHARATHIYAR ARTS AND SCIENCE COLLEGE FOR WOMEN', 'Self-Financing', 'Dr.D.RAJAKUMARI', 'Obtained', 'Non-Autonomous', 'bharathiyar1997@gmail.com', 'Rajakumari'),
(44, 165, 'Sri Vijay Vidyalaya College of Arts & Science', 'Self-Financing', 'Dr.S.Hameedha Banu', 'Obtained', 'Non-Autonomous', 'svvcas@gmail.com', 'vijayarts1'),
(43, 210, 'Sri Moogambigai Arts & Science College (Women)', 'Government', 'Dr.T.Ragunathan', 'Obtained', 'Non-Autonomous', 'smascw2018@gmail.com', 'CTSKU7PQST'),
(42, 113, 'Salem Sowdeswari College', 'Self-Financing', 'V. Balaji', 'Obtained', 'Non-Autonomous', 'ssc.sfcw2010@gmail.com', 'ssc_sfcw'),
(49, 192, 'Muthayammal Memorial College of Arts and Science', 'Self-Financing', 'Dr. A. MANIKANDAN', 'Obtained', 'Non-Autonomous', 'mmcaspu192@gmail.com', 'metmmcas19215102019'),
(50, 211, 'Meenakshi arts and science college', 'Self-Financing', 'Dr. K. Balaji', 'Not-Obtained', 'Non-Autonomous', 'meenakshiartsandsciencecollege@gmail.com', '04342@252999SMC'),
(51, 117, 'TRINITY COLLEGE FOR WOMEN', 'Self-Financing', 'DR.M.R.LAKSHIMINARAYANAN', 'Obtained', 'Non-Autonomous', 'trinitech2010@gmail.com', 'trinity@117'),
(52, 101, 'Government Arts College, Salem - 07.', 'Government', 'Dr. S. Mangala Ethaiya Rani', 'Obtained', 'Autonomous', 'principalgacsalem@gmail.com', '20199500'),
(53, 193, 'Kavithas College of Arts and Science  Vaiyappamalai Tiruchengode Taluk', 'Self-Financing', 'Dr R VIJAYAKUMAR', 'Obtained', 'Non-Autonomous', 'kavithascollege@gmail.com', 'KCAS@123'),
(54, 12345, 'Admin', 'Government', 'Admin', 'Obtained', 'Autonomous', 'salemanandh@gmail.com', '12345'),
(55, 176, 'Laxminarayana Arts & Science College for Women', 'Self-Financing', 'Dr.D. Kumaresan', 'Obtained', 'Non-Autonomous', 'lncw176@gmail.com', 'principallnc'),
(56, 156, 'PACHAMUTHU COLLEGE OF ARTS AND SCIENCE FOR WOMEN, DHARMAPURI', 'Self-Financing', 'DR.A.VIJAYA', 'Obtained', 'Non-Autonomous', 'pachamuthucollagedpi@gmail.com', 'rlxwj7psbe'),
(57, 206, 'SONA COLLEGE OF ARTS AND SCIENCE', 'Self-Financing', 'Dr. G. M. KADHAR NAWAZ', 'Obtained', 'Non-Autonomous', 'principalsonacas@gmail.com', 'ST9XZBPU2Y'),
(58, 146, 'A.E.T. COLLEGE', 'Self-Financing', 'Dr.K.SHENBAGAM', 'Not-Obtained', 'Non-Autonomous', 'aetcollege@gmail.com', 'EXPQN3VR6G'),
(59, 143, 'padmavani arts & science college for women,salem-11', 'Self-Financing', 'Dr.R.Harikrishnaraj', 'Obtained', 'Non-Autonomous', 'padmavaniarts@gmail.com', 'newcourse@2020'),
(60, 129, 'SRI VIDYA MANDIR ARTS & SCIENCE COLLEGE', 'Self-Financing', 'DR. K. ARUL', 'Obtained', 'Autonomous', 'arulsvmc@gmail.com', 'Arul6677boss'),
(61, 207, 'Unique College of Arts and Science ', 'Self-Financing', 'R. Marimuthu ', 'Obtained', 'Non-Autonomous', 'uniquecollege2017@gmail.com', 'aadhibhagavan'),
(62, 207, 'UNIQUE COLLEGE OF ARTS & SCIENCE ', 'Self-Financing', 'DR. R. MARIMUTHU', 'Obtained', 'Non-Autonomous', 'uniquecollege2017@gmail.com', 'aadhibhagavan'),
(63, 197, 'Jayam Arts and Science College', 'Self-Financing', 'Dr. S. Ezhilan', 'Obtained', 'Non-Autonomous', 'principal@jac.ac.in', 'jayampri197'),
(64, 209, 'SRI VIDYA KAMACHI ARTS AND SCIENCE COLLEGE FOR WOMEN', 'Self-Financing', 'DR.R.VALARMATHI', 'Obtained', 'Non-Autonomous', 'svkeducationaltrust@gmail.com', 'svket1234'),
(65, 118, 'Vivekanandha College of Arts and Sciences for Women (Autonomous)', 'Self-Financing', 'Dr.B.T.Sureshkumar', 'Obtained', 'Autonomous', 'vicasprincipal@gmail.com', 'Vicas@118'),
(66, 118, 'VICAS', 'Self-Financing', 'Dr.B.T.Sureshkumar', 'Obtained', 'Autonomous', 'vicasprincipal@gmail.com', 'Vicas@118'),
(67, 118, 'VIVEKANANDHA COLLEGE OF ARTS AND SCIENCES FOR WOMEN', 'Self-Financing', 'DR. B.T SURESHKUMAR', 'Obtained', 'Autonomous', 'vicasprincipal@gmail.com', 'Vicas@118'),
(68, 118, 'VIVEKANANDHA COLLEGE OF ARTS AND SCIENCES FOR WOMEN', 'Self-Financing', 'DR. B.T SURESHKUMAR', 'Obtained', 'Autonomous', 'vicasprincipal@gmail.com', 'Vicas@118'),
(69, 118, 'VIVEKANANDHA COLLEGE OF ARTS AND SCIENCES FOR WOMEN', 'Self-Financing', 'DR.B.T.SURESHKUMAR', 'Obtained', 'Autonomous', 'vicasprincipal@gmail.com', 'Vicas@118'),
(70, 198, 'MAISURII WOMENS COLLEGE OF ARTS AND SCIENCE ', 'Self-Financing', 'S.GUNASEKARAN ', 'Obtained', 'Non-Autonomous', 'maisuriiwomenscollege2015@gamil.com', 'arts2015'),
(71, 141, 'VIVEKANANDHA ARTS AND SCIENCE COLLEGE FOR WOMEN', 'Self-Financing', 'Dr. N. RAJENDRAN', 'Obtained', 'Non-Autonomous', 'principalviaas@yahoo.com', '2018viaas'),
(72, 141, 'VIVEKANANDHA ARTS AND SCIENCES FOR WOMEN', 'Self-Financing', 'DR.N.RAJENDRAN', 'Obtained', 'Non-Autonomous', 'principalviaas@yahoo.com', '2018viaas'),
(73, 163, 'GONZAGA COLLEGE OF ARTS AND SCIENCE FOR WOMEN', 'Self-Financing', 'REV.DR.GLITTA SUMANGALAI', 'Not-Obtained', 'Non-Autonomous', 'college.gonzaga@gmail.com', 'stephenraj'),
(74, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(75, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(76, 88952634, '88952634-0', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(77, 88952634, '88952634s3', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(78, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(79, 88952634, '88952634<alert(88952634)>', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(80, 88952634, '88952634', 'Government', '88952634-0', 'Obtained', 'Autonomous', '88952634', '88952634'),
(81, 88952634, '88952634', 'Government', '88952634s3', 'Obtained', 'Autonomous', '88952634', '88952634'),
(82, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(83, 88952634, '88952634', 'Government', '88952634<alert(88952634)>', 'Obtained', 'Autonomous', '88952634', '88952634'),
(84, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634-0', '88952634'),
(85, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634s3', '88952634'),
(86, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(87, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634<alert(88952634)>', '88952634'),
(88, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634-0'),
(89, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634s3'),
(90, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(91, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(92, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(93, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(94, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(95, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(96, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(97, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(98, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(99, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(100, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(101, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(102, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(103, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(104, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(105, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(106, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(107, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(108, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(109, 123, 'Test College', 'Aided', 'Test', 'Obtained', 'Autonomous', '12345@54321.com', 'testtest'),
(110, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(111, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(112, 88952634, '88952634-0', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(113, 88952634, '88952634s3', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(114, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(115, 88952634, '88952634<alert(88952634)>', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(116, 88952634, '88952634', 'Government', '88952634-0', 'Obtained', 'Autonomous', '88952634', '88952634'),
(117, 88952634, '88952634', 'Government', '88952634s3', 'Obtained', 'Autonomous', '88952634', '88952634'),
(118, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(119, 88952634, '88952634', 'Government', '88952634<alert(88952634)>', 'Obtained', 'Autonomous', '88952634', '88952634'),
(120, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634-0', '88952634'),
(121, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634s3', '88952634'),
(122, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(123, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634<alert(88952634)>', '88952634'),
(124, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634-0'),
(125, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634s3'),
(126, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(127, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(128, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(129, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(130, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(131, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(132, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(133, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(134, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(135, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(136, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(137, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(138, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(139, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(140, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(141, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(142, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(143, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(144, 88952634, '88952634', 'Government', '88952634', 'Obtained', 'Autonomous', '88952634', '88952634'),
(145, 12345, '12345', 'Government', '12345', 'Obtained', 'Autonomous', '12345', '12345678'),
(146, 101, 'Government Arts College, Salem - 07.', 'Government', 'Dr. S. Mangala Ethaiya Rani', 'Obtained', 'Autonomous', 'principalgacsalem@gmail.com', '12345678'),
(147, 208, 'EXCEL COLLEGE FOR COMMERCE AND SCIENCE', 'Self-Financing', 'Dr.R.KAMALAM', 'Not-Obtained', 'Non-Autonomous', 'v.principalarts@excelcolleges.com', 'eccs@123'),
(148, 204, 'vaigai arts and science womens college', 'Self-Financing', 'Dr.M.Prakash', 'Obtained', 'Non-Autonomous', 'vaigaiaswc@gmail.com', 'college204'),
(149, 204, 'vaigai arts and science womens college', 'Self-Financing', 'Dr.M.Prakash', 'Obtained', 'Non-Autonomous', 'vaigaiaswc@gmail.com', 'college204'),
(150, 151, 'Arignar Anna arts and Science college ', 'Self-Financing', 'Loganathan M', 'Obtained', 'Autonomous', 'logu3293@gmail.com', '12345678'),
(151, 504, 'periyar university', 'Government', 'dr.r.gulanthaivel', 'Obtained', 'Autonomous', 'sathiyamokith@gmail.com', '15061973'),
(152, 188, 'GOVERNMENT ARTS AND SCIENCE COLLEGE,MIDUGARAPALLI(VILL),MATHIGIRI(PO),HOSUR-635110', 'Government', 'DR.B.NARAYANAN', 'Obtained', 'Autonomous', 'principalhosur@gmail.com', 'gasc@office'),
(153, 159, 'Morappur Kongu college of Arts and Science', 'Self-Financing', 'Dr.N.Gunasekaran', 'Obtained', 'Non-Autonomous', 'mkcas2008@gmail.com', 'chaircorres'),
(154, 184, 'SHEVAROYS COLLEGE OF ARTS AND SCIENCE', 'Self-Financing', 'Mr.B.MURUGAVEL', 'Not-Obtained', 'Non-Autonomous', 'prinshevaroysarts@gmail.com', 'KUDIJVAGLS'),
(155, 184, 'SHEVAROYS COLLEGE OF ARTS AND SCIENCE', 'Self-Financing', 'Mr.B.MURUGAVEL', 'Not-Obtained', 'Non-Autonomous', 'prinshevaroysarts@gmail.com', 'KUDIJVAGLS'),
(156, 184, 'SHEVAROYS COLLEGE OF ARTS AND SCIENCE', 'Self-Financing', 'Mr.B.MURUGAVEL', 'Not-Obtained', 'Non-Autonomous', 'prinshevaroysarts@gmail.com', '9659079144'),
(157, 184, 'SHEVAROYS COLLEGE OF ARTS AND SCIENCE', 'Self-Financing', 'Mr.B.MURUGAVEL', 'Not-Obtained', 'Non-Autonomous', 'prinshevaroysarts@gmail.com', 'KUDIJVAGLS'),
(158, 159, 'MORAPPUR KONGU COLLEGE OF ARTS AND SCIENCE', 'Self-Financing', 'DR.N.GUNASEKARAN', 'Obtained', 'Non-Autonomous', 'mkcas2008@gmail.com', 'Konguarts@2008'),
(159, 159, 'MORAPPUR KONGU COLLEGE OF ARTS AND SCIENCE', 'Self-Financing', 'DR.N.GUNASEKARAN', 'Obtained', 'Non-Autonomous', 'mkcas2008@gmail.com', 'Kongucollege'),
(160, 159, 'MORAPPUR KONGU COLLEGE OF ARTS AND SCIENCE', 'Self-Financing', 'DR.N.GUNASEKARAN', 'Obtained', 'Non-Autonomous', 'mkcas2008@gmail.com', 'kongucollege'),
(161, 159, 'MORAPPUR KONGU COLLEGE OF ARTS AND SCIENCE ', 'Self-Financing', 'DR.N.GUNASEKARAN', 'Obtained', 'Non-Autonomous', 'mkcas2008@gmail.com', 'konguclg');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE` varchar(100) NOT NULL,
  `SEC` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `COURSE`, `SEC`) VALUES
(1, 'B.A.English', 'UG'),
(2, 'B.A.English (C.A)', 'UG'),
(3, 'B.A. Economics', 'UG'),
(4, 'B.A. History', 'UG'),
(5, 'B.A. Political Science', 'UG'),
(6, 'B.A. Tamil', 'UG'),
(7, 'B.Litt Tamil', 'UG'),
(8, 'B.Sc. Applied Geology', 'UG'),
(9, 'B.C.A. (Bachelor of Computer Application)', 'UG'),
(10, 'B.Sc. Biochemistry', 'UG'),
(11, 'B.Sc. Bioinformatics', 'UG'),
(12, 'B.Sc. Biotechnology', 'UG'),
(13, 'B.Sc. Botany', 'UG'),
(14, 'B.Sc. Chemistry', 'UG'),
(15, 'B.Sc. Computer Science', 'UG'),
(16, 'B.Sc. Electronics and Communication', 'UG'),
(17, 'B.Sc. Geography', 'UG'),
(18, 'B.Sc. Hotel Management and Catering Science', 'UG'),
(19, 'B.Sc. Information Science', 'UG'),
(20, 'B.Sc. Mathematics', 'UG'),
(21, 'B.Sc. Mathematics (Computer Application)', 'UG'),
(22, 'B.Sc. Microbiology', 'UG'),
(23, 'B.Sc. Nutrition  & Dietetics', 'UG'),
(24, 'B.Sc. Physics', 'UG'),
(25, 'B.Sc. Statistics', 'UG'),
(26, 'B.Sc. Textile and Fashion Designing', 'UG'),
(27, 'B.Sc. Zoology', 'UG'),
(28, 'B.Sc. Costume Design and Fashion', 'UG'),
(29, 'B.Sc. Physical Education', 'UG'),
(30, 'B.B.A', 'UG'),
(31, 'B.B.A. (Computer Application)', 'UG'),
(32, 'B.Com', 'UG'),
(33, 'B.Com (Computer Application)', 'UG'),
(34, 'B.Com (Co-Operation)', 'UG'),
(35, 'B.Com (Corporate Secretary ship)', 'UG'),
(36, 'B.Com (Electronic Banking)', 'UG'),
(37, 'B.Sc Nano Science', 'UG'),
(38, 'B.Sc Visual Communication ', 'UG'),
(39, 'B.Sc Renewable energy resources', 'UG'),
(40, 'B.Sc. Home Science ', 'UG'),
(41, 'B.Sc. Psychology ', 'UG'),
(42, 'B.A. Journalism and Mass Communication', 'UG'),
(43, 'B.Com (Banking and Insurance)', 'UG'),
(44, 'B.Com (Accounting and Finance) ', 'UG'),
(45, 'B.B.A (International Business)', 'UG'),
(46, 'B.B.A (Retail Management ', 'UG'),
(47, 'B.S.W ', 'UG'),
(48, 'B.Sc. Digital Print Media', 'UG'),
(49, 'B.Sc. Fashion Technology', 'UG'),
(50, 'B.Sc. Geology -2018-2019 Onwards ', 'UG'),
(51, 'B.A.Public Administatrion -2018-2019 Onwards', 'UG'),
(52, 'B.A.Sociology-2018-2019 Onwards', 'UG'),
(53, 'B.Com (Financial Analytics)-2019-20', 'UG'),
(54, 'B.Com (Security Marketing Practices) 2019-20', 'UG'),
(55, 'B.Sc. Mathematics (Actuarial Science)- 2019-20  ', 'UG'),
(56, 'M.A. Economics', 'PG'),
(57, 'M.A. English', 'PG'),
(58, 'M.A. History', 'PG'),
(59, 'Master of Social Work (MSW)', 'PG'),
(60, 'M.A. Public Administration', 'PG'),
(61, 'M.A. Tamil', 'PG'),
(62, 'M.Sc. Analytical Chemistry ', 'PG'),
(63, 'M.Sc. Applied Geology ', 'PG'),
(64, 'M.Sc. Applied Microbiology', 'PG'),
(65, 'M.Sc. Biochemistry', 'PG'),
(66, 'M.Sc. Medical Biochemistry', 'PG'),
(67, 'M.Sc. Bioinformatics', 'PG'),
(68, 'M.Sc. Bio-Technology', 'PG'),
(69, 'M.Sc. Botany', 'PG'),
(70, 'M.Sc.Chemistry', 'PG'),
(71, 'M.Sc. Computer Science', 'PG'),
(72, 'M.Sc. Electronics and Communication', 'PG'),
(73, 'M.Sc. Food Processing ', 'PG'),
(74, 'Master of Computer Application ', 'PG'),
(75, 'M.Sc. Mathematics', 'PG'),
(76, 'M.Sc. Mathematics (C.A)', 'PG'),
(77, 'M.Sc. Physics', 'PG'),
(78, 'M.Sc. Software Science – (5 Years Integr.) ', 'PG'),
(79, 'M.Sc. Statistics ', 'PG'),
(80, 'M.Sc. Zoology', 'PG'),
(81, 'M.Sc. Organic Chemistry ', 'PG'),
(82, 'M.Sc. Nutrition and Dietetics ', 'PG'),
(83, 'M.Sc. Textile and Fashion Designing', 'PG'),
(84, 'M.Sc. Costume Design and Fashion', 'PG'),
(85, 'M.B.A', 'PG'),
(86, 'M.Com. Co-operation', 'PG'),
(87, 'M.Com', 'PG'),
(88, 'M.Com (Computer Application)', 'PG'),
(89, 'M.Com (Corporate Secretary ship)', 'PG'),
(90, 'M.Sc. Food & Nutrition ', 'PG'),
(91, 'M.Sc. Geography ', 'PG'),
(92, 'M.A. Political Science ', 'PG'),
(93, 'M.Sc. Microbiology-2018-2019 onwards', 'PG'),
(94, 'M.Sc. Nutrtion and Dietectics-', 'PG'),
(95, '2018-2019 onwards', 'PG'),
(96, 'M.Sc.Geology2018-2019 onwards', 'PG'),
(97, 'M.Sc. Computer Science (Data Analytics) ', 'PG');

-- --------------------------------------------------------

--
-- Table structure for table `permanent_payment`
--

DROP TABLE IF EXISTS `permanent_payment`;
CREATE TABLE IF NOT EXISTS `permanent_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `REGNO` varchar(20) NOT NULL,
  `ORDERID` varchar(30) NOT NULL,
  `MID` varchar(30) DEFAULT NULL,
  `TXNID` varchar(40) NOT NULL,
  `TXNAMOUNT` decimal(10,2) NOT NULL,
  `PAYMENTMODE` varchar(10) NOT NULL,
  `CURRENCY` varchar(10) DEFAULT NULL,
  `TXNDATE` datetime NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `TXNTYPE` varchar(20) NOT NULL,
  `RESPCODE` smallint(6) NOT NULL,
  `RESPMSG` varchar(30) NOT NULL,
  `GATEWAYNAME` varchar(30) NOT NULL,
  `BANKTXNID` varchar(25) NOT NULL,
  `BANKNAME` varchar(50) NOT NULL,
  `REFUNDAMT` decimal(10,2) NOT NULL,
  `CHECKSUMHASH` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permanent_payment`
--

INSERT INTO `permanent_payment` (`id`, `REGNO`, `ORDERID`, `MID`, `TXNID`, `TXNAMOUNT`, `PAYMENTMODE`, `CURRENCY`, `TXNDATE`, `STATUS`, `TXNTYPE`, `RESPCODE`, `RESPMSG`, `GATEWAYNAME`, `BANKTXNID`, `BANKNAME`, `REFUNDAMT`, `CHECKSUMHASH`) VALUES
(4, '164', 'PERAFFI82281571', 'Periya71653095213095', '20191009111212800110168719791732568', '19040.00', 'NB', NULL, '2019-10-09 12:32:35', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', 'CSE2QN52XP', 'LVB', '0.00', NULL),
(5, '501', 'PERAFFI4187228', 'Periya71653095213095', '20191009111212800110168058391846955', '1.00', 'DC', NULL, '2019-10-09 14:45:29', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'ICICIPAY', '68009823138', 'CANARA BANK', '0.00', NULL),
(6, '108', 'PERAFFI58759312', NULL, '20191010111212800110168317691572858', '19040.00', 'NB', NULL, '2019-10-10 12:46:44', 'TXN_SUCCESS', 'SALE', 1, 'Txn Success', 'LVB', '85Y943R4AQ', 'LVB', '0.00', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
