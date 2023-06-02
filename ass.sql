-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 04, 2023 at 04:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ass`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `AName` varchar(25) NOT NULL,
  `FullName` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`AName`, `FullName`, `Password`) VALUES
('A1', 'Dehya', '123'),
('A6', 'Farrukh', ' 123');

-- --------------------------------------------------------

--
-- Table structure for table `appoint`
--

CREATE TABLE `appoint` (
  `AName` int(11) NOT NULL,
  `Date` date NOT NULL,
  `PName` varchar(25) NOT NULL,
  `DName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appoint`
--

INSERT INTO `appoint` (`AName`, `Date`, `PName`, `DName`) VALUES
(2, '2023-05-02', 'UK1', 'D133'),
(5, '2023-05-09', 'UK5', 'D140'),
(27, '2023-05-10', 'UK5', 'D140'),
(28, '2023-05-10', 'UK5', 'D140'),
(29, '2023-05-05', 'UK5', 'D140'),
(30, '2023-05-05', 'UK5', 'D140'),
(31, '2023-05-05', 'UK5', 'D140'),
(32, '2023-05-05', 'UK5', 'D140'),
(33, '2023-05-05', 'UK5', 'D140'),
(34, '2023-05-11', 'UK5', 'D140'),
(35, '2023-05-11', 'UK5', 'D140'),
(36, '2023-05-01', 'UK5', 'D140'),
(38, '2023-05-01', 'UK1', 'D133'),
(39, '2023-05-02', 'UK1', 'D132'),
(40, '2023-05-03', 'UK1', 'D133'),
(41, '2023-05-03', 'UK1', 'D133'),
(42, '2023-05-03', 'UK1', 'D133'),
(43, '2023-05-03', 'UK1', 'D133'),
(44, '2023-05-03', 'UK1', 'D133');

-- --------------------------------------------------------

--
-- Table structure for table `avail`
--

CREATE TABLE `avail` (
  `Date` date NOT NULL,
  `DName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avail`
--

INSERT INTO `avail` (`Date`, `DName`) VALUES
('2023-05-04', 'D133');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `Cname` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`Cname`) VALUES
('Lahore');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `DName` varchar(25) NOT NULL,
  `Fullname` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Expertise` varchar(25) DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`DName`, `Fullname`, `Password`, `Expertise`, `City`) VALUES
('D132', 'Dehya', '123', 'Skin', 'Lahore'),
('D133', 'Ali', '1234', 'OPD', 'Lahore'),
('D140', 'Zain', '123', 'Skin', ' Karachi');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `PName` varchar(25) NOT NULL,
  `FullName` varchar(23) NOT NULL,
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`PName`, `FullName`, `Password`) VALUES
('UK1', 'Khurraim', '123'),
('UK3', 'Siddiqui', ' 123'),
('UK5', 'Tayyab', ' 123'),
('UK6', 'Tayyab', ' 123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`AName`);

--
-- Indexes for table `appoint`
--
ALTER TABLE `appoint`
  ADD PRIMARY KEY (`AName`),
  ADD KEY `fk_DName_id` (`DName`),
  ADD KEY `fk_PName_id` (`PName`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`DName`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`PName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoint`
--
ALTER TABLE `appoint`
  MODIFY `AName` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appoint`
--
ALTER TABLE `appoint`
  ADD CONSTRAINT `fk_DName_id` FOREIGN KEY (`DName`) REFERENCES `doctors` (`DName`),
  ADD CONSTRAINT `fk_PName_id` FOREIGN KEY (`PName`) REFERENCES `patients` (`PName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
