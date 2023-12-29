-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 07:38 AM
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
-- Database: `apz_shop_client`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` int(100) NOT NULL,
  `birthday` date NOT NULL,
  `address_1` int(11) DEFAULT NULL,
  `address_2` int(11) DEFAULT NULL,
  `access` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `first_name`, `last_name`, `email`, `password`, `gender`, `age`, `birthday`, `address_1`, `address_2`, `access`) VALUES
(139, 'Yuson', 'Ngarangad', 'evansevson@gmail.com', 'qweqwe', 'Female', 123, '2023-12-08', NULL, NULL, 'user'),
(140, 'EVESON', 'NANGARADAN', 'mamuru@gmail.com', 'qweqwe', 'Male', 12, '2023-12-16', NULL, NULL, 'user'),
(141, 'EVESON', 'NANGARADAN', 'mahalkita@gmail.com', 'qwe', 'Male', 12, '2023-12-18', NULL, NULL, 'user'),
(142, 'EVESON', 'NANGARADAN', 'evansevson111@gmail.com', 'qwe', 'Prefer not to say', 12, '2023-12-18', NULL, NULL, 'user'),
(143, 'Yuson', 'Ngarangad', 'evansevson12@gmail.com', '123', 'Male', 12, '2023-12-18', NULL, NULL, 'user'),
(144, 'EVESON', 'NANGARADAN', 'evansevson11@gmail.com', 'qweqwe', 'Prefer not to say', 12, '2023-12-18', NULL, NULL, 'user'),
(145, 'Yuson', 'Ngarangad', 'evansevson22@gmail.com', 'qwe', 'Male', 12, '2023-12-18', NULL, NULL, 'user'),
(146, 'Yuson', 'Ngarangad', 'evansevson11111@gmail.com', 'qweqwe', 'Male', 123, '2023-12-19', NULL, NULL, 'user'),
(147, 'Yuson', 'Ngarangad', 'evansevson33333333@gmail.com', 'qweqwe', 'Male', 123, '2023-12-19', NULL, NULL, 'user'),
(148, 'Yuson', 'Ngarangad', 'evansevson3333333@gmail.com', 'qweqwe', 'Prefer not to say', 123, '2023-12-19', NULL, NULL, 'user'),
(149, 'qweqwe', 'qweeeewqeqwe', 'eqweqweqweeqwe', 'qweqwe123wqe', 'qeqwe', 12, '0000-00-00', 1213, 123, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_address`
--

CREATE TABLE `buyer_address` (
  `id` int(11) NOT NULL,
  `buyer_ID` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buyer_cart`
--

CREATE TABLE `buyer_cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_picture` blob NOT NULL,
  `variation` varchar(255) NOT NULL,
  `quantity` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buyer_order`
--

CREATE TABLE `buyer_order` (
  `oredr_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `order date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `orderHistory_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`status_id`, `status_name`) VALUES
(1, 'pending'),
(2, 'shipped'),
(3, 'delivered'),
(4, 'cancel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_address`
--
ALTER TABLE `buyer_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_cart`
--
ALTER TABLE `buyer_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_order`
--
ALTER TABLE `buyer_order`
  ADD PRIMARY KEY (`oredr_id`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`orderHistory_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `buyer_address`
--
ALTER TABLE `buyer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buyer_cart`
--
ALTER TABLE `buyer_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buyer_order`
--
ALTER TABLE `buyer_order`
  MODIFY `oredr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `orderHistory_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
