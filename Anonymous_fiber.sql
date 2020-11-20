-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2020 at 07:20 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fiber`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `Pin_Code` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`Pin_Code`) VALUES
(110005),
(110006),
(110007),
(110008),
(110038),
(110054),
(110055),
(110060),
(110071),
(110084),
(110085),
(122003),
(122004),
(122007),
(122008),
(122011),
(122018),
(122051),
(122413),
(302001),
(302005),
(302010),
(302015),
(302019);

-- --------------------------------------------------------

--
-- Table structure for table `complaint_details`
--

CREATE TABLE `complaint_details` (
  `Customer_ID` varchar(10) NOT NULL,
  `C_no` int(10) UNSIGNED NOT NULL,
  `Details` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `plan_details`
--

CREATE TABLE `plan_details` (
  `Customer_ID` varchar(10) NOT NULL,
  `Current_Plan` varchar(20) NOT NULL,
  `Data_consumed` decimal(10,3) NOT NULL,
  `Data_left` decimal(10,3) NOT NULL,
  `Due_Date` date NOT NULL,
  `Due_amount` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `query_details`
--

CREATE TABLE `query_details` (
  `Customer_ID` varchar(10) NOT NULL,
  `q_no` int(10) NOT NULL,
  `Details` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `First_name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `Customer_ID` varchar(10) NOT NULL,
  `Email_ID` varchar(30) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Pin_Code` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`Pin_Code`);

--
-- Indexes for table `complaint_details`
--
ALTER TABLE `complaint_details`
  ADD UNIQUE KEY `C_no` (`C_no`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `plan_details`
--
ALTER TABLE `plan_details`
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `query_details`
--
ALTER TABLE `query_details`
  ADD UNIQUE KEY `q_no` (`q_no`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD UNIQUE KEY `Email_ID` (`Email_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaint_details`
--
ALTER TABLE `complaint_details`
  ADD CONSTRAINT `complaint_details_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `user_details` (`Customer_ID`);

--
-- Constraints for table `plan_details`
--
ALTER TABLE `plan_details`
  ADD CONSTRAINT `plan_details_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `user_details` (`Customer_ID`);

--
-- Constraints for table `query_details`
--
ALTER TABLE `query_details`
  ADD CONSTRAINT `query_details_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `user_details` (`Customer_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
