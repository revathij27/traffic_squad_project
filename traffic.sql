-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 05:23 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traffic_squad`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `aname` varchar(30) NOT NULL,
  `aemail` varchar(30) NOT NULL,
  `apassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `aname`, `aemail`, `apassword`) VALUES
(1, 'admin', 'admin@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `fdate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `fstatus` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `u_id`, `feedback`, `fdate`, `fstatus`) VALUES
(9, 8, 'Amazing', '2023-04-03 16:06:24.912365', ''),
(11, 8, 'good', '2023-04-11 16:45:14.821351', ''),
(15, 14, 'Nice', '2023-05-02 10:00:58.851062', ''),
(16, 15, 'Good', '2023-05-02 18:11:35.508140', '');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `l_id` int(11) NOT NULL,
  `lname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`l_id`, `lname`) VALUES
(9, 'Kannur'),
(10, 'Thalassery'),
(11, 'Kuthuparamba'),
(12, 'Mattannur'),
(13, 'Payyannur'),
(14, 'Kannapuram');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `n_id` int(11) NOT NULL,
  `vreg_no` varchar(11) NOT NULL,
  `cs_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `nstatus` varchar(30) NOT NULL,
  `ndate` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`n_id`, `vreg_no`, `cs_id`, `message`, `nstatus`, `ndate`) VALUES
(17, 'KA1893', 16, 'Your Vehicle KA1893 Has Been prosecuted for Negligence Driving  at MANGALORE,KANKANADY on 2023-03-29 at 19:27:00.000000 via case no 397206458.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'viewed', '2023-03-29 11:38:31.222932'),
(18, 'KA4678C2', 17, 'Your Vehicle KA4678C2 Has Been prosecuted for Negligence Driving  at MANGALORE,KANKANADY on 2023-03-13 at 14:25:00.000000 via case no 1177870834.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'viewed', '2023-03-29 11:38:38.557924'),
(19, 'KA1893', 19, 'Your Vehicle KA1893 Has Been prosecuted for Negligence Driving  at MANGALORE,KANKANADY on 2023-03-24 at 06:55:00.000000 via case no 682627204.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'viewed', '2023-03-30 15:53:36.477190'),
(20, 'KA1893', 16, 'Your Vehicle KA1893 Has Been prosecuted for Negligence Driving  at MANGALORE,KANKANADY on 2023-03-29 at 19:27:00.000000 via case no 397206458.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'viewed', '2023-03-30 16:35:39.863771'),
(21, 'KA4678C2', 17, 'Your Vehicle KA4678C2 Has Been prosecuted for Negligence Driving  at MANGALORE,KANKANADY on 2023-03-13 at 14:25:00.000000 via case no 1177870834.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'sent', '2023-03-30 16:35:44.496989'),
(22, 'KA1893', 19, 'Your Vehicle KA1893 Has Been prosecuted for Negligence Driving  at MANGALORE,KANKANADY on 2023-03-24 at 06:55:00.000000 via case no 682627204.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'viewed', '2023-03-30 16:35:49.531203'),
(23, 'KA1893', 20, 'Your Vehicle KA1893 Has Been prosecuted for Negligence Driving  at MANGALORE,KANKANADY on 2023-04-01 at 11:51:00.000000 via case no 604771362.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'viewed', '2023-04-05 02:04:19.541272'),
(24, 'KA1893', 21, 'Your Vehicle KA1893 Has Been prosecuted for Negligence Driving  at MANGALORE,KANKANADY on 2023-03-30 at 00:54:00.000000 via case no 1317510616.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'viewed', '2023-04-05 02:04:31.807081'),
(25, 'KA1893', 24, 'Your Vehicle KA1893 Has Been prosecuted for Negligence Driving  at MANGALORE,KANKANADY on 2023-04-19 at 02:22:00.000000 via case no 1816466917.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'viewed', '2023-04-11 10:23:10.899189'),
(26, 'KA1893', 25, 'Your Vehicle KA1893 Has Been prosecuted for Negligence Driving  at MANGALORE,KANKANADY on 2023-03-11 at 19:48:00.000000 via case no 1589260033.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'viewed', '2023-04-11 16:49:35.800274'),
(27, 'kl 13 ah 67', 26, 'Your Vehicle kl 13 ah 6778 Has Been prosecuted for 9 Driving without brake light  at manipal on 2023-04-28 at 13:59:00.000000 via case no 379612325.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'sent', '2023-04-28 14:00:27.203792'),
(28, 'kl 13 az 57', 27, 'Your Vehicle kl 13 az 5757 Has Been prosecuted for Over-speed driving / 2 Wheeler at kannur on 2023-04-29 at 19:25:00.000000 via case no 674626605.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'sent', '2023-04-29 19:26:54.030502'),
(29, 'kl 13 az 57', 28, 'Your Vehicle kl 13 az 5757 Has Been prosecuted for Negligence Driving  at kannur on 2023-04-29 at 19:33:00.000000 via case no 1373595362.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'sent', '2023-04-29 19:34:18.329740'),
(30, 'kl 13 az 57', 30, 'Your Vehicle kl 13 az 5757 Has Been prosecuted for Blowing the Horn Loudly at kannur on 2023-05-01 at 23:02:00.000000 via case no 1496145000.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'sent', '2023-05-01 23:03:14.992744'),
(31, 'kl 13 ab 54', 31, 'Your Vehicle kl 13 ab 5445 Has Been prosecuted for Driving vehicle without a vali at Payyanur on 2023-05-02 at 18:01:00.000000 via case no 1510500788.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'sent', '2023-05-02 18:05:47.715114');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `p_id` int(11) NOT NULL,
  `cs_id` int(11) NOT NULL,
  `mode` varchar(30) NOT NULL,
  `card_no` int(16) NOT NULL,
  `card_holder` varchar(30) NOT NULL,
  `exp_date` int(11) NOT NULL,
  `cvv` int(3) NOT NULL,
  `penalty` int(30) NOT NULL,
  `pstatus` varchar(30) NOT NULL,
  `pdate` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`p_id`, `cs_id`, `mode`, `card_no`, `card_holder`, `exp_date`, `cvv`, `penalty`, `pstatus`, `pdate`) VALUES
(7, 19, 'online', 2147483647, 'sagar', 11, 123, 500, 'paid', '2023-03-30 16:41:41.592205'),
(13, 27, 'online', 234, 'revathi', 12, 212, 1000, 'paid', '2023-04-29 19:32:34.296033'),
(15, 30, 'online', 2147483647, 'revathi', 12, 456, 500, 'paid', '2023-05-02 10:00:43.149966'),
(16, 31, 'online', 2147483647, 'nayana', 12, 213, 5000, 'paid', '2023-05-02 18:10:19.213573');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `p_id` int(11) NOT NULL,
  `po_id` varchar(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `pemail` varchar(30) NOT NULL,
  `pphone` int(10) NOT NULL,
  `paddress` varchar(30) NOT NULL,
  `ppassword` varchar(100) NOT NULL,
  `pgender` varchar(10) NOT NULL,
  `pimage` text NOT NULL,
  `pdate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `pstatus` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`p_id`, `po_id`, `s_id`, `pname`, `pemail`, `pphone`, `paddress`, `ppassword`, `pgender`, `pimage`, `pdate`, `pstatus`) VALUES
(8, 'S0023', 5, 'Suresh', 'suresh@gmail.com', 756529001, 'Manglaore', '81dc9bdb52d04dc20036dbd8313ed055', 'male', 'pimage/trafficpolice.jpeg', '2023-03-26 08:24:31.650060', ''),
(9, 'S0006', 14, 'Girish', 'girish@gmail.com', 2147483647, 'Thalassery', '81dc9bdb52d04dc20036dbd8313ed055', 'male', 'pimage/security-1.jpg', '2023-04-30 16:05:46.435295', '');

-- --------------------------------------------------------

--
-- Table structure for table `rcase`
--

CREATE TABLE `rcase` (
  `cs_id` int(11) NOT NULL,
  `challenno` int(11) NOT NULL,
  `d_voilated` date NOT NULL,
  `t_voilated` time(6) NOT NULL,
  `licenseno` varchar(30) NOT NULL,
  `vreg_no` varchar(30) NOT NULL,
  `r_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `penalty` int(10) NOT NULL,
  `cs_date` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `cs_status` varchar(30) NOT NULL,
  `oname` varchar(30) NOT NULL,
  `ophone` int(10) NOT NULL,
  `vplace` varchar(30) NOT NULL,
  `vphoto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rcase`
--

INSERT INTO `rcase` (`cs_id`, `challenno`, `d_voilated`, `t_voilated`, `licenseno`, `vreg_no`, `r_id`, `s_id`, `p_id`, `penalty`, `cs_date`, `cs_status`, `oname`, `ophone`, `vplace`, `vphoto`) VALUES
(16, 397206458, '2023-03-29', '19:27:00.000000', 'LS00002345', 'KA1893', 1, 9, 8, 1000, '2023-03-27 15:28:19.927557', 'completed', 'Ram', 2147483647, 'MANGALORE,KANKANADY', 'vphoto/bread.jpeg'),
(17, 1177870834, '2023-03-13', '14:25:00.000000', 'LS00002345', 'KA4678C2', 1, 8, 8, 500, '2023-03-29 11:23:10.653550', 'paid', 'Ram', 2147483647, 'MANGALORE,KANKANADY', 'vphoto/'),
(19, 682627204, '2023-03-24', '06:55:00.000000', 'LS00002345', 'KA1893', 1, 9, 8, 500, '2023-03-30 15:53:28.845683', 'completed', 'Ram', 2147483647, 'MANGALORE,KANKANADY', 'vphoto/bread.jpeg'),
(24, 1816466917, '2023-04-19', '02:22:00.000000', 'LS00002345', 'KA1893', 1, 7, 8, 500, '2023-04-11 10:23:05.165279', 'completed', 'Ramesh', 2147483647, 'MANGALORE,KANKANADY', 'vphoto/bread.jpeg'),
(25, 1589260033, '2023-03-11', '19:48:00.000000', 'LS00002345', 'KA1893', 1, 9, 8, 500, '2023-04-11 16:49:25.578853', 'paid', 'Ramesh', 2147483647, 'MANGALORE,KANKANADY', 'vphoto/meeting-01.jpg'),
(26, 379612325, '2023-04-28', '13:59:00.000000', '3456789', 'kl 13 ah 6778', 6, 11, 8, 500, '2023-04-28 14:00:12.216002', 'completed', 'shanu', 2147483647, 'manipal', 'vphoto/anil.PNG'),
(27, 674626605, '2023-04-29', '19:25:00.000000', '3456789', 'kl 13 az 5757', 3, 12, 8, 1000, '2023-04-29 19:26:41.278316', 'completed', 'revathi', 2147483647, 'kannur', 'vphoto/statn.jpeg'),
(28, 1373595362, '2023-04-29', '19:33:00.000000', '3456789', 'kl 13 az 5757', 7, 12, 8, 1000, '2023-04-29 19:34:08.187240', 'completed', 'revathi', 702550413, 'kannur', 'vphoto/arrow.jpg'),
(29, 375987840, '2023-04-30', '21:25:00.000000', '456879098', 'kl 13 az 5757', 15, 16, 9, 1000, '2023-04-30 21:26:50.636050', 'registered', 'Adarsh', 2147483647, 'Mattannur', 'vphoto/mithaliraj.PNG'),
(30, 1496145000, '2023-05-01', '23:02:00.000000', '3456789', 'kl 13 az 5757', 4, 13, 9, 500, '2023-05-01 23:03:02.310741', 'completed', 'revathi', 123456789, 'kannur', 'vphoto/arundhati roy.PNG'),
(31, 1510500788, '2023-05-02', '18:01:00.000000', '56784324', 'kl 13 ab 5445', 9, 17, 8, 5000, '2023-05-02 18:03:40.154846', 'completed', 'Nayana', 2147483647, 'Payyanur', 'vphoto/mithaliraj.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(30) NOT NULL,
  `l_id` int(11) NOT NULL,
  `s_code` varchar(30) NOT NULL,
  `sphone` int(10) NOT NULL,
  `saddress` text NOT NULL,
  `sdate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `simage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`s_id`, `s_name`, `l_id`, `s_code`, `sphone`, `saddress`, `sdate`, `simage`) VALUES
(13, 'Kannur Town Police Station', 9, 'V9FC+HF7', 497276337, ' Thavakkara, Kannur, Kerala 670002', '2023-04-30 15:32:59.930545', 'simage/p1.png'),
(15, 'Kuthuparamba Police Station', 11, 'RHJ8+QFP', 2147483647, ' Thalassery - Coorg Hwy, Kuthuparamba, Kerala 670643', '2023-04-30 15:39:04.750096', 'simage/p3.png'),
(16, 'Police Station Mattanur', 12, 'WHJC+C5R', 2147483647, 'Kannur Mattannur Road, Chandralayam, Mattannur, Kerala 670702', '2023-04-30 15:43:26.866599', 'simage/p4.png'),
(17, 'Police Station Payyanur', 13, '4666+27J', 2147483647, 'Magistrate Ct Rd, Payyanur, Kerala 670307', '2023-04-30 15:47:41.718413', 'simage/p5.png'),
(18, 'Kannapuram Police Station', 14, 'X8V4+588', 2147483647, 'Kannapuram, Kannur, Kerala 534311', '2023-04-30 15:53:18.095803', 'simage/p6.png'),
(19, 'Police Station Thalassery', 10, 'PFXP+V8M', 497276337, ' Palissery, Thalassery, Kerala 670101', '2023-05-02 18:15:41.350052', 'simage/p2.png');

-- --------------------------------------------------------

--
-- Table structure for table `trules`
--

CREATE TABLE `trules` (
  `r_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `offence` varchar(30) NOT NULL,
  `penalty` int(10) NOT NULL,
  `sign` text NOT NULL,
  `rdate` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trules`
--

INSERT INTO `trules` (`r_id`, `section`, `offence`, `penalty`, `sign`, `rdate`) VALUES
(1, 'sec 184 IMV Act ', 'Negligence Driving ', 1000, 'signimg/nd.png', '2023-03-26 09:17:07.948253'),
(3, 'sec 112 r/w 183 (1) (i) IMV Act ', 'Over-speed driving / 2 Wheeler', 1000, 'signimg/overspeed.png', '0000-00-00 00:00:00.000000'),
(4, 'rule 211(2) r/w 177 IMV Act ', 'Blowing the Horn Loudly', 500, 'signimg/horn.png', '0000-00-00 00:00:00.000000'),
(5, 'CMV Rule 119 r/w 177 IMC Act', 'Without bulb horn ', 500, 'signimg/bulb.png', '0000-00-00 00:00:00.000000'),
(6, 'CMV Rule 108 r/w 177 IMV Act ', '9 Driving without brake light ', 500, 'signimg/brake.png', '0000-00-00 00:00:00.000000'),
(7, 'sec 184 IMV Act ', 'Negligence Driving ', 1000, 'signimg/nd.png', '2023-04-10 10:17:04.267842'),
(9, 'rule 210(2) r/w 177 IMV Act ', 'Driving vehicle without a vali', 5000, 'signimg/license.png', '2023-04-30 14:16:18.349386'),
(10, 'sec 112 r/w 180 (1) (i) IMV Act', 'Driving without wearing seatbe', 500, 'signimg/seatbelt.png', '2023-04-30 14:17:29.882381'),
(11, 'rule 211(2) r/w 170 IMV Act ', 'Riding without wearing helmet', 500, 'signimg/helmet.png', '2023-04-30 14:18:16.827483'),
(12, 'CMV Rule 119 r/w 177 IMC Act', 'Driving while using moblie pho', 2000, 'signimg/mobile.png', '2023-04-30 14:19:20.665602'),
(13, 'CMV Rule 110 r/w 177 IMC Act', 'Not giving way to emergency ve', 5000, 'signimg/ambulance.png', '2023-04-30 14:20:54.811643'),
(14, 'rule 211(5) r/w 170 IMV Act ', 'Speeding and racing', 5000, 'signimg/race.png', '2023-04-30 15:02:13.915894'),
(15, 'CMV Rule 119 r/w 167 IMC Act', 'Triple Riding on Two-wheeler', 1000, 'signimg/3.png', '2023-04-30 15:06:29.440706'),
(16, 'sec 112 r/w 180 (11) (i) IMV Act', 'Drunk Driving', 1500, 'signimg/dd.png', '2023-04-30 15:08:20.191419'),
(17, 'rule 210(1) r/w 179 IMV Act ', 'Driving Without a Number Plate', 500, 'signimg/no.png', '2023-04-30 15:11:33.006587'),
(18, 'CMV Rule 111 r/w 177 IMC Act', 'Parking in No Parking Area', 500, 'signimg/parking.png', '2023-04-30 15:13:01.204923'),
(19, 'rule 211(2) r/w 70 IMV Act ', 'Overloading', 2000, 'signimg/overload.png', '2023-04-30 15:14:45.398253'),
(20, 'sec 112 r/w 180 (111) (i) IMV Act', 'Carrying Explosive/Inflammable', 10000, 'signimg/fire.png', '2023-04-30 15:17:22.521922'),
(21, 'rule 211(2) r/w 171 IMV Act ', 'Disregarding the Traffic Signa', 2500, 'signimg/trafic.png', '2023-04-30 15:20:37.623231'),
(22, 'CMV Rule 115 r/w 177 IMC Act', 'Driving Without Insurance', 2000, 'signimg/insurance.png', '2023-04-30 15:23:37.985537');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `uphone` bigint(10) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `upassword` varchar(100) NOT NULL,
  `uaddress` varchar(30) NOT NULL,
  `vehicle_type` varchar(30) NOT NULL,
  `vehicl_name` varchar(30) NOT NULL,
  `vreg_no` varchar(30) NOT NULL,
  `vehicle_modal` varchar(30) NOT NULL,
  `udate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `ustatus` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `uprofile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `uname`, `uphone`, `uemail`, `upassword`, `uaddress`, `vehicle_type`, `vehicl_name`, `vreg_no`, `vehicle_modal`, `udate`, `ustatus`, `gender`, `uprofile`) VALUES
(8, 'Rajaram', 1234567890, 'y@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'mangalore', '', '', 'KA1893', '', '2023-03-26 14:17:22.142022', '', 'male', 'uprofile/pro.jpeg'),
(10, 'sara', 1234567890, 'sara@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'mangalore', '', '', 'KA4678C2', '', '2023-03-28 09:50:08.891483', '', 'female', 'uprofile/pro.jpeg'),
(12, 'Revathi J', 7025504135, 'jayanrevu81@gmail.com', '912e79cd13c64069d91da65d62fbb78c', 'Kerala', '', '', 'KL 13 AD 149', '', '2023-03-28 10:37:48.362111', '', 'female', 'uprofile/download.jpeg'),
(13, 'shanu', 9998887776, 'shanu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'kumbla', '', '', 'kl 13 ah 6778', '', '2023-04-28 13:54:57.400905', '', 'male', 'uprofile/anil.PNG'),
(14, 'Revathi', 7025504135, 'revu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'kannur', '', '', 'kl 13 az 5757', '', '2023-04-29 19:28:45.896473', '', 'female', 'uprofile/plogo.png'),
(15, 'Nayana', 7306851606, 'nayana@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Payyannur', '', '', 'kl 13 ab 5445', '', '2023-05-02 18:05:25.031833', '', 'female', 'uprofile/mithaliraj.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `v_id` int(11) NOT NULL,
  `owner_name` varchar(30) NOT NULL,
  `vreg_no` varchar(30) NOT NULL,
  `vname` varchar(30) NOT NULL,
  `vmodal` varchar(30) NOT NULL,
  `vtype` varchar(30) NOT NULL,
  `vstatus` varchar(30) NOT NULL,
  `vdate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `email` varchar(30) NOT NULL,
  `phone` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`v_id`, `owner_name`, `vreg_no`, `vname`, `vmodal`, `vtype`, `vstatus`, `vdate`, `email`, `phone`) VALUES
(3, 'Ram', 'KA1893', 'BMW', ' 2 Series sedan', '', '', '2023-03-25 13:01:01.426977', 'zaidi@gmail.com', 12345678),
(4, 'Rahul', 'KA4678C2', 'Audi', 'XYZ', '4 Wheeler', '', '0000-00-00 00:00:00.000000', 'rahul@gmail.com', 234567898),
(8, 'Revathi J', 'KL 13 AD 149', 'Swift', 'LXI', '4 Wheeler', '', '2023-03-28 10:40:43.200180', 'jayanrevu81@gmail.com', 7025504135),
(9, 'sandra ', 'kl 13 ah 6778', 'wagoner', 'xyz', '4 Wheeler', '', '2023-04-28 13:34:43.495154', 'sandy@gmail.com', 9744334220),
(10, 'shanu', 'kl 13 ah 6778', 'baleno', 'nexa', '4 Wheeler', '', '2023-04-28 13:35:48.102603', 'shanu@gmail.com', 9998887776),
(11, 'revathi', 'kl 13 az 5757', 'access', 'as', '2 Wheeler', '', '2023-04-29 19:27:51.427230', 'revu@gmail.com', 7025504135),
(12, '234', '', '', '', '', '', '2023-04-29 21:46:15.751074', '', 0),
(13, 'Nayana', 'kl 13 ab 5445', 'Access', '125', '2 Wheeler', '', '2023-05-02 18:04:37.586504', 'nayana@gmail.com', 7306851606);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `rcase`
--
ALTER TABLE `rcase`
  ADD PRIMARY KEY (`cs_id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `trules`
--
ALTER TABLE `trules`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rcase`
--
ALTER TABLE `rcase`
  MODIFY `cs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `trules`
--
ALTER TABLE `trules`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
