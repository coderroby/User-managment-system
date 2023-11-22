-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2023 at 11:28 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` enum('male','female') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `image` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL DEFAULT 'general',
  `status` enum('active','pending','deleted','') NOT NULL DEFAULT 'pending',
  `authtoken` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `gender`, `mobile`, `designation`, `image`, `type`, `status`, `authtoken`) VALUES
(1, 'web', 'damn', 'admin@webdamn.com', '202cb962ac59075b964b07152d234b70', 'male', '123456789', 'Web developer', '', 'administrator', 'active', ''),
(5, 'jhonn', 'smith', 'info@webdamn.com', '202cb962ac59075b964b07152d234b70', 'male', '123456789', 'Web developer', '', 'general', 'active', '73f66749989c7b09389894f1b27daa7387f9956fa51c87c1ba4fc4684b91acb5'),
(6, 'Jimmy', 'Anderson', 'jm@wd.com', '202cb962ac59075b964b07152d234b70', 'male', '11111111111', 'PHP developer', '', 'general', 'pending', '73f66749989c7b09389894f1b27daa736156fbd08795da8955fb36cf730f2fb0'),
(7, 'Andy', 'Flower', 'andy@wd.com', '202cb962ac59075b964b07152d234b70', 'male', '11111111111', 'dfdsd', '', 'administrator', 'deleted', '73f66749989c7b09389894f1b27daa738d2775af2555b0d1ed582212a3991144');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
