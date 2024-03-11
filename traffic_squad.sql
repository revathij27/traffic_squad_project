-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 01:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

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
(3, 8, 'sdfghjkl;', '2023-03-29 16:25:59.223258', ''),
(4, 16, 'sdfgyuiop', '2023-03-29 16:35:59.268160', ''),
(5, 16, 'sdfgyuiop', '2023-03-29 16:36:34.731231', ''),
(6, 8, 'wsdefr', '2023-03-29 16:36:43.567785', ''),
(7, 8, 'wsdefr', '2023-03-29 16:38:36.024212', ''),
(8, 8, 'fvghbnj', '2023-03-29 16:38:59.816203', ''),
(9, 8, 'Amazing', '2023-04-03 16:06:24.912365', ''),
(10, 8, 'qwertgyhujikop', '2023-04-04 11:07:19.574920', ''),
(11, 8, 'good', '2023-04-11 16:45:14.821351', '');

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
(3, 'Udupi'),
(5, 'Mangalore'),
(6, 'Kerala');

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
(26, 'KA1893', 25, 'Your Vehicle KA1893 Has Been prosecuted for Negligence Driving  at MANGALORE,KANKANADY on 2023-03-11 at 19:48:00.000000 via case no 1589260033.Please Pay Your Fine within 15 Days. Non Payement of fine will result in legal action against you.', 'viewed', '2023-04-11 16:49:35.800274');

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
(5, 17, 'offline', 0, '', 0, 0, 1000, 'paid', '2023-03-30 16:24:19.901274'),
(6, 16, 'offline', 0, '', 0, 0, 1000, 'paid', '2023-03-30 16:36:12.867899'),
(7, 19, 'online', 2147483647, 'sagar', 11, 123, 500, 'paid', '2023-03-30 16:41:41.592205'),
(8, 17, 'offline', 0, '', 0, 0, 1000, 'paid', '2023-04-03 16:05:08.773973'),
(9, 20, 'offline', 0, '', 0, 0, 1000, 'paid', '2023-04-05 02:04:53.451605'),
(10, 24, 'offline', 0, '', 0, 0, 1000, 'paid', '2023-04-11 10:24:37.736974'),
(11, 25, 'offline', 0, '', 0, 0, 1000, 'paid', '2023-04-11 16:50:48.312026');

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
(8, 'S0023', 5, 'Suresh', 'suresh@gmail.com', 756529001, 'Manglaore', '81dc9bdb52d04dc20036dbd8313ed055', 'male', 'pimage/trafficpolice.jpeg', '2023-03-26 08:24:31.650060', '');

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
(25, 1589260033, '2023-03-11', '19:48:00.000000', 'LS00002345', 'KA1893', 1, 9, 8, 500, '2023-04-11 16:49:25.578853', 'paid', 'Ramesh', 2147483647, 'MANGALORE,KANKANADY', 'vphoto/meeting-01.jpg');

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
(5, 'Mangalore South Police Station', 5, 'ST0023', 2147483647, 'VR4Q+CPG, Near Forum Mall, Pandeshwara, Mangaluru, Karnataka 575001', '2023-03-24 09:53:39.252441', 'simage/policest.jpeg'),
(7, 'Kankanady Town Police Station', 5, 'SSO34', 778362781, ' VV9F+V3V, Mangalore - Dharmastala Hwy, H Q Nagari, Padil, Mangaluru, Karnataka 575007', '0000-00-00 00:00:00.000000', 'simage/policest.jpeg'),
(8, 'North Police Station', 5, 'SS00346', 556772891, 'VR7M+MC6, State Bank, Bunder, Mangaluru, Karnataka 575002', '0000-00-00 00:00:00.000000', 'simage/policest.jpeg'),
(9, 'Urwa Police Station', 5, 'SS660', 662478919, 'WR2P+V7V, Near Urwa Store Market, Ashok Nagar, Mangaluru, Karnataka 575006', '0000-00-00 00:00:00.000000', 'simage/policest.jpeg'),
(10, 'Udupi Town Police Station', 3, 'SS098', 68905434, ' 76, Lombard Memorial Hospital Rd, near Mission Compound, Chitpady, Udupi, Karnataka 576101', '0000-00-00 00:00:00.000000', 'simage/policest.jpeg'),
(11, 'Manipal Police Station', 3, 'SSS000776', 662478919, '8QXP+JCP, SH 25A, Madhav Nagar, Eshwar Nagar, Manipal, Karnataka 576104', '0000-00-00 00:00:00.000000', 'simage/policest.jpeg');

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
(1, 'sec 184 IMV Act ', 'Negligence Driving ', 1000, '', '2023-03-26 09:17:07.948253'),
(3, 'sec 112 r/w 183 (1) (i) IMV Act ', 'Over-speed driving / 2 Wheeler', 1000, '', '0000-00-00 00:00:00.000000'),
(4, 'rule 211(2) r/w 177 IMV Act ', 'Blowing the Horn Loudly', 500, '', '0000-00-00 00:00:00.000000'),
(5, 'CMV Rule 119 r/w 177 IMC Act', 'Without bulb horn ', 500, '', '0000-00-00 00:00:00.000000'),
(6, 'CMV Rule 108 r/w 177 IMV Act ', '9 Driving without brake light ', 500, 'signimg/car.jpeg', '0000-00-00 00:00:00.000000'),
(7, 'sec 184 IMV Act ', 'Negligence Driving ', 1000, 'signimg/car.jpeg', '2023-04-10 10:17:04.267842');

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
(12, 'Revathi J', 7025504135, 'jayanrevu81@gmail.com', '912e79cd13c64069d91da65d62fbb78c', 'Kerala', '', '', 'KL 13 AD 149', '', '2023-03-28 10:37:48.362111', '', 'female', 'uprofile/download.jpeg');

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
(8, 'Revathi J', 'KL 13 AD 149', 'Swift', 'LXI', '4 Wheeler', '', '2023-03-28 10:40:43.200180', 'jayanrevu81@gmail.com', 7025504135);

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
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rcase`
--
ALTER TABLE `rcase`
  MODIFY `cs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `trules`
--
ALTER TABLE `trules`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
