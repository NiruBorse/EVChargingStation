-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 06:02 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `evcharging`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`AdminID` int(40) NOT NULL,
  `AdminEmail` varchar(40) NOT NULL,
  `AdminPassword` int(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `AdminEmail`, `AdminPassword`) VALUES
(1, 'Niruborse', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `charstation`
--

CREATE TABLE IF NOT EXISTS `charstation` (
`StationID` int(20) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `City` varchar(40) NOT NULL,
  `Taluka` varchar(40) NOT NULL,
  `District` varchar(40) NOT NULL,
  `OpenTime` varchar(40) NOT NULL,
  `CloseTime` varchar(40) NOT NULL,
  `Mobile` varchar(40) NOT NULL,
  `Latitude` int(20) NOT NULL,
  `Longitude` int(20) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Power` int(20) NOT NULL,
  `Status` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `charstation`
--

INSERT INTO `charstation` (`StationID`, `Name`, `Address`, `City`, `Taluka`, `District`, `OpenTime`, `CloseTime`, `Mobile`, `Latitude`, `Longitude`, `Password`, `Power`, `Status`) VALUES
(1, 'Niraj', 'balaji nagar', 'Pune', 'Dhule', 'Dhule', '6am', '11pm', '8805829701', 101, 110, '123', 3000, ''),
(2, 'Niraj Dilip Borse', '21 , Shivparvati colony karavand naka', 'Shirpur', 'mumbai', 'aurangabad', '7am', '10pm', '1234567893', 0, 10, '1212', 3000, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`UserID` int(40) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Mobile` varchar(40) NOT NULL,
  `City` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Name`, `Email`, `Mobile`, `City`, `Password`) VALUES
(1, 'Anita Borse', 'anitabosrse', '08805829701', 'Shirpur', '1234'),
(2, 'Dilip', 'dilipborse', '9850597403', 'Shirpur', '123'),
(3, 'Niraj Dilip Borse', 'nirajborse123@gmail.com', '1234567893', 'Shirpur', '1212');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `charstation`
--
ALTER TABLE `charstation`
 ADD PRIMARY KEY (`StationID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `AdminID` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `charstation`
--
ALTER TABLE `charstation`
MODIFY `StationID` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `UserID` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
