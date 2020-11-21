-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 21, 2020 at 09:19 PM
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
-- Database: `alpha`
--
CREATE DATABASE IF NOT EXISTS `alpha` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `alpha`;

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `ProductName` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UnitPrice` decimal(4,2) DEFAULT NULL,
  `SupplierID` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`ProductName`, `UnitPrice`, `SupplierID`) VALUES
('Mishi Kobe Niku', '97.00', '4'),
('Sir Rodneys Marmalade', '81.00', '8'),
('Thoringer Rostbratwurst', '89.79', '12'),
('Cote de Playe', '90.50', '18'),
('Alpha', '45.00', '25'),
('Beta', '75.00', '30'),
('Gamma ', '95.00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE `shoes` (
  `Id` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- Database: `company`
--
CREATE DATABASE IF NOT EXISTS `company` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `company`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Dname` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dnumber` int(11) NOT NULL,
  `Mgr_ssn` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mgr_start_data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Dname`, `Dnumber`, `Mgr_ssn`, `Mgr_start_data`) VALUES
('Headquarters', 1, '888665555', '1981-06-19'),
('Administration', 4, '987654321', '1995-01-01'),
('Research', 5, '333445555', '1988-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE `dependent` (
  `Essn` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dependent_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sex` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Relationship` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dependent`
--

INSERT INTO `dependent` (`Essn`, `Dependent_name`, `Sex`, `Bdate`, `Relationship`) VALUES
('123456789', 'Alice', 'F', '1988-12-30', 'Daughter'),
('123456789', 'Elizabeth', 'F', '1967-05-05', 'Spouse'),
('123456789', 'Michael', 'M', '1988-01-04', 'Son'),
('333445555', 'Alice', 'F', '1986-04-05', 'Daughter'),
('333445555', 'Joy', 'F', '1958-05-03', 'Spouse'),
('333445555', 'Theodore', 'M', '1983-10-25', 'Son'),
('987654321', 'Abner', 'M', '1942-02-28', 'Spouse');

-- --------------------------------------------------------

--
-- Table structure for table `dept_locations`
--

CREATE TABLE `dept_locations` (
  `Dnumber` int(11) NOT NULL,
  `Dlocation` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dept_locations`
--

INSERT INTO `dept_locations` (`Dnumber`, `Dlocation`) VALUES
(1, 'Houston'),
(4, 'Stafford'),
(5, 'Bellaire'),
(5, 'Houston'),
(5, 'Sugarland');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Fname` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Minit` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Lname` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ssn` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bdate` date DEFAULT NULL,
  `Address` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sex` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `Super_ssn` char(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Fname`, `Minit`, `Lname`, `Ssn`, `Bdate`, `Address`, `Sex`, `Salary`, `Super_ssn`, `Dno`) VALUES
('John', 'B', 'Smith ', '123456789', '1965-01-09', ' 731 Fondren , Houston , TX ', 'M', '30000.00', '333445555', 5),
('Franklin', 'T', 'Wong', '333445555', '1955-12-08', '638 Voss , Houston ,TX', 'M', '40000.00', '888665555', 5),
('Joyce', 'A', 'English', '453453453', '1972-07-31', '5631 Rice , Houston , TX ', 'F', '25000.00', '333445555', 5),
('Ramesh ', 'K', 'Narayan', '666884444', '1962-09-15', '975 Fire Oak , Humble ,TX', 'M', '38000.00', '333445555', 5),
('James', 'E', 'Borg', '888665555', '1937-11-10', '450 Stone , Houston , TX', 'M', '55000.00', NULL, 1),
('Jennifer ', 's', 'Wallace', '987654321', '1941-06-20', '291 Berry , Bellaire , TX ', 'F', '43000.00', '888665555', 4),
('Ahmad', 'V', 'Jabbar', '987987987', '1969-03-29', '980 Dallas , Houston , TX', 'M', '25000.00', '987654321', 4),
('Alicia', 'J', 'Zelaya', '999887777', '1968-01-19', '3321 Castle , Spring ,TX', 'F', '25000.00', '987654321', 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `my_view`
-- (See below for the actual view)
--
CREATE TABLE `my_view` (
`Fname` varchar(15)
,`Minit` char(1)
,`Lname` varchar(15)
,`Ssn` char(9)
,`Bdate` date
,`Address` varchar(30)
,`Sex` char(1)
,`Salary` decimal(10,2)
,`Super_ssn` char(9)
,`Dno` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `Pname` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pnumber` int(11) NOT NULL,
  `Plocation` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dnum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Pname`, `Pnumber`, `Plocation`, `Dnum`) VALUES
('ProductX', 1, 'Bellaire', 5),
('ProductY', 2, 'Sugarland', 5),
('ProductZ', 3, 'Houston', 5),
('Computerization', 10, 'Stafford', 4),
('Reorganization', 20, 'Houston', 1),
('Newbenefits', 30, 'Stafford', 4);

-- --------------------------------------------------------

--
-- Table structure for table `WORKS_ON`
--

CREATE TABLE `WORKS_ON` (
  `Essn` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pnumber` int(11) NOT NULL,
  `Hours` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `WORKS_ON`
--

INSERT INTO `WORKS_ON` (`Essn`, `Pnumber`, `Hours`) VALUES
('123456789', 1, '32.5'),
('453453453', 1, '20.0'),
('123456789', 2, '7.5'),
('333445555', 2, '10.0'),
('453453453', 2, '20.0'),
('333445555', 3, '10.0'),
('666884444', 3, '40.0'),
('333445555', 10, '10.0'),
('987987987', 10, '35.0'),
('999887777', 10, '10.0'),
('33344555', 20, '10.0'),
('888665555', 20, '0.0'),
('987654321', 20, '15.0'),
('987654321', 30, '20.0'),
('987987987', 30, '5.0'),
('999887777', 30, '30.0');

-- --------------------------------------------------------

--
-- Structure for view `my_view`
--
DROP TABLE IF EXISTS `my_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `my_view`  AS SELECT `employee`.`Fname` AS `Fname`, `employee`.`Minit` AS `Minit`, `employee`.`Lname` AS `Lname`, `employee`.`Ssn` AS `Ssn`, `employee`.`Bdate` AS `Bdate`, `employee`.`Address` AS `Address`, `employee`.`Sex` AS `Sex`, `employee`.`Salary` AS `Salary`, `employee`.`Super_ssn` AS `Super_ssn`, `employee`.`Dno` AS `Dno` FROM `employee` WHERE `employee`.`Sex` = 'M' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Dnumber`);

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD PRIMARY KEY (`Essn`,`Dependent_name`);

--
-- Indexes for table `dept_locations`
--
ALTER TABLE `dept_locations`
  ADD PRIMARY KEY (`Dnumber`,`Dlocation`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Ssn`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Pnumber`);

--
-- Indexes for table `WORKS_ON`
--
ALTER TABLE `WORKS_ON`
  ADD PRIMARY KEY (`Pnumber`,`Essn`);
--
-- Database: `fiber 1`
--
CREATE DATABASE IF NOT EXISTS `fiber 1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `fiber 1`;

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
('5', 'Incognito', '6400.000', NULL, '2020-11-30', '5999.000');

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
  `Address` varchar(100) NOT NULL,
  `Pin_Code` varchar(8) NOT NULL,
  `Phone Number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`First_name`, `Last_name`, `Customer_ID`, `Email_ID`, `Password`, `Address`, `Pin_Code`, `Phone Number`) VALUES
('Mike', 'Ross', '1', 'mikeross@anonymous.com', '6d9ce3ad71855b6fff3ed3530c2967c2d4e3f844', '305 John Street , Delhi', '110005', '8757875712'),
('Emily ', 'Robinson', '2', 'emilyrobinson@anonymous.com', '7d762800708488ce391bc590b7893b106bec0012', '307 John Street , Delhi', '110005', '8969896285'),
('Rachel', 'Zane', '3', 'rachelross@anonymous.com', 'f27495a3f79f9b9b897af07fef51867f4ffecf3b', '308 John Street , Delhi', '110005', '7894561238'),
('Naruto ', 'Uzumaki', '4', 'narutouzumaki@anonymous.com', 'ffc70f01472014d415b78ec27d2f2963b9cc9018', 'Hokage\'s Office , Leaf Village , Jaipur , Rajasthan', '302005', '9687852254'),
('Madara ', 'Uchiha', '5', 'madarauchiha@anonymous.com', '0b1c36f69744972bc9b19a9754da8579f5b0d63c', 'Uchiha Square , Jaipur , Rajasthan', '302010', '9687851273');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`pincode`);

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
--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onloan` tinyint(1) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `borrowerid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `title`, `author`, `onloan`, `duedate`, `borrowerid`) VALUES
(1, 'Harry Potter and the Goblet of Fire', 'J. K. Rowling', 1, '2020-06-12', 114),
(2, 'Harry Potter and the Half-Blood Prince', 'J.K. Rowling', 0, NULL, NULL),
(3, 'Wind in the Willows', 'Kenneth Grahame', 0, NULL, NULL),
(4, 'Great Expectations', 'Charles Dickens', 1, '2020-06-11', 103),
(5, 'A Christmas Carol', 'Charles Dickens', 0, NULL, NULL),
(6, 'Knots and Crosses', 'Ian Rankin', 1, '2013-10-26', 103),
(7, 'The Hanging Garden', 'Ian Rankin', 0, NULL, NULL),
(8, 'Othello', 'William Shakespeare', 0, NULL, NULL),
(9, 'Twelfth Night', 'Willliam Shakespeare', 0, NULL, NULL),
(10, 'Macbeth', 'William Shakespeare', 0, NULL, NULL),
(11, 'King Henry V', 'Willliam Shakespeare', 0, NULL, NULL),
(12, 'Java in a Nutshell', 'David Flanagan', 0, NULL, NULL),
(13, 'Modern Operating Systems', 'Andy Tanenbaum', 0, NULL, NULL),
(14, 'Linux System Programming', 'Robert Love', 0, NULL, NULL),
(15, 'SUSE Linux', 'Chris Brown', 1, '2013-10-27', 102),
(16, 'PHP and MySQL', 'Welling and Thomson', 0, NULL, NULL),
(17, 'High Performance MySQL', 'Schwartz et al', 0, NULL, NULL),
(18, 'PHP 5 for Dummies', 'Janet Valade', 0, NULL, NULL),
(19, 'Computer Security', 'Stallings and Brown', 0, NULL, NULL),
(20, 'Network Security Essentials', 'William Stallings', 0, NULL, NULL),
(21, 'The Casual Vacancy', 'J. K. Rowling', 0, NULL, NULL),
(22, 'Home Plumbing Manual', 'Andy Blackwell', 0, NULL, NULL),
(23, 'Self-sufficiency Home Brewing', 'John Parkes', 0, NULL, NULL),
(24, 'Notes From a Small Island', 'Bill Bryson', 0, NULL, NULL),
(25, 'A Short History or Nearly Everything', 'Bill Bryson', 0, NULL, NULL),
(26, 'A Walk in the Woods', 'Bill Bryson', 0, NULL, NULL),
(27, 'The Lost Continent', 'Bill Bryson', 1, '2020-12-31', 101),
(28, 'So Long, and Thanks for all the Fish', 'Douglas Adams', 0, NULL, NULL),
(29, 'Life, the Universe and Everything', 'Douglas Adams', 0, NULL, NULL),
(30, 'The Salmon of Doubt', 'Douglas Adams', 0, NULL, NULL),
(31, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 0, NULL, NULL),
(32, 'The Girl who Played with Fire', 'Stieg Larsson', 0, NULL, NULL),
(33, 'The Deans Watch', 'Elizabeth Goudge', 0, NULL, NULL),
(34, 'Pilgrims Inn', 'Elizabeth Goudge', 0, NULL, NULL),
(35, 'The Colour of Magic', 'Terry Pratchett', 0, NULL, NULL),
(36, 'Dodger', 'Terry Pratchett', 0, NULL, NULL),
(37, 'The Light Fantastic', 'Terry Pratchett', 0, NULL, NULL),
(38, 'Childhoods End', ' Arthur C. Clarke', 0, NULL, NULL),
(39, 'Rendezvous with Rama', 'Arthur C. Clarke', 0, NULL, NULL),
(40, '2001: A Space Odyssey', 'Arthur C. Clarke', 0, NULL, NULL),
(41, 'I, Robot', 'Isaac Asimov', 0, NULL, NULL),
(42, 'The Caves of Steel', 'Isaac Asimov', 0, NULL, NULL),
(43, 'Dune', 'Frank Herbert', 0, NULL, NULL),
(44, 'MYSQL', 'Paul Dubois', 0, NULL, NULL),
(45, 'Mother Tongue', 'Bill Bryson', 0, NULL, NULL),
(47, 'Fifty Shades Of Grey', 'E.L. James', 0, NULL, NULL),
(48, 'Alchemist', 'Paulo Coeliho', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `borrowers`
--

CREATE TABLE `borrowers` (
  `borrowerid` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrowers`
--

INSERT INTO `borrowers` (`borrowerid`, `name`, `address`) VALUES
(100, 'Homer Simpson', '742 Evergreen Terrace, Springfield'),
(101, 'John Doe', '54 High Street, Bagshot'),
(102, 'Jane Smith', '5 Church Lane, Hambridge'),
(103, 'Henry Higgins', '14 Mayfair'),
(114, 'Sherlock Holmes', '221 Baker Street , London ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`),
  ADD KEY `borrowerid` (`borrowerid`);

--
-- Indexes for table `borrowers`
--
ALTER TABLE `borrowers`
  ADD PRIMARY KEY (`borrowerid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `borrowers`
--
ALTER TABLE `borrowers`
  MODIFY `borrowerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`borrowerid`) REFERENCES `borrowers` (`borrowerid`);
--
-- Database: `php`
--
CREATE DATABASE IF NOT EXISTS `php` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `php`;
--
-- Database: `test1`
--
CREATE DATABASE IF NOT EXISTS `test1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `test1`;
--
-- Database: `test2`
--
CREATE DATABASE IF NOT EXISTS `test2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `test2`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(50) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `Sex` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(255) DEFAULT 5000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `age`, `Sex`, `name`, `salary`) VALUES
(121, 25, 'M', 'John Doe', 5000),
(122, 28, 'M', 'Neal Caffery', 4000),
(123, 29, 'F', 'Dakota Johnson', 20000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD UNIQUE KEY `id_3` (`id`),
  ADD UNIQUE KEY `id_4` (`id`),
  ADD UNIQUE KEY `id_5` (`id`),
  ADD UNIQUE KEY `id_6` (`id`),
  ADD UNIQUE KEY `id_7` (`id`),
  ADD UNIQUE KEY `id_8` (`id`),
  ADD UNIQUE KEY `id_9` (`id`),
  ADD UNIQUE KEY `mycons` (`id`,`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
