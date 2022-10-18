-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 02:12 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `ID` int(11) NOT NULL,
  `apartment_number` varchar(255) NOT NULL,
  `building_number` varchar(20) NOT NULL,
  `apartment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`ID`, `apartment_number`, `building_number`, `apartment_status`) VALUES
(20, '623', 'A', 'Owned'),
(21, '023', 'B', 'Owned'),
(22, '023', 'D', 'Empty');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin Shola', 'admin', 'admin@mail.com', '0192023a7bbd73250516f069df18b500', '2022-04-21 03:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblvisitor`
--

CREATE TABLE `tblvisitor` (
  `ID` int(5) NOT NULL,
  `VisitorName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Gender` varchar(11) NOT NULL,
  `Apartment` varchar(120) NOT NULL,
  `BuildingNo` varchar(55) NOT NULL,
  `WhomtoMeet` varchar(120) DEFAULT NULL,
  `Reason` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` varchar(255) DEFAULT NULL,
  `outtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvisitor`
--

INSERT INTO `tblvisitor` (`ID`, `VisitorName`, `MobileNumber`, `Address`, `Gender`, `Apartment`, `BuildingNo`, `WhomtoMeet`, `Reason`, `EnterDate`, `remark`, `outtime`) VALUES
(17, 'Samantha Jane', 912354789, 'Sample Address', 'Female', '623', '        A    ', 'The Owner', 'Sample Business', '2022-06-17 07:31:35', 'Done and cleared', '2022-10-14 20:59:08'),
(18, 'Segun Bukoye', 9012345678, 'Osogbo', 'Male', '023', '        B    ', 'Mr. Segun', 'Project', '2022-10-08 08:11:52', 'Done with project. Signed out.', '2022-10-08 08:12:49'),
(19, 'Peter Benson', 9089897334, 'Opp. NNPC, Offa, Kwara State.', 'Male', '023', '        B        D    ', 'Mr. Jones', 'Fummigation', '2022-10-14 22:36:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartment`
--
ALTER TABLE `apartment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
