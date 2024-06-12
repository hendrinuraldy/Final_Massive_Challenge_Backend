-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 04:56 AM
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
-- Database: `rujak_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerreview`
--

CREATE TABLE `customerreview` (
  `id` int(11) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerreview`
--

INSERT INTO `customerreview` (`id`, `imageUrl`, `description`, `createdAt`, `updatedAt`) VALUES
(1, '/images/865cd625dad5119e0d30115e3dc24b94.jpeg', '', '2024-06-11 02:07:50', '2024-06-11 02:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `url`, `harga`, `createdAt`, `updatedAt`) VALUES
(1, 'Rujak Klasik (430g)', '4cb370ec94a2de38a596ba807c4ba2a3.JPG', 'http://localhost:5000/images/4cb370ec94a2de38a596ba807c4ba2a3.JPG', 'Rp 25.000 ', '2024-06-11 02:01:20', '2024-06-11 02:01:20'),
(2, 'Rujak Klasik (250 g)', '53ab2d5379dc52658a3da14bb199f626.JPG', 'http://localhost:5000/images/53ab2d5379dc52658a3da14bb199f626.JPG', 'Rp 15.000', '2024-06-11 02:01:45', '2024-06-11 02:01:45'),
(3, 'Rujak Klasik (500g)', 'aec1cbc228dcd1f446a053c5889be0a0.JPG', 'http://localhost:5000/images/aec1cbc228dcd1f446a053c5889be0a0.JPG', 'Rp 30.000', '2024-06-11 02:02:11', '2024-06-11 02:02:11'),
(4, 'Ubi Ungu (150g)', '578b0e53a23916e152800e55dae2c6e4.jpeg', 'http://localhost:5000/images/578b0e53a23916e152800e55dae2c6e4.jpeg', 'Rp 6.000', '2024-06-11 02:02:42', '2024-06-11 02:02:42'),
(5, 'Ubi Ungu (300g)', '117f54beb76ceb1d73a0a6b430d709c0.JPG', 'http://localhost:5000/images/117f54beb76ceb1d73a0a6b430d709c0.JPG', 'Rp 10.000', '2024-06-11 02:03:25', '2024-06-11 02:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `promos`
--

CREATE TABLE `promos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promos`
--

INSERT INTO `promos` (`id`, `title`, `description`, `imageUrl`, `createdAt`, `updatedAt`) VALUES
(6, 'Promo 1', 'Dapatkan harga khusus untuk berbagai macam acara :\r\n• Jum\'at berkah\r\n• Arisan\r\n• Pernikahan\r\n• Seminar\r\n• Tujuh bulanan\r\n• dan lain-lain.\r\nKami siap menyediakan rujak klasik dan bubur ubi ungu yang spesial.', '/images/b1d3b9dc62bbc4ba6ac2423f6daf9103.png', '2024-06-11 13:41:30', '2024-06-11 13:41:30'),
(9, 'Promo 3', 'Buruan dibeli sebelum kehabisan', '/images/6f2c7abd176f1ad9123afe68d5af6775.jpg', '2024-06-12 02:38:36', '2024-06-12 02:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `star_rating` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `star_rating`, `name`, `no_telepon`, `comments`, `createdAt`, `updatedAt`) VALUES
(4, 5, 'Danny', '0812343734', 'Keren', '2024-06-12 02:53:19', '2024-06-12 02:53:19'),
(5, 5, 'Abdul Aziz', '0812818212', 'keren bgt websitenya', '2024-06-12 02:53:33', '2024-06-12 02:53:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerreview`
--
ALTER TABLE `customerreview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promos`
--
ALTER TABLE `promos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerreview`
--
ALTER TABLE `customerreview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `promos`
--
ALTER TABLE `promos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
