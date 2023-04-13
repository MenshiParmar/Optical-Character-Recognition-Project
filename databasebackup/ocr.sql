-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2019 at 02:43 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocr`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(10) NOT NULL,
  `a_name` varchar(255) NOT NULL,
  `a_email_id` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `document master`
--

CREATE TABLE `document master` (
  `doc_m_id` int(10) NOT NULL,
  `doc_type` varchar(50) NOT NULL,
  `doc_name` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permission master`
--

CREATE TABLE `permission master` (
  `p_m_id` int(10) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `training master`
--

CREATE TABLE `training master` (
  `t_m_id` int(10) NOT NULL,
  `t_type` varchar(20) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(10) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_contact_no` varchar(255) NOT NULL,
  `u_email_id` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `u_contact_no`, `u_email_id`, `created_date`, `updated_date`, `password`) VALUES
(1, 'mansi dodiya', '4668113691', 'akash.padhiyar@gmail.com', '2019-01-28 10:02:22', NULL, '202cb962ac59075b964b07152d234b70'),
(2, 'menshi', '786867687676', 'mansi@gmail.com', '2019-02-06 11:01:24', NULL, '67aab852f8bb0fc8fd7d11e5bd3f1ec1'),
(3, 'PiyushS', '2456688653', 'piyushs@200oksolutions.com', '2019-02-12 06:20:52', NULL, '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'PiyushS', '2456688653', 'piyushs@200oksolutions.com', '2019-02-12 06:21:00', NULL, '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'yagni kadia', '628836298', 'yvk3107@gmail.com', '2019-02-12 07:25:51', NULL, 'ffd262c49419271c3409f21159737d04'),
(6, 'yagni kadia', '628836298', 'yvk3107@gmail.com', '2019-02-12 07:27:57', NULL, '827ccb0eea8a706c4c34a16891f84e7b'),
(7, 'khushi', '9467638923', 'kush12@gmail.com', '2019-02-26 06:50:46', NULL, 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `user export file`
--

CREATE TABLE `user export file` (
  `exp_id` int(10) NOT NULL,
  `u_id` int(10) NOT NULL,
  `a_id` int(10) NOT NULL,
  `exp_name` varchar(255) NOT NULL,
  `exp_type` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user permission`
--

CREATE TABLE `user permission` (
  `u_p_id` int(10) NOT NULL,
  `u_id` int(10) NOT NULL,
  `p_m_id` int(10) NOT NULL,
  `p_name` int(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user share document`
--

CREATE TABLE `user share document` (
  `doc_id` int(10) NOT NULL,
  `u_id` int(10) NOT NULL,
  `doc_name` varchar(255) NOT NULL,
  `share_type` varchar(30) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user training`
--

CREATE TABLE `user training` (
  `u_t_id` int(10) NOT NULL,
  `u_id` int(10) NOT NULL,
  `t_m_id` int(10) NOT NULL,
  `t_type_id` int(20) NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_document`
--

CREATE TABLE `user_document` (
  `user_doc_id` int(10) NOT NULL,
  `u_id` int(10) NOT NULL,
  `doc_m_id` int(10) NOT NULL,
  `doc_name` varchar(255) NOT NULL,
  `upload_response` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` date DEFAULT NULL,
  `ocr_response` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_document`
--

INSERT INTO `user_document` (`user_doc_id`, `u_id`, `doc_m_id`, `doc_name`, `upload_response`, `created_date`, `updated_date`, `ocr_response`) VALUES
(1, 1, 1, 'output/1555287743.txt', 'aaa.PNG', '2019-04-15 00:22:24', NULL, 'Resource id #6'),
(2, 1, 1, 'output/1555288777.txt', 'aaa.PNG', '2019-04-15 00:39:38', NULL, ''),
(3, 1, 1, 'output/1555288795.txt', '1.jpg', '2019-04-15 00:39:55', NULL, ''),
(4, 1, 1, 'output/1555288841.txt', 'aaa.PNG', '2019-04-15 00:40:41', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `document master`
--
ALTER TABLE `document master`
  ADD PRIMARY KEY (`doc_m_id`);

--
-- Indexes for table `permission master`
--
ALTER TABLE `permission master`
  ADD PRIMARY KEY (`p_m_id`);

--
-- Indexes for table `training master`
--
ALTER TABLE `training master`
  ADD PRIMARY KEY (`t_m_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `user export file`
--
ALTER TABLE `user export file`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `user permission`
--
ALTER TABLE `user permission`
  ADD PRIMARY KEY (`u_p_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `p_m_id` (`p_m_id`);

--
-- Indexes for table `user share document`
--
ALTER TABLE `user share document`
  ADD PRIMARY KEY (`doc_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `user training`
--
ALTER TABLE `user training`
  ADD PRIMARY KEY (`u_t_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `u_id_2` (`u_id`),
  ADD KEY `t_m_id` (`t_m_id`);

--
-- Indexes for table `user_document`
--
ALTER TABLE `user_document`
  ADD PRIMARY KEY (`user_doc_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `doc_m_id` (`doc_m_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document master`
--
ALTER TABLE `document master`
  MODIFY `doc_m_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission master`
--
ALTER TABLE `permission master`
  MODIFY `p_m_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training master`
--
ALTER TABLE `training master`
  MODIFY `t_m_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user export file`
--
ALTER TABLE `user export file`
  MODIFY `exp_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user permission`
--
ALTER TABLE `user permission`
  MODIFY `u_p_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user share document`
--
ALTER TABLE `user share document`
  MODIFY `doc_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user training`
--
ALTER TABLE `user training`
  MODIFY `u_t_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_document`
--
ALTER TABLE `user_document`
  MODIFY `user_doc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
