-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2023 at 07:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beaver_laravel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'Kwamboka Simple Course', 'Kwamboka Course', '2023-11-11 19:27:17', '2023-11-11 19:54:29', 1, NULL, 1),
(2, 'Kwamboka Course', 'Kwamboka Course', '2023-11-11 19:53:41', '2023-11-11 19:53:41', 1, NULL, 1),
(3, 'Sample', 'Sampe', '2023-11-14 12:19:12', '2023-11-14 12:19:12', 1, NULL, 1),
(4, 'Kwamboka Course', 'Kwamboka Course', '2023-11-17 01:17:38', '2023-11-17 01:17:38', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_instructors`
--

CREATE TABLE `course_instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_instructors`
--

INSERT INTO `course_instructors` (`id`, `course_id`, `instructor_id`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, '2023-11-11 19:59:59', '2023-11-11 20:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `course_objectives`
--

CREATE TABLE `course_objectives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_objectives`
--

INSERT INTO `course_objectives` (`id`, `name`, `description`, `course_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'Sally More and rad', 'As above', 1, '2023-11-12 00:30:58', '2023-11-12 00:32:39', 1, 1, 1),
(2, 'The goal is the way', 'The goal is the way bwana', 1, '2023-11-13 05:00:59', '2023-11-13 05:00:59', 1, NULL, 1),
(3, 'Niko', 'Niko na nanii', 1, '2023-11-14 12:12:36', '2023-11-14 12:12:36', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `exam_date` datetime NOT NULL,
  `exam_type_id` bigint(20) UNSIGNED NOT NULL,
  `exam_format_id` bigint(20) UNSIGNED NOT NULL,
  `max_score` int(11) NOT NULL,
  `passing_score` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `course_id`, `exam_date`, `exam_type_id`, `exam_format_id`, `max_score`, `passing_score`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Simon Brenjon Exam', 1, '2023-10-30 00:00:00', 2, 3, 100, 70, NULL, 1, 1, '2023-11-12 00:57:26', '2023-11-12 01:06:22'),
(3, 'Research Method Exam', 1, '2023-10-30 00:00:00', 2, 3, 100, 70, NULL, NULL, 1, '2023-11-12 01:01:32', '2023-11-12 01:01:32'),
(4, 'Acturial Methods Exam', 1, '2023-10-30 00:00:00', 2, 3, 100, 70, NULL, NULL, 1, '2023-11-12 01:02:06', '2023-11-12 01:02:06'),
(5, 'Kilos Exam', 1, '2023-11-13 00:00:00', 1, 1, 100, 80, 1, NULL, 1, '2023-11-13 05:45:21', '2023-11-13 05:45:21'),
(6, 'Deretruce', 1, '2023-11-13 00:00:00', 2, 3, 100, 70, 1, NULL, 1, '2023-11-14 14:44:50', '2023-11-14 14:44:50'),
(7, 'Demo exam', 2, '2023-11-23 00:00:00', 2, 3, 45, 35, 14, NULL, 1, '2023-11-17 02:20:34', '2023-11-17 02:20:34');

-- --------------------------------------------------------

--
-- Table structure for table `exam_formats`
--

CREATE TABLE `exam_formats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `format` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_formats`
--

INSERT INTO `exam_formats` (`id`, `format`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'Multiple Choice', NULL, NULL, NULL, NULL, 1),
(2, 'Essay', NULL, NULL, NULL, NULL, 1),
(3, 'Practical Exam', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_objectives`
--

CREATE TABLE `exam_objectives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_objectives`
--

INSERT INTO `exam_objectives` (`id`, `name`, `description`, `exam_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'Exam Objective ya hivi hivi', 'Ati why?', 1, '2023-11-12 08:11:38', '2023-11-12 08:12:31', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `type`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'Midterm Exams ', NULL, NULL, NULL, NULL, 1),
(2, 'Quiz', NULL, NULL, NULL, NULL, 1),
(3, 'Final Exam', NULL, NULL, NULL, NULL, 1);

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `message_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `content`, `message_time`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 2, 1, 'Ndio nacheki!', '2023-11-12 03:30:47', '2023-11-12 08:30:47', '2023-11-12 08:30:47', 1, NULL, 1),
(2, 1, 2, 'Mrume sema', '2023-11-13 01:11:05', '2023-11-13 06:11:05', '2023-11-13 06:11:05', 1, NULL, 1),
(3, 1, 2, 'Vaite', '2023-11-13 01:15:16', '2023-11-13 06:15:16', '2023-11-13 06:15:16', 1, NULL, 1),
(4, 1, 2, 'Sema', '2023-11-13 01:18:50', '2023-11-13 06:18:50', '2023-11-13 06:18:50', 1, NULL, 1),
(5, 1, 2, 'Oya', '2023-11-13 01:19:53', '2023-11-13 06:19:53', '2023-11-13 06:19:53', 1, NULL, 1),
(6, 1, 2, 'Umeona hiyo', '2023-11-13 01:20:27', '2023-11-13 06:20:27', '2023-11-13 06:20:27', 1, NULL, 1),
(7, 1, 2, 'Mary', '2023-11-13 01:21:03', '2023-11-13 06:21:03', '2023-11-13 06:21:03', 1, NULL, 1),
(8, 1, 2, 'Tracy', '2023-11-13 01:21:21', '2023-11-13 06:21:21', '2023-11-13 06:21:21', 1, NULL, 1),
(9, 1, 2, 'Sally', '2023-11-13 01:21:28', '2023-11-13 06:21:28', '2023-11-13 06:21:28', 1, NULL, 1),
(10, 2, 10, 'Hey Ndindi', '2023-11-14 06:47:40', '2023-11-14 11:47:40', '2023-11-14 11:47:40', 2, NULL, 1),
(11, 1, 2, 'Just got your message', '2023-11-14 06:48:29', '2023-11-14 11:48:29', '2023-11-14 11:48:29', 1, NULL, 1),
(12, 2, 1, 'Nipeleke pole pole', '2023-11-14 06:54:31', '2023-11-14 11:54:31', '2023-11-14 11:54:31', 2, NULL, 1),
(13, 1, 2, 'Kwa nini bana, nadhany umeivia', '2023-11-14 06:54:48', '2023-11-14 11:54:48', '2023-11-14 11:54:48', 1, NULL, 1),
(14, 7, 5, 'Sasa Nderu', '2023-11-14 11:56:39', '2023-11-14 16:56:39', '2023-11-14 16:56:39', 7, NULL, 1),
(15, 7, 5, 'Hey', '2023-11-14 12:07:07', '2023-11-14 17:07:07', '2023-11-14 17:07:07', 7, NULL, 1),
(16, 2, 1, 'Nipeleke pole pole', '2023-11-14 14:34:03', '2023-11-14 19:34:03', '2023-11-14 19:34:03', 2, NULL, 1),
(17, 2, 1, 'Nipeleke pole pole', '2023-11-14 14:35:12', '2023-11-14 19:35:12', '2023-11-14 19:35:12', 2, NULL, 1),
(18, 2, 1, 'Cow', '2023-11-14 14:35:16', '2023-11-14 19:35:16', '2023-11-14 19:35:16', 2, NULL, 1),
(19, 2, 1, 'Hey there, how are you?', '2023-11-14 14:36:31', '2023-11-14 19:36:31', '2023-11-14 19:36:31', 2, NULL, 1),
(20, 2, 1, 'Take a look', '2023-11-14 14:37:24', '2023-11-14 19:37:24', '2023-11-14 19:37:24', 2, NULL, 1),
(21, 1, 5, 'Sample', '2023-11-14 15:06:34', '2023-11-14 20:06:34', '2023-11-14 20:06:34', 1, NULL, 1),
(22, 1, 5, 'New', '2023-11-14 15:19:34', '2023-11-14 20:19:34', '2023-11-14 20:19:34', 1, NULL, 1),
(23, 1, 5, 'Cow', '2023-11-14 15:20:43', '2023-11-14 20:20:43', '2023-11-14 20:20:43', 1, NULL, 1),
(24, 1, 5, 'Haya basi', '2023-11-14 15:21:02', '2023-11-14 20:21:02', '2023-11-14 20:21:02', 1, NULL, 1),
(25, 1, 5, 'Cow', '2023-11-14 15:23:54', '2023-11-14 20:23:54', '2023-11-14 20:23:54', 1, NULL, 1),
(26, 1, 5, 'Hey', '2023-11-14 15:24:40', '2023-11-14 20:24:40', '2023-11-14 20:24:40', 1, NULL, 1),
(27, 1, 5, 'Vimbada', '2023-11-14 15:25:44', '2023-11-14 20:25:44', '2023-11-14 20:25:44', 1, NULL, 1),
(28, 1, 5, 'Kwe kwe', '2023-11-14 15:26:35', '2023-11-14 20:26:35', '2023-11-14 20:26:35', 1, NULL, 1),
(29, 5, 1, 'Sema', '2023-11-14 15:27:22', '2023-11-14 20:27:22', '2023-11-14 20:27:22', 5, NULL, 1),
(30, 1, 5, 'Teren teren', '2023-11-14 15:27:52', '2023-11-14 20:27:52', '2023-11-14 20:27:52', 1, NULL, 1),
(31, 5, 1, 'Umeona hiyo story', '2023-11-14 15:28:14', '2023-11-14 20:28:14', '2023-11-14 20:28:14', 5, NULL, 1),
(32, 1, 5, 'Gani mdau?', '2023-11-14 15:28:36', '2023-11-14 20:28:36', '2023-11-14 20:28:36', 1, NULL, 1),
(33, 5, 1, 'Niko hapa maratani', '2023-11-14 15:41:37', '2023-11-14 20:41:37', '2023-11-14 20:41:37', 5, NULL, 1),
(34, 5, 1, 'Niko hapa maratani', '2023-11-14 15:41:37', '2023-11-14 20:41:37', '2023-11-14 20:41:37', 5, NULL, 1),
(35, 5, 1, 'Teka msupa', '2023-11-14 15:44:16', '2023-11-14 20:44:16', '2023-11-14 20:44:16', 5, NULL, 1),
(36, 5, 1, 'Oya manni!', '2023-11-14 15:49:27', '2023-11-14 20:49:27', '2023-11-14 20:49:27', 5, NULL, 1),
(37, 1, 5, 'Cheki', '2023-11-14 15:51:57', '2023-11-14 20:51:57', '2023-11-14 20:51:57', 1, NULL, 1),
(38, 1, 5, 'Kuko aje', '2023-11-15 02:40:33', '2023-11-15 07:40:33', '2023-11-15 07:40:33', 1, NULL, 1),
(39, 1, 5, 'Hujaona hii', '2023-11-15 02:41:01', '2023-11-15 07:41:01', '2023-11-15 07:41:01', 1, NULL, 1),
(40, 1, 5, 'Hey', '2023-11-15 02:41:55', '2023-11-15 07:41:55', '2023-11-15 07:41:55', 1, NULL, 1),
(41, 5, 1, 'Sasa', '2023-11-15 02:42:07', '2023-11-15 07:42:07', '2023-11-15 07:42:07', 5, NULL, 1),
(42, 5, 1, 'Hapo sasa', '2023-11-15 02:53:19', '2023-11-15 07:53:19', '2023-11-15 07:53:19', 5, NULL, 1),
(43, 5, 1, 'Hapa kule', '2023-11-15 02:55:12', '2023-11-15 07:55:12', '2023-11-15 07:55:12', 5, NULL, 1),
(44, 1, 5, 'Tukule', '2023-11-15 02:56:21', '2023-11-15 07:56:21', '2023-11-15 07:56:21', 1, NULL, 1),
(45, 5, 1, 'Ni mapema mdau', '2023-11-15 02:56:36', '2023-11-15 07:56:36', '2023-11-15 07:56:36', 5, NULL, 1),
(46, 5, 1, 'HUjaona hiyo', '2023-11-15 02:57:11', '2023-11-15 07:57:11', '2023-11-15 07:57:11', 5, NULL, 1),
(47, 1, 5, 'Haya basi', '2023-11-15 02:58:26', '2023-11-15 07:58:26', '2023-11-15 07:58:26', 1, NULL, 1),
(48, 5, 1, 'Sasa ona', '2023-11-15 02:59:04', '2023-11-15 07:59:04', '2023-11-15 07:59:04', 5, NULL, 1),
(49, 5, 1, 'Sasa ona', '2023-11-15 02:59:04', '2023-11-15 07:59:04', '2023-11-15 07:59:04', 5, NULL, 1),
(50, 1, 5, 'Haujapata aje', '2023-11-15 02:59:23', '2023-11-15 07:59:23', '2023-11-15 07:59:23', 1, NULL, 1),
(51, 5, 1, 'Teren teren', '2023-11-15 02:59:44', '2023-11-15 07:59:44', '2023-11-15 07:59:44', 5, NULL, 1),
(52, 9, 5, 'Sasa', '2023-11-15 03:12:12', '2023-11-15 08:12:12', '2023-11-15 08:12:12', 9, NULL, 1),
(53, 5, 9, 'Naona uko fiti', '2023-11-15 03:12:25', '2023-11-15 08:12:25', '2023-11-15 08:12:25', 5, NULL, 1),
(54, 5, 9, 'Umeona?', '2023-11-15 03:12:46', '2023-11-15 08:12:46', '2023-11-15 08:12:46', 5, NULL, 1),
(55, 9, 5, 'HUjapata aje', '2023-11-15 03:13:08', '2023-11-15 08:13:08', '2023-11-15 08:13:08', 9, NULL, 1),
(56, 10, 9, 'Hi', '2023-11-15 03:25:37', '2023-11-15 08:25:37', '2023-11-15 08:25:37', 10, NULL, 1),
(57, 9, 10, 'You good?', '2023-11-15 03:25:49', '2023-11-15 08:25:49', '2023-11-15 08:25:49', 9, NULL, 1),
(58, 10, 9, 'Very good, how is work n\' stuff?', '2023-11-15 03:26:06', '2023-11-15 08:26:06', '2023-11-15 08:26:06', 10, NULL, 1),
(59, 10, 9, 'Network issue?', '2023-11-15 03:26:47', '2023-11-15 08:26:47', '2023-11-15 08:26:47', 10, NULL, 1),
(60, 9, 10, 'Seen it?', '2023-11-15 03:27:26', '2023-11-15 08:27:26', '2023-11-15 08:27:26', 9, NULL, 1),
(61, 10, 9, 'Seen what?', '2023-11-15 03:27:44', '2023-11-15 08:27:44', '2023-11-15 08:27:44', 10, NULL, 1),
(62, 9, 10, 'Something over there?', '2023-11-15 03:31:45', '2023-11-15 08:31:45', '2023-11-15 08:31:45', 9, NULL, 1),
(63, 10, 9, 'Very conspicuous', '2023-11-15 03:32:02', '2023-11-15 08:32:02', '2023-11-15 08:32:02', 10, NULL, 1),
(64, 9, 10, 'Niko', '2023-11-15 03:32:46', '2023-11-15 08:32:46', '2023-11-15 08:32:46', 9, NULL, 1),
(65, 10, 9, 'Inakaa kwako zinakuja mbio', '2023-11-15 03:33:00', '2023-11-15 08:33:00', '2023-11-15 08:33:00', 10, NULL, 1),
(66, 9, 10, 'Sijui kwa nini kwako zinalag', '2023-11-15 03:33:24', '2023-11-15 08:33:24', '2023-11-15 08:33:24', 9, NULL, 1);

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
(1, '2013_11_10_194937_create_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_11_10_194120_create_courses_table', 1),
(7, '2023_11_10_195330_create_course_instructors_table', 1),
(8, '2023_11_10_195519_create_course_objectives_table', 1),
(9, '2023_11_10_200040_create_exam_types_table', 1),
(10, '2023_11_10_200047_create_exam_formats_table', 1),
(11, '2023_11_10_200048_create_exams_table', 1),
(12, '2023_11_10_201425_create_exam_objectives_table', 1),
(13, '2023_11_10_201647_create_messages_table', 1),
(14, '2023_11_11_042819_create_qa_feedback_table', 1),
(15, '2023_11_11_043142_create_student_enrolments_table', 1),
(16, '2023_11_11_043253_create_student_performances_table', 1),
(17, '2023_11_11_043415_create_tickets_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(4, 'App\\Models\\User', 1, 'admin', '3944368c68361da8a8b521be4eb14c7cd27cbcb56842c96944e9a3e979d6eda0', '[\"*\"]', '2023-11-13 05:07:35', NULL, '2023-11-11 11:45:43', '2023-11-13 05:07:35'),
(5, 'App\\Models\\User', 1, 'admin', '276f844da5daab3725ad049dc9e60ce2b2c2f1299b3a9539f952b1dda454b3d8', '[\"*\"]', NULL, NULL, '2023-11-12 23:15:47', '2023-11-12 23:15:47'),
(6, 'App\\Models\\User', 1, 'admin', 'bc3e92736a2ef9758fb2f1f8565374b4273c9e9214b4a9f4483e194bd4ecd87a', '[\"*\"]', NULL, NULL, '2023-11-12 23:16:00', '2023-11-12 23:16:00'),
(7, 'App\\Models\\User', 1, 'admin', '00729ab096e9189812782e8de2b16f870c1654edf255993bf988aba1f099c68a', '[\"*\"]', NULL, NULL, '2023-11-12 23:16:16', '2023-11-12 23:16:16'),
(8, 'App\\Models\\User', 1, 'admin', '84388772df52281a8e35210e9b8aae18b62e3c2331bd07b6522bc063c4c44028', '[\"*\"]', NULL, NULL, '2023-11-12 23:17:07', '2023-11-12 23:17:07'),
(9, 'App\\Models\\User', 1, 'admin', '7deaf49b23df9797e38f18ca52b02529f660bff9fb3b65b8b0f332cf2390e8bc', '[\"*\"]', NULL, NULL, '2023-11-12 23:17:38', '2023-11-12 23:17:38'),
(10, 'App\\Models\\User', 1, 'admin', 'c925ff00f66a2ebb1d3c2d4ba9c8ec6d1c63041b05a4230907687908ec9e8a90', '[\"*\"]', NULL, NULL, '2023-11-12 23:19:52', '2023-11-12 23:19:52'),
(11, 'App\\Models\\User', 1, 'admin', '565137db29303dc42b3b1ad3c35cb756b4b2f76e21102fa2419411a5499175b6', '[\"*\"]', NULL, NULL, '2023-11-12 23:44:22', '2023-11-12 23:44:22'),
(12, 'App\\Models\\User', 1, 'admin', '7a83560d319b2956bea416db6bb85ff50a0c3718a89398885b3dc48a9a5e5c8b', '[\"*\"]', '2023-11-13 06:01:35', NULL, '2023-11-12 23:56:38', '2023-11-13 06:01:35'),
(13, 'App\\Models\\User', 1, 'admin', '4c9f1f9a5d46241244a1428f588cda92b8b839d596f8fb7755cf5d19ccc2108a', '[\"*\"]', '2023-11-17 01:23:22', NULL, '2023-11-13 05:26:43', '2023-11-17 01:23:22'),
(14, 'App\\Models\\User', 1, 'admin', 'f65264768d761d713d91d619fb304919d4fc3a9b70e1bdb4c39fa1e9588f4099', '[\"*\"]', '2023-11-13 06:03:24', NULL, '2023-11-13 06:03:03', '2023-11-13 06:03:24'),
(15, 'App\\Models\\User', 1, 'admin', '7a05ca9f0a5aa56a7892cbaa0c25fe8c6ef2a4b808adf67066cc808fb1562436', '[\"*\"]', '2023-11-13 07:11:36', NULL, '2023-11-13 06:04:33', '2023-11-13 07:11:36'),
(16, 'App\\Models\\User', 3, 'admin', '801f601b349a106bd29b23dc4d48ee3fe2f57f2e7566b750a64682b6ae60a2ea', '[\"*\"]', '2023-11-13 07:41:00', NULL, '2023-11-13 07:21:13', '2023-11-13 07:41:00'),
(17, 'App\\Models\\User', 3, 'admin', 'e2f7bf67b7ce074a52c95fe593a3b09405720636b9c19dc5c8eb8272cfda9469', '[\"*\"]', '2023-11-13 11:00:49', NULL, '2023-11-13 11:00:23', '2023-11-13 11:00:49'),
(18, 'App\\Models\\User', 4, 'admin', '936fcbeba556c0feffb43c246b7161131e02244dc0cee8cbd0c5cf1298da03e2', '[\"*\"]', '2023-11-13 12:07:32', NULL, '2023-11-13 11:02:07', '2023-11-13 12:07:32'),
(19, 'App\\Models\\User', 5, 'admin', 'f4e4758a31d5d6eeaa483b4f80e8409450e749d3b43dc1ee085fd02d7552e3a3', '[\"*\"]', NULL, NULL, '2023-11-13 12:11:33', '2023-11-13 12:11:33'),
(20, 'App\\Models\\User', 5, 'admin', 'bb506479b16e8c111d93a7bcb3c5881a3cee648cd4a4ea13965621e2d2ad829e', '[\"*\"]', '2023-11-13 15:06:39', NULL, '2023-11-13 13:56:15', '2023-11-13 15:06:39'),
(21, 'App\\Models\\User', 1, 'admin', '1a006cce793d2be46717e41e1b0878527faf7d4b31b53d98427b41cde14daf49', '[\"*\"]', '2023-11-13 21:24:53', NULL, '2023-11-13 21:06:47', '2023-11-13 21:24:53'),
(22, 'App\\Models\\User', 2, 'admin', 'c4ebbb5c80d3d752c6639b6b60afb91cc1e75c550b0c0a1af6383a9aaaa0b9e1', '[\"*\"]', '2023-11-14 11:19:51', NULL, '2023-11-13 21:25:49', '2023-11-14 11:19:51'),
(23, 'App\\Models\\User', 1, 'admin', '349071cfbeb9dfbbb5b7f575480211c2f9bc5c83b645086a05659ca7b5e539b0', '[\"*\"]', NULL, NULL, '2023-11-14 11:02:22', '2023-11-14 11:02:22'),
(24, 'App\\Models\\User', 2, 'admin', 'a64e615d6c1af216691d04dbb37a647d4cab6577d7ba8733a20eadb66994a342', '[\"*\"]', '2023-11-14 11:25:57', NULL, '2023-11-14 11:25:47', '2023-11-14 11:25:57'),
(25, 'App\\Models\\User', 2, 'admin', '238ad5de22db13255cfc929e5e495bdf48e66e397ea5049477a6d5a436e8d69f', '[\"*\"]', '2023-11-14 19:38:20', NULL, '2023-11-14 11:26:12', '2023-11-14 19:38:20'),
(26, 'App\\Models\\User', 1, 'admin', 'f6176efa77e068461b84814fa3a29418907d1eae362c1262e1233b085c4d1d6f', '[\"*\"]', '2023-11-14 14:24:08', NULL, '2023-11-14 11:47:57', '2023-11-14 14:24:08'),
(27, 'App\\Models\\User', 3, 'admin', 'a3707f929111ed7aa9456d58d0506bb6082e0c9616227fe1b12c37b685a5ba0a', '[\"*\"]', '2023-11-14 14:25:43', NULL, '2023-11-14 14:25:32', '2023-11-14 14:25:43'),
(28, 'App\\Models\\User', 4, 'admin', 'b8199759764961f4f35e1ad2c6ce0af3bf821aca956d04a40437a93a1fcd88a1', '[\"*\"]', '2023-11-14 14:26:33', NULL, '2023-11-14 14:26:13', '2023-11-14 14:26:33'),
(29, 'App\\Models\\User', 5, 'admin', 'df6ef8c48afebbd0f87578a83d0d91903a23e72cefa8ec864ee3bd50d429cbb5', '[\"*\"]', '2023-11-14 14:37:49', NULL, '2023-11-14 14:27:05', '2023-11-14 14:37:49'),
(30, 'App\\Models\\User', 1, 'admin', '1a0b27ebaf21ed247774092e676e3cecb191a9a6dd1039ed20829d53c107c9e5', '[\"*\"]', '2023-11-14 14:44:54', NULL, '2023-11-14 14:41:10', '2023-11-14 14:44:54'),
(31, 'App\\Models\\User', 2, 'admin', '3e690c27b3c45c46aa784c04421001952802e2ed4a690f3261a5eb180e9a1e29', '[\"*\"]', '2023-11-14 15:28:58', NULL, '2023-11-14 14:48:12', '2023-11-14 15:28:58'),
(32, 'App\\Models\\User', 5, 'admin', '59adf3218970fcd246d6cda8b134eada2bb7dff666c009fb8f86230cd500be5b', '[\"*\"]', '2023-11-14 15:37:08', NULL, '2023-11-14 15:36:59', '2023-11-14 15:37:08'),
(33, 'App\\Models\\User', 7, 'admin', 'a368c6842c3d28de33db43d5b750dcffc5bcc4afcb3915fb4d3a5e6f80be1d5f', '[\"*\"]', '2023-11-14 17:19:01', NULL, '2023-11-14 15:42:53', '2023-11-14 17:19:01'),
(34, 'App\\Models\\User', 1, 'admin', '3d352c2864cebba3ab545f144c9b134886d0c8afe44970cb0899a71481ae2ec4', '[\"*\"]', '2023-11-14 19:50:18', NULL, '2023-11-14 19:50:04', '2023-11-14 19:50:18'),
(35, 'App\\Models\\User', 1, 'admin', '152ffb22a854a6718484b59e7fdb98ff12bdea72bdbe1292d0a16cbfdb9ab826', '[\"*\"]', '2023-11-14 20:01:30', NULL, '2023-11-14 20:01:22', '2023-11-14 20:01:30'),
(36, 'App\\Models\\User', 1, 'admin', '31adcee504cbafca99589f6035819d3ec0268461ae080c16a39208f3a7d1e920', '[\"*\"]', '2023-11-14 20:03:00', NULL, '2023-11-14 20:02:53', '2023-11-14 20:03:00'),
(37, 'App\\Models\\User', 1, 'admin', 'c02b1aaf3dceff7b16cf5a7cf4221ddb31b17f63b0112c06dd4a7c1056e6ea34', '[\"*\"]', '2023-11-14 20:49:00', NULL, '2023-11-14 20:06:12', '2023-11-14 20:49:00'),
(38, 'App\\Models\\User', 5, 'admin', 'dcb37a9fe697ad70a53492d69e043728c6192fd3668202035eda535bb25d9ecf', '[\"*\"]', '2023-11-14 20:49:27', NULL, '2023-11-14 20:24:20', '2023-11-14 20:49:27'),
(39, 'App\\Models\\User', 5, 'admin', '354b4c82e13f327222ed924a619a7d95d68d08430ac1be8ea7e9c8041483c99d', '[\"*\"]', '2023-11-14 20:51:27', NULL, '2023-11-14 20:51:19', '2023-11-14 20:51:27'),
(40, 'App\\Models\\User', 1, 'admin', 'fd4fd63905620fc8bc7990cbf5792bcc6fe076a448f604e04236ae11620e8857', '[\"*\"]', '2023-11-14 20:51:58', NULL, '2023-11-14 20:51:41', '2023-11-14 20:51:58'),
(41, 'App\\Models\\User', 1, 'admin', 'c4342169cf07cba481131a19183b3fe0a54c13e0ccad34d8131fb282acadc08d', '[\"*\"]', '2023-11-15 07:41:55', NULL, '2023-11-15 07:39:38', '2023-11-15 07:41:55'),
(42, 'App\\Models\\User', 5, 'admin', 'b1d76b9ff1344ba29a8504e34b531def2ca76d8b957e98abd56f331b63b4a452', '[\"*\"]', '2023-11-15 08:24:49', NULL, '2023-11-15 07:40:10', '2023-11-15 08:24:49'),
(43, 'App\\Models\\User', 1, 'admin', 'faf9901b6df21d1f1641c95364be92d11ee0cdee6db89519ac85390aafcbffeb', '[\"*\"]', '2023-11-15 07:54:21', NULL, '2023-11-15 07:52:40', '2023-11-15 07:54:21'),
(44, 'App\\Models\\User', 1, 'admin', '7af348f3f58e0403f33069aa183c92b71e7eb519f13ddac3bc715a2d0f01b3cc', '[\"*\"]', '2023-11-15 08:05:07', NULL, '2023-11-15 07:54:55', '2023-11-15 08:05:07'),
(45, 'App\\Models\\User', 9, 'admin', '9ed94e931399e6a154a1d2ec594d23a3e64a8b8d9ff4c59d7711160440965604', '[\"*\"]', '2023-11-15 08:13:08', NULL, '2023-11-15 08:11:52', '2023-11-15 08:13:08'),
(46, 'App\\Models\\User', 9, 'admin', '3742b7b000903b9e36db0c736cd25367895f0fe756538d11e875a4a28d6eda0b', '[\"*\"]', '2023-11-15 08:34:02', NULL, '2023-11-15 08:25:00', '2023-11-15 08:34:02'),
(47, 'App\\Models\\User', 10, 'admin', '58c9f3184aea83dc356d73c539d816e8ab5b80dafb35699bba57a969eec76995', '[\"*\"]', '2023-11-15 08:42:52', NULL, '2023-11-15 08:25:28', '2023-11-15 08:42:52'),
(48, 'App\\Models\\User', 12, 'admin', '5eae879813a9c8a61a3283ef97900e4eb0f3780776e5e052287d547b75935ea6', '[\"*\"]', '2023-11-17 01:42:59', NULL, '2023-11-17 01:42:07', '2023-11-17 01:42:59'),
(49, 'App\\Models\\User', 12, 'admin', 'ff71a82f0bd207225a0b07bfeb0905257cbe06d141cd80d7c381b4985dc9ba64', '[\"*\"]', '2023-11-17 01:46:08', NULL, '2023-11-17 01:44:12', '2023-11-17 01:46:08'),
(50, 'App\\Models\\User', 12, 'admin', '54c7aa0a6af7e5b3e82bd7d98e4eddb0989f5ac56c6581462f39b78d11028946', '[\"*\"]', '2023-11-17 01:58:56', NULL, '2023-11-17 01:49:58', '2023-11-17 01:58:56'),
(51, 'App\\Models\\User', 12, 'admin', '9a48d202761620ba4c3fa99802f2e89e3cd231e215d8917cab7961b80e5f1806', '[\"*\"]', '2023-11-17 02:12:15', NULL, '2023-11-17 02:04:18', '2023-11-17 02:12:15'),
(52, 'App\\Models\\User', 13, 'admin', '748e723735b2b2158c25db961f5ea0a416c695eb35fda40de530db59173d8f4a', '[\"*\"]', '2023-11-17 02:18:08', NULL, '2023-11-17 02:17:25', '2023-11-17 02:18:08'),
(53, 'App\\Models\\User', 14, 'admin', 'd28aef7f2d7da0da0a4eb2ec4f88e704dba480ae24f3475402571e42c6679499', '[\"*\"]', '2023-11-17 02:20:40', NULL, '2023-11-17 02:19:11', '2023-11-17 02:20:40'),
(54, 'App\\Models\\User', 15, 'admin', 'a07dc5a74bc0404479815d3ef4afc610c2f7c0bb2e314f9f17d5e1585f89a0e5', '[\"*\"]', '2023-11-17 02:21:55', NULL, '2023-11-17 02:21:28', '2023-11-17 02:21:55'),
(55, 'App\\Models\\User', 16, 'admin', 'd0ef9084c9f0ee2a7965b002aeead6bba2ef7ad0b58c1727972baa70634711c2', '[\"*\"]', '2023-11-17 02:22:55', NULL, '2023-11-17 02:22:43', '2023-11-17 02:22:55'),
(56, 'App\\Models\\User', 13, 'admin', '2d7028955da7f227670b9fb4325191a1c825430ed9ae4bcc62c631217be64825', '[\"*\"]', '2023-11-22 08:14:32', NULL, '2023-11-22 08:14:28', '2023-11-22 08:14:32'),
(57, 'App\\Models\\User', 13, 'admin', '8d2e40d441e5d84e5d6a98a570d57a8b4ea38e747ebed1ca0a6c2de66e4988be', '[\"*\"]', '2023-11-22 08:15:21', NULL, '2023-11-22 08:14:57', '2023-11-22 08:15:21'),
(58, 'App\\Models\\User', 13, 'admin', 'b742b1d64bb805386e4bf1be97f80548e27a2dbdea906b5c3419b220f99b0f65', '[\"*\"]', '2023-11-22 08:26:01', NULL, '2023-11-22 08:25:40', '2023-11-22 08:26:01'),
(59, 'App\\Models\\User', 13, 'admin', '151efb789215fef6d8069fcd0846460d1c0b0b429dc78d60febd7a6d0303726b', '[\"*\"]', '2023-11-22 08:30:06', NULL, '2023-11-22 08:30:06', '2023-11-22 08:30:06'),
(60, 'App\\Models\\User', 13, 'admin', '8be8abf39808cdf6437555b8d6074dabf99014d4ed7599ec9dfceb09440c2be6', '[\"*\"]', NULL, NULL, '2023-11-22 08:34:32', '2023-11-22 08:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `qa_feedback`
--

CREATE TABLE `qa_feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_objective_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qa_feedback`
--

INSERT INTO `qa_feedback` (`id`, `exam_id`, `course_objective_id`, `comment`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 1, NULL, 'Very haswa bwana', '2023-11-12 09:11:28', '2023-11-12 09:11:53', 1, 1, 1),
(2, 1, NULL, 'Very haswa bwana', '2023-11-12 09:11:44', '2023-11-12 09:11:44', 1, NULL, 1),
(3, 1, NULL, 'Very good', '2023-11-13 07:34:37', '2023-11-13 07:34:37', 1, NULL, 1),
(4, 1, NULL, 'Very good', '2023-11-13 07:36:11', '2023-11-13 07:36:11', 1, NULL, 1),
(5, 1, NULL, 'Very good', '2023-11-13 07:36:36', '2023-11-13 07:36:36', 1, NULL, 1),
(6, 1, NULL, 'Very good', '2023-11-13 07:38:00', '2023-11-13 07:38:00', 1, NULL, 1),
(7, 1, NULL, 'Very good', '2023-11-13 07:38:32', '2023-11-13 07:38:32', 1, NULL, 1),
(8, 1, NULL, 'Very good', '2023-11-13 11:48:06', '2023-11-13 11:48:06', 1, NULL, 1),
(9, 1, NULL, 'Sample maneno', '2023-11-13 12:02:50', '2023-11-13 12:02:50', 4, NULL, 1),
(10, NULL, 1, 'This is an intersting one', '2023-11-13 12:03:32', '2023-11-13 12:03:32', 4, NULL, 1),
(11, 4, NULL, 'Acturial hapa na pale', '2023-11-13 12:07:30', '2023-11-13 12:07:30', 4, NULL, 1),
(12, NULL, 2, 'lglglhjghjgjhlgg', '2023-11-17 02:21:54', '2023-11-17 02:21:54', 15, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'student', NULL, NULL),
(2, 'coordinator', NULL, NULL),
(3, 'administrator', NULL, NULL),
(4, 'qa', NULL, NULL),
(5, 'instructor', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_enrolments`
--

CREATE TABLE `student_enrolments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_enrolments`
--

INSERT INTO `student_enrolments` (`id`, `student_id`, `course_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 1, 1, '2023-11-12 01:44:36', '2023-11-12 01:45:43', 1, 1, 1),
(2, 2, 1, '2023-11-14 10:17:54', '2023-11-14 10:17:54', 1, NULL, 1),
(3, 2, 2, '2023-11-14 10:41:36', '2023-11-14 10:41:36', 2, NULL, 1),
(4, 12, 4, '2023-11-17 02:07:44', '2023-11-17 02:07:44', 12, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_performances`
--

CREATE TABLE `student_performances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `score` decimal(5,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_performances`
--

INSERT INTO `student_performances` (`id`, `student_id`, `exam_id`, `score`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 1, 1, 90.00, '2023-11-12 07:45:31', '2023-11-12 07:53:11', 1, 1, 1),
(2, 1, 3, 82.00, '2023-11-12 07:49:39', '2023-11-12 07:49:39', 1, NULL, 1),
(3, 2, 3, 82.00, '2023-11-14 10:16:33', '2023-11-14 10:16:33', 1, NULL, 1),
(4, 1, 4, 43.00, '2023-11-14 14:22:46', '2023-11-14 14:22:46', 1, NULL, 1),
(5, 1, 5, 67.00, '2023-11-14 14:23:12', '2023-11-14 14:23:12', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `priority` enum('Low','Medium','High') NOT NULL,
  `raised_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `title`, `description`, `priority`, `raised_by`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'Chelsea vs City', 'Ticket ya hapa na pale haiko vile inafaa', 'High', 1, '2023-11-12 08:47:06', '2023-11-13 14:41:38', 1, 5, 0),
(2, 'Ticket Moja', 'Ticket ya hapa na pale haiko vile inafaa', 'High', 1, '2023-11-13 14:08:48', '2023-11-17 02:17:44', 1, 13, 0),
(3, 'Nayo nayo', 'Nayo nayo', 'Medium', 5, '2023-11-13 14:15:30', '2023-11-13 14:39:30', 5, 5, 1),
(4, 'Okay, basi', 'Basi nayo nayo', 'Medium', 5, '2023-11-13 14:16:55', '2023-11-13 14:39:30', 5, 5, 1),
(5, 'Nelly Teren Teren', 'Teren Teren', 'Medium', 5, '2023-11-13 14:19:11', '2023-11-13 14:39:30', 5, 5, 1),
(6, 'Sample Ticket', 'Ticket mfano', 'Medium', 5, '2023-11-14 14:29:19', '2023-11-14 14:32:02', 5, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `identification_number` varchar(50) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `mobile`, `identification_number`, `role_id`, `created_by`, `updated_by`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Wesley Dexter', 'delaney', 'delaney@gmail.com', NULL, '$2y$12$3ZOKBA429m8d4aFRqWW9oO1J73hC3VimoIyfB8E7Ly/xiNFUNEO5.', '0789089089', '89089', 5, NULL, 5, 1, NULL, '2023-11-11 11:37:55', '2023-11-13 14:59:39'),
(2, 'Baraka Mwinisheshe', 'mwinisheshe', 'mwinisheshe@gmail.com', NULL, '$2y$12$HD5l8Vl4ZDSRRoKJQMh/guHf2nb/N5Szc3OjjBjIxF4NbRE9phTue', '0712312389', '890002', 1, NULL, 5, 0, NULL, '2023-11-11 19:25:51', '2023-11-14 11:19:51'),
(3, 'Sammy Lubengo', 'lubengo', 'lubengo@gmail.com', NULL, '$2y$12$6IPyKZRjzL3g0JOvNxbwOuiGlt1oafDJ7EYKpHl7NZjYwm7wCSA/y', '0789089089', '9432423', 2, NULL, 5, 0, NULL, '2023-11-13 07:21:02', '2023-11-14 14:34:27'),
(4, 'Beryl', 'beryl', 'beryl@gmail.com', NULL, '$2y$12$poPSRJbHmH3B0h7M4IFlk.OO8NNE12fKWSuaQnX6EGhhwA.iPS/J6', '0789089023', '432432123', 4, NULL, NULL, 1, NULL, '2023-11-13 11:01:57', '2023-11-13 11:01:57'),
(5, 'Nderu', 'nderu', 'nderu@gmail.com', NULL, '$2y$12$ONwdM9MW1fN1h2qwamHFzu3LhNlfRMqYJEhJf9hq245npGPHcH2Vi', '0789089054', '67867932', 3, NULL, NULL, 1, NULL, '2023-11-13 12:11:24', '2023-11-13 12:11:24'),
(6, 'Kelly', 'kelly', 'kelly@gmail.com', NULL, '$2y$12$iwPP91mG0CjrYKxGmeGmJeoney8IPighF51S5F5MEadOhAfW8KPzy', '0712343255', '3954353', 2, NULL, NULL, 1, NULL, '2023-11-13 15:06:21', '2023-11-13 15:06:21'),
(7, 'Betty', 'betty', 'betty@gmail.com', NULL, '$2y$12$vsVIYfHXXTPpCbmugIWUEucIEINxEHyBqHIC5riHmeA/aYFWrPsiO', '07123789455', '43254235', 4, NULL, NULL, 1, NULL, '2023-11-13 17:19:22', '2023-11-13 17:19:22'),
(8, 'Irene', 'irene', 'irene@gmail.com', NULL, '$2y$12$UNuM8XqUbTw3jQatHR.lNeHIOggrWDwD2NZMFdYjDj4EqxUYCoqIW', '0789898932', '423432234', 2, NULL, NULL, 1, NULL, '2023-11-13 17:25:36', '2023-11-13 17:25:36'),
(9, 'Katrina', 'katrina', 'katrina@gmail.com', NULL, '$2y$12$/t2nYsRpeA2bCArVplbRlO.BWMjciAMW8g9yYzqVLtUm5ye3gPHre', '0712312321', '743289423', 5, NULL, NULL, 1, NULL, '2023-11-13 17:29:22', '2023-11-13 17:29:22'),
(10, 'Ndindi', 'ndindi', 'ndindi@gmail.com', NULL, '$2y$12$SKspHL/1fIxx10oi86eGwuVmaod1IMZpOCNc9.k2IHX01imxiiT0u', '0712312384', '3242324', 2, NULL, NULL, 1, NULL, '2023-11-13 17:37:39', '2023-11-13 17:37:39'),
(11, 'Trisha Kay', 'kayT', 'kayt@gmail.com', NULL, '$2y$12$X2rTzG/hHvNN2ClaV9kyI.8ijhnr4J7UDPmwmF2qLWBYqu3MhOnA2', '0789032132', '2342354', 4, NULL, NULL, 1, NULL, '2023-11-14 14:37:41', '2023-11-14 14:37:41'),
(12, 'student', 'student', 'student@gmail.com', NULL, '$2y$12$AZJHZcQ7NkJdmBJZgDGOT.uLQrYCQC39EbPm7dlGBSvXDPesgy4oi', '9405364946', '32', 1, NULL, NULL, 1, NULL, '2023-11-17 01:41:53', '2023-11-17 01:41:53'),
(13, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$12$47YGvtfCyRvd1GVlCl2PxeNt9Rzz3zgLcchFZBKIlDamGtAN7BIp6', '9405364946', '23', 3, NULL, NULL, 1, NULL, '2023-11-17 02:17:17', '2023-11-17 02:17:17'),
(14, 'instructor', 'instructor', 'instructor@gmail.com', NULL, '$2y$12$v3cnjip8I0apgUZfaeAD.e.rwGhw2TqPawl.U6XA8t/HlrwZK9fxy', '9405364946', '9398', 5, NULL, NULL, 1, NULL, '2023-11-17 02:19:00', '2023-11-17 02:19:00'),
(15, 'qa', 'qa', 'qa@gmail.com', NULL, '$2y$12$KVlyzvlalGjZ0SWpQTEtqOsf4jGjSLj/N2WyTMic9cNrQhcGZlgbq', '9405364946', '87', 4, NULL, NULL, 1, NULL, '2023-11-17 02:21:21', '2023-11-17 02:21:21'),
(16, 'coord', 'coord', 'coord@gmail.com', NULL, '$2y$12$B4RbQf9f3.TsyzCDXK6bfuwHd4qleMruzhvzgWgeqC9rRvfZlKECK', '9405364946', '57', 2, NULL, NULL, 1, NULL, '2023-11-17 02:22:33', '2023-11-17 02:22:33'),
(17, 'admin_sai', 'admin_sai', 'ksvr444@gmail.com', NULL, '$2y$12$QFUGGHFAp9vlvWYMvE4Cxev0Plt/rbq0nlDAEGukP3KiGVcJVg0gC', '9405364946', '3948', 3, NULL, NULL, 1, NULL, '2023-11-22 08:16:52', '2023-11-22 08:16:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_created_by_foreign` (`created_by`),
  ADD KEY `courses_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `course_instructors`
--
ALTER TABLE `course_instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_instructors_course_id_instructor_id_unique` (`course_id`,`instructor_id`),
  ADD KEY `course_instructors_instructor_id_foreign` (`instructor_id`),
  ADD KEY `course_instructors_created_by_foreign` (`created_by`),
  ADD KEY `course_instructors_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `course_objectives`
--
ALTER TABLE `course_objectives`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_objectives_course_id_name_unique` (`course_id`,`name`),
  ADD KEY `course_objectives_created_by_foreign` (`created_by`),
  ADD KEY `course_objectives_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_name_course_id_unique` (`name`,`course_id`),
  ADD KEY `exams_course_id_foreign` (`course_id`),
  ADD KEY `exams_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `exams_exam_format_id_foreign` (`exam_format_id`),
  ADD KEY `exams_created_by_foreign` (`created_by`),
  ADD KEY `exams_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `exam_formats`
--
ALTER TABLE `exam_formats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_formats_created_by_foreign` (`created_by`),
  ADD KEY `exam_formats_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `exam_objectives`
--
ALTER TABLE `exam_objectives`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_objectives_name_exam_id_unique` (`name`,`exam_id`),
  ADD KEY `exam_objectives_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_objectives_created_by_foreign` (`created_by`),
  ADD KEY `exam_objectives_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_types_created_by_foreign` (`created_by`),
  ADD KEY `exam_types_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`),
  ADD KEY `messages_receiver_id_foreign` (`receiver_id`),
  ADD KEY `messages_created_by_foreign` (`created_by`),
  ADD KEY `messages_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `qa_feedback`
--
ALTER TABLE `qa_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qa_feedback_exam_id_foreign` (`exam_id`),
  ADD KEY `qa_feedback_course_objective_id_foreign` (`course_objective_id`),
  ADD KEY `qa_feedback_created_by_foreign` (`created_by`),
  ADD KEY `qa_feedback_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `student_enrolments`
--
ALTER TABLE `student_enrolments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_enrolments_student_id_course_id_unique` (`student_id`,`course_id`),
  ADD KEY `student_enrolments_course_id_foreign` (`course_id`),
  ADD KEY `student_enrolments_created_by_foreign` (`created_by`),
  ADD KEY `student_enrolments_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `student_performances`
--
ALTER TABLE `student_performances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_performances_student_id_exam_id_unique` (`student_id`,`exam_id`),
  ADD KEY `student_performances_exam_id_foreign` (`exam_id`),
  ADD KEY `student_performances_created_by_foreign` (`created_by`),
  ADD KEY `student_performances_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_raised_by_foreign` (`raised_by`),
  ADD KEY `tickets_created_by_foreign` (`created_by`),
  ADD KEY `tickets_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_identification_number_unique` (`identification_number`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_created_by_foreign` (`created_by`),
  ADD KEY `users_updated_by_foreign` (`updated_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_instructors`
--
ALTER TABLE `course_instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_objectives`
--
ALTER TABLE `course_objectives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exam_formats`
--
ALTER TABLE `exam_formats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam_objectives`
--
ALTER TABLE `exam_objectives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `qa_feedback`
--
ALTER TABLE `qa_feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_enrolments`
--
ALTER TABLE `student_enrolments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_performances`
--
ALTER TABLE `student_performances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `courses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `course_instructors`
--
ALTER TABLE `course_instructors`
  ADD CONSTRAINT `course_instructors_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_instructors_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `course_instructors_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `course_instructors_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `course_objectives`
--
ALTER TABLE `course_objectives`
  ADD CONSTRAINT `course_objectives_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_objectives_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `course_objectives_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `exams_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `exams_exam_format_id_foreign` FOREIGN KEY (`exam_format_id`) REFERENCES `exam_formats` (`id`),
  ADD CONSTRAINT `exams_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_types` (`id`),
  ADD CONSTRAINT `exams_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `exam_formats`
--
ALTER TABLE `exam_formats`
  ADD CONSTRAINT `exam_formats_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `exam_formats_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `exam_objectives`
--
ALTER TABLE `exam_objectives`
  ADD CONSTRAINT `exam_objectives_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `exam_objectives_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `exam_objectives_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD CONSTRAINT `exam_types_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `exam_types_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `qa_feedback`
--
ALTER TABLE `qa_feedback`
  ADD CONSTRAINT `qa_feedback_course_objective_id_foreign` FOREIGN KEY (`course_objective_id`) REFERENCES `course_objectives` (`id`),
  ADD CONSTRAINT `qa_feedback_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `qa_feedback_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `qa_feedback_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `student_enrolments`
--
ALTER TABLE `student_enrolments`
  ADD CONSTRAINT `student_enrolments_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `student_enrolments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_enrolments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_enrolments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `student_performances`
--
ALTER TABLE `student_performances`
  ADD CONSTRAINT `student_performances_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_performances_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `student_performances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_performances_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tickets_raised_by_foreign` FOREIGN KEY (`raised_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tickets_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `users_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
