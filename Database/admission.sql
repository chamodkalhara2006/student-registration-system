-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 03, 2023 at 05:06 AM
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
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(10) NOT NULL,
  `u_card` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_aadhar` varchar(12) NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(10) NOT NULL,
  `u_state` varchar(12) NOT NULL,
  `u_dist` text NOT NULL,
  `u_village` text NOT NULL,
  `u_police` text NOT NULL,
  `u_pincode` text NOT NULL,
  `file` longblob NOT NULL,
  `u_mother` varchar(30) NOT NULL,
  `u_family` text NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `image` varchar(150) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `u_card`, `u_f_name`, `u_l_name`, `u_father`, `u_aadhar`, `u_birthday`, `u_gender`, `u_email`, `u_phone`, `u_state`, `u_dist`, `u_village`, `u_police`, `u_pincode`, `file`, `u_mother`, `u_family`, `staff_id`, `image`, `uploaded`) VALUES
(128, '002', 'johnn', 'doe', '', '', '2023-12-26', 'Male', 'john@gmail.com', '+948888888', 'Choose...', '', '', '', '', '', '', '', '', 'dev (1).png', '2023-12-01 06:46:31'),
(129, 'tt', 'tete', 'etete', '', '', '2023-12-07', 'Male', 'tettetet@gmail.vom', 'tetet', 'Andaman and ', 'Anguruwella', '', '', '', '', '', '', 'rwrwrr', '', '2023-12-03 09:31:53'),
(130, 'twtwt', 'etetet', 'etete', '', '', '2023-12-09', 'Male', 'tettetet@gmail.vom', 'tetget', 'Andaman and ', 'Anguruwella', '', '', '', '', '', '', 'tette', '', '2023-12-03 09:32:11'),
(131, 'twtwt', 'etetet', 'etete', '', '', '2023-12-09', 'Male', 'tettetet@gmail.vom', 'tetget', '', '', '', '', '', '', '', '', '', '', '2023-12-03 09:33:11'),
(132, 'twtwt', 'etetet', 'etete', '', '', '2023-12-09', 'Male', 'tettetet@gmail.vom', 'tetget', '', '', '', '', '', '', '', '', '', '', '2023-12-03 09:33:47'),
(133, 'rwrwr', 'rrwr', 'rwr', '', '', '2023-12-20', 'Male', 'tettetet@gmail.vom', 'rrwr', '', '', '', '', '', '', '', '', '', '', '2023-12-03 09:34:13'),
(134, 'rwrwr', 'rrwr', 'rwr', '', '', '2023-12-20', 'Male', 'tettetet@gmail.vom', 'rrwr', '', '', '', '', '', '', '', '', '', '', '2023-12-03 09:34:40'),
(135, 'twtw', 'etetet', 'etete', '', '', '2023-12-14', 'Male', 'tettetet@gmail.vom', 'tetet', '', '', '', '', '', '', '', '', '', '', '2023-12-03 09:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(8, 'admin', '$2y$10$jVryC1e1LzuJkpz0hQFzeuZbYWkuS/9g3l6s90GRJ.C9dx8E7PBXK', '2023-12-01 06:45:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
