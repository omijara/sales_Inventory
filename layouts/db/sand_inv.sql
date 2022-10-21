-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 07:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sand_inv`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dues` varchar(255) DEFAULT NULL,
  `created_on` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `name`, `mobile`, `address`, `dues`, `created_on`) VALUES
(4, 'মনির হোসেন', '০১৬৭৪৩৫৮৬৭৫', 'দুলার হাট', '২০০০০', '27-Aug-22 10:44 pm'),
(6, 'আবু সুফিয়ান', '০১৭১৬০১৮১৫৩', 'চেয়ারম্যান এর বাজার', '২৫০০০', '27-Aug-22 11:01 pm'),
(11, 'সুবীর নন্দি', '০১৭২৩৪৫৬৭৮০', 'মাজের চর', '64350', '03-Sep-22 12:28 pm'),
(12, 'sazu', '067534305', ' dasdfasdfse', '524905', '29-Sep-22 12:32 pm'),
(13, 'max', '343443', 'sdflksdf', '364376', '29-Sep-22 12:36 pm'),
(14, 'Bryar Jarvis', '52455745', 'Ipsum doloribus off', '4429', '29-Sep-22 03:04 pm'),
(15, '', '', '', '', '29-Sep-22 10:08 pm');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`cat_id`, `cat_name`) VALUES
(1, 'টোক'),
(2, 'সিলেকশন'),
(3, 'লোকাল'),
(11, 'Sushi'),
(12, '20 Pieces');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `product_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`product_id`, `cat_id`, `product_name`, `quantity`, `price`) VALUES
(2, 1, 'চট্টগ্রাম', 1500, 0),
(3, 1, 'এখলাসপুর', 1000, 0),
(4, 2, 'গ্রেড ১', 5000, 0),
(5, 2, 'গ্রেড ২', 4000, 0),
(7, 3, 'লোকাল/বিটি বালি', 10000, 0),
(10, 11, 'California', 10, 0),
(11, 11, 'Addison Mccall', 76, 13),
(12, 1, 'sas', 800, 500),
(13, 1, 'Neve Arnold', 607, 429),
(14, 11, 'Orla Brennan', 875, 243),
(15, 2, 'Ocean Gilliam', 91, 158),
(16, 2, 'Renee Berry', 50, 585),
(17, 11, 'Rhea Wilkerson', 656, 63),
(18, 12, 'Cody Golden', 272, 582),
(19, 3, 'Tamekah Hess', 700, 276),
(20, 3, 'Teagan Saunders', 703, 61);

-- --------------------------------------------------------

--
-- Table structure for table `salse`
--

CREATE TABLE `salse` (
  `id` int(11) NOT NULL,
  `selse_id` bigint(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total` bigint(20) NOT NULL,
  `paid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salse`
--

INSERT INTO `salse` (`id`, `selse_id`, `customer_id`, `total`, `paid`) VALUES
(1, 0, 14, 4340, 0),
(2, 0, 13, 243, 200),
(3, 0, 13, 243, 200),
(4, 0, 13, 243, 200),
(5, 0, 12, 4290, 200),
(6, 0, 12, 4290, 200),
(7, 0, 12, 4290, 500),
(8, 0, 12, 429, 95),
(9, 0, 12, 243, 109),
(10, 9906, 13, 4920, 4000),
(11, 5035, 12, 7400, 7000),
(12, 8311, 12, 2210, 2000),
(13, 5538, 13, 6450, 5000),
(14, 2103, 13, 6450, 5000),
(15, 5700, 12, 3370, 3000),
(16, 67541, 12, 4125, 4000),
(17, 83744, 13, 7900, 0),
(18, 69372, 12, 55200, 0),
(19, 68818, 12, 214500, 0),
(20, 57594, 12, 214500, 0),
(21, 51122, 12, 15800, 0),
(22, 93461, 13, 21252, 500),
(23, 54068, 13, 23700, 0),
(24, 64659, 13, 87750, 5000),
(25, 29056, 13, 75000, 0),
(26, 54112, 11, 64350, 0),
(27, 35615, 11, 64350, 0),
(28, 54641, 11, 64350, 0),
(29, 32110, 13, 75000, 0),
(30, 27557, 13, 75000, 0),
(31, 44944, 14, 429, 1000),
(32, 34384, 12, 25000, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `selse_item`
--

CREATE TABLE `selse_item` (
  `id` int(11) NOT NULL,
  `selse_id` bigint(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selse_item`
--

INSERT INTO `selse_item` (`id`, `selse_id`, `product_id`, `quantity`, `price`) VALUES
(1, 9906, 17, 10, 0),
(2, 9906, 13, 10, 0),
(3, 5035, 15, 10, 0),
(4, 5035, 18, 10, 0),
(5, 8311, 15, 10, 1580),
(6, 8311, 17, 10, 0),
(7, 5700, 19, 10, 2760),
(8, 5700, 20, 10, 610),
(9, 67541, 14, 5, 1215),
(10, 67541, 18, 5, 2910),
(11, 93461, 19, 77, 21252),
(12, 54068, 15, 150, 23700),
(13, 64659, 16, 150, 87750),
(14, 29056, 12, 150, 75000),
(15, 27557, 12, 150, 75000),
(16, 44944, 13, 1, 429),
(17, 34384, 12, 50, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_level` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `user_level`) VALUES
(2, 'admin', 'admin', 'Admin', 'ba');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `salse`
--
ALTER TABLE `salse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selse_item`
--
ALTER TABLE `selse_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level` (`user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `salse`
--
ALTER TABLE `salse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `selse_item`
--
ALTER TABLE `selse_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
