-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: Mar 30, 2025 at 10:45 PM
-- Server version: 11.7.2-MariaDB-ubu2404
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_expense_app_homem_maquina`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Alimentação', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(2, 'Transporte', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(3, 'Lazer', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(4, 'Saúde', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(5, 'Educação', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(6, 'Moradia', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(7, 'Roupas', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(8, 'Entretenimento', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(9, 'Impostos', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(10, 'Serviços', '2025-03-30 22:39:08', '2025-03-30 22:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `expense_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `category_id`, `description`, `amount`, `expense_date`, `created_at`, `updated_at`) VALUES
(1, 10, 'Doloribus voluptatem et.', 155.48, '2024-11-19', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(2, 6, 'Incidunt recusandae.', 19.79, '2024-09-18', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(3, 7, 'Quod provident.', 484.87, '2025-03-23', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(4, 3, 'Molestiae nisi.', 464.67, '2024-10-08', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(5, 7, 'Quia necessitatibus id.', 165.19, '2024-06-01', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(6, 10, 'Debitis fugiat.', 68.06, '2024-06-29', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(7, 10, 'Enim possimus ut.', 387.14, '2024-12-28', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(8, 8, 'Sapiente fugit.', 392.48, '2024-05-10', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(9, 10, 'Non cum.', 298.81, '2024-07-11', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(10, 6, 'Iste quis.', 278.75, '2024-09-23', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(11, 7, 'Exercitationem tempora.', 494.68, '2025-03-13', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(12, 10, 'Rem quo.', 309.56, '2024-11-27', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(13, 3, 'Iusto laborum in.', 81.20, '2024-09-11', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(14, 5, 'Id hic.', 376.81, '2025-01-24', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(15, 10, 'Cum rerum odio.', 13.92, '2024-06-05', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(16, 8, 'Nihil temporibus ullam.', 433.10, '2024-10-12', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(17, 7, 'Totam officia rerum.', 380.43, '2024-05-10', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(18, 3, 'Similique sint.', 175.62, '2024-04-16', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(19, 7, 'Nesciunt mollitia enim.', 107.18, '2024-08-30', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(20, 2, 'Saepe eveniet.', 264.88, '2024-09-21', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(21, 3, 'Atque eveniet soluta.', 211.55, '2024-04-19', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(22, 6, 'Vero sapiente voluptatem.', 289.11, '2024-12-25', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(23, 7, 'Voluptates voluptates.', 453.67, '2025-03-19', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(24, 3, 'Voluptatem doloribus odio.', 248.52, '2025-02-23', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(25, 1, 'Deserunt facere.', 406.59, '2024-06-16', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(26, 6, 'Dolor et corrupti.', 291.37, '2025-01-16', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(27, 8, 'Id accusamus occaecati.', 269.17, '2024-05-16', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(28, 3, 'Natus rerum delectus.', 204.88, '2024-09-07', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(29, 6, 'Fuga et.', 240.19, '2025-03-24', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(30, 10, 'Adipisci nulla.', 477.80, '2025-01-10', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(31, 10, 'Tempora quisquam magnam.', 387.69, '2024-09-21', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(32, 5, 'Quasi ducimus.', 382.99, '2024-11-05', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(33, 1, 'Explicabo corporis.', 89.23, '2025-03-04', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(34, 7, 'Ipsum repudiandae.', 298.17, '2025-01-27', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(35, 6, 'Illo nam possimus.', 408.39, '2024-07-29', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(36, 2, 'Sint recusandae sed.', 406.37, '2024-08-12', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(37, 8, 'Ex dolore ad.', 411.81, '2025-03-29', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(38, 8, 'Praesentium aut.', 108.59, '2024-10-06', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(39, 7, 'Quo dolore.', 165.42, '2025-01-24', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(40, 7, 'Aut quia.', 353.30, '2025-01-22', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(41, 10, 'Similique laborum dolorem.', 31.31, '2024-05-10', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(42, 7, 'Minus voluptatum.', 359.85, '2024-10-24', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(43, 8, 'Aspernatur deleniti.', 447.40, '2024-05-03', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(44, 2, 'Officia rem.', 238.69, '2025-03-30', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(45, 7, 'Iure voluptas.', 121.07, '2024-11-23', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(46, 1, 'Omnis adipisci delectus.', 245.12, '2025-02-04', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(47, 7, 'Et fugit sequi.', 451.24, '2024-09-07', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(48, 3, 'Repellendus provident.', 94.08, '2024-07-22', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(49, 5, 'Inventore dolorem ut.', 235.44, '2025-02-15', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(50, 7, 'Ipsum vel doloribus.', 89.36, '2025-02-15', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(51, 6, 'Ipsum consequatur est.', 90.59, '2024-12-05', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(52, 5, 'Vel laborum.', 446.64, '2024-07-04', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(53, 3, 'Omnis tempore.', 48.25, '2024-11-21', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(54, 8, 'Magni aut.', 483.52, '2024-06-04', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(55, 2, 'A facilis.', 498.22, '2024-08-02', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(56, 1, 'Aut vel blanditiis.', 301.25, '2025-02-14', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(57, 10, 'Assumenda quam rerum.', 198.96, '2024-12-30', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(58, 2, 'In distinctio enim.', 27.87, '2024-05-01', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(59, 6, 'Nobis et quis.', 295.35, '2024-05-23', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(60, 7, 'Error dolores.', 159.38, '2024-08-15', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(61, 6, 'Quo ut.', 306.06, '2024-07-02', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(62, 4, 'Velit voluptas inventore.', 287.54, '2025-02-16', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(63, 3, 'Animi sed temporibus.', 401.45, '2024-12-09', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(64, 9, 'Tenetur velit quis.', 420.99, '2024-10-09', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(65, 6, 'Et nihil in.', 13.86, '2024-08-17', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(66, 9, 'Doloribus et.', 441.32, '2024-12-08', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(67, 2, 'Rerum sunt.', 64.52, '2024-11-23', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(68, 1, 'Sequi aliquid iure.', 410.85, '2024-07-19', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(69, 3, 'Voluptate ex.', 210.77, '2024-12-01', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(70, 3, 'Fugiat qui ut.', 410.12, '2024-07-01', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(71, 2, 'Laborum quaerat.', 340.56, '2024-06-30', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(72, 7, 'Animi dolore.', 219.79, '2024-05-22', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(73, 4, 'Voluptatem qui ex.', 74.28, '2024-05-16', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(74, 1, 'Quaerat sapiente eveniet.', 490.58, '2024-04-19', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(75, 9, 'Repellat ipsa odit.', 342.78, '2024-04-08', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(76, 5, 'Nulla sint.', 311.73, '2024-11-28', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(77, 10, 'Explicabo voluptatibus qui.', 434.36, '2024-09-30', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(78, 5, 'Error ipsum aliquid.', 442.28, '2024-04-07', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(79, 1, 'Sapiente enim sit.', 365.36, '2024-08-31', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(80, 1, 'Voluptas assumenda.', 405.27, '2025-01-05', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(81, 3, 'Rerum alias aut.', 317.58, '2024-12-20', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(82, 9, 'Sit adipisci officiis.', 426.16, '2025-01-09', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(83, 8, 'Vitae voluptate magni.', 142.42, '2024-06-24', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(84, 1, 'Voluptas eius et.', 219.14, '2025-01-28', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(85, 10, 'Iusto error impedit.', 276.89, '2025-03-30', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(86, 4, 'Et quo.', 60.71, '2025-03-16', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(87, 2, 'Assumenda voluptate.', 105.26, '2024-12-28', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(88, 7, 'A consectetur.', 468.32, '2024-10-19', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(89, 5, 'Repellendus quis id.', 89.33, '2025-03-30', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(90, 7, 'Vel laborum voluptatibus.', 272.27, '2024-09-18', '2025-03-30 22:39:08', '2025-03-30 22:39:08'),
(91, 8, 'Perspiciatis est sequi.', 439.39, '2024-09-09', '2025-03-30 22:39:09', '2025-03-30 22:39:09'),
(92, 8, 'Rem qui.', 197.15, '2025-02-24', '2025-03-30 22:39:09', '2025-03-30 22:39:09'),
(93, 6, 'Mollitia ut qui.', 206.17, '2024-05-15', '2025-03-30 22:39:09', '2025-03-30 22:39:09'),
(94, 6, 'Natus est.', 346.91, '2025-02-07', '2025-03-30 22:39:09', '2025-03-30 22:39:09'),
(95, 5, 'Sint est.', 68.09, '2024-04-12', '2025-03-30 22:39:09', '2025-03-30 22:39:09'),
(96, 6, 'Possimus natus qui.', 34.31, '2024-10-30', '2025-03-30 22:39:09', '2025-03-30 22:39:09'),
(97, 10, 'Reiciendis quasi.', 116.65, '2024-10-18', '2025-03-30 22:39:09', '2025-03-30 22:39:09'),
(98, 3, 'Sed qui.', 11.51, '2024-05-07', '2025-03-30 22:39:09', '2025-03-30 22:39:09'),
(99, 9, 'Culpa illo.', 40.33, '2024-12-24', '2025-03-30 22:39:09', '2025-03-30 22:39:09'),
(100, 10, 'Laborum est.', 57.35, '2024-08-28', '2025-03-30 22:39:09', '2025-03-30 22:39:09');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_28_190712_create_categories_table', 1),
(5, '2024_10_28_190943_create_expenses_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
