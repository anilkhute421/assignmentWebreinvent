-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2024 at 06:49 AM
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
-- Database: `todolists`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_21_085503_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(12, 'dfdsfsds', 'completed', '2024-09-22 05:09:05', '2024-09-22 05:54:36'),
(13, 'khute', 'completed', '2024-09-22 05:09:13', '2024-09-22 05:27:46'),
(14, 'dsadasd', 'completed', '2024-09-22 05:09:44', '2024-09-22 05:54:37'),
(15, 'dsfjksdnf', 'completed', '2024-09-22 05:09:59', '2024-09-22 05:19:04'),
(16, 'dsfsd', 'completed', '2024-09-22 05:26:51', '2024-09-22 05:54:39'),
(17, 'sfsdf', 'completed', '2024-09-22 05:33:12', '2024-09-22 05:54:40'),
(18, 'dsads', 'completed', '2024-09-22 05:33:17', '2024-09-22 05:54:41'),
(19, 'dffdg', 'completed', '2024-09-22 05:43:29', '2024-09-22 05:54:43'),
(20, 'dsd', 'completed', '2024-09-22 05:50:05', '2024-09-22 05:55:17'),
(21, 'asasfds', 'completed', '2024-09-22 05:51:04', '2024-09-22 06:01:34'),
(25, 'fctrftf', 'pending', '2024-09-22 06:00:10', '2024-09-22 06:00:10'),
(26, 'uhuih', 'pending', '2024-09-22 06:00:58', '2024-09-22 06:00:58'),
(27, 'jnjn', 'pending', '2024-09-22 06:01:20', '2024-09-22 06:01:20'),
(28, 'gdfgfdh', 'pending', '2024-09-22 06:13:20', '2024-09-22 06:13:20'),
(29, 'ggfj', 'pending', '2024-09-22 06:13:28', '2024-09-22 06:13:28'),
(30, 'dgd', 'pending', '2024-09-22 06:14:37', '2024-09-22 06:14:37'),
(31, 'dsgfsg', 'pending', '2024-09-22 06:15:06', '2024-09-22 06:15:06'),
(32, 'gfdgfdgfd', 'pending', '2024-09-22 06:15:21', '2024-09-22 06:15:21'),
(33, 'fgdgnkjfd', 'pending', '2024-09-22 06:19:06', '2024-09-22 06:19:06'),
(34, 'sdsdkjf', 'pending', '2024-09-22 06:30:00', '2024-09-22 06:30:00'),
(35, 'dsfsdf', 'pending', '2024-09-22 06:42:52', '2024-09-22 06:42:52'),
(36, 'dsfdsfsdf', 'pending', '2024-09-22 06:45:44', '2024-09-22 06:45:44'),
(37, 'task', 'pending', '2024-09-22 06:49:16', '2024-09-22 06:49:16'),
(38, 'taskdsfsdfds', 'pending', '2024-09-22 06:49:40', '2024-09-22 06:49:40'),
(39, 'ddsfsfdsfdsfdsf', 'pending', '2024-09-22 06:50:30', '2024-09-22 06:50:30'),
(40, 'sdfbdsbfd', 'pending', '2024-09-22 06:57:49', '2024-09-22 06:57:49'),
(41, 'dfdsbnf', 'pending', '2024-09-22 06:58:00', '2024-09-22 06:58:00'),
(42, 'CDFDSF', 'pending', '2024-09-22 06:58:56', '2024-09-22 06:58:56'),
(43, 'sdfsdf', 'pending', '2024-09-22 06:59:14', '2024-09-22 06:59:14'),
(44, 'ccsdbfvdfdfb fsdjhfsd', 'completed', '2024-09-22 06:59:57', '2024-09-22 07:01:14'),
(45, 'sdnfvbsdjbfsdfsd', 'completed', '2024-09-22 10:04:20', '2024-09-22 10:04:45'),
(47, 'sdfsdfcdscsdz', 'pending', '2024-09-22 10:07:27', '2024-09-22 10:07:27'),
(48, 'sdfsdfcdscsdz fsdfds', 'pending', '2024-09-22 10:08:09', '2024-09-22 10:08:09'),
(49, 'sdfsdf12', 'completed', '2024-09-22 10:12:47', '2024-09-22 10:44:36'),
(50, 'sdmdskmfds', 'completed', '2024-09-22 10:42:06', '2024-09-22 10:42:13'),
(51, 'ereuhfieru', 'pending', '2024-09-22 10:45:08', '2024-09-22 10:45:08'),
(52, 'cxvjcxhv', 'pending', '2024-09-22 10:45:22', '2024-09-22 10:45:22');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tasks_name_unique` (`name`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
