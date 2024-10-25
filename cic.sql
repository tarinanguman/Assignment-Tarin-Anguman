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
-- Database: `cic`
--

-- --------------------------------------------------------

--
-- Table structure for table `accidents`
--

CREATE TABLE `accidents` (
  `id` int(11) NOT NULL,
  `location` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accidents`
--

INSERT INTO `accidents` (`id`, `location`, `date`, `car_id`, `customer_id`) VALUES
(1, 'Dhaka-Chattogram Highway', '2023-09-03', 2, 5),
(2, 'N2 Dhaka-Sylhet Highway', '2022-10-27', 2, 3),
(3, 'N8 Dhaka-Khulna Highway', '2022-10-15', 4, 1),
(4, 'Kanchpur Bridge', '2020-08-27', 1, 4),
(5, 'Airport Road (Barishal)', '2023-12-21', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `model` varchar(30) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `trim_level` varchar(30) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `top_level` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `model`, `color`, `trim_level`, `year`, `top_level`) VALUES
(1, 'Toyota Camry', 'black', 'LE', 2023, 'XSE(sporty toptrim)'),
(2, 'Honda Civic', 'Blue', 'LX', 2022, 'Touring(primium features'),
(3, 'Ford Mustang', 'Red', 'EcoBoost', 2024, 'Shelby GT500'),
(4, 'Tesla Model 3', 'Pearl White', 'Long Range', 2021, 'Best Acceleration and Handling'),
(5, 'BMW 3 Series', 'Black Sapphire', '330i', 2022, 'M340i(sporty & Luxurious)');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone_no` varchar(30) NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `phone_no`, `purchase_date`, `car_id`) VALUES
(1, 'Mahmudul Haque', 'Rupganj,Dhaka', '016236-76434', '2023-07-08', 4),
(2, 'Fahmida akter', 'Jailgate,Barishal', '01632-265434', '2024-10-08', 1),
(3, 'Parvin Khanam', 'BN Tower,Dhaka', '016324-32564', '2024-10-06', 4),
(4, 'Sultana Sadia', 'College Road,Barishal', '045254-5456', '2024-10-23', 2),
(5, 'Rehana Parvin', 'RK mission road,Dhaka', '026323-21534', '2021-10-03', 5);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_policy`
--

CREATE TABLE `insurance_policy` (
  `id` int(11) NOT NULL,
  `policy_type` varchar(30) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insurance_policy`
--

INSERT INTO `insurance_policy` (`id`, `policy_type`, `start_date`, `end_date`, `car_id`) VALUES
(1, 'Liability Coverage', '2017-01-03', '2024-04-23', 3),
(2, 'Collision Coverage', '2015-10-05', '2021-10-14', 2),
(3, 'Comprehensive Coverage', '2017-10-13', '2022-10-15', 3),
(4, 'Personal Injury Protection', '2022-10-29', '2024-10-26', 5),
(5, 'Gap insurance', '2021-10-13', '2023-10-21', 1),
(6, 'Medical Payments Coverage', '2004-10-07', '2024-10-18', 4);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `amount` varchar(30) DEFAULT NULL,
  `payment_method` varchar(30) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `payment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `payment_method`, `due_date`, `payment_date`) VALUES
(1, 'Credit Card', '$500', '2023-03-12', '2023-04-01'),
(2, '$250', 'Debit Card', '2021-08-04', '2022-10-22'),
(3, '$1,200', 'Bank Transfer', '2024-06-12', '2024-10-25'),
(4, '$100', 'Online Payment Portal', '2019-10-19', '2024-10-20'),
(5, '$600', 'Mobile Payment App', '2020-05-09', '2022-10-03'),
(6, '$750', 'Check', '2021-10-14', '2024-10-26'),
(7, '$300', 'Cash', '2022-10-29', '2023-12-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accidents`
--
ALTER TABLE `accidents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `insurance_policy`
--
ALTER TABLE `insurance_policy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accidents`
--
ALTER TABLE `accidents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `insurance_policy`
--
ALTER TABLE `insurance_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accidents`
--
ALTER TABLE `accidents`
  ADD CONSTRAINT `accidents_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `accidents_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`);

--
-- Constraints for table `insurance_policy`
--
ALTER TABLE `insurance_policy`
  ADD CONSTRAINT `insurance_policy_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
