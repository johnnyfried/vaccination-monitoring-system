-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 02:19 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaccination_monitoring`
--

-- --------------------------------------------------------

--
-- Table structure for table `members_tbl`
--

CREATE TABLE `members_tbl` (
  `member_id` int(10) NOT NULL,
  `fname` text NOT NULL,
  `mname` text NOT NULL,
  `lname` text NOT NULL,
  `age` text NOT NULL,
  `dob` text NOT NULL,
  `purok` text NOT NULL,
  `address` text NOT NULL,
  `contact_number` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `profile_image` text NOT NULL,
  `account_created` text NOT NULL,
  `vaccine_status` int(1) NOT NULL,
  `vaccine_id` int(5) NOT NULL,
  `encoded_by` int(10) NOT NULL,
  `account_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members_tbl`
--

INSERT INTO `members_tbl` (`member_id`, `fname`, `mname`, `lname`, `age`, `dob`, `purok`, `address`, `contact_number`, `username`, `password`, `profile_image`, `account_created`, `vaccine_status`, `vaccine_id`, `encoded_by`, `account_status`) VALUES
(1, 'Rodens', 'Balboas', 'Pelegrinos', '4', '2022-06-01', 'Purok 1s', 'Balasans', '09308242901', '', '', '', '', 2, 1, 0, 1),
(2, 'Juan', 'Dela', 'Cruz', '12', '2016-02-18', 'Purok 1', 'Balasan', '09087734692', '', '', '', '2022-06-17', 2, 1, 0, 1),
(3, 'Nonoy', 'Nonoy', 'Nonoy', '1', '2022-05-09', 'Purok 1', 'Balasan Iloilo', '09308242900', 'nonoy', 'nonoy', '', '2022-06-28', 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_tbl`
--

CREATE TABLE `sms_tbl` (
  `sms_id` int(15) NOT NULL,
  `member_id` text NOT NULL,
  `contact_number` text NOT NULL,
  `full_name` text NOT NULL,
  `sms_content` text NOT NULL,
  `send_by` int(10) NOT NULL,
  `sms_type` int(1) NOT NULL,
  `next_visit_date` text NOT NULL,
  `next_visit_notif_date` text NOT NULL,
  `date_sent` text NOT NULL,
  `sms_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_tbl`
--

INSERT INTO `sms_tbl` (`sms_id`, `member_id`, `contact_number`, `full_name`, `sms_content`, `send_by`, `sms_type`, `next_visit_date`, `next_visit_notif_date`, `date_sent`, `sms_status`) VALUES
(1, '1', '09308242900', 'Roden Pelegrino', 'Good day Roden Pelegrino, Your next visit for vaccination will be on June 20, 2022. Thank you.', 1, 1, '2022-06-20', '2022-06-17', 'Sent', 0),
(3, '', '09635632563', '', 'Your verification code is 317884', 0, 4, '', '', 'Sent', 0),
(4, '', '09635632563', '', 'Your verification code is 874226', 0, 4, '', '', 'Sent', 0),
(5, '', '09635632563', '', 'Your verification code is 598373', 0, 4, '', '', 'Sent', 0),
(6, '', '09635632563', '', 'Your verification code is 136109', 0, 4, '', '', 'Sent', 0),
(7, '2', '09087734692', 'Juan Cruz', 'Good day Juan Cruz, Your next visit for vaccination will be on June 27, 2022. Thank you.', 1, 1, '2022-06-27', '2022-06-24', 'Sent', 0),
(8, '2', '09087734692', 'Juan Cruz', 'Good day Juan Cruz, Your next visit for vaccination will be on June 30, 2022. Thank you.', 1, 1, '2022-06-30', '2022-06-27', 'Sent', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `user_id` int(10) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `contact_number` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `profile_image` text NOT NULL,
  `date_created` text NOT NULL,
  `user_type` int(1) NOT NULL,
  `user_date_created` text NOT NULL,
  `verification_code` text NOT NULL,
  `account_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`user_id`, `fname`, `lname`, `contact_number`, `username`, `password`, `profile_image`, `date_created`, `user_type`, `user_date_created`, `verification_code`, `account_status`) VALUES
(1, 'Roden', 'Pelegrino', '09635632563', 'admin', 'asd', '', '', 1, '', '136109', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vaccinations_logs_tbl`
--

CREATE TABLE `vaccinations_logs_tbl` (
  `vaccination_log_id` int(10) NOT NULL,
  `member_id` int(10) NOT NULL,
  `vaccine_id` int(10) NOT NULL,
  `vaccination_status` int(10) NOT NULL,
  `vaccination_date` text NOT NULL,
  `vaccination_time` text NOT NULL,
  `next_vaccination_visit` text NOT NULL,
  `vaccination_log_date_created` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaccinations_logs_tbl`
--

INSERT INTO `vaccinations_logs_tbl` (`vaccination_log_id`, `member_id`, `vaccine_id`, `vaccination_status`, `vaccination_date`, `vaccination_time`, `next_vaccination_visit`, `vaccination_log_date_created`) VALUES
(1, 1, 1, 2, '2022-06-16', '21:37', '2022-06-20', '2022-06-16'),
(2, 1, 1, 3, '2022-06-18', '21:37', '2022-06-20', '2022-06-16'),
(3, 2, 1, 2, '2022-06-01', '15:24', '2022-06-27', '2022-06-17'),
(4, 2, 1, 3, '2022-06-25', '15:26', '2022-06-30', '2022-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `vaccines_tbl`
--

CREATE TABLE `vaccines_tbl` (
  `vaccine_id` int(10) NOT NULL,
  `vaccine_name` text NOT NULL,
  `number_of_dose` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaccines_tbl`
--

INSERT INTO `vaccines_tbl` (`vaccine_id`, `vaccine_name`, `number_of_dose`) VALUES
(1, 'Pfizer', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members_tbl`
--
ALTER TABLE `members_tbl`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `sms_tbl`
--
ALTER TABLE `sms_tbl`
  ADD PRIMARY KEY (`sms_id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vaccinations_logs_tbl`
--
ALTER TABLE `vaccinations_logs_tbl`
  ADD PRIMARY KEY (`vaccination_log_id`);

--
-- Indexes for table `vaccines_tbl`
--
ALTER TABLE `vaccines_tbl`
  ADD PRIMARY KEY (`vaccine_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members_tbl`
--
ALTER TABLE `members_tbl`
  MODIFY `member_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms_tbl`
--
ALTER TABLE `sms_tbl`
  MODIFY `sms_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vaccinations_logs_tbl`
--
ALTER TABLE `vaccinations_logs_tbl`
  MODIFY `vaccination_log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vaccines_tbl`
--
ALTER TABLE `vaccines_tbl`
  MODIFY `vaccine_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
