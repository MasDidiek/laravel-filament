-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2025 at 12:29 AM
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
-- Database: `laravel_filament`
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1759238370),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1759238370;', 1759238370);

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
  `nama_kategori` varchar(255) NOT NULL,
  `pagu` decimal(20,2) NOT NULL DEFAULT 0.00,
  `tahun_anggaran` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama_kategori`, `pagu`, `tahun_anggaran`, `created_at`, `updated_at`) VALUES
(1, 'Sewa Epuskesmas', 132000000.00, '2022', NULL, NULL),
(2, 'Obat', 1160075095.00, '2022', NULL, NULL),
(3, 'Alkes Extracomb', 478101892.00, '2022', NULL, NULL),
(4, 'Alkes Habis Pakai', 1652463610.00, '2022', NULL, NULL),
(5, 'Pemeliharaan Gedung', 208000000.00, '2022', NULL, NULL),
(6, 'Kalibarasi Alkes', 0.00, '2022', NULL, NULL),
(7, 'Sewa Mesin Fotocopy', 87600000.00, '2022', NULL, NULL),
(8, 'Sewa Lift', 72000000.00, '2022', NULL, NULL),
(9, 'Kesling', 113196720.00, '2022', NULL, NULL),
(10, 'Lab', 1402730000.00, '2022', NULL, NULL),
(11, 'Modal', 484456000.00, '2022', NULL, NULL),
(12, 'Susu', 0.00, '2022', NULL, NULL),
(13, 'Cetakan', 273300000.00, '2022', NULL, NULL),
(14, 'BBM', 0.00, '2022', NULL, NULL),
(15, 'ATK', 341710900.00, '2022', NULL, NULL),
(16, 'Alat Kebersihan', 262241500.00, '2022', NULL, NULL),
(17, 'Bahan Kebersihan', 0.00, '2022', NULL, NULL),
(18, 'PMT', 0.00, '2022', NULL, NULL),
(19, 'ART', 177117960.00, '2022', NULL, NULL),
(20, 'Pemeliharaan Alkes', 392350000.00, '2022', NULL, NULL),
(21, 'Pemeliharaan AC', 68400000.00, '2022', NULL, NULL),
(22, 'Pemeliharaan Komputer', 0.00, '2022', NULL, NULL),
(23, 'APAR', 20105600.00, '2022', NULL, NULL),
(24, 'Pemeliharaan KDO', 140000000.00, '2022', NULL, NULL),
(25, 'Limbah', 114000000.00, '2022', NULL, NULL),
(26, 'Sewa Epuskesmas', 132000000.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(27, 'Obat', 1160075095.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(28, 'Alkes Extracomb', 478101892.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(29, 'Alkes Habis Pakai', 1652463610.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(30, 'Pemeliharaan Gedung', 208000000.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(31, 'Kalibarasi Alkes', 0.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(32, 'Sewa Mesin Fotocopy', 87600000.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(33, 'Sewa Lift', 72000000.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(34, 'Kesling', 113196720.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(35, 'Lab', 1402730000.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(36, 'Modal', 484456000.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(37, 'Susu', 0.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(38, 'Cetakan', 273300000.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(39, 'BBM', 0.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(40, 'ATK', 341710900.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(41, 'Alat Kebersihan', 262241500.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(42, 'Bahan Kebersihan', 0.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(43, 'PMT', 0.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(44, 'ART', 177117960.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(45, 'Pemeliharaan Alkes', 392350000.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(46, 'Pemeliharaan AC', 68400000.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(47, 'Pemeliharaan Komputer', 0.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(48, 'APAR', 20105600.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(49, 'Pemeliharaan KDO', 140000000.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(50, 'Limbah', 114000000.00, '2025', '2025-08-25 18:34:30', '2025-08-25 18:34:30'),
(51, 'Sewa Epuskesmas', 132000000.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(52, 'Obat', 1160075095.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(53, 'Alkes Extracomb', 478101892.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(54, 'Alkes Habis Pakai', 1652463610.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(55, 'Pemeliharaan Gedung', 208000000.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(56, 'Kalibarasi Alkes', 0.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(57, 'Sewa Mesin Fotocopy', 87600000.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(58, 'Sewa Lift', 72000000.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(59, 'Kesling', 113196720.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(60, 'Lab', 1402730000.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(61, 'Modal', 484456000.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(62, 'Susu', 0.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(63, 'Cetakan', 273300000.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(64, 'BBM', 0.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(65, 'ATK', 341710900.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(66, 'Alat Kebersihan', 262241500.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(67, 'Bahan Kebersihan', 0.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(68, 'PMT', 0.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(69, 'ART', 177117960.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(70, 'Pemeliharaan Alkes', 392350000.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(71, 'Pemeliharaan AC', 68400000.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(72, 'Pemeliharaan Komputer', 0.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(73, 'APAR', 20105600.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(74, 'Pemeliharaan KDO', 140000000.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32'),
(75, 'Limbah', 114000000.00, '2025', '2025-09-29 22:53:32', '2025-09-29 22:53:32');

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
(4, '2025_09_30_130347_create_categories_table', 2),
(5, '2025_09_30_135453_create_tbl_permintaans_table', 3),
(7, '2025_09_30_142644_add_status_to_tbl_permintaans_table', 4),
(8, '2025_09_30_144358_create_permintaan_details_table', 5);

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9VG85gImwbB6eiHb8EldZusVOv112aTDNOTcpLYs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHV4Y3h2RWtiTXZQVHI4ZFZON0dFRFJIeUZDT2liVVpXYUpTUmhlMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759235166),
('VTtEjCcq0RT9uKmnlYbcJZJUOzpT2NWEqeErDVZf', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiWWxmdHdiUUdqYlluYzRYTVVQcTVJRjEwT2g0c2NGdkxKNzJaUVhsNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wZXJtaW50YWFucyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRrYkNkWEg2U3RNZlcweDB1bVZoT3ZPZ28uS0YuNTljN1R3VE9HelZZREdNYnlQUloyT3l1SyI7czo2OiJ0YWJsZXMiO2E6NDp7czo0MDoiZGRjMWQwOGViZWZhNjUyMjkwM2FiMWYzN2MzY2I4YWNfY29sdW1ucyI7YTo0OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MjoiaWQiO3M6NToibGFiZWwiO3M6MjoiSWQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEzOiJuYW1hX2thdGVnb3JpIjtzOjU6ImxhYmVsIjtzOjQ6Ik5hbWEiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6InBhZ3UiO3M6NToibGFiZWwiO3M6NDoicGFndSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTQ6InRhaHVuX2FuZ2dhcmFuIjtzOjU6ImxhYmVsIjtzOjEyOiJUaG4gQW5nZ2FyYW4iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9fXM6NDE6ImRkYzFkMDhlYmVmYTY1MjI5MDNhYjFmMzdjM2NiOGFjX3Blcl9wYWdlIjtzOjI6IjEwIjtzOjQwOiJiZTk0YWRmMmY5NDIyZTIxMGM4ZTg1OTk3NjJlZjkzOV9jb2x1bW5zIjthOjg6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoyOiJpZCI7czo1OiJsYWJlbCI7czoyOiJJZCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NzoidGFuZ2dhbCI7czo1OiJsYWJlbCI7czo3OiJUYW5nZ2FsIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo4OiJub19zdXJhdCI7czo1OiJsYWJlbCI7czo4OiJObyBTdXJhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6OToicHVza2VzbWFzIjtzOjU6ImxhYmVsIjtzOjk6IlB1c2tlc21hcyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NjoiYmFnaWFuIjtzOjU6ImxhYmVsIjtzOjY6IkJhZ2lhbiI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjU7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTI6Im5hbWFfcGVtb2hvbiI7czo1OiJsYWJlbCI7czoxMjoiTmFtYSBQZW1vaG9uIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNDoidGFodW5fYW5nZ2FyYW4iO3M6NToibGFiZWwiO3M6MTQ6IlRhaHVuIEFuZ2dhcmFuIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo2OiJzdGF0dXMiO3M6NToibGFiZWwiO3M6NjoiU3RhdHVzIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fX1zOjQwOiJiZTk0YWRmMmY5NDIyZTIxMGM4ZTg1OTk3NjJlZjkzOV9maWx0ZXJzIjthOjI6e3M6MTQ6InRhaHVuX2FuZ2dhcmFuIjthOjE6e3M6NToidmFsdWUiO3M6NDoiMjAyNSI7fXM6Njoic3RhdHVzIjthOjE6e3M6NToidmFsdWUiO047fX19czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1759246442);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permintaans`
--

CREATE TABLE `tbl_permintaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `puskesmas` varchar(255) NOT NULL,
  `bagian` varchar(255) NOT NULL,
  `nama_pemohon` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tahun_anggaran` varchar(255) NOT NULL,
  `status` enum('Draft','Diproses','Selesai') NOT NULL DEFAULT 'Draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_permintaans`
--

INSERT INTO `tbl_permintaans` (`id`, `tanggal`, `no_surat`, `puskesmas`, `bagian`, `nama_pemohon`, `user_id`, `tahun_anggaran`, `status`, `created_at`, `updated_at`) VALUES
(1, '2021-10-08', 'AF50-110-002', 'PKC Cilincing', 'Umum', 'Arif Rahman', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(2, '2021-10-08', 'AF50-110-003', 'PKC Cilincing', 'Umum', 'Rara Purbasari', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(3, '2021-10-08', 'AF50-110-006', 'PKC Cilincing', 'Gigi', 'Dr Tiwie', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(4, '2021-10-11', 'A009-2002991', 'PKM Kalibaru', 'Farmasi', 'Umi Kulsum', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(6, '2021-10-12', 'KI520-0220', 'Rorotan', 'Umum', 'Cismanto', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(7, '2021-12-07', '12500', 'PKC Cilincing', 'Umum', 'Arif Rahman', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(8, '2021-12-08', 'abcbv-001', 'PKC Cilincing', 'Umum', 'Arif Rahman', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(9, '2021-12-13', 'POA-9230', 'PKC Cilincing', 'Umum', 'Arif Rahman', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(11, '2021-12-22', '252/58622/02', 'Kel Marunda', 'Umum', 'Budi Suwandaru', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(13, '2021-12-23', '2020-088-21.36', 'PKC Cilincing', 'Alkes', 'Eka Ayu S', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(14, '2021-12-27', '2012/1520/1.10', 'PKC Cilincing', 'Umum', 'Arif Rahman', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(15, '2022-01-05', '123', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(16, '2022-01-06', '520110', 'PKM Rorotan', 'Loket', 'Cismanto', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(18, '2022-01-09', '205/2566.360', 'Kalibaru', 'Lab', 'Santoso', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(19, '2022-01-09', '0218/026.63', 'PKL Sukapura', 'Loket', 'Egy', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(21, '2022-01-12', '12536.0255', 'PKL Sukapura', 'Lab', 'Ade', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(22, '2022-01-12', '562.0266/750.121', 'Semper Barat 1', 'Loket', 'Yuswanto', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(24, '2022-01-14', '60', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(25, '2022-01-14', '63', 'pkc cilincing', 'PPI', 'drg bekti pratiwi', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(26, '2022-01-11', '47', 'pkc cilincing', 'PPI', 'drg bekti pratiwi', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(28, '2022-01-05', '3', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(29, '2022-01-06', '4', 'PKC Cilincing', 'Alkes', 'Tuti', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(32, '2022-01-25', '127', 'PKC Cilincing', 'PPI', 'drg. Bekti Pratiwi', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(34, '2022-01-26', '131', 'pkc cilincing', 'PPI', 'drg bekti pratiwi', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(36, '2022-01-07', '6', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(38, '2022-01-04', '3-1', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(39, '2022-02-02', '200', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(40, '2022-02-07', '228', 'pkc cilincing', 'pjbarang ', 'Khamim', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(44, '2022-02-08', '230', 'PKC Cilincing', 'Pengurus Barang', 'Riayana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(46, '2022-02-10', '242', 'PKC Cilincing', 'Kesling', 'Tamyiz', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(47, '2022-02-10', '247', 'PKC Cilincing', 'Kesling', 'Tamyiz', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(48, '2022-01-05', '5', 'PKC Cilincing', 'Riyana', 'Pengurus Barang', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(49, '2022-01-05', '7', 'PKL Kalibaru', 'RB', 'Binti', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(50, '2022-01-25', '202', 'PKC Cilincing', 'IT', 'Didik', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(52, '2022-02-22', '301', 'marunda, kalibaru, sb2, cilinc', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(53, '2022-02-15', '302', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(54, '2022-02-16', '273', 'PKC Cilincing', 'IT', 'Didik', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(55, '2022-01-20', '57', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(56, '2022-02-02', '123-1', 'PKC Cilincing', 'Rumah Tangga', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(58, '2022-03-08', '395', 'rorotan', 'PJ Barang', 'cismanto', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(59, '2022-03-02', '350', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(61, '2022-03-01', '350-1', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(62, '2022-02-10', '279', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(65, '2022-03-14', '439', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(66, '2022-03-24', '439-1', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(67, '2022-03-14', '439-2', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(70, '2022-04-03', '555', 'PKL Rorotan', 'Pemeliharaan', 'Yuswanto', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(71, '2022-03-14', '438', 'PKC Cilincing', 'Pemeliharaan CCTV Ibu Indri', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(72, '2022-03-14', '423', 'PKC Cilincing', 'Pemeliharaan PKC RRT SKP CIL1 ', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(74, '2022-04-06', '700', 'PKL Kalibaru', 'Pemeliharaan Genset', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(82, '2022-04-06', '724', 'pkc cilincing', 'PJ Barang', 'Khamim', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(88, '2022-03-16', '550', 'PKC Cilincing', 'Pengurus Barang', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(90, '2022-05-10', '9/5/2021', 'pkc cilincing', 'kesling', 'tamyiz', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(91, '2022-05-10', '956', 'pkc cilincing', 'pengurus barang ', 'Khamim', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(92, '2022-03-01', '123-2', 'PKC Cilincing', 'Farmasi KF Maret', 'Ade Fitri Yulis', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(93, '2022-05-10', '980', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(97, '2022-05-09', '898', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(98, '2022-05-16', '900', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(99, '2022-05-24', '1024', 'PKC Cilincing', 'Rumah Tangga', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(100, '2022-06-01', '1026', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(101, '2022-06-01', '1059', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(102, '2022-05-25', '1068', 'pkc cilincing', 'PPI', 'drg bekti pratiwi', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(103, '2022-04-20', '790', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(106, '2022-06-13', '1186', 'pkc cilincing', 'PJ Barang', 'Khamim', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(107, '2022-06-13', '1187', 'pkc cilincing', 'PJ Barang', 'Khamim', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(108, '2022-05-20', '1012', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(109, '2022-05-20', '1013', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(110, '2022-06-08', '1181', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(111, '2022-06-08', '1181-1', 'PKC Cilincing', 'Rumah Tangga', 'Riayana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(112, '2022-06-10', '1549', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(113, '2022-07-01', '1269', 'PKC Cilincing', 'Rumah Tangga', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(114, '2022-07-05', '1579', 'pkc cilincing', 'PJ Barang', 'Khamim', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(115, '2022-07-06', '1679', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(117, '2022-07-08', '1606', 'pkc cilincing', 'PJ Barang', 'Khamim', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(123, '2022-08-07', '1606 b', 'pkc cilincing', 'PJ Barang', 'Khamim', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(126, '2022-09-01', '2909', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(127, '2022-09-01', '1889', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(128, '2022-09-01', '2345', 'PKC Cilincing', 'Pengurus Barang', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(129, '2022-09-07', '1987', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(130, '2022-10-01', '2130', 'PKC Cilincing', 'Farmasi Obat Oktober 2022', 'Ade Fitri Yulis', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(131, '2022-09-01', '1968', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(132, '2022-10-10', '2166', 'PKC Cilincing', 'Farmasi Alkes Oktober 2022', 'Ade Fitri Yulis', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(133, '2022-10-01', '1245', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(134, '2022-03-20', '795', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(135, '2022-10-20', '2734', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(136, '2022-09-25', '3290', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(137, '2022-11-06', '2735', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2022', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(141, '2023-01-18', '12500-1', 'PKC Cilincing', 'TU', 'test', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(142, '2023-01-24', '86', 'PKC Cilincing', 'Farmasi Recall', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(143, '2023-01-25', '56', 'PKC Cilincing', 'Rumah Tangga', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(144, '2023-01-25', '57-1', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(145, '2023-01-17', '87', 'PKC Cilincing', 'Farmasi Obat Januari 2023', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(146, '2023-01-17', '87-1', 'PKC Cilincing', 'Farmasi Obat Januari 2023', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(147, '2023-01-17', '87-2', 'PKC Cilincing', 'Farmasi Obat Januari 2023', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(148, '2023-01-30', '172', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(150, '2023-01-30', '10', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(151, '2023-01-30', '11', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(152, '2023-01-19', '95', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(153, '2023-01-30', '10-1', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(154, '2023-01-30', '10-2', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(155, '2023-01-30', '10-3', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(156, '2023-01-30', '10-4', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(157, '2023-02-05', '95-1', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(158, '2023-01-30', '10-5', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(159, '2023-01-30', '10-6', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(160, '2023-01-30', '10-7', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(161, '2023-02-06', '11-1', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(162, '2023-01-25', '11-2', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(163, '2023-01-25', '11-3', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(164, '2023-01-25', '10-8', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(165, '2023-01-25', '10-9', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(166, '2023-01-30', '10-10', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(167, '2023-01-25', '11-4', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(168, '2023-01-30', '170', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(169, '2023-01-25', '10-11', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(170, '2023-01-30', '01', 'PKC Cilincing', 'Kesling', 'nisa', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(171, '2023-01-30', '11-5', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(172, '2023-01-30', '170-1', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(173, '2023-01-30', '172-1', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(174, '2023-01-17', '92', 'PKC Cilincing', 'PPI', 'drg. Bekti Pratiwi', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(175, '2023-01-30', '10-12', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(176, '2023-01-30', '11-6', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(177, '2023-01-30', '11-7', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(178, '2023-01-19', '11-8', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(179, '2023-01-30', '10-13', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(180, '2023-01-25', '10-14', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(181, '2023-01-25', '10-15', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(182, '2023-01-25', '11-9', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(183, '2023-01-25', '11-10', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(184, '2023-01-30', '10-16', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(185, '2023-01-30', '10-17', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(186, '2023-01-30', '11-11', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(187, '2023-01-30', '11-12', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(188, '2023-01-30', '11-13', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(189, '2023-01-30', '10-18', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(190, '2023-02-01', '15', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(192, '2023-01-30', '10-19', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(193, '2023-01-30', '11-14', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(194, '2023-01-30', '11-15', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(196, '2023-01-30', '11-16', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(197, '2023-01-30', '10-20', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(198, '2023-01-25', '10-21', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(199, '2023-02-20', '313', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(200, '2023-01-25', '10-22', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(201, '2023-01-30', '10-23', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(202, '2023-01-25', '10-24', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(203, '2023-01-25', '10-25', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(204, '2023-02-02', '213', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(205, '2023-01-30', '30', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(206, '2022-01-30', '10-26', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(207, '2023-01-31', '10-27', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:24', '2025-08-25 22:00:24'),
(208, '2023-01-25', '10-28', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(209, '2023-01-30', '11-17', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(210, '2023-01-22', '330', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(211, '1969-12-31', '11-18', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(212, '2022-01-25', '11-19', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(213, '2023-01-25', '11-20', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(214, '2023-01-25', '11-21', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(215, '2023-01-25', '11-22', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(216, '2023-03-06', '88', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(217, '2023-01-17', '88-1', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(218, '2023-01-17', '88-2', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(219, '2023-01-17', '87-3', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(220, '2023-01-17', '87-4', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(221, '2023-03-01', '87-5', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(222, '2023-01-02', '01-1', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(223, '2023-01-05', '31', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(224, '2023-01-16', '45', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(225, '2023-01-05', '23', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(226, '2023-02-16', '307', 'PKC Cilincing', 'PPI', 'drg tiwi', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(227, '2023-02-01', '00', 'PKC Cilincing', 'Kesling', 'NISA', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(228, '2023-03-04', '446', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(229, '2023-01-17', '87-6', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(230, '2023-02-01', '00-1', 'PKC Cilincing', 'Pemeliharaan', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(231, '2023-03-01', '00-2', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(232, '2023-01-17', '87-7', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(233, '2023-02-06', '00-3', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(234, '2023-03-01', '00-4', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(235, '2023-03-01', '00-5', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(236, '2023-01-30', '00-6', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(237, '2023-01-17', '87-8', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(238, '2023-03-13', '510', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(239, '2023-03-03', '446-1', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(240, '2023-03-03', '446-2', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(241, '2023-02-01', '00-7', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(242, '2023-02-10', '00-8', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(243, '2023-03-03', '447', 'PKC Cilincing', 'gizi ukm', 'Masliani', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(244, '2023-02-27', '00-9', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(245, '2023-02-01', '00-10', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(246, '2023-03-13', '510-1', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(247, '2023-03-20', '00-11', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(248, '2023-01-02', '00-12', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(249, '2023-03-17', '510-2', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(250, '2023-03-17', '510-3', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(251, '2023-02-08', '00-13', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(252, '2023-03-13', '522', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(253, '2023-03-13', '522-1', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(254, '2023-03-13', '510-4', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(255, '2023-03-13', '522-2', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(256, '2023-02-01', '10-29', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(257, '2023-03-17', '522-3', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(258, '2023-03-17', '522-4', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(259, '2023-03-17', '522-5', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(260, '2023-02-27', '00-14', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(261, '2023-03-01', '00-15', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(262, '2023-03-13', '510-5', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(263, '2023-03-13', '510-6', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(264, '2023-03-08', '00-16', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(265, '2023-03-17', '510-7', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(266, '2023-03-17', '510-8', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(267, '2023-03-13', '510-9', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(268, '2023-03-13', '510-10', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(269, '2023-03-28', '522-6', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(270, '2023-02-20', '00-17', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(271, '2023-03-13', '510-11', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(272, '2023-03-17', '522-7', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(273, '2023-02-22', '328', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(274, '2023-02-22', '379', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(275, '2023-02-23', '00-18', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(276, '2023-03-13', '510-12', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(277, '2023-03-10', '00-19', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(278, '2023-03-04', '446-3', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(279, '2023-03-13', '522-8', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(280, '2023-03-13', '522-9', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(281, '2023-03-13', '546', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(282, '2023-04-13', '546-1', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(283, '2023-01-25', '00-20', 'PKC Cilincing', '', '', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(284, '2023-03-10', '00-21', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(285, '2023-03-13', '510-13', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(286, '2023-02-10', '00-22', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(287, '2023-03-13', '510-14', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(288, '2023-03-13', '522-10', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(289, '2023-03-13', '510-15', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(290, '2023-03-13', '510-16', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(291, '2023-03-13', '510-17', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(292, '2023-03-30', '00-23', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(293, '2023-03-13', '522-11', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(294, '2023-03-13', '510-18', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(295, '2023-03-13', '522-12', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(296, '2023-03-13', '510-19', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(297, '2023-03-13', '510-20', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(298, '2023-03-13', '520', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(299, '2023-03-13', '510-21', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(300, '2023-03-13', '510-22', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(301, '2023-04-03', '00-24', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(302, '2023-03-13', '510-23', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(303, '2022-12-29', '00-25', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(304, '2023-01-30', '00-26', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(305, '2023-02-28', '00-27', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(306, '2023-03-13', '510-24', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(307, '2023-03-13', '510-25', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(308, '2023-03-13', '510-26', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(309, '2023-03-13', '510-27', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(310, '2023-03-13', '510-28', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(311, '2023-04-04', '643', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(312, '2023-02-01', '00-28', 'PKC Cilincing', 'gizi ukm', 'Masliani', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(313, '2023-03-13', '510-29', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(314, '2023-04-03', '00-29', 'PKC Cilincing', 'UKM', 'dr. Eva Sonatalia', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(315, '2023-04-03', '00-30', 'PKC Cilincing', 'khamim', 'dr. Yesica', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(316, '2023-04-05', '00-31', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(317, '2023-04-05', '00-32', 'PKC Cilincing', 'Rumah Tangga', '', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(318, '2023-04-27', '816', 'PKC Cilincing', 'Kesling', 'NISA', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(319, '2023-02-27', '00-33', 'PKC Cilincing', 'gizi ukm', 'Masliani', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(320, '2023-04-17', '00-34', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(321, '2023-05-11', '902', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(322, '2023-03-13', '00-35', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(323, '2023-05-18', '00-36', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(324, '2023-05-12', '930', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(325, '2023-05-05', '00-37', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(326, '2023-05-16', '930-1', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(327, '2023-05-16', '930-2', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(328, '2023-05-16', '930-3', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(329, '2023-05-16', '00-38', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(330, '2023-05-16', '00-39', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(331, '2023-05-16', '00-40', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(332, '2023-05-16', '00-41', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(333, '2023-05-16', '00-42', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(334, '2023-05-16', '00-43', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(335, '2023-05-13', '00-44', 'PKC Cilincing', 'Farmasi', 'fieka', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(336, '2023-05-16', '00-45', 'PKC Cilincing', 'Farmasi', 'fieka', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(337, '2023-05-01', '00-46', 'PKC Cilincing', 'Farmasi', 'tyo', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(338, '2023-05-16', '00-47', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(339, '2023-05-16', '00-48', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(340, '2023-05-16', '00-49', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(341, '2023-05-16', '00-50', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(342, '2023-05-19', '00-51', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(343, '2023-05-25', '1044', 'PKC Cilincing', 'UKP', 'dr. Yesica', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(344, '2023-05-25', '1044-1', 'PKC Cilincing', 'UKP', 'dr. Yesica', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(345, '2023-05-10', '00-52', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(346, '2023-05-16', '00-53', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(347, '2023-05-15', '00-54', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(348, '2023-05-16', '00-55', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(349, '2023-05-16', '00-56', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(350, '2023-05-16', '00-57', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(351, '2023-05-16', '00-58', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(352, '2023-03-13', '00-59', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(353, '2023-03-13', '00-60', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(354, '2023-05-16', '00-61', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(355, '2023-05-16', '00-62', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(356, '2023-02-20', '00-63', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(357, '2023-05-16', '00-64', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(358, '2023-05-16', '00-65', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(359, '2023-05-02', '00-66', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(360, '2023-05-02', '00-67', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:25', '2025-08-25 22:00:25'),
(361, '2023-04-01', '00-68', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(362, '2023-04-17', '00-69', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(363, '2023-03-12', '930-4', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(364, '2023-05-12', '930-5', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(365, '2023-05-02', '00-70', 'PKC Cilincing', 'ART', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(366, '2023-05-15', '00-71', 'PKC Cilincing', 'UKP', 'dr. Yesica', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(367, '2023-05-02', '00-72', 'PKC Cilincing', 'ART', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(368, '2023-05-13', '930-6', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(369, '2023-05-13', '930-7', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(370, '2023-05-13', '930-8', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(371, '2023-05-13', '930-9', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(372, '2023-05-12', '930-10', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(373, '2023-05-13', '930-11', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(374, '2023-05-12', '930-12', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(375, '2023-05-13', '930-13', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(376, '2023-05-13', '930-14', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(377, '2023-05-13', '930-15', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(378, '2023-05-13', '930-16', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(379, '2023-05-13', '930-17', 'Puskesmas Kecamatan Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(380, '2023-05-12', '930-18', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(381, '2023-05-12', '930-19', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(382, '2023-05-12', '930-20', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(383, '2023-05-12', '930-21', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(384, '2023-05-12', '930-22', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(385, '2023-05-12', '930-23', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(386, '2023-05-12', '930-24', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(387, '2023-05-12', '930-25', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(388, '2023-05-12', '930-26', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(389, '2023-05-13', '930-27', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(390, '2023-05-13', '930-28', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(391, '2023-05-13', '930-29', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(392, '2023-06-01', '00-73', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(393, '2023-05-12', '930-30', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(394, '2023-05-12', '930-31', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(395, '2023-05-13', '930-32', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(396, '2023-06-05', '1106', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(397, '2023-05-13', '00-74', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(399, '2023-06-01', '00-75', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(400, '2023-06-01', '00-76', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(401, '2023-05-12', '930-33', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(402, '2023-06-02', '00-77', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(403, '2023-05-12', '930-34', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(404, '2023-05-12', '930-35', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(405, '2023-05-12', '930-36', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(406, '2023-05-12', '930-37', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(407, '2023-05-12', '930-38', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(408, '2023-05-12', '930-39', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(409, '2023-05-12', '930-40', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(410, '2023-05-12', '930-41', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(411, '2023-05-12', '930-42', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(412, '2023-05-12', '930-43', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(413, '2023-05-12', '930-44', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(414, '2023-05-12', '930-45', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(415, '2023-05-12', '930-46', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(416, '2023-03-13', '00-78', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(417, '2023-03-13', '00-79', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(418, '2023-01-20', '00-80', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(419, '2023-06-02', '00-81', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26');
INSERT INTO `tbl_permintaans` (`id`, `tanggal`, `no_surat`, `puskesmas`, `bagian`, `nama_pemohon`, `user_id`, `tahun_anggaran`, `status`, `created_at`, `updated_at`) VALUES
(420, '2023-03-13', '00-82', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(421, '1969-12-31', '00-83', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(422, '2023-05-12', '930-47', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(423, '2023-05-12', '930-48', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(424, '2023-05-12', '930-49', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(425, '2023-05-12', '930-50', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(426, '2023-03-15', '00-84', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(427, '2023-05-12', '930-51', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(428, '2023-06-16', '00-85', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(429, '2023-06-02', '00-86', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(430, '2023-06-02', '00-87', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(431, '2023-05-12', '930-52', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(432, '2023-05-12', '930-53', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(433, '2023-05-12', '930-54', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(434, '2023-05-12', '930-55', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(435, '2023-05-12', '930-56', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(436, '2023-07-04', '00-88', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(437, '2023-05-13', '930-57', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:26', '2025-08-25 22:00:26'),
(438, '2023-05-17', '00-89', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(439, '2023-06-23', '00-90', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(440, '2023-06-23', '00-91', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(441, '2023-05-13', '930-58', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(442, '2023-04-03', '00-92', 'PKC Cilincing', 'Pemeliharaan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(443, '2023-05-26', '00-93', 'PKC Cilincing', 'Farmasi', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(444, '2023-05-13', '00-94', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(445, '2023-04-25', '00-95', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(446, '2023-06-05', '00-96', 'PKC Cilincing', 'ART', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(447, '2023-06-09', '00-97', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(448, '2023-06-26', '00-98', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(449, '2023-05-02', '00-99', 'PKC Cilincing', 'Pemeliharaan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(450, '2023-07-03', '00-100', 'PKC Cilincing', 'Kesehatan Anak', 'Hayati', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(451, '2023-07-06', '1360', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(452, '2023-05-02', '00-101', 'PKC Cilincing', 'Pemeliharaan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(453, '2023-04-28', '00-102', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(454, '2023-06-05', '00-103', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(455, '1969-12-31', '00-104', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(456, '2023-07-05', '1347', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(457, '2023-07-05', '1347-1', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(458, '2023-07-06', '1360-1', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(459, '2023-07-04', '1347-2', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(460, '2023-07-04', '1347-3', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(461, '2023-07-14', '1347-4', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(462, '2023-07-04', '00-105', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(463, '2023-07-04', '1347-5', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(464, '2023-07-04', '1347-6', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(465, '2023-07-04', '2347', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(466, '2023-07-04', '1347-7', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(467, '2023-07-04', '1347-8', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(468, '2023-07-04', '1347-9', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(469, '2023-06-23', '1360-2', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(470, '2023-06-20', ' 00', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(471, '2023-06-20', '00-106', 'PKC Cilincing', 'Farmasi', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(473, '2023-07-05', '00-107', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(474, '2023-07-04', '1347-10', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(475, '2023-07-04', '1347-11', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(476, '2023-07-04', '1347-12', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(477, '2023-07-04', '1347-13', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(478, '2023-07-04', '1347-14', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(479, '2023-07-04', '1347-15', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(480, '2023-07-04', '1347-16', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(481, '2023-07-04', '1347-17', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(482, '2023-07-04', '1347-18', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(483, '2023-07-04', '1347-19', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(484, '2023-07-04', '1347-20', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(485, '2023-07-03', '00-108', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(486, '2023-07-04', '1347-21', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(487, '2023-07-18', '1447', 'PKC Cilincing', 'Farmasi', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(488, '2023-07-28', '1447-1', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(489, '2023-07-04', '1347-22', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(490, '2023-06-23', '1360-3', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(491, '2023-07-04', '1347-23', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(492, '2023-07-04', '1347-24', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(493, '2023-07-04', '1347-25', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(494, '2023-07-04', '1347-26', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(495, '2023-06-28', '1360-4', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(496, '2023-07-04', '1347-27', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(497, '2023-07-04', '1347-28', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(498, '2023-08-06', '00-109', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(499, '2023-07-04', '1347-29', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(500, '2023-07-04', '1347-30', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(501, '2023-07-04', '1347-31', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(502, '2023-07-04', '00-110', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(503, '2023-05-03', '00-111', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(504, '2023-07-04', '1347-32', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(505, '2023-07-21', '00-112', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(506, '2023-07-21', '00-113', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(507, '2023-07-21', '00-114', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(508, '2023-08-21', '00-115', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(510, '2023-07-18', '00-116', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(511, '2023-06-23', '1360-5', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(512, '2023-06-23', '1360-6', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(513, '2023-06-23', '1360-7', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(514, '2023-07-04', '1347-33', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(515, '2023-07-04', '1360-8', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(516, '2023-07-04', '1347-34', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(517, '2023-08-03', '00-117', 'PKC Cilincing', 'Pemeliharaan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(519, '2023-07-04', '1347-35', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(520, '2023-07-04', '1347-36', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(521, '2023-07-04', '1347-37', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(526, '2023-03-13', '00-118', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(530, '2023-08-09', '1662', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(531, '2023-08-09', '1662-1', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(532, '2023-08-09', '1662-2', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(533, '2023-07-04', '1347-38', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(534, '2023-07-04', '1347-39', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(535, '2023-06-23', '1360-9', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:27', '2025-08-25 22:00:27'),
(536, '2023-07-03', '00-119', 'PKC Cilincing', 'Kesling', 'NISA ul aqilah', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(537, '2023-08-09', '1662-3', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(538, '2023-08-09', '1662-4', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(539, '2023-08-09', '1662-5', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(540, '2023-08-09', '1662-6', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(541, '2023-08-09', '1662-7', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(542, '2023-08-09', '1662-8', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(543, '2023-08-03', '1616', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(544, '2023-08-09', '1662-9', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(545, '2023-08-13', '00-120', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(546, '2023-07-11', '00-121', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(547, '2023-08-22', '1731', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(548, '2023-08-28', '1347-40', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(549, '2023-07-11', '00-122', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(550, '2023-08-11', '00-123', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(551, '2023-08-11', '00-124', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(552, '2023-08-22', '1731-1', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(553, '2023-08-04', '00-125', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(554, '2023-07-01', '00-126', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(555, '2023-08-01', '00-127', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(556, '2023-08-18', '00-128', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(557, '2023-08-01', '00-129', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(558, '2023-08-30', '1731-2', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(559, '2023-08-01', '00-130', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(560, '2023-08-22', '1731-3', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(561, '2023-08-22', '1731-4', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(562, '2023-08-22', '1731-5', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(563, '2023-08-01', '00-131', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(564, '2023-08-01', '00-132', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(565, '2023-07-04', '1347-41', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(566, '2023-07-04', '1347-42', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(567, '2023-08-24', '00-133', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(568, '2023-08-22', '1731-6', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(569, '2023-07-04', '1347-43', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(570, '2023-07-04', '1347-44', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(571, '2023-07-04', '1347-45', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(572, '1969-12-31', '00-134', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(573, '2023-08-28', '1785', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(574, '2023-03-10', '00-135', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(575, '2023-08-27', '1731-7', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(576, '2023-08-22', '1731-8', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(577, '2023-08-01', '00-136', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(578, '2023-07-06', '1347-46', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(579, '2023-08-22', '1731-9', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(580, '2023-08-22', '1731-10', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(581, '2023-07-04', '1731-11', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(582, '2023-06-05', '00-137', 'PKC Cilincing', 'Pemeliharaan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(583, '2023-06-02', '00-138', 'PKC Cilincing', 'Pemeliharaan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(584, '2023-04-03', '00-139', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(585, '2023-04-03', '00-140', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(586, '2023-07-01', '00-141', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(587, '2023-06-09', '00-142', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(588, '2023-06-01', '00-143', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(589, '2023-06-01', '00-144', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(590, '2023-06-01', '00-145', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(591, '2023-07-01', '00-146', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(592, '2023-07-01', '00-147', 'PKC Cilincing', 'Pemeliharaan alkes', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:28', '2025-08-25 22:00:28'),
(593, '2023-06-01', '00-148', 'PKC Cilincing', 'Pemeliharaan alkes', 'yulmai', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(594, '2023-08-25', '00-149', 'PKC Cilincing', 'ART', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(595, '2023-09-01', '00-150', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(596, '2023-08-28', '00-151', 'PKC Cilincing', 'Kesling', 'NISA ul aqilah', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(597, '2023-08-22', '1731-12', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(598, '2023-08-22', '1731-13', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(599, '2023-09-11', '1916', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(600, '2023-09-11', '1916-1', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(601, '2023-09-11', '1961', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(602, '2023-09-11', '00-152', 'PKC Cilincing', 'Kesling', 'NISA ul aqilah', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(603, '2023-08-22', '1347-47', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(604, '2023-08-22', '1347-48', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(605, '2023-08-11', '00-153', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(606, '2023-08-22', '1731-14', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(607, '2023-09-11', '1731-15', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(608, '2023-09-11', '1731-16', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(609, '2023-09-11', '1731-17', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(610, '2023-09-11', '1731-18', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(611, '2023-09-11', '1731-19', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(612, '2023-09-11', '1731-20', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(613, '2023-09-12', '1731-21', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(614, '2023-09-11', '1731-22', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(615, '2023-09-11', '1731-23', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(616, '2023-09-01', '00-154', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(617, '2023-08-22', '1731-24', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(618, '2023-09-11', '1916-2', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(619, '2023-09-11', '1916-3', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(620, '2023-09-11', '1916-4', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(621, '2023-09-11', '1916-5', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(622, '2023-08-22', '1731-25', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(623, '2023-09-11', '1916-6', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(624, '2023-09-11', '1916-7', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(625, '2023-08-25', '00-155', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(626, '2023-09-11', '1916-8', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(627, '2023-08-22', '1731-26', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(630, '2023-09-01', '00-156', 'PKC Cilincing', 'cetakan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(631, '2023-09-01', '00-157', 'PKC Cilincing', 'Kebersihan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(632, '2023-08-22', '1347-49', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(633, '2023-09-20', '1982', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(634, '2023-09-25', '00-158', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(635, '2023-08-22', '1347-50', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(636, '2023-08-22', '1347-51', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(637, '2023-09-11', '00-159', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(638, '2023-08-22', '1347-52', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(639, '2023-07-01', '00-160', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(641, '2023-09-25', '00-161', 'PKC Cilincing', 'gizi', 'Masliani', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(642, '2023-10-02', '00-162', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(643, '2023-09-11', '00-163', 'PKC Cilincing', 'Kebersihan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(644, '2023-08-22', '1347-53', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(645, '2023-09-18', '00-164', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(646, '2023-10-05', '00-165', 'PKC Cilincing', 'Farmasi', '', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(647, '2023-08-22', '1731-27', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(648, '2023-10-05', '00-166', 'PKC Cilincing', 'Pemeliharaan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(649, '2023-08-22', '1347-54', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(650, '2023-07-05', '00-167', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(651, '2023-09-02', '00-168', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(652, '2023-10-19', '00-169', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:29', '2025-08-25 22:00:29'),
(653, '2023-07-03', '00-170', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(654, '2023-08-22', '1347-55', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(655, '2023-09-05', '00-171', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(656, '2023-09-05', '00-172', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(657, '2023-07-03', '00-173', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(658, '2023-09-05', '00-174', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(659, '2023-10-02', '00-175', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(661, '2023-08-22', '1347-56', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(662, '2023-10-12', '00-176', 'PKC Cilincing', 'Pemeliharaan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(663, '2023-10-06', '00-177', 'PKC Cilincing', 'Kesling', 'NISA ul aqilah', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(664, '2023-10-02', '00-178', 'PKC Cilincing', 'UKP', 'drg.yesika', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(665, '2023-10-02', '00-179', 'PKC Cilincing', 'Pemeliharaan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(666, '2023-10-05', '00-180', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(667, '2023-10-05', '00-181', 'PKC Cilincing', 'ART', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(668, '2023-09-08', '00-182', 'PKC Cilincing', 'Pemeliharaan alkes', 'yulmai', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(669, '2023-08-11', '00-183', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(670, '2023-10-20', '2161', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(671, '2023-09-01', '00-184', 'PKC Cilincing', 'Pemeliharaan alkes', 'yulmai', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(672, '2023-09-11', '00-185', 'PKC Cilincing', 'Pemeliharaan alkes', 'yulmai', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(673, '2023-10-27', '00-186', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(675, '2023-09-14', '00-187', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(676, '2023-11-02', '2285', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(677, '2023-09-20', '00-188', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(678, '2023-10-25', '00-189', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(679, '2023-11-01', '2276', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:30', '2025-08-25 22:00:30'),
(680, '2023-10-25', '00-190', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(681, '2023-10-24', '00-191', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(682, '2023-10-20', '2161-1', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(683, '2023-10-10', '00-192', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(684, '2023-09-29', '00-193', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(685, '2023-11-01', '2276-1', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(686, '2023-11-01', '2276-2', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(687, '2023-11-01', '2276-3', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(688, '2023-11-01', '2276-4', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(689, '2023-11-01', '2276-5', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(690, '2023-09-01', '00-194', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(691, '2023-11-01', '2276-6', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(692, '2023-11-01', '2276-7', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(693, '2023-10-30', '00-195', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(695, '2023-10-25', '00-196', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(696, '2023-11-01', '00-197', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(697, '2023-10-30', '00-198', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(698, '2023-11-01', '00-199', 'PKC Cilincing', 'RKebersihan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(699, '2023-11-03', '00-200', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(700, '2023-11-02', '00-201', 'PKC Cilincing', 'cetakan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(701, '2023-01-02', '00-202', 'PKC Cilincing', 'Farmasi', 'Ade Fitri Yulis', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(702, '2023-11-01', '00-203', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(703, '2023-11-01', '2276-8', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(704, '2023-10-17', '00-204', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(705, '2023-11-01', '2276-9', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(706, '2023-11-01', '2276-10', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(707, '2023-11-01', '2276-11', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(708, '2023-11-01', '2276-12', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(709, '2023-10-25', '00-205', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(710, '2023-11-01', '2276-13', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(711, '2023-11-01', '2276-14', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(712, '2023-11-01', '2276-15', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(713, '2023-11-19', '00-206', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(714, '2023-11-01', '2276-16', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:31', '2025-08-25 22:00:31'),
(715, '2023-11-01', '2276-17', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(716, '2023-11-09', '00-207', 'PKC Cilincing', 'Farmasi', 'fieka  ', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(717, '2023-11-01', '2276-18', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(718, '2023-11-01', '2276-19', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(719, '2023-11-23', '2410', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(720, '2023-11-01', '2276-20', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(721, '2023-11-01', '2276-21', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(722, '2023-11-01', '2276-22', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(723, '2023-11-01', '2276-23', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(724, '2023-11-17', '00-208', 'PKC Cilincing', 'gizi', 'Masliani', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(725, '2023-11-17', '00-209', 'PKC Cilincing', 'Gizi', 'Masliani', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(726, '2023-10-25', '00-210', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(727, '2023-11-22', '00-211', 'PKC Cilincing', 'Pemeliharaan alkes', 'yulmai', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(728, '2023-11-29', '00-212', 'PKC Cilincing', 'ATK', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(729, '2023-11-01', '2276-24', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(730, '2023-11-01', '2276-25', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(731, '2023-12-06', '2276-26', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(732, '2023-11-20', '00-213', 'PKC Cilincing', 'gizi ukm', 'Masliani', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(733, '2023-12-01', '00-214', 'PKC Cilincing', 'cetakan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(734, '2023-12-01', '00-215', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(735, '2023-12-01', '00-216', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(736, '2023-12-01', '00-217', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(737, '2023-12-01', '00-218', 'PKC Cilincing', 'Rumah Tangga', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(738, '2023-11-01', '2276-27', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(739, '2023-09-08', '00-219', 'PKC Cilincing', 'Pemeliharaan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(740, '2023-12-20', '00-220', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(741, '2023-11-22', '00-221', 'PKC Cilincing', 'Rumah Tangga', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(742, '2023-11-01', '00-222', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(743, '2023-12-20', '00-223', 'PKC Cilincing', 'IT', '', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(744, '2023-12-01', '00-224', 'PKC Cilincing', 'Pemeliharaan', 'yulmai', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(745, '2023-12-20', '00-225', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:32', '2025-08-25 22:00:32'),
(746, '2023-12-20', '00-226', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(747, '2023-12-20', '00-227', 'PKC Cilincing', 'Pemeliharaan alkes', 'yulmai', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(748, '2023-04-28', '00-228', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(749, '2023-12-21', '00-229', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(750, '2023-12-21', '00-230', 'PKC Cilincing', 'IT', '', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(751, '2023-12-21', '00-231', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(752, '2023-12-21', '00-232', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(753, '2023-12-21', '00-233', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(754, '2023-12-21', '00-234', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(755, '2023-12-21', '00-235', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(758, '2023-12-21', '00-236', 'PKC Cilincing', 'Kesling', 'Nisa UL', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(759, '2023-12-21', '00-237', 'PKC Cilincing', 'Kesling', 'Nisa UL', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(760, '2023-12-21', '00-238', 'PKC Cilincing', 'Kesling', 'Nisa UL', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(761, '2023-12-21', '00-239', 'PKC Cilincing', 'Kesling', 'Nisa UL', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(762, '2023-11-01', '00-240', 'PKC Cilincing', 'Laboratorium', 'Jaya Sembiring', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(763, '2023-12-21', '00-241', 'PKC Cilincing', 'Kesling', '', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(764, '2023-12-21', '00-242', 'PKC Cilincing', 'Kesling', '', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(765, '2023-12-21', '00-243', 'PKC Cilincing', 'Kesling', '', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(766, '2023-12-21', '00-244', 'PKC Cilincing', 'Kesling', 'Nisa UL', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(767, '2023-12-21', '00-245', 'PKC Cilincing', 'Kesling', 'Nisa UL', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(768, '2023-12-21', '00-246', 'PKC Cilincing', 'Kesling', 'Nisa UL', 1, '2023', 'Draft', '2025-08-25 22:00:33', '2025-08-25 22:00:33'),
(769, '2023-12-21', '00-247', 'PKC Cilincing', 'Kesling', 'Nisa UL', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(770, '2023-12-21', '00-248', 'PKC Cilincing', 'Kesling', 'Nisa UL', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(771, '2023-12-22', '00-249', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(772, '2023-12-26', '00-250', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(773, '2023-12-01', '00-251', 'PKC Cilincing', 'Pemeliharaan', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(774, '2023-12-27', '001', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(775, '2023-12-27', '002', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(776, '2023-12-27', '003', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(777, '2023-12-27', '004', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(778, '2023-12-27', '005', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(780, '2023-12-27', '006', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(781, '2023-12-27', '007', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(782, '2023-12-27', '008', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(783, '2023-12-27', '009', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(784, '2023-12-27', '010', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(785, '2023-12-27', '011', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(786, '2023-12-27', '012', 'PKC Cilincing', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(787, '2023-12-27', '001-1', 'PKL Kalibaru', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(788, '2023-12-27', '002-1', 'PKL Kalibaru', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(789, '2023-12-27', '003-1', 'PKL Kalibaru', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(790, '2023-12-27', '004-1', 'PKL Kalibaru', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(791, '2023-12-27', '005-1', 'PKL Kalibaru', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(794, '2023-12-27', '006-1', 'PKL Kalibaru', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(795, '2023-12-27', '007-1', 'PKL Kalibaru', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(797, '2023-12-27', '008-1', 'PKL Kalibaru', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(798, '2023-12-27', '009-1', 'PKL Kalibaru', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(799, '2023-12-27', '010-1', 'PKL Kalibaru', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(800, '2023-12-27', '011-1', 'PKL Kalibaru', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(801, '2023-12-27', '012-1', 'PKL Kalibaru', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(803, '2023-12-27', '001-2', 'PKL Semper Barat III', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(804, '2023-12-27', '002-2', 'PKL Semper Barat III', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(805, '2023-12-27', '003-2', 'PKL Semper Barat III', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34');
INSERT INTO `tbl_permintaans` (`id`, `tanggal`, `no_surat`, `puskesmas`, `bagian`, `nama_pemohon`, `user_id`, `tahun_anggaran`, `status`, `created_at`, `updated_at`) VALUES
(807, '2023-12-27', '004-2', 'PKL Semper Barat III', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(808, '2023-12-27', '005-2', 'PKL Semper Barat III', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(809, '2023-12-27', '006-2', 'PKL Semper Barat III', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(810, '2023-12-27', '007-2', 'PKL Semper Barat III', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(811, '2023-12-27', '008-2', 'PKL Semper Barat III', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(812, '2023-12-27', '009-2', 'PKL Semper Barat III', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(813, '2023-12-27', '010-2', 'PKL Semper Barat III', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(814, '2023-12-27', '011-2', 'PKL Semper Barat III', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(815, '2023-12-27', '012-2', 'PKL Semper Barat III', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(816, '2023-12-27', '001-3', 'PKL Semper Barat II', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(817, '2023-12-27', '002-3', 'PKL Semper Barat II', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(818, '2023-12-27', '003-3', 'PKL Semper Barat II', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(820, '2023-12-27', '004-3', 'PKL Semper Barat II', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(821, '2023-12-27', '005-3', 'PKL Semper Barat II', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(822, '2023-12-27', '006-3', 'PKL Semper Barat II', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(824, '2023-12-27', '007-3', 'PKL Semper Barat II', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(825, '2023-12-27', '008-3', 'PKL Semper Barat II', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(826, '2023-12-27', '009-3', 'PKL Semper Barat II', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(827, '2023-12-27', '010-3', 'PKL Semper Barat II', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(828, '2023-12-27', '011-3', 'PKL Semper Barat II', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(829, '2023-12-27', '012-3', 'PKL Semper Barat II', 'Pengurus Barang', 'Khamim', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(831, '2023-07-03', '00-252', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(832, '2023-06-22', '00-253', 'PKC Cilincing', 'Pemeliharaan', 'Riyana', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(833, '2023-05-30', '00-254', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(834, '2023-12-02', '10-30', 'Puskesmas Cilincing', 'kesling', 'icha', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(835, '2023-09-04', '00-255', 'PKC Cilincing', 'IT', 'Didik', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(836, '2023-05-01', '00-256', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(837, '2023-08-08', '00-257', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(838, '2023-05-01', '00-258', 'PKC Cilincing', 'Farmasi', 'Fieka Rosa', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(839, '2023-11-20', '00-259', 'PKC Cilincing', 'gizi ukm', 'Masliani', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(840, '2023-11-20', '00-260', 'PKC Cilincing', 'gizi ukm', 'Masliani', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(842, '2023-11-20', '00-261', 'PKC Cilincing', 'gizi ukm', 'Masliani', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(843, '2023-11-20', '00-262', 'PKC Cilincing', 'gizi ukm', 'Masliani', 1, '2023', 'Draft', '2025-08-25 22:00:34', '2025-08-25 22:00:34'),
(844, '2025-08-20', 'AF50-01', 'Puskesmas Cilincing', 'Umum', 'Irma Sulistyawati', 1, '2025', 'Draft', '2025-08-25 23:01:31', '2025-08-25 23:01:31'),
(845, '2025-08-04', '781/KI.03.01', 'Pustu Sukapura', 'Loket', 'Deden Firmansyah', 1, '2025', 'Draft', '2025-08-27 00:35:40', '2025-08-28 20:48:48'),
(846, '2025-09-15', 'PAS1299', 'Pustu Semper Barat 2', 'Loket', 'Rudin', 1, '2025', 'Draft', '2025-09-30 07:15:16', '2025-09-30 07:15:16'),
(847, '2025-09-16', 'LKS124005', 'Pustu Semper Barat 3', 'Loket', 'Supriyono', 1, '2025', 'Draft', '2025-09-30 07:16:24', '2025-09-30 07:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permintaan_details`
--

CREATE TABLE `tbl_permintaan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permintaan_id` bigint(20) UNSIGNED NOT NULL,
  `pembelian_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `nama_barang` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `harga` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 0,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mas Didiek', 'didiekagus87@gmail.com', NULL, '$2y$12$kbCdXH6StMfW0x0umVhOvOgo.KF.59c7TwTOGzVYDGMbyPRZ2OyuK', NULL, '2025-09-30 06:17:19', '2025-09-30 06:17:19');

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
-- Indexes for table `tbl_permintaans`
--
ALTER TABLE `tbl_permintaans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_permintaans_no_surat_unique` (`no_surat`),
  ADD KEY `tbl_permintaans_user_id_foreign` (`user_id`);

--
-- Indexes for table `tbl_permintaan_details`
--
ALTER TABLE `tbl_permintaan_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_permintaan_details_permintaan_id_foreign` (`permintaan_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_permintaans`
--
ALTER TABLE `tbl_permintaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=848;

--
-- AUTO_INCREMENT for table `tbl_permintaan_details`
--
ALTER TABLE `tbl_permintaan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_permintaans`
--
ALTER TABLE `tbl_permintaans`
  ADD CONSTRAINT `tbl_permintaans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_permintaan_details`
--
ALTER TABLE `tbl_permintaan_details`
  ADD CONSTRAINT `tbl_permintaan_details_permintaan_id_foreign` FOREIGN KEY (`permintaan_id`) REFERENCES `tbl_permintaans` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
