-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 06:43 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codestudent`
--

-- --------------------------------------------------------

--
-- Table structure for table `22permissions22`
--

CREATE TABLE `22permissions22` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `serial_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `22permissions22`
--

INSERT INTO `22permissions22` (`id`, `name`, `guard_name`, `parent_id`, `serial_id`, `created_at`, `updated_at`) VALUES
(1, 'Manage User', 'web', 0, 1, NULL, NULL),
(2, 'Manage Profile', 'web', 0, 2, NULL, NULL),
(3, 'Manage Slider', 'web', 0, 3, NULL, NULL),
(4, 'Manage Setup', 'web', 0, 4, NULL, NULL),
(5, 'Manage Students', 'web', 0, 5, NULL, NULL),
(6, 'Manage Employee', 'web', 0, 6, NULL, NULL),
(7, 'Marks Management', 'web', 0, 7, NULL, NULL),
(8, 'Accounts Management', 'web', 0, 8, NULL, NULL),
(9, 'Report Management', 'web', 0, 9, NULL, NULL),
(10, 'Role Management', 'web', 0, 10, NULL, NULL),
(11, 'View User', 'web', 1, 1, NULL, NULL),
(12, 'Your Profile', 'web', 2, 1, NULL, NULL),
(13, 'Change Your password', 'web', 2, 2, NULL, NULL),
(14, 'View Slider', 'web', 3, 1, NULL, NULL),
(15, 'Marks Entry', 'web', 7, 1, NULL, NULL),
(16, 'Marks Edit', 'web', 7, 2, NULL, NULL),
(17, 'Grade Point', 'web', 7, 3, NULL, NULL),
(18, 'Students Fee', 'web', 8, 1, NULL, NULL),
(19, 'Employee Salary', 'web', 8, 2, NULL, NULL),
(20, 'Other Cost', 'web', 8, 3, NULL, NULL),
(21, 'Monthly Profit', 'web', 9, 1, NULL, NULL),
(22, 'Marksheet', 'web', 9, 2, NULL, NULL),
(23, 'Attendance Report', 'web', 9, 3, NULL, NULL),
(24, 'Student Result', 'web', 9, 4, NULL, NULL),
(25, 'Student ID Card', 'web', 9, 5, NULL, NULL),
(26, 'Role Permission', 'web', 10, 1, NULL, NULL),
(27, 'Employee Registration', 'web', 6, 1, NULL, NULL),
(28, 'Employee Salary', 'web', 6, 2, NULL, NULL),
(29, 'Employee Leave', 'web', 6, 3, NULL, NULL),
(30, 'Employee Attendence', 'web', 6, 4, NULL, NULL),
(31, 'Employee Monthly Salary', 'web', 6, 5, NULL, NULL),
(32, 'Student Registration', 'web', 5, 1, NULL, NULL),
(33, 'Roll Genarate', 'web', 5, 2, NULL, NULL),
(34, 'Registration Fee', 'web', 5, 3, NULL, NULL),
(35, 'Monthly Fee', 'web', 5, 4, NULL, NULL),
(36, 'Exam Fee', 'web', 5, 5, NULL, NULL),
(37, 'Student Class', 'web', 4, 1, NULL, NULL),
(38, 'View Year', 'web', 4, 2, NULL, NULL),
(39, 'View Group', 'web', 4, 3, NULL, NULL),
(40, 'Student Shift', 'web', 4, 4, NULL, NULL),
(41, 'Fee Category', 'web', 4, 5, NULL, NULL),
(42, 'Fee Category Amount', 'web', 4, 6, NULL, NULL),
(43, 'Exam Type', 'web', 4, 7, NULL, NULL),
(44, 'Subject View', 'web', 4, 8, NULL, NULL),
(45, 'Assign Subject', 'web', 4, 9, NULL, NULL),
(46, 'Designation', 'web', 4, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_employee_salaries`
--

CREATE TABLE `account_employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_employee_salaries`
--

INSERT INTO `account_employee_salaries` (`id`, `employee_id`, `date`, `amount`, `created_at`, `updated_at`) VALUES
(1, 30, '2020-08', 5800, '2020-10-10 18:57:57', '2020-10-10 18:57:57'),
(2, 31, '2020-08', 4760, '2020-10-10 18:57:57', '2020-10-10 18:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `account_other_costs`
--

CREATE TABLE `account_other_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_other_costs`
--

INSERT INTO `account_other_costs` (`id`, `date`, `amount`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, '2020-01-07', 50, NULL, '202010120011aboutus.png', '2020-10-11 11:24:34', '2020-10-11 18:11:48'),
(2, '2020-08-18', 500, NULL, NULL, '2020-10-28 03:45:56', '2020-10-28 03:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `account_student_fees`
--

CREATE TABLE `account_student_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_student_fees`
--

INSERT INTO `account_student_fees` (`id`, `year_id`, `class_id`, `student_id`, `fee_category_id`, `date`, `amount`, `created_at`, `updated_at`) VALUES
(6, 1, 4, 28, 1, '2020-08', 80, '2020-10-10 06:48:28', '2020-10-10 06:48:28'),
(7, 1, 5, 27, 1, '2020-08', 160, '2020-10-10 06:52:52', '2020-10-10 06:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `accoun_employee_salaries`
--

CREATE TABLE `accoun_employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_students`
--

CREATE TABLE `assign_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'user_id=student_id',
  `roll` int(11) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_students`
--

INSERT INTO `assign_students` (`id`, `student_id`, `roll`, `class_id`, `year_id`, `group_id`, `shift_id`, `created_at`, `updated_at`) VALUES
(27, 27, 1, 4, 2, NULL, NULL, '2020-07-16 06:33:15', '2021-01-13 00:19:54'),
(28, 27, NULL, 5, 1, NULL, NULL, '2020-07-16 08:56:29', '2020-07-16 08:56:29'),
(29, 28, 5, 4, 1, NULL, NULL, '2020-07-19 20:25:10', '2021-01-06 03:56:41'),
(30, 29, NULL, 5, 1, NULL, 1, '2020-09-12 08:22:14', '2020-09-12 08:22:14'),
(31, 33, 6, 4, 1, NULL, NULL, '2020-10-12 20:23:44', '2021-01-06 03:56:41'),
(32, 34, NULL, 5, 1, NULL, NULL, '2020-10-28 04:01:26', '2020-10-28 04:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `assign_subjects`
--

CREATE TABLE `assign_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `full_mark` double NOT NULL,
  `pass_mark` double NOT NULL,
  `subjective_mark` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_subjects`
--

INSERT INTO `assign_subjects` (`id`, `class_id`, `subject_id`, `full_mark`, `pass_mark`, `subjective_mark`, `created_at`, `updated_at`) VALUES
(7, 5, 1, 100, 33, 100, '2020-07-02 20:30:24', '2020-07-02 20:30:24'),
(8, 5, 2, 100, 33, 100, '2020-07-02 20:30:24', '2020-07-02 20:30:24'),
(9, 5, 3, 100, 33, 100, '2020-07-02 20:30:24', '2020-07-02 20:30:24'),
(10, 6, 1, 100, 33, 100, '2020-07-02 20:31:20', '2020-07-02 20:31:20'),
(11, 6, 2, 100, 33, 100, '2020-07-02 20:31:20', '2020-07-02 20:31:20'),
(12, 6, 3, 100, 33, 100, '2020-07-02 20:31:20', '2020-07-02 20:31:20'),
(13, 6, 4, 100, 33, 100, '2020-07-02 20:31:20', '2020-07-02 20:31:20'),
(14, 6, 5, 100, 33, 100, '2020-07-02 20:31:20', '2020-07-02 20:31:20'),
(15, 6, 6, 100, 33, 100, '2020-07-02 20:31:20', '2020-07-02 20:31:20'),
(16, 7, 1, 100, 33, 100, '2020-07-02 20:32:20', '2020-07-02 20:32:20'),
(17, 7, 2, 100, 33, 100, '2020-07-02 20:32:20', '2020-07-02 20:32:20'),
(18, 7, 3, 100, 33, 100, '2020-07-02 20:32:20', '2020-07-02 20:32:20'),
(19, 7, 4, 100, 33, 100, '2020-07-02 20:32:20', '2020-07-02 20:32:20'),
(20, 7, 5, 100, 33, 100, '2020-07-02 20:32:20', '2020-07-02 20:32:20'),
(21, 7, 6, 100, 33, 100, '2020-07-02 20:32:20', '2020-07-02 20:32:20'),
(22, 8, 1, 100, 33, 100, '2020-07-02 20:35:27', '2020-07-02 20:35:27'),
(23, 8, 2, 100, 33, 100, '2020-07-02 20:35:27', '2020-07-02 20:35:27'),
(24, 8, 3, 100, 33, 100, '2020-07-02 20:35:27', '2020-07-02 20:35:27'),
(25, 8, 4, 100, 33, 100, '2020-07-02 20:35:27', '2020-07-02 20:35:27'),
(26, 8, 5, 100, 33, 100, '2020-07-02 20:35:27', '2020-07-02 20:35:27'),
(28, 4, 1, 100, 33, 100, '2020-07-03 00:28:38', '2020-07-03 00:28:38'),
(29, 4, 3, 100, 33, 100, '2020-07-03 00:28:38', '2020-07-03 00:28:38'),
(30, 4, 2, 100, 33, 100, '2020-07-03 00:28:38', '2020-07-03 00:28:38'),
(31, 8, 6, 100, 33, 100, '2020-09-24 21:13:02', '2020-09-24 21:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Assistan Teacher', '2020-07-03 01:10:16', '2020-07-03 01:10:16'),
(2, 'Teacher', '2020-07-03 01:10:46', '2020-07-03 01:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `discount_students`
--

CREATE TABLE `discount_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_student_id` int(11) NOT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_students`
--

INSERT INTO `discount_students` (`id`, `assign_student_id`, `fee_category_id`, `discount`, `created_at`, `updated_at`) VALUES
(7, 27, 1, 20, '2020-07-16 06:33:15', '2020-07-16 06:38:23'),
(8, 28, 1, 20, '2020-07-16 08:56:29', '2020-07-16 08:56:29'),
(9, 29, 1, 20, '2020-07-19 20:25:10', '2020-07-19 20:25:10'),
(10, 30, 1, 20, '2020-09-12 08:22:14', '2020-09-12 08:22:14'),
(11, 31, 1, 0, '2020-10-12 20:23:44', '2020-10-12 20:23:44'),
(12, 32, 1, 0, '2020-10-28 04:01:26', '2020-10-28 04:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendences`
--

CREATE TABLE `employee_attendences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `date` date NOT NULL,
  `attend_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_attendences`
--

INSERT INTO `employee_attendences` (`id`, `employee_id`, `date`, `attend_status`, `created_at`, `updated_at`) VALUES
(1, 30, '2020-09-18', 'present', '2020-09-18 08:59:37', '2020-09-18 08:59:37'),
(2, 31, '2020-09-18', 'present', '2020-09-18 08:59:37', '2020-09-18 08:59:37'),
(5, 30, '2020-09-20', 'leave', '2020-09-19 19:43:42', '2020-09-19 19:43:42'),
(6, 31, '2020-09-20', 'absent', '2020-09-19 19:43:42', '2020-09-19 19:43:42'),
(7, 30, '2020-09-18', 'leave', '2020-09-20 08:18:10', '2020-09-20 08:18:10'),
(8, 31, '2020-09-18', 'present', '2020-09-20 08:18:10', '2020-09-20 08:18:10'),
(9, 30, '2020-09-19', 'present', '2020-09-20 08:57:55', '2020-09-20 08:57:55'),
(10, 31, '2020-09-19', 'leave', '2020-09-20 08:57:55', '2020-09-20 08:57:55'),
(11, 30, '2020-09-01', 'present', '2020-09-21 18:07:44', '2020-09-21 18:07:44'),
(12, 31, '2020-09-01', 'present', '2020-09-21 18:07:44', '2020-09-21 18:07:44'),
(13, 30, '2020-09-02', 'present', '2020-09-21 18:08:21', '2020-09-21 18:08:21'),
(14, 31, '2020-09-02', 'present', '2020-09-21 18:08:21', '2020-09-21 18:08:21'),
(17, 30, '2020-09-05', 'leave', '2020-09-21 18:09:49', '2020-09-21 18:09:49'),
(18, 31, '2020-09-05', 'present', '2020-09-21 18:09:49', '2020-09-21 18:09:49'),
(19, 30, '2020-08-01', 'present', '2020-09-21 18:51:56', '2020-09-21 18:51:56'),
(20, 31, '2020-08-01', 'present', '2020-09-21 18:51:56', '2020-09-21 18:51:56'),
(21, 30, '2020-08-02', 'present', '2020-09-21 18:52:12', '2020-09-21 18:52:12'),
(22, 31, '2020-08-02', 'present', '2020-09-21 18:52:12', '2020-09-21 18:52:12'),
(23, 30, '2020-09-03', 'present', '2020-09-21 18:52:25', '2020-09-21 18:52:25'),
(24, 31, '2020-09-03', 'present', '2020-09-21 18:52:25', '2020-09-21 18:52:25'),
(25, 30, '2020-08-03', 'present', '2020-09-21 18:52:45', '2020-09-21 18:52:45'),
(26, 31, '2020-08-03', 'present', '2020-09-21 18:52:45', '2020-09-21 18:52:45'),
(27, 30, '2020-09-04', 'present', '2020-09-21 18:52:58', '2020-09-21 18:52:58'),
(28, 31, '2020-09-04', 'present', '2020-09-21 18:52:58', '2020-09-21 18:52:58'),
(29, 30, '2020-08-05', 'present', '2020-09-21 18:53:31', '2020-09-21 18:53:31'),
(30, 31, '2020-08-05', 'present', '2020-09-21 18:53:31', '2020-09-21 18:53:31'),
(31, 30, '2020-08-06', 'present', '2020-09-21 18:53:47', '2020-09-21 18:53:47'),
(32, 31, '2020-08-06', 'present', '2020-09-21 18:53:47', '2020-09-21 18:53:47'),
(33, 30, '2020-08-07', 'present', '2020-09-21 18:54:05', '2020-09-21 18:54:05'),
(34, 31, '2020-08-07', 'present', '2020-09-21 18:54:05', '2020-09-21 18:54:05'),
(35, 30, '2020-08-08', 'present', '2020-09-21 18:54:23', '2020-09-21 18:54:23'),
(36, 31, '2020-08-08', 'present', '2020-09-21 18:54:23', '2020-09-21 18:54:23'),
(37, 30, '2020-08-09', 'present', '2020-09-21 18:54:37', '2020-09-21 18:54:37'),
(38, 31, '2020-08-09', 'present', '2020-09-21 18:54:37', '2020-09-21 18:54:37'),
(39, 30, '2020-08-10', 'present', '2020-09-21 18:54:58', '2020-09-21 18:54:58'),
(40, 31, '2020-08-10', 'present', '2020-09-21 18:54:58', '2020-09-21 18:54:58'),
(41, 30, '2020-08-11', 'present', '2020-09-21 18:55:19', '2020-09-21 18:55:19'),
(42, 31, '2020-08-11', 'present', '2020-09-21 18:55:19', '2020-09-21 18:55:19'),
(43, 30, '2020-08-12', 'present', '2020-09-21 18:55:34', '2020-09-21 18:55:34'),
(44, 31, '2020-08-12', 'present', '2020-09-21 18:55:34', '2020-09-21 18:55:34'),
(45, 30, '2020-08-13', 'present', '2020-09-21 18:55:49', '2020-09-21 18:55:49'),
(46, 31, '2020-08-13', 'present', '2020-09-21 18:55:49', '2020-09-21 18:55:49'),
(47, 30, '2020-08-14', 'present', '2020-09-21 18:56:03', '2020-09-21 18:56:03'),
(48, 31, '2020-08-14', 'present', '2020-09-21 18:56:03', '2020-09-21 18:56:03'),
(49, 30, '2020-08-15', 'present', '2020-09-21 18:56:17', '2020-09-21 18:56:17'),
(50, 31, '2020-08-15', 'present', '2020-09-21 18:56:17', '2020-09-21 18:56:17'),
(51, 30, '2020-08-16', 'present', '2020-09-21 18:56:33', '2020-09-21 18:56:33'),
(52, 31, '2020-08-16', 'present', '2020-09-21 18:56:33', '2020-09-21 18:56:33'),
(53, 30, '2020-08-17', 'present', '2020-09-21 18:56:47', '2020-09-21 18:56:47'),
(54, 31, '2020-08-17', 'present', '2020-09-21 18:56:47', '2020-09-21 18:56:47'),
(55, 30, '2020-08-18', 'present', '2020-09-21 18:57:03', '2020-09-21 18:57:03'),
(56, 31, '2020-08-18', 'present', '2020-09-21 18:57:03', '2020-09-21 18:57:03'),
(57, 30, '2020-08-19', 'present', '2020-09-21 18:57:18', '2020-09-21 18:57:18'),
(58, 31, '2020-08-19', 'present', '2020-09-21 18:57:18', '2020-09-21 18:57:18'),
(59, 30, '2020-08-20', 'present', '2020-09-21 18:57:35', '2020-09-21 18:57:35'),
(60, 31, '2020-08-20', 'present', '2020-09-21 18:57:35', '2020-09-21 18:57:35'),
(61, 30, '2020-08-21', 'present', '2020-09-21 18:57:51', '2020-09-21 18:57:51'),
(62, 31, '2020-08-21', 'present', '2020-09-21 18:57:51', '2020-09-21 18:57:51'),
(65, 30, '2020-08-22', 'present', '2020-09-21 18:58:22', '2020-09-21 18:58:22'),
(66, 31, '2020-08-22', 'present', '2020-09-21 18:58:22', '2020-09-21 18:58:22'),
(67, 30, '2020-08-23', 'present', '2020-09-21 18:58:38', '2020-09-21 18:58:38'),
(68, 31, '2020-08-23', 'present', '2020-09-21 18:58:38', '2020-09-21 18:58:38'),
(69, 30, '2020-08-24', 'present', '2020-09-21 18:59:03', '2020-09-21 18:59:03'),
(70, 31, '2020-08-24', 'present', '2020-09-21 18:59:03', '2020-09-21 18:59:03'),
(71, 30, '2020-08-25', 'present', '2020-09-21 18:59:19', '2020-09-21 18:59:19'),
(72, 31, '2020-08-25', 'present', '2020-09-21 18:59:19', '2020-09-21 18:59:19'),
(73, 30, '2020-08-26', 'present', '2020-09-21 18:59:34', '2020-09-21 18:59:34'),
(74, 31, '2020-08-26', 'present', '2020-09-21 18:59:34', '2020-09-21 18:59:34'),
(75, 30, '2020-08-27', 'leave', '2020-09-21 18:59:52', '2020-09-21 18:59:52'),
(76, 31, '2020-08-27', 'present', '2020-09-21 18:59:52', '2020-09-21 18:59:52'),
(77, 30, '2020-08-28', 'leave', '2020-09-21 19:00:10', '2020-09-21 19:00:10'),
(78, 31, '2020-08-28', 'leave', '2020-09-21 19:00:10', '2020-09-21 19:00:10'),
(79, 30, '2020-10-29', 'present', '2020-09-21 19:00:38', '2020-09-21 19:00:38'),
(80, 31, '2020-10-29', 'absent', '2020-09-21 19:00:38', '2020-09-21 19:00:38'),
(81, 30, '2020-08-30', 'absent', '2020-09-21 19:01:05', '2020-09-21 19:01:05'),
(82, 31, '2020-08-30', 'absent', '2020-09-21 19:01:05', '2020-09-21 19:01:05'),
(83, 30, '2020-08-31', 'present', '2020-09-21 19:01:30', '2020-09-21 19:01:30'),
(84, 31, '2020-08-31', 'absent', '2020-09-21 19:01:30', '2020-09-21 19:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `leave_purpose_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_leaves`
--

INSERT INTO `employee_leaves` (`id`, `employee_id`, `leave_purpose_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 30, 3, '2020-09-21', '2023-09-25', '2020-09-17 20:43:05', '2020-09-17 21:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_logs`
--

CREATE TABLE `employee_salary_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=User_id',
  `previous_salary` int(11) DEFAULT NULL,
  `present_salary` int(11) DEFAULT NULL,
  `increment_salary` int(11) DEFAULT NULL,
  `effected_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_salary_logs`
--

INSERT INTO `employee_salary_logs` (`id`, `employee_id`, `previous_salary`, `present_salary`, `increment_salary`, `effected_date`, `created_at`, `updated_at`) VALUES
(1, 30, 5000, NULL, 0, '2017-01-05', '2020-09-14 11:16:42', '2020-09-14 11:16:42'),
(2, 31, 5000, NULL, 0, '2009-02-18', '2020-09-14 20:53:16', '2020-09-14 20:53:16'),
(3, 30, 5000, 5000, NULL, NULL, '2020-09-16 17:51:08', '2020-09-16 17:51:08'),
(4, 30, 5000, 6000, 1000, '2020-09-16', '2020-09-16 17:57:24', '2020-09-16 17:57:24'),
(5, 31, 5000, 5100, 100, '2020-09-16', '2020-09-16 18:40:15', '2020-09-16 18:40:15'),
(6, 32, 7070, NULL, 0, '2016-08-18', '2020-09-23 10:07:12', '2020-09-23 10:07:12'),
(7, 32, 7070, 10070, 3000, '2021-01-13', '2021-01-11 01:33:25', '2021-01-11 01:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1st Terminal Examination', '2020-07-02 11:00:13', '2020-07-02 11:00:13'),
(2, '2nd Terminal Examination', '2020-07-02 11:01:09', '2020-07-02 11:05:29'),
(3, 'Final Examination', '2020-07-02 11:05:42', '2020-07-02 11:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_categories`
--

CREATE TABLE `fee_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_categories`
--

INSERT INTO `fee_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Regestration Fee', '2020-06-28 16:43:01', '2020-06-28 16:43:01'),
(2, 'Monthly Fee', '2020-06-28 16:43:49', '2020-06-28 16:44:47'),
(3, 'Exam Fee', '2020-06-28 16:45:11', '2020-06-28 16:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `fee_category_amounts`
--

CREATE TABLE `fee_category_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_category_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_category_amounts`
--

INSERT INTO `fee_category_amounts` (`id`, `fee_category_id`, `class_id`, `amount`, `created_at`, `updated_at`) VALUES
(88, 1, 4, 100, '2020-07-02 09:50:14', '2020-07-02 09:50:14'),
(89, 1, 5, 200, '2020-07-02 09:50:14', '2020-07-02 09:50:14'),
(90, 1, 6, 500, '2020-07-02 09:50:14', '2020-07-02 09:50:14'),
(91, 1, 7, 700, '2020-07-02 09:50:14', '2020-07-02 09:50:14'),
(92, 1, 8, 600, '2020-07-02 09:50:14', '2020-07-02 09:50:14'),
(93, 2, 4, 100, '2020-07-02 10:04:39', '2020-07-02 10:04:39'),
(94, 2, 5, 100, '2020-07-02 10:04:39', '2020-07-02 10:04:39'),
(95, 2, 6, 300, '2020-07-02 10:04:39', '2020-07-02 10:04:39'),
(96, 2, 7, 400, '2020-07-02 10:04:39', '2020-07-02 10:04:39'),
(97, 2, 8, 500, '2020-07-02 10:04:39', '2020-07-02 10:04:39'),
(98, 3, 4, 100, '2020-07-02 10:05:19', '2020-07-02 10:05:19'),
(99, 3, 5, 200, '2020-07-02 10:05:19', '2020-07-02 10:05:19'),
(100, 3, 6, 300, '2020-07-02 10:05:19', '2020-07-02 10:05:19'),
(101, 3, 7, 400, '2020-07-02 10:05:19', '2020-07-02 10:05:19'),
(102, 3, 8, 500, '2020-07-02 10:05:19', '2020-07-02 10:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `leave_purposes`
--

CREATE TABLE `leave_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_purposes`
--

INSERT INTO `leave_purposes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'family problem', NULL, NULL),
(2, 'personel problem', NULL, NULL),
(3, 'test', '2020-09-17 21:02:21', '2020-09-17 21:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `marks_grades`
--

CREATE TABLE `marks_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_point` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_marks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_marks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_point` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_point` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks_grades`
--

INSERT INTO `marks_grades` (`id`, `grade_name`, `grade_point`, `start_marks`, `end_marks`, `start_point`, `end_point`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'A', '4', '70', '79', '4', '4.99', 'Very Good', '2020-10-04 18:08:42', '2020-10-24 05:03:41'),
(2, 'A+', '5', '80', '100', '5', '5', 'Excellent', '2020-10-04 18:26:10', '2020-10-24 05:03:58'),
(3, 'A-', '3.5', '60', '69', '3.5', '3.99', 'Good', '2020-10-04 18:27:44', '2020-10-24 05:07:12'),
(4, 'B', '3', '50', '59', '3', '3.49', 'Average', '2020-10-04 18:29:21', '2020-10-24 05:04:19'),
(5, 'C', '2', '40', '49', '2', '2.99', 'Disappoint', '2020-10-04 18:30:31', '2020-10-24 05:04:30'),
(6, 'D', '1', '33', '39', '1', '1.99', 'Bad', '2020-10-04 18:31:10', '2020-10-24 05:04:41'),
(7, 'F', '0', '00', '32', '0', '0.99', 'Fail', '2020-10-04 18:32:45', '2020-10-24 05:04:54');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_06_21_235848_create_sliders_table', 4),
(6, '2020_06_26_051314_create_student_classes_table', 5),
(7, '2020_06_27_004712_create_years_table', 6),
(8, '2020_06_27_031239_create_student_groups_table', 7),
(9, '2020_06_28_000138_create_student_shifts_table', 8),
(10, '2020_06_28_142935_create_fee_categories_table', 9),
(11, '2020_06_28_231242_create_fee_category_amounts_table', 10),
(12, '2020_07_02_163937_create_exam_types_table', 11),
(13, '2020_07_02_235237_create_subjects_table', 12),
(14, '2020_07_03_005245_create_assign_subjects_table', 13),
(15, '2020_07_03_065638_create_designations_table', 14),
(17, '2014_10_12_000000_create_users_table', 15),
(18, '2020_07_03_151547_create_assign_students_table', 16),
(21, '2020_07_03_152226_create_discount_students_table', 17),
(22, '2020_09_14_151211_create_employee_salary_logs_table', 18),
(23, '2020_09_18_004135_create_leave_purposes_table', 19),
(24, '2020_09_18_004327_create_employee_leaves_table', 19),
(25, '2020_09_18_065636_create_employee_attendences_table', 20),
(26, '2020_09_24_141115_create_student_marks_table', 21),
(27, '2020_09_27_025158_create_model_marks_table', 22),
(28, '2020_09_27_175203_create_marks_grades_table', 23),
(29, '2020_10_05_005935_create_account_student_fees_table', 24),
(31, '2020_10_10_232334_create_accoun_employee_salaries_table', 25),
(32, '2020_10_10_233430_create_account_employee_salaries_table', 25),
(33, '2020_10_11_151932_create_account_other_costs_table', 26),
(34, '2020_11_11_044601_create_mssqls_table', 27),
(35, '2020_11_15_061722_create_permission_tables', 27);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mssqls`
--

CREATE TABLE `mssqls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Manage User', 'web', NULL, NULL),
(2, 'Manage Profile', 'web', NULL, NULL),
(3, 'Manage Slider', 'web', NULL, NULL),
(4, 'Manage Setup', 'web', NULL, NULL),
(5, 'Manage Students', 'web', NULL, NULL),
(6, 'Manage Employee', 'web', NULL, NULL),
(7, 'Marks Management', 'web', NULL, NULL),
(8, 'Accounts Management', 'web', NULL, NULL),
(9, 'Report Management', 'web', NULL, NULL),
(10, 'Role Management', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manage_user` tinyint(4) DEFAULT NULL,
  `manage_profile` tinyint(4) DEFAULT NULL,
  `manage_slider` tinyint(4) DEFAULT NULL,
  `manage_setup` tinyint(4) DEFAULT NULL,
  `manage_students` tinyint(4) DEFAULT NULL,
  `manage_employee` tinyint(4) DEFAULT NULL,
  `marks_management` tinyint(4) DEFAULT NULL,
  `accounts_management` tinyint(4) DEFAULT NULL,
  `report_management` tinyint(4) DEFAULT NULL,
  `role_management` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `manage_user`, `manage_profile`, `manage_slider`, `manage_setup`, `manage_students`, `manage_employee`, `marks_management`, `accounts_management`, `report_management`, `role_management`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2021-01-12 06:01:59'),
(2, 'Operator', 'web', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-13 05:35:16'),
(3, 'Employee', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_actions`
--

CREATE TABLE `role_actions` (
  `id` int(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `view_user_act` tinyint(4) DEFAULT NULL,
  `view_slider_act` tinyint(4) DEFAULT NULL,
  `student_class_act` tinyint(4) DEFAULT NULL,
  `view_year_act` tinyint(4) DEFAULT NULL,
  `view_group_act` tinyint(4) DEFAULT NULL,
  `student_shift_act` tinyint(4) DEFAULT NULL,
  `fee_category_act` tinyint(4) DEFAULT NULL,
  `category_amount_act` tinyint(4) DEFAULT NULL,
  `exam_type_act` tinyint(4) DEFAULT NULL,
  `subject_view_act` tinyint(4) DEFAULT NULL,
  `assign_subject_act` tinyint(4) DEFAULT NULL,
  `designation_act` tinyint(4) DEFAULT NULL,
  `student_reg_act` tinyint(4) DEFAULT NULL,
  `roll_generate_act` tinyint(4) DEFAULT NULL,
  `reg_fee_act` tinyint(4) DEFAULT NULL,
  `monthly_fee_act` tinyint(4) DEFAULT NULL,
  `exam_fee_act` tinyint(4) DEFAULT NULL,
  `employee_reg_act` tinyint(4) DEFAULT NULL,
  `employee_salary_act` tinyint(4) DEFAULT NULL,
  `employee_leave_act` tinyint(4) DEFAULT NULL,
  `employee_att_act` tinyint(4) DEFAULT NULL,
  `employee_mon_salary_act` tinyint(4) DEFAULT NULL,
  `marks_entry_act` tinyint(4) DEFAULT NULL,
  `marks_edit_act` tinyint(4) DEFAULT NULL,
  `grade_point_act` tinyint(4) DEFAULT NULL,
  `students_fee_act` tinyint(4) DEFAULT NULL,
  `emp_salary_act` tinyint(4) DEFAULT NULL,
  `other_cost_act` tinyint(4) DEFAULT NULL,
  `monthly_profit_act` tinyint(4) DEFAULT NULL,
  `marksheet_act` tinyint(4) DEFAULT NULL,
  `attendence_report_act` tinyint(4) DEFAULT NULL,
  `student_result_act` tinyint(4) DEFAULT NULL,
  `student_id_card_act` tinyint(4) DEFAULT NULL,
  `role_permission_act` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_actions`
--

INSERT INTO `role_actions` (`id`, `name`, `guard_name`, `view_user_act`, `view_slider_act`, `student_class_act`, `view_year_act`, `view_group_act`, `student_shift_act`, `fee_category_act`, `category_amount_act`, `exam_type_act`, `subject_view_act`, `assign_subject_act`, `designation_act`, `student_reg_act`, `roll_generate_act`, `reg_fee_act`, `monthly_fee_act`, `exam_fee_act`, `employee_reg_act`, `employee_salary_act`, `employee_leave_act`, `employee_att_act`, `employee_mon_salary_act`, `marks_entry_act`, `marks_edit_act`, `grade_point_act`, `students_fee_act`, `emp_salary_act`, `other_cost_act`, `monthly_profit_act`, `marksheet_act`, `attendence_report_act`, `student_result_act`, `student_id_card_act`, `role_permission_act`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2021-01-12 06:00:34'),
(2, 'Operator', 'web', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-13 05:40:35'),
(3, 'Employee', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_submenus`
--

CREATE TABLE `role_submenus` (
  `id` int(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `view_user` tinyint(4) DEFAULT NULL,
  `your_profile` tinyint(4) DEFAULT NULL,
  `change_password` tinyint(4) DEFAULT NULL,
  `view_slider` tinyint(4) DEFAULT NULL,
  `student_class` tinyint(4) DEFAULT NULL,
  `view_year` tinyint(4) DEFAULT NULL,
  `view_group` tinyint(4) DEFAULT NULL,
  `student_shift` tinyint(4) DEFAULT NULL,
  `free_category` tinyint(4) DEFAULT NULL,
  `category_amount` tinyint(4) DEFAULT NULL,
  `exam_type` tinyint(4) DEFAULT NULL,
  `subject_view` tinyint(4) DEFAULT NULL,
  `assign_subject` tinyint(4) DEFAULT NULL,
  `designation` tinyint(4) DEFAULT NULL,
  `student_registration` tinyint(4) DEFAULT NULL,
  `roll_generate` tinyint(4) DEFAULT NULL,
  `registration_fee` tinyint(4) DEFAULT NULL,
  `monthly_fee` tinyint(4) DEFAULT NULL,
  `exam_fee` tinyint(4) DEFAULT NULL,
  `employee_registration` tinyint(4) DEFAULT NULL,
  `employee_salary` tinyint(4) DEFAULT NULL,
  `employee_leave` tinyint(4) DEFAULT NULL,
  `employee_attendence` tinyint(4) DEFAULT NULL,
  `employee_monthly_salary` tinyint(4) DEFAULT NULL,
  `marks_entry` tinyint(4) DEFAULT NULL,
  `marks_edit` tinyint(4) DEFAULT NULL,
  `grade_point` tinyint(4) DEFAULT NULL,
  `students_fee` tinyint(4) DEFAULT NULL,
  `emp_salary` tinyint(4) DEFAULT NULL,
  `other_cost` tinyint(4) DEFAULT NULL,
  `monthly_profit` tinyint(4) DEFAULT NULL,
  `marksheet` tinyint(4) DEFAULT NULL,
  `attendence_report` tinyint(4) DEFAULT NULL,
  `student_result` tinyint(4) DEFAULT NULL,
  `student_id_card` tinyint(4) DEFAULT NULL,
  `role_permission` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_submenus`
--

INSERT INTO `role_submenus` (`id`, `name`, `guard_name`, `view_user`, `your_profile`, `change_password`, `view_slider`, `student_class`, `view_year`, `view_group`, `student_shift`, `free_category`, `category_amount`, `exam_type`, `subject_view`, `assign_subject`, `designation`, `student_registration`, `roll_generate`, `registration_fee`, `monthly_fee`, `exam_fee`, `employee_registration`, `employee_salary`, `employee_leave`, `employee_attendence`, `employee_monthly_salary`, `marks_entry`, `marks_edit`, `grade_point`, `students_fee`, `emp_salary`, `other_cost`, `monthly_profit`, `marksheet`, `attendence_report`, `student_result`, `student_id_card`, `role_permission`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2021-01-12 05:21:29'),
(2, 'Operator', 'web', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-13 05:35:16'),
(3, 'Employee', 'web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'One', '2020-06-26 18:23:21', '2020-06-26 18:23:21'),
(5, 'Two', '2020-07-01 10:33:05', '2020-07-01 10:33:05'),
(6, 'Three', '2020-07-01 10:39:40', '2020-07-01 10:39:40'),
(7, 'Four', '2020-07-01 10:39:50', '2020-07-01 10:39:50'),
(8, 'Five', '2020-07-01 10:40:00', '2020-07-01 10:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_groups`
--

CREATE TABLE `student_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_groups`
--

INSERT INTO `student_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Commerce', '2020-06-26 21:28:22', '2020-07-09 19:13:15'),
(2, 'Arts', '2020-06-26 21:29:17', '2020-06-26 21:29:17'),
(3, 'Science', '2020-06-27 18:21:25', '2020-07-09 19:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'student_id=user_id',
  `id_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `assign_subject_id` int(11) NOT NULL,
  `exam_type_id` int(11) NOT NULL,
  `marks` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`id`, `student_id`, `id_no`, `year_id`, `class_id`, `assign_subject_id`, `exam_type_id`, `marks`, `created_at`, `updated_at`) VALUES
(1, 27, '20190001', 1, 5, 7, 1, 50, '2020-09-24 20:25:11', '2020-09-24 20:25:11'),
(2, 29, '20200029', 1, 5, 7, 1, 51, '2020-09-24 20:25:11', '2020-09-24 20:25:11'),
(4, 28, '20200028', 1, 4, 28, 1, 55, '2020-09-26 20:34:50', '2020-09-26 20:34:50'),
(5, 28, '20200028', 1, 4, 28, 1, 52, '2020-10-14 11:04:44', '2020-10-14 11:04:44'),
(6, 33, '20200030', 1, 4, 28, 1, 55, '2020-10-14 11:04:44', '2020-10-14 11:04:44'),
(7, 28, '20200028', 1, 4, 28, 1, 52, '2020-10-24 06:01:28', '2020-10-24 06:01:28'),
(8, 33, '20200030', 1, 4, 28, 1, 55, '2020-10-24 06:01:28', '2020-10-24 06:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `student_shifts`
--

CREATE TABLE `student_shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_shifts`
--

INSERT INTO `student_shifts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Shift A', '2020-06-27 18:29:58', '2020-07-09 19:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', '2020-07-02 18:12:21', '2020-07-02 18:12:21'),
(2, 'Math', '2020-07-02 18:12:40', '2020-07-02 18:12:53'),
(3, 'English', '2020-07-02 18:15:46', '2020-07-02 18:15:46'),
(4, 'General Science', '2020-07-02 18:16:10', '2020-07-02 18:16:10'),
(5, 'Social Science', '2020-07-02 18:16:23', '2020-07-02 18:16:23'),
(6, 'Islamic Studies', '2020-07-02 18:16:39', '2020-07-02 18:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'student,employee,admin',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'admin=head of software,operator=computer operator,user=employee',
  `role_id` int(10) DEFAULT NULL COMMENT 'Admin=1| Operator=2| Employee=3',
  `join_date` date DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `monthly_income_family` double DEFAULT NULL,
  `examination_centre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `center_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_exam_roll` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_merit_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssc_institute_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_institute_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssc_year_passing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssc_result` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssc_board_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_year_passing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_result` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_board_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=inactive,1=active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `gender`, `image`, `fname`, `mname`, `f_occupation`, `m_occupation`, `religion`, `id_no`, `dob`, `code`, `role`, `role_id`, `join_date`, `designation_id`, `salary`, `monthly_income_family`, `examination_centre`, `center_code`, `medical_exam_roll`, `position_merit_list`, `ssc_institute_name`, `hsc_institute_name`, `ssc_year_passing`, `ssc_result`, `ssc_board_name`, `hsc_year_passing`, `hsc_result`, `hsc_board_name`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Nayeem', 'nayeembd84@gmail.com', NULL, '$2y$10$h3EMrzKz9IPtPFR8BEqdHe.fB1GQBkeC/vvUZEd18F.U.dSaK4mhq', '01818811220', 'Lakshmipur', NULL, '202011231203images (3).jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2021-01-13 05:27:50'),
(2, 'admin', 'Nayeem', 'harun.ibf@gmail.com', NULL, '$2y$10$i84zNWMSVPdVyvrsQ/5BIePWSSJ8VilNy9qYJefKH/SfRBLTLcPea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4657', 'Admin', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-07-03 10:36:21', '2020-07-03 10:39:50'),
(3, 'admin', 'masud', 'masud@gmail.com', NULL, '$2y$10$8ioUA/ZF7tmmYMs2s6GJY.seltRXWmOMff1LZhFJD4KlA4Lqmb/pC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2366', 'Operator', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-07-08 17:51:44', '2020-07-08 17:51:44'),
(27, 'student', 'Saymon', NULL, NULL, '$2y$10$CQUFB/H7o5zMHWhDEjWkheIeNhFsSqzH/PkJ5jWsZE/0McesBjnhC', '0181736374839', 'Raipur, Lakshmipur', 'male', NULL, 'Iqbal', 'Hasina', NULL, NULL, 'islam', '20190001', '2014-11-16', '8166', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-07-16 06:33:15', '2020-07-16 06:33:15'),
(28, 'student', 'Kulsum Akter', NULL, NULL, '$2y$10$FEmgYrBCmKwjwebo9SKz0uP9BDP6AwNu0BGT45/rHRAZzSdZJZkE2', '01812345678', 'Kalikapur, SOnaimuri, Noakhali', 'female', '202007201232download (1).jpg', 'Abdul Malek', 'Amena Begum', NULL, NULL, 'islam', '20200028', '1999-02-20', '3045', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-07-19 20:25:10', '2020-07-20 06:32:03'),
(29, 'student', 'Fatem', NULL, NULL, '$2y$10$rAahaPdoH5X5GGhEUFmBze/PreDrbF1JpuLm2tmGoGUtErPSsNGQ2', '01736374939', 'Sonimuri, Noakhali', 'female', NULL, 'Abdul Malek', 'Amena Begum', NULL, NULL, 'islam', '20200029', '1996-01-21', '8386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-09-12 08:22:14', '2020-09-12 08:22:14'),
(30, 'employee', 'Md.Kamal', NULL, NULL, '$2y$10$kNU52kccPVyvMsWlsTDMF.BIs6KUu6AuRzb0DQgRUUIrMoro239v2', '015554789463', 'Kishorgonj', 'male', '202009151633naim.jpg', 'Hakim', 'Jahanara Akter', NULL, NULL, 'islam', '20170101', '1980-05-04', '3013', NULL, NULL, '2017-01-05', 1, 6000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-09-14 11:16:42', '2020-09-16 17:57:24'),
(31, 'employee', 'Hasan', NULL, NULL, '$2y$10$he6VqmsgllKN9i7vhpdNbuQl0rfeney3upE2mSpk6RoUIxR.otpMy', '0173512479', 'Khustia', 'male', NULL, 'Jahid', 'Maryam', NULL, NULL, 'islam', '2009020031', '1996-10-23', '1656', NULL, NULL, '2009-02-18', 2, 5100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-09-14 20:53:16', '2020-09-16 18:40:15'),
(32, 'employee', 'Saifuddin', NULL, NULL, '$2y$10$/LfKD5ArQ2xNpuOkBKq8POZUqhY14oTl3gl1.7nnRssdA6F6rZGLm', '01023458744', 'Bogura', 'male', '202009231607naim.jpg', 'Sameul', 'Jinatara', NULL, NULL, 'islam', '2016080032', '1984-12-02', '4330', NULL, NULL, '2016-08-18', 2, 10070, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-09-23 10:07:12', '2021-01-11 01:33:25'),
(33, 'student', 'simul', NULL, NULL, '$2y$10$gAAE4bhaH/7HmvHw11npaeuNBbKFBjirrV/7GLOBEoBxSumFYzcu6', '01478954213', 'Kurigram', 'male', NULL, 'karim', 'salma', NULL, NULL, 'islam', '20200030', '1996-01-08', '3120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-12 20:23:44', '2020-10-12 20:23:44'),
(34, 'student', 'Firoz', NULL, NULL, '$2y$10$UDWk3b.5t/EiHnXeSSSb8uzt0Co/mj/NuT6dICCsn5WWN3nvJwqCG', '01547896543', 'Cumilla', 'male', '202010281001download.jpg', 'Kalam', 'Farzana', NULL, NULL, 'islam', '20200034', '1997-01-06', '1950', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-28 04:01:26', '2020-10-28 04:01:26'),
(35, 'admin', 'Rashid', 'nayeem_ch@yahoo.co.in', NULL, '$2y$10$qeUeddrNTvJSJWtzxXae7OeEzds5J2HZbtxT3huB1KD/s96wFAbSS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1968', 'Operator', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-11-15 22:50:00', '2020-11-15 22:50:00'),
(36, 'admin', 'syed', 'syedibh@gmail.com', NULL, '$2y$10$VLgJoUlG.zUUBd4R0p5RXOJ4KSGp8lChwsk0SuQd.7PzUMvjE5peC', '01879272921', 'Dhaka', 'Male', '202012271037Safa PP Class one.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9591', 'Admin', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-12-27 04:34:59', '2020-12-27 04:38:07'),
(37, 'admin', 'education', 'edu@yahoo.com', NULL, '$2y$10$90t0znf.GqmE127/jKlLwOaz/2riF3rGG3wKGRvCd9JMV8NpgSHuu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3940', 'Admin', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-12-27 04:45:50', '2020-12-27 04:45:50'),
(38, 'admin', 'jafor', 'ja@yahoo.com', NULL, '$2y$10$LejviPvLNxrfrBoQy0sJYOCp.w366tXDd2/HdWlAX1moZ.RB319Re', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9247', 'Operator', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-12-28 01:58:28', '2020-12-28 01:58:28'),
(39, 'admin', 'abc', 'a@yahoo.com', NULL, '$2y$10$5sSYU3v8pTWRFccGenqAf.84GG25U5ncm1KPl/T67tRGEKPhTNkka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8579', 'Operator', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-01-06 00:38:56', '2021-01-06 01:20:50');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2020', '2020-06-26 19:18:24', '2020-06-26 19:18:24'),
(2, '2019', '2020-06-26 19:24:05', '2020-06-26 19:24:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `22permissions22`
--
ALTER TABLE `22permissions22`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_student_fees`
--
ALTER TABLE `account_student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accoun_employee_salaries`
--
ALTER TABLE `accoun_employee_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_students`
--
ALTER TABLE `assign_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `discount_students`
--
ALTER TABLE `discount_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendences`
--
ALTER TABLE `employee_attendences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary_logs`
--
ALTER TABLE `employee_salary_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_types_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_categories`
--
ALTER TABLE `fee_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_categories_name_unique` (`name`);

--
-- Indexes for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leave_purposes_name_unique` (`name`);

--
-- Indexes for table `marks_grades`
--
ALTER TABLE `marks_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `mssqls`
--
ALTER TABLE `mssqls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_actions`
--
ALTER TABLE `role_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `role_submenus`
--
ALTER TABLE `role_submenus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_classes_name_unique` (`name`);

--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_groups_name_unique` (`name`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_shifts`
--
ALTER TABLE `student_shifts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_shifts_name_unique` (`name`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `years_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `22permissions22`
--
ALTER TABLE `22permissions22`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_student_fees`
--
ALTER TABLE `account_student_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `accoun_employee_salaries`
--
ALTER TABLE `accoun_employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_students`
--
ALTER TABLE `assign_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discount_students`
--
ALTER TABLE `discount_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employee_attendences`
--
ALTER TABLE `employee_attendences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_salary_logs`
--
ALTER TABLE `employee_salary_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT for table `fee_categories`
--
ALTER TABLE `fee_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marks_grades`
--
ALTER TABLE `marks_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `mssqls`
--
ALTER TABLE `mssqls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_actions`
--
ALTER TABLE `role_actions`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_submenus`
--
ALTER TABLE `role_submenus`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_shifts`
--
ALTER TABLE `student_shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
