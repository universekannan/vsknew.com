-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 08:29 AM
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
-- Database: `mimart`
--

-- --------------------------------------------------------

--
-- Table structure for table `deliverable_location`
--

CREATE TABLE `deliverable_location` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT 0,
  `deliverable_id` int(11) DEFAULT 0,
  `created_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliverable_location`
--

INSERT INTO `deliverable_location` (`id`, `store_id`, `deliverable_id`, `created_at`) VALUES
(10, 17, 3, '2024-06-19 05:07:35'),
(11, 17, 4, '2024-06-19 05:07:35'),
(12, 17, 5, '2024-06-19 05:07:35'),
(13, 17, 6, '2024-06-19 05:07:35'),
(14, 17, 7, '2024-06-19 05:07:35'),
(15, 17, 9, '2024-06-19 05:07:35'),
(16, 17, 11, '2024-06-19 05:07:35'),
(17, 17, 12, '2024-06-19 05:07:35'),
(18, 134, 10, '2024-07-07 19:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `PostOfficeName` varchar(100) DEFAULT NULL,
  `Pincode` double DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `District` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `PostOfficeName`, `Pincode`, `City`, `District`, `State`) VALUES
(1, 'Karankadu', 629809, 'Karankadu', 'Kanyakumari', 'Tamil Nadu'),
(2, 'Kandanvilai', 629810, 'Kandanvilai', 'Kanyakumari', 'Tamil Nadu'),
(3, 'Industrial estate', 629004, 'Nagercoil', 'Kanyakumari', 'Tamil Nadu'),
(4, 'Nagercoil Town', 629001, 'Nagercoil', 'Kanyakumari', 'Tamil Nadu'),
(5, 'Kottar', 629002, 'Nagercoil', 'Kanyakumari', 'Tamil Nadu'),
(6, 'Vetturnimadam', 629003, 'Nagercoil', 'Kanyakumari', 'Tamil Nadu'),
(7, 'Asaripallam', 629201, 'Nagercoil', 'Kanyakumari', 'Tamil Nadu'),
(8, 'Eathmozhi', 629501, 'Nagercoil', 'Kanyakumari', 'Tamil Nadu'),
(9, 'Rajakkamangalam', 629502, 'Nagercoil', 'Kanyakumari', 'Tamil Nadu'),
(10, 'Pallam, Parakkai', 629601, 'Nagercoil', 'Kanyakumari', 'Tamil Nadu'),
(11, 'Aloor, Kattimancode', 629801, 'Nagercoil', 'Kanyakumari', 'Tamil Nadu'),
(12, 'Therakalputhur, Erchakulam', 629901, 'Nagercoil', 'Kanyakumari', 'Tamil Nadu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deliverable_location`
--
ALTER TABLE `deliverable_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deliverable_location`
--
ALTER TABLE `deliverable_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
