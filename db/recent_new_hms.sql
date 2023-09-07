-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2023 at 09:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `act_id` int(11) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `avatar` varchar(250) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `act` text NOT NULL,
  `dt` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`act_id`, `icon`, `avatar`, `fullname`, `act`, `dt`) VALUES
(1, '<span class=\"glyphicon glyphicon-tags text-primary\"></span>', '', '', 'Set new room type ', '09-02-2023 8:53 am'),
(2, '<span class=\"glyphicon glyphicon-tags text-primary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Set new room type ', '09-02-2023 8:59 am'),
(3, '<span class=\"glyphicon glyphicon-tags text-primary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Set new room type asdfasdf', '09-02-2023 9:06 am'),
(4, '<span class=\"glyphicon glyphicon-log-in text-warning\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Added new room 1stt 1stt', '09-02-2023 9:09 am'),
(5, '<span class=\"glyphicon glyphicon-bed text-success\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Added new room 1stt 1stt', '09-02-2023 9:14 am'),
(6, '<span class=\"glyphicon glyphicon-tags text-primary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Set new room type asdfasdffff', '09-02-2023 9:16 am'),
(7, '<span class=\"glyphicon glyphicon-log-in text-warning\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-in record of yy  yy  on room 401 4th Floor', '09-02-2023 9:20 am'),
(8, '<span class=\"glyphicon glyphicon-log-out text-danger\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-out of yy  yy  at room 401 4th Floor', '09-02-2023 9:52 am'),
(9, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Updated the room 401 4th Floor to room status of vacant ready', '09-02-2023 10:03 am'),
(10, '<span class=\"glyphicon glyphicon-log-in text-warning\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-in record of Angelice D Babas  on room 301 3rd Floor', '09-02-2023 10:38 am'),
(11, '<span class=\"glyphicon glyphicon-log-in text-warning\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-in record of Joe Marnie D Babas  on room 401 4th Floor', '09-02-2023 10:41 am'),
(12, '<span class=\"glyphicon glyphicon-log-in text-warning\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-in record of asdf asdf asdf  on room 201 2nd Floor', '09-02-2023 12:13 pm'),
(13, '<span class=\"glyphicon glyphicon-log-in text-warning\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-in record of Jovelyn asdf asdf  on room 234344 1stt', '09-02-2023 12:36 pm'),
(14, '<span class=\"glyphicon glyphicon-log-out text-danger\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-out of asdf asdf asdf  at room 201 2nd Floor', '09-02-2023 12:59 pm'),
(15, '<span class=\"glyphicon glyphicon-log-out text-danger\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-out of Angelice D Babas  at room 301 3rd Floor', '09-02-2023 1:00 pm'),
(16, '<span class=\"glyphicon glyphicon-log-out text-danger\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-out of Joe Marnie D Babas  at room 401 4th Floor', '09-02-2023 1:00 pm'),
(17, '<span class=\"glyphicon glyphicon-log-out text-danger\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-out of Jovelyn asdf asdf  at room 234344 1stt', '09-02-2023 1:00 pm'),
(18, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Updated the room 201 2nd Floor to room status of vacant ready', '09-02-2023 1:00 pm'),
(19, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Updated the room 301 3rd Floor to room status of vacant ready', '09-02-2023 1:00 pm'),
(20, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Updated the room 401 4th Floor to room status of vacant ready', '09-02-2023 1:00 pm'),
(21, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Updated the room 234344 1stt to room status of vacant ready', '09-02-2023 1:00 pm'),
(22, '<span class=\"glyphicon glyphicon-log-in text-warning\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-in record of Jovelyn D Aquilo  on room 202 2nd Floor', '09-02-2023 1:03 pm'),
(23, '<span class=\"glyphicon glyphicon-log-in text-warning\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-in record of Joe Marnie D Babas  on room 201 2nd Floor', '09-02-2023 1:04 pm'),
(24, '<span class=\"glyphicon glyphicon-log-in text-warning\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-in record of asdf asdf asdf  on room 301 3rd Floor', '09-02-2023 1:06 pm'),
(25, '<span class=\"glyphicon glyphicon-ban-circle text-secondary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Updated the room 401 4th Floor to room status of restricted', '09-03-2023 1:34 pm'),
(26, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Updated the room 401 4th Floor to room status of vacant ready', '09-03-2023 1:34 pm'),
(27, '<span class=\"glyphicon glyphicon-ban-circle text-secondary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Updated the room 234344 1stt to room status of restricted', '09-03-2023 7:10 pm'),
(28, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Updated the room 234344 1stt to room status of vacant ready', '09-03-2023 7:10 pm'),
(29, '<span class=\"glyphicon glyphicon-log-out text-danger\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-out of Joe Marnie D Babas  at room 201 2nd Floor', '09-03-2023 7:17 pm'),
(30, '<span class=\"glyphicon glyphicon-log-out text-danger\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-out of asdf asdf asdf  at room 301 3rd Floor', '09-03-2023 7:18 pm'),
(31, '<span class=\"glyphicon glyphicon-log-out text-danger\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-out of Jovelyn D Aquilo  at room 202 2nd Floor', '09-03-2023 7:18 pm'),
(32, '<span class=\"glyphicon glyphicon-edit text-primary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Edit the room type 1stt to 3th Floor', '09-03-2023 8:59 pm'),
(33, '<span class=\"glyphicon glyphicon-edit text-primary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Edit the room type 3th Floor to 13th Floor', '09-03-2023 9:00 pm'),
(34, '<span class=\"glyphicon glyphicon-edit text-primary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Edit the room type 2nd Floor to 2nd Floor', '09-05-2023 7:59 am'),
(35, '<span class=\"glyphicon glyphicon-edit text-primary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Edit the room type 4th Floor to Fourth Floor', '09-05-2023 9:09 am'),
(36, '<span class=\"glyphicon glyphicon-edit text-primary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Edit the room type Fourth Floor to 4th Floor', '09-05-2023 9:09 am'),
(37, '<span class=\"glyphicon glyphicon-edit text-primary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Edit the room info from  202 to 222 and price of 222 from 1000', '09-05-2023 9:16 am'),
(38, '<span class=\"glyphicon glyphicon-edit text-primary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Edit the room info from  222 to 202 and price of 1000 from 222', '09-05-2023 9:17 am'),
(39, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Updated the room 201 2nd Floor to room status of vacant ready', '09-05-2023 9:19 am'),
(40, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Updated the room 202 2nd Floor to room status of vacant ready', '09-05-2023 9:19 am'),
(41, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Updated the room 301 3rd Floor to room status of vacant ready', '09-05-2023 9:19 am'),
(42, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Updated the room 201 2nd Floor to room status of vacant ready', '09-05-2023 9:20 am'),
(43, '<span class=\"glyphicon glyphicon-edit text-primary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Edit the room type 7th Floor to 00th Floor', '09-05-2023 9:21 am'),
(44, '<span class=\"glyphicon glyphicon-edit text-primary\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Edit the room type 00th Floor to 7th Floor', '09-05-2023 9:21 am'),
(45, '<span class=\"glyphicon glyphicon-log-in text-warning\"></span>', 'avatar.png', 'Jestoni De ocampo Babas', 'Processed the checked-in record of qwer qwer asdf  on room 301 3rd Floor', '09-05-2023 9:22 am'),
(46, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', '6d1d935d048864eba8d68d33c698803e.jpg', 'Jestoni De ocampo Babas', 'Updated the room 201 2nd Floor to room status of vacant ready', '09-05-2023 9:49 am'),
(47, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Updated the room 201 2nd Floor to room status of vacant ready', '09-05-2023 10:04 am'),
(48, '<span class=\"glyphicon glyphicon-plus-sign text-primary\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Added new user account Jestoni De ocampo Babas', '09-07-2023 1:57 pm'),
(49, '<span class=\"glyphicon glyphicon-plus-sign text-primary\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Added new user account Jestoni De ocampo Babas', '09-07-2023 2:08 pm'),
(50, '<span class=\"glyphicon glyphicon-refresh text-danger\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Reset the user adsfasdfasdf', '09-07-2023 2:23 pm'),
(51, '<span class=\"glyphicon glyphicon-refresh text-danger\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Reset the user asdfasdf', '09-07-2023 2:24 pm'),
(52, '<span class=\"glyphicon glyphicon-refresh text-danger\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Reset the user asdfasdf', '09-07-2023 2:25 pm'),
(53, '<span class=\"glyphicon glyphicon-refresh text-danger\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Reset the user adsfasdfasdf', '09-07-2023 2:25 pm'),
(54, '<span class=\"glyphicon glyphicon-edit text-primary\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Edit the room type 2nd Floor to 2nd Floor', '09-07-2023 2:25 pm'),
(55, '<span class=\"glyphicon glyphicon-edit text-primary\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Edit the room info from  201 to 201 and price of 1000 from 1000', '09-07-2023 2:25 pm'),
(56, '<span class=\"glyphicon glyphicon-edit text-primary\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Edit the room info from  202 to 202 and price of 1000 from 1000', '09-07-2023 2:25 pm'),
(57, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Updated the room 201 2nd Floor to room status of vacant ready', '09-07-2023 2:25 pm'),
(58, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Updated the room 201 2nd Floor to room status of vacant ready', '09-07-2023 2:26 pm'),
(59, '<span class=\"glyphicon glyphicon-edit text-primary\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Edit the room type 5th Floor to 5th Floor', '09-07-2023 2:26 pm'),
(60, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Updated the room 202 2nd Floor to room status of vacant ready', '09-07-2023 2:27 pm'),
(61, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Updated the room 401 4th Floor to room status of vacant ready', '09-07-2023 2:27 pm'),
(62, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Updated the room 234344 13th Floor to room status of vacant ready', '09-07-2023 2:27 pm'),
(63, '<span class=\"glyphicon glyphicon-ok text-success\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Updated the room 201 2nd Floor to room status of vacant ready', '09-07-2023 2:28 pm'),
(64, '<span class=\"glyphicon glyphicon-log-in text-warning\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Processed the checked-in record of asd asdf asdf  on room 201 2nd Floor', '09-07-2023 3:20 pm'),
(65, '<span class=\"glyphicon glyphicon-log-in text-warning\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Processed the checked-in record of ad fdasf af  on room 202 2nd Floor', '09-07-2023 3:20 pm'),
(66, '<span class=\"glyphicon glyphicon-log-out text-danger\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Processed the checked-out of asd asdf asdf  at room 201 2nd Floor', '09-07-2023 3:20 pm'),
(67, '<span class=\"glyphicon glyphicon-log-out text-danger\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Processed the checked-out of qwer qwer asdf  at room 301 3rd Floor', '09-07-2023 3:21 pm'),
(68, '<span class=\"glyphicon glyphicon-log-out text-danger\"></span>', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'Jestoni De ocampo Babas', 'Processed the checked-out of ad fdasf af  at room 202 2nd Floor', '09-07-2023 3:21 pm');

-- --------------------------------------------------------

--
-- Table structure for table `check_in`
--

CREATE TABLE `check_in` (
  `in_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `xname` varchar(20) NOT NULL,
  `address` varchar(60) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pax_no` varchar(20) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `room_no` varchar(40) NOT NULL,
  `room_price` varchar(20) NOT NULL,
  `num_stay` varchar(10) NOT NULL,
  `to_pay` varchar(20) NOT NULL,
  `amount_given` varchar(20) NOT NULL,
  `stay_counter` varchar(10) NOT NULL,
  `in_by` varchar(70) NOT NULL,
  `in_date` varchar(30) NOT NULL,
  `in_time` varchar(20) NOT NULL,
  `xpected_out` varchar(25) NOT NULL,
  `last_date_counter` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `check_out`
--

CREATE TABLE `check_out` (
  `out_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `xname` varchar(20) NOT NULL,
  `address` varchar(60) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pax_no` varchar(20) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `room_no` varchar(40) NOT NULL,
  `room_price` varchar(20) NOT NULL,
  `num_stay` varchar(10) NOT NULL,
  `to_pay` varchar(20) NOT NULL,
  `amount_given` varchar(20) NOT NULL,
  `stay_counter` varchar(10) NOT NULL,
  `in_by` varchar(70) NOT NULL,
  `in_date` varchar(30) NOT NULL,
  `in_time` varchar(20) NOT NULL,
  `xpected_out` varchar(25) NOT NULL,
  `out_by` varchar(70) NOT NULL,
  `out_date` varchar(25) NOT NULL,
  `out_time` varchar(25) NOT NULL,
  `total_paid` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `check_out`
--

INSERT INTO `check_out` (`out_id`, `fname`, `mname`, `lname`, `xname`, `address`, `nationality`, `contact_no`, `email`, `pax_no`, `room_type`, `room_no`, `room_price`, `num_stay`, `to_pay`, `amount_given`, `stay_counter`, `in_by`, `in_date`, `in_time`, `xpected_out`, `out_by`, `out_date`, `out_time`, `total_paid`, `status`) VALUES
(9, 'asd', 'asdf', 'asdf', '', 'asdf', 'filipino', '', '', '1', '2nd Floor', '201', '1000', '2', '2000', '2000', '0', 'Jestoni De ocampo Babas', '09-07-2023', '3:20 pm', '2023-09-09', 'Jestoni De ocampo Babas', '09-07-2023', '3:20 pm', '0', 'paid'),
(10, 'qwer', 'qwer', 'asdf', '', 'asdfasdf', 'filipino', '', '', '1', '3rd Floor', '301', '1200', '3', '3600', '3600', '3', 'Jestoni De ocampo Babas', '09-05-2023', '9:22 am', '2023-09-08', 'Jestoni De ocampo Babas', '09-07-2023', '3:21 pm', '0', 'paid'),
(11, 'ad', 'fdasf', 'af', '', 'adfasdf', 'filipino', '', '', '2', '2nd Floor', '202', '1000', '21', '21000', '20000', '0', 'Jestoni De ocampo Babas', '09-07-2023', '3:20 pm', '2023-09-28', 'Jestoni De ocampo Babas', '09-07-2023', '3:21 pm', '1000', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `room_no` varchar(30) NOT NULL,
  `room_price` varchar(20) NOT NULL,
  `room_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_type`, `room_no`, `room_price`, `room_status`) VALUES
(1, '2nd Floor', '201', '1000', 'to clean'),
(2, '2nd Floor', '202', '1000', 'to clean'),
(3, '3rd Floor', '301', '1200', 'to clean'),
(4, '4th Floor', '401', '1500', 'vacant ready'),
(5, '13th Floor', '324', '23434', 'vacant ready'),
(6, '13th Floor', '234344', '324324', 'vacant ready');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(11) NOT NULL,
  `room_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `room_type`) VALUES
(1, '2nd Floor'),
(2, '3rd Floor'),
(3, '4th Floor'),
(4, '5th Floor'),
(5, '6th Floor'),
(6, '7th Floor'),
(7, '8th Floor'),
(8, '9th Floor'),
(9, '10th Floor'),
(10, '11th Floor'),
(11, '12th Floor'),
(12, '1st Floor'),
(13, '13th Floor'),
(14, 'asdfasdf'),
(15, 'asdfasdffff');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `pwd` varchar(250) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `utype` varchar(20) NOT NULL,
  `dtc` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `theme` varchar(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fullname`, `email`, `pwd`, `avatar`, `utype`, `dtc`, `theme`, `status`) VALUES
(6, 'Jestoni De ocampo Babas', 'admin@gmail.com', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', 'be8e0051bba69086effbf5f12b547fc2.jpg', 'admin', '2023-09-07 07:01:09', 'dark', 1),
(7, 'adsfasdfasdf', 'a@gmail.com', 'b14361404c078ffd549c03db443c3fede2f3e534d73f78f77301ed97d4a436a9fd9db05ee8b325c0ad36438b43fec8510c204fc1c1edb21d0941c00e9e2c1ce2', 'avatar.png', 'user', '2023-09-07 05:57:04', 'light', 0),
(8, 'asdfasdf', 'popoyjardiel@yahoo.com', 'b14361404c078ffd549c03db443c3fede2f3e534d73f78f77301ed97d4a436a9fd9db05ee8b325c0ad36438b43fec8510c204fc1c1edb21d0941c00e9e2c1ce2', 'avatar.png', 'user', '2023-09-07 06:08:16', 'light', 0);

-- --------------------------------------------------------

--
-- Table structure for table `webname`
--

CREATE TABLE `webname` (
  `id` int(11) NOT NULL,
  `webname` varchar(200) NOT NULL,
  `logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `webname`
--

INSERT INTO `webname` (`id`, `webname`, `logo`) VALUES
(5, 'Hotel Management System', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`act_id`);

--
-- Indexes for table `check_in`
--
ALTER TABLE `check_in`
  ADD PRIMARY KEY (`in_id`);

--
-- Indexes for table `check_out`
--
ALTER TABLE `check_out`
  ADD PRIMARY KEY (`out_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `webname`
--
ALTER TABLE `webname`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `act_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `check_in`
--
ALTER TABLE `check_in`
  MODIFY `in_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `check_out`
--
ALTER TABLE `check_out`
  MODIFY `out_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `webname`
--
ALTER TABLE `webname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
