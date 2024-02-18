-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 08:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrimony`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_me`
--

CREATE TABLE `about_me` (
  `id` int(10) UNSIGNED NOT NULL,
  `describe_yourself` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_my_family` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_me`
--

INSERT INTO `about_me` (`id`, `describe_yourself`, `about_my_family`, `education`, `occupation`, `created_at`, `updated_at`, `user_id`) VALUES
(2, 'yBFf1NtLxpdzLDEfFTU6Uns83tLXy9nCloM', 'EMzW9hRvAuf3YEOAx8okrOgE9vN9xc', '8offEuBP6yitfet32gXUDRoJsJFQnj', 'SPIeoFkcA17MvfcRIHC4bChwu5ubCW', NULL, NULL, ''),
(3, 'FkQTfJxMLSs9kEsjssYU69TbhMLg92fDhv5', 'cTIhJBIfnESKOcJUdfJfcRHoqNJpPy', 'T8N7VxjbGzGKo4xo2pTdKW8YtQyPVm', 'DoJJ5iC9XlW8eDFDBS2Ih2LXqvJxMb', NULL, NULL, ''),
(4, 'BwM4f32ZXsy8FGvryUlQl7EzQ3HNkJrCzlo', 'D7QVJZIiZ8YIs8JzcELGLiZ4jzn9uE', '5kURAnk87fqCceEgvJysxudhSD3ZPO', 'Cwd8Cz92qyXgiCB3n38NMwc5hcd3qe', NULL, NULL, ''),
(5, 'TP5LUtW4dGXlv2H7A5N5jsaFVsf4wCfGHe2', 'PwKOWbTfqxB5CSO6QMsbkhisvEvLuL', 'oT3oN6fxVOLzUlrbyuqeaTrgqDIlmH', 'Vz2DfbHL6roRf0cJRdfQjX5olOoj41', NULL, NULL, ''),
(6, 'kNCO0YkE8Dt22gAUlP5yHqIsmu9mAlwFqjX', 'shZpmMFJLVDw9tdYeGbTBWD0i55jdz', 'mzcFBK4UN4LSUAu38bFPohpqQgutAN', 'BwFkFMrwpHwJLagYE2TYAFcXRUAOlu', NULL, NULL, ''),
(7, 'test', 'test', '2', '2', '2022-04-07 06:44:42', '2022-04-07 06:44:42', '13'),
(8, 'test', 'test', '2', '2', '2022-04-07 06:57:24', '2022-04-07 06:57:24', '13'),
(9, 'dxfdsgffjfg cgdfgs132324567', 'fdghfdgdf cv345365gbfdgcv', '2', '1', '2022-04-07 06:58:17', '2022-04-07 06:58:17', '14'),
(10, 'sdfsdfsdf', 'sdfsdfsdfsdf', '1', '2', '2022-04-07 07:44:55', '2022-04-07 07:44:55', '15'),
(11, 'Simple Girl', 'Upper middle class family', '1', '1', '2022-04-07 22:14:15', '2022-04-07 22:14:15', '16'),
(12, 'ASDfgcvhbjnkm', 'asdfghjk', '8', '1', '2022-04-08 03:43:54', '2022-04-08 03:43:54', '17'),
(13, 'doctjgfhlurshgkjsd', 'gdfkjhgfocvk', '39', '69', '2022-04-08 03:48:51', '2022-04-08 03:48:51', '18'),
(14, 'hghghhvmjbj,m', 'ujgugukjbkm,', '9', '10', '2022-04-08 03:55:38', '2022-04-08 03:55:38', '19'),
(15, 'dwdw', 'wdwqd', '9', '8', '2022-04-08 04:17:51', '2022-04-08 04:17:51', '21'),
(17, 'fdgr', 'sdfsd', 'sdfsd', 'dsf', '2022-04-13 06:47:31', '2022-04-13 06:47:31', ''),
(18, 'fdgr', 'sdfsd', 'sdfsd', 'dsf', '2022-04-13 07:08:21', '2022-04-13 07:08:21', ''),
(19, 'fdgr', 'sdfsd', 'sdf', 'dsf', '2022-04-13 07:10:52', '2022-04-13 07:10:52', ''),
(70, 'erwerwe', 'esrwer', 'werwe', 'sdvfsgd', '2022-04-08 04:35:32', '2022-04-17 23:44:02', '22'),
(72, 'fdgr', 'sdfsd', 'sdfsd', 'dsf', '2022-05-08 23:06:25', '2022-05-08 23:06:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `annual_income`
--

CREATE TABLE `annual_income` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Annual_Income` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `basic_details`
--

CREATE TABLE `basic_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `age` int(11) DEFAULT NULL,
  `marital_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_tongue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_managed_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenged` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manglik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `Annual_Income` int(11) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_details`
--

INSERT INTO `basic_details` (`id`, `age`, `marital_status`, `height`, `religion`, `mother_tongue`, `location`, `cast`, `profile_managed_by`, `created_at`, `updated_at`, `first_name`, `last_name`, `email`, `image`, `country`, `challenged`, `manglik`, `Annual_Income`, `dob`) VALUES
(1, NULL, '4', '18', '3', '1', 'nG5LwJfpCQAn59xmu71eDOr9Tyg2fZ', '13', '3', NULL, '2022-04-07 07:06:32', 'Roary', 'Wise', 'kuzatykyx@mailinator.com', '1649334992.images.jpg', '', '', 'no', 0, '0000-00-00'),
(7, 24, '2', '6', '4', '1', '', '17', '7', '2022-04-07 03:30:40', '2022-04-08 03:52:52', 'Savannah', 'Tran', 'puperity@mailinator.com', '1649409772.avatar6.jpg', '', '', 'no', 0, '0000-00-00'),
(8, 135, '1', '7', '4', '15', '', '16', '7', '2022-04-07 05:15:15', '2022-04-08 03:53:21', 'shakti', 'singh', 'shakti@gmail.com', '1649409801.user6-128x128.jpg', '', '', 'no', 0, '0000-00-00'),
(9, NULL, '4', '15', '3', '2', '', '18', '4', '2022-04-07 06:11:59', '2022-04-07 07:04:29', 'Judith', 'Dunlap', 'mypohulap@mailinator.com', '1649334869.download (2).png', '', '', 'no', 0, '0000-00-00'),
(11, NULL, '3', '8', '3', '2', '', '16', '4', '2022-04-07 06:27:25', '2022-04-07 07:03:09', 'shakti', 'singh', 'shakti33@g', '1649334789.1648625278.1-13650_photo-wallpaper-winter-scarf-glasses-laptop-winter-coffee.jpg', '', '', 'no', 0, '0000-00-00'),
(12, 21, '2', '3', '4', '1', '', '18', '7', '2022-04-07 06:30:34', '2022-04-08 03:51:35', 'test', 'test2', 'teset@gmail.com', '1649409695.avatar5.png', '', '', 'no', 0, '0000-00-00'),
(13, NULL, '2', '8', '2', '2', '', '8', '1', '2022-04-07 06:40:51', '2022-04-07 06:40:51', 'shakti', 'sidnf', 'fdfdfdfdf@gmail.com', 'C:\\fakepath\\DJs.png', '', '', 'no', 0, '0000-00-00'),
(14, NULL, '2', '2', '1', '3', '', '8', '2', '2022-04-07 06:57:50', '2022-04-07 06:57:50', 'Virginia', 'Collins', 'qety@mailinator.com', 'C:\\fakepath\\user.png', '', '', 'no', 0, '0000-00-00'),
(15, 199, '3', '9', '4', '15', '', '18', '7', '2022-04-07 07:44:32', '2022-04-08 03:53:47', 'king', 'test', 'king@gmail.com', '1649409827.user8-128x128.jpg', '', '', 'no', 0, '0000-00-00'),
(16, NULL, '2', '7', '1', '2', '', '1', '2', '2022-04-07 22:11:09', '2022-04-07 22:11:09', 'Nitika', 'Gupta', 'nitika.img@gmail.com', 'C:\\fakepath\\Screenshot_5.jpg', '', '', 'no', 0, '0000-00-00'),
(18, 21, '1', '24', '4', '1', '', '16', '7', '2022-04-08 03:47:52', '2022-04-08 03:51:02', 'naveen', 'Sharma', 'nav@gmail.com', '1649409662.avatar4.png', '', '', 'no', 0, '0000-00-00'),
(19, 22, '2', '8', '1', '7', '', '8', '2', '2022-04-08 03:54:33', '2022-04-08 03:54:33', 'nitesh', 'sharma', 'nitesh@gmail.com', 'C:\\fakepath\\40075197_4-daawat-basmati-rice-rozana-super-90.jpg', '', '', 'no', 0, '0000-00-00'),
(20, 23, '1', '1', '4', '3', '', '4', '1', '2022-04-08 04:16:06', '2022-04-08 04:16:06', 'Bhwana', 'pathak', 'bh@gmail.com', 'C:\\fakepath\\40075197_4-daawat-basmati-rice-rozana-super-90.jpg', '', '', 'no', 0, '0000-00-00'),
(21, 51, '3', '33', '4', '4', '', '1', '7', '2022-04-08 04:17:06', '2022-04-08 04:17:06', 'Brynn', 'Matthews', 'nivoz@mailinator.com', 'C:\\fakepath\\40075197_4-daawat-basmati-rice-rozana-super-90.jpg', '', '', 'no', 0, '0000-00-00'),
(22, 30, '4', '34', '4', '6', '', '17', '1', '2022-04-08 04:33:43', '2022-04-08 04:33:43', 'Brielle', 'Roman', 'cubiz@mailinator.com', 'C:\\fakepath\\40075197_4-daawat-basmati-rice-rozana-super-90.jpg', '', '', 'no', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blood_groop` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `blood_groop`, `created_at`, `updated_at`) VALUES
(1, 'A+', NULL, NULL),
(2, 'A-', NULL, NULL),
(3, 'B+', NULL, NULL),
(4, 'B-', NULL, NULL),
(5, 'AB+', NULL, NULL),
(6, 'AB-', NULL, NULL),
(7, 'O+', NULL, NULL),
(8, 'O-', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book`, `created_at`, `updated_at`) VALUES
(1, 'Classic literature', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(2, 'Biographies', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(3, 'History', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(4, 'Poetry', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(5, 'Romance', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(6, 'Thriller / Suspense', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(7, 'Humour', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(8, 'Science Fiction', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(9, 'Fantasy', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(10, 'Business / Occupational', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(11, 'Philosophy / Spiritual', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(12, 'Self-help', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(13, 'Short stories', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(14, 'Comics', '2022-03-25 00:41:08', '2022-03-25 00:41:08'),
(15, 'Magazines & Newspapers', '2022-03-25 00:41:08', '2022-03-25 00:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE `casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`id`, `cast`, `created_at`, `updated_at`) VALUES
(1, 'hindu', NULL, NULL),
(2, 'punjbai', NULL, NULL),
(3, 'all', NULL, NULL),
(4, 'hindu', NULL, NULL),
(5, 'punjbai', NULL, NULL),
(6, 'all', NULL, NULL),
(7, 'hindu', NULL, NULL),
(8, 'punjbai', NULL, NULL),
(9, 'all', NULL, NULL),
(10, 'hindu', NULL, NULL),
(11, 'punjbai', NULL, NULL),
(12, 'all', NULL, NULL),
(13, 'hindu', NULL, NULL),
(14, 'punjbai', NULL, NULL),
(15, 'all', NULL, NULL),
(16, 'hindu', NULL, NULL),
(17, 'punjbai', NULL, NULL),
(18, 'all', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country`, `created_at`, `updated_at`) VALUES
(1, 'india', NULL, NULL),
(2, 'america', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cuisine`
--

CREATE TABLE `cuisine` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cuisine` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisine`
--

INSERT INTO `cuisine` (`id`, `cuisine`, `created_at`, `updated_at`) VALUES
(1, 'South Indian', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(2, 'Punjabi', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(3, 'Gujarati', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(4, 'Rajasthani', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(5, 'Bengali', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(6, 'Konkan', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(7, 'Chinese', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(8, 'Continental', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(9, 'Moghlai', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(10, 'Italian', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(11, 'Arabic', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(12, 'Thai', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(13, 'Sushi', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(14, 'Mexican', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(15, 'Lebanese', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(16, 'Latin American', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(17, 'Spanish', '2022-03-25 01:06:32', '2022-03-25 01:06:32'),
(18, 'Fast food', '2022-03-25 01:06:32', '2022-03-25 01:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `dress_style`
--

CREATE TABLE `dress_style` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dress_style` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dress_style`
--

INSERT INTO `dress_style` (`id`, `dress_style`, `created_at`, `updated_at`) VALUES
(1, 'Classic Indian - typically Indian formal wear', '2022-03-25 00:57:50', '2022-03-25 00:57:50'),
(2, 'Trendy - in line with the latest fashion', '2022-03-25 00:57:50', '2022-03-25 00:57:50'),
(3, 'Classic Western - typically western formal wear', '2022-03-25 00:57:50', '2022-03-25 00:57:50'),
(4, 'Designer - only leading brands will do', '2022-03-25 00:57:50', '2022-03-25 00:57:50'),
(5, 'Casual - usually in jeans and T-shirts', '2022-03-25 00:57:50', '2022-03-25 00:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `education`, `created_at`, `updated_at`) VALUES
(1, 'B.Arch', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(2, 'B.Des', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(3, 'B.E/B.Tech', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(4, 'B.Pharma', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(5, 'M.Arch', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(6, 'M.Des', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(7, 'M.E/M.Tech', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(8, 'M.Pharma', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(9, 'M.S. (Engineering)', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(10, 'B.IT', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(11, 'BCA', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(12, 'MCA/PGDCA', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(13, 'B.Com', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(14, 'CA', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(15, 'CFA', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(16, 'CS', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(17, 'ICWA', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(18, 'M.Com', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(19, 'BBA', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(20, 'BHM', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(21, 'MBA/PGDM', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(22, 'BAMS', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(23, 'BDS', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(24, 'BHMS', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(25, 'BPT', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(26, 'BVSc.', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(27, 'DM', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(28, 'M.D.', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(29, 'M.S. (Medicine)', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(30, 'MBBS', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(31, 'MCh', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(32, 'MDS', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(33, 'MPT', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(34, 'MVSc.', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(35, 'BL/LLB', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(36, 'ML/LLM', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(37, 'B.A', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(38, 'B.Ed', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(39, 'B.Sc', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(40, 'BFA', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(41, 'BJMC', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(42, 'M.A', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(43, 'M.Ed', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(44, 'M.Sc', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(45, 'MFA', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(46, 'MJMC', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(47, 'MSW', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(48, 'M.Phil', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(49, 'Ph. D', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(50, 'High School', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(51, 'Trade School', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(52, 'Diploma', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(53, 'Other', '2022-03-24 01:25:26', '2022-03-24 01:25:26'),
(54, 'kG0e49a6', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education_career`
--

CREATE TABLE `education_career` (
  `id` int(10) UNSIGNED NOT NULL,
  `highest_education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ug_college` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pg_college` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_ug_degree` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_pg_degree` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employed_in` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education_career`
--

INSERT INTO `education_career` (`id`, `highest_education`, `school_name`, `ug_college`, `pg_college`, `other_ug_degree`, `other_pg_degree`, `employed_in`, `occupation`, `organisation_name`, `created_at`, `updated_at`, `user_id`) VALUES
(1, '2', 'Dfgdgdfg', 'Dfgdfgdfg', 'dfgdfgdfg', 'dfgdfgdfg', 'dfgdfgdfgdf', 'dfgdfgdfgdfg', 'dfgdfgdfg', 'dfgdfgdfgdfg', '2022-04-07 07:03:08', '2022-04-07 07:03:08', 0),
(2, '1', 'Sdfsdfs', 'Sdfsdfsdf', 'sdfsdfsdf', 'fsdfsdf', 'fsdfsdf', 'sdfsdfsdf', 'sdfsdfsdf', 'sdfsdfsdf', '2022-04-07 07:45:38', '2022-04-07 07:45:38', 0),
(3, '1', 'KV', 'Govt', 'PG', 'UG', 'PG', 'IMG', 'Developer', 'IMG', '2022-04-07 22:16:56', '2022-04-07 22:16:56', 0),
(4, '22', 'Arsenio Hogan', 'Nisi sit eiusmod in', 'Dicta nostrud vero c', 'In sit sequi explica', 'Impedit eiusmod cul', 'Officia amet verita', 'Consequatur explicab', 'Calhoun and Callahan Plc', '2022-04-08 03:44:11', '2022-04-08 03:44:11', 0),
(5, '1', 'QWASDFG', 'SdFGCVHBN', 'sdfghnm', 'aSDFGH', 'AsdsFGH', 'FBN', 'SADFGN', 'DFGCVB', '2022-04-08 03:49:48', '2022-04-08 03:49:48', 0),
(6, '47', 'Stacey Pacheco', 'Occaecat qui a dolor', 'Minima quod aliqua', 'Maxime placeat dolo', 'Laboriosam eaque ad', 'Dolor velit itaque a', 'Deserunt qui consect', 'Coleman Hinton Associates', '2022-04-08 04:18:26', '2022-04-08 04:18:26', 0),
(7, '9', 'Laurel Shepherd', 'Sapiente corrupti i', 'Doloremque officia q', 'Culpa voluptas nihil', 'Quia beatae rerum ex', 'Voluptates autem nul', 'In dolor molestiae m', 'Mcneil and Riley Traders', '2022-04-08 04:37:45', '2022-04-08 04:37:45', 0);

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
-- Table structure for table `family_based_out_of`
--

CREATE TABLE `family_based_out_of` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `family_based_out_of` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_based_out_of`
--

INSERT INTO `family_based_out_of` (`id`, `family_based_out_of`, `created_at`, `updated_at`) VALUES
(1, 'Andaman & Nicobar Islands', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(2, 'Andhra Pradesh', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(3, 'Arunachal Pradesh', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(4, 'Assam', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(5, 'Bihar', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(6, 'Chandigarh', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(7, 'Chhattisgarh', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(8, 'Dadra & Nagar Haveoption', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(9, 'Daman & Diu', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(10, 'Delhi', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(11, 'Goa', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(12, 'Gujarat', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(13, 'Haryana', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(14, 'Himachal Pradesh', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(15, 'Jammu & Kashmir', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(16, 'Jharkhand', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(17, 'Karnataka', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(18, 'Kerala', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(19, 'Lakshadweep', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(20, 'Madhya Pradesh', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(21, 'Maharashtra', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(22, 'Manipur', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(23, 'Meghalaya', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(24, 'Mizoram', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(25, 'Nagaland', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(26, 'Odisha', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(27, 'Pondichery', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(28, 'Punjab', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(29, 'Rajasthan', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(30, 'Sikkim', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(31, 'Tamil Nadu', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(32, 'Telangana', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(33, 'Tripura', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(34, 'Uttar Pradesh', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(35, 'Uttarakhand', '2022-03-24 07:33:45', '2022-03-24 07:33:45'),
(36, 'West Bengal', '2022-03-24 07:33:45', '2022-03-24 07:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `family_details`
--

CREATE TABLE `family_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `mothers_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sisters` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brothers` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gothra` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gothra_maternal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_based_out_of` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_details`
--

INSERT INTO `family_details` (`id`, `mothers_occupation`, `fathers_occupation`, `sisters`, `brothers`, `gothra`, `gothra_maternal`, `family_status`, `family_income`, `family_type`, `family_based_out_of`, `created_at`, `updated_at`, `user_id`) VALUES
(1, '1', '2', '4,2', '0,0', 'Dolor aperiam dolore', 'Expedita veniam pos', '1', '4', '1', '1', '2022-04-07 06:58:46', '2022-04-07 06:58:46', 0),
(2, '1', '2', '4,2', '0,0', 'Dolor aperiam dolore', 'Expedita veniam pos', '1', '4', '1', '1', '2022-04-07 06:58:51', '2022-04-07 06:58:51', 0),
(3, '1', '2', '4,2', '0,0', 'Dolor aperiam dolore', 'Expedita veniam pos', '1', '4', '1', '1', '2022-04-07 06:58:53', '2022-04-07 06:58:53', 0),
(4, '1', '1', '2,2', '3,2', 'test', 'test2', '2', '5', '2', '1', '2022-04-07 07:00:33', '2022-04-07 07:00:33', 0),
(5, '1', '1', '2,2', '3,2', 'test', 'test2', '2', '5', '2', '1', '2022-04-07 07:00:59', '2022-04-07 07:00:59', 0),
(6, '1', '1', '2,2', '3,2', 'test', 'test2', '2', '5', '2', '1', '2022-04-07 07:01:43', '2022-04-07 07:01:43', 0),
(7, '1', '1', '2,2', '3,2', 'test', 'test2', '2', '5', '2', '1', '2022-04-07 07:02:32', '2022-04-07 07:02:32', 0),
(8, '1', '1', '2,2', '2,1', 'sdfsd', 'sdfsdf', '3', '5', '1', '1', '2022-04-07 07:45:22', '2022-04-07 07:45:22', 0),
(9, '1', '1', '0', '1,0', 'Airen', 'Airen', '2', '1', '2', '2', '2022-04-07 22:15:43', '2022-04-07 22:15:43', 0),
(10, '48', '83', '2,0,2', '3', 'Et voluptas eiusmod', 'Qui praesentium poss', '1', '15', '1', '10', '2022-04-08 03:44:03', '2022-04-08 03:44:03', 0),
(11, '2', '4', '0,0', '2,3', 'aesdfxgchvjb', 'zdfghjn', '3', '9', '1', '11', '2022-04-08 03:49:30', '2022-04-08 03:49:30', 0),
(12, '10', '7', '3', '3', 'khb', 'yhbn', '3', '7', '1', '10', '2022-04-08 03:56:52', '2022-04-08 03:56:52', 0),
(13, '9', '6', '3,2', '4,2', 'qwdwqdw', 'wafdwafd', '3', '9', '1', '8', '2022-04-08 04:18:19', '2022-04-08 04:18:19', 0),
(14, '66', '111', '2,4,0,2,3,4', '3,4,2,3', 'Magna dolore sit ex', 'Modi pariatur Dolor', '3', '4', '2', '12', '2022-04-08 04:35:48', '2022-04-08 04:35:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `family_income`
--

CREATE TABLE `family_income` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `family_income` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_income`
--

INSERT INTO `family_income` (`id`, `family_income`, `created_at`, `updated_at`) VALUES
(1, 'No Income', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(2, 'Rs. 0 - 1 Lakh', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(3, 'Rs. 1 - 2 Lakh', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(4, 'Rs. 2 - 3 Lakh', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(5, 'Rs. 3 - 4 Lakh', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(6, 'Rs. 4 - 5 Lakh', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(7, 'Rs. 5 - 7.5 Lakh', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(8, 'Rs. 7.5 - 10 Lakh', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(9, 'Rs. 10 - 15 Lakh', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(10, 'Rs. 15 - 20 Lakh', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(11, 'Rs. 20 - 25 Lakh', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(12, 'Rs. 25 - 35 Lakh', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(13, 'Rs. 35 - 50 Lakh', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(14, 'Rs. 50 - 70 Lakh', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(15, 'Rs. 70 Lakh - 1 crore', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(16, 'Rs. 1 crore & above', '2022-03-24 07:26:16', '2022-03-24 07:26:16'),
(17, '727190', NULL, NULL),
(18, '520297', NULL, NULL),
(19, '536029', NULL, NULL),
(20, '563241', NULL, NULL),
(21, '116991', NULL, NULL),
(22, '334719', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fav_movies`
--

CREATE TABLE `fav_movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fav_movies` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fav_movies`
--

INSERT INTO `fav_movies` (`id`, `fav_movies`, `created_at`, `updated_at`) VALUES
(1, 'Classics', '2022-03-25 00:47:51', '2022-03-25 00:47:51'),
(2, 'Romantic', '2022-03-25 00:47:51', '2022-03-25 00:47:51'),
(3, 'Comedy', '2022-03-25 00:47:51', '2022-03-25 00:47:51'),
(4, 'Action / Suspense', '2022-03-25 00:47:51', '2022-03-25 00:47:51'),
(5, 'Sci-Fi & Fantasy', '2022-03-25 00:47:51', '2022-03-25 00:47:51'),
(6, 'Horror', '2022-03-25 00:47:51', '2022-03-25 00:47:51'),
(7, 'Non-commercial / Art', '2022-03-25 00:47:51', '2022-03-25 00:47:51'),
(8, 'World cinema', '2022-03-25 00:47:51', '2022-03-25 00:47:51'),
(9, 'Documentaries', '2022-03-25 00:47:51', '2022-03-25 00:47:51'),
(10, 'Short films', '2022-03-25 00:47:51', '2022-03-25 00:47:51'),
(11, 'Epics', '2022-03-25 00:47:51', '2022-03-25 00:47:51'),
(12, 'Drama', '2022-03-25 00:47:51', '2022-03-25 00:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `heights`
--

CREATE TABLE `heights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userheight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heights`
--

INSERT INTO `heights` (`id`, `userheight`, `created_at`, `updated_at`) VALUES
(1, '4\' 0\" (1.22 mts)', '2022-03-24 03:12:18', '2022-03-24 03:12:18'),
(2, '4\' 1\" (1.24 mts)', '2022-03-24 03:12:18', '2022-03-24 03:12:18'),
(3, '4\' 2\" (1.28 mts)', '2022-03-24 03:12:18', '2022-03-24 03:12:18'),
(4, '4\' 3\" (1.31 mts)', '2022-03-24 03:12:18', '2022-03-24 03:12:18'),
(5, '4\' 4\" (1.34 mts)', '2022-03-24 03:12:19', '2022-03-24 03:12:19'),
(6, '4\' 5\" (1.35 mts)', '2022-03-24 03:12:19', '2022-03-24 03:12:19'),
(7, '4\' 6\" (1.37 mts)', '2022-03-24 03:12:19', '2022-03-24 03:12:19'),
(8, '4\' 7\" (1.40 mts)', '2022-03-24 03:12:19', '2022-03-24 03:12:19'),
(9, '4\' 8\" (1.42 mts)', '2022-03-24 03:12:19', '2022-03-24 03:12:19'),
(10, '4\' 9\" (1.45 mts)', '2022-03-24 03:12:20', '2022-03-24 03:12:20'),
(11, '4\' 10\" (1.47 mts)', '2022-03-24 03:12:20', '2022-03-24 03:12:20'),
(12, '4\' 11\" (1.50 mts)', '2022-03-24 03:12:20', '2022-03-24 03:12:20'),
(13, '5\' 0\" (1.52 mts)', '2022-03-24 03:12:20', '2022-03-24 03:12:20'),
(14, '5\' 1\" (1.55 mts)', '2022-03-24 03:12:21', '2022-03-24 03:12:21'),
(15, '5\' 2\" (1.58 mts)', '2022-03-24 03:12:21', '2022-03-24 03:12:21'),
(16, '5\' 3\" (1.60 mts)', '2022-03-24 03:12:21', '2022-03-24 03:12:21'),
(17, '5\' 4\" (1.63 mts)', '2022-03-24 03:12:21', '2022-03-24 03:12:21'),
(18, '5\' 5\" (1.65 mts)', '2022-03-24 03:12:21', '2022-03-24 03:12:21'),
(19, '5\' 6\" (1.68 mts)', '2022-03-24 03:12:21', '2022-03-24 03:12:21'),
(20, '5\' 7\" (1.70 mts)', '2022-03-24 03:12:21', '2022-03-24 03:12:21'),
(21, '5\' 8\" (1.73 mts)', '2022-03-24 03:12:21', '2022-03-24 03:12:21'),
(22, '5\' 9\" (1.75 mts)', '2022-03-24 03:12:22', '2022-03-24 03:12:22'),
(23, '5\' 10\" (1.78 mts)', '2022-03-24 03:12:22', '2022-03-24 03:12:22'),
(24, '5\' 11\" (1.80 mts)', '2022-03-24 03:12:22', '2022-03-24 03:12:22'),
(25, '6\' 0\" (1.83 mts)', '2022-03-24 03:12:22', '2022-03-24 03:12:22'),
(26, '6\' 1\" (1.85 mts)', '2022-03-24 03:12:22', '2022-03-24 03:12:22'),
(27, '6\' 2\" (1.88 mts)', '2022-03-24 03:12:22', '2022-03-24 03:12:22'),
(28, '6\' 3\" (1.91 mts)', '2022-03-24 03:12:22', '2022-03-24 03:12:22'),
(29, '6\' 4\" (1.93 mts)', '2022-03-24 03:12:22', '2022-03-24 03:12:22'),
(30, '6\' 5\" (1.96 mts)', '2022-03-24 03:12:22', '2022-03-24 03:12:22'),
(31, '6\' 6\" (1.98 mts)', '2022-03-24 03:12:23', '2022-03-24 03:12:23'),
(32, '6\' 7\" (2.01 mts)', '2022-03-24 03:12:23', '2022-03-24 03:12:23'),
(33, '6\' 8\" (2.03 mts)', '2022-03-24 03:12:23', '2022-03-24 03:12:23'),
(34, '6\' 9\" (2.06 mts)', '2022-03-24 03:12:23', '2022-03-24 03:12:23'),
(35, '6\' 10\" (2.08 mts)', '2022-03-24 03:12:23', '2022-03-24 03:12:23'),
(36, '6\' 11\" (2.11 mts)', '2022-03-24 03:12:23', '2022-03-24 03:12:23'),
(37, '7\' (2.13 mts) plus', '2022-03-24 03:12:23', '2022-03-24 03:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hobbies` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`id`, `hobbies`, `created_at`, `updated_at`) VALUES
(1, 'Collecting Stamps', '2022-03-25 00:20:13', '2022-03-25 00:20:13'),
(2, 'Collecting Coins', '2022-03-25 00:20:13', '2022-03-25 00:20:13'),
(3, 'Collecting antiques', '2022-03-25 00:20:13', '2022-03-25 00:20:13'),
(4, 'Art / Handicraft', '2022-03-25 00:20:13', '2022-03-25 00:20:13'),
(5, 'Painting', '2022-03-25 00:20:13', '2022-03-25 00:20:13'),
(6, 'Cooking', '2022-03-25 00:20:13', '2022-03-25 00:20:13'),
(7, 'Photography', '2022-03-25 00:20:13', '2022-03-25 00:20:13'),
(8, 'Film-making', '2022-03-25 00:20:13', '2022-03-25 00:20:13'),
(9, 'Model building', '2022-03-25 00:20:13', '2022-03-25 00:20:13'),
(10, 'Gardening / Landscaping', '2022-03-25 00:20:13', '2022-03-25 00:20:13'),
(11, 'Fishing', '2022-03-25 00:20:13', '2022-03-25 00:20:13'),
(12, 'Bird watching', '2022-03-25 00:20:13', '2022-03-25 00:20:13'),
(13, 'Taking care of pets', '2022-03-25 00:20:14', '2022-03-25 00:20:14'),
(14, 'Playing musical instruments', '2022-03-25 00:20:14', '2022-03-25 00:20:14'),
(15, 'Singing', '2022-03-25 00:20:14', '2022-03-25 00:20:14'),
(16, 'Dancing', '2022-03-25 00:20:14', '2022-03-25 00:20:14'),
(17, 'Acting', '2022-03-25 00:20:14', '2022-03-25 00:20:14'),
(18, 'Ham radio', '2022-03-25 00:20:14', '2022-03-25 00:20:14'),
(19, 'Astrology / Palmistry / Numerology', '2022-03-25 00:20:14', '2022-03-25 00:20:14'),
(20, 'Graphology', '2022-03-25 00:20:14', '2022-03-25 00:20:14'),
(21, 'Solving Crosswords, Puzzles', '2022-03-25 00:20:14', '2022-03-25 00:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interests` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `interests`, `created_at`, `updated_at`) VALUES
(1, 'Writing', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(2, 'Reading / Book clubs', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(3, 'Learning new languages', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(4, 'Listening to music', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(5, 'Movies', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(6, 'Theatre', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(7, 'Watching television', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(8, 'Travel / Sightseeing', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(9, 'Sports - Outdoor', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(10, 'Sports - Indoor', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(11, 'Trekking / Adventure sports', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(12, 'Video / Computer games', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(13, 'Health & Fitness', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(14, 'Yoga / Meditation', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(15, 'Alternative healing', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(16, 'Volunteering / Social Service', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(17, 'Politics', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(18, 'Net surfing', '2022-03-25 00:24:53', '2022-03-25 00:24:53'),
(19, 'Blogging', '2022-03-25 00:24:53', '2022-03-25 00:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `created_at`, `updated_at`) VALUES
(1, 'Arabic', '2022-03-25 02:26:57', '2022-03-25 02:26:57'),
(2, 'Assamese', '2022-03-25 02:26:57', '2022-03-25 02:26:57'),
(3, 'Bengaoption', '2022-03-25 02:26:57', '2022-03-25 02:26:57'),
(4, 'Engoptionsh', '2022-03-25 02:26:57', '2022-03-25 02:26:57'),
(5, 'French', '2022-03-25 02:26:57', '2022-03-25 02:26:57'),
(6, 'German', '2022-03-25 02:26:57', '2022-03-25 02:26:57'),
(7, 'Gujarati', '2022-03-25 02:26:58', '2022-03-25 02:26:58'),
(8, 'Hebrew', '2022-03-25 02:26:58', '2022-03-25 02:26:58'),
(9, 'Hindi', '2022-03-25 02:26:58', '2022-03-25 02:26:58'),
(10, 'Itaoptionan', '2022-03-25 02:26:58', '2022-03-25 02:26:58'),
(11, 'Japanese', '2022-03-25 02:26:58', '2022-03-25 02:26:58'),
(12, 'Kannada', '2022-03-25 02:26:58', '2022-03-25 02:26:58'),
(13, 'Kashmiri', '2022-03-25 02:26:58', '2022-03-25 02:26:58'),
(14, 'Konkani', '2022-03-25 02:26:59', '2022-03-25 02:26:59'),
(15, 'Kutchi', '2022-03-25 02:26:59', '2022-03-25 02:26:59'),
(16, 'Malayalam', '2022-03-25 02:26:59', '2022-03-25 02:26:59'),
(17, 'Mandarin', '2022-03-25 02:26:59', '2022-03-25 02:26:59'),
(18, 'Marathi', '2022-03-25 02:26:59', '2022-03-25 02:26:59'),
(19, 'Marwadi', '2022-03-25 02:26:59', '2022-03-25 02:26:59'),
(20, 'Oriya', '2022-03-25 02:26:59', '2022-03-25 02:26:59'),
(21, 'Persian', '2022-03-25 02:26:59', '2022-03-25 02:26:59'),
(22, 'Portuguese', '2022-03-25 02:26:59', '2022-03-25 02:26:59'),
(23, 'Punjabi', '2022-03-25 02:26:59', '2022-03-25 02:26:59'),
(24, 'Pushto', '2022-03-25 02:26:59', '2022-03-25 02:26:59'),
(25, 'Sindhi', '2022-03-25 02:27:00', '2022-03-25 02:27:00'),
(26, 'Spanish', '2022-03-25 02:27:00', '2022-03-25 02:27:00'),
(27, 'Tamil', '2022-03-25 02:27:00', '2022-03-25 02:27:00'),
(28, 'Telugu', '2022-03-25 02:27:00', '2022-03-25 02:27:00'),
(29, 'Tulu', '2022-03-25 02:27:00', '2022-03-25 02:27:00'),
(30, 'Urdu', '2022-03-25 02:27:00', '2022-03-25 02:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `lifestyle`
--

CREATE TABLE `lifestyle` (
  `id` int(10) UNSIGNED NOT NULL,
  `habits` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assets` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `languages_known` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_cases` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lifestyles`
--

CREATE TABLE `lifestyles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dietary_habits` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drinking_habits` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Smoking_habits` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `House` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Car` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hiv` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thalassemia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenged` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handicap_nature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lifestyles`
--

INSERT INTO `lifestyles` (`id`, `user_id`, `dietary_habits`, `drinking_habits`, `Smoking_habits`, `House`, `Car`, `hiv`, `thalassemia`, `blood_group`, `languages`, `challenged`, `handicap_nature`, `created_at`, `updated_at`) VALUES
(1, '13', 'Vegetarian', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Major', '2', '1', 'Physically - From birth', NULL, '2022-04-07 06:43:23', '2022-04-07 06:43:23'),
(2, '10', 'Vegetarian', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Major', '2', '1', 'Physically - From birth', NULL, '2022-04-07 06:50:55', '2022-04-07 06:50:55'),
(3, '14', 'Non Vegetarian', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Major', '1', '2', 'Mentally - From birth', NULL, '2022-04-07 06:58:03', '2022-04-07 06:58:03'),
(4, '15', 'Vegetarian', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Major', '2', '2', 'Physically - From birth', NULL, '2022-04-07 07:44:46', '2022-04-07 07:44:46'),
(5, '16', 'Eggetarian', 'No', 'No', 'No', 'No', 'No', 'No', '1', '1,2', 'Mentally - From birth', NULL, '2022-04-07 22:13:30', '2022-04-07 22:13:30'),
(6, '17', 'Non Vegetarian', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'Major', '2', '1,4,7,25', 'None', NULL, '2022-04-08 03:43:46', '2022-04-08 03:43:46'),
(7, '18', 'Vegetarian', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', '7', '9', 'None', NULL, '2022-04-08 03:48:09', '2022-04-08 03:48:09'),
(8, '19', 'Vegetarian', 'No', 'No', 'No', 'No', 'No', 'No', '4', '4', 'Physically - From birth', NULL, '2022-04-08 03:55:25', '2022-04-08 03:55:25'),
(9, '21', 'Non Vegetarian', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Minor', '6', '8', 'Mentally - From birth', NULL, '2022-04-08 04:17:31', '2022-04-08 04:17:31'),
(10, '22', 'Vegetarian', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Major', '7', '9,10', 'Mentally - Due to accident', NULL, '2022-04-08 04:34:12', '2022-04-08 04:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `marital_status`
--

CREATE TABLE `marital_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marital_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marital_status`
--

INSERT INTO `marital_status` (`id`, `marital_status`, `created_at`, `updated_at`) VALUES
(1, 'Never Married', NULL, NULL),
(2, 'Awaiting Divorce', NULL, NULL),
(3, 'Divorced', NULL, NULL),
(4, 'Widowed', NULL, NULL),
(5, 'Annulled', NULL, NULL);

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2022_03_22_174600_basic_details', 1),
(4, '2022_03_22_175054_education_career', 1),
(5, '2022_03_22_175523_family_details', 1),
(6, '2022_03_22_175832_lifestyle', 1),
(7, '2022_03_22_180025_your_likes', 1),
(8, '2022_03_23_033814_about_me', 1),
(9, '2022_03_23_034515_settings', 1),
(10, '2022_03_24_050807_create_casts_table', 1),
(11, '2022_03_24_052600_add_cast_to_casts', 1),
(12, '2022_03_24_060227_create_educations_table', 1),
(13, '2022_03_24_063047_create__heights_table', 1),
(14, '2022_03_24_065626_create_occupations_table', 1),
(15, '2022_03_24_070906_create__mother__tongues_table', 1),
(16, '2022_03_24_075348_create__profile__manageds_table', 1),
(17, '2022_03_24_104950_create_marital_status_table', 1),
(18, '2022_03_24_124716_create_family_income_table', 1),
(19, '2022_03_24_130125_create_family_based_out_of_table', 1),
(20, '2022_03_25_050721_create_your_likes_table', 1),
(21, '2022_03_25_054357_create_hobbies_table', 1),
(22, '2022_03_25_055217_create_interests_table', 1),
(23, '2022_03_25_055836_create_musics_table', 1),
(24, '2022_03_25_060457_create_books_table', 1),
(25, '2022_03_25_061620_create_fav_movies_table', 1),
(26, '2022_03_25_062344_create_dress_style_table', 1),
(27, '2022_03_25_062919_create_sports_table', 1),
(28, '2022_03_25_063514_create_cuisine_table', 1),
(29, '2022_03_25_071651_create_lifestyles_table', 1),
(30, '2022_03_25_074126_create_languages_table', 1),
(31, '2022_03_25_084749_create_blood_groups_table', 1),
(32, '2022_03_29_064238_add_column_to_lifestyles_tables', 1),
(33, '2022_03_29_085216_add_firstname_to_basic_details', 1),
(34, '2022_03_30_070113_add_image_to_basic_details_table', 1),
(35, '2022_03_31_063027_create_religions_table', 1),
(36, '2022_04_01_053830_country', 1),
(37, '2022_04_01_055930_add_paid_to_users_table', 1),
(38, '2022_04_01_065126_add_education_to_basic_details_table', 1),
(39, '2022_04_01_065228_add_occupation_to_basic_details_table', 1),
(40, '2022_04_02_124955_add_challenged_to_basic_details_table', 1),
(41, '2022_04_04_050526_add_manglik_to_basic_details_table', 1),
(42, '2022_04_04_075552_add_user_id_to_about_me_table', 1),
(43, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(44, '2022_04_06_084109_add_user_id_to_your_likes_table', 3),
(45, '2022_04_06_084534_add_user_id_to_family_details_table', 4),
(46, '2022_04_07_073849_add_to_basic_details__annual__income', 5),
(47, '2022_04_07_084725_add_user_id_to_education_career', 6),
(48, '2022_04_07_085459_create_table__annual__income', 6),
(49, '2022_04_08_050354_add_to_basic_details_dob', 7),
(50, '2022_04_13_061736_add_token_to_users', 8);

-- --------------------------------------------------------

--
-- Table structure for table `mother_tongues`
--

CREATE TABLE `mother_tongues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mother_tongue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mother_tongues`
--

INSERT INTO `mother_tongues` (`id`, `mother_tongue`, `created_at`, `updated_at`) VALUES
(1, 'Hindi/ Delhi', '2022-03-24 02:05:56', '2022-03-24 02:05:56'),
(2, 'Hindi /Madhya Pradesh / Bundelkhand / Chattisgarhi', '2022-03-24 02:05:56', '2022-03-24 02:05:56'),
(3, 'Hindi/U.P./Awadhi/ Bhojpuri/Garhwali', '2022-03-24 02:05:56', '2022-03-24 02:05:56'),
(4, 'Punjabi', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(5, 'Bihari/Maithili/Magahi', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(6, 'Rajasthani / Marwari / Malwi / Jaipuri', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(7, 'Haryanvi', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(8, 'Himachali/Pahari', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(9, 'Kashmiri/Dogri', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(10, 'Sindhi', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(11, 'Urdu', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(12, 'Marathi', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(13, 'Gujarati', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(14, 'Kutchi', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(15, 'Hindi /Madhya Pradesh / Bundelkhand / Chattisgarhi', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(16, 'Konkani', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(17, 'Sindhi', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(18, 'Tamil', '2022-03-24 02:05:57', '2022-03-24 02:05:57'),
(19, 'Telugu', '2022-03-24 02:05:58', '2022-03-24 02:05:58'),
(20, 'Kannada', '2022-03-24 02:05:58', '2022-03-24 02:05:58'),
(21, 'Malayalam', '2022-03-24 02:05:58', '2022-03-24 02:05:58'),
(22, 'Tulu', '2022-03-24 02:05:58', '2022-03-24 02:05:58'),
(23, 'Urdu', '2022-03-24 02:05:58', '2022-03-24 02:05:58'),
(24, 'Bengali', '2022-03-24 02:05:58', '2022-03-24 02:05:58'),
(25, 'Oriya', '2022-03-24 02:05:58', '2022-03-24 02:05:58'),
(26, 'Assamese', '2022-03-24 02:05:58', '2022-03-24 02:05:58'),
(27, 'Sikkim/ Nepali/ Lepcha/ Bhutia/ Limbu', '2022-03-24 02:05:58', '2022-03-24 02:05:58'),
(28, 'English', '2022-03-24 02:05:58', '2022-03-24 02:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `musics`
--

CREATE TABLE `musics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `music` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `musics`
--

INSERT INTO `musics` (`id`, `music`, `created_at`, `updated_at`) VALUES
(1, 'Classical - Hindustani', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(2, 'Classical - Carnatic', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(3, 'Classical - Western', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(4, 'Instrumental - Indian', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(5, 'Instrumental - Western', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(6, 'Old film songs', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(7, 'Latest film songs', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(8, 'Ghazals', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(9, 'Qawalis', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(10, 'Bhajans / Devotional', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(11, 'Sufi music', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(12, 'Indipop', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(13, 'Pop', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(14, 'Disco', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(15, 'House Music', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(16, 'Techno', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(17, 'Hip-Hop', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(18, 'Rap', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(19, 'Jazz', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(20, 'Blues', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(21, 'Reggae', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(22, 'Heavy Metal', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(23, 'Acid Rock', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(24, '1', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(25, '2', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(26, '3', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(27, '4', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(28, '5', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(29, '6', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(30, '7', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(31, '8', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(32, '9', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(33, '10', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(34, '11', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(35, '12', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(36, '13', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(37, '14', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(38, '15', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(39, '16', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(40, '17', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(41, '18', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(42, '19', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(43, '20', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(44, '21', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(45, '22', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(46, '23', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(47, '24', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(48, '25', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(49, '26', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(50, '27', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(51, '28', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(52, '29', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(53, '30', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(54, '31', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(55, '32', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(56, '33', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(57, '34', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(58, '35', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(59, '36', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(60, '37', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(61, '38', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(62, '39', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(63, '40', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(64, '41', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(65, '42', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(66, '43', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(67, '44', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(68, '45', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(69, '46', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(70, '47', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(71, '48', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(72, '49', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(73, '50', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(74, '51', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(75, '52', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(76, '53', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(77, '54', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(78, '55', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(79, '56', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(80, '57', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(81, '58', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(82, '59', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(83, '60', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(84, '61', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(85, '62', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(86, '63', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(87, '64', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(88, '65', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(89, '66', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(90, '67', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(91, '68', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(92, '69', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(93, '70', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(94, '71', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(95, '72', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(96, '73', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(97, '74', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(98, '75', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(99, '76', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(100, '77', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(101, '78', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(102, '79', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(103, '80', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(104, '81', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(105, '82', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(106, '83', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(107, '84', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(108, '85', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(109, '86', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(110, '87', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(111, '88', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(112, '89', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(113, '90', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(114, '91', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(115, '92', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(116, '93', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(117, '94', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(118, '95', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(119, '96', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(120, '97', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(121, '98', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(122, '99', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(123, '100', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(124, '101', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(125, '102', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(126, '103', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(127, '104', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(128, '105', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(129, '106', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(130, '107', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(131, '108', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(132, '109', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(133, '110', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(134, '111', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(135, '112', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(136, '113', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(137, '116', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(138, '118', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(139, '119', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(140, '120', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(141, '121', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(142, '122', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(143, '123', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(144, '124', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(145, '125', '2022-03-25 00:32:25', '2022-03-25 00:32:25'),
(146, '126', '2022-03-25 00:32:25', '2022-03-25 00:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `occupations`
--

CREATE TABLE `occupations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `occupations`
--

INSERT INTO `occupations` (`id`, `occupation`, `created_at`, `updated_at`) VALUES
(1, 'Admin Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(2, 'Clerk', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(3, 'Operator/Technician', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(4, 'Secretary/Front Office', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(5, 'Actor/Model', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(6, 'Advertising Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(7, 'Film/ Entertainment Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(8, 'Journalist', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(9, 'Media Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(10, 'PR Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(11, 'Agriculture Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(12, 'Farming', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(13, 'Airline Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(14, 'Flight Attendant', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(15, 'Pilot', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(16, 'Architect', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(17, 'BPO/ITes Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(18, 'Customer Service', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(19, 'Accounting Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(20, 'Auditor', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(21, 'Banking Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(22, 'Chartered Accountant', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(23, 'Finance Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(24, 'Analyst', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(25, 'Consultant', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(26, 'Corporate Communication', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(27, 'Corporate Planning', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(28, 'HR Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(29, 'Marketing Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(30, 'Operations Management', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(31, 'Product manager', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(32, 'Program Manager', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(33, 'Project Manager - Non IT', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(34, 'Sales Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(35, 'Sr. Manager/ Manager', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(36, 'Subject Matter Expert', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(37, 'Dentist', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(38, 'Doctor', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(39, 'Surgeon', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(40, 'Education Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(41, 'Educational Institution Owner', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(42, 'Librarian', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(43, 'Professor/Lecturer', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(44, 'Research Assistant', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(45, 'Teacher', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(46, 'Electronics Engineer', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(47, 'Hardware/Telecom Engineer', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(48, 'Non – IT Engineer', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(49, 'Quality Assurance Engineer', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(50, 'Hotels/Hospitality Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(51, 'Lawyer & Legal Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(52, 'Medical/ Healthcare Professional', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(53, 'Nurse', '2022-03-24 01:29:37', '2022-03-24 01:29:37'),
(54, 'Paramedic', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(55, 'Pharmacist', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(56, 'Physiotherapist', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(57, 'Psychologist', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(58, 'Veterinary Doctor', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(59, 'Mariner', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(60, 'Merchant Naval Officer', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(61, 'Research Professional', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(62, 'Science Professional', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(63, 'Scientist', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(64, 'Animator', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(65, 'Cyber/Network Security', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(66, 'Project Lead - IT', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(67, 'Project Manager - IT', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(68, 'Quality Assurance Engineer - IT', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(69, 'Software Professional', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(70, 'UI/UX designer', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(71, 'Web/Graphic Designer', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(72, 'CxO/ Chairman/ President/ Director', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(73, 'VP/ AVP/ GM/ DGM', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(74, 'Agent', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(75, 'Artist', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(76, 'Beautician', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(77, 'Broker', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(78, 'Fashion Designer', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(79, 'Fitness Professional', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(80, 'Interior Designer', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(81, 'Security Professional', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(82, 'Singer', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(83, 'Social Services/ NGO/ Volunteer', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(84, 'Sportsperson', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(85, 'Travel Professional', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(86, 'Writer', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(87, 'Others', '2022-03-24 01:29:38', '2022-03-24 01:29:38'),
(88, 'Housewife', '2022-03-24 06:20:43', '2022-03-24 06:20:43'),
(89, 'Business/Entrepreneur', '2022-03-24 06:20:43', '2022-03-24 06:20:43'),
(90, 'Service-Private', '2022-03-24 06:20:43', '2022-03-24 06:20:43'),
(91, 'Service-Govt/PSU', '2022-03-24 06:20:43', '2022-03-24 06:20:43'),
(92, 'Army/Armed forces', '2022-03-24 06:20:43', '2022-03-24 06:20:43'),
(93, 'Civil Services', '2022-03-24 06:20:43', '2022-03-24 06:20:43'),
(94, 'Teacher', '2022-03-24 06:20:43', '2022-03-24 06:20:43'),
(95, 'Retired', '2022-03-24 06:20:43', '2022-03-24 06:20:43'),
(96, 'Expired', '2022-03-24 06:20:43', '2022-03-24 06:20:43'),
(97, 'Housewife', '2022-03-24 06:22:10', '2022-03-24 06:22:10'),
(98, 'Business/Entrepreneur', '2022-03-24 06:22:10', '2022-03-24 06:22:10'),
(99, 'Service-Private', '2022-03-24 06:22:10', '2022-03-24 06:22:10'),
(100, 'Service-Govt/PSU', '2022-03-24 06:22:10', '2022-03-24 06:22:10'),
(101, 'Army/Armed forces', '2022-03-24 06:22:10', '2022-03-24 06:22:10'),
(102, 'Civil Services', '2022-03-24 06:22:10', '2022-03-24 06:22:10'),
(103, 'Teacher', '2022-03-24 06:22:10', '2022-03-24 06:22:10'),
(104, 'Retired', '2022-03-24 06:22:10', '2022-03-24 06:22:10'),
(105, 'Expired', '2022-03-24 06:22:10', '2022-03-24 06:22:10'),
(106, 'Service-Private', '2022-03-24 06:23:39', '2022-03-24 06:23:39'),
(107, 'Housewife', '2022-03-24 06:24:56', '2022-03-24 06:24:56'),
(108, 'Business/Entrepreneur', '2022-03-24 06:24:56', '2022-03-24 06:24:56'),
(109, 'Service-Private', '2022-03-24 06:24:56', '2022-03-24 06:24:56'),
(110, 'Service-Govt/PSU', '2022-03-24 06:24:56', '2022-03-24 06:24:56'),
(111, 'Army/Armed forces', '2022-03-24 06:24:56', '2022-03-24 06:24:56'),
(112, 'Civil Services', '2022-03-24 06:24:56', '2022-03-24 06:24:56'),
(113, 'Teacher', '2022-03-24 06:24:56', '2022-03-24 06:24:56'),
(116, 'Business/Entrepreneur', '2022-03-24 06:27:13', '2022-03-24 06:27:13'),
(118, 'Housewife', '2022-03-24 06:41:11', '2022-03-24 06:41:11'),
(119, 'Business/Entrepreneur', '2022-03-24 06:41:11', '2022-03-24 06:41:11'),
(120, 'Service-Private', '2022-03-24 06:41:11', '2022-03-24 06:41:11'),
(121, 'Service-Govt/PSU', '2022-03-24 06:41:11', '2022-03-24 06:41:11'),
(122, 'Army/Armed forces', '2022-03-24 06:41:11', '2022-03-24 06:41:11'),
(123, 'Civil Services', '2022-03-24 06:41:11', '2022-03-24 06:41:11'),
(124, 'Teacher', '2022-03-24 06:41:11', '2022-03-24 06:41:11'),
(125, 'Retired', '2022-03-24 06:41:11', '2022-03-24 06:41:11'),
(126, 'Expired', '2022-03-24 06:41:11', '2022-03-24 06:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 5, 'API Token', 'dd6884522c72952708f942ddcd595fff03fcaa5bc57bc25a0eeea25592874c9d', '[\"*\"]', NULL, '2022-04-13 00:12:20', '2022-04-13 00:12:20'),
(2, 'App\\Models\\User', 1, 'my-app-token', '6f412583e4be134307a94ed2c7c82d40730b1d3939bf96529a7104453b69e9c3', '[\"*\"]', NULL, '2022-04-13 00:22:09', '2022-04-13 00:22:09'),
(3, 'App\\Models\\User', 1, 'my-app-token', '571bef8fc4470ba25455fda95fc670bd1fb206f70398fd84bdf8ae4db3983266', '[\"*\"]', NULL, '2022-04-13 00:22:54', '2022-04-13 00:22:54'),
(4, 'App\\Models\\User', 1, 'my-app-token', 'b6028fe1a0345cb2f3bc0bc9528d2c472c3764c18040a81d0ff305e069f93cd4', '[\"*\"]', NULL, '2022-04-13 00:29:56', '2022-04-13 00:29:56'),
(5, 'App\\Models\\User', 5, 'my-app-token', 'bdba61874d6ada4bbba3305cbde894dc473f89a004be7042d1c9f1d248bb6673', '[\"*\"]', NULL, '2022-04-13 00:31:07', '2022-04-13 00:31:07'),
(6, 'App\\Models\\User', 5, 'my-app-token', '802df3f64c7426e44b582d847ba969649444f9ef5b3615254dc06abbc785ff04', '[\"*\"]', NULL, '2022-04-13 00:39:48', '2022-04-13 00:39:48'),
(7, 'App\\Models\\User', 5, 'my-app-token', '5a7ebc7f95ac6adf11892d53a0cd1408f36d24c23fc28b6c84c1ef45ce75bad0', '[\"*\"]', NULL, '2022-04-13 00:40:03', '2022-04-13 00:40:03'),
(8, 'App\\Models\\User', 6, 'API Token', '58d856a9ff6f59186ec2baa67320c53058f1961a32e65ab91d6dc065fb263984', '[\"*\"]', NULL, '2022-04-13 00:49:38', '2022-04-13 00:49:38'),
(9, 'App\\Models\\User', 7, 'API Token', 'f2fef06e1ab0507e8fd1593e891c04e3803e779a8d89b4128a99db23032763bd', '[\"*\"]', NULL, '2022-04-13 00:52:41', '2022-04-13 00:52:41'),
(10, 'App\\Models\\User', 13, 'API Token', '6db9274441d77ffb0ddb3e9515de52a0db9f6241b8a76087c49bd17e23eac0dd', '[\"*\"]', NULL, '2022-04-13 00:58:08', '2022-04-13 00:58:08'),
(11, 'App\\Models\\User', 16, 'API Token', '0761bef8e01f58c44e35e5288e335e2c36ffbeed4083bfe1358df29fd4f450eb', '[\"*\"]', NULL, '2022-04-13 01:05:34', '2022-04-13 01:05:34'),
(12, 'App\\Models\\User', 18, 'my-app-token', '133d31eaac8e34d8941d39c3a15d2776bd3af17cd0251076d5586e2c59b05fde', '[\"*\"]', NULL, '2022-04-13 01:09:24', '2022-04-13 01:09:24'),
(13, 'App\\Models\\User', 20, 'API Token', '30993588593805fa11462b18a66742a2cebd73e708fecd2bb92d524e584db747', '[\"*\"]', NULL, '2022-04-13 01:10:52', '2022-04-13 01:10:52'),
(14, 'App\\Models\\User', 23, 'my-app-token', '23234a9a5c9099a74e58bbd5bd5f4d0a8c6bc0620c9b847b2af6491945b5d44a', '[\"*\"]', NULL, '2022-04-13 01:13:56', '2022-04-13 01:13:56'),
(15, 'App\\Models\\User', 24, 'my-app-token', 'a32fb38c76512bf43bc8e0ea74ca94d53f014a1422255f4399b0e0e1929f8c34', '[\"*\"]', NULL, '2022-04-13 01:24:21', '2022-04-13 01:24:21'),
(16, 'App\\Models\\User', 25, 'token', '664c6a08494e92624c0e6d9b949e9a6f0041a2e94cf5e971bd3db5d44e787849', '[\"*\"]', NULL, '2022-04-13 01:25:35', '2022-04-13 01:25:35'),
(17, 'App\\Models\\User', 27, 'token', 'c13690b071018e20ef7d1004bf4368501005884df34d303aa014b42831cb0441', '[\"*\"]', NULL, '2022-04-13 01:27:12', '2022-04-13 01:27:12'),
(18, 'App\\Models\\User', 28, 'token', 'ebcc0de4116e0debecc76832a4047e2f647a3de4f0b4b8a4a1f8d91e4c5577ee', '[\"*\"]', NULL, '2022-04-13 01:27:30', '2022-04-13 01:27:30'),
(19, 'App\\Models\\User', 29, 'token', '3da37eddf882f7bb8d64d57ee2a4a41ef9f9e0254100f71928eb1dfcbf09896c', '[\"*\"]', NULL, '2022-04-13 01:28:02', '2022-04-13 01:28:02'),
(20, 'App\\Models\\User', 29, 'token', 'd25acbc478526108f1ada474b669a5b9f147679880ea4182fdd5083b7ad4674e', '[\"*\"]', NULL, '2022-04-13 01:29:22', '2022-04-13 01:29:22'),
(21, 'App\\Models\\User', 29, 'token', '0581a5e3c7f599342e27490f51ddccd4401023181b60df75cc808dfa67837b57', '[\"*\"]', NULL, '2022-04-13 01:29:34', '2022-04-13 01:29:34'),
(22, 'App\\Models\\User', 29, 'token', 'af77765444324774699eda98392ec5494cebf33ca7d441ab58b801c97ee585f1', '[\"*\"]', NULL, '2022-04-13 01:29:47', '2022-04-13 01:29:47'),
(23, 'App\\Models\\User', 29, 'token', '2b240524337b3123cd773da0f717f5800d05eeda299633ffa7ae52f2ae2caf02', '[\"*\"]', NULL, '2022-04-13 01:32:13', '2022-04-13 01:32:13'),
(24, 'App\\Models\\User', 29, 'token', 'fa8db23e93bbdb7f841eabb13c43adb0e70f6ac1ea52cd4c6a3c90aaa0ea1e9c', '[\"*\"]', NULL, '2022-04-13 01:39:59', '2022-04-13 01:39:59'),
(25, 'App\\Models\\User', 29, 'token', 'f621d75082d5af9b7b00b2a23008a01592a03f0554063f2a7cde9bd9a3140d29', '[\"*\"]', NULL, '2022-04-13 01:40:24', '2022-04-13 01:40:24'),
(26, 'App\\Models\\User', 29, 'token', '41b1ed71448242f96169fa4f74792db1582d212363944e030ce29b3b5a48fbe1', '[\"*\"]', NULL, '2022-04-13 01:40:54', '2022-04-13 01:40:54'),
(27, 'App\\Models\\User', 29, 'token', 'a3a60969cdc45409841b70c98f99f4fc024e80b05cd74d25689d19a35cecbcac', '[\"*\"]', NULL, '2022-04-13 01:41:12', '2022-04-13 01:41:12'),
(28, 'App\\Models\\User', 29, 'token', '4ca9f7cf3368b7e7e955e0cdae83cf2273287bf8c8fb79689799a072c8e85ad9', '[\"*\"]', NULL, '2022-04-13 01:42:59', '2022-04-13 01:42:59'),
(29, 'App\\Models\\User', 33, 'token', 'ffdf64e42556f8c95f14b7ce96b7bc63f9f3fa425ec99132209596c1fffd300c', '[\"*\"]', NULL, '2022-04-13 01:58:39', '2022-04-13 01:58:39'),
(30, 'App\\Models\\User', 35, 'token', '7bfe9296a1e129395bf585b06cf10a03815bfcc55bad7b283ea832fa27cae529', '[\"*\"]', NULL, '2022-04-13 02:10:58', '2022-04-13 02:10:58'),
(31, 'App\\Models\\User', 35, 'token', 'da1b1894ceb0fe8ab2ac1da33ffeb126077757be9ee3e663f965cb3692063152', '[\"*\"]', NULL, '2022-04-13 02:12:13', '2022-04-13 02:12:13'),
(32, 'App\\Models\\User', 35, 'token', 'e528c37b96ade4f5bd32e9194707789aab016540a5f6458deb680af64cade22b', '[\"*\"]', NULL, '2022-04-13 02:13:24', '2022-04-13 02:13:24'),
(33, 'App\\Models\\User', 35, 'token', 'fafc9a33e0a4d76361d893cd821048edf6681143eb6aec1c279de274e40cc991', '[\"*\"]', NULL, '2022-04-13 02:15:31', '2022-04-13 02:15:31'),
(34, 'App\\Models\\User', 35, 'token', '1147a01581fa750e94d1507f4239f781e963c24dcf9f733c9b67b516243544b8', '[\"*\"]', NULL, '2022-04-13 02:15:51', '2022-04-13 02:15:51'),
(35, 'App\\Models\\User', 35, 'token', 'f009030d95efc0c3ac598bf12be0ef96547089718ce02dd220e07a4547b0fcab', '[\"*\"]', NULL, '2022-04-13 02:16:29', '2022-04-13 02:16:29'),
(36, 'App\\Models\\User', 35, 'token', '729fa47f66b0cd5d1f9d9a895607aaf96d48f5ba1f60d9bd06ae19ce9bdf4b09', '[\"*\"]', NULL, '2022-04-13 02:17:15', '2022-04-13 02:17:15'),
(37, 'App\\Models\\User', 35, 'token', '4870d0db7689cf4f734b09b7453736c91915ba5f987c193f67f87f89e5839aac', '[\"*\"]', NULL, '2022-04-13 02:18:00', '2022-04-13 02:18:00'),
(38, 'App\\Models\\User', 35, 'token', 'f7f0928cd6ba45d1f5f73f37558def1ab7e0d5273f956f8d64c51621bb3473bf', '[\"*\"]', NULL, '2022-04-13 02:18:07', '2022-04-13 02:18:07'),
(39, 'App\\Models\\User', 35, 'token', 'f6aa918bf67b40fb036d12815903bf9360a2c01114158ed44584b8134174fedd', '[\"*\"]', NULL, '2022-04-13 02:53:39', '2022-04-13 02:53:39'),
(40, 'App\\Models\\User', 35, 'token', '4955728699c12e8612e0959093e066f7343af79e9eda086b02c7dbef309ac3f9', '[\"*\"]', NULL, '2022-04-13 02:54:35', '2022-04-13 02:54:35'),
(41, 'App\\Models\\User', 35, 'token', '1f3ea49694e49690126f96094e0ac9e600202120b4dce8a991e929e23399cffc', '[\"*\"]', NULL, '2022-04-13 02:55:28', '2022-04-13 02:55:28'),
(42, 'App\\Models\\User', 35, 'token', '95162ebc085ccbe3ed8983847ded144d9ab535fc672b23dce3d0b43b38228c12', '[\"*\"]', NULL, '2022-04-13 02:57:24', '2022-04-13 02:57:24'),
(43, 'App\\Models\\User', 35, 'token', '2cdb72135507f85b21a482534bc9d7db6a22bd255b89385e01baebb738992c02', '[\"*\"]', NULL, '2022-04-13 02:58:26', '2022-04-13 02:58:26'),
(44, 'App\\Models\\User', 35, 'token', 'a0b39998c9b906010d506aaabcb585dc1f91d3d94cdc6d5192b21b92dfcedec7', '[\"*\"]', NULL, '2022-04-13 02:58:51', '2022-04-13 02:58:51'),
(45, 'App\\Models\\User', 35, 'token', '0dfb0eaba51c214bb712ce81ec53d661c5d4d4bab9981b55e71ff3b8dcf765e7', '[\"*\"]', NULL, '2022-04-13 02:59:25', '2022-04-13 02:59:25'),
(46, 'App\\Models\\User', 39, 'token', 'e631c52cfedf6661fff34afdf72f2c9f7f8bc72ffd658a428c09757f9585a71e', '[\"*\"]', NULL, '2022-04-13 03:02:59', '2022-04-13 03:02:59'),
(47, 'App\\Models\\User', 39, 'token', '8e1296d77f67a03cf2ab2b522d4c5575a98736d0ac21c8e9f631dadb8eb3b1ae', '[\"*\"]', NULL, '2022-04-13 03:06:08', '2022-04-13 03:06:08'),
(48, 'App\\Models\\User', 41, 'token', '07b9bbe4782c7825aefbb430cf7ae0354426f5a7954a1a4152a79f119ff56460', '[\"*\"]', NULL, '2022-04-13 03:12:42', '2022-04-13 03:12:42'),
(49, 'App\\Models\\User', 41, 'token', '5c952ff3363bbabd47397bee99a981b47c4be2da32a89ddaf4d60fe2997b018a', '[\"*\"]', NULL, '2022-04-13 03:12:46', '2022-04-13 03:12:46'),
(50, 'App\\Models\\User', 43, 'token', 'd37fa61bddf9e302a6c0cd8e337f0c509db2da0a36547e7dd848bb756dcaa4a0', '[\"*\"]', NULL, '2022-04-13 03:22:06', '2022-04-13 03:22:06'),
(51, 'App\\Models\\User', 46, 'token', '1833862b393ba138110f2ac985cb9a08bcdc1100d358f85558b4cc7f57d9fcc7', '[\"*\"]', NULL, '2022-04-13 03:25:07', '2022-04-13 03:25:07'),
(52, 'App\\Models\\User', 47, 'token', 'a8891ac5fe3c96a6d38ee71339155bec48c48c6cc2a7c01718aee3bbdb21e57b', '[\"*\"]', NULL, '2022-04-13 03:25:52', '2022-04-13 03:25:52'),
(53, 'App\\Models\\User', 48, 'token', 'd6fd41d2b17ab3ca9f34a6366ec13628e98780acfa41e71f7f7348c96e4e565e', '[\"*\"]', NULL, '2022-04-13 03:26:32', '2022-04-13 03:26:32'),
(54, 'App\\Models\\User', 49, 'token', 'b1d7583a888bfe69bbf0bd789e5c5d65e08deff0cc6e0859f677050778f51758', '[\"*\"]', NULL, '2022-04-13 03:27:24', '2022-04-13 03:27:24'),
(68, 'App\\Models\\User', 53, 'token', 'ee0d1f1f2c6ebe809451fbb1fbbc69ef7a19c88bb0737cddbb30c060a19e5864', '[\"*\"]', NULL, '2022-05-08 23:14:38', '2022-05-08 23:14:38'),
(69, 'App\\Models\\User', 57, 'token', '34bae6b9027daccd70f95589258388522e0a6b1749d64b872773e62944813e54', '[\"*\"]', NULL, '2022-05-08 23:18:08', '2022-05-08 23:18:08'),
(73, 'App\\Models\\User', 59, 'token', '264ace10141b1d5ef599a8ef12c4963cf3915f36e6f750d6da70ea20caeac0a8', '[\"*\"]', NULL, '2022-05-08 23:45:04', '2022-05-08 23:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `profile_manageds`
--

CREATE TABLE `profile_manageds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_managed_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_manageds`
--

INSERT INTO `profile_manageds` (`id`, `profile_managed_by`, `created_at`, `updated_at`) VALUES
(1, 'self', '2022-03-24 02:26:55', '2022-03-24 02:26:55'),
(2, 'parent', '2022-03-24 02:26:56', '2022-03-24 02:26:56'),
(3, 'sibling', '2022-03-24 02:26:56', '2022-03-24 02:26:56'),
(4, 'Relative', '2022-03-24 02:26:56', '2022-03-24 02:26:56'),
(5, 'Frinds', '2022-03-24 02:26:56', '2022-03-24 02:26:56'),
(6, 'Marriage Bureau', '2022-03-24 02:26:56', '2022-03-24 02:26:56'),
(7, 'Other', '2022-03-24 02:26:56', '2022-03-24 02:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `religion`, `created_at`, `updated_at`) VALUES
(1, 'Hindu', NULL, NULL),
(2, 'Muslim', NULL, NULL),
(3, 'sikh', NULL, NULL),
(4, 'Jain', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'ei8Aobk1nvNshTD', 'HUL5qE9m3hYyg21pnC2r', 'anjdIR9ulZY42cU7Vmc6bg6xVXQjim', NULL, NULL),
(2, 'mF69UTBcPkh1ENK', 'm4NDzivng881PQNS8MRh', 'OpzEX9modOr4YqPeFDnQSJZ9kEhclz', NULL, NULL),
(3, 'G4KtqHXfh1m6L3v', 'kzUoordpQ49csFuLtFPD', 'kFGhN38owARvEzkDKMlLI1wqlCdHjT', NULL, NULL),
(4, '9vFnBSGLRwMyW0K', 'FAbgH03khON1cqjaaj2i', 'Gv85DfVr6asen2iRqJ9afd2ZVloAJI', NULL, NULL),
(5, 'JR9P4Afb8j52lfP', 'htE8RRzxxYKmB04mYwaO', 'ey5Es5VqOie3zo80vJdZI9tuwvjgEo', NULL, NULL),
(6, 'nyifRRsY8eQbPLv', 'Ee0dZffBTaOplRiWg737', '2LFUdyYa3ktt9SNzxWSacNNh7b4jYz', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sports` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`id`, `sports`, `created_at`, `updated_at`) VALUES
(1, 'Jogging / Walking', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(2, 'Cycling', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(3, 'Swimming / Water sports', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(4, 'Cricket', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(5, 'Yoga / Meditation', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(6, 'Martial Arts', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(7, 'Hockey', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(8, 'Football', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(9, 'Volleyball', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(10, 'Bowling', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(11, 'Chess', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(12, 'Carrom', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(13, 'Scrabble', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(14, 'Card games', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(15, 'Billiards / Snooker / Pool', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(16, 'Aerobics', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(17, 'Weight training', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(18, 'Golf', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(19, 'Basketball', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(20, 'Tennis', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(21, 'Squash', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(22, 'Table-tennis', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(23, 'Badminton', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(24, 'Baseball', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(25, 'Rugby', '2022-03-25 01:01:30', '2022-03-25 01:01:30'),
(26, 'Adventure sports', '2022-03-25 01:01:30', '2022-03-25 01:01:30');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(52, 'd', '@gmail.com', NULL, '$2y$10$19lvG9U3hn.aHHFrVz4PO.3DyhsewspT9KnzhoGFIccOlZSF4rtqm', NULL, '2022-04-13 04:36:18', '2022-04-13 04:39:51'),
(53, 'gsr', 'dsfds@gmail.com', NULL, '$2y$10$XqfN8mS4uUWXQu4eNVJm0O53GZ5qeCDpKCGzBdty..pySpL6uslAW', NULL, '2022-05-08 23:14:38', '2022-05-08 23:14:38'),
(57, 'gsr', 'dfds@gmail.com', NULL, '$2y$10$bDwv3XS5b41IPXAC4UxAdOS8BA3mIoWMxv7OX.K.yXFBlvmyDfrl.', NULL, '2022-05-08 23:18:08', '2022-05-08 23:18:08'),
(59, '', '', NULL, '', NULL, '2022-05-08 23:45:04', '2022-05-08 23:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `your_likes`
--

CREATE TABLE `your_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hobbies` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interests` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `music` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movies` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_movies` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dress_style` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sports` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tv_show` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `food` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuisine` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `your_likes`
--

INSERT INTO `your_likes` (`id`, `hobbies`, `interests`, `music`, `book`, `read`, `movies`, `fav_movies`, `dress_style`, `sports`, `tv_show`, `destination`, `food`, `cuisine`, `created_at`, `updated_at`, `user_id`) VALUES
(2, '2', '2', '2', '2', 'wewwewe', 'wewewe', '2', '1', '2', 'ewee', 'wewewe', 'wewew', '2', '2022-04-07 07:07:20', '2022-04-07 07:07:20', 0),
(3, '1', '1', '1', '2', 'fsdfsdf', 'sdfsdfsdf', '2', '1', '2', 'sdfsdf', 'fsdfsdfsdf', 'sdfsdfsd', '1', '2022-04-07 07:46:04', '2022-04-07 07:46:04', 0),
(4, '2', '2', '2', '1', 'Ravindra', 'Pushpaa', '2', '1', '2', 'Any', 'Euorpel', 'Pasta', '1', '2022-04-07 22:20:27', '2022-04-07 22:26:05', 0),
(5, '1,2,3,5,8,9,11,12,15,16,17,19,20,21', '2,4,6,9,10,11,13,15,16,17,18', '5,7,8,12,13,17,18,26,28,30,33,34,36,38,45,53,54,55,56,57,58,59,61,62,68,69,74,79,80,82,85,90,94,99,104,105,106,107,113,115,119,120,122,123,126,129,130,134,135,138,140,143,144,145', '13', 'Veritatis numquam ex', 'Quia non expedita in', '2,3,4,5,7,8,9,11,12', '4', '10,11,12,16,21', 'Consectetur veniam', 'Tempor veritatis mol', 'Ut beatae nostrud ea', '1,4,8,16,18', '2022-04-08 03:44:17', '2022-04-08 03:44:17', 0),
(6, '6', '7', '10', '9', 'dfguk', 'asdfghj', '7', '1', '7', 'SDZFXGCH', 'ddfcgvb', 'zsdfghm,', '7', '2022-04-08 03:50:09', '2022-04-08 03:50:09', 0),
(7, '3,4,8,11,12,13,14,18,19,20', '4,5,6,9,10,11,12,13,16,17', '11,15,16,17,18,20,23,27,28,32,34,36,46,48,49,65,66,80,82,84,89,93,95,99,107,110,112,113,115,120,125,126,130,131,134,135,144,145', '4,7,10,13,14', 'Ea exercitationem no', 'Asperiores ad quas v', '7', '1,2,3,5', '2,4,12,13,15,19,20,24,26', 'Ducimus id aliquip', 'Amet magna non temp', 'Laborum molestias no', '1,3,9,10,13,15,16,17', '2022-04-08 04:18:34', '2022-04-08 04:18:34', 0),
(8, '2,3,4,8,16,17,18,21', '1,4,9,12,17,19', '4,11,12,20,27,35,36,37,41,44,46,48,51,53,56,63,67,76,99,104,106,108,110,114,117,118,124,129,132,135,138,146', '2,5,6', 'Est aspernatur est', 'Ut exercitationem pe', '4', '2,4,5', '3,4,5,6,10,12,13,15,16,17,19,20,21,25,26', 'Dolor optio nesciun', 'Laboris deserunt aut', 'Mollitia at nulla re', '5,11,12,14,15,16', '2022-04-08 04:37:55', '2022-04-08 04:37:55', 0),
(9, 'dfgdfsg', 'dsafas', 'sadasd', 'asdsad', 'asdsad', 'asdsad', 'asdsad', 'dsfgrdf', 'dfsdsf', 'dsfdsf', 'adssad', 'dsfsfsa', 'fddsfd', '2022-04-13 07:40:53', '2022-04-13 07:40:53', 0),
(10, 'htyu', 'fdgfdgdf', 'fdgfdg', 'vcbcv', 'cxvcx', 'fdgfd', 'vcbcv', 'xcvvcxv', 'xcvcx', 'cvcxv', 'cvxc', 'vcxvcx', 'xcvcx', '2022-04-13 22:18:25', '2022-04-13 23:39:32', 0),
(11, 'reading', 'movie', 'clasic', 'trytry', 'gregre', 'rfewrw', 'ewrew', 'werew', 'ewrew', 'dfsfd', 'few', 'efew', 'few', '2022-04-13 23:12:47', '2022-04-13 23:45:13', 0),
(12, 'dfdsf', 'sdfdsf', 'sdfdsf', 'dsfdsf', 'sdfsd', 'sdfds', 'sddfsd', 'sdfsd', 'sdfsd', 'sdfds', 'sdfd', 'sdfs', 'sdf', '2022-04-17 23:33:05', '2022-04-17 23:33:05', 0),
(13, 'dfdsf', 'sdfdsf', 'sdfdsf', 'dsfdsf', 'sdfsd', 'sdfds', 'sddfsd', 'sdfsd', 'sdfsd', 'sdfds', 'sdfd', 'sdfs', 'sdf', '2022-04-17 23:33:15', '2022-04-17 23:33:15', 0),
(14, 'dfdsf', 'sdfdsf', 'sdfdsf', 'dsfdsf', 'sdfsd', 'sdfds', 'sddfsd', 'sdfsd', 'sdfsd', 'sdfds', 'sdfd', 'sdfs', 'sdf', '2022-04-17 23:35:54', '2022-04-17 23:35:54', 0),
(15, 'dfdsf', 'sdfdsf', 'sdfdsf', 'dsfdsf', 'sdfsd', 'sdfds', 'sddfsd', 'sdfsd', 'sdfsd', 'sdfds', 'sdfd', 'sdfs', 'sdf', '2022-04-17 23:36:07', '2022-04-17 23:36:07', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_me`
--
ALTER TABLE `about_me`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annual_income`
--
ALTER TABLE `annual_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_details`
--
ALTER TABLE `basic_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisine`
--
ALTER TABLE `cuisine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dress_style`
--
ALTER TABLE `dress_style`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_career`
--
ALTER TABLE `education_career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_based_out_of`
--
ALTER TABLE `family_based_out_of`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_details`
--
ALTER TABLE `family_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_income`
--
ALTER TABLE `family_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fav_movies`
--
ALTER TABLE `fav_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heights`
--
ALTER TABLE `heights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lifestyle`
--
ALTER TABLE `lifestyle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lifestyles`
--
ALTER TABLE `lifestyles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marital_status`
--
ALTER TABLE `marital_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mother_tongues`
--
ALTER TABLE `mother_tongues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `occupations`
--
ALTER TABLE `occupations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profile_manageds`
--
ALTER TABLE `profile_manageds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `your_likes`
--
ALTER TABLE `your_likes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_me`
--
ALTER TABLE `about_me`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `annual_income`
--
ALTER TABLE `annual_income`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `basic_details`
--
ALTER TABLE `basic_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `casts`
--
ALTER TABLE `casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cuisine`
--
ALTER TABLE `cuisine`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `dress_style`
--
ALTER TABLE `dress_style`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `education_career`
--
ALTER TABLE `education_career`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `family_based_out_of`
--
ALTER TABLE `family_based_out_of`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `family_details`
--
ALTER TABLE `family_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `family_income`
--
ALTER TABLE `family_income`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fav_movies`
--
ALTER TABLE `fav_movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `heights`
--
ALTER TABLE `heights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `lifestyle`
--
ALTER TABLE `lifestyle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lifestyles`
--
ALTER TABLE `lifestyles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `marital_status`
--
ALTER TABLE `marital_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `mother_tongues`
--
ALTER TABLE `mother_tongues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `musics`
--
ALTER TABLE `musics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `occupations`
--
ALTER TABLE `occupations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `profile_manageds`
--
ALTER TABLE `profile_manageds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `your_likes`
--
ALTER TABLE `your_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
