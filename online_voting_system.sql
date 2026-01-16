-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2026 at 09:33 PM
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
-- Database: `online_voting_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `full_name`, `position`, `photo`, `created_at`) VALUES
(11, 'Mohamed Abdirahman Mohamud', 'President', 'cand_1768587772_7224.jpg', '2026-01-16 18:22:52'),
(12, 'nura moahmed', 'Vice President', '', '2026-01-16 18:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `user_type` enum('admin','voter') NOT NULL DEFAULT 'voter',
  `status` enum('active','inactive') DEFAULT 'active',
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `username`, `password`, `phone`, `email`, `profile_picture`, `user_type`, `status`, `reset_token`, `reset_expires`, `created_at`, `remember_token`) VALUES
(2, 'zoya', 'sharif', 'Female', 'zoyaa', '$2y$10$/wxtvSNPR79eKD3ed8D3E.ogzHkzB9vuFIS45QlfG8zhvGu/v7uhS', '617626266', 'zoya@gmail.com', NULL, 'admin', 'active', NULL, NULL, '2026-01-14 19:43:28', NULL),
(3, 'madkey', 'abdi', 'Male', 'madkey', '$2y$10$gk.Z0cQTfDuWRSWItz2WHOkoyhHp2lY9eLYA7Yun/ke6y72ZQ4W0O', '616262626', 'madkey@gmail.com', 'user_3_1768427768.jpg', 'voter', 'active', NULL, NULL, '2026-01-14 19:50:23', NULL),
(4, 'muda', 'hasan', 'Female', 'muna', '$2y$10$1ZJ9cO4kBB/ep9IHnp.v3ORLXhg8IuFU8QdQVoz7CKA9KWMiyAnN6', '61626262', 'muna@gmail.com', NULL, 'voter', 'active', NULL, NULL, '2026-01-14 22:09:18', NULL),
(5, 'hasan', 'ali', 'Male', 'hasan', '$2y$10$Gd0SuqhKtjFUW5kPEVzdoeabi47ciJ/lmyJby/i4yp7BrjmLJkvTC', '6152525', 'hasan@gmail.com', NULL, 'voter', 'active', NULL, NULL, '2026-01-14 22:58:10', NULL),
(6, 'salman', 'ibrahim', 'Male', 'salman', '$2y$10$TaO1id.wEZA5UcpOY7gQjusqojyuMZaJcHTZmUGgis/.PqQEUWcoy', '0616626262', 'salmanow@gmail.com', 'user_6_1768461776.jpg', 'voter', 'active', NULL, NULL, '2026-01-15 07:22:08', NULL),
(7, 'najma', 'mohamed', 'Female', 'najxa', '$2y$10$eDYrFFND5sY2bvxjQreyb.FETiGLSX0PUTINvW0Rw06SR4tMXs8OC', '61525262', 'najma@gmail.com', NULL, 'voter', 'active', NULL, NULL, '2026-01-16 16:46:37', NULL),
(8, 'ali', 'nuur', 'Male', 'aliyey', '$2y$10$sdDFjLGmm.zGu96EsJe5POdUmw.Lv6/y5OfYJYLQT1s5T0Oirqq6a', '61223365', 'ali@gmail.com', NULL, 'voter', 'active', NULL, NULL, '2026-01-16 17:34:07', NULL),
(9, 'abdihafid', 'muhidin', 'Male', 'hafid', '$2y$10$Q5VEQXyAdF3CyXPNpz2eD.gC4EvxohCsIkOhkOlsiJb.poSrcwZaK', '612626266', 'hafid@gmail.com', 'user_9_1768587098.jpg', 'voter', 'active', NULL, NULL, '2026-01-16 18:09:25', '6649f43772a97676424bce2c00890b1b8a68c1738bca23fe852d32ca935eeb04');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `candidate_id`, `created_at`) VALUES
(10, 9, 11, '2026-01-16 18:33:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_vote_per_user` (`user_id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
