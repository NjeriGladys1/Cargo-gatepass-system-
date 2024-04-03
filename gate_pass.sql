-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 06:16 PM
-- Server version: 10.5.12-MariaDB-1
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clady`
--

-- --------------------------------------------------------

--
-- Table structure for table `gatepassform`
--

CREATE TABLE `gatepassform` (
  `person_name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `submitted_by` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `submitted_role` varchar(255) NOT NULL,
  `passport` varchar(255) NOT NULL,
  `gate` varchar(255) NOT NULL,
  `request_for` varchar(255) NOT NULL,
  `vehicle_no` varchar(255) NOT NULL,
  `entry_purpose` varchar(1000) NOT NULL,
  `entry_type` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `expected_entry_date` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `vessel_name` varchar(255) NOT NULL,
  `submitted_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `issued_time` varchar(255) NOT NULL DEFAULT '0',
  `receiver` varchar(50) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gatepassform`
--

INSERT INTO `gatepassform` (`person_name`, `id`, `submitted_by`, `user_id`, `submitted_role`, `passport`, `gate`, `request_for`, `vehicle_no`, `entry_purpose`, `entry_type`, `company_name`, `expected_entry_date`, `mobile_no`, `vessel_name`, `submitted_time`, `issued_time`, `receiver`, `status`) VALUES
('kip', 1, 'Oriel', '8', '1', '3456', '1', 'Entry', '765', 'Technical', '2', 'Kabu', '2024-02-06', '0789674653', 'Iphone', '2024-02-04 20:50:11', '2024:02:04 21:50:11', '7', 'approved'),
('Jack Max', 2, 'Jack', '1', '2', '245367', '1', 'Entry', '7648H', 'Deal with IT department', '2', 'Imax', '2024-02-07', '0745378474', 'laptop', '2024-02-12 22:38:05', '0', '6', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `gatepassformhistory`
--

CREATE TABLE `gatepassformhistory` (
  `person_name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `submitted_by` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `submitted_role` varchar(255) NOT NULL,
  `passport` varchar(255) NOT NULL,
  `gate` varchar(255) NOT NULL,
  `request_for` varchar(255) NOT NULL,
  `vehicle_no` varchar(255) NOT NULL,
  `entry_purpose` varchar(1000) NOT NULL,
  `entry_type` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `expected_entry_date` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `vessel_name` varchar(255) NOT NULL,
  `submitted_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `issued_time` varchar(255) NOT NULL DEFAULT '0',
  `receiver` varchar(50) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gatepassformhistory`
--

INSERT INTO `gatepassformhistory` (`person_name`, `id`, `submitted_by`, `user_id`, `submitted_role`, `passport`, `gate`, `request_for`, `vehicle_no`, `entry_purpose`, `entry_type`, `company_name`, `expected_entry_date`, `mobile_no`, `vessel_name`, `submitted_time`, `issued_time`, `receiver`, `status`) VALUES
('kip', 1, 'Oriel', '8', '1', '3456', '1', 'Entry', '765', 'Technical', '2', 'Kabu', '2024-02-06', '0789674653', 'Iphone', '2024-02-04 20:48:48', '2024:02:04 21:47:58', '4', 'Progress'),
('kip', 2, 'Oriel', '8', '1', '3456', '1', 'Entry', '765', 'Technical', '2', 'Kabu', '2024-02-06', '0789674653', 'Iphone', '2024-02-04 20:49:05', '2024:02:04 21:49:05', '5', 'Progress'),
('kip', 3, 'Oriel', '8', '1', '3456', '1', 'Entry', '765', 'Technical', '2', 'Kabu', '2024-02-06', '0789674653', 'Iphone', '2024-02-04 20:49:44', '2024:02:04 21:49:44', '6', 'Progress');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `disabled` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission`, `disabled`) VALUES
(1, 1, 'view_dashbord', 0),
(2, 1, 'post_request', 0),
(3, 7, 'view_dashbord', 0),
(4, 7, 'post_request', 0),
(5, 7, 'view_requests', 0),
(6, 6, 'view_dashbord', 0),
(7, 6, 'post_request', 0),
(8, 6, 'view_requests', 0),
(9, 5, 'view_dashbord', 0),
(10, 5, 'post_request', 0),
(11, 5, 'view_requests', 0),
(12, 4, 'view_dashbord', 0),
(13, 4, 'post_request', 0),
(14, 4, 'view_requests', 0),
(15, 7, 'view_user', 1),
(16, 7, 'delete_user', 1),
(17, 7, 'edit_user', 1),
(18, 7, 'view_roles', 1),
(19, 7, 'view_users', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(40) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `disabled`) VALUES
(1, 'user', 0),
(2, 'admin', 0),
(4, 'Documentation officer', 0),
(5, 'terminal officer', 0),
(6, 'manager', 0),
(7, 'Security guard', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(1) NOT NULL DEFAULT 0,
  `password` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date` timestamp(6) NULL DEFAULT NULL,
  `about` varchar(225) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `image`, `date`, `about`, `lastname`, `country`, `address`, `phone`, `slug`, `facebook_link`, `twitter_link`, `instagram_link`) VALUES
(1, 'Jack', 'jack@gmail.com', 2, 'Jack', 'uploads/images/1675916119armchair2.png', '2022-10-03 05:01:58.000000', 'Try and fail , but remember one day everything and i mean everything will be alright ,take it ease', 'Guru', 'Kenya', 'w', '', NULL, '', '', ''),
(2, 'Dennis', 'dennis@gmail.com', 5, 'dennis', NULL, '2022-10-03 05:02:14.000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'John', 'john@gmail.com', 1, 'John', NULL, '2022-10-03 05:23:12.000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Elvis', 'elvis@gmail.com', 4, '1234', NULL, '2023-01-25 12:10:23.000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Linda', 'linda@gmail.com', 2, '1234J', NULL, '2023-01-29 15:47:06.000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Evans', 'evans@gmail.com', 7, '1234', NULL, '2023-02-04 18:44:20.000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Oriel', 'oriel@gmail.com', 1, '1234', NULL, '2023-02-06 17:00:38.000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Bezoes', 'jackmutiso37@gmail.com', 6, 'jack123', NULL, '2024-02-03 20:11:06.000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Gladys', 'kamaugladys@gmail.com', 1, 'G12345', NULL, '2024-02-21 15:04:32.000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gatepassform`
--
ALTER TABLE `gatepassform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gatepassformhistory`
--
ALTER TABLE `gatepassformhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission` (`permission`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `role` (`role`),
  ADD KEY `date` (`date`),
  ADD KEY `phone` (`phone`),
  ADD KEY `address` (`address`),
  ADD KEY `country` (`country`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `about` (`about`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gatepassform`
--
ALTER TABLE `gatepassform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gatepassformhistory`
--
ALTER TABLE `gatepassformhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
