-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 09:17 AM
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
-- Database: `mychat_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL,
  `msgid` varchar(100) NOT NULL,
  `sender` bigint(20) NOT NULL,
  `receiver` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `files` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `received` int(11) NOT NULL DEFAULT 0,
  `deleted_sender` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_receiver` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `msgid`, `sender`, `receiver`, `message`, `files`, `date`, `seen`, `received`, `deleted_sender`, `deleted_receiver`) VALUES
(1, '42RSj1AK6VbEmp0nIBBtujVC5xE', 8601009855, 239152703, 'he', NULL, '2023-10-13 21:43:40', 0, 0, 0, 0),
(2, '42RSj1AK6VbEmp0nIBBtujVC5xE', 8601009855, 239152703, 'si je', NULL, '2023-10-13 21:44:32', 0, 0, 0, 0),
(3, 'c6nGgmLnwiLRzcDdPpPyKKU3hQ9el6MrkwXrq2Exp8w9vapZo2vm', 8601009855, 89701890839882223, 'hello', NULL, '2023-10-13 21:45:40', 1, 1, 0, 0),
(4, 'c6nGgmLnwiLRzcDdPpPyKKU3hQ9el6MrkwXrq2Exp8w9vapZo2vm', 8601009855, 89701890839882223, 'Si je ti?', NULL, '2023-10-13 21:45:50', 1, 1, 0, 0),
(5, 'c6nGgmLnwiLRzcDdPpPyKKU3hQ9el6MrkwXrq2Exp8w9vapZo2vm', 8601009855, 89701890839882223, 'mire po ti', NULL, '2023-10-13 21:46:08', 1, 1, 0, 0),
(6, 'c6nGgmLnwiLRzcDdPpPyKKU3hQ9el6MrkwXrq2Exp8w9vapZo2vm', 89701890839882223, 8601009855, 'mire edhe une', NULL, '2023-10-13 21:46:42', 1, 1, 0, 0),
(7, 'c6nGgmLnwiLRzcDdPpPyKKU3hQ9el6MrkwXrq2Exp8w9vapZo2vm', 8601009855, 89701890839882223, 'shyqyr', NULL, '2023-10-13 21:47:15', 1, 1, 0, 0),
(8, 'c6nGgmLnwiLRzcDdPpPyKKU3hQ9el6MrkwXrq2Exp8w9vapZo2vm', 89701890839882223, 8601009855, 'ola', NULL, '2023-10-13 21:52:33', 1, 1, 0, 0),
(9, 'c6nGgmLnwiLRzcDdPpPyKKU3hQ9el6MrkwXrq2Exp8w9vapZo2vm', 89701890839882223, 8601009855, 'ola?', NULL, '2023-10-13 21:59:05', 1, 1, 0, 0),
(10, 'c6nGgmLnwiLRzcDdPpPyKKU3hQ9el6MrkwXrq2Exp8w9vapZo2vm', 89701890839882223, 8601009855, 'la la', NULL, '2023-10-13 23:13:28', 1, 1, 0, 0),
(11, 'c6nGgmLnwiLRzcDdPpPyKKU3hQ9el6MrkwXrq2Exp8w9vapZo2vm', 8601009855, 89701890839882223, 'li li', NULL, '2023-10-13 23:13:44', 1, 1, 0, 0),
(12, 'c6nGgmLnwiLRzcDdPpPyKKU3hQ9el6MrkwXrq2Exp8w9vapZo2vm', 89701890839882223, 8601009855, 'l', NULL, '2023-10-13 23:14:26', 1, 1, 0, 0),
(13, 'c6nGgmLnwiLRzcDdPpPyKKU3hQ9el6MrkwXrq2Exp8w9vapZo2vm', 89701890839882223, 8601009855, 'zz', NULL, '2023-10-13 23:14:41', 1, 1, 0, 0),
(14, 'c6nGgmLnwiLRzcDdPpPyKKU3hQ9el6MrkwXrq2Exp8w9vapZo2vm', 89701890839882223, 8601009855, 'zz', NULL, '2023-10-13 23:14:54', 1, 1, 0, 0),
(15, 'CsZxpy4OrTKrcUcOD3b8pvBlBJShRufCsVMQFbWezkQXW', 3, 239152703, 'ola', NULL, '2023-10-16 23:34:33', 0, 0, 0, 0),
(16, 'CsZxpy4OrTKrcUcOD3b8pvBlBJShRufCsVMQFbWezkQXW', 3, 239152703, 'ola', NULL, '2023-10-16 23:34:35', 0, 0, 0, 0),
(17, 'CsZxpy4OrTKrcUcOD3b8pvBlBJShRufCsVMQFbWezkQXW', 3, 239152703, 'ola', NULL, '2023-10-16 23:34:36', 0, 0, 0, 0),
(18, 'CsZxpy4OrTKrcUcOD3b8pvBlBJShRufCsVMQFbWezkQXW', 3, 239152703, 'ola', NULL, '2023-10-16 23:34:36', 0, 0, 0, 0),
(19, 'CsZxpy4OrTKrcUcOD3b8pvBlBJShRufCsVMQFbWezkQXW', 3, 239152703, 'ola', NULL, '2023-10-16 23:34:36', 0, 0, 0, 0),
(20, 'CsZxpy4OrTKrcUcOD3b8pvBlBJShRufCsVMQFbWezkQXW', 3, 239152703, 'ola', NULL, '2023-10-16 23:34:36', 0, 0, 0, 0),
(21, 'CsZxpy4OrTKrcUcOD3b8pvBlBJShRufCsVMQFbWezkQXW', 3, 239152703, 'ola', NULL, '2023-10-16 23:34:36', 0, 0, 0, 0),
(22, 'CsZxpy4OrTKrcUcOD3b8pvBlBJShRufCsVMQFbWezkQXW', 3, 239152703, 'ola', NULL, '2023-10-16 23:34:49', 0, 0, 0, 0),
(23, 'CsZxpy4OrTKrcUcOD3b8pvBlBJShRufCsVMQFbWezkQXW', 3, 239152703, 'ola', NULL, '2023-10-16 23:34:50', 0, 0, 0, 0),
(24, 'c6nGgmLnwiLRzcDdPpPyKKU3hQ9el6MrkwXrq2Exp8w9vapZo2vm', 8601009855, 89701890839882223, 'lol', NULL, '2023-10-16 23:39:09', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userid`, `username`, `email`, `gender`, `password`, `date`, `image`) VALUES
(1, 239152703, 'Eathorne', 'eathorne@yahoo.com', 'Male', 'password', '2020-12-25 15:31:32', 'uploads/afro-beautiful-black-women-fashion-Favim.com-3980589.jpg'),
(2, 89701890839882223, 'Mary', 'mary@yahoo.com', 'Female', 'password', '2020-12-25 15:31:49', NULL),
(3, 1148711, 'John', 'john@yahoo.com', 'Male', 'password', '2020-12-25 15:32:10', 'uploads/handsome-adult-black-man-successful-business-african-person-117063782.jpg'),
(4, 8601009855, 'David', 'dkeci21@epoka.edu.al', 'Male', 'David2020', '2023-10-13 21:33:30', 'uploads/wallpaper_2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender` (`sender`),
  ADD KEY `receiver` (`receiver`),
  ADD KEY `deleted_sender` (`deleted_sender`),
  ADD KEY `deleted_received` (`deleted_receiver`),
  ADD KEY `date` (`date`),
  ADD KEY `seen` (`seen`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `gender` (`gender`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
