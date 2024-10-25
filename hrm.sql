-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2024 at 12:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `post_code` varchar(30) DEFAULT NULL,
  `upazilla` varchar(30) DEFAULT NULL,
  `district` varchar(30) DEFAULT NULL,
  `division` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `employee_id`, `post_code`, `upazilla`, `district`, `division`) VALUES
(1, 4, 'c-6323', 'barishal sadar', 'barsihal', 'barishal'),
(2, 2, 'd-8234', 'bhola', 'barishal sadar', 'barishal'),
(3, 1, 'h-6733', 'raypasha', 'sirajgonj', 'dhaka'),
(4, 5, 'f-32453', 'norsingdi', 'ahmmedpur', 'comilla'),
(5, 3, 'c-21434', 'kocupara', 'nrayanganj', 'dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact_no` int(15) DEFAULT NULL,
  `locations` varchar(50) DEFAULT NULL,
  `manager_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `contact_no`, `locations`, `manager_id`) VALUES
(1, 'human resource', 125784343, 'gazipur', 2),
(2, 'administration', 164266778, 'muhammadpur', 1),
(3, 'marketing', 18254390, 'narayanganj', 3),
(4, 'organization development', 163763275, 'Comilla', 4),
(5, 'HR operations', 13273542, 'Khulna', 3),
(6, 'Employee Relations', 17827634, 'Sylhet', 1),
(7, 'L & D Development', 163276434, 'Narayanganj', 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `salary` varchar(50) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `dob`, `gender`, `designation`, `salary`, `joining_date`, `dept_id`) VALUES
(1, 'sadikur rahman', 'sad@gmail.com', '1990-01-03', 'male', 'developer', '567.87tk', '2001-03-21', 4),
(2, 'Rayhan haque', 'rah@gmail.com', '1990-10-24', 'male', 'programmer', '87909.786tk', '2022-10-26', 7),
(3, 'enamul haque', 'ena@yahoo.com', '1995-10-23', 'male', 'front-end designer', '654434.56', '2024-10-16', 4),
(4, 'rehana parvin', 'par@gmail.com', '1997-10-21', 'female', 'manager', '454654.423', '2024-10-25', 3),
(5, 'fahmida akter', 'akter@gmail.com', '1999-10-17', 'female', 'assistant', '4365.32', '2024-10-31', 2);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `promote_date` date DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `name`, `promote_date`, `dept_id`, `address_id`, `phone_id`) VALUES
(1, 'sadikur rahman', '1990-01-03', 1, 3, 2),
(2, 'nayma islam', '2020-10-15', 2, 3, 4),
(3, 'badhon akter', '2018-10-11', 4, 5, 1),
(4, 'sirajul haque', '2021-10-15', 2, 5, 4),
(5, 'sneha roy', '2020-10-16', 3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`id`, `number`, `employee_id`) VALUES
(1, 16873468, 3),
(2, 18273834, 4),
(3, 12324535, 2),
(4, 124354654, 3),
(5, 123243, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `members` int(11) DEFAULT NULL,
  `budget` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `description`, `manager_id`, `start_date`, `end_date`, `members`, `budget`) VALUES
(1, 'employee performance evaluation system', 'involves creating a system that tracks and evaluates employee performance', 1, '2002-01-02', '2022-02-03', 30, '54765.7867758'),
(2, 'recruitment and applicant tracking system', 'focus on designing an automated system to streamline the recruitment process', 3, '2015-10-22', '2023-10-28', 45, '672536.165'),
(3, 'employee on boarding and training portal', 'involves building an online prtal for new employees to complete onboarding task', 5, '2016-10-19', '2024-10-23', 20, '12564356.763'),
(4, 'HR analytic dashboard', 'involves comprehensive hr analytics dashboard ', 4, '2018-10-24', '2024-10-28', 15, '6745637.54'),
(5, 'employee self service portal', 'create a self service portal where employees can access their personal information', 2, '2019-10-31', '2024-11-28', 50, '65485563.675');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_no` (`contact_no`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `manager_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
