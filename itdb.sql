-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 01:19 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `enquiryid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobno` varchar(15) NOT NULL,
  `emailid` varchar(150) NOT NULL,
  `topic` varchar(110) NOT NULL,
  `message` varchar(500) NOT NULL,
  `enquiry_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`enquiryid`, `name`, `mobno`, `emailid`, `topic`, `message`, `enquiry_dt`) VALUES
(1, 'shikha', '4594753894', 'shi@123gmail.com', 'italian food', 'hfsa,jzdfbjdgjrd', '2021-10-18 02:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin`
--

CREATE TABLE `tbllogin` (
  `userid` varchar(100) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `utype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllogin`
--

INSERT INTO `tbllogin` (`userid`, `pass`, `utype`) VALUES
('an@12gmail.com', '8765', 'user'),
('sam@123gmail.com', 'sam', 'admin'),
('shi@123gmail.com', '876', 'user'),
('shiva@123gmail.com', '8765', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotification`
--

CREATE TABLE `tblnotification` (
  `notificationid` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `notification_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblregistration`
--

CREATE TABLE `tblregistration` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `city` varchar(150) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(150) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `picfilename` varchar(300) NOT NULL,
  `reg_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblregistration`
--

INSERT INTO `tblregistration` (`name`, `gender`, `dob`, `city`, `address`, `email`, `contactno`, `picfilename`, `reg_dt`) VALUES
('Shikha Singh', 'female', '2021-10-11', 'Amethi', 'Amethi', 'adam@gmail.com', '1234566975', '905742411.png', '2021-10-17 02:51:01'),
('ankita', 'female', '2021-10-13', 'Delhi', 'Type here....dnfg bncte', 'an@12gmail.com', '326944387514', '701244711.png', '2021-10-17 11:39:21'),
('Ankita Singh', 'female', '2021-10-20', 'jaipur', 'machali saher', 'Ankita@1gmail.com', '123456789', '682421.png', '2021-10-17 03:09:32'),
('Saumya Agrahari', 'female', '2021-10-20', 'LKO', 'sdhfgufrudkhg', 'sam@123gmail.com', '85463765937', '2101660bg_ramas.png', '2021-10-17 03:39:29'),
('nandu', 'female', '2021-10-27', 'Delhi', 'dsadahdh.', 'shi@123gmail.com', '12345898764853', '7345785logo.png', '2021-10-17 04:07:04'),
('shiva singh', 'male', '2021-10-21', 'Delhi', 'sufhusdtfeusa', 'shiva@123gmail.com', '57298308552', '94145371.png', '2021-10-17 11:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblsuggestion`
--

CREATE TABLE `tblsuggestion` (
  `suggestionid` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `suggestion_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`enquiryid`);

--
-- Indexes for table `tbllogin`
--
ALTER TABLE `tbllogin`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `tblnotification`
--
ALTER TABLE `tblnotification`
  ADD PRIMARY KEY (`notificationid`);

--
-- Indexes for table `tblregistration`
--
ALTER TABLE `tblregistration`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tblsuggestion`
--
ALTER TABLE `tblsuggestion`
  ADD PRIMARY KEY (`suggestionid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `enquiryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblnotification`
--
ALTER TABLE `tblnotification`
  MODIFY `notificationid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsuggestion`
--
ALTER TABLE `tblsuggestion`
  MODIFY `suggestionid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
