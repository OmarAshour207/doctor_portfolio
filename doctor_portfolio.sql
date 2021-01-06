-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 11:27 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`title`)),
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`content`)),
  `author` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`author`)),
  `meta_tag` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta_tag`)),
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `meta_tag`, `image`, `created_at`, `updated_at`) VALUES
(2, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"<p>وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;<\\/p>\",\"en\":\"<p>english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;<\\/p>\"}', '{\"ar\":\"Animi beatae dolore\",\"en\":\"Autem ut laudantium\"}', '{\"ar\":\"Rerum deserunt labor\",\"en\":\"Exercitation quisqua\"}', 'pe6ybrnF67Yno3HN6nhT25JPYoaPuFlwQ1Zb7WC5.png', '2021-01-04 14:34:07', '2021-01-04 15:05:36'),
(3, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"<p>وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;<\\/p>\",\"en\":\"<p>english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;<\\/p>\"}', '{\"ar\":\"Animi beatae dolore\",\"en\":\"Autem ut laudantium\"}', '{\"ar\":\"Rerum deserunt labor\",\"en\":\"Exercitation quisqua\"}', 'pe6ybrnF67Yno3HN6nhT25JPYoaPuFlwQ1Zb7WC5.png', '2021-01-04 14:34:07', '2021-01-04 15:05:36'),
(4, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"<p>وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;<\\/p>\",\"en\":\"<p>english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;<\\/p>\"}', '{\"ar\":\"Animi beatae dolore\",\"en\":\"Autem ut laudantium\"}', '{\"ar\":\"Rerum deserunt labor\",\"en\":\"Exercitation quisqua\"}', 'pe6ybrnF67Yno3HN6nhT25JPYoaPuFlwQ1Zb7WC5.png', '2021-01-04 14:34:07', '2021-01-04 15:05:36'),
(5, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"<p>وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;وصف بالعربيه&nbsp;<\\/p>\",\"en\":\"<p>english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;english desc&nbsp;<\\/p>\"}', '{\"ar\":\"Animi beatae dolore\",\"en\":\"Autem ut laudantium\"}', '{\"ar\":\"Rerum deserunt labor\",\"en\":\"Exercitation quisqua\"}', 'pe6ybrnF67Yno3HN6nhT25JPYoaPuFlwQ1Zb7WC5.png', '2021-01-04 14:34:07', '2021-01-04 15:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"أسم الفئه بالعربيه\",\"en\":\"Category Name in English\"}', '2021-01-05 11:05:18', '2021-01-05 11:05:18'),
(2, '{\"ar\":\"1أسم الفئه بالعربيه\",\"en\":\"Category Name in English1\"}', '2021-01-05 11:05:18', '2021-01-05 11:05:18'),
(3, '{\"ar\":\"2أسم الفئه بالعربيه\",\"en\":\"Category Name in English2\"}', '2021-01-05 11:05:18', '2021-01-05 11:05:18'),
(4, '{\"ar\":\"3أسم الفئه بالعربيه\",\"en\":\"Category Name in English3\"}', '2021-01-05 11:05:18', '2021-01-05 11:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_notifications`
--

CREATE TABLE `contact_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'HxGDFk5xXvqRs4ztdA4JWrqWSnHgavjOQc2Phdcw.png', '2021-01-04 15:07:09', '2021-01-04 15:07:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_07_27_122405_create_sliders_table', 1),
(4, '2020_07_27_150345_create_services_table', 1),
(5, '2020_07_28_111604_create_testimonials_table', 1),
(6, '2020_07_28_112621_create_contacts_table', 1),
(7, '2020_07_28_151051_create_blogs_table', 1),
(9, '2020_08_04_091617_create_website_settings_table', 1),
(10, '2020_08_04_114528_create_logos_table', 1),
(11, '2020_08_10_124838_create_visitors_table', 1),
(12, '2020_08_12_113818_create_themes_table', 1),
(13, '2020_09_07_002025_create_contact_notifications_table', 1),
(14, '2020_12_19_212543_create_pages_table', 1),
(15, '2021_01_03_093318_create_projects_table', 1),
(16, '2021_01_04_101731_create_rates_table', 1),
(19, '2021_01_05_121058_create_categories_table', 2),
(21, '2020_07_28_175733_create_team_members_table', 3),
(22, '2021_01_06_125021_create_newsletters_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(2, 'omarabdalaziz555@yahoo.com', '2021-01-06 11:04:37', '2021-01-06 11:04:37'),
(3, 'admin@gmail.com', '2021-01-06 13:30:27', '2021-01-06 13:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`title`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`description`)),
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'about', '{\"ar\":\"من نحن\",\"en\":\"About Us\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"about Description about Description about Description about Description about Description about Description about Description about Description about Description about Description about Description about Description about Description about Description about Description about Description about Description about Description about Description about Description\"}', 'm1SlZv5xw5bu6RYstIFuVkyEKaV0c1IN4VVxKwY5.png', 1, '2021-01-04 14:17:18', '2021-01-04 14:44:19'),
(2, 'services', '{\"ar\":\"خدماتنا\",\"en\":\"Services\"}', '{\"ar\":\"الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه الوصف بالعربيه\",\"en\":\"services Description services Description services Description services Description services Description services Description services Description services Description services Description services Description services Description services Description services Description services Description services Description services Description\"}', 'OfctdzuxNlAktV7RyjQdHYcDSzuLVnSjM8uxKnWJ.png', 1, '2021-01-04 14:17:18', '2021-01-06 10:29:24'),
(3, 'projects', '{\"ar\":\"أنشطتنا\",\"en\":\"Activities\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"projects Description projects Description projects Description projects Description projects Description projects Descriptionprojects Description projects Description projects Descriptionprojects Description projects Description projects Descriptionprojects Description projects Description projects Descriptionprojects Description projects Description projects Description\"}', 'WLS6kmJEBu4TZsbW4Wu6SNcGt9SxMogWrWXjgWkz.png', 1, '2021-01-04 14:17:18', '2021-01-06 10:32:38'),
(4, 'blogs', '{\"ar\":\"معلومات تهمك\",\"en\":\"Resources\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"blogs Description blogs Description blogs Description blogs Description blogs Description blogs Description blogs Description blogs Description blogs Description blogs Description blogs Description blogs Description blogs Description blogs Description blogs Description blogs Description blogs Description\"}', 'GHb9wCtbOjnFMdrNdhuN5VmY3njK4JwNikWcTE7h.png', 1, '2021-01-04 14:17:18', '2021-01-06 10:33:40'),
(5, 'doctors', '{\"ar\":\"شركاؤنا\",\"en\":\"Partners\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc\"}', 'WRrhXK77IjQxBKml9SfVebJV4ydvDnNnhZpb1TlT.png', 1, '2021-01-04 14:17:18', '2021-01-06 10:34:12'),
(6, 'contact-us', '{\"ar\":\"أتصل بنا\",\"en\":\"Contact Us\"}', '{\"ar\":\"وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه\",\"en\":\"contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description contact-us Description\"}', 'CTsYETX5kPULXoLVtB4o4bk48MDkDb3unRIGXQIl.png', 1, '2021-01-04 14:17:18', '2021-01-04 14:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`title`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `meta_tag` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta_tag`)),
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `meta_tag`, `image`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc\"}', '{\"ar\":\"Quia nostrud velit a\",\"en\":\"Eligendi fugiat eni\"}', 'vVm8lfBhvBe7L7Zp1j8XOHyrpNb7MYbmRePI7X6s.png', '2021-01-04 14:36:06', '2021-01-04 14:51:40'),
(2, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc\"}', '{\"ar\":\"Quia nostrud velit a\",\"en\":\"Eligendi fugiat eni\"}', 'vVm8lfBhvBe7L7Zp1j8XOHyrpNb7MYbmRePI7X6s.png', '2021-01-04 14:36:06', '2021-01-04 14:51:40'),
(3, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc\"}', '{\"ar\":\"Quia nostrud velit a\",\"en\":\"Eligendi fugiat eni\"}', 'vVm8lfBhvBe7L7Zp1j8XOHyrpNb7MYbmRePI7X6s.png', '2021-01-04 14:36:06', '2021-01-04 14:51:40'),
(4, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc\"}', '{\"ar\":\"Quia nostrud velit a\",\"en\":\"Eligendi fugiat eni\"}', 'vVm8lfBhvBe7L7Zp1j8XOHyrpNb7MYbmRePI7X6s.png', '2021-01-04 14:36:06', '2021-01-04 14:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stars` tinyint(4) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`title`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `meta_tag` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta_tag`)),
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `meta_tag`, `image`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه v\",\"en\":\"english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc\"}', '{\"ar\":\"Excepturi reprehende\",\"en\":\"Quis nostrum quia eu\"}', 'xfFjOYE26SlhjZVibHmucNRBwiRHWVgLRuulFMCW.png', '2021-01-04 14:37:51', '2021-01-04 14:50:44'),
(2, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه v\",\"en\":\"english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc\"}', '{\"ar\":\"Excepturi reprehende\",\"en\":\"Quis nostrum quia eu\"}', 'xfFjOYE26SlhjZVibHmucNRBwiRHWVgLRuulFMCW.png', '2021-01-04 14:37:51', '2021-01-04 14:50:44'),
(3, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه v\",\"en\":\"english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc\"}', '{\"ar\":\"Excepturi reprehende\",\"en\":\"Quis nostrum quia eu\"}', 'xfFjOYE26SlhjZVibHmucNRBwiRHWVgLRuulFMCW.png', '2021-01-04 14:37:51', '2021-01-04 14:50:44'),
(4, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه v\",\"en\":\"english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc\"}', '{\"ar\":\"Excepturi reprehende\",\"en\":\"Quis nostrum quia eu\"}', 'xfFjOYE26SlhjZVibHmucNRBwiRHWVgLRuulFMCW.png', '2021-01-04 14:37:51', '2021-01-04 14:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`title`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه  وصف بالعربيه\",\"en\":\"english description english description  english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description\"}', 'dwYrMvWqpTxRLGa6vg0rS3Vhlt8Z1EZhSROfPVV1.png', '2021-01-04 14:48:36', '2021-01-04 14:48:36'),
(2, '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english description english description english description english description english description english description english description english description english description english description english description english description english description english description\"}', 'IpujequzrZFhwlQ9hIpwe2C1Atl1QuErCZ55ANf6.png', '2021-01-04 14:50:08', '2021-01-04 14:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`title`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `meta_tag` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta_tag`)),
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `title`, `description`, `category_id`, `meta_tag`, `image`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"الاسم بالعربي\",\"en\":\"english name\"}', '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه رروصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc\"}', 1, '{\"ar\":\"Quis dicta officia i\",\"en\":\"Reprehenderit ipsum\"}', 'qURWdAOeMKLSU06B65SwMyNkfwkjxBn4oDLwlcml.png', '2021-01-05 11:07:45', '2021-01-05 11:07:45'),
(2, '{\"ar\":\"الاسم بالعربي\",\"en\":\"english name\"}', '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه رروصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc\"}', 3, '{\"ar\":\"Quis dicta officia i\",\"en\":\"Reprehenderit ipsum\"}', 'qURWdAOeMKLSU06B65SwMyNkfwkjxBn4oDLwlcml.png', '2021-01-05 11:07:45', '2021-01-05 11:10:03'),
(3, '{\"ar\":\"الاسم بالعربي\",\"en\":\"english name\"}', '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه رروصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc\"}', 3, '{\"ar\":\"Quis dicta officia i\",\"en\":\"Reprehenderit ipsum\"}', 'qURWdAOeMKLSU06B65SwMyNkfwkjxBn4oDLwlcml.png', '2021-01-05 11:07:45', '2021-01-05 11:10:14'),
(4, '{\"ar\":\"الاسم بالعربي\",\"en\":\"english name\"}', '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', '{\"ar\":\"وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه رروصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc english desc\"}', 4, '{\"ar\":\"Quis dicta officia i\",\"en\":\"Reprehenderit ipsum\"}', 'qURWdAOeMKLSU06B65SwMyNkfwkjxBn4oDLwlcml.png', '2021-01-05 11:07:45', '2021-01-05 11:10:26');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`title`)),
  `stars` tinyint(4) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `meta_tag` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta_tag`)),
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `title`, `stars`, `description`, `status`, `meta_tag`, `image`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"الاسم بالعربي\",\"en\":\"english name\"}', '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', 1, '{\"ar\":\"وصف بالعربيه وصف وصف بالعربيه وصف بالعربيه وصف بالعربيه بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description\"}', 1, '{\"ar\":\"Quis dicta officia i\",\"en\":\"Reprehenderit ipsum\"}', '1cvOV8nTvNV6b8Dtx2JOhXhc0n7QYsc41C4wG8Ky.png', '2021-01-04 14:53:05', '2021-01-04 14:53:05'),
(2, '{\"ar\":\"الاسم بالعربي\",\"en\":\"english name\"}', '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', 1, '{\"ar\":\"وصف بالعربيه وصف وصف بالعربيه وصف بالعربيه وصف بالعربيه بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description\"}', 1, '{\"ar\":\"Quis dicta officia i\",\"en\":\"Reprehenderit ipsum\"}', '1cvOV8nTvNV6b8Dtx2JOhXhc0n7QYsc41C4wG8Ky.png', '2021-01-04 14:53:05', '2021-01-04 14:53:05'),
(3, '{\"ar\":\"الاسم بالعربي\",\"en\":\"english name\"}', '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', 1, '{\"ar\":\"وصف بالعربيه وصف وصف بالعربيه وصف بالعربيه وصف بالعربيه بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description\"}', 1, '{\"ar\":\"Quis dicta officia i\",\"en\":\"Reprehenderit ipsum\"}', '1cvOV8nTvNV6b8Dtx2JOhXhc0n7QYsc41C4wG8Ky.png', '2021-01-04 14:53:05', '2021-01-04 14:53:05'),
(4, '{\"ar\":\"الاسم بالعربي\",\"en\":\"english name\"}', '{\"ar\":\"اللقب بالعربيه\",\"en\":\"title in english\"}', 1, '{\"ar\":\"وصف بالعربيه وصف وصف بالعربيه وصف بالعربيه وصف بالعربيه بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه وصف بالعربيه\",\"en\":\"english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description english description\"}', 1, '{\"ar\":\"Quis dicta officia i\",\"en\":\"Reprehenderit ipsum\"}', '1cvOV8nTvNV6b8Dtx2JOhXhc0n7QYsc41C4wG8Ky.png', '2021-01-04 14:53:05', '2021-01-04 14:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `ar_title`, `en_title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'الأول', 'first', 1, '2021-01-04 14:17:18', '2021-01-04 14:17:18'),
(2, 'الثاني', 'second', 0, '2021-01-04 14:17:18', '2021-01-04 14:17:18'),
(3, 'الثالث', 'third', 0, '2021-01-04 14:17:18', '2021-01-04 14:17:18'),
(4, 'الرابع', 'fourth', 0, '2021-01-04 14:17:18', '2021-01-04 14:17:18'),
(5, 'الخامس', 'fifth', 0, '2021-01-04 14:17:18', '2021-01-04 14:17:18'),
(6, 'السادس', 'sixth', 0, '2021-01-04 14:17:18', '2021-01-04 14:17:18'),
(7, 'السابع', 'seventh', 0, '2021-01-04 14:17:18', '2021-01-04 14:17:18'),
(8, 'الثامن', 'eighth', 0, '2021-01-04 14:17:18', '2021-01-04 14:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@app.com', NULL, '$2y$10$xT92IBWJBjy6zFniVAPTI.6H.JBomRrOKxZdsZV9AcxpZ7A4WrIYa', NULL, NULL, '2021-01-04 14:17:17', '2021-01-04 14:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip`, `page`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'home', '2021-01-04 14:30:47', '2021-01-04 14:30:47'),
(2, '127.0.0.1', 'blogs', '2021-01-04 14:33:49', '2021-01-04 14:33:49'),
(3, '127.0.0.1', 'projects', '2021-01-04 14:42:08', '2021-01-04 14:42:08'),
(4, '127.0.0.1', 'doctors', '2021-01-04 14:43:17', '2021-01-04 14:43:17'),
(5, '127.0.0.1', 'about', '2021-01-04 14:43:22', '2021-01-04 14:43:22'),
(6, '127.0.0.1', 'home', '2021-01-05 09:37:06', '2021-01-05 09:37:06'),
(7, '127.0.0.1', 'about', '2021-01-05 09:53:24', '2021-01-05 09:53:24'),
(8, '127.0.0.1', 'contact-us', '2021-01-05 09:56:57', '2021-01-05 09:56:57'),
(9, '127.0.0.1', 'doctors', '2021-01-05 10:00:53', '2021-01-05 10:00:53'),
(10, '127.0.0.1', 'blogs', '2021-01-05 10:02:06', '2021-01-05 10:02:06'),
(11, '127.0.0.1', 'projects', '2021-01-05 10:03:13', '2021-01-05 10:03:13'),
(12, '127.0.0.1', 'services', '2021-01-05 10:05:38', '2021-01-05 10:05:38'),
(13, '127.0.0.1', 'home', '2021-01-06 10:34:23', '2021-01-06 10:34:23'),
(14, '127.0.0.1', 'about', '2021-01-06 13:51:30', '2021-01-06 13:51:30'),
(15, '127.0.0.1', 'services', '2021-01-06 13:51:42', '2021-01-06 13:51:42'),
(16, '127.0.0.1', 'projects', '2021-01-06 13:52:25', '2021-01-06 13:52:25'),
(17, '127.0.0.1', 'blogs', '2021-01-06 13:56:31', '2021-01-06 13:56:31'),
(18, '127.0.0.1', 'doctors', '2021-01-06 13:59:22', '2021-01-06 13:59:22'),
(19, '127.0.0.1', 'contact-us', '2021-01-06 14:00:03', '2021-01-06 14:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_filter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `page_filter`, `color`, `created_at`, `updated_at`) VALUES
(1, '\"a:8:{i:0;s:5:\\\"about\\\";i:1;s:12:\\\"our_projects\\\";i:2;s:8:\\\"contacts\\\";i:3;s:12:\\\"our_services\\\";i:4;s:4:\\\"stat\\\";i:5;s:12:\\\"team_members\\\";i:6;s:12:\\\"testimonials\\\";i:7;s:11:\\\"latest_blog\\\";}\"', 1, '2021-01-04 14:17:18', '2021-01-04 14:17:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_notifications`
--
ALTER TABLE `contact_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_members_category_id_foreign` (`category_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_notifications`
--
ALTER TABLE `contact_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_members`
--
ALTER TABLE `team_members`
  ADD CONSTRAINT `team_members_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
