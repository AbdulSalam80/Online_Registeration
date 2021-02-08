-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2020 at 01:35 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_cresult`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_uname` varchar(50) NOT NULL,
  `admin_pswd` varchar(50) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_uname`, `admin_pswd`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE IF NOT EXISTS `tbl_department` (
  `dpt_id` int(11) NOT NULL AUTO_INCREMENT,
  `dpt_name` varchar(50) NOT NULL,
  PRIMARY KEY (`dpt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dpt_id`, `dpt_name`) VALUES
(7, 'FSC'),
(8, 'ICS'),
(9, 'FA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_helpdesk`
--

CREATE TABLE IF NOT EXISTS `tbl_helpdesk` (
  `help_id` int(11) NOT NULL AUTO_INCREMENT,
  `help_sname` varchar(50) NOT NULL,
  `help_email` varchar(50) NOT NULL,
  `help_contact` varchar(50) NOT NULL,
  `help_type` varchar(50) NOT NULL,
  `help_detail` varchar(50) NOT NULL,
  PRIMARY KEY (`help_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_helpdesk`
--

INSERT INTO `tbl_helpdesk` (`help_id`, `help_sname`, `help_email`, `help_contact`, `help_type`, `help_detail`) VALUES
(1, 'mm', 'mmmm', 'mmm', 'Freeze', '   kmkm'),
(2, 'Muhammad Abid', 'abidshahzad36@gmail.com', '03346795855', 'Complaint', 'no result upcate'),
(3, 'Muhammad Abid', 'abidshahzad36@gmail.com', '03346795855', 'Complaint', 'no result upcate'),
(4, 'Muhammad Abid', 'abidshahzad36@gmail.com', '03346795855', 'Rechecking', 'm '),
(5, 'Muhammad Abid', 'abidshahzad36@gmail.com', '03346795855', 'Rechecking', 'm ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_midresult`
--

CREATE TABLE IF NOT EXISTS `tbl_midresult` (
  `midrslt_id` int(11) NOT NULL AUTO_INCREMENT,
  `midrslt_std_reg` varchar(100) NOT NULL,
  `midrslt_prog_id` int(11) NOT NULL,
  `midrslt_subject_id` int(11) NOT NULL,
  `midrslt_omarks` int(11) NOT NULL,
  `midrslt_tmarks` int(11) NOT NULL,
  PRIMARY KEY (`midrslt_id`),
  KEY `midrslt_std_id` (`midrslt_std_reg`),
  KEY `midrslt_smst_id` (`midrslt_prog_id`),
  KEY `midrslt_subject_id` (`midrslt_subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tbl_midresult`
--

INSERT INTO `tbl_midresult` (`midrslt_id`, `midrslt_std_reg`, `midrslt_prog_id`, `midrslt_subject_id`, `midrslt_omarks`, `midrslt_tmarks`) VALUES
(24, '0900', 0, 27, 150, 200),
(27, '0900', 22, 28, 70, 100),
(28, '0900', 22, 29, 79, 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_program`
--

CREATE TABLE IF NOT EXISTS `tbl_program` (
  `pgm_id` int(11) NOT NULL AUTO_INCREMENT,
  `pgm_dpt_id` int(11) NOT NULL,
  `pgm_name` varchar(50) NOT NULL,
  PRIMARY KEY (`pgm_id`),
  KEY `pgm_dpt_id` (`pgm_dpt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tbl_program`
--

INSERT INTO `tbl_program` (`pgm_id`, `pgm_dpt_id`, `pgm_name`) VALUES
(15, 3, 'BSCS'),
(19, 3, 'MSIT '),
(20, 3, 'BSIT  '),
(21, 3, 'MSCS '),
(22, 7, 'Pre Engineering '),
(23, 7, 'Pre Medical '),
(24, 8, 'Computer '),
(25, 9, 'Arts ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_semester`
--

CREATE TABLE IF NOT EXISTS `tbl_semester` (
  `smst_id` int(11) NOT NULL AUTO_INCREMENT,
  `smst_dpt_id` int(11) NOT NULL,
  `smst_pgm_id` int(11) NOT NULL,
  `smst_smster` varchar(50) NOT NULL,
  PRIMARY KEY (`smst_id`),
  KEY `smst_dpt_id` (`smst_dpt_id`),
  KEY `smst_pgm_id` (`smst_pgm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `tbl_semester`
--

INSERT INTO `tbl_semester` (`smst_id`, `smst_dpt_id`, `smst_pgm_id`, `smst_smster`) VALUES
(44, 3, 15, '1st'),
(45, 3, 15, '2nd'),
(46, 3, 15, '3rd'),
(47, 3, 15, '4rth');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE IF NOT EXISTS `tbl_student` (
  `std_id` int(11) NOT NULL AUTO_INCREMENT,
  `std_pic` varchar(256) NOT NULL,
  `std_name` varchar(50) NOT NULL,
  `std_reg` varchar(50) NOT NULL,
  `std_dpt` varchar(50) NOT NULL,
  `std_prog` varchar(50) NOT NULL,
  `std_section` varchar(50) NOT NULL,
  `std_session` varchar(50) NOT NULL,
  `std_gender` varchar(50) NOT NULL,
  PRIMARY KEY (`std_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`std_id`, `std_pic`, `std_name`, `std_reg`, `std_dpt`, `std_prog`, `std_section`, `std_session`, `std_gender`) VALUES
(13, '', 'Muhammad Sameer', 'isp/2001', ' ', '', 'Section-A ', 'Main-campus(2014-2018)', 'Male'),
(14, '', 'Meerab Mazhar', 'isp-bscs-2017', ' ', '', 'Section-B ', 'Main-campus(2014-2018)', 'Female'),
(15, '', 'Muhammad Sameer', 'isp-bscs-2017', ' ', '', 'Section-A ', 'Main-campus(2014-2018)', 'Male'),
(16, '', 'Meerab Mazhar', 'isp/2018', '3 ', '15', 'Section-A ', 'Main-campus(2014-2018)', 'Female'),
(17, '', 'Muhammad Sameer', 'isp/2001', '3', '15', 'Section-A', 'Main-campus(2014-2018)', 'Male'),
(21, '60Desert.jpg', 'Ayat', '0900', '7', '22', 'Section-A', '2009-2011', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject`
--

CREATE TABLE IF NOT EXISTS `tbl_subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_dpt_id` int(11) NOT NULL,
  `subject_pgm_id` int(11) NOT NULL,
  `subject_sbjct` varchar(50) NOT NULL,
  PRIMARY KEY (`subject_id`),
  KEY `subject_dpt_id` (`subject_dpt_id`),
  KEY `subject_pgm_id` (`subject_pgm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tbl_subject`
--

INSERT INTO `tbl_subject` (`subject_id`, `subject_dpt_id`, `subject_pgm_id`, `subject_sbjct`) VALUES
(11, 3, 15, 'php'),
(12, 3, 15, 'ASP'),
(13, 3, 15, 'Android'),
(15, 3, 16, 'telecommunication'),
(16, 3, 15, 'ASP'),
(17, 3, 15, 'php'),
(18, 3, 15, 'Android'),
(20, 3, 20, 'telecommunication'),
(21, 3, 15, 'php'),
(22, 3, 15, 'ASP'),
(23, 3, 15, 'telecommunication'),
(24, 3, 15, 'Assembly'),
(25, 3, 15, 'Android'),
(26, 7, 23, 'Biology'),
(27, 7, 22, 'Math'),
(28, 7, 22, 'English'),
(29, 7, 22, 'Urdu');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
