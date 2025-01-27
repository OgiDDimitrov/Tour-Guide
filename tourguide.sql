-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2025 at 04:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourguide`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL,
  `country_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_price` double NOT NULL,
  `payment_status_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `trip_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reservation_id` bigint(20) NOT NULL,
  `travellers_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) NOT NULL,
  `destination_id` bigint(20) NOT NULL,
  `travel_type_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travellers`
--

CREATE TABLE `travellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL,
  `age` int(11) NOT NULL,
  `egn` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel_type`
--

CREATE TABLE `travel_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL,
  `start_date` varchar(256) NOT NULL,
  `end_date` varchar(256) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `price_per_person` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_type`
--

CREATE TABLE `trip_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e-mail` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `travellers`
--
ALTER TABLE `travellers`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `travel_type`
--
ALTER TABLE `travel_type`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `trip_type`
--
ALTER TABLE `trip_type`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travellers`
--
ALTER TABLE `travellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel_type`
--
ALTER TABLE `travel_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trip_type`
--
ALTER TABLE `trip_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
