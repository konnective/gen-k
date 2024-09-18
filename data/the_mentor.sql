-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 11:56 PM
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
-- Database: `the_mentor`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `details` text NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `topic`, `details`, `img`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'this is test for project', '1', '<p>Learn how to harness the power of Laravel CORS in this tutorial. Discover what it is and unlock its potential for seamless cross-origin resource sharing.\n\nLaravel has supported CORS for quite a while; however, until more recent versions, it has been from third-party packages only. Let\'s dive into CORS in Laravel, what it is, and why it is important.\n\nCORS stands for Cross-Origin Resource Sharing. It is a mechanism that allows you to make requests to a different domain than your own securely. It defines a set of headers the server can use to control which origins can access its resources. But what does this mean to you?\n\nAs someone who builds a lot of APIs, I am very used to CORS. It has become second nature at this point. Laravel, by default, has CORS support built in, where it will read from config/cors.php to programmatically build up the protection rules based on the values configured. Let\'s walk through the options in this file to see what they mean to us.</p>', 'http://127.0.0.1/the_mentor/storage/app/uploads/Laravel From Scratch 2022 _ 4+ Hour Course.mp4_snapshot_03.24.18.433.jpg', 1, '2023-12-17 12:12:27', '2024-04-23 16:22:48'),
(12, 'learnig to think in programming', '1', '<p>test</p>', 'http://127.0.0.1/the_mentor/storage/app/uploads/earth343434.jpg', 1, '2023-12-19 11:11:43', '2023-12-19 11:11:43'),
(13, 'this is another test', '1', '<p>hello this test is for tst</p>', NULL, 1, '2023-12-22 10:44:14', '2023-12-22 10:44:14'),
(14, 'how to use import in node module', '3', '<p>so in this example you can see the &nbsp;<span style=\"color: rgb(156, 220, 254);\">\"type\"</span>: <span style=\"color: rgb(206, 145, 120);\">\"module\"</span>, which will enable the import functionality in you app by the way if you dont want touse that you can always use \"const express = require(\"express\")\"</p>', 'http://127.0.0.1/the_mentor/storage/app/uploads/blog1.jpg', 1, '2024-01-02 11:31:07', '2024-01-02 11:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT 1,
  `total_points` int(11) DEFAULT NULL,
  `total_days` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `trash` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`id`, `name`, `user_id`, `project_id`, `total_points`, `total_days`, `points`, `days`, `trash`) VALUES
(1, 'Tea fast for 10 days', NULL, 1, 500, 10, 0, 0, 1),
(3, 'work on second brain for ', NULL, 1, 500, 20, 300, 8, 0),
(6, 'test', NULL, 2, 10, 10, 0, 0, 0),
(7, 'test1', NULL, 2, 10, 10, 4, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `subject` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT 0,
  `end_date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `name`, `cycles`, `description`, `days`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'The Mentor', 0, NULL, 0, '2024-03-27', 1, '2024-03-13 17:02:14', '2024-07-17 17:18:33'),
(2, 1, 'Second Brain', 0, NULL, 0, '2024-03-27', 1, '2024-03-13 17:02:29', '2024-07-17 17:18:36'),
(3, 1, 'Personal Growth', 0, NULL, 0, '2024-03-27', 1, '2024-03-13 17:02:29', '2024-07-17 17:18:37'),
(5, 1, 'Pocket Clone', 0, NULL, 0, '2024-04-28', 1, '2024-03-28 11:11:37', '2024-07-17 17:18:39'),
(7, NULL, NULL, 100, NULL, 0, NULL, 1, '2024-07-24 10:55:55', '2024-07-24 10:55:55'),
(8, 1, 'test', 100, NULL, 0, '2024-07-26', 1, '2024-07-24 10:57:19', '2024-07-24 10:57:19'),
(9, 1, 'test', 1400, 'test', 0, '2024-07-18', 1, '2024-07-24 10:59:19', '2024-07-24 10:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `goal_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `duration` decimal(6,2) NOT NULL,
  `points` int(25) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'not completed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `goal_id`, `project_id`, `name`, `duration`, `points`, `status`, `created_at`, `updated_at`) VALUES
(6, NULL, NULL, NULL, 'thid', 70.00, 35, '1', '2023-10-07 09:36:18', '2023-10-07 09:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `balance` double(20,2) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `balance`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kunj', 'kunj@gmail.com', NULL, 'd220bc729594a8a30b4adc256d3ccf0c1e13005d0a35468cf2fb23e02d6c0f65', 0.00, NULL, NULL, NULL),
(2, 'test', 'test@gmail.com', NULL, '8622f0f69c91819119a8acf60a248d7b36fdb7ccf857ba8f85cf7f2767ff8265', 0.00, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
