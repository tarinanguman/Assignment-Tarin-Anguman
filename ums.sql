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
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `name`, `gender`, `designation`, `email`) VALUES
(1, 'Humayan Kabir', 'male', 'Chancellor', 'humk@gmail.com'),
(2, 'Raihan Iqbal', 'male', 'Vice-Chancellor', 'Rah@yahoo.com'),
(3, 'Kamrun Nahar', 'female', 'Pro-Vice Chancellor', 'nahar@yahoo.com'),
(4, 'Shaila Haque', 'female', 'Register', 'shaila@gmail.com'),
(5, 'Mustofa Kamal', 'male', 'Dean', 'kamal@yahoo.com'),
(6, 'Jahangir Alam', 'male', 'Director of Administration', 'jahalam@gmail.com'),
(7, 'Ziasmin Khatun', 'female', 'Director of IT', 'ZK@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `percentage` varchar(5) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `percentage`, `course_id`, `student_id`) VALUES
(1, '70%', 5, 3),
(2, '60%', 3, 3),
(3, '78%', 1, 1),
(4, '30%', 4, 4),
(5, '90%', 4, 5),
(6, '45%', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `credits` enum('2credit','4credit','6credit') DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `credits`, `marks`, `dept_id`, `instructor_id`) VALUES
(1, 'Fine Arts', '2credit', 50, 9, 3),
(2, 'Literature', '4credit', 100, 9, 4),
(3, 'Neurobiochemistry', '4credit', 100, 7, 2),
(4, 'Finance Academic', '6credit', 150, 8, 1),
(5, 'Internatinal Bussiness', '4credit', 100, 8, 5),
(6, 'The English Poets', '2credit', 50, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `founded` date DEFAULT NULL,
  `hod` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `founded`, `hod`) VALUES
(1, 'statistics', '2001-01-03', 'Ahsanul Haque'),
(2, 'Physics', '1998-10-26', 'Nazim al azad'),
(3, 'Chemistry', '2014-10-08', 'Ahmadul Kabir'),
(4, 'Zoology', '1996-10-26', 'Robayet Amin'),
(5, 'English', '1998-10-06', 'Sahida Khatun'),
(6, 'Bangla', '2015-10-27', 'Naima Akter'),
(7, 'Biochemistry', '2015-10-05', 'Halima Khatun'),
(8, 'Economics', '2024-10-09', 'Nilufa Begum'),
(9, 'Law', '2024-10-30', 'Tanzila Akter');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `marks` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `marks`, `dept_id`, `course_id`, `student_id`) VALUES
(1, 'Mid_terms', 10, 1, 3, 4),
(2, 'Year Final', 80, 3, 3, 5),
(3, 'Mid Terms', 20, 5, 6, 2),
(4, 'Year Final', 85, 7, 3, 1),
(5, 'Year Final', 70, 9, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `date_of_birth` varchar(15) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `name`, `email`, `date_of_birth`, `phone`, `address`, `dept_id`) VALUES
(1, 'Rumman Haque', 'rum@gmail.com', '1995-03-17', '01562-32158', 'Sadar Road,Barishal', 5),
(2, 'Zunayed Ahsan', 'ahs@gmail.com', '1998-08-19', '01753-344787', 'RK mission road', 5),
(3, 'Rumki Pall', 'pal@gmail.com', '2000-09-12', '01762-17653', 'Victoria Garden,Tikatuli', 3),
(4, 'Shilpa Roy', 'roy@gmail.com', '1995-02-01', '016532-78634', 'RN Tower,Maniknagar', 1),
(5, 'Rehana Parvin', 'rehna@gmail.com', '2001-03-09', '01763-372864', 'Bels Park,Barishal', 3);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `roll` varchar(10) NOT NULL,
  `phone_no` varchar(30) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `roll`, `phone_no`, `address`, `gender`, `dept_id`) VALUES
(1, 'Tanvir Rahman', '21-stat-00', '013332-32144', 'Nathullabad,Barishal', 'male', 5),
(2, 'Aporna Roy', '22-CHE-016', '0138283-76344', 'Banaripara', 'female', 3),
(3, 'Onoy Khan', '20-ZOO-033', '018323-256321', 'Narayanganj,Dhaka', 'male', 4),
(4, 'Tawfik Rahman', '20-ENG-020', '016323-2176347', 'Rokeya Koloni,Barishal', 'male', 5),
(5, 'Sultana Sadia', '21-PHY-005', '026732-38235', 'College Road,Barishal', 'female', 2),
(6, 'fahmida akter', '21-BAN-016', '0273434-2174587', 'Narayanganj,Dhaka', 'female', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`);

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `exams_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `exams_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
