-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2020 at 07:12 AM
-- Server version: 10.5.6-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Anonymous_Fiber`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `pincode` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`pincode`) VALUES
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
-- Table structure for table `complaint1`
--

CREATE TABLE `complaint1` (
  `C_ID` int(11) NOT NULL,
  `Customer_ID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Details` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaint1`
--

INSERT INTO `complaint1` (`C_ID`, `Customer_ID`, `Details`) VALUES
(5, '12', 'sakdhsakdhaskjas');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_details`
--

CREATE TABLE `complaint_details` (
  `C_no` int(10) UNSIGNED NOT NULL,
  `Customer_ID` varchar(10) NOT NULL,
  `Customer_DI` int(10) NOT NULL,
  `Details` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Email_Subscription_List`
--

CREATE TABLE `Email_Subscription_List` (
  `S.no` int(10) NOT NULL,
  `Email_Id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Email_Subscription_List`
--

INSERT INTO `Email_Subscription_List` (`S.no`, `Email_Id`) VALUES
(38, 'adityagaur5587@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `new_connection_req`
--

CREATE TABLE `new_connection_req` (
  `Req_Id` bigint(7) NOT NULL,
  `First_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone_Number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email_Id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `State` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pincode` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Service_Type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Plan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_connection_req`
--

INSERT INTO `new_connection_req` (`Req_Id`, `First_name`, `Last_name`, `Phone_Number`, `Email_Id`, `Address`, `City`, `State`, `Pincode`, `Service_Type`, `Plan`) VALUES
(7, 'Harvey', 'Specter', '9556478561', 'harveyspector@anonymousfiber.com', '220 John Street', 'Delhi', 'New Delhi', '1100005', 'Individual', 'Incognito'),
(8, 'Iron', 'Man', '7445452651', 'ironman@anonymousfiber.com', 'Start Tower', 'Delhi', 'New Delhi', '11008', 'Business', 'Incognito Pro');

-- --------------------------------------------------------

--
-- Table structure for table `plan_details`
--

CREATE TABLE `plan_details` (
  `Customer_ID` varchar(10) NOT NULL,
  `Current_Plan` varchar(20) NOT NULL,
  `Data_consumed` decimal(10,3) NOT NULL,
  `Data_left` decimal(10,3) DEFAULT NULL,
  `Due_Date` date NOT NULL,
  `Due_amount` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plan_details`
--

INSERT INTO `plan_details` (`Customer_ID`, `Current_Plan`, `Data_consumed`, `Data_left`, `Due_Date`, `Due_amount`) VALUES
('1', 'Anon', '300.000', '3000.000', '2020-11-30', '1299.000'),
('2', 'Covert', '1000.000', '4000.000', '2020-11-30', '1999.000'),
('3', 'Covert', '1233.000', '3767.000', '2020-11-30', '1999.000'),
('4', 'Incognito', '7000.000', NULL, '2020-11-30', '5999.000'),
('5', 'Incognito', '6400.000', NULL, '2020-11-30', '5999.000'),
('6', 'Anon Pro', '150000.000', NULL, '2020-11-30', '14999.000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `First_Name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Last_Name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Mobile_Number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `State` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PinCode` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Service_Type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`First_Name`, `Last_Name`, `Customer_ID`, `Mobile_Number`, `email`, `password`, `Address`, `City`, `State`, `PinCode`, `Service_Type`) VALUES
('Mike', 'Ross', 1, '8757875712', 'mikeross@anonymousfiber.com', '$2y$10$dC9jihSJI8JcWCPmd3kwDO032z/HtU3.GeDzY7opLCssoqvYm6Yqe', '305 John Street ', 'Delhi', 'New Delhi', '110005', 'Individual'),
('Naruto ', 'Uzumaki', 2, '9988556478', 'narutouzumaki@anonymous.com', '$2y$10$dC9jihSJI8JcWCPmd3kwDO032z/HtU3.GeDzY7opLCssoqvYm6Yqe', 'Hokage\'s Office , Leaf Village ', 'Jaipur', 'Rajasthan', '300205', 'Individual'),
('Madara ', 'Uchiha', 3, '9687851273', 'madarauchiha@anonymous.com', '$2y$10$dC9jihSJI8JcWCPmd3kwDO032z/HtU3.GeDzY7opLCssoqvYm6Yqe', 'Uchiha Square , Jaipur , Rajasthan', 'Jaipur', 'Rajasthan', '302010', 'Individual');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `First_name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `Customer_ID` varchar(10) NOT NULL,
  `Mobile_Number` varchar(10) NOT NULL,
  `Email_ID` varchar(40) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(25) NOT NULL,
  `PinCode` varchar(8) NOT NULL,
  `Service_Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`First_name`, `Last_name`, `Customer_ID`, `Mobile_Number`, `Email_ID`, `Password`, `Address`, `City`, `State`, `PinCode`, `Service_Type`) VALUES
('Mike', 'Ross', '1', '8757875712', 'mikeross@anonymous.com', '$2y$10$dC9jihSJI8JcWCPmd3kwDO032z/HtU3.GeDzY7opLCssoqvYm6Yqe', '305 John Street ', 'Delhi', 'New Delhi', '110005', 'Individual'),
('Emily ', 'Robinson', '2', '8969896285', 'emilyrobinson@anonymous.com', '7d762800708488ce391bc590b7893b106bec0012', '307 John Street ', 'Delhi', 'New Delhi', '110005', 'Individual'),
('Rachel', 'Zane', '3', '7894561238', 'rachelross@anonymous.com', 'f27495a3f79f9b9b897af07fef51867f4ffecf3b', '308 John Street ', 'Delhi', 'New Delhi', '110005', 'Individual'),
('Naruto ', 'Uzumaki', '4', '9687852254', 'narutouzumaki@anonymous.com', 'ffc70f01472014d415b78ec27d2f2963b9cc9018', 'Hokage\'s Office , Leaf Village ', 'Jaipur', 'Rajasthan', '302005', 'Individual'),
('Madara ', 'Uchiha', '5', '9687851273', 'madarauchiha@anonymous.com', '0b1c36f69744972bc9b19a9754da8579f5b0d63c', 'Uchiha Square , Jaipur , Rajasthan', 'Jaipur', 'Rajasthan', '302010', 'Individual'),
('Legion', 'Solutions', '6', '7894561278', 'legionsolutions@anonymous.com', 'f02cf7d4585aef8b662e933bb35c4866afb99bb6', '221 Baker Street , Legion Road', 'Mumbai', 'Maharashtra', '122011', 'Business'),
('Test', 'User', '7', '9885695478', 'abc@gmail.com', 'password', 'abc', 'abc', 'abc', 'abc', 'abc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`pincode`);

--
-- Indexes for table `complaint1`
--
ALTER TABLE `complaint1`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `complaint_details`
--
ALTER TABLE `complaint_details`
  ADD UNIQUE KEY `C_no` (`C_no`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `Email_Subscription_List`
--
ALTER TABLE `Email_Subscription_List`
  ADD PRIMARY KEY (`S.no`);

--
-- Indexes for table `new_connection_req`
--
ALTER TABLE `new_connection_req`
  ADD PRIMARY KEY (`Req_Id`);

--
-- Indexes for table `plan_details`
--
ALTER TABLE `plan_details`
  ADD UNIQUE KEY `Customer_ID_2` (`Customer_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD UNIQUE KEY `Email_ID` (`Email_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint1`
--
ALTER TABLE `complaint1`
  MODIFY `C_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `complaint_details`
--
ALTER TABLE `complaint_details`
  MODIFY `C_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Email_Subscription_List`
--
ALTER TABLE `Email_Subscription_List`
  MODIFY `S.no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `new_connection_req`
--
ALTER TABLE `new_connection_req`
  MODIFY `Req_Id` bigint(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
