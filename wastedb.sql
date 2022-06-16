-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 14, 2021 at 04:35 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wastedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

DROP TABLE IF EXISTS `booked`;
CREATE TABLE IF NOT EXISTS `booked` (
  `wid` int(2) NOT NULL AUTO_INCREMENT,
  `uid` int(2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`wid`, `uid`, `category`, `weight`, `total`, `item`) VALUES
(83, 30, 'metal', '100kg', '1000', 'appliances');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE IF NOT EXISTS `contactus` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `problem` varchar(200) NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`cid`, `email`, `subject`, `problem`, `status`) VALUES
(17, 'pranita.patil@movinture.com', 'Cannot sell my waste', 'Tried Selling my waste using the website ..not working', 'a'),
(18, 'ashashishsurve1306@gmail.com', 'Issues', 'cat upload my waste', 'a'),
(15, 'reuben2000@outlook.com', 'Cannot Sell My Waste ', 'Tried adding my shoes into rubberwaste ..could not place the order....please revert back with a solution.', 'a'),
(16, 'reuben2000@outlook.com', 'Cannot Sell My Waste ', 'Tried adding my shoes into rubberwaste ..could not place the order....please revert back with a solution.', 'p'),
(14, 'reuben2000@outlook.com', 'Cannot Sell My Waste ', 'Tried adding my shoes into rubberwaste ..could not place the order....please revert back with a solution.', 'a'),
(19, 'reuben2000@outlook.com', 'Issues', 'cant upload my waste', 'a'),
(20, 'reuben2000@outlook.com', 'Issues', 'cannot sell my waste', 'a'),
(21, 'reuben2000@outlook.com', 'cant list my waste', 'tried adding my waste but not listing', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
CREATE TABLE IF NOT EXISTS `prices` (
  `pid` int(2) NOT NULL AUTO_INCREMENT,
  `uid` int(2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`pid`, `uid`, `category`, `price`) VALUES
(1, 7, 'food', '5'),
(2, 7, 'metal', '12'),
(3, 7, 'ewaste', '12'),
(4, 7, 'glass', '2'),
(5, 7, 'cloth', '1'),
(6, 7, 'wood', '10'),
(7, 7, 'paper', '2'),
(8, 7, 'plastic', '2'),
(9, 7, 'rubber', '20'),
(10, 7, 'construction', '10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `userty` varchar(2) NOT NULL,
  `block` varchar(2) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `email`, `password`, `phone`, `address`, `userty`, `block`) VALUES
(7, 'reubenk', 'reuben2000@outlook.com', 'reuben', '9823080277', 'pune', 'a', 'nb'),
(12, 'Aditya Janve', 'adityacr7janve@gmail.com', 'aditya', '9823080277', 'Wanowarie', 'u', 'nb'),
(30, 'Manjusha ', 'manjushawadekar.bmcc@despune.org', '1234', '9823080277', 'mumbai', 'u', 'nb');

-- --------------------------------------------------------

--
-- Table structure for table `wastedetails`
--

DROP TABLE IF EXISTS `wastedetails`;
CREATE TABLE IF NOT EXISTS `wastedetails` (
  `wid` int(2) NOT NULL AUTO_INCREMENT,
  `uid` int(2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `apweight` varchar(10) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(2) NOT NULL,
  `img` varchar(600) NOT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wastedetails`
--

INSERT INTO `wastedetails` (`wid`, `uid`, `category`, `item`, `apweight`, `location`, `status`, `img`) VALUES
(65, 30, 'metal', 'appliances', '200', 'wanowarie', 'a', 'Since the files already exists rename the file on your comp and upload.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
