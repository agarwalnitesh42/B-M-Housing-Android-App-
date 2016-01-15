-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 31, 2013 at 07:51 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `andestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `mid` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(43) NOT NULL,
  `email` varchar(43) NOT NULL,
  `msg` varchar(122) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`mid`, `name`, `email`, `msg`) VALUES
(1, 'Kalumba Derick', 'kk22@dero.com', 'Maann..for me i want to buy without coming to you.s'),
(2, 'Mukulu Jonathan', 'mukulu@gmail.com', 'I need land for my farm.');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE IF NOT EXISTS `property` (
  `pid` int(12) NOT NULL AUTO_INCREMENT,
  `contact` varchar(100) NOT NULL,
  `name` varchar(123) NOT NULL,
  `location` varchar(123) NOT NULL,
  `status` varchar(123) NOT NULL,
  `price` int(12) NOT NULL,
  `description` varchar(213) NOT NULL,
  `activation` varchar(23) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`pid`, `contact`, `name`, `location`, `status`, `price`, `description`, `activation`, `Image`) VALUES
(8, '', 'Home ', 'Masaka', 'For Rent', 300000, '3 Bedrooms + Self Contained', 'Yes', 'upload/cfc.jpeg'),
(9, '', 'House', 'Bakuli', 'For Sale', 20000000, 'Big and Large - 3Bedrooms', 'Yes', 'upload/background2.jpg'),
(10, '', 'Plot of Land', 'Kibuli', 'For Sale', 200000000, '100 x 100, Water, Electricity, Roads', 'Yes', 'upload/rrrrr.jpeg'),
(11, '', 'Land', 'Wakiso', 'For Sale', 100000000, '100 Acres, Suitable for a farm', 'Yes', 'upload/carpark4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(4, 'admin', 'admin', 'Shaftee', 'Sy'),
(3, 'moses', 'moses', 'Moses', 'Gre');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `firstname`, `lastname`, `username`, `password`, `location`, `contact`) VALUES
(1, 'ss', 'ss', 'user', 'user', 'ff', '454'),
(3, 'Nyamwasa', 'Galimu', 'admin', 'admin', 'Bunamwaya', '0781477926');
