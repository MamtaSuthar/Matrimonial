-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 12:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_cart`
--
CREATE DATABASE IF NOT EXISTS `shopping_cart` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopping_cart`;

-- --------------------------------------------------------

--
-- Table structure for table `addcash_bonus`
--

CREATE TABLE `addcash_bonus` (
  `id` int(11) NOT NULL,
  `amt_range` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` int(11) NOT NULL,
  `max_used` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `androidappid`
--

CREATE TABLE `androidappid` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `appkey` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `androidappid`
--

INSERT INTO `androidappid` (`id`, `user_id`, `appkey`, `created_at`, `updated_at`) VALUES
(7, 7, 'dLb2kwTdTqKQPqC9FDLU2s:APA91bFpqgKdweQiVRBHMqD-wgNyAs4_qdxmdsR3qOBZGES2iIn2z42vOzezkoL0fYZ7t51NccVaOD_e2PA4mIQcfhdiuRKSrJ3iPGQritqiTwu_bzTKhSIWFLNG7dxSfeYig0eQW87n', '2021-09-07 06:05:01', '2021-12-17 05:16:24'),
(9, 4, 'cgMdI894TTKrQRz9wCtYZw:APA91bFolKb375jsrr_kHNoAHGMUb_1AAvte8he0FyscLtziVmEbM29N5FIAQnSCsUVWT3jBD17YrFEJDILdqFJDtQjJojg9LQsnMvmz7_w88-G0vLvRDo8fsTmQ96kAbDeo2XIULb4t', '2021-09-07 06:07:49', '2021-12-17 05:16:24'),
(19, 10, 'eR6YFwXPR5eP70QiKbmfKn:APA91bFtEcTR8PUOnuQ4I7sabFDSDTvCCHyuend40hzSAtrc-n9VEkar--Mxgwt4-oSSE4wdLGhVw8OI9ySdzdZpQPv9jCQWHrzDglc9UurOKCZJyh_Et3h1ktG74YN2iXhFE5TGkzZl', '2021-09-08 07:32:11', '2021-12-17 05:16:24'),
(20, 3, 'cP8BtdfuRWSISHqWgvOCVw:APA91bFOLhRtjbs-73C9DEWJ546quUzXbJiHwwz3l05CUchQmJHO0L58YtCRFw8fZuIfIYdRx89DBC-uAtBMaxEC9BywFhNmG1fdn5yDIkgcGy6CCAHb1LxQeo6l2Zsm-kKPv8qXBzwx', '2021-09-08 07:50:31', '2021-12-17 05:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `androidversion`
--

CREATE TABLE `androidversion` (
  `id` int(10) UNSIGNED NOT NULL,
  `version` int(11) NOT NULL,
  `ios` int(11) NOT NULL DEFAULT 0,
  `updation_points` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `androidversion`
--

INSERT INTO `androidversion` (`id`, `version`, `ios`, `updation_points`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '<p>This is a new update of FantasyBOX</p>', '2020-05-06 05:00:04', '2021-12-17 05:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `avatar`
--

CREATE TABLE `avatar` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `accountholder` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `accno` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ifsc` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `bankname` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bankbranch` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upi_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iagree` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `userid`, `accountholder`, `accno`, `ifsc`, `bankname`, `bankbranch`, `state`, `status`, `image`, `comment`, `type`, `mobile`, `upi_id`, `gname`, `iagree`, `created_at`, `updated_at`) VALUES
(1, 3, 'KULDEEP CHAUHAN', '919649868677', 'PYTM0123456', 'PAYTM', 'GURUGRAM', 'Rajasthan', 1, 'bank-59611631012590.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-07 11:03:10', '2021-12-17 05:16:25'),
(2, 12, 'Waseem Akram', '917023610261', 'PYTM0123456', 'PAYTM PAYMENT BANK', 'DELHI', 'Rajasthan', 1, 'bank-62741632399486.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-23 12:18:06', '2021-12-17 05:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `bonus_amount`
--

CREATE TABLE `bonus_amount` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `bonus_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bonus_refered`
--

CREATE TABLE `bonus_refered` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `fromid` int(11) NOT NULL,
  `amount` double NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `txnid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `category_id`, `subcategory_id`, `brand_name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'polo', 'category_image/57NHF5Hq0ZzqxZepHHF1qNUVAksvqO21Kplh0Zfm.jpg', 1, NULL, NULL),
(2, 1, 2, 'nike', 'category_image/DfyOT7NgV0gDjxqkbSckVTSJElBHenzOdkuYupwT.jpg', 0, '2021-11-10 09:06:21', '2021-11-10 09:06:21'),
(3, 2, 1, 'asdfg', 'category_image/pjVYPtokIUbn4EVW2Fnkl7NquApOJLIABFQdEsmw.jpg', 0, '2021-11-26 09:28:53', '2021-11-26 09:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart_product` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `cart_product`, `created_at`, `updated_at`) VALUES
(12, 36, '[{\"id\":1,\"pid\":23,\"title\":\"salt\",\"amount\":\"20\",\"image\":\"oil1.jpg\",\"quantity\":\"1kg\",\"p_amt\":20,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":3,\"pid\":19,\"title\":\"IMG product\",\"amount\":\"1200\",\"image\":\"baaz.clg-I2-1637729818.jpeg\",\"quantity\":null,\"p_amt\":1200,\"prod_qty\":1},{\"id\":4,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', '2021-11-26 16:12:08', '2021-11-26 16:12:08'),
(15, 41, '[{\"id\":1,\"pid\":23,\"title\":\"salt\",\"amount\":\"20\",\"image\":\"oil1.jpg\",\"quantity\":\"1kg\",\"p_amt\":20,\"prod_qty\":1},{\"id\":2,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', '2021-12-10 11:02:03', '2021-12-10 11:02:03'),
(16, 42, '[{\"id\":1,\"pid\":23,\"title\":\"salt\",\"amount\":\"20\",\"image\":\"oil1.jpg\",\"quantity\":\"1kg\",\"p_amt\":60,\"prod_qty\":3},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', '2021-12-10 18:08:51', '2021-12-10 18:08:51'),
(17, 43, '[{\"id\":1,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":16,\"title\":\"SugarFree\",\"amount\":\"30\",\"image\":\"sugar.clg-I21637917450.jpg\",\"quantity\":\"1kg\",\"p_amt\":30,\"prod_qty\":1}]', '2021-12-13 09:16:53', '2021-12-13 09:16:53'),
(18, 45, '[]', '2021-12-14 17:43:26', '2021-12-14 17:43:26'),
(19, 46, '[{\"id\":1,\"pid\":17,\"title\":\"maggie\",\"amount\":\"20\",\"image\":\"maggiejpg.jpg\",\"quantity\":\"100gm\",\"p_amt\":20,\"prod_qty\":1},{\"id\":2,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', '2021-12-20 14:35:50', '2021-12-20 14:35:50'),
(20, 48, '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', '2021-12-20 18:44:58', '2021-12-20 18:44:58'),
(21, 49, '[]', '2021-12-21 09:14:56', '2021-12-21 09:14:56'),
(22, 50, '[{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":23,\"title\":\"salt\",\"amount\":\"20\",\"image\":\"oil1.jpg\",\"quantity\":\"1kg\",\"p_amt\":20,\"prod_qty\":1}]', '2021-12-21 09:30:18', '2021-12-21 09:30:18'),
(24, 52, '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', '2021-12-23 09:50:38', '2021-12-23 09:50:38'),
(26, 51, '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', '2021-12-23 15:26:03', '2021-12-23 15:26:03'),
(31, 53, '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', '2021-12-24 14:36:09', '2021-12-24 14:36:09'),
(35, 33, '[{\"id\":1,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":18,\"title\":\"Sugar\",\"amount\":\"50\",\"image\":\"sugar.jpg\",\"quantity\":null,\"p_amt\":50,\"prod_qty\":1}]', '2021-12-29 17:24:06', '2021-12-29 17:24:06'),
(36, 62, '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', '2021-12-30 16:11:11', '2021-12-30 16:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shoes', 'category_image/44yh23SgO9NIaVn8DBmSSPWmLHAAIIJXvl7MSaAb.png', 0, NULL, NULL),
(2, 'Men\'s Wear', 'category_image/95WY3QuTzmr59UxGWhitAEY42txhZb01LQaYsiBY.png', 1, '2021-11-09 10:42:16', '2021-11-09 10:42:16'),
(3, 'Headphones', 'category_image/de8q12eITW6U9P1p0Ruj1FWXUa2LhzDa8VOp1TGv.jpg', 0, '2021-11-09 13:01:32', '2021-11-09 13:01:32'),
(4, 'food ad', 'category_image/exyoNlIizC3yifbYbRwAZGraNzN8sDwERr7eimuG.jpg', 0, '2021-11-26 09:26:19', '2021-11-26 09:26:19'),
(5, 'test', 'category_image/KFNl1dXS7wDBBhmJ4aFE6nQxUvt0MCSFJZ7myUkr.png', 0, '2021-12-28 12:11:55', '2021-12-28 12:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `user_id`, `order_id`, `coupon_code`, `created_at`, `updated_at`) VALUES
(1, 6, 'TIJAORDER16369631826', 'TIJAORDER1636963182668187', '2021-11-18 06:49:11', '2021-11-18 06:49:11'),
(2, 6, 'TIJAORDER16369631826', 'TIJAORDER1636963182665464', '2021-11-18 06:49:19', '2021-11-18 06:49:19'),
(3, 50, 'order_IaVbYhssEr3e5H', 'TK50pay_IaVboGn21EGL5A9422', '2021-12-22 11:55:18', '2021-12-22 11:55:18'),
(4, 50, 'order_IaVbYhssEr3e5H', 'TK50pay_IaVboGn21EGL5A1583', '2021-12-22 11:57:43', '2021-12-22 11:57:43'),
(5, 50, 'order_IaVbYhssEr3e5H', 'TK50pay_IaVboGn21EGL5A9936', '2021-12-22 11:58:25', '2021-12-22 11:58:25'),
(6, 50, 'order_IaVqufN8Iosa7P', 'TK50pay_IaVrllfNGbJUrO5210', '2021-12-22 12:00:31', '2021-12-22 12:00:31'),
(7, 51, 'order_IaWP2W6OPPYKCR', 'TK51pay_IaWPtbXDSQY3f82680', '2021-12-22 12:32:51', '2021-12-22 12:32:51'),
(8, 51, 'order_IaWdSAUwhIiwb5', 'TK51pay_IaWddaFW22pZFV1805', '2021-12-22 12:45:50', '2021-12-22 12:45:50'),
(9, 52, 'order_IamZkSlxD3m7kT', 'TK52pay_Iama7JRSvqvAQb6206', '2021-12-23 04:21:36', '2021-12-23 04:21:36'),
(10, 33, 'order_Iao2ibhK9I20Ag', 'TK33pay_Iao37IIrMkPzG39385', '2021-12-23 05:47:51', '2021-12-23 05:47:51'),
(11, 33, 'order_IaoChuoepFBfaB', 'TK33pay_IaoCvc2EgKnRdF4170', '2021-12-23 05:57:01', '2021-12-23 05:57:01'),
(12, 33, 'order_IaocNTEqqc9KbU', 'TK33pay_Iaocat4e56qG1W1932', '2021-12-23 06:21:19', '2021-12-23 06:21:19'),
(13, 33, 'order_IaoeEWrdEyJOE3', 'TK33pay_IaoeQfvJ85NplM3710', '2021-12-23 06:23:03', '2021-12-23 06:23:03'),
(14, 51, 'order_IapXl7DkQ0TmFp', 'TK51pay_IapYKMsCKh7hsh9456', '2021-12-23 07:15:58', '2021-12-23 07:15:58'),
(15, 33, 'order_IauTaH699fzP5m', 'TK33pay_IauTtSGx3ieXw79826', '2021-12-23 12:05:16', '2021-12-23 12:05:16'),
(16, 53, 'order_IbC2UX4GWIgrBi', 'TK53pay_IbC4Brx2NfwTfX1035', '2021-12-24 05:17:25', '2021-12-24 05:17:25'),
(17, 53, 'order_IbCCeF2UsxRycT', 'TK53pay_IbCDViPW7xpgxn8450', '2021-12-24 05:26:14', '2021-12-24 05:26:14'),
(18, 54, 'order_IbDgzvkNlxNi1c', 'TK54pay_IbDhDoZHWZHia74736', '2021-12-24 06:53:12', '2021-12-24 06:53:12'),
(19, 33, 'order_IdFwyOcPCyUJYb', 'TK33pay_IdFxNc1UspUjzz8906', '2021-12-29 10:23:48', '2021-12-29 10:23:48'),
(20, 33, 'order_IdFzJa5FgczALi', 'TK33pay_IdFzWFrQU6JPZY9943', '2021-12-29 10:25:46', '2021-12-29 10:25:46'),
(21, 33, 'order_IdG3G1Eepwn40C', 'TK33pay_IdG3XdzuOJ8rSP2562', '2021-12-29 10:29:36', '2021-12-29 10:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `queue` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ans` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `number` bigint(20) NOT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL,
  `reaction` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `number`, `review`, `reaction`, `userid`, `created_at`, `updated_at`) VALUES
(1, 'waseem', 'waseem@gmail.com', 9685741230, 'euifesf wgfwh  wgh gpwehfwe fnwe we wep wephwee e wep we w grwgp jsgse g e gfwep wewe wg wehj epghwegishisdg  gh sdg ', 'sdfg', 1, '2021-11-20 04:42:36', '2021-12-17 05:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `general_tabs`
--

CREATE TABLE `general_tabs` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_tabs`
--

INSERT INTO `general_tabs` (`id`, `type`, `amount`, `created_at`, `updated_at`) VALUES
(18, 'mobile_bonus', '20', '2021-04-07 17:41:40', '2021-12-17 05:16:29'),
(19, 'email_bonus', '10', '2021-04-07 17:41:49', '2021-12-17 05:16:29'),
(22, 'bank_bonus', '15', '2021-04-07 17:42:24', '2021-12-17 05:16:29'),
(24, 'pan_bonus', '10', '2021-04-12 11:58:08', '2021-12-17 05:16:29'),
(25, 'refer_bonus', '10', '2021-11-18 10:15:48', '2021-12-17 05:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `genral_tab`
--

CREATE TABLE `genral_tab` (
  `id` int(11) NOT NULL,
  `min_withdraw_amt` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2021_11_09_075609_create_subcategory_table', 1),
(5, '2021_11_09_075731_create_brands_table', 1),
(6, '2021_11_09_084014_create_category_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` int(11) DEFAULT NULL,
  `module_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `userid`, `title`, `seen`, `module_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'You have got ₹500 for mobile bonus.', 1, NULL, '2021-09-06 06:41:14', '2021-12-17 05:16:30'),
(2, 2, 'You have got ₹10 for email bonus.', 1, NULL, '2021-09-06 06:46:06', '2021-12-17 05:16:30'),
(3, 3, 'You have got ₹10 for email bonus.', 1, NULL, '2021-09-06 06:51:13', '2021-12-17 05:16:30'),
(4, 3, 'You have got ₹500 for mobile bonus.', 1, NULL, '2021-09-06 06:58:40', '2021-12-17 05:16:30'),
(5, 3, 'Refund Amount of Rs.2610 for challenge cancellation', 1, NULL, '2021-09-06 07:04:07', '2021-12-17 05:16:30'),
(6, 4, 'You have got ₹10 for email bonus.', 1, NULL, '2021-09-06 07:33:32', '2021-12-17 05:16:30'),
(7, 5, 'You have got ₹10 for email bonus.', 1, NULL, '2021-09-06 12:41:42', '2021-12-17 05:16:30'),
(8, 2, 'You have got ₹20 for mobile bonus.', 1, NULL, '2021-09-07 04:53:52', '2021-12-17 05:16:30'),
(9, 6, 'You have got ₹10 for email bonus.', 1, NULL, '2021-09-07 05:08:27', '2021-12-17 05:16:30'),
(10, 3, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-07 05:26:31', '2021-12-17 05:16:30'),
(11, 3, 'You have added ₹ 1000 by Wallet', 1, NULL, '2021-09-07 05:26:57', '2021-12-17 05:16:30'),
(12, 3, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-07 05:59:40', '2021-12-17 05:16:30'),
(13, 7, 'You have got ₹20 for mobile bonus.', 1, NULL, '2021-09-07 06:05:01', '2021-12-17 05:16:30'),
(14, 8, 'You have got ₹20 for mobile bonus.', 1, NULL, '2021-09-07 06:11:52', '2021-12-17 05:16:30'),
(15, 3, 'You won amount Rs.400', 1, NULL, '2021-09-07 10:45:20', '2021-12-17 05:16:30'),
(16, 3, 'You won amount Rs.500', 1, NULL, '2021-09-07 10:45:20', '2021-12-17 05:16:30'),
(17, 3, 'You won amount Rs.50', 1, NULL, '2021-09-07 10:45:20', '2021-12-17 05:16:30'),
(18, 3, 'You have got ₹10 for pan bonus.', 1, NULL, '2021-09-07 11:04:11', '2021-12-17 05:16:30'),
(19, 3, 'Your PAN card verification request is Verified', 1, NULL, '2021-09-07 11:04:11', '2021-12-17 05:16:30'),
(20, 3, 'You have got ₹15 for bank bonus.', 1, NULL, '2021-09-07 11:04:37', '2021-12-17 05:16:30'),
(21, 3, 'Your Bank documents request is Verified', 1, NULL, '2021-09-07 11:04:37', '2021-12-17 05:16:30'),
(22, 3, 'Withdraw Request Approved successfully of amount ₹500', 1, NULL, '2021-09-07 11:07:19', '2021-12-17 05:16:30'),
(23, 5, 'You have got ₹20 for mobile bonus.', 1, NULL, '2021-09-07 13:17:09', '2021-12-17 05:16:30'),
(24, 5, 'You have added ₹ 130 by Wallet', 1, NULL, '2021-09-07 13:17:42', '2021-12-17 05:16:30'),
(25, 2, 'Refund Amount of Rs.0 for challenge cancellation', 1, NULL, '2021-09-07 14:10:03', '2021-12-17 05:16:30'),
(26, 5, 'Refund Amount of Rs.11.5 for challenge cancellation', 1, NULL, '2021-09-07 14:10:03', '2021-12-17 05:16:30'),
(27, 2, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 04:04:12', '2021-12-17 05:16:30'),
(28, 2, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 04:04:47', '2021-12-17 05:16:30'),
(29, 2, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 04:21:05', '2021-12-17 05:16:30'),
(30, 2, 'You have added ₹ 5 by Wallet', 1, NULL, '2021-09-08 04:32:35', '2021-12-17 05:16:30'),
(31, 2, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 04:33:16', '2021-12-17 05:16:30'),
(32, 2, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 06:23:49', '2021-12-17 05:16:30'),
(33, 2, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 06:24:28', '2021-12-17 05:16:30'),
(34, 2, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 06:25:23', '2021-12-17 05:16:30'),
(35, 2, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 06:27:04', '2021-12-17 05:16:30'),
(36, 9, 'You have got ₹20 for mobile bonus.', 1, NULL, '2021-09-08 06:27:59', '2021-12-17 05:16:30'),
(37, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 06:28:55', '2021-12-17 05:16:30'),
(38, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 06:44:10', '2021-12-17 05:16:30'),
(39, 9, 'You have added ₹ 500 by Wallet', 1, NULL, '2021-09-08 06:44:53', '2021-12-17 05:16:30'),
(40, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 06:45:27', '2021-12-17 05:16:30'),
(41, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 06:46:32', '2021-12-17 05:16:30'),
(42, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 06:46:58', '2021-12-17 05:16:30'),
(43, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 06:47:38', '2021-12-17 05:16:30'),
(44, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 06:50:18', '2021-12-17 05:16:30'),
(45, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 06:51:25', '2021-12-17 05:16:30'),
(46, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 06:52:54', '2021-12-17 05:16:30'),
(47, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 07:02:30', '2021-12-17 05:16:30'),
(48, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 07:04:45', '2021-12-17 05:16:30'),
(49, 9, 'You have added ₹ 200 by Wallet', 1, NULL, '2021-09-08 07:06:04', '2021-12-17 05:16:30'),
(50, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 07:10:59', '2021-12-17 05:16:30'),
(51, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 07:11:34', '2021-12-17 05:16:30'),
(52, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 07:21:54', '2021-12-17 05:16:30'),
(53, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 07:22:26', '2021-12-17 05:16:30'),
(54, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 07:24:46', '2021-12-17 05:16:30'),
(55, 9, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 07:28:39', '2021-12-17 05:16:30'),
(56, 9, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 07:30:21', '2021-12-17 05:16:30'),
(57, 2, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 07:31:31', '2021-12-17 05:16:30'),
(58, 10, 'You have got ₹20 for mobile bonus.', 1, NULL, '2021-09-08 07:32:11', '2021-12-17 05:16:30'),
(59, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 07:32:59', '2021-12-17 05:16:30'),
(60, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 07:33:38', '2021-12-17 05:16:30'),
(61, 10, 'You have added ₹ 5 by Wallet', 1, NULL, '2021-09-08 07:34:25', '2021-12-17 05:16:30'),
(62, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 07:37:06', '2021-12-17 05:16:30'),
(63, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 07:38:41', '2021-12-17 05:16:30'),
(64, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 07:40:46', '2021-12-17 05:16:30'),
(65, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 07:42:33', '2021-12-17 05:16:30'),
(66, 10, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 07:43:04', '2021-12-17 05:16:30'),
(67, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 07:43:59', '2021-12-17 05:16:30'),
(68, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 07:46:05', '2021-12-17 05:16:30'),
(69, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 07:46:29', '2021-12-17 05:16:30'),
(70, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 09:44:51', '2021-12-17 05:16:30'),
(71, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 09:45:24', '2021-12-17 05:16:30'),
(72, 3, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 10:38:21', '2021-12-17 05:16:30'),
(73, 3, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-08 10:39:11', '2021-12-17 05:16:30'),
(74, 3, 'You have added ₹ 700 by Wallet', 1, NULL, '2021-09-08 10:44:19', '2021-12-17 05:16:30'),
(75, 3, 'You have added ₹ 500 by Wallet', 1, NULL, '2021-09-08 10:45:49', '2021-12-17 05:16:30'),
(76, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 10:47:46', '2021-12-17 05:16:30'),
(77, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 10:48:14', '2021-12-17 05:16:30'),
(78, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-08 17:03:36', '2021-12-17 05:16:30'),
(79, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-09 08:50:19', '2021-12-17 05:16:30'),
(80, 3, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-10 09:09:38', '2021-12-17 05:16:30'),
(81, 3, 'You have added ₹ 1000 by Wallet', 1, NULL, '2021-09-10 09:10:28', '2021-12-17 05:16:30'),
(82, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-10 11:58:05', '2021-12-17 05:16:30'),
(83, 10, 'You have added ₹ 10 by Wallet', 1, NULL, '2021-09-10 11:58:42', '2021-12-17 05:16:30'),
(84, 10, 'You have added ₹ 100 by Wallet', 1, NULL, '2021-09-10 11:59:32', '2021-12-17 05:16:30'),
(85, 11, 'You have got ₹20 for mobile bonus.', 1, NULL, '2021-09-21 06:00:13', '2021-12-17 05:16:30'),
(86, 12, 'You have got ₹10 for email bonus.', 1, NULL, '2021-09-21 08:36:47', '2021-12-17 05:16:30'),
(87, 12, 'You have got ₹20 for mobile bonus.', 1, NULL, '2021-09-21 08:49:49', '2021-12-17 05:16:30'),
(88, 13, 'You have got ₹20 for mobile bonus.', 1, NULL, '2021-09-21 09:33:05', '2021-12-17 05:16:30'),
(89, 12, '₹50000 has been added to your wallet successfully.', 1, NULL, '2021-09-21 10:34:52', '2021-12-17 05:16:30'),
(90, 14, 'You have got ₹20 for mobile bonus.', 1, NULL, '2021-09-21 11:37:06', '2021-12-17 05:16:30'),
(91, 15, 'You have got ₹10 for email bonus.', 1, NULL, '2021-09-21 12:40:56', '2021-12-17 05:16:30'),
(92, 12, 'Refund Amount of Rs.0 for challenge cancellation', 1, NULL, '2021-09-22 09:21:02', '2021-12-17 05:16:30'),
(93, 14, 'Refund Amount of Rs.0 for challenge cancellation', 1, NULL, '2021-09-22 09:21:03', '2021-12-17 05:16:30'),
(94, 16, 'You have got ₹20 for mobile bonus.', 1, NULL, '2021-09-22 10:55:32', '2021-12-17 05:16:30'),
(95, 17, 'You have got ₹10 for email bonus.', 1, NULL, '2021-09-22 11:37:50', '2021-12-17 05:16:30'),
(96, 12, 'Refund Amount of Rs.220 for challenge cancellation', 1, NULL, '2021-09-22 13:10:02', '2021-12-17 05:16:30'),
(97, 12, 'Refund Amount of Rs.422 for challenge cancellation', 1, NULL, '2021-09-22 13:10:02', '2021-12-17 05:16:30'),
(98, 12, 'Refund Amount of Rs.18 for challenge cancellation', 1, NULL, '2021-09-22 13:10:03', '2021-12-17 05:16:30'),
(99, 18, 'You have got ₹20 for mobile bonus.', 1, NULL, '2021-09-23 07:54:11', '2021-12-17 05:16:30'),
(100, 12, 'You won amount Rs.40', 1, NULL, '2021-09-23 11:02:52', '2021-12-17 05:16:30'),
(101, 12, 'You won amount Rs.40', 1, NULL, '2021-09-23 11:04:13', '2021-12-17 05:16:30'),
(102, 12, 'You won amount Rs.1000', 1, NULL, '2021-09-23 11:21:47', '2021-12-17 05:16:30'),
(103, 12, 'You won amount Rs.30', 1, NULL, '2021-09-23 11:21:47', '2021-12-17 05:16:30'),
(104, 12, 'You won amount Rs.1000', 1, NULL, '2021-09-23 11:22:33', '2021-12-17 05:16:30'),
(105, 12, 'You won amount Rs.1000', 1, NULL, '2021-09-23 11:23:34', '2021-12-17 05:16:30'),
(106, 12, 'You won amount Rs.900', 1, NULL, '2021-09-23 11:23:34', '2021-12-17 05:16:30'),
(107, 12, 'You won amount Rs.600', 1, NULL, '2021-09-23 11:23:34', '2021-12-17 05:16:30'),
(108, 12, 'You won amount Rs.600', 1, NULL, '2021-09-23 11:23:34', '2021-12-17 05:16:30'),
(109, 12, 'You won amount Rs.600', 1, NULL, '2021-09-23 11:23:34', '2021-12-17 05:16:30'),
(110, 12, 'You won amount Rs.353.13065', 1, NULL, '2021-09-23 11:25:10', '2021-12-17 05:16:30'),
(111, 12, 'You won amount Rs.271.87935', 1, NULL, '2021-09-23 11:25:10', '2021-12-17 05:16:30'),
(112, 3, 'You won amount Rs.400', 1, NULL, '2021-09-23 11:26:22', '2021-12-17 05:16:30'),
(113, 3, 'You won amount Rs.400', 1, NULL, '2021-09-23 11:26:49', '2021-12-17 05:16:30'),
(114, 12, 'You have got ₹10 for pan bonus.', 1, NULL, '2021-09-23 12:19:14', '2021-12-17 05:16:30'),
(115, 12, 'Your PAN card verification request is Verified', 1, NULL, '2021-09-23 12:19:14', '2021-12-17 05:16:30'),
(116, 12, 'You have got ₹15 for bank bonus.', 1, NULL, '2021-09-23 12:22:18', '2021-12-17 05:16:30'),
(117, 12, 'Your Bank documents request is Verified', 1, NULL, '2021-09-23 12:22:18', '2021-12-17 05:16:30'),
(118, 12, 'Your Bank documents request is Verified', 1, NULL, '2021-09-23 12:22:30', '2021-12-17 05:16:30'),
(119, 12, 'Withdraw Request Approved successfully of amount ₹1000', 1, NULL, '2021-09-23 12:41:21', '2021-12-17 05:16:30'),
(120, 12, 'You won amount Rs.40', 1, NULL, '2021-09-23 12:55:45', '2021-12-17 05:16:30'),
(121, 19, 'You have got ₹10 for email bonus.', 1, NULL, '2021-09-25 15:29:36', '2021-12-17 05:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `minamount` bigint(20) DEFAULT NULL,
  `maxamount` bigint(20) DEFAULT NULL,
  `bonus` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `offercode` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `bonus_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `user_time` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amt_limit` int(11) NOT NULL DEFAULT 0,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `minamount`, `maxamount`, `bonus`, `product_id`, `offercode`, `bonus_type`, `title`, `start_date`, `expire_date`, `user_time`, `type`, `amt_limit`, `description`, `created_at`, `updated_at`) VALUES
(1, 100, 1000, 100, NULL, 'CASH100', 'per', '100%cash', '2021-04-12', '2021-04-30', 5, NULL, 2000, '100%cash', '2021-04-12 11:53:45', '2021-12-17 05:16:31'),
(2, 1, 99, 50, NULL, 'MEGA100', 'per', 'mega', '2021-04-12', '2021-04-30', 10, NULL, 1000, 'mega', '2021-04-12 11:56:03', '2021-12-17 05:16:31'),
(3, 100, 1000, 300, NULL, '12345', 'rs', 'bonus special', '2021-04-16', '2021-04-20', 2, NULL, 500, 'get amazing offer', '2021-04-16 04:37:18', '2021-12-17 05:16:31'),
(4, 500, 10000, 125, NULL, 'SALE125', 'rs', 'sale', '2021-11-18', '2021-11-27', 1, NULL, 1, 'this  offer give you 125 rs discount', '2021-11-18 10:52:12', '2021-12-17 05:16:31'),
(5, 1000, 100000, 500, NULL, '100KING', 'rs', 'KING100', '2021-11-20', '2021-12-03', 5, NULL, 56, 'Discount', '2021-11-18 11:32:44', '2021-12-17 05:16:31'),
(6, 34, 456, 56, 15, '100ABC', 'rs', 'abxc', '2021-11-20', '2021-11-30', 5, NULL, 1, 'Discount', '2021-11-18 11:41:08', '2021-12-17 05:16:31'),
(7, 1000, 20000, 100, NULL, 'AB12', 'rs', 'aaa', '2021-11-20', '2021-11-26', 5, 'Range', 1, 'aaaaa', '2021-11-19 03:53:55', '2021-12-17 05:16:31'),
(8, NULL, NULL, 1502, 2, 'BB12C', 'rs', 'cc', '2021-11-20', '2021-11-25', 4, 'Product', 4, 'bbbbbbccc', '2021-11-19 03:54:54', '2021-12-17 05:16:31'),
(9, NULL, NULL, 50, 18, '100GET`', 'rs', 'my offer', '2021-11-25', '2021-11-30', 3, 'Product', 40, '100', '2021-11-25 06:49:32', '2021-12-17 05:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `orderedproduct`
--

CREATE TABLE `orderedproduct` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `branch_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=>Pending 1=>AcceptedbyManager -1=>CanclebyManager 2=>AcceptbyCounter 3=>ready 4=>Delivered',
  `notify` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orderedproduct`
--

INSERT INTO `orderedproduct` (`id`, `user_id`, `order_id`, `branch_id`, `category_id`, `product_id`, `name`, `price`, `order_quantity`, `description`, `status`, `notify`, `created_at`, `updated_at`) VALUES
(1, 6, 'TIJAORDER16369631826', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 07:59:54'),
(2, 6, 'TIJAORDER16369631826', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 07:59:54'),
(3, 6, 'TIJAORDER16369631826', 2, 1, 3, 'Aloo tikki burger', 24, 1, 'Aloo patty', 0, 0, '2021-12-17 05:16:32', '2021-11-15 07:59:54'),
(4, 6, 'TIJAORDER16369671576', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:06:13'),
(5, 6, 'TIJAORDER16369671576', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:06:13'),
(6, 6, 'TIJAORDER16369672256', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:07:34'),
(7, 6, 'TIJAORDER16369672256', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:07:34'),
(8, 6, 'TIJAORDER16369672256', 2, 1, 3, 'Aloo tikki burger', 24, 1, 'Aloo patty', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:07:34'),
(9, 6, 'TIJAORDER16369673696', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:09:45'),
(10, 6, 'TIJAORDER16369673696', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:09:45'),
(11, 6, 'TIJAORDER16369673696', 2, 1, 3, 'Aloo tikki burger', 24, 1, 'Aloo patty', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:09:45'),
(12, 6, 'TIJAORDER16369673976', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:10:09'),
(13, 6, 'TIJAORDER16369673976', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:10:09'),
(14, 6, 'TIJAORDER16369673976', 2, 1, 3, 'Aloo tikki burger', 24, 1, 'Aloo patty', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:10:09'),
(15, 6, 'TIJAORDER16369674456', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:10:58'),
(16, 6, 'TIJAORDER16369674456', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:10:58'),
(17, 6, 'TIJAORDER16369674456', 2, 1, 3, 'Aloo tikki burger', 24, 1, 'Aloo patty', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:10:58'),
(18, 1, 'TIJAORDER16369676561', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', -1, 0, '2021-12-17 05:16:32', '2021-11-15 09:14:32'),
(19, 1, 'TIJAORDER16369676561', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', -1, 0, '2021-12-17 05:16:32', '2021-11-15 09:14:32'),
(20, 1, 'TIJAORDER16369677481', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:15:58'),
(21, 1, 'TIJAORDER16369677481', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:15:58'),
(22, 1, 'TIJAORDER16369677481', 2, 1, 3, 'Aloo tikki burger', 24, 1, 'Aloo patty', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:15:58'),
(23, 1, 'TIJAORDER16369684051', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:26:55'),
(24, 1, 'TIJAORDER16369684051', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:26:55'),
(25, 1, 'TIJAORDER16369684051', 2, 1, 3, 'Aloo tikki burger', 24, 1, 'Aloo patty', 0, 0, '2021-12-17 05:16:32', '2021-11-15 09:26:55'),
(26, 2, 'TIJAORDER16369689362', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 1, 0, '2021-12-17 05:16:32', '2021-11-15 09:35:36'),
(27, 2, 'TIJAORDER16369695562', 2, 6, 13, 'Coffee frappe', 69, 1, 'Frappe', 1, 0, '2021-12-17 05:16:32', '2021-11-15 09:45:56'),
(28, 2, 'TIJAORDER16369701792', 2, 6, 14, 'Coffee latte', 79, 1, 'Latte', 1, 0, '2021-12-17 05:16:32', '2021-11-15 09:56:19'),
(29, 2, 'TIJAORDER16369710162', 2, 7, 16, 'Honey chilli fries', 29, 1, 'Honey chilli fries', 1, 0, '2021-12-17 05:16:32', '2021-11-15 10:10:16'),
(30, 2, 'TIJAORDER16369716012', 2, 6, 12, 'Lemon mojito', 49, 1, 'Lemon mint mojito', 1, 0, '2021-12-17 05:16:32', '2021-11-15 10:20:01'),
(31, 2, 'TIJAORDER16369729482', 2, 3, 7, 'Veg fried rice', 24, 1, 'Veg loaded', 1, 0, '2021-12-17 05:16:32', '2021-11-15 10:42:28'),
(32, 2, 'TIJAORDER16369732862', 2, 6, 13, 'Coffee frappe', 69, 1, 'Frappe', 1, 0, '2021-12-17 05:16:32', '2021-11-15 10:48:06'),
(33, 2, 'TIJAORDER16369733332', 2, 3, 6, 'Schezwan fried rice', 29, 1, 'Chilli Schezwan', 1, 0, '2021-12-17 05:16:32', '2021-11-15 10:48:53'),
(34, 2, 'TIJAORDER16369733622', 2, 4, 8, 'Green Salad', 47, 1, 'Protein rich', 1, 0, '2021-12-17 05:16:32', '2021-11-15 10:49:22'),
(35, 2, 'TIJAORDER16369733762', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 1, 0, '2021-12-17 05:16:32', '2021-11-15 10:49:36'),
(36, 2, 'TIJAORDER16369734312', 2, 5, 10, 'Chocolate donut', 64, 1, 'Chocolate donut', 1, 0, '2021-12-17 05:16:32', '2021-11-15 10:50:31'),
(37, 4, 'TIJAORDER16369770014', 4, 18, 47, 'Latte coffee', 99, 1, 'Latte coffee', 1, 0, '2021-12-17 05:16:32', '2021-11-15 11:50:01'),
(38, 4, 'TIJAORDER16369778724', 4, 17, 45, 'Honey chilli potato', 189, 12, 'Honey chilli potato', 1, 0, '2021-12-17 05:16:32', '2021-11-15 12:04:32'),
(39, 6, 'TIJAORDER16369784276', 2, 1, 3, 'Aloo tikki burger', 24, 1, 'Aloo patty', 0, 0, '2021-12-17 05:16:32', '2021-11-15 12:13:58'),
(40, 6, 'TIJAORDER16369784276', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 12:13:58'),
(41, 6, 'TIJAORDER16369788336', 3, 8, 32, 'HamBurger', 79, 1, 'HamBurger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 12:20:44'),
(42, 6, 'TIJAORDER16369788336', 3, 8, 33, 'Cheese Burger', 89, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 12:20:44'),
(43, 6, 'TIJAORDER16369788336', 3, 8, 34, 'Aloo tikki Burger', 69, 1, 'Aloo patty burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 12:20:44'),
(44, 6, 'TIJAORDER16369789006', 4, 14, 35, 'HamBurger', 49, 1, 'Ham Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 12:21:50'),
(45, 6, 'TIJAORDER16369789006', 4, 14, 36, 'Cheese burger', 69, 1, 'Cheese burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 12:21:50'),
(46, 6, 'TIJAORDER16369789006', 4, 14, 37, 'Aloo patty burger', 39, 1, 'Aloo patty burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 12:21:50'),
(47, 6, 'TIJAORDER16369789006', 4, 15, 38, 'Veggie feast', 129, 1, 'Veggie feast', 0, 0, '2021-12-17 05:16:32', '2021-11-15 12:21:50'),
(48, 6, 'TIJAORDER16369789006', 4, 15, 39, 'FarmHouse', 239, 1, 'Farm house', 0, 0, '2021-12-17 05:16:32', '2021-11-15 12:21:50'),
(49, 6, 'TIJAORDER16369789006', 4, 15, 40, 'Veggie delight', 339, 1, 'Veggie delight', 0, 0, '2021-12-17 05:16:32', '2021-11-15 12:21:50'),
(50, 3, 'TIJAORDER16369797003', 3, 11, 25, 'Jeera Rice', 119, 1, 'Jeera rice', 1, 0, '2021-12-17 05:16:32', '2021-11-15 12:35:00'),
(51, 3, 'TIJAORDER16369802353', 3, 12, 19, 'Choco sundae', 179, 1, 'Sundae', 1, 0, '2021-12-17 05:16:32', '2021-11-15 12:43:55'),
(52, 3, 'TIJAORDER16369802963', 3, 12, 17, 'Blueberry ice-cream', 39, 1, 'Blueberry extract', 1, 0, '2021-12-17 05:16:32', '2021-11-15 12:44:56'),
(53, 3, 'TIJAORDER16369803673', 3, 12, 18, 'Rainbow ice cream', 49, 1, '7 colors', 1, 0, '2021-12-17 05:16:32', '2021-11-15 12:46:07'),
(54, 3, 'TIJAORDER16369803983', 3, 11, 24, 'Veg pulao', 59, 1, 'Vegie feast', 1, 0, '2021-12-17 05:16:32', '2021-11-15 12:46:38'),
(55, 7, 'TIJAORDER16369809367', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 12:55:46'),
(56, 7, 'TIJAORDER16369809367', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 12:55:46'),
(57, 3, 'TIJAORDER16369810243', 3, 10, 27, 'Veg hotdog', 59, 1, 'Veg hotdog', 1, 0, '2021-12-17 05:16:32', '2021-11-15 12:57:04'),
(58, 2, 'TIJAORDER16369810572', 2, 6, 13, 'Coffee frappe', 69, 1, 'Frappe', 1, 0, '2021-12-17 05:16:32', '2021-11-15 12:57:37'),
(59, 4, 'TIJAORDER16369811634', 4, 17, 44, 'French fries', 49, 1, 'French fries', 1, 0, '2021-12-17 05:16:32', '2021-11-15 12:59:23'),
(60, 3, 'TIJAORDER16369811863', 3, 10, 27, 'Veg hotdog', 59, 1, 'Veg hotdog', 1, 0, '2021-12-17 05:16:32', '2021-11-15 12:59:46'),
(61, 2, 'TIJAORDER16369812432', 2, 5, 11, 'Strawberry donuts', 36, 1, 'Strawberry donuts', 1, 0, '2021-12-17 05:16:32', '2021-11-15 13:00:43'),
(62, 8, 'TIJAORDER16369815058', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 13:05:19'),
(63, 8, 'TIJAORDER16369815058', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 13:05:19'),
(64, 8, 'TIJAORDER16369815058', 2, 1, 3, 'Aloo tikki burger', 24, 1, 'Aloo patty', 0, 0, '2021-12-17 05:16:32', '2021-11-15 13:05:19'),
(65, 8, 'TIJAORDER16369815838', 3, 8, 32, 'HamBurger', 79, 1, 'HamBurger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 13:06:33'),
(66, 8, 'TIJAORDER16369815838', 3, 8, 33, 'Cheese Burger', 89, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 13:06:33'),
(67, 8, 'TIJAORDER16369815838', 3, 8, 34, 'Aloo tikki Burger', 69, 1, 'Aloo patty burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 13:06:33'),
(68, 8, 'TIJAORDER16369816358', 4, 14, 35, 'HamBurger', 49, 1, 'Ham Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 13:07:24'),
(69, 8, 'TIJAORDER16369816358', 4, 14, 36, 'Cheese burger', 69, 1, 'Cheese burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 13:07:24'),
(70, 8, 'TIJAORDER16369816358', 4, 14, 37, 'Aloo patty burger', 39, 1, 'Aloo patty burger', 0, 0, '2021-12-17 05:16:32', '2021-11-15 13:07:24'),
(71, 8, 'TIJAORDER16370343058', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:45:16'),
(72, 8, 'TIJAORDER16370343058', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:45:16'),
(73, 8, 'TIJAORDER16370344198', 3, 8, 32, 'HamBurger', 79, 1, 'HamBurger', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:47:11'),
(74, 8, 'TIJAORDER16370344198', 3, 8, 33, 'Cheese Burger', 89, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:47:11'),
(75, 8, 'TIJAORDER16370344198', 3, 8, 34, 'Aloo tikki Burger', 69, 1, 'Aloo patty burger', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:47:11'),
(76, 8, 'TIJAORDER16370346408', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:50:54'),
(77, 8, 'TIJAORDER16370346408', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:50:54'),
(78, 8, 'TIJAORDER16370346408', 2, 1, 3, 'Aloo tikki burger', 24, 1, 'Aloo patty', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:50:54'),
(79, 7, 'TIJAORDER16370348717', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:54:41'),
(80, 7, 'TIJAORDER16370348717', 2, 1, 2, 'Cheese Burger', 20, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:54:41'),
(81, 7, 'TIJAORDER16370348717', 2, 1, 3, 'Aloo tikki burger', 24, 1, 'Aloo patty', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:54:41'),
(82, 7, 'TIJAORDER16370348717', 2, 2, 4, 'Hakka noodles', 64, 1, 'Chinese touch', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:54:41'),
(83, 7, 'TIJAORDER16370348717', 2, 2, 5, 'Garlic Noodles', 68, 1, 'Garlic loaded', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:54:41'),
(84, 7, 'TIJAORDER16370348717', 2, 3, 6, 'Schezwan fried rice', 29, 1, 'Chilli Schezwan', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:54:41'),
(85, 7, 'TIJAORDER16370348717', 2, 3, 7, 'Veg fried rice', 24, 1, 'Veg loaded', 0, 0, '2021-12-17 05:16:32', '2021-11-16 03:54:41'),
(86, 3, 'TIJAORDER16370358303', 3, 11, 26, 'Biryani', 39, 1, 'Veg biryani', 1, 0, '2021-12-17 05:16:32', '2021-11-16 04:10:30'),
(87, 3, 'TIJAORDER16370358443', 3, 10, 27, 'Veg hotdog', 59, 1, 'Veg hotdog', 1, 0, '2021-12-17 05:16:32', '2021-11-16 04:10:44'),
(88, 4, 'TIJAORDER16370360764', 4, 18, 47, 'Latte coffee', 99, 1, 'Latte coffee', -1, 0, '2021-12-17 05:16:32', '2021-11-16 04:14:36'),
(89, 3, 'TIJAORDER16370361913', 3, 12, 18, 'Rainbow ice cream', 49, 1, '7 colors', 1, 0, '2021-12-17 05:16:32', '2021-11-16 04:16:31'),
(90, 2, 'TIJAORDER16370363102', 2, 7, 16, 'Honey chilli fries', 29, 1, 'Honey chilli fries', 1, 0, '2021-12-17 05:16:32', '2021-11-16 04:18:30'),
(91, 2, 'TIJAORDER16370368542', 2, 7, 16, 'Honey chilli fries', 29, 1, 'Honey chilli fries', 1, 0, '2021-12-17 05:16:32', '2021-11-16 04:27:34'),
(92, 7, 'TIJAORDER16370370737', 3, 8, 32, 'HamBurger', 79, 1, 'HamBurger', 0, 0, '2021-12-17 05:16:32', '2021-11-16 04:31:24'),
(93, 7, 'TIJAORDER16370370737', 3, 8, 33, 'Cheese Burger', 89, 1, 'Cheese loaded Burger', 0, 0, '2021-12-17 05:16:32', '2021-11-16 04:31:24'),
(94, 2, 'TIJAORDER16370372012', 2, 6, 13, 'Coffee frappe', 69, 1, 'Frappe', 1, 0, '2021-12-17 05:16:32', '2021-11-16 04:33:21'),
(95, 2, 'TIJAORDER16370375812', 2, 4, 8, 'Green Salad', 47, 1, 'Protein rich', 1, 0, '2021-12-17 05:16:32', '2021-11-16 04:39:41'),
(96, 2, 'TIJAORDER16370376132', 2, 5, 10, 'Chocolate donut', 64, 1, 'Chocolate donut', 1, 0, '2021-12-17 05:16:32', '2021-11-16 04:40:13'),
(97, 2, 'TIJAORDER16370377122', 2, 6, 13, 'Coffee frappe', 69, 1, 'Frappe', 1, 0, '2021-12-17 05:16:32', '2021-11-16 04:41:52'),
(98, 7, 'TIJAORDER16370378937', 2, 1, 1, 'HamBurger', 18, 2, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-16 04:45:06'),
(99, 2, 'TIJAORDER16370382932', 2, 6, 12, 'Lemon mojito', 49, 1, 'Lemon mint mojito', 1, 0, '2021-12-17 05:16:32', '2021-11-16 04:51:33'),
(100, 2, 'TIJAORDER16370384902', 2, 4, 8, 'Green Salad', 47, 1, 'Protein rich', 1, 0, '2021-12-17 05:16:32', '2021-11-16 04:54:50'),
(101, 4, 'TIJAORDER16370386454', 4, 17, 44, 'French fries', 49, 1, 'French fries', 1, 0, '2021-12-17 05:16:32', '2021-11-16 04:57:25'),
(102, 3, 'TIJAORDER16370390343', 3, 12, 18, 'Rainbow ice cream', 49, 1, '7 colors', 1, 0, '2021-12-17 05:16:32', '2021-11-16 05:03:54'),
(103, 4, 'TIJAORDER16370390814', 4, 17, 44, 'French fries', 49, 1, 'French fries', 1, 0, '2021-12-17 05:16:32', '2021-11-16 05:04:41'),
(104, 4, 'TIJAORDER16370393564', 4, 18, 47, 'Latte coffee', 99, 1, 'Latte coffee', 1, 0, '2021-12-17 05:16:32', '2021-11-16 05:09:16'),
(105, 3, 'TIJAORDER16370395023', 3, 11, 24, 'Veg pulao', 59, 1, 'Vegie feast', 1, 0, '2021-12-17 05:16:32', '2021-11-16 05:11:42'),
(106, 3, 'TIJAORDER16370396853', 3, 12, 17, 'Blueberry ice-cream', 39, 1, 'Blueberry extract', 1, 0, '2021-12-17 05:16:32', '2021-11-16 05:14:45'),
(107, 3, 'TIJAORDER16370400203', 3, 12, 18, 'Rainbow ice cream', 49, 1, '7 colors', 1, 0, '2021-12-17 05:16:32', '2021-11-16 05:20:20'),
(108, 3, 'TIJAORDER16370402133', 3, 12, 18, 'Rainbow ice cream', 49, 1, '7 colors', 1, 0, '2021-12-17 05:16:32', '2021-11-16 05:23:33'),
(109, 3, 'TIJAORDER16370408673', 3, 11, 25, 'Jeera Rice', 119, 1, 'Jeera rice', 1, 0, '2021-12-17 05:16:32', '2021-11-16 05:34:27'),
(110, 3, 'TIJAORDER16370410263', 3, 11, 25, 'Jeera Rice', 119, 1, 'Jeera rice', 1, 0, '2021-12-17 05:16:32', '2021-11-16 05:37:06'),
(111, 3, 'TIJAORDER16370415263', 3, 11, 24, 'Veg pulao', 59, 1, 'Vegie feast', 1, 0, '2021-12-17 05:16:32', '2021-11-16 05:45:26'),
(112, 3, 'TIJAORDER16370422553', 3, 10, 27, 'Veg hotdog', 59, 1, 'Veg hotdog', 1, 0, '2021-12-17 05:16:32', '2021-11-16 05:57:35'),
(113, 8, 'TIJAORDER16370441008', 4, 15, 38, 'Veggie feast', 129, 1, 'Veggie feast', 0, 0, '2021-12-17 05:16:32', '2021-11-16 06:28:31'),
(114, 8, 'TIJAORDER16370441008', 4, 15, 39, 'FarmHouse', 239, 1, 'Farm house', 0, 0, '2021-12-17 05:16:32', '2021-11-16 06:28:31'),
(115, 8, 'TIJAORDER16370441008', 4, 15, 40, 'Veggie delight', 339, 1, 'Veggie delight', 0, 0, '2021-12-17 05:16:32', '2021-11-16 06:28:31'),
(116, 8, 'TIJAORDER16370441638', 4, 15, 38, 'Veggie feast', 129, 2, 'Veggie feast', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:29:33'),
(117, 8, 'TIJAORDER16370441638', 4, 15, 39, 'FarmHouse', 239, 2, 'Farm house', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:29:33'),
(118, 8, 'TIJAORDER16370441638', 4, 15, 40, 'Veggie delight', 339, 1, 'Veggie delight', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:29:33'),
(119, 8, 'TIJAORDER16370441638', 4, 16, 41, 'Veg pulao', 79, 1, 'Veg pulao', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:29:33'),
(120, 8, 'TIJAORDER16370441638', 4, 16, 42, 'Jeera Rice', 89, 1, 'Jeera Rice', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:29:33'),
(121, 8, 'TIJAORDER16370441638', 4, 16, 43, 'Biryani', 119, 1, 'Veg biryani', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:29:33'),
(122, 3, 'TIJAORDER16370449783', 3, 11, 24, 'Veg pulao', 59, 1, 'Vegie feast', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:42:58'),
(123, 3, 'TIJAORDER16370449933', 3, 12, 18, 'Rainbow ice cream', 49, 1, '7 colors', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:43:13'),
(124, 3, 'TIJAORDER16370450033', 3, 10, 27, 'Veg hotdog', 59, 1, 'Veg hotdog', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:43:23'),
(125, 3, 'TIJAORDER16370451063', 3, 9, 30, 'Veg extravagenza', 199, 1, 'Vegetarian', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:45:06'),
(126, 3, 'TIJAORDER16370451143', 3, 11, 25, 'Jeera Rice', 119, 1, 'Jeera rice', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:45:14'),
(127, 3, 'TIJAORDER16370452993', 3, 11, 25, 'Jeera Rice', 119, 1, 'Jeera rice', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:48:19'),
(128, 2, 'TIJAORDER16370458622', 2, 4, 8, 'Green Salad', 47, 1, 'Protein rich', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:57:42'),
(129, 3, 'TIJAORDER16370459363', 3, 12, 18, 'Rainbow ice cream', 49, 1, '7 colors', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:58:56'),
(130, 4, 'TIJAORDER16370459574', 4, 12, 17, 'Blueberry ice-cream', 39, 1, 'Blueberry extract', 1, 0, '2021-12-17 05:16:32', '2021-11-16 06:59:17'),
(131, 4, 'TIJAORDER16370460034', 4, 17, 44, 'French fries', 49, 1, 'French fries', 3, 0, '2021-12-17 05:16:32', '2021-11-16 07:00:03'),
(132, 3, 'TIJAORDER16370460543', 3, 12, 18, 'Rainbow ice cream', 49, 1, '7 colors', 1, 0, '2021-12-17 05:16:32', '2021-11-16 07:00:54'),
(133, 3, 'TIJAORDER16370460633', 3, 12, 18, 'Rainbow ice cream', 49, 1, '7 colors', 1, 0, '2021-12-17 05:16:32', '2021-11-16 07:01:03'),
(134, 3, 'TIJAORDER16370466953', 3, 11, 25, 'Jeera Rice', 119, 1, 'Jeera rice', 1, 0, '2021-12-17 05:16:32', '2021-11-16 07:11:35'),
(135, 13, 'TIJAORDER163704715313', 2, 1, 1, 'HamBurger', 18, 2, 'Best burger', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:19:31'),
(136, 8, 'TIJAORDER16370483858', 2, 1, 1, 'HamBurger', 18, 2, 'Best burger', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(137, 8, 'TIJAORDER16370483858', 2, 1, 2, 'Cheese Burger', 20, 3, 'Cheese loaded Burger', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(138, 8, 'TIJAORDER16370483858', 2, 1, 3, 'Aloo tikki burger', 24, 2, 'Aloo patty', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(139, 8, 'TIJAORDER16370483858', 2, 2, 4, 'Hakka noodles', 64, 1, 'Chinese touch', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(140, 8, 'TIJAORDER16370483858', 2, 2, 5, 'Garlic Noodles', 68, 1, 'Garlic loaded', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(141, 8, 'TIJAORDER16370483858', 2, 3, 6, 'Schezwan fried rice', 29, 1, 'Chilli Schezwan', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(142, 8, 'TIJAORDER16370483858', 2, 3, 7, 'Veg fried rice', 24, 1, 'Veg loaded', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(143, 8, 'TIJAORDER16370483858', 2, 4, 8, 'Green Salad', 47, 1, 'Protein rich', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(144, 8, 'TIJAORDER16370483858', 2, 4, 9, 'Cucumber salad', 28, 1, 'Cucumber salad', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(145, 8, 'TIJAORDER16370483858', 2, 5, 10, 'Chocolate donut', 64, 1, 'Chocolate donut', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(146, 8, 'TIJAORDER16370483858', 2, 5, 11, 'Strawberry donuts', 36, 2, 'Strawberry donuts', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(147, 8, 'TIJAORDER16370483858', 2, 6, 12, 'Lemon mojito', 49, 2, 'Lemon mint mojito', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(148, 8, 'TIJAORDER16370483858', 2, 6, 13, 'Coffee frappe', 69, 2, 'Frappe', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(149, 8, 'TIJAORDER16370483858', 2, 6, 14, 'Coffee latte', 79, 2, 'Latte', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(150, 8, 'TIJAORDER16370483858', 2, 7, 15, 'French fries', 39, 1, 'Fries', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(151, 8, 'TIJAORDER16370483858', 2, 7, 16, 'Honey chilli fries', 29, 1, 'Honey chilli fries', 4, 0, '2021-12-17 05:16:32', '2021-11-16 07:39:55'),
(152, 12, 'TIJAORDER163705182612', 2, 6, 12, 'Lemon mojito', 49, 1, 'Lemon mint mojito', 0, 0, '2021-12-17 05:16:32', '2021-11-16 08:37:18'),
(153, 12, 'TIJAORDER163705182612', 2, 6, 13, 'Coffee frappe', 69, 1, 'Frappe', 0, 0, '2021-12-17 05:16:32', '2021-11-16 08:37:18'),
(154, 12, 'TIJAORDER163705182612', 2, 1, 1, 'HamBurger', 18, 1, 'Best burger', 0, 0, '2021-12-17 05:16:32', '2021-11-16 08:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `payment_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=>pending\r\n1=>Accepted\r\n-1=>Cancle\r\n2=>Ready\r\n3=>Delivered\r\n4=>Preparing',
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'online',
  `order_product` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_otp` bigint(20) DEFAULT NULL,
  `delivery_address` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_id`, `coupon_code`, `branch_id`, `price`, `payment_id`, `payment_status`, `status`, `type`, `order_product`, `notify`, `created_at`, `updated_at`, `category_id`, `product_id`, `quantity`, `order_otp`, `delivery_address`) VALUES
(1, 6, 'TIJAORDER16369631826', '', 2, 62, '1160668', 'success', 0, 'online', NULL, 0, '2021-11-15 07:59:54', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(2, 6, 'TIJAORDER16369671576', '', 2, 38, '1160814', 'success', 0, 'online', NULL, 0, '2021-11-15 09:06:13', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(3, 6, 'TIJAORDER16369672256', '', 2, 62, '1160815', 'success', 0, 'online', NULL, 0, '2021-11-15 09:07:34', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(4, 6, 'TIJAORDER16369673696', '', 2, 62, '1160822', 'success', 0, 'online', NULL, 0, '2021-11-15 09:09:45', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(5, 6, 'TIJAORDER16369673976', '', 2, 62, '1160825', 'success', 0, 'online', NULL, 0, '2021-11-15 09:10:09', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(6, 6, 'TIJAORDER16369674456', '', 2, 62, '1160829', 'success', 0, 'online', NULL, 0, '2021-11-15 09:10:58', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(7, 1, 'TIJAORDER16369676561', '', 2, 38, '1160834', 'success', 0, 'online', NULL, 0, '2021-11-15 09:14:32', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(8, 1, 'TIJAORDER16369677481', '', 2, 62, '1160841', 'success', 0, 'online', NULL, 0, '2021-11-15 09:15:58', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(9, 1, 'TIJAORDER16369684051', '', 2, 62, '1160876', 'success', 0, 'online', NULL, 0, '2021-11-15 09:26:55', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(10, 2, 'TIJAORDER16369689362', '', 2, 20, 'COD', 'success', 0, 'offline', NULL, 0, '2021-11-15 09:35:36', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(11, 2, 'TIJAORDER16369695562', '', 2, 69, 'COD', 'success', 0, 'offline', NULL, 0, '2021-11-15 09:45:56', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(12, 2, 'TIJAORDER16369701792', '', 2, 79, 'COD', 'success', 0, 'offline', NULL, 0, '2021-11-15 09:56:19', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(13, 2, 'TIJAORDER16369710162', '', 2, 29, 'COD', 'success', 0, 'offline', NULL, 0, '2021-11-15 10:10:16', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(14, 2, 'TIJAORDER16369716012', '', 2, 49, 'COD', 'success', 0, 'offline', NULL, 0, '2021-11-15 10:20:01', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(15, 2, 'TIJAORDER16369729482', '', 2, 24, 'COD', 'success', 0, 'offline', NULL, 0, '2021-11-15 10:42:28', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(16, 2, 'TIJAORDER16369732862', '', 2, 69, 'COD', 'success', 0, 'offline', NULL, 0, '2021-11-15 10:48:06', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(17, 2, 'TIJAORDER16369733332', '', 2, 29, 'COD', 'success', 0, 'offline', NULL, 0, '2021-11-15 10:48:53', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(18, 2, 'TIJAORDER16369733622', '', 2, 47, 'COD', 'success', 0, 'offline', NULL, 0, '2021-11-15 10:49:22', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(19, 2, 'TIJAORDER16369733762', '', 2, 18, 'COD', 'success', 0, 'offline', NULL, 0, '2021-11-15 10:49:36', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(20, 2, 'TIJAORDER16369734312', '', 2, 64, 'COD', 'success', 0, 'offline', NULL, 0, '2021-11-15 10:50:31', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(21, 4, 'TIJAORDER16369770014', '', 4, 99, 'COD', 'success', 0, 'offline', NULL, 0, '2021-11-15 11:50:01', '2021-12-17 05:16:33', NULL, NULL, NULL, 4393, NULL),
(22, 4, 'TIJAORDER16369778724', '', 4, 2268, 'COD', 'success', 0, 'offline', NULL, 0, '2021-11-15 12:04:32', '2021-12-17 05:16:33', NULL, NULL, NULL, 6171, NULL),
(23, 6, 'TIJAORDER16369784276', '', 2, 42, '1161391', 'success', 0, 'online', NULL, 0, '2021-11-15 12:13:58', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(24, 6, 'TIJAORDER16369788336', '', 3, 237, '1161409', 'success', 0, 'online', NULL, 0, '2021-11-15 12:20:44', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(25, 6, 'TIJAORDER16369789006', '', 4, 864, '1161411', 'success', 0, 'online', NULL, 0, '2021-11-15 12:21:50', '2021-12-17 05:16:33', NULL, NULL, NULL, 7766, NULL),
(26, 3, 'TIJAORDER16369797003', '', 3, 119, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-15 12:35:00', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(27, 3, 'TIJAORDER16369802353', '', 3, 179, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-15 12:43:55', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(28, 3, 'TIJAORDER16369802963', '', 3, 39, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-15 12:44:56', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(29, 3, 'TIJAORDER16369803673', '', 3, 49, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-15 12:46:07', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(30, 3, 'TIJAORDER16369803983', '', 3, 59, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-15 12:46:38', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(31, 7, 'TIJAORDER16369809367', '', 2, 38, '1161514', 'success', 0, 'online', NULL, 0, '2021-11-15 12:55:46', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(32, 3, 'TIJAORDER16369810243', '', 3, 59, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-15 12:57:04', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(33, 2, 'TIJAORDER16369810572', '', 2, 69, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-15 12:57:37', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(34, 4, 'TIJAORDER16369811634', '', 4, 49, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-15 12:59:23', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(35, 3, 'TIJAORDER16369811863', '', 3, 59, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-15 12:59:46', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(36, 2, 'TIJAORDER16369812432', '', 2, 36, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-15 13:00:43', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(37, 8, 'TIJAORDER16369815058', '', 2, 62, '1161535', 'success', 0, 'online', NULL, 0, '2021-11-15 13:05:19', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(38, 8, 'TIJAORDER16369815838', '', 3, 237, '1161538', 'success', 0, 'online', NULL, 0, '2021-11-15 13:06:33', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(39, 8, 'TIJAORDER16369816358', '', 4, 157, '1161541', 'success', 0, 'online', NULL, 0, '2021-11-15 13:07:24', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(40, 8, 'TIJAORDER16370343058', '', 2, 38, '1162013', 'success', 0, 'online', NULL, 0, '2021-11-16 03:45:16', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(41, 8, 'TIJAORDER16370344198', '', 3, 237, '1162014', 'success', 0, 'online', NULL, 0, '2021-11-16 03:47:11', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(42, 8, 'TIJAORDER16370346408', '', 2, 62, '1162015', 'success', 0, 'online', NULL, 0, '2021-11-16 03:50:54', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(43, 7, 'TIJAORDER16370348717', '', 2, 247, '1162018', 'success', 0, 'online', NULL, 0, '2021-11-16 03:54:41', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(44, 3, 'TIJAORDER16370358303', '', 3, 39, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 04:10:30', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(45, 3, 'TIJAORDER16370358443', '', 3, 59, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 04:10:44', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(46, 4, 'TIJAORDER16370360764', '', 4, 99, 'COD', 'success', -1, 'offline', NULL, 0, '2021-11-16 04:14:36', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(47, 3, 'TIJAORDER16370361913', '', 3, 49, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 04:16:31', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(48, 2, 'TIJAORDER16370363102', '', 2, 29, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 04:18:30', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(49, 2, 'TIJAORDER16370368542', '', 2, 29, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 04:27:34', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(50, 7, 'TIJAORDER16370370737', '', 3, 168, '1162040', 'success', 0, 'online', NULL, 0, '2021-11-16 04:31:24', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(51, 2, 'TIJAORDER16370372012', '', 2, 69, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 04:33:21', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(52, 2, 'TIJAORDER16370375812', '', 2, 47, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 04:39:41', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(53, 2, 'TIJAORDER16370376132', '', 2, 64, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 04:40:13', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(54, 2, 'TIJAORDER16370377122', '', 2, 69, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 04:41:52', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(55, 7, 'TIJAORDER16370378937', '', 2, 36, '1162062', 'success', 0, 'online', NULL, 0, '2021-11-16 04:45:06', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(56, 2, 'TIJAORDER16370382932', '', 2, 49, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 04:51:33', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(57, 2, 'TIJAORDER16370384902', '', 2, 47, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 04:54:50', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(58, 4, 'TIJAORDER16370386454', '', 4, 49, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 04:57:25', '2021-12-17 05:16:33', NULL, NULL, NULL, 1234, NULL),
(59, 3, 'TIJAORDER16370390343', '', 3, 49, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 05:03:54', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(60, 4, 'TIJAORDER16370390814', '', 4, 49, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 05:04:41', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, '{\"fname\":\"shyam\",\"lname\":\"singh\",\"email\":\"shaktisingh150399@gmail.com\",\"country\":\"india\",\"address1\":\"jaipur\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"302026\",\"mobnum\":\"3456754322\",\"latitude\":26.9124336,\"longitude\":75.7872709}\r\n'),
(61, 4, 'TIJAORDER16370393564', '', 4, 99, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 05:09:16', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(62, 3, 'TIJAORDER16370395023', '', 3, 59, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 05:11:42', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(63, 3, 'TIJAORDER16370396853', '', 3, 39, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 05:14:45', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(64, 3, 'TIJAORDER16370400203', '', 3, 49, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 05:20:20', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(65, 3, 'TIJAORDER16370402133', '', 3, 49, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 05:23:33', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(66, 3, 'TIJAORDER16370408673', '', 3, 119, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 05:34:27', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(67, 3, 'TIJAORDER16370410263', '', 3, 119, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 05:37:06', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(68, 3, 'TIJAORDER16370415263', '', 3, 59, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 05:45:26', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(69, 3, 'TIJAORDER16370422553', '', 3, 59, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 05:57:35', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(70, 8, 'TIJAORDER16370441008', '', 4, 707, '1162262', 'success', 0, 'online', NULL, 0, '2021-11-16 06:28:31', '2021-12-17 05:16:33', NULL, NULL, NULL, 5345, '{\"fname\":\"shyam\",\"lname\":\"singh\",\"email\":\"shaktisingh150399@gmail.com\",\"country\":\"india\",\"address1\":\"jaipur\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"302026\",\"mobnum\":\"3456754322\",\"latitude\":26.9124336,\"longitude\":75.7872709}\r\n'),
(71, 8, 'TIJAORDER16370441638', '', 4, 1362, '1162266', 'success', 1, 'online', NULL, 0, '2021-11-16 06:29:33', '2021-12-17 05:16:33', NULL, NULL, NULL, 1234, '{\"fname\":\"shyam\",\"lname\":\"singh\",\"email\":\"shaktisingh150399@gmail.com\",\"country\":\"india\",\"address1\":\"jaipur\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"302026\",\"mobnum\":\"3456754322\",\"latitude\":26.9124336,\"longitude\":75.7872709}\r\n'),
(72, 3, 'TIJAORDER16370449783', '', 3, 59, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 06:42:58', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(73, 3, 'TIJAORDER16370449933', '', 3, 49, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 06:43:13', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(74, 3, 'TIJAORDER16370450033', '', 3, 59, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 06:43:23', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(75, 3, 'TIJAORDER16370451063', '', 3, 199, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 06:45:06', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(76, 3, 'TIJAORDER16370451143', '', 3, 119, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 06:45:14', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(77, 3, 'TIJAORDER16370452993', '', 3, 119, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 06:48:19', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(78, 2, 'TIJAORDER16370458622', '', 2, 47, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 06:57:42', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(79, 3, 'TIJAORDER16370459363', '', 3, 49, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 06:58:56', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(80, 4, 'TIJAORDER16370459574', '', 4, 39, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 06:59:17', '2021-12-17 05:16:33', NULL, NULL, NULL, 1234, '{\"fname\":\"shyam\",\"lname\":\"singh\",\"email\":\"shaktisingh150399@gmail.com\",\"country\":\"india\",\"address1\":\"jaipur\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"302026\",\"mobnum\":\"3456754322\",\"latitude\":26.9124336,\"longitude\":75.7872709}\r\n'),
(81, 4, 'TIJAORDER16370460034', '', 4, 49, 'COD', 'success', 2, 'offline', NULL, 0, '2021-11-16 07:00:03', '2021-12-17 05:16:33', NULL, NULL, NULL, 1234, '{\"fname\":\"shyam\",\"lname\":\"singh\",\"email\":\"shaktisingh150399@gmail.com\",\"country\":\"india\",\"address1\":\"jaipur\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"302026\",\"mobnum\":\"3456754322\",\"latitude\":26.9124336,\"longitude\":75.7872709}\r\n'),
(82, 3, 'TIJAORDER16370460543', '', 3, 49, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 07:00:54', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(83, 3, 'TIJAORDER16370460633', '', 3, 49, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 07:01:03', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(84, 3, 'TIJAORDER16370466953', '', 3, 119, 'COD', 'success', 1, 'offline', NULL, 0, '2021-11-16 07:11:35', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(85, 13, 'TIJAORDER163704715313', '', 2, 36, '1162456', 'success', 3, 'online', NULL, 0, '2021-11-16 07:19:31', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(86, 8, 'TIJAORDER16370483858', '', 2, 1002, '1162517', 'success', 3, 'online', NULL, 0, '2021-11-16 07:39:55', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, NULL),
(87, 33, 'order_IY8TdNHw21fYhQ', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-16 11:49:37', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, '{\"fname\":\"waseem\",\"lname\":\"ab\",\"email\":\"waseemakram.img@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"fhhhd\",\"city\":\"jaipur\",\"zipcode\":\"963852\",\"mobnum\":\"9638527415\"}'),
(88, 33, 'order_IY8aeWJpf21OUL', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-16 11:56:16', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, '{\"fname\":\"waseem\",\"lname\":\"ab\",\"email\":\"waseemakram.img@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"fhhhd\",\"city\":\"jaipur\",\"zipcode\":\"963852\",\"mobnum\":\"9638527415\"}'),
(89, 33, 'order_IY8opuOBS0x1vC', '', NULL, 28798, NULL, 'cancel', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-16 12:09:41', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, '{\"fname\":\"waseem\",\"lname\":\"ab\",\"email\":\"waseemakram.img@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"fhhhd\",\"city\":\"jaipur\",\"zipcode\":\"963852\",\"mobnum\":\"9638527415\"}'),
(90, 33, 'order_IY9L5PFzLaALJi', '', NULL, 28798, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-16 12:40:13', '2021-12-17 05:16:33', NULL, NULL, NULL, NULL, '{\"fname\":\"waseem\",\"lname\":\"ab\",\"email\":\"waseemakram.img@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"fhhhd\",\"city\":\"jaipur\",\"zipcode\":\"963852\",\"mobnum\":\"9638527415\"}'),
(91, 46, 'order_IZg5lOZTYttywo', '', NULL, 14799, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 09:21:36', '2021-12-20 09:21:36', NULL, NULL, NULL, NULL, NULL),
(92, 46, 'order_IZg6RLpeBOtDWv', '', NULL, 14799, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 09:22:15', '2021-12-20 09:22:36', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(93, 46, 'order_IZg7l4CL2B6Xsl', '', NULL, 14799, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 09:23:30', '2021-12-20 09:23:30', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(94, 46, 'order_IZg85NMaRVoKp5', '', NULL, 14799, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 09:23:48', '2021-12-20 09:24:10', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(95, 46, 'order_IZgRSauyt6Na0o', '', NULL, 14799, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 09:42:09', '2021-12-20 09:42:09', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(96, 46, 'order_IZgYLWIiaMoAQQ', '', NULL, 14799, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 09:48:40', '2021-12-20 09:49:01', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(97, 46, 'order_IZgZYJn8ZWyy6m', '', NULL, 14799, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 09:49:48', '2021-12-20 09:50:14', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(98, 46, 'order_IZgewUi7wZPicz', '', NULL, 14799, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 09:54:55', '2021-12-20 09:55:13', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(99, 46, 'order_IZgg274jocPgJd', '', NULL, 14799, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 09:55:56', '2021-12-20 09:56:16', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(100, 46, 'order_IZgjUF4Q8vqyKA', '', NULL, 14799, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 09:59:13', '2021-12-20 09:59:29', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(101, 46, 'order_IZgjno8VAHaYfE', '', NULL, 14799, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 09:59:30', '2021-12-20 09:59:45', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(102, 46, 'order_IZgk5ajJrwhPSr', '', NULL, 14799, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 09:59:47', '2021-12-20 10:00:06', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(103, 46, 'order_IZgkSgfB16n2K6', '', NULL, 14799, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 10:00:08', '2021-12-20 10:00:08', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(104, 46, 'order_IZglJtfCaAXqFu', '', NULL, 14799, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 10:00:57', '2021-12-20 10:01:15', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(105, 46, 'order_IZh0cIPMTJ8GgE', '', NULL, 14799, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 10:15:26', '2021-12-20 10:15:26', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(106, 46, 'order_IZh1DXrRTOsfEN', '', NULL, 14799, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 10:16:00', '2021-12-20 10:16:00', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(107, 46, 'order_IZh39ByqO63xM2', '', NULL, 14799, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":800,\"prod_qty\":4}]', 0, '2021-12-20 10:17:49', '2021-12-20 10:18:07', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(108, 50, 'order_IZzAlMMzPrxYea', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 04:01:30', '2021-12-21 04:01:30', NULL, NULL, NULL, NULL, NULL),
(109, 50, 'order_IZzDjIvfro1qcS', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 04:04:19', '2021-12-21 04:04:19', NULL, NULL, NULL, NULL, NULL),
(110, 50, 'order_IZzGb8UiAjc9tw', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 04:07:02', '2021-12-21 04:07:02', NULL, NULL, NULL, NULL, NULL),
(111, 50, 'order_IZzNFP4eaeJERF', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 04:13:20', '2021-12-21 04:13:20', NULL, NULL, NULL, NULL, NULL),
(112, 50, 'order_IZzNg5pGUOW67o', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 04:13:44', '2021-12-21 04:13:44', NULL, NULL, NULL, NULL, NULL),
(113, 50, 'order_IZzRSWDs9mzFSQ', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 04:17:19', '2021-12-21 04:17:19', NULL, NULL, NULL, NULL, NULL),
(114, 50, 'order_IZzVNe8XeMDd99', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 04:21:02', '2021-12-21 04:21:02', NULL, NULL, NULL, NULL, NULL),
(115, 50, 'order_IZzZmLPcHSlm1H', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 04:25:11', '2021-12-21 04:25:11', NULL, NULL, NULL, NULL, NULL),
(116, 33, 'order_IZzbIynSgrSiOr', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 04:26:38', '2021-12-21 04:26:38', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(117, 50, 'order_IZzy4U5XWBZce7', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 04:48:11', '2021-12-21 04:48:11', NULL, NULL, NULL, NULL, NULL),
(118, 50, 'order_IZzyOenjZxZnl3', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 04:48:30', '2021-12-21 04:48:30', NULL, NULL, NULL, NULL, NULL),
(119, 50, 'order_Ia05GbdMM4q50n', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 04:55:00', '2021-12-21 04:55:00', NULL, NULL, NULL, NULL, NULL),
(120, 50, 'order_Ia0AEFODMGHHvu', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 04:59:42', '2021-12-21 04:59:42', NULL, NULL, NULL, NULL, NULL),
(121, 50, 'order_Ia0DsIUHkywTRI', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 05:03:09', '2021-12-21 05:03:09', NULL, NULL, NULL, NULL, NULL),
(122, 50, 'order_Ia0EouboSOLRIg', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 05:04:03', '2021-12-21 05:04:03', NULL, NULL, NULL, NULL, NULL),
(123, 50, 'order_Ia0FC5ULZOaGhu', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 05:04:24', '2021-12-21 05:04:24', NULL, NULL, NULL, NULL, NULL),
(124, 50, 'order_Ia0II3tFgt4rzL', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 05:07:20', '2021-12-21 05:07:20', NULL, NULL, NULL, NULL, NULL),
(125, 50, 'order_Ia0IUrwUTkUpMb', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 05:07:31', '2021-12-21 05:07:31', NULL, NULL, NULL, NULL, NULL),
(126, 50, 'order_Ia0IvOZ7Ukl97U', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 05:07:56', '2021-12-21 05:07:56', NULL, NULL, NULL, NULL, NULL),
(127, 50, 'order_Ia0Jbb10fyWfy5', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 05:08:34', '2021-12-21 05:08:34', NULL, NULL, NULL, NULL, NULL),
(128, 50, 'order_Ia0KSH8p1fhxw4', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 05:09:23', '2021-12-21 05:09:23', NULL, NULL, NULL, NULL, NULL),
(129, 50, 'order_Ia0OTcbVjJm8dp', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 05:13:11', '2021-12-21 05:13:11', NULL, NULL, NULL, NULL, NULL),
(130, 50, 'order_Ia0RSlYyUqBxWL', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 05:16:01', '2021-12-21 05:16:01', NULL, NULL, NULL, NULL, NULL),
(131, 33, 'order_Ia0X61DtXgFIIJ', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 05:21:21', '2021-12-21 05:21:21', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(132, 33, 'order_Ia0XRDy2A1lTZc', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 05:21:40', '2021-12-21 05:21:40', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(133, 33, 'order_Ia0ZZzB5hGp3JY', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 05:23:42', '2021-12-21 05:23:42', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(134, 33, 'order_Ia0az0FhaDZW0v', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 05:25:01', '2021-12-21 05:25:01', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(135, 33, 'order_Ia0gZrmN89Lue4', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 05:30:19', '2021-12-21 05:30:19', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(136, 33, 'order_Ia0l2e2MugZ7xR', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 05:34:33', '2021-12-21 05:34:33', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}');
INSERT INTO `orders` (`id`, `user_id`, `order_id`, `coupon_code`, `branch_id`, `price`, `payment_id`, `payment_status`, `status`, `type`, `order_product`, `notify`, `created_at`, `updated_at`, `category_id`, `product_id`, `quantity`, `order_otp`, `delivery_address`) VALUES
(137, 33, 'order_Ia0lvqvfhhHxD1', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 05:35:23', '2021-12-21 05:35:23', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(138, 33, 'order_Ia0mdKyFFheIXC', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 05:36:03', '2021-12-21 05:36:03', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(139, 33, 'order_Ia0qihEUwdiuvQ', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 05:39:55', '2021-12-21 05:39:55', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(140, 33, 'order_Ia14QWBZUPTNzS', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 05:52:54', '2021-12-21 05:52:54', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(141, 33, 'order_Ia15bJ2nrAkvF9', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 05:54:01', '2021-12-21 05:54:01', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(142, 33, 'order_Ia16aOoXODQ0pd', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 05:54:57', '2021-12-21 05:54:57', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(143, 50, 'order_Ia5Aa4T4LgBJkD', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 09:53:30', '2021-12-21 09:53:30', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(144, 50, 'order_Ia5B7ZyZtWmAkP', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 09:54:01', '2021-12-21 09:54:01', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(145, 50, 'order_Ia5vGwrSJOiQW0', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 10:37:42', '2021-12-21 10:37:42', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(146, 50, 'order_Ia5yPLUAwUeSus', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 10:40:41', '2021-12-21 10:40:41', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(147, 50, 'order_Ia5zRWdm0tNrZN', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 10:41:39', '2021-12-21 10:41:39', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(148, 50, 'order_Ia5zdBlijVVAk3', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 10:41:50', '2021-12-21 10:41:50', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(149, 50, 'order_Ia6BPvr6c5LYHi', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 10:52:59', '2021-12-21 10:52:59', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(150, 50, 'order_Ia6BrVRNlLr5E5', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 10:53:25', '2021-12-21 10:53:25', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(151, 50, 'order_Ia6Cags2LCTYdF', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 10:54:06', '2021-12-21 10:54:06', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(152, 50, 'order_Ia6EClTl4RnUAF', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 10:55:38', '2021-12-21 10:55:38', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(153, 50, 'order_Ia6Frcs0Rg3bzi', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 10:57:12', '2021-12-21 10:57:12', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(154, 50, 'order_Ia6HJ9svSOcO3z', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 10:58:34', '2021-12-21 10:58:34', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(155, 50, 'order_Ia6I1NFJvme3ls', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 10:59:15', '2021-12-21 10:59:15', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(156, 50, 'order_Ia6KG1j68R4jAN', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:01:22', '2021-12-21 11:01:22', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(157, 50, 'order_Ia6KLTmneK6S24', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:01:27', '2021-12-21 11:01:27', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(158, 50, 'order_Ia6LBezeTMk6s9', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:02:14', '2021-12-21 11:02:14', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(159, 50, 'order_Ia6vMmHorMX5pd', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:36:29', '2021-12-21 11:36:29', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(160, 50, 'order_Ia6wDKM7bmQZIn', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:37:18', '2021-12-21 11:37:18', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(161, 50, 'order_Ia6yaqyIMpQ7SN', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:39:33', '2021-12-21 11:39:33', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(162, 50, 'order_Ia6yu1q329dVDY', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:39:50', '2021-12-21 11:39:50', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(163, 50, 'order_Ia6zDdrTDxqe6s', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:40:08', '2021-12-21 11:40:08', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(164, 50, 'order_Ia70fE0oHsB37Q', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:41:30', '2021-12-21 11:41:30', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(165, 50, 'order_Ia71B3MxuCqAbr', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:41:59', '2021-12-21 11:41:59', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(166, 50, 'order_Ia726y56yIy33j', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:42:53', '2021-12-21 11:42:53', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(167, 50, 'order_Ia73yruzXWRoWz', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:44:39', '2021-12-21 11:44:39', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(168, 50, 'order_Ia7468XEJY2I5I', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:44:45', '2021-12-21 11:44:45', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(169, 50, 'order_Ia79d6GAxmtO99', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:50:00', '2021-12-21 11:50:00', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(170, 50, 'order_Ia7AK3iK0NsCmN', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 11:50:39', '2021-12-21 11:50:39', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(171, 50, 'order_Ia7SGiYuQNygb4', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:07:38', '2021-12-21 12:07:38', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(172, 50, 'order_Ia7SkVFfVJntQ9', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:08:06', '2021-12-21 12:08:06', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(173, 50, 'order_Ia7Sxy2M5VZYbp', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:08:18', '2021-12-21 12:08:18', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(174, 50, 'order_Ia7TM9Vk2kVMqS', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:08:40', '2021-12-21 12:08:40', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(175, 50, 'order_Ia7UpcVhpckSGe', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:10:04', '2021-12-21 12:10:04', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(176, 50, 'order_Ia7Uydq4GeWMkv', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:10:12', '2021-12-21 12:10:12', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(177, 50, 'order_Ia7moT7O433Rm7', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:27:05', '2021-12-21 12:27:05', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(178, 50, 'order_Ia7nECQDSg5Hbp', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:27:29', '2021-12-21 12:27:29', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(179, 50, 'order_Ia7nI8lxl3iS0K', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:27:32', '2021-12-21 12:27:32', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(180, 50, 'order_Ia7nmmfPzdBXgV', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:28:01', '2021-12-21 12:28:01', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(181, 50, 'order_Ia7nojclXz48vo', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:28:02', '2021-12-21 12:28:02', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(182, 50, 'order_Ia7pXvnDKEVj9t', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:29:40', '2021-12-21 12:29:40', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(183, 50, 'order_Ia7q6M1xIQM5z8', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:30:12', '2021-12-21 12:30:12', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(184, 50, 'order_Ia7q8gPRorsIOY', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:30:14', '2021-12-21 12:30:14', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(185, 50, 'order_Ia7rX51mUDQJiB', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:31:33', '2021-12-21 12:31:33', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(186, 50, 'order_Ia7rbRCl82Vtj1', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:31:37', '2021-12-21 12:31:37', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(187, 50, 'order_Ia7rfAoSiNZxN8', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:31:41', '2021-12-21 12:31:41', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(188, 50, 'order_Ia7s4douxT0fJe', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:32:04', '2021-12-21 12:32:04', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(189, 50, 'order_Ia7s6GiR491PnG', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:32:06', '2021-12-21 12:32:06', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(190, 50, 'order_Ia7s6RXJpqcYWL', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:32:06', '2021-12-21 12:32:06', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(191, 50, 'order_Ia7s6zvbkAMJwo', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:32:06', '2021-12-21 12:32:06', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(192, 50, 'order_Ia7vQLisfWH8Rq', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:35:14', '2021-12-21 12:35:14', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(193, 50, 'order_Ia80B5W3EMOZlk', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:39:44', '2021-12-21 12:39:44', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(194, 50, 'order_Ia82OZ3pg3RHNr', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:41:50', '2021-12-21 12:41:50', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(195, 50, 'order_Ia82QqoGnOJgTI', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:41:52', '2021-12-21 12:41:52', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(196, 50, 'order_Ia840TZwadCAui', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:43:22', '2021-12-21 12:43:22', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(197, 50, 'order_Ia8432HjqdCtqb', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:43:24', '2021-12-21 12:43:24', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(198, 50, 'order_Ia84Z2WwHNrWmK', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:43:54', '2021-12-21 12:43:54', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(199, 50, 'order_Ia84b4oqmc9LvM', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:43:55', '2021-12-21 12:43:55', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(200, 50, 'order_Ia84zMPdvEqw3z', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:44:18', '2021-12-21 12:44:18', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(201, 50, 'order_Ia851TeDPXFMLK', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:44:20', '2021-12-21 12:44:20', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(202, 50, 'order_Ia86JmDtlSW16u', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:45:33', '2021-12-21 12:45:33', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(203, 50, 'order_Ia86M74ueDmZQ3', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:45:35', '2021-12-21 12:45:35', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(204, 50, 'order_Ia86gyGcEG5lBr', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:45:54', '2021-12-21 12:45:54', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}'),
(205, 50, 'order_Ia8C99eCgRsvK1', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:51:04', '2021-12-21 12:51:04', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}');
INSERT INTO `orders` (`id`, `user_id`, `order_id`, `coupon_code`, `branch_id`, `price`, `payment_id`, `payment_status`, `status`, `type`, `order_product`, `notify`, `created_at`, `updated_at`, `category_id`, `product_id`, `quantity`, `order_otp`, `delivery_address`) VALUES
(206, 50, 'order_Ia8CC9OWrE3MuX', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:51:07', '2021-12-21 12:51:07', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(207, 50, 'order_Ia8ETWW6EFuVLG', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:53:17', '2021-12-21 12:53:17', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(208, 50, 'order_Ia8EWJTHhKGuGx', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:53:19', '2021-12-21 12:53:19', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(209, 50, 'order_Ia8F7ANeRmuDfI', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:53:53', '2021-12-21 12:53:53', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(210, 50, 'order_Ia8F9MrHXSyJYv', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:53:55', '2021-12-21 12:53:55', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(211, 50, 'order_Ia8G92KZvje5gH', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:54:51', '2021-12-21 12:54:51', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(212, 50, 'order_Ia8GAyi8EnG2U7', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:54:53', '2021-12-21 12:54:53', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(213, 50, 'order_Ia8I45E9aogPBw', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-21 12:56:40', '2021-12-21 12:56:40', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(214, 33, 'order_IaBI3mpoLJvKnS', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 15:52:44', '2021-12-21 15:52:44', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(215, 33, 'order_IaBJI917Bao0nM', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 15:53:54', '2021-12-21 15:53:54', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(216, 33, 'order_IaBJf6qs25xyjX', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 15:54:15', '2021-12-21 15:54:15', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(217, 33, 'order_IaBJqlw8czDY45', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 15:54:26', '2021-12-21 15:54:26', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(218, 33, 'order_IaBRGOupGBVs4q', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:01:27', '2021-12-21 16:01:27', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(219, 33, 'order_IaBTUfchO10Vm1', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:03:34', '2021-12-21 16:03:34', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(220, 33, 'order_IaBU2KmNElEXnu', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:04:05', '2021-12-21 16:04:05', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(221, 33, 'order_IaBY7kSPtloM1z', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:07:57', '2021-12-21 16:07:57', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(222, 33, 'order_IaBZGcsQJZjJHY', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:09:02', '2021-12-21 16:09:02', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(223, 33, 'order_IaBZifu7rfDcm6', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:09:27', '2021-12-21 16:09:27', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(224, 33, 'order_IaBjo1d2m1rklO', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:19:00', '2021-12-21 16:19:00', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(225, 33, 'order_IaBlKjdX1Z3e5W', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:20:27', '2021-12-21 16:20:27', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(226, 33, 'order_IaBmj97gCSu7yF', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:21:46', '2021-12-21 16:21:46', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(227, 33, 'order_IaBnas3GtaVkI3', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:22:35', '2021-12-21 16:22:35', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(228, 33, 'order_IaBqrRuqbXwv3k', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:25:41', '2021-12-21 16:25:41', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(229, 33, 'order_IaBvGPIM8j1hXD', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:29:51', '2021-12-21 16:29:51', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(230, 33, 'order_IaC2XaIjMlYt2n', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:36:44', '2021-12-21 16:36:44', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(231, 33, 'order_IaC9lTQAUebDpB', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:43:35', '2021-12-21 16:43:35', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(232, 33, 'order_IaCACUzSTPwVMr', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:44:00', '2021-12-21 16:44:00', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(233, 33, 'order_IaCBEXgr5ROzB1', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:44:58', '2021-12-21 16:44:58', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(234, 33, 'order_IaCCV7UNThvP9t', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:46:10', '2021-12-21 16:46:10', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(235, 33, 'order_IaCCXUJ07ohesh', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:46:13', '2021-12-21 16:46:13', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(236, 33, 'order_IaCK827ZlNnwyI', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:53:23', '2021-12-21 16:53:23', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(237, 33, 'order_IaCKAAt74yUOMy', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:53:25', '2021-12-21 16:53:25', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(238, 33, 'order_IaCKSSl2quqPDF', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:53:43', '2021-12-21 16:53:43', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(239, 33, 'order_IaCNxeJa8JRMxu', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:57:01', '2021-12-21 16:57:01', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(240, 33, 'order_IaCPrl4KIyfJM1', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:58:49', '2021-12-21 16:58:49', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(241, 33, 'order_IaCQf9wrrCxmu7', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 16:59:35', '2021-12-21 16:59:35', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(242, 33, 'order_IaCRW5koYGfpDZ', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 17:00:23', '2021-12-21 17:00:23', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(243, 33, 'order_IaCUBnIH3zwAUv', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 17:02:55', '2021-12-21 17:02:55', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(244, 33, 'order_IaCUdjm9ClEIXh', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 17:03:20', '2021-12-21 17:03:20', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(245, 33, 'order_IaCVeyXWta7Fu7', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 17:04:18', '2021-12-21 17:04:18', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(246, 33, 'order_IaCWRiwm1Ujre5', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 17:05:03', '2021-12-21 17:05:03', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(247, 33, 'order_IaCY6VvPX0e721', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 17:06:37', '2021-12-21 17:06:37', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(248, 33, 'order_IaCaOuqNT3QNSa', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 17:08:48', '2021-12-21 17:08:48', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(249, 33, 'order_IaCaRLfPgiDmsP', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 17:08:50', '2021-12-21 17:08:50', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(250, 33, 'order_IaCgvQdqYynpzw', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-21 17:14:58', '2021-12-21 17:14:58', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(251, 33, 'order_IaNKYRGDnZGdHy', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 03:39:25', '2021-12-22 03:39:25', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(252, 33, 'order_IaNKaKDva7CZzw', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 03:39:27', '2021-12-22 03:39:27', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(253, 33, 'order_IaNVjBTG9p4hrZ', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 03:50:00', '2021-12-22 03:50:00', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(254, 33, 'order_IaNVxN4y5YEVEj', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 03:50:13', '2021-12-22 03:50:13', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(255, 33, 'order_IaNWPa6vNQ5IG1', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 03:50:39', '2021-12-22 03:50:39', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(256, 33, 'order_IaNa2OIEm34S5b', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 03:54:05', '2021-12-22 03:54:05', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}');
INSERT INTO `orders` (`id`, `user_id`, `order_id`, `coupon_code`, `branch_id`, `price`, `payment_id`, `payment_status`, `status`, `type`, `order_product`, `notify`, `created_at`, `updated_at`, `category_id`, `product_id`, `quantity`, `order_otp`, `delivery_address`) VALUES
(257, 33, 'order_IaNd2A2a2x4vvr', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 03:56:55', '2021-12-22 03:56:55', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(258, 33, 'order_IaNdc89nKgfqvE', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 03:57:28', '2021-12-22 03:57:28', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(259, 33, 'order_IaNdfLaYNLDykT', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 03:57:31', '2021-12-22 03:57:31', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(260, 33, 'order_IaNeSKWZDgECSk', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 03:58:16', '2021-12-22 03:58:16', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(261, 33, 'order_IaNehJsxN8duNR', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 03:58:29', '2021-12-22 03:58:29', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(262, 33, 'order_IaNfqx3DVVHx94', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 03:59:35', '2021-12-22 03:59:35', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(263, 33, 'order_IaNk1wF3x3bCIV', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:03:32', '2021-12-22 04:03:32', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(264, 33, 'order_IaNkerDVns1srf', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:04:08', '2021-12-22 04:04:08', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(265, 33, 'order_IaNlbW1TmXjrt9', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:05:02', '2021-12-22 04:05:02', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(266, 33, 'order_IaNm92kUdJ035E', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:05:32', '2021-12-22 04:05:32', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(267, 33, 'order_IaNqxag3OMeuzz', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:10:06', '2021-12-22 04:10:06', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(268, 33, 'order_IaNsOCbZO8MoaR', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:11:27', '2021-12-22 04:11:27', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(269, 33, 'order_IaNu6gNoFjbn87', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:13:05', '2021-12-22 04:13:05', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(270, 33, 'order_IaNvj2RbEpn0CJ', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:14:37', '2021-12-22 04:14:37', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(271, 33, 'order_IaNwfc4ppZYf9D', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:15:30', '2021-12-22 04:15:30', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(272, 33, 'order_IaNyJNO7XAW4qU', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:17:03', '2021-12-22 04:17:03', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(273, 33, 'order_IaNyb4yyjolCme', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:17:20', '2021-12-22 04:17:20', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(274, 33, 'order_IaNyn75uqbpk3u', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:17:31', '2021-12-22 04:17:31', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(275, 33, 'order_IaODjULmMrmvaQ', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:31:39', '2021-12-22 04:31:39', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(276, 33, 'order_IaOL6irX6MHV5T', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:38:38', '2021-12-22 04:38:38', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(277, 33, 'order_IaOUlpbJHpR3FI', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:47:47', '2021-12-22 04:47:47', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(278, 33, 'order_IaOVibev2U2uA0', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:48:42', '2021-12-22 04:48:42', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(279, 33, 'order_IaOWUsvipY6RiI', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:49:26', '2021-12-22 04:49:26', NULL, NULL, NULL, NULL, '{\"fname\":\"rahil\",\"lname\":\"Sharma\",\"email\":\"Freedomtesty@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Delhi\",\"address2\":\"hjkl;\",\"city\":\"ajmer\",\"zipcode\":\"321456\",\"mobnum\":\"9638520741\"}'),
(280, 33, 'order_IaOWl3rZ20cgkz', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:49:40', '2021-12-22 04:49:40', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(281, 33, 'order_IaOY80vPZwaEGL', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 04:50:58', '2021-12-22 04:50:58', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(282, 33, 'order_IaOjD60hx4L8ck', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:01:28', '2021-12-22 05:01:28', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(283, 33, 'order_IaOlCA0UedRGov', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:03:20', '2021-12-22 05:03:20', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(284, 33, 'order_IaP8euFnpRTwFz', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:25:33', '2021-12-22 05:25:33', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(285, 33, 'order_IaP9wZlA2hV213', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:26:46', '2021-12-22 05:26:46', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(286, 33, 'order_IaPDwAU9jjh9UD', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:30:33', '2021-12-22 05:30:33', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(287, 33, 'order_IaPGPmKi1ilKGK', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:32:53', '2021-12-22 05:32:53', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(288, 33, 'order_IaPJDK3Unaog6V', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:35:32', '2021-12-22 05:35:32', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(289, 33, 'order_IaPKjUb7abp4Vt', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:36:59', '2021-12-22 05:36:59', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(290, 33, 'order_IaPRkE4dTTzoTu', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:43:37', '2021-12-22 05:43:37', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(291, 33, 'order_IaPTYJ9qLLv3yo', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:45:20', '2021-12-22 05:45:20', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(292, 33, 'order_IaPWcjq2nTPxRZ', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:48:14', '2021-12-22 05:48:14', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(293, 33, 'order_IaPapERypYz9cr', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:52:13', '2021-12-22 05:52:13', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(294, 33, 'order_IaPbthcSNJ9BmN', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:53:14', '2021-12-22 05:53:14', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(295, 33, 'order_IaPd9gPb7qOF5l', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:54:25', '2021-12-22 05:54:25', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(296, 33, 'order_IaPeHrYeLygXue', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 05:55:29', '2021-12-22 05:55:29', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(297, 33, 'order_IaPrPVd05dfIa6', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 06:07:55', '2021-12-22 06:07:55', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(298, 33, 'order_IaPvBfmCePdWwa', '', NULL, 28798, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 06:11:29', '2021-12-22 06:11:29', NULL, NULL, NULL, NULL, '{\"fname\":\"rahil\",\"lname\":\"Sharma\",\"email\":\"Freedomtesty@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Delhi\",\"address2\":\"hjkl;\",\"city\":\"ajmer\",\"zipcode\":\"321456\",\"mobnum\":\"9638520741\"}'),
(299, 50, 'order_IaQ3WzXKvhZGqu', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 06:19:23', '2021-12-22 06:19:23', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(300, 50, 'order_IaQUVNaTNZIeYV', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 06:44:55', '2021-12-22 06:44:55', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(301, 50, 'order_IaQaMq2fa7wRqE', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 06:50:28', '2021-12-22 06:50:28', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(302, 50, 'order_IaQbY5sdZ60ktm', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 06:51:36', '2021-12-22 06:51:36', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(303, 50, 'order_IaQeXSRikrJKtV', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 06:54:25', '2021-12-22 06:54:25', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(304, 50, 'order_IaR0kjYOE7uaGs', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 07:15:27', '2021-12-22 07:15:27', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(305, 50, 'order_IaR1DlfkyUM4pG', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 07:15:54', '2021-12-22 07:15:54', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(306, 50, 'order_IaRJz6rVPNwJav', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 07:33:40', '2021-12-22 07:33:40', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(307, 50, 'order_IaROSyZLnTPRjx', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 07:37:54', '2021-12-22 07:37:54', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(308, 50, 'order_IaSm1IKd3Nm1Jm', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 08:58:53', '2021-12-22 08:58:53', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}');
INSERT INTO `orders` (`id`, `user_id`, `order_id`, `coupon_code`, `branch_id`, `price`, `payment_id`, `payment_status`, `status`, `type`, `order_product`, `notify`, `created_at`, `updated_at`, `category_id`, `product_id`, `quantity`, `order_otp`, `delivery_address`) VALUES
(309, 50, 'order_IaSrnwhc6wHV1m', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 09:04:22', '2021-12-22 09:04:22', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(310, 50, 'order_IaTKt7kH8PUEsD', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 09:31:54', '2021-12-22 09:31:54', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(311, 50, 'order_IaTY4OdHIV3BEk', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 09:44:22', '2021-12-22 09:44:22', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(312, 50, 'order_IaTaOsLOLvqZDS', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 09:46:35', '2021-12-22 09:46:35', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(313, 50, 'order_IaTc0lHt410Vuc', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 09:48:06', '2021-12-22 09:48:06', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(314, 50, 'order_IaTdC2Ldn13DOJ', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 09:49:13', '2021-12-22 09:49:13', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(315, 50, 'order_IaTgMNltkRjAR8', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 09:52:13', '2021-12-22 09:52:13', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(316, 50, 'order_IaTnT0dSAx4DTf', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 09:58:57', '2021-12-22 09:58:57', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(317, 50, 'order_IaToUrehH65p9O', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 09:59:55', '2021-12-22 09:59:55', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(318, 50, 'order_IaU3gmRJPM72AA', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 10:14:18', '2021-12-22 10:14:18', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(319, 50, 'order_IaUBgdm4czAHhl', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 10:21:53', '2021-12-22 10:21:53', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(320, 50, 'order_IaUEsXpoPXMk3Q', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 10:24:54', '2021-12-22 10:24:54', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(321, 50, 'order_IaUHQOYHDRJKlC', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 10:27:19', '2021-12-22 10:27:19', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(322, 50, 'order_IaUQxK2ftQvBU6', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 10:36:20', '2021-12-22 10:36:20', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(323, 50, 'order_IaUZFbT2AZhlaO', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 10:44:11', '2021-12-22 10:44:11', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(324, 50, 'order_IaUki9aNOFiEmp', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 10:55:02', '2021-12-22 10:55:02', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(325, 50, 'order_IaUpiLKQQAFUm5', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 10:59:46', '2021-12-22 10:59:46', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(326, 50, 'order_IaUv1TO2yQZNI1', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:04:48', '2021-12-22 11:04:48', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(327, 0, '', 'TK50pay_IaUvGuwJXIw2IE7141', NULL, 0, NULL, NULL, 0, 'online', NULL, 0, '2021-12-22 11:05:07', '2021-12-22 11:05:07', NULL, NULL, NULL, NULL, NULL),
(328, 50, 'order_IaUxKqylDHLqHp', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:06:59', '2021-12-22 11:06:59', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(329, 50, 'order_IaUyb7oBK5kRxL', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:08:11', '2021-12-22 11:08:11', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(330, 50, 'order_IaV1k3S1yELE39', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:11:10', '2021-12-22 11:11:10', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(331, 50, 'order_IaV5uu88FDfta7', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:15:07', '2021-12-22 11:15:07', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(332, 50, 'order_IaVD3VQw6LRcM1', '', NULL, 14199, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:21:52', '2021-12-22 11:21:52', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(333, 50, 'order_IaVH1V07eYYRRH', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:25:38', '2021-12-22 11:25:38', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(334, 50, 'order_IaVNh6gM3MldrJ', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:31:56', '2021-12-22 11:31:56', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(335, 50, 'order_IaVPBFqNRb3qRX', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:33:21', '2021-12-22 11:33:21', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(336, 50, 'order_IaVQ4jvFMkNTVT', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:34:12', '2021-12-22 11:34:12', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(337, 50, 'order_IaVQOghzUyn1bY', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:34:30', '2021-12-22 11:34:30', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(338, 50, 'order_IaVQv5fMcptqfc', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:35:00', '2021-12-22 11:35:00', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(339, 50, 'order_IaVR2SrJue5eD3', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:35:06', '2021-12-22 11:35:06', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(340, 50, 'order_IaVX5LV6voy4Yf', '', NULL, 200, NULL, 'success', 0, 'online', '[{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:40:50', '2021-12-22 11:41:14', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(341, 0, '', 'TK50pay_IaVXNStYnsnqpL9735', NULL, 0, NULL, NULL, 0, 'online', NULL, 0, '2021-12-22 11:41:14', '2021-12-22 11:41:14', NULL, NULL, NULL, NULL, NULL),
(342, 50, 'order_IaVZh5T6bicUfX', '', NULL, 200, NULL, 'success', 0, 'online', '[{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:43:18', '2021-12-22 11:43:40', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(343, 0, '', 'TK50pay_IaVZxbWnivPqnb7710', NULL, 0, NULL, NULL, 0, 'online', NULL, 0, '2021-12-22 11:43:40', '2021-12-22 11:43:40', NULL, NULL, NULL, NULL, NULL),
(344, 50, 'order_IaVbYhssEr3e5H', 'TK50pay_IaVboGn21EGL5A9936', NULL, 200, NULL, 'success', 0, 'online', '[{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:45:04', '2021-12-22 11:58:25', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(345, 50, 'order_IaVqufN8Iosa7P', 'TK50pay_IaVrllfNGbJUrO5210', NULL, 200, NULL, 'success', 0, 'online', '[{\"id\":2,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 11:59:36', '2021-12-22 12:00:31', NULL, NULL, NULL, NULL, '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(346, 51, 'order_IaWFYT475DAOqy', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 12:22:56', '2021-12-22 12:22:56', NULL, NULL, NULL, NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(347, 51, 'order_IaWJQl3Ovk3JPl', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 12:26:36', '2021-12-22 12:26:36', NULL, NULL, NULL, NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(348, 51, 'order_IaWK929ZtZvXY1', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 12:27:16', '2021-12-22 12:27:16', NULL, NULL, NULL, NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(349, 51, 'order_IaWKjXLYBzX9Tk', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 12:27:50', '2021-12-22 12:27:50', NULL, NULL, NULL, NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(350, 51, 'order_IaWOpHthzxQy5V', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 12:31:42', '2021-12-22 12:31:42', NULL, NULL, NULL, NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(351, 51, 'order_IaWP2W6OPPYKCR', 'TK51pay_IaWPtbXDSQY3f82680', NULL, 200, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 12:31:54', '2021-12-22 12:32:51', NULL, NULL, NULL, NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(352, 51, 'order_IaWQbuyq32Xbe1', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 12:33:24', '2021-12-22 12:33:24', NULL, NULL, NULL, NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(353, 51, 'order_IaWZxsI4RoqiGP', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 12:42:15', '2021-12-22 12:42:15', NULL, NULL, NULL, NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(354, 51, 'order_IaWacpxkzQDh63', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 12:42:53', '2021-12-22 12:42:53', NULL, NULL, NULL, NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(355, 51, 'order_IaWbps71S5dEuL', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 12:44:01', '2021-12-22 12:44:01', NULL, NULL, NULL, NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(356, 51, 'order_IaWcNkkMC0kPJp', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 12:44:32', '2021-12-22 12:44:32', NULL, NULL, NULL, NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(357, 51, 'order_IaWdSAUwhIiwb5', 'TK51pay_IaWddaFW22pZFV1805', NULL, 200, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-22 12:45:33', '2021-12-22 12:45:50', NULL, NULL, NULL, NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(358, 52, 'order_IamZkSlxD3m7kT', 'TK52pay_Iama7JRSvqvAQb6206', NULL, 14199, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":2,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-23 04:21:09', '2021-12-23 04:21:36', NULL, NULL, NULL, NULL, '[{\"fname\":\"qqqq\",\"lname\":\"qqq\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(359, 33, 'order_IanyOwwRTwzLCY', '', NULL, 28828, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":400,\"prod_qty\":2},{\"id\":5,\"pid\":16,\"title\":\"SugarFree\",\"amount\":\"30\",\"image\":\"sugar.clg-I21637917450.jpg\",\"quantity\":\"1kg\",\"p_amt\":30,\"prod_qty\":1}]', 0, '2021-12-23 05:43:11', '2021-12-23 05:43:11', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(360, 33, 'order_Ianykw8xObkAbc', '', NULL, 28828, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":400,\"prod_qty\":2},{\"id\":5,\"pid\":16,\"title\":\"SugarFree\",\"amount\":\"30\",\"image\":\"sugar.clg-I21637917450.jpg\",\"quantity\":\"1kg\",\"p_amt\":30,\"prod_qty\":1}]', 0, '2021-12-23 05:43:31', '2021-12-23 05:43:31', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(361, 33, 'order_Iao0McrPcUfNc1', '', NULL, 28828, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":400,\"prod_qty\":2},{\"id\":5,\"pid\":16,\"title\":\"SugarFree\",\"amount\":\"30\",\"image\":\"sugar.clg-I21637917450.jpg\",\"quantity\":\"1kg\",\"p_amt\":30,\"prod_qty\":1}]', 0, '2021-12-23 05:45:02', '2021-12-23 05:45:02', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(362, 33, 'order_Iao2ibhK9I20Ag', 'TK33pay_Iao37IIrMkPzG39385', NULL, 28798, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":400,\"prod_qty\":2}]', 0, '2021-12-23 05:47:16', '2021-12-23 05:47:51', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(363, 33, 'order_IaoChuoepFBfaB', 'TK33pay_IaoCvc2EgKnRdF4170', NULL, 28798, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":400,\"prod_qty\":2}]', 0, '2021-12-23 05:56:43', '2021-12-23 05:57:01', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(364, 33, 'order_IaocNTEqqc9KbU', 'TK33pay_Iaocat4e56qG1W1932', NULL, 28798, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":27998,\"prod_qty\":2},{\"id\":4,\"pid\":2,\"title\":\"Demo\",\"amount\":\"200\",\"image\":\"05.jpg\",\"quantity\":null,\"p_amt\":400,\"prod_qty\":2}]', 0, '2021-12-23 06:21:01', '2021-12-23 06:21:19', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(365, 33, 'order_IaoeEWrdEyJOE3', 'TK33pay_IaoeQfvJ85NplM3710', NULL, 13999, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-23 06:22:46', '2021-12-23 06:23:04', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(366, 51, 'order_IapXl7DkQ0TmFp', 'TK51pay_IapYKMsCKh7hsh9456', NULL, 14399, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1},{\"id\":3,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-23 07:15:20', '2021-12-23 07:15:59', NULL, NULL, NULL, NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(367, 33, 'order_IauTaH699fzP5m', 'TK33pay_IauTtSGx3ieXw79826', NULL, 755, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":15,\"title\":\"test\",\"amount\":\"555\",\"image\":\"Screenshot (1).clg-I2-1637053102.png\",\"quantity\":null,\"p_amt\":555,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-23 12:04:51', '2021-12-23 12:05:17', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(368, 53, 'order_IbBwWxP0apnlXT', '', NULL, 13999, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-24 05:10:04', '2021-12-24 05:10:04', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(369, 53, 'order_IbC06vCjTj4cKZ', '', NULL, 13999, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-24 05:13:27', '2021-12-24 05:13:27', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(370, 53, 'order_IbC2UX4GWIgrBi', 'TK53pay_IbC4Brx2NfwTfX1035', NULL, 13999, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-24 05:15:42', '2021-12-24 05:17:25', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(371, 53, 'order_IbC4q9spO7B0gY', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-24 05:17:56', '2021-12-24 05:17:56', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(372, 53, 'order_IbCA9GGyevNeCg', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-24 05:22:57', '2021-12-24 05:22:57', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(373, 53, 'order_IbCAszvUCXgm17', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-24 05:23:39', '2021-12-24 05:23:39', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(374, 53, 'order_IbCBS7SDkN2Ssz', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-24 05:24:11', '2021-12-24 05:24:11', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(375, 53, 'order_IbCCAMlAvjhgel', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-24 05:24:52', '2021-12-24 05:24:52', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(376, 53, 'order_IbCCeF2UsxRycT', 'TK53pay_IbCDViPW7xpgxn8450', NULL, 400, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-24 05:25:19', '2021-12-24 05:26:15', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(377, 54, 'order_IbCkNQIWqfTKcx', '', NULL, 13999, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-24 05:57:15', '2021-12-24 05:57:15', NULL, NULL, NULL, NULL, '[{\"fname\":\"rr\",\"lname\":\"rr\",\"email\":\"company@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Ladnu\",\"zipcode\":\"151001\",\"mobnum\":\"7788995522\"}]'),
(378, 54, 'order_IbDgzvkNlxNi1c', 'TK54pay_IbDhDoZHWZHia74736', NULL, 400, NULL, 'success', 0, 'online', '[{\"id\":2,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":400,\"prod_qty\":2}]', 0, '2021-12-24 06:52:45', '2021-12-24 06:53:12', NULL, NULL, NULL, NULL, '[{\"fname\":\"rr\",\"lname\":\"rr\",\"email\":\"company@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Ladnu\",\"zipcode\":\"151001\",\"mobnum\":\"7788995522\"}]'),
(379, 53, 'order_IbH0FaOeygXNrW', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-24 10:07:04', '2021-12-24 10:07:04', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(380, 53, 'order_IbH2CONT3VuBNm', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-24 10:08:55', '2021-12-24 10:08:55', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(381, 53, 'order_IbHQY8l4Roqsqy', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-24 10:31:58', '2021-12-24 10:31:58', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(382, 33, 'order_IcUlvLhAxv8Hqq', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-27 12:14:12', '2021-12-27 12:14:12', NULL, NULL, NULL, NULL, '{\"fname\":\"rahil\",\"lname\":\"Sharma\",\"email\":\"Freedomtesty@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Delhi\",\"address2\":\"hjkl;\",\"city\":\"ajmer\",\"zipcode\":\"321456\",\"mobnum\":\"9638520741\"}'),
(383, 33, 'order_IcUnsrcVw1eUqZ', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-27 12:16:04', '2021-12-27 12:16:04', NULL, NULL, NULL, NULL, '{\"fname\":\"rahil\",\"lname\":\"Sharma\",\"email\":\"Freedomtesty@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Delhi\",\"address2\":\"hjkl;\",\"city\":\"ajmer\",\"zipcode\":\"321456\",\"mobnum\":\"9638520741\"}'),
(384, 33, 'order_IcUoO63ZwyVlJJ', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-27 12:16:32', '2021-12-27 12:16:32', NULL, NULL, NULL, NULL, '{\"fname\":\"rahil\",\"lname\":\"Sharma\",\"email\":\"Freedomtesty@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Delhi\",\"address2\":\"hjkl;\",\"city\":\"ajmer\",\"zipcode\":\"321456\",\"mobnum\":\"9638520741\"}'),
(385, 33, 'order_IcUpLHq2Ytovpy', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-27 12:17:26', '2021-12-27 12:17:26', NULL, NULL, NULL, NULL, '{\"fname\":\"rahil\",\"lname\":\"Sharma\",\"email\":\"Freedomtesty@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Delhi\",\"address2\":\"hjkl;\",\"city\":\"ajmer\",\"zipcode\":\"321456\",\"mobnum\":\"9638520741\"}'),
(386, 53, 'order_IclxS0Yp0CNt15', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:02:53', '2021-12-28 05:02:53', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]');
INSERT INTO `orders` (`id`, `user_id`, `order_id`, `coupon_code`, `branch_id`, `price`, `payment_id`, `payment_status`, `status`, `type`, `order_product`, `notify`, `created_at`, `updated_at`, `category_id`, `product_id`, `quantity`, `order_otp`, `delivery_address`) VALUES
(387, 53, 'order_Icm5KpRXfcyMCo', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:10:21', '2021-12-28 05:10:21', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(388, 53, 'order_IcmlKR4rJMf6LU', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:50:06', '2021-12-28 05:50:06', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(389, 53, 'order_IcmmXzQHAC2lYt', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:51:16', '2021-12-28 05:51:16', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(390, 53, 'order_IcmnOjJkIJ2Dy5', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:52:04', '2021-12-28 05:52:04', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(391, 53, 'order_Icmnx3gyS5lRz3', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:52:35', '2021-12-28 05:52:35', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(392, 53, 'order_IcmoMFQjCd65Pn', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:52:58', '2021-12-28 05:52:58', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(393, 53, 'order_Icmpn0s3IFKLLi', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:54:20', '2021-12-28 05:54:20', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(394, 53, 'order_IcmtR5X8G0gevS', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:57:47', '2021-12-28 05:57:47', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(395, 53, 'order_Icmth66CnExm7C', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:58:02', '2021-12-28 05:58:02', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(396, 53, 'order_Icmu22oaEs2zC8', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:58:21', '2021-12-28 05:58:21', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(397, 53, 'order_IcmuSX4Hq6JbUn', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:58:45', '2021-12-28 05:58:45', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(398, 53, 'order_IcmuubLGYhS3SE', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:59:11', '2021-12-28 05:59:11', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(399, 53, 'order_IcmvM7SptLzHLr', '', NULL, 400, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 05:59:36', '2021-12-28 05:59:36', NULL, NULL, NULL, NULL, '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(400, 33, 'order_Icmw2Ujfh9FgiC', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 06:00:15', '2021-12-28 06:00:15', NULL, NULL, NULL, NULL, '{\"fname\":\"rahil\",\"lname\":\"Sharma\",\"email\":\"Freedomtesty@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Delhi\",\"address2\":\"hjkl;\",\"city\":\"ajmer\",\"zipcode\":\"321456\",\"mobnum\":\"9638520741\"}'),
(401, 33, 'order_IcmwwkZA26U4aK', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 06:01:06', '2021-12-28 06:01:06', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(402, 33, 'order_IcmxSFex4bLbTr', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 06:01:35', '2021-12-28 06:01:35', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(403, 33, 'order_IcmzFP6xSlhucO', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 06:03:17', '2021-12-28 06:03:17', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(404, 33, 'order_Icn1Gq09mMUcXX', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 06:05:12', '2021-12-28 06:05:12', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(405, 46, 'order_IcnC6rGIoDRkyi', '', NULL, 220, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":17,\"title\":\"maggie\",\"amount\":\"20\",\"image\":\"maggiejpg.jpg\",\"quantity\":\"100gm\",\"p_amt\":20,\"prod_qty\":1},{\"id\":2,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-28 06:15:28', '2021-12-28 06:15:28', NULL, NULL, NULL, NULL, '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(406, 33, 'order_IdFt687BTqqP3m', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-29 10:19:34', '2021-12-29 10:19:34', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(407, 33, 'order_IdFvf2NrThqJzy', '', NULL, 200, NULL, 'pending', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-29 10:22:00', '2021-12-29 10:22:00', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(408, 33, 'order_IdFwyOcPCyUJYb', 'TK33pay_IdFxNc1UspUjzz8906', NULL, 200, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":22,\"title\":\"Oil\",\"amount\":\"200\",\"image\":\"oil.jpg\",\"quantity\":\"500gm\",\"p_amt\":200,\"prod_qty\":1}]', 0, '2021-12-29 10:23:14', '2021-12-29 10:23:48', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(409, 33, 'order_IdFzJa5FgczALi', 'TK33pay_IdFzWFrQU6JPZY9943', NULL, 14199, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":20,\"title\":\"Aatta\",\"amount\":\"200\",\"image\":\"wheat1.jpg\",\"quantity\":\"10kg\",\"p_amt\":200,\"prod_qty\":1},{\"id\":2,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-29 10:25:27', '2021-12-29 10:25:46', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(410, 33, 'order_IdG3G1Eepwn40C', 'TK33pay_IdG3XdzuOJ8rSP2562', NULL, 13999, NULL, 'success', 0, 'online', '[{\"id\":1,\"pid\":21,\"title\":\"myprod\",\"amount\":\"13999\",\"image\":\"0.95103500_1539073310_cashews.clg-I2-1637817023.jpg\",\"quantity\":null,\"p_amt\":13999,\"prod_qty\":1}]', 0, '2021-12-29 10:29:11', '2021-12-29 10:29:36', NULL, NULL, NULL, NULL, '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}');

-- --------------------------------------------------------

--
-- Table structure for table `orders_assigned`
--

CREATE TABLE `orders_assigned` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=>pending\r\n1=>Accepted\r\n-1=>Cancle\r\n2=>Ready\r\n3=>Delivered\r\n4=>Preparing',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_assigned`
--

INSERT INTO `orders_assigned` (`id`, `user_id`, `order_id`, `status`, `created_at`, `updated_at`, `image`, `code`) VALUES
(10, 22, '81', 3, '2021-12-09 10:35:33', '2021-12-17 05:16:33', NULL, ''),
(11, 22, '80', 0, '2021-12-09 10:35:45', '2021-12-17 05:16:33', NULL, NULL),
(12, 22, '71', 0, '2021-12-09 10:35:55', '2021-12-17 05:16:33', NULL, NULL),
(13, 22, '70', 0, '2021-12-09 10:36:05', '2021-12-17 05:16:33', NULL, NULL),
(14, 22, '60', 0, '2021-12-09 10:36:12', '2021-12-17 05:16:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pancard`
--

CREATE TABLE `pancard` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `pan_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pan_number` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `pan_dob` date NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pancard`
--

INSERT INTO `pancard` (`id`, `userid`, `pan_name`, `pan_number`, `pan_dob`, `image`, `status`, `comment`, `created_at`, `updated_at`) VALUES
(1, 3, 'KD CHAUHAN', 'KTLPS0056H', '2003-09-07', 'pancard-76271631012537.jpg', 1, NULL, '2021-09-07 11:02:17', '2021-12-17 05:16:34'),
(2, 2, 'GSHSH', 'HAIWK2667H', '2003-09-07', 'pancard-13971631012542.jpg', 0, NULL, '2021-09-07 11:02:22', '2021-12-17 05:16:34'),
(3, 12, 'WASEEM AKRAM', 'DSAFT3456J', '1997-04-03', 'pancard-36061632399392.jpg', 1, NULL, '2021-09-23 12:16:32', '2021-12-17 05:16:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymentprocess`
--

CREATE TABLE `paymentprocess` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `paymentmethod` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `amount` float NOT NULL,
  `orderid` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `offerid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `returnid` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `paymentprocess`
--

INSERT INTO `paymentprocess` (`id`, `userid`, `paymentmethod`, `amount`, `orderid`, `offerid`, `returnid`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'cashfree', 100, 'FB-add-16178713553', NULL, NULL, 'pending', '2021-04-08 08:42:35', '2021-12-17 05:16:35'),
(2, 3, 'cashfree', 100, 'FB-add-16178716083', NULL, NULL, 'pending', '2021-04-08 08:46:48', '2021-12-17 05:16:35'),
(3, 3, 'cashfree', 100, 'FB-add-16178720183', NULL, NULL, 'pending', '2021-04-08 08:53:38', '2021-12-17 05:16:35'),
(4, 3, 'cashfree', 200, 'FB-add-16178721163', NULL, NULL, 'pending', '2021-04-08 08:55:16', '2021-12-17 05:16:35'),
(5, 3, 'cashfree', 100, 'FB-add-16178778343', NULL, NULL, 'pending', '2021-04-08 10:30:34', '2021-12-17 05:16:35'),
(6, 3, 'cashfree', 100, 'FB-add-16178778413', NULL, NULL, 'pending', '2021-04-08 10:30:41', '2021-12-17 05:16:35'),
(7, 5, 'cashfree', 100, 'FB-add-16178779275', NULL, NULL, 'pending', '2021-04-08 10:32:07', '2021-12-17 05:16:35'),
(8, 6, 'cashfree', 5000, 'FB-add-16179880736', NULL, NULL, 'pending', '2021-04-09 17:07:53', '2021-12-17 05:16:35'),
(9, 6, 'cashfree', 500, 'FB-add-16179881056', NULL, NULL, 'pending', '2021-04-09 17:08:25', '2021-12-17 05:16:35'),
(10, 1, 'cashfree', 1, 'FB-add-16182232801', NULL, 'FB-add-16182232801', 'success', '2021-04-12 10:28:00', '2021-12-17 05:16:35'),
(11, 1, 'cashfree', 1, 'FB-add-16182233201', NULL, NULL, 'pending', '2021-04-12 10:28:40', '2021-12-17 05:16:35'),
(12, 1, 'cashfree', 1, 'FB-add-16182233581', NULL, NULL, 'pending', '2021-04-12 10:29:18', '2021-12-17 05:16:35'),
(13, 2, 'cashfree', 100, 'FB-add-16183020122', NULL, NULL, 'pending', '2021-04-13 08:20:12', '2021-12-17 05:16:35'),
(14, 2, 'cashfree', 1, 'FB-add-16183020412', NULL, NULL, 'pending', '2021-04-13 08:20:41', '2021-12-17 05:16:35'),
(15, 10, 'cashfree', 1000, 'FB-add-161837388510', '1', NULL, 'pending', '2021-04-14 04:18:05', '2021-12-17 05:16:35'),
(16, 6, 'cashfree', 100, 'FB-add-16184876386', NULL, NULL, 'pending', '2021-04-15 11:53:58', '2021-12-17 05:16:35'),
(17, 12, 'cashfree', 10000, 'FB-add-161848963212', NULL, NULL, 'pending', '2021-04-15 12:27:12', '2021-12-17 05:16:35'),
(18, 12, 'cashfree', 99, 'FB-add-161854626012', '2', NULL, 'pending', '2021-04-16 04:11:00', '2021-12-17 05:16:35'),
(19, 12, 'cashfree', 1000, 'FB-add-161854879212', NULL, NULL, 'pending', '2021-04-16 04:53:12', '2021-12-17 05:16:35'),
(20, 12, 'cashfree', 1000, 'FB-add-161854881812', '1', NULL, 'pending', '2021-04-16 04:53:38', '2021-12-17 05:16:35'),
(21, 12, 'cashfree', 1000, 'FB-add-161855008312', '3', NULL, 'pending', '2021-04-16 05:14:43', '2021-12-17 05:16:35'),
(22, 1, 'cashfree', 100, 'FB-add-16190042881', NULL, NULL, 'pending', '2021-04-21 11:24:48', '2021-12-17 05:16:35'),
(23, 1, 'cashfree', 100, 'FB-add-16190043001', NULL, NULL, 'pending', '2021-04-21 11:25:00', '2021-12-17 05:16:35'),
(24, 1, 'cashfree', 100, 'FB-add-16190744821', NULL, NULL, 'pending', '2021-04-22 06:54:42', '2021-12-17 05:16:35'),
(25, 1, 'cashfree', 500, 'FB-add-16190745321', NULL, NULL, 'pending', '2021-04-22 06:55:32', '2021-12-17 05:16:35'),
(26, 1, 'cashfree', 100, 'FB-add-16190745381', NULL, NULL, 'pending', '2021-04-22 06:55:38', '2021-12-17 05:16:35'),
(27, 16, 'cashfree', 100, 'FB-add-161916121816', NULL, NULL, 'pending', '2021-04-23 07:00:18', '2021-12-17 05:16:35'),
(28, 16, 'cashfree', 200, 'FB-add-161916123016', NULL, NULL, 'pending', '2021-04-23 07:00:30', '2021-12-17 05:16:35'),
(29, 16, 'cashfree', 100, 'FB-add-161916123616', NULL, NULL, 'pending', '2021-04-23 07:00:36', '2021-12-17 05:16:35'),
(30, 23, 'cashfree', 100, 'FB-add-162360947023', NULL, NULL, 'pending', '2021-06-13 18:37:50', '2021-12-17 05:16:35'),
(31, 23, 'cashfree', 100, 'FB-add-162360948523', NULL, NULL, 'pending', '2021-06-13 18:38:05', '2021-12-17 05:16:35'),
(32, 23, 'cashfree', 100, 'FB-add-162378493823', NULL, NULL, 'pending', '2021-06-15 19:22:18', '2021-12-17 05:16:35'),
(33, 23, 'cashfree', 100, 'FB-add-162378564223', NULL, NULL, 'pending', '2021-06-15 19:34:02', '2021-12-17 05:16:35'),
(34, 23, 'cashfree', 100, 'FB-add-162378566123', NULL, NULL, 'pending', '2021-06-15 19:34:21', '2021-12-17 05:16:35'),
(35, 23, 'cashfree', 100, 'FB-add-162378568223', NULL, NULL, 'pending', '2021-06-15 19:34:42', '2021-12-17 05:16:35'),
(36, 26, 'cashfree', 100, 'FB-add-162642360726', NULL, NULL, 'pending', '2021-07-16 08:20:07', '2021-12-17 05:16:35'),
(37, 26, 'cashfree', 100, 'FB-add-162642365826', NULL, NULL, 'pending', '2021-07-16 08:20:58', '2021-12-17 05:16:35'),
(38, 27, 'cashfree', 10, 'FB-add-162660089827', NULL, NULL, 'pending', '2021-07-18 09:34:58', '2021-12-17 05:16:35'),
(39, 34, 'cashfree', 100, 'FB-add-162996547834', NULL, NULL, 'pending', '2021-08-26 08:11:18', '2021-12-17 05:16:35'),
(40, 34, 'cashfree', 100, 'FB-add-163003615934', NULL, NULL, 'pending', '2021-08-27 03:49:19', '2021-12-17 05:16:35'),
(41, 34, 'cashfree', 57, 'FB-add-163007096434', NULL, NULL, 'pending', '2021-08-27 13:29:24', '2021-12-17 05:16:35'),
(42, 34, 'cashfree', 57, 'FB-add-163007097834', NULL, NULL, 'pending', '2021-08-27 13:29:38', '2021-12-17 05:16:35'),
(43, 32, 'cashfree', 2610, 'FB-add-163012481432', NULL, NULL, 'pending', '2021-08-28 04:26:54', '2021-12-17 05:16:35'),
(44, 32, 'cashfree', 200, 'FB-add-163012488532', NULL, NULL, 'pending', '2021-08-28 04:28:05', '2021-12-17 05:16:35'),
(45, 35, 'cashfree', 19, 'FB-add-163014719935', NULL, NULL, 'pending', '2021-08-28 10:39:59', '2021-12-17 05:16:35'),
(46, 35, 'cashfree', 133, 'FB-add-163014745035', NULL, NULL, 'pending', '2021-08-28 10:44:10', '2021-12-17 05:16:35'),
(47, 35, 'cashfree', 100, 'FB-add-163015144435', NULL, NULL, 'pending', '2021-08-28 11:50:44', '2021-12-17 05:16:35'),
(48, 35, 'cashfree', 100, 'FB-add-163015146435', NULL, NULL, 'pending', '2021-08-28 11:51:04', '2021-12-17 05:16:35'),
(49, 35, 'cashfree', 1, 'FB-add-163021356235', NULL, NULL, 'pending', '2021-08-29 05:06:02', '2021-12-17 05:16:35'),
(50, 34, 'cashfree', 100, 'FB-add-163224898634', NULL, NULL, 'pending', '2021-09-21 18:29:46', '2021-12-17 05:16:35'),
(51, 38, 'cashfree', 58, 'FB-add-163272535738', NULL, NULL, 'pending', '2021-09-27 06:49:17', '2021-12-17 05:16:35'),
(52, 38, 'cashfree', 58, 'FB-add-163272537238', NULL, NULL, 'pending', '2021-09-27 06:49:32', '2021-12-17 05:16:35'),
(53, 38, 'cashfree', 1500, 'FB-add-163284407938', NULL, NULL, 'pending', '2021-09-28 15:47:59', '2021-12-17 05:16:35'),
(54, 40, 'cashfree', 1, 'FB-add-163287959540', NULL, NULL, 'pending', '2021-09-29 01:39:55', '2021-12-17 05:16:35'),
(55, 38, 'cashfree', 1, 'FB-add-163298905338', NULL, NULL, 'pending', '2021-09-30 08:04:13', '2021-12-17 05:16:35'),
(56, 38, 'cashfree', 0, 'FB-add-163298906338', NULL, NULL, 'pending', '2021-09-30 08:04:23', '2021-12-17 05:16:35'),
(57, 41, 'cashfree', 200, 'FB-add-163325552841', NULL, NULL, 'pending', '2021-10-03 10:05:28', '2021-12-17 05:16:35'),
(58, 41, 'cashfree', 200, 'FB-add-163325556141', NULL, NULL, 'pending', '2021-10-03 10:06:01', '2021-12-17 05:16:35'),
(59, 41, 'cashfree', 200, 'FB-add-163334465941', NULL, NULL, 'pending', '2021-10-04 10:50:59', '2021-12-17 05:16:35'),
(60, 41, 'cashfree', 500, 'FB-add-163334467541', NULL, NULL, 'pending', '2021-10-04 10:51:15', '2021-12-17 05:16:35'),
(61, 42, 'cashfree', 200, 'FB-add-163393922242', NULL, NULL, 'pending', '2021-10-11 08:00:22', '2021-12-17 05:16:35'),
(62, 42, 'cashfree', 200, 'FB-add-163393923842', NULL, NULL, 'pending', '2021-10-11 08:00:38', '2021-12-17 05:16:35'),
(63, 42, 'cashfree', 200, 'FB-add-163393924842', NULL, NULL, 'pending', '2021-10-11 08:00:48', '2021-12-17 05:16:35'),
(64, 44, 'cashfree', 500, 'FB-add-163409597644', NULL, NULL, 'pending', '2021-10-13 03:32:56', '2021-12-17 05:16:35'),
(65, 44, 'cashfree', 500, 'FB-add-163409598344', NULL, NULL, 'pending', '2021-10-13 03:33:03', '2021-12-17 05:16:35'),
(66, 41, 'cashfree', 500, 'FB-add-163423006941', NULL, NULL, 'pending', '2021-10-14 16:47:49', '2021-12-17 05:16:35'),
(67, 41, 'cashfree', 200, 'FB-add-163446583741', NULL, NULL, 'pending', '2021-10-17 10:17:17', '2021-12-17 05:16:35'),
(68, 41, 'cashfree', 200, 'FB-add-163446586441', NULL, NULL, 'pending', '2021-10-17 10:17:44', '2021-12-17 05:16:35'),
(69, 41, 'cashfree', 200, 'FB-add-163452084041', NULL, NULL, 'pending', '2021-10-18 01:34:00', '2021-12-17 05:16:35'),
(70, 42, 'cashfree', 200, 'FB-add-163661548842', NULL, NULL, 'pending', '2021-11-11 07:24:48', '2021-12-17 05:16:35'),
(71, 43, 'cashfree', 100, 'KAM11-add-163955256043', NULL, NULL, 'pending', '2021-12-15 07:16:00', '2021-12-17 05:16:35'),
(72, 43, 'cashfree', 100, 'KAM11-add-163955481543', NULL, NULL, 'pending', '2021-12-15 07:53:35', '2021-12-17 05:16:35'),
(73, 43, 'cashfree', 100, 'KAM11-add-163955486043', NULL, NULL, 'pending', '2021-12-15 07:54:20', '2021-12-17 05:16:35'),
(74, 43, 'cashfree', 1, 'KAM11-add-163955726143', NULL, NULL, 'pending', '2021-12-15 08:34:21', '2021-12-17 05:16:35'),
(75, 43, 'razorpay', 100, 'order_IXgdNSpWG4lIcD', NULL, NULL, 'pending', '2021-12-15 08:35:25', '2021-12-17 05:16:35'),
(76, 43, 'cashfree', 1, 'KAM11-add-163955757143', NULL, NULL, 'pending', '2021-12-15 08:39:31', '2021-12-17 05:16:35'),
(77, 43, 'cashfree', 42, 'KAM11-add-163955759543', NULL, NULL, 'pending', '2021-12-15 08:39:55', '2021-12-17 05:16:35'),
(78, 43, 'razorpay', 12, 'order_IXglgHNHVJadWm', NULL, NULL, 'pending', '2021-12-15 08:43:17', '2021-12-17 05:16:35'),
(79, 43, 'razorpay', 25, 'order_IXgoWcEj1veC5Q', NULL, NULL, 'pending', '2021-12-15 08:45:59', '2021-12-17 05:16:35'),
(80, 43, 'razorpay', 12, 'order_IXgq662ob86zzd', NULL, NULL, 'pending', '2021-12-15 08:47:28', '2021-12-17 05:16:35'),
(81, 43, 'razorpay', 32, 'order_IXgr3pUNFlEAeZ', NULL, NULL, 'pending', '2021-12-15 08:48:23', '2021-12-17 05:16:35'),
(82, 43, 'razorpay', 12, 'order_IXgv59RDd4agmi', NULL, NULL, 'pending', '2021-12-15 08:52:11', '2021-12-17 05:16:35'),
(83, 43, 'razorpay', 30, 'order_IXgwrU5XGuN3Nt', NULL, NULL, 'pending', '2021-12-15 08:53:52', '2021-12-17 05:16:35'),
(84, 43, 'razorpay', 14, 'order_IXhA0ACk05y5ml', NULL, NULL, 'pending', '2021-12-15 09:06:18', '2021-12-17 05:16:35'),
(85, 43, 'razorpay', 25, 'order_IXhBX3g8EBzleM', NULL, NULL, 'pending', '2021-12-15 09:07:45', '2021-12-17 05:16:35'),
(86, 43, 'razorpay', 100, 'order_IXhGR8YYAgnAjn', NULL, NULL, 'pending', '2021-12-15 09:12:24', '2021-12-17 05:16:35'),
(87, 43, 'razorpay', 25, 'order_IXiaBmGj9l6See', NULL, NULL, 'pending', '2021-12-15 10:29:48', '2021-12-17 05:16:35'),
(88, 43, 'razorpay', 200, 'order_IXjUNTnBkQHUr5', NULL, 'order_IXjUNTnBkQHUr5', 'success', '2021-12-15 11:22:59', '2021-12-17 05:16:35'),
(89, 43, 'razorpay', 100, 'order_IXjWUhvojgABgg', NULL, 'order_IXjWUhvojgABgg', 'success', '2021-12-15 11:24:59', '2021-12-17 05:16:35'),
(90, 43, 'razorpay', 150, 'order_IXjbF3K5vIjfsw', NULL, 'order_IXjbF3K5vIjfsw', 'success', '2021-12-15 11:29:29', '2021-12-17 05:16:35'),
(91, 43, 'razorpay', 500, 'order_IXjeJog4pOMS0d', NULL, 'order_IXjeJog4pOMS0d', 'success', '2021-12-15 11:32:24', '2021-12-17 05:16:35'),
(92, 43, 'razorpay', 44, 'order_IXkEa6GRizYAsw', NULL, 'order_IXkEa6GRizYAsw', 'success', '2021-12-15 12:06:43', '2021-12-17 05:16:35'),
(93, 33, 'razorpay', 28798, 'order_IY8opuOBS0x1vC', NULL, NULL, 'cancel', '2021-12-16 12:09:42', '2021-12-17 05:16:35'),
(94, 33, 'razorpay', 28798, 'order_IY9L5PFzLaALJi', NULL, NULL, 'success', '2021-12-16 12:40:13', '2021-12-17 05:16:35'),
(95, 46, 'razorpay', 14799, 'order_IZg5lOZTYttywo', NULL, NULL, 'pending', '2021-12-20 09:21:36', '2021-12-20 09:21:36'),
(96, 46, 'razorpay', 14799, 'order_IZg6RLpeBOtDWv', NULL, NULL, 'success', '2021-12-20 09:22:15', '2021-12-20 09:22:36'),
(97, 46, 'razorpay', 14799, 'order_IZg7l4CL2B6Xsl', NULL, NULL, 'pending', '2021-12-20 09:23:30', '2021-12-20 09:23:30'),
(98, 46, 'razorpay', 14799, 'order_IZg85NMaRVoKp5', NULL, NULL, 'success', '2021-12-20 09:23:48', '2021-12-20 09:24:10'),
(99, 46, 'razorpay', 14799, 'order_IZgRSauyt6Na0o', NULL, NULL, 'pending', '2021-12-20 09:42:09', '2021-12-20 09:42:09'),
(100, 46, 'razorpay', 14799, 'order_IZgYLWIiaMoAQQ', NULL, NULL, 'success', '2021-12-20 09:48:40', '2021-12-20 09:49:01'),
(101, 46, 'razorpay', 14799, 'order_IZgZYJn8ZWyy6m', NULL, NULL, 'success', '2021-12-20 09:49:48', '2021-12-20 09:50:14'),
(102, 46, 'razorpay', 14799, 'order_IZgewUi7wZPicz', NULL, NULL, 'success', '2021-12-20 09:54:55', '2021-12-20 09:55:13'),
(103, 46, 'razorpay', 14799, 'order_IZgg274jocPgJd', NULL, NULL, 'success', '2021-12-20 09:55:57', '2021-12-20 09:56:16'),
(104, 46, 'razorpay', 14799, 'order_IZgjUF4Q8vqyKA', NULL, NULL, 'success', '2021-12-20 09:59:13', '2021-12-20 09:59:29'),
(105, 46, 'razorpay', 14799, 'order_IZgjno8VAHaYfE', NULL, NULL, 'success', '2021-12-20 09:59:31', '2021-12-20 09:59:45'),
(106, 46, 'razorpay', 14799, 'order_IZgk5ajJrwhPSr', NULL, NULL, 'success', '2021-12-20 09:59:47', '2021-12-20 10:00:07'),
(107, 46, 'razorpay', 14799, 'order_IZgkSgfB16n2K6', NULL, NULL, 'pending', '2021-12-20 10:00:08', '2021-12-20 10:00:08'),
(108, 46, 'razorpay', 14799, 'order_IZglJtfCaAXqFu', NULL, NULL, 'success', '2021-12-20 10:00:57', '2021-12-20 10:01:15'),
(109, 46, 'razorpay', 14799, 'order_IZh0cIPMTJ8GgE', NULL, NULL, 'pending', '2021-12-20 10:15:26', '2021-12-20 10:15:26'),
(110, 46, 'razorpay', 14799, 'order_IZh1DXrRTOsfEN', NULL, NULL, 'pending', '2021-12-20 10:16:00', '2021-12-20 10:16:00'),
(111, 46, 'razorpay', 14799, 'order_IZh39ByqO63xM2', NULL, NULL, 'success', '2021-12-20 10:17:49', '2021-12-20 10:18:07'),
(112, 50, 'razorpay', 14199, 'order_IZzAlMMzPrxYea', NULL, NULL, 'pending', '2021-12-21 04:01:31', '2021-12-21 04:01:31'),
(113, 50, 'razorpay', 14199, 'order_IZzDjIvfro1qcS', NULL, NULL, 'pending', '2021-12-21 04:04:19', '2021-12-21 04:04:19'),
(114, 50, 'razorpay', 14199, 'order_IZzGb8UiAjc9tw', NULL, NULL, 'pending', '2021-12-21 04:07:02', '2021-12-21 04:07:02'),
(115, 50, 'razorpay', 14199, 'order_IZzNFP4eaeJERF', NULL, NULL, 'pending', '2021-12-21 04:13:20', '2021-12-21 04:13:20'),
(116, 50, 'razorpay', 14199, 'order_IZzNg5pGUOW67o', NULL, NULL, 'pending', '2021-12-21 04:13:44', '2021-12-21 04:13:44'),
(117, 50, 'razorpay', 14199, 'order_IZzRSWDs9mzFSQ', NULL, NULL, 'pending', '2021-12-21 04:17:19', '2021-12-21 04:17:19'),
(118, 50, 'razorpay', 14199, 'order_IZzVNe8XeMDd99', NULL, NULL, 'pending', '2021-12-21 04:21:02', '2021-12-21 04:21:02'),
(119, 50, 'razorpay', 14199, 'order_IZzZmLPcHSlm1H', NULL, NULL, 'pending', '2021-12-21 04:25:11', '2021-12-21 04:25:11'),
(120, 33, 'razorpay', 28798, 'order_IZzbIynSgrSiOr', NULL, NULL, 'pending', '2021-12-21 04:26:38', '2021-12-21 04:26:38'),
(121, 50, 'razorpay', 14199, 'order_IZzy4U5XWBZce7', NULL, NULL, 'pending', '2021-12-21 04:48:11', '2021-12-21 04:48:11'),
(122, 50, 'razorpay', 14199, 'order_IZzyOenjZxZnl3', NULL, NULL, 'pending', '2021-12-21 04:48:30', '2021-12-21 04:48:30'),
(123, 50, 'razorpay', 14199, 'order_Ia05GbdMM4q50n', NULL, NULL, 'pending', '2021-12-21 04:55:00', '2021-12-21 04:55:00'),
(124, 50, 'razorpay', 14199, 'order_Ia0AEFODMGHHvu', NULL, NULL, 'pending', '2021-12-21 04:59:42', '2021-12-21 04:59:42'),
(125, 50, 'razorpay', 14199, 'order_Ia0DsIUHkywTRI', NULL, NULL, 'pending', '2021-12-21 05:03:09', '2021-12-21 05:03:09'),
(126, 50, 'razorpay', 14199, 'order_Ia0EouboSOLRIg', NULL, NULL, 'pending', '2021-12-21 05:04:03', '2021-12-21 05:04:03'),
(127, 50, 'razorpay', 14199, 'order_Ia0FC5ULZOaGhu', NULL, NULL, 'pending', '2021-12-21 05:04:24', '2021-12-21 05:04:24'),
(128, 50, 'razorpay', 14199, 'order_Ia0II3tFgt4rzL', NULL, NULL, 'pending', '2021-12-21 05:07:20', '2021-12-21 05:07:20'),
(129, 50, 'razorpay', 14199, 'order_Ia0IUrwUTkUpMb', NULL, NULL, 'pending', '2021-12-21 05:07:31', '2021-12-21 05:07:31'),
(130, 50, 'razorpay', 14199, 'order_Ia0IvOZ7Ukl97U', NULL, NULL, 'pending', '2021-12-21 05:07:56', '2021-12-21 05:07:56'),
(131, 50, 'razorpay', 14199, 'order_Ia0Jbb10fyWfy5', NULL, NULL, 'pending', '2021-12-21 05:08:34', '2021-12-21 05:08:34'),
(132, 50, 'razorpay', 14199, 'order_Ia0KSH8p1fhxw4', NULL, NULL, 'pending', '2021-12-21 05:09:23', '2021-12-21 05:09:23'),
(133, 50, 'razorpay', 14199, 'order_Ia0OTcbVjJm8dp', NULL, NULL, 'pending', '2021-12-21 05:13:11', '2021-12-21 05:13:11'),
(134, 50, 'razorpay', 14199, 'order_Ia0RSlYyUqBxWL', NULL, NULL, 'pending', '2021-12-21 05:16:01', '2021-12-21 05:16:01'),
(135, 33, 'razorpay', 28798, 'order_Ia0X61DtXgFIIJ', NULL, NULL, 'pending', '2021-12-21 05:21:21', '2021-12-21 05:21:21'),
(136, 33, 'razorpay', 28798, 'order_Ia0XRDy2A1lTZc', NULL, NULL, 'pending', '2021-12-21 05:21:40', '2021-12-21 05:21:40'),
(137, 33, 'razorpay', 28798, 'order_Ia0ZZzB5hGp3JY', NULL, NULL, 'pending', '2021-12-21 05:23:42', '2021-12-21 05:23:42'),
(138, 33, 'razorpay', 28798, 'order_Ia0az0FhaDZW0v', NULL, NULL, 'pending', '2021-12-21 05:25:02', '2021-12-21 05:25:02'),
(139, 33, 'razorpay', 28798, 'order_Ia0gZrmN89Lue4', NULL, NULL, 'pending', '2021-12-21 05:30:19', '2021-12-21 05:30:19'),
(140, 33, 'razorpay', 28798, 'order_Ia0l2e2MugZ7xR', NULL, NULL, 'pending', '2021-12-21 05:34:33', '2021-12-21 05:34:33'),
(141, 33, 'razorpay', 28798, 'order_Ia0lvqvfhhHxD1', NULL, NULL, 'pending', '2021-12-21 05:35:23', '2021-12-21 05:35:23'),
(142, 33, 'razorpay', 28798, 'order_Ia0mdKyFFheIXC', NULL, NULL, 'pending', '2021-12-21 05:36:03', '2021-12-21 05:36:03'),
(143, 33, 'razorpay', 28798, 'order_Ia0qihEUwdiuvQ', NULL, NULL, 'pending', '2021-12-21 05:39:55', '2021-12-21 05:39:55'),
(144, 33, 'razorpay', 28798, 'order_Ia14QWBZUPTNzS', NULL, NULL, 'pending', '2021-12-21 05:52:54', '2021-12-21 05:52:54'),
(145, 33, 'razorpay', 28798, 'order_Ia15bJ2nrAkvF9', NULL, NULL, 'pending', '2021-12-21 05:54:01', '2021-12-21 05:54:01'),
(146, 33, 'razorpay', 28798, 'order_Ia16aOoXODQ0pd', NULL, NULL, 'pending', '2021-12-21 05:54:57', '2021-12-21 05:54:57'),
(147, 50, 'razorpay', 14199, 'order_Ia5Aa4T4LgBJkD', NULL, NULL, 'pending', '2021-12-21 09:53:30', '2021-12-21 09:53:30'),
(148, 50, 'razorpay', 14199, 'order_Ia5B7ZyZtWmAkP', NULL, NULL, 'pending', '2021-12-21 09:54:01', '2021-12-21 09:54:01'),
(149, 50, 'razorpay', 14199, 'order_Ia5vGwrSJOiQW0', NULL, NULL, 'pending', '2021-12-21 10:37:42', '2021-12-21 10:37:42'),
(150, 50, 'razorpay', 14199, 'order_Ia5yPLUAwUeSus', NULL, NULL, 'pending', '2021-12-21 10:40:41', '2021-12-21 10:40:41'),
(151, 50, 'razorpay', 14199, 'order_Ia5zRWdm0tNrZN', NULL, NULL, 'pending', '2021-12-21 10:41:39', '2021-12-21 10:41:39'),
(152, 50, 'razorpay', 14199, 'order_Ia5zdBlijVVAk3', NULL, NULL, 'pending', '2021-12-21 10:41:50', '2021-12-21 10:41:50'),
(153, 50, 'razorpay', 14199, 'order_Ia6BPvr6c5LYHi', NULL, NULL, 'pending', '2021-12-21 10:53:00', '2021-12-21 10:53:00'),
(154, 50, 'razorpay', 14199, 'order_Ia6BrVRNlLr5E5', NULL, NULL, 'pending', '2021-12-21 10:53:25', '2021-12-21 10:53:25'),
(155, 50, 'razorpay', 14199, 'order_Ia6Cags2LCTYdF', NULL, NULL, 'pending', '2021-12-21 10:54:06', '2021-12-21 10:54:06'),
(156, 50, 'razorpay', 14199, 'order_Ia6EClTl4RnUAF', NULL, NULL, 'pending', '2021-12-21 10:55:38', '2021-12-21 10:55:38'),
(157, 50, 'razorpay', 14199, 'order_Ia6Frcs0Rg3bzi', NULL, NULL, 'pending', '2021-12-21 10:57:12', '2021-12-21 10:57:12'),
(158, 50, 'razorpay', 14199, 'order_Ia6HJ9svSOcO3z', NULL, NULL, 'pending', '2021-12-21 10:58:34', '2021-12-21 10:58:34'),
(159, 50, 'razorpay', 14199, 'order_Ia6I1NFJvme3ls', NULL, NULL, 'pending', '2021-12-21 10:59:15', '2021-12-21 10:59:15'),
(160, 50, 'razorpay', 14199, 'order_Ia6KG1j68R4jAN', NULL, NULL, 'pending', '2021-12-21 11:01:22', '2021-12-21 11:01:22'),
(161, 50, 'razorpay', 14199, 'order_Ia6KLTmneK6S24', NULL, NULL, 'pending', '2021-12-21 11:01:27', '2021-12-21 11:01:27'),
(162, 50, 'razorpay', 14199, 'order_Ia6LBezeTMk6s9', NULL, NULL, 'pending', '2021-12-21 11:02:15', '2021-12-21 11:02:15'),
(163, 50, 'razorpay', 14199, 'order_Ia6vMmHorMX5pd', NULL, NULL, 'pending', '2021-12-21 11:36:30', '2021-12-21 11:36:30'),
(164, 50, 'razorpay', 14199, 'order_Ia6wDKM7bmQZIn', NULL, NULL, 'pending', '2021-12-21 11:37:18', '2021-12-21 11:37:18'),
(165, 50, 'razorpay', 14199, 'order_Ia6yaqyIMpQ7SN', NULL, NULL, 'pending', '2021-12-21 11:39:33', '2021-12-21 11:39:33'),
(166, 50, 'razorpay', 14199, 'order_Ia6yu1q329dVDY', NULL, NULL, 'pending', '2021-12-21 11:39:50', '2021-12-21 11:39:50'),
(167, 50, 'razorpay', 14199, 'order_Ia6zDdrTDxqe6s', NULL, NULL, 'pending', '2021-12-21 11:40:08', '2021-12-21 11:40:08'),
(168, 50, 'razorpay', 14199, 'order_Ia70fE0oHsB37Q', NULL, NULL, 'pending', '2021-12-21 11:41:30', '2021-12-21 11:41:30'),
(169, 50, 'razorpay', 14199, 'order_Ia71B3MxuCqAbr', NULL, NULL, 'pending', '2021-12-21 11:42:00', '2021-12-21 11:42:00'),
(170, 50, 'razorpay', 14199, 'order_Ia726y56yIy33j', NULL, NULL, 'pending', '2021-12-21 11:42:53', '2021-12-21 11:42:53'),
(171, 50, 'razorpay', 14199, 'order_Ia73yruzXWRoWz', NULL, NULL, 'pending', '2021-12-21 11:44:39', '2021-12-21 11:44:39'),
(172, 50, 'razorpay', 14199, 'order_Ia7468XEJY2I5I', NULL, NULL, 'pending', '2021-12-21 11:44:46', '2021-12-21 11:44:46'),
(173, 50, 'razorpay', 14199, 'order_Ia79d6GAxmtO99', NULL, NULL, 'pending', '2021-12-21 11:50:00', '2021-12-21 11:50:00'),
(174, 50, 'razorpay', 14199, 'order_Ia7AK3iK0NsCmN', NULL, NULL, 'pending', '2021-12-21 11:50:39', '2021-12-21 11:50:39'),
(175, 50, 'razorpay', 14199, 'order_Ia7SGiYuQNygb4', NULL, NULL, 'pending', '2021-12-21 12:07:38', '2021-12-21 12:07:38'),
(176, 50, 'razorpay', 14199, 'order_Ia7SkVFfVJntQ9', NULL, NULL, 'pending', '2021-12-21 12:08:06', '2021-12-21 12:08:06'),
(177, 50, 'razorpay', 14199, 'order_Ia7Sxy2M5VZYbp', NULL, NULL, 'pending', '2021-12-21 12:08:18', '2021-12-21 12:08:18'),
(178, 50, 'razorpay', 14199, 'order_Ia7TM9Vk2kVMqS', NULL, NULL, 'pending', '2021-12-21 12:08:40', '2021-12-21 12:08:40'),
(179, 50, 'razorpay', 14199, 'order_Ia7UpcVhpckSGe', NULL, NULL, 'pending', '2021-12-21 12:10:04', '2021-12-21 12:10:04'),
(180, 50, 'razorpay', 14199, 'order_Ia7Uydq4GeWMkv', NULL, NULL, 'pending', '2021-12-21 12:10:12', '2021-12-21 12:10:12'),
(181, 50, 'razorpay', 14199, 'order_Ia7moT7O433Rm7', NULL, NULL, 'pending', '2021-12-21 12:27:05', '2021-12-21 12:27:05'),
(182, 50, 'razorpay', 14199, 'order_Ia7nECQDSg5Hbp', NULL, NULL, 'pending', '2021-12-21 12:27:29', '2021-12-21 12:27:29'),
(183, 50, 'razorpay', 14199, 'order_Ia7nI8lxl3iS0K', NULL, NULL, 'pending', '2021-12-21 12:27:33', '2021-12-21 12:27:33'),
(184, 50, 'razorpay', 14199, 'order_Ia7nmmfPzdBXgV', NULL, NULL, 'pending', '2021-12-21 12:28:01', '2021-12-21 12:28:01'),
(185, 50, 'razorpay', 14199, 'order_Ia7nojclXz48vo', NULL, NULL, 'pending', '2021-12-21 12:28:02', '2021-12-21 12:28:02'),
(186, 50, 'razorpay', 14199, 'order_Ia7pXvnDKEVj9t', NULL, NULL, 'pending', '2021-12-21 12:29:41', '2021-12-21 12:29:41'),
(187, 50, 'razorpay', 14199, 'order_Ia7q6M1xIQM5z8', NULL, NULL, 'pending', '2021-12-21 12:30:12', '2021-12-21 12:30:12'),
(188, 50, 'razorpay', 14199, 'order_Ia7q8gPRorsIOY', NULL, NULL, 'pending', '2021-12-21 12:30:14', '2021-12-21 12:30:14'),
(189, 50, 'razorpay', 14199, 'order_Ia7rX51mUDQJiB', NULL, NULL, 'pending', '2021-12-21 12:31:33', '2021-12-21 12:31:33'),
(190, 50, 'razorpay', 14199, 'order_Ia7rbRCl82Vtj1', NULL, NULL, 'pending', '2021-12-21 12:31:38', '2021-12-21 12:31:38'),
(191, 50, 'razorpay', 14199, 'order_Ia7rfAoSiNZxN8', NULL, NULL, 'pending', '2021-12-21 12:31:41', '2021-12-21 12:31:41'),
(192, 50, 'razorpay', 14199, 'order_Ia7s4douxT0fJe', NULL, NULL, 'pending', '2021-12-21 12:32:04', '2021-12-21 12:32:04'),
(193, 50, 'razorpay', 14199, 'order_Ia7s6GiR491PnG', NULL, NULL, 'pending', '2021-12-21 12:32:06', '2021-12-21 12:32:06'),
(194, 50, 'razorpay', 14199, 'order_Ia7s6RXJpqcYWL', NULL, NULL, 'pending', '2021-12-21 12:32:06', '2021-12-21 12:32:06'),
(195, 50, 'razorpay', 14199, 'order_Ia7s6zvbkAMJwo', NULL, NULL, 'pending', '2021-12-21 12:32:06', '2021-12-21 12:32:06'),
(196, 50, 'razorpay', 14199, 'order_Ia7vQLisfWH8Rq', NULL, NULL, 'pending', '2021-12-21 12:35:14', '2021-12-21 12:35:14'),
(197, 50, 'razorpay', 14199, 'order_Ia80B5W3EMOZlk', NULL, NULL, 'pending', '2021-12-21 12:39:44', '2021-12-21 12:39:44'),
(198, 50, 'razorpay', 14199, 'order_Ia82OZ3pg3RHNr', NULL, NULL, 'pending', '2021-12-21 12:41:50', '2021-12-21 12:41:50'),
(199, 50, 'razorpay', 14199, 'order_Ia82QqoGnOJgTI', NULL, NULL, 'pending', '2021-12-21 12:41:52', '2021-12-21 12:41:52'),
(200, 50, 'razorpay', 14199, 'order_Ia840TZwadCAui', NULL, NULL, 'pending', '2021-12-21 12:43:22', '2021-12-21 12:43:22'),
(201, 50, 'razorpay', 14199, 'order_Ia8432HjqdCtqb', NULL, NULL, 'pending', '2021-12-21 12:43:24', '2021-12-21 12:43:24'),
(202, 50, 'razorpay', 14199, 'order_Ia84Z2WwHNrWmK', NULL, NULL, 'pending', '2021-12-21 12:43:54', '2021-12-21 12:43:54'),
(203, 50, 'razorpay', 14199, 'order_Ia84b4oqmc9LvM', NULL, NULL, 'pending', '2021-12-21 12:43:56', '2021-12-21 12:43:56'),
(204, 50, 'razorpay', 14199, 'order_Ia84zMPdvEqw3z', NULL, NULL, 'pending', '2021-12-21 12:44:18', '2021-12-21 12:44:18'),
(205, 50, 'razorpay', 14199, 'order_Ia851TeDPXFMLK', NULL, NULL, 'pending', '2021-12-21 12:44:20', '2021-12-21 12:44:20'),
(206, 50, 'razorpay', 14199, 'order_Ia86JmDtlSW16u', NULL, NULL, 'pending', '2021-12-21 12:45:33', '2021-12-21 12:45:33'),
(207, 50, 'razorpay', 14199, 'order_Ia86M74ueDmZQ3', NULL, NULL, 'pending', '2021-12-21 12:45:35', '2021-12-21 12:45:35'),
(208, 50, 'razorpay', 14199, 'order_Ia86gyGcEG5lBr', NULL, NULL, 'pending', '2021-12-21 12:45:55', '2021-12-21 12:45:55'),
(209, 50, 'razorpay', 14199, 'order_Ia8C99eCgRsvK1', NULL, NULL, 'pending', '2021-12-21 12:51:04', '2021-12-21 12:51:04'),
(210, 50, 'razorpay', 14199, 'order_Ia8CC9OWrE3MuX', NULL, NULL, 'pending', '2021-12-21 12:51:07', '2021-12-21 12:51:07'),
(211, 50, 'razorpay', 14199, 'order_Ia8ETWW6EFuVLG', NULL, NULL, 'pending', '2021-12-21 12:53:17', '2021-12-21 12:53:17'),
(212, 50, 'razorpay', 14199, 'order_Ia8EWJTHhKGuGx', NULL, NULL, 'pending', '2021-12-21 12:53:19', '2021-12-21 12:53:19'),
(213, 50, 'razorpay', 14199, 'order_Ia8F7ANeRmuDfI', NULL, NULL, 'pending', '2021-12-21 12:53:53', '2021-12-21 12:53:53'),
(214, 50, 'razorpay', 14199, 'order_Ia8F9MrHXSyJYv', NULL, NULL, 'pending', '2021-12-21 12:53:55', '2021-12-21 12:53:55'),
(215, 50, 'razorpay', 14199, 'order_Ia8G92KZvje5gH', NULL, NULL, 'pending', '2021-12-21 12:54:51', '2021-12-21 12:54:51'),
(216, 50, 'razorpay', 14199, 'order_Ia8GAyi8EnG2U7', NULL, NULL, 'pending', '2021-12-21 12:54:53', '2021-12-21 12:54:53'),
(217, 50, 'razorpay', 14199, 'order_Ia8I45E9aogPBw', NULL, NULL, 'pending', '2021-12-21 12:56:40', '2021-12-21 12:56:40'),
(218, 33, 'razorpay', 28798, 'order_IaBI3mpoLJvKnS', NULL, NULL, 'pending', '2021-12-21 15:52:44', '2021-12-21 15:52:44'),
(219, 33, 'razorpay', 28798, 'order_IaBJI917Bao0nM', NULL, NULL, 'pending', '2021-12-21 15:53:55', '2021-12-21 15:53:55'),
(220, 33, 'razorpay', 28798, 'order_IaBJf6qs25xyjX', NULL, NULL, 'pending', '2021-12-21 15:54:15', '2021-12-21 15:54:15'),
(221, 33, 'razorpay', 28798, 'order_IaBJqlw8czDY45', NULL, NULL, 'pending', '2021-12-21 15:54:26', '2021-12-21 15:54:26'),
(222, 33, 'razorpay', 28798, 'order_IaBRGOupGBVs4q', NULL, NULL, 'pending', '2021-12-21 16:01:27', '2021-12-21 16:01:27'),
(223, 33, 'razorpay', 28798, 'order_IaBTUfchO10Vm1', NULL, NULL, 'pending', '2021-12-21 16:03:34', '2021-12-21 16:03:34'),
(224, 33, 'razorpay', 28798, 'order_IaBU2KmNElEXnu', NULL, NULL, 'pending', '2021-12-21 16:04:05', '2021-12-21 16:04:05'),
(225, 33, 'razorpay', 28798, 'order_IaBY7kSPtloM1z', NULL, NULL, 'pending', '2021-12-21 16:07:57', '2021-12-21 16:07:57'),
(226, 33, 'razorpay', 28798, 'order_IaBZGcsQJZjJHY', NULL, NULL, 'pending', '2021-12-21 16:09:02', '2021-12-21 16:09:02'),
(227, 33, 'razorpay', 28798, 'order_IaBZifu7rfDcm6', NULL, NULL, 'pending', '2021-12-21 16:09:27', '2021-12-21 16:09:27'),
(228, 33, 'razorpay', 28798, 'order_IaBjo1d2m1rklO', NULL, NULL, 'pending', '2021-12-21 16:19:00', '2021-12-21 16:19:00'),
(229, 33, 'razorpay', 28798, 'order_IaBlKjdX1Z3e5W', NULL, NULL, 'pending', '2021-12-21 16:20:27', '2021-12-21 16:20:27'),
(230, 33, 'razorpay', 28798, 'order_IaBmj97gCSu7yF', NULL, NULL, 'pending', '2021-12-21 16:21:46', '2021-12-21 16:21:46'),
(231, 33, 'razorpay', 28798, 'order_IaBnas3GtaVkI3', NULL, NULL, 'pending', '2021-12-21 16:22:36', '2021-12-21 16:22:36'),
(232, 33, 'razorpay', 28798, 'order_IaBqrRuqbXwv3k', NULL, NULL, 'pending', '2021-12-21 16:25:41', '2021-12-21 16:25:41'),
(233, 33, 'razorpay', 28798, 'order_IaBvGPIM8j1hXD', NULL, NULL, 'pending', '2021-12-21 16:29:51', '2021-12-21 16:29:51'),
(234, 33, 'razorpay', 28798, 'order_IaC2XaIjMlYt2n', NULL, NULL, 'pending', '2021-12-21 16:36:44', '2021-12-21 16:36:44'),
(235, 33, 'razorpay', 28798, 'order_IaC9lTQAUebDpB', NULL, NULL, 'pending', '2021-12-21 16:43:35', '2021-12-21 16:43:35'),
(236, 33, 'razorpay', 28798, 'order_IaCACUzSTPwVMr', NULL, NULL, 'pending', '2021-12-21 16:44:00', '2021-12-21 16:44:00'),
(237, 33, 'razorpay', 28798, 'order_IaCBEXgr5ROzB1', NULL, NULL, 'pending', '2021-12-21 16:44:58', '2021-12-21 16:44:58'),
(238, 33, 'razorpay', 28798, 'order_IaCCV7UNThvP9t', NULL, NULL, 'pending', '2021-12-21 16:46:10', '2021-12-21 16:46:10'),
(239, 33, 'razorpay', 28798, 'order_IaCCXUJ07ohesh', NULL, NULL, 'pending', '2021-12-21 16:46:13', '2021-12-21 16:46:13'),
(240, 33, 'razorpay', 28798, 'order_IaCK827ZlNnwyI', NULL, NULL, 'pending', '2021-12-21 16:53:23', '2021-12-21 16:53:23'),
(241, 33, 'razorpay', 28798, 'order_IaCKAAt74yUOMy', NULL, NULL, 'pending', '2021-12-21 16:53:25', '2021-12-21 16:53:25'),
(242, 33, 'razorpay', 28798, 'order_IaCKSSl2quqPDF', NULL, NULL, 'pending', '2021-12-21 16:53:43', '2021-12-21 16:53:43'),
(243, 33, 'razorpay', 28798, 'order_IaCNxeJa8JRMxu', NULL, NULL, 'pending', '2021-12-21 16:57:01', '2021-12-21 16:57:01'),
(244, 33, 'razorpay', 28798, 'order_IaCPrl4KIyfJM1', NULL, NULL, 'pending', '2021-12-21 16:58:49', '2021-12-21 16:58:49'),
(245, 33, 'razorpay', 28798, 'order_IaCQf9wrrCxmu7', NULL, NULL, 'pending', '2021-12-21 16:59:35', '2021-12-21 16:59:35'),
(246, 33, 'razorpay', 28798, 'order_IaCRW5koYGfpDZ', NULL, NULL, 'pending', '2021-12-21 17:00:23', '2021-12-21 17:00:23'),
(247, 33, 'razorpay', 28798, 'order_IaCUBnIH3zwAUv', NULL, NULL, 'pending', '2021-12-21 17:02:55', '2021-12-21 17:02:55'),
(248, 33, 'razorpay', 28798, 'order_IaCUdjm9ClEIXh', NULL, NULL, 'pending', '2021-12-21 17:03:21', '2021-12-21 17:03:21'),
(249, 33, 'razorpay', 28798, 'order_IaCVeyXWta7Fu7', NULL, NULL, 'pending', '2021-12-21 17:04:19', '2021-12-21 17:04:19'),
(250, 33, 'razorpay', 28798, 'order_IaCWRiwm1Ujre5', NULL, NULL, 'pending', '2021-12-21 17:05:03', '2021-12-21 17:05:03'),
(251, 33, 'razorpay', 28798, 'order_IaCY6VvPX0e721', NULL, NULL, 'pending', '2021-12-21 17:06:37', '2021-12-21 17:06:37'),
(252, 33, 'razorpay', 28798, 'order_IaCaOuqNT3QNSa', NULL, NULL, 'pending', '2021-12-21 17:08:48', '2021-12-21 17:08:48'),
(253, 33, 'razorpay', 28798, 'order_IaCaRLfPgiDmsP', NULL, NULL, 'pending', '2021-12-21 17:08:50', '2021-12-21 17:08:50'),
(254, 33, 'razorpay', 28798, 'order_IaCgvQdqYynpzw', NULL, NULL, 'pending', '2021-12-21 17:14:58', '2021-12-21 17:14:58'),
(255, 33, 'razorpay', 28798, 'order_IaNKYRGDnZGdHy', NULL, NULL, 'pending', '2021-12-22 03:39:25', '2021-12-22 03:39:25'),
(256, 33, 'razorpay', 28798, 'order_IaNKaKDva7CZzw', NULL, NULL, 'pending', '2021-12-22 03:39:27', '2021-12-22 03:39:27'),
(257, 33, 'razorpay', 28798, 'order_IaNVjBTG9p4hrZ', NULL, NULL, 'pending', '2021-12-22 03:50:00', '2021-12-22 03:50:00'),
(258, 33, 'razorpay', 28798, 'order_IaNVxN4y5YEVEj', NULL, NULL, 'pending', '2021-12-22 03:50:13', '2021-12-22 03:50:13'),
(259, 33, 'razorpay', 28798, 'order_IaNWPa6vNQ5IG1', NULL, NULL, 'pending', '2021-12-22 03:50:39', '2021-12-22 03:50:39'),
(260, 33, 'razorpay', 28798, 'order_IaNa2OIEm34S5b', NULL, NULL, 'pending', '2021-12-22 03:54:05', '2021-12-22 03:54:05'),
(261, 33, 'razorpay', 28798, 'order_IaNd2A2a2x4vvr', NULL, NULL, 'pending', '2021-12-22 03:56:55', '2021-12-22 03:56:55'),
(262, 33, 'razorpay', 28798, 'order_IaNdc89nKgfqvE', NULL, NULL, 'pending', '2021-12-22 03:57:28', '2021-12-22 03:57:28'),
(263, 33, 'razorpay', 28798, 'order_IaNdfLaYNLDykT', NULL, NULL, 'pending', '2021-12-22 03:57:31', '2021-12-22 03:57:31'),
(264, 33, 'razorpay', 28798, 'order_IaNeSKWZDgECSk', NULL, NULL, 'pending', '2021-12-22 03:58:16', '2021-12-22 03:58:16'),
(265, 33, 'razorpay', 28798, 'order_IaNehJsxN8duNR', NULL, NULL, 'pending', '2021-12-22 03:58:29', '2021-12-22 03:58:29'),
(266, 33, 'razorpay', 28798, 'order_IaNfqx3DVVHx94', NULL, NULL, 'pending', '2021-12-22 03:59:35', '2021-12-22 03:59:35'),
(267, 33, 'razorpay', 28798, 'order_IaNk1wF3x3bCIV', NULL, NULL, 'pending', '2021-12-22 04:03:32', '2021-12-22 04:03:32'),
(268, 33, 'razorpay', 28798, 'order_IaNkerDVns1srf', NULL, NULL, 'pending', '2021-12-22 04:04:08', '2021-12-22 04:04:08'),
(269, 33, 'razorpay', 28798, 'order_IaNlbW1TmXjrt9', NULL, NULL, 'pending', '2021-12-22 04:05:02', '2021-12-22 04:05:02'),
(270, 33, 'razorpay', 28798, 'order_IaNm92kUdJ035E', NULL, NULL, 'pending', '2021-12-22 04:05:32', '2021-12-22 04:05:32'),
(271, 33, 'razorpay', 28798, 'order_IaNqxag3OMeuzz', NULL, NULL, 'pending', '2021-12-22 04:10:06', '2021-12-22 04:10:06'),
(272, 33, 'razorpay', 28798, 'order_IaNsOCbZO8MoaR', NULL, NULL, 'pending', '2021-12-22 04:11:27', '2021-12-22 04:11:27'),
(273, 33, 'razorpay', 28798, 'order_IaNu6gNoFjbn87', NULL, NULL, 'pending', '2021-12-22 04:13:05', '2021-12-22 04:13:05'),
(274, 33, 'razorpay', 28798, 'order_IaNvj2RbEpn0CJ', NULL, NULL, 'pending', '2021-12-22 04:14:37', '2021-12-22 04:14:37'),
(275, 33, 'razorpay', 28798, 'order_IaNwfc4ppZYf9D', NULL, NULL, 'pending', '2021-12-22 04:15:30', '2021-12-22 04:15:30'),
(276, 33, 'razorpay', 28798, 'order_IaNyJNO7XAW4qU', NULL, NULL, 'pending', '2021-12-22 04:17:04', '2021-12-22 04:17:04'),
(277, 33, 'razorpay', 28798, 'order_IaNyb4yyjolCme', NULL, NULL, 'pending', '2021-12-22 04:17:20', '2021-12-22 04:17:20'),
(278, 33, 'razorpay', 28798, 'order_IaNyn75uqbpk3u', NULL, NULL, 'pending', '2021-12-22 04:17:31', '2021-12-22 04:17:31'),
(279, 33, 'razorpay', 28798, 'order_IaODjULmMrmvaQ', NULL, NULL, 'pending', '2021-12-22 04:31:39', '2021-12-22 04:31:39'),
(280, 33, 'razorpay', 28798, 'order_IaOL6irX6MHV5T', NULL, NULL, 'pending', '2021-12-22 04:38:38', '2021-12-22 04:38:38'),
(281, 33, 'razorpay', 28798, 'order_IaOUlpbJHpR3FI', NULL, NULL, 'pending', '2021-12-22 04:47:47', '2021-12-22 04:47:47'),
(282, 33, 'razorpay', 28798, 'order_IaOVibev2U2uA0', NULL, NULL, 'pending', '2021-12-22 04:48:42', '2021-12-22 04:48:42'),
(283, 33, 'razorpay', 28798, 'order_IaOWUsvipY6RiI', NULL, NULL, 'pending', '2021-12-22 04:49:26', '2021-12-22 04:49:26'),
(284, 33, 'razorpay', 28798, 'order_IaOWl3rZ20cgkz', NULL, NULL, 'pending', '2021-12-22 04:49:40', '2021-12-22 04:49:40'),
(285, 33, 'razorpay', 28798, 'order_IaOY80vPZwaEGL', NULL, NULL, 'pending', '2021-12-22 04:50:58', '2021-12-22 04:50:58'),
(286, 33, 'razorpay', 28798, 'order_IaOjD60hx4L8ck', NULL, NULL, 'pending', '2021-12-22 05:01:28', '2021-12-22 05:01:28'),
(287, 33, 'razorpay', 28798, 'order_IaOlCA0UedRGov', NULL, NULL, 'pending', '2021-12-22 05:03:20', '2021-12-22 05:03:20'),
(288, 33, 'razorpay', 28798, 'order_IaP8euFnpRTwFz', NULL, NULL, 'pending', '2021-12-22 05:25:33', '2021-12-22 05:25:33'),
(289, 33, 'razorpay', 28798, 'order_IaP9wZlA2hV213', NULL, NULL, 'pending', '2021-12-22 05:26:46', '2021-12-22 05:26:46'),
(290, 33, 'razorpay', 28798, 'order_IaPDwAU9jjh9UD', NULL, NULL, 'pending', '2021-12-22 05:30:33', '2021-12-22 05:30:33'),
(291, 33, 'razorpay', 28798, 'order_IaPGPmKi1ilKGK', NULL, NULL, 'pending', '2021-12-22 05:32:53', '2021-12-22 05:32:53'),
(292, 33, 'razorpay', 28798, 'order_IaPJDK3Unaog6V', NULL, NULL, 'pending', '2021-12-22 05:35:32', '2021-12-22 05:35:32'),
(293, 33, 'razorpay', 28798, 'order_IaPKjUb7abp4Vt', NULL, NULL, 'pending', '2021-12-22 05:36:59', '2021-12-22 05:36:59'),
(294, 33, 'razorpay', 28798, 'order_IaPRkE4dTTzoTu', NULL, NULL, 'pending', '2021-12-22 05:43:37', '2021-12-22 05:43:37'),
(295, 33, 'razorpay', 28798, 'order_IaPTYJ9qLLv3yo', NULL, NULL, 'pending', '2021-12-22 05:45:20', '2021-12-22 05:45:20'),
(296, 33, 'razorpay', 28798, 'order_IaPWcjq2nTPxRZ', NULL, NULL, 'pending', '2021-12-22 05:48:14', '2021-12-22 05:48:14'),
(297, 33, 'razorpay', 28798, 'order_IaPapERypYz9cr', NULL, NULL, 'pending', '2021-12-22 05:52:13', '2021-12-22 05:52:13'),
(298, 33, 'razorpay', 28798, 'order_IaPbthcSNJ9BmN', NULL, NULL, 'pending', '2021-12-22 05:53:14', '2021-12-22 05:53:14'),
(299, 33, 'razorpay', 28798, 'order_IaPd9gPb7qOF5l', NULL, NULL, 'pending', '2021-12-22 05:54:25', '2021-12-22 05:54:25'),
(300, 33, 'razorpay', 28798, 'order_IaPeHrYeLygXue', NULL, NULL, 'pending', '2021-12-22 05:55:29', '2021-12-22 05:55:29'),
(301, 33, 'razorpay', 28798, 'order_IaPrPVd05dfIa6', NULL, NULL, 'pending', '2021-12-22 06:07:55', '2021-12-22 06:07:55'),
(302, 33, 'razorpay', 28798, 'order_IaPvBfmCePdWwa', NULL, NULL, 'pending', '2021-12-22 06:11:29', '2021-12-22 06:11:29'),
(303, 50, 'razorpay', 14199, 'order_IaQ3WzXKvhZGqu', NULL, NULL, 'pending', '2021-12-22 06:19:23', '2021-12-22 06:19:23'),
(304, 50, 'razorpay', 14199, 'order_IaQUVNaTNZIeYV', NULL, NULL, 'pending', '2021-12-22 06:44:56', '2021-12-22 06:44:56'),
(305, 50, 'razorpay', 14199, 'order_IaQaMq2fa7wRqE', NULL, NULL, 'pending', '2021-12-22 06:50:29', '2021-12-22 06:50:29'),
(306, 50, 'razorpay', 14199, 'order_IaQbY5sdZ60ktm', NULL, NULL, 'pending', '2021-12-22 06:51:36', '2021-12-22 06:51:36'),
(307, 50, 'razorpay', 14199, 'order_IaQeXSRikrJKtV', NULL, NULL, 'pending', '2021-12-22 06:54:25', '2021-12-22 06:54:25'),
(308, 50, 'razorpay', 14199, 'order_IaR0kjYOE7uaGs', NULL, NULL, 'pending', '2021-12-22 07:15:27', '2021-12-22 07:15:27'),
(309, 50, 'razorpay', 14199, 'order_IaR1DlfkyUM4pG', NULL, NULL, 'pending', '2021-12-22 07:15:54', '2021-12-22 07:15:54'),
(310, 50, 'razorpay', 14199, 'order_IaRJz6rVPNwJav', NULL, NULL, 'pending', '2021-12-22 07:33:40', '2021-12-22 07:33:40'),
(311, 50, 'razorpay', 14199, 'order_IaROSyZLnTPRjx', NULL, NULL, 'pending', '2021-12-22 07:37:54', '2021-12-22 07:37:54'),
(312, 50, 'razorpay', 14199, 'order_IaSm1IKd3Nm1Jm', NULL, NULL, 'pending', '2021-12-22 08:58:53', '2021-12-22 08:58:53'),
(313, 50, 'razorpay', 14199, 'order_IaSrnwhc6wHV1m', NULL, NULL, 'pending', '2021-12-22 09:04:22', '2021-12-22 09:04:22'),
(314, 50, 'razorpay', 14199, 'order_IaTKt7kH8PUEsD', NULL, NULL, 'pending', '2021-12-22 09:31:54', '2021-12-22 09:31:54'),
(315, 50, 'razorpay', 14199, 'order_IaTY4OdHIV3BEk', NULL, NULL, 'pending', '2021-12-22 09:44:22', '2021-12-22 09:44:22'),
(316, 50, 'razorpay', 14199, 'order_IaTaOsLOLvqZDS', NULL, NULL, 'pending', '2021-12-22 09:46:35', '2021-12-22 09:46:35'),
(317, 50, 'razorpay', 14199, 'order_IaTc0lHt410Vuc', NULL, NULL, 'pending', '2021-12-22 09:48:06', '2021-12-22 09:48:06'),
(318, 50, 'razorpay', 14199, 'order_IaTdC2Ldn13DOJ', NULL, NULL, 'pending', '2021-12-22 09:49:14', '2021-12-22 09:49:14'),
(319, 50, 'razorpay', 14199, 'order_IaTgMNltkRjAR8', NULL, NULL, 'pending', '2021-12-22 09:52:13', '2021-12-22 09:52:13'),
(320, 50, 'razorpay', 14199, 'order_IaTnT0dSAx4DTf', NULL, NULL, 'pending', '2021-12-22 09:58:57', '2021-12-22 09:58:57'),
(321, 50, 'razorpay', 14199, 'order_IaToUrehH65p9O', NULL, NULL, 'pending', '2021-12-22 09:59:56', '2021-12-22 09:59:56'),
(322, 50, 'razorpay', 14199, 'order_IaU3gmRJPM72AA', NULL, NULL, 'pending', '2021-12-22 10:14:19', '2021-12-22 10:14:19'),
(323, 50, 'razorpay', 14199, 'order_IaUBgdm4czAHhl', NULL, NULL, 'pending', '2021-12-22 10:21:53', '2021-12-22 10:21:53'),
(324, 50, 'razorpay', 14199, 'order_IaUEsXpoPXMk3Q', NULL, NULL, 'pending', '2021-12-22 10:24:54', '2021-12-22 10:24:54'),
(325, 50, 'razorpay', 14199, 'order_IaUHQOYHDRJKlC', NULL, NULL, 'pending', '2021-12-22 10:27:19', '2021-12-22 10:27:19'),
(326, 50, 'razorpay', 14199, 'order_IaUQxK2ftQvBU6', NULL, NULL, 'pending', '2021-12-22 10:36:20', '2021-12-22 10:36:20'),
(327, 50, 'razorpay', 14199, 'order_IaUZFbT2AZhlaO', NULL, NULL, 'pending', '2021-12-22 10:44:11', '2021-12-22 10:44:11'),
(328, 50, 'razorpay', 14199, 'order_IaUki9aNOFiEmp', NULL, NULL, 'pending', '2021-12-22 10:55:02', '2021-12-22 10:55:02'),
(329, 50, 'razorpay', 14199, 'order_IaUpiLKQQAFUm5', NULL, NULL, 'pending', '2021-12-22 10:59:46', '2021-12-22 10:59:46'),
(330, 50, 'razorpay', 14199, 'order_IaUv1TO2yQZNI1', NULL, NULL, 'pending', '2021-12-22 11:04:48', '2021-12-22 11:04:48'),
(331, 50, 'razorpay', 14199, 'order_IaUxKqylDHLqHp', NULL, NULL, 'pending', '2021-12-22 11:06:59', '2021-12-22 11:06:59'),
(332, 50, 'razorpay', 14199, 'order_IaUyb7oBK5kRxL', NULL, NULL, 'pending', '2021-12-22 11:08:11', '2021-12-22 11:08:11'),
(333, 50, 'razorpay', 14199, 'order_IaV1k3S1yELE39', NULL, NULL, 'pending', '2021-12-22 11:11:10', '2021-12-22 11:11:10'),
(334, 50, 'razorpay', 14199, 'order_IaV5uu88FDfta7', NULL, NULL, 'pending', '2021-12-22 11:15:07', '2021-12-22 11:15:07'),
(335, 50, 'razorpay', 14199, 'order_IaVD3VQw6LRcM1', NULL, NULL, 'pending', '2021-12-22 11:21:52', '2021-12-22 11:21:52'),
(336, 50, 'razorpay', 200, 'order_IaVH1V07eYYRRH', NULL, NULL, 'pending', '2021-12-22 11:25:38', '2021-12-22 11:25:38'),
(337, 50, 'razorpay', 200, 'order_IaVNh6gM3MldrJ', NULL, NULL, 'pending', '2021-12-22 11:31:57', '2021-12-22 11:31:57'),
(338, 50, 'razorpay', 200, 'order_IaVPBFqNRb3qRX', NULL, NULL, 'pending', '2021-12-22 11:33:21', '2021-12-22 11:33:21'),
(339, 50, 'razorpay', 200, 'order_IaVQ4jvFMkNTVT', NULL, NULL, 'pending', '2021-12-22 11:34:12', '2021-12-22 11:34:12'),
(340, 50, 'razorpay', 200, 'order_IaVQOghzUyn1bY', NULL, NULL, 'pending', '2021-12-22 11:34:30', '2021-12-22 11:34:30'),
(341, 50, 'razorpay', 200, 'order_IaVQv5fMcptqfc', NULL, NULL, 'pending', '2021-12-22 11:35:00', '2021-12-22 11:35:00'),
(342, 50, 'razorpay', 200, 'order_IaVR2SrJue5eD3', NULL, NULL, 'pending', '2021-12-22 11:35:06', '2021-12-22 11:35:06'),
(343, 50, 'razorpay', 200, 'order_IaVX5LV6voy4Yf', NULL, NULL, 'success', '2021-12-22 11:40:50', '2021-12-22 11:41:14'),
(344, 50, 'razorpay', 200, 'order_IaVZh5T6bicUfX', NULL, NULL, 'success', '2021-12-22 11:43:18', '2021-12-22 11:43:40'),
(345, 50, 'razorpay', 200, 'order_IaVbYhssEr3e5H', NULL, NULL, 'pending', '2021-12-22 11:45:04', '2021-12-22 11:45:04'),
(346, 50, 'razorpay', 200, 'order_IaVqufN8Iosa7P', NULL, NULL, 'success', '2021-12-22 11:59:36', '2021-12-22 12:00:31'),
(347, 51, 'razorpay', 200, 'order_IaWFYT475DAOqy', NULL, NULL, 'pending', '2021-12-22 12:22:56', '2021-12-22 12:22:56'),
(348, 51, 'razorpay', 200, 'order_IaWJQl3Ovk3JPl', NULL, NULL, 'pending', '2021-12-22 12:26:36', '2021-12-22 12:26:36'),
(349, 51, 'razorpay', 200, 'order_IaWK929ZtZvXY1', NULL, NULL, 'pending', '2021-12-22 12:27:17', '2021-12-22 12:27:17'),
(350, 51, 'razorpay', 200, 'order_IaWKjXLYBzX9Tk', NULL, NULL, 'pending', '2021-12-22 12:27:50', '2021-12-22 12:27:50'),
(351, 51, 'razorpay', 200, 'order_IaWOpHthzxQy5V', NULL, NULL, 'pending', '2021-12-22 12:31:42', '2021-12-22 12:31:42'),
(352, 51, 'razorpay', 200, 'order_IaWP2W6OPPYKCR', NULL, NULL, 'success', '2021-12-22 12:31:55', '2021-12-22 12:32:51'),
(353, 51, 'razorpay', 200, 'order_IaWQbuyq32Xbe1', NULL, NULL, 'pending', '2021-12-22 12:33:24', '2021-12-22 12:33:24'),
(354, 51, 'razorpay', 200, 'order_IaWZxsI4RoqiGP', NULL, NULL, 'pending', '2021-12-22 12:42:15', '2021-12-22 12:42:15'),
(355, 51, 'razorpay', 200, 'order_IaWacpxkzQDh63', NULL, NULL, 'pending', '2021-12-22 12:42:53', '2021-12-22 12:42:53'),
(356, 51, 'razorpay', 200, 'order_IaWbps71S5dEuL', NULL, NULL, 'pending', '2021-12-22 12:44:01', '2021-12-22 12:44:01'),
(357, 51, 'razorpay', 200, 'order_IaWcNkkMC0kPJp', NULL, NULL, 'pending', '2021-12-22 12:44:32', '2021-12-22 12:44:32'),
(358, 51, 'razorpay', 200, 'order_IaWdSAUwhIiwb5', NULL, NULL, 'success', '2021-12-22 12:45:33', '2021-12-22 12:45:51'),
(359, 52, 'razorpay', 14199, 'order_IamZkSlxD3m7kT', NULL, NULL, 'success', '2021-12-23 04:21:10', '2021-12-23 04:21:36'),
(360, 33, 'razorpay', 28828, 'order_IanyOwwRTwzLCY', NULL, NULL, 'pending', '2021-12-23 05:43:11', '2021-12-23 05:43:11'),
(361, 33, 'razorpay', 28828, 'order_Ianykw8xObkAbc', NULL, NULL, 'pending', '2021-12-23 05:43:32', '2021-12-23 05:43:32'),
(362, 33, 'razorpay', 28828, 'order_Iao0McrPcUfNc1', NULL, NULL, 'pending', '2021-12-23 05:45:02', '2021-12-23 05:45:02'),
(363, 33, 'razorpay', 28798, 'order_Iao2ibhK9I20Ag', NULL, NULL, 'success', '2021-12-23 05:47:16', '2021-12-23 05:47:51'),
(364, 33, 'razorpay', 28798, 'order_IaoChuoepFBfaB', NULL, NULL, 'success', '2021-12-23 05:56:43', '2021-12-23 05:57:02'),
(365, 33, 'razorpay', 28798, 'order_IaocNTEqqc9KbU', NULL, NULL, 'success', '2021-12-23 06:21:01', '2021-12-23 06:21:19'),
(366, 33, 'razorpay', 13999, 'order_IaoeEWrdEyJOE3', NULL, NULL, 'success', '2021-12-23 06:22:46', '2021-12-23 06:23:04'),
(367, 51, 'razorpay', 14399, 'order_IapXl7DkQ0TmFp', NULL, NULL, 'success', '2021-12-23 07:15:20', '2021-12-23 07:15:59'),
(368, 33, 'razorpay', 755, 'order_IauTaH699fzP5m', NULL, NULL, 'success', '2021-12-23 12:04:51', '2021-12-23 12:05:17'),
(369, 53, 'razorpay', 13999, 'order_IbBwWxP0apnlXT', NULL, NULL, 'pending', '2021-12-24 05:10:04', '2021-12-24 05:10:04'),
(370, 53, 'razorpay', 13999, 'order_IbC06vCjTj4cKZ', NULL, NULL, 'pending', '2021-12-24 05:13:27', '2021-12-24 05:13:27'),
(371, 53, 'razorpay', 13999, 'order_IbC2UX4GWIgrBi', NULL, NULL, 'success', '2021-12-24 05:15:42', '2021-12-24 05:17:25'),
(372, 53, 'razorpay', 400, 'order_IbC4q9spO7B0gY', NULL, NULL, 'pending', '2021-12-24 05:17:56', '2021-12-24 05:17:56'),
(373, 53, 'razorpay', 400, 'order_IbCA9GGyevNeCg', NULL, NULL, 'pending', '2021-12-24 05:22:57', '2021-12-24 05:22:57'),
(374, 53, 'razorpay', 400, 'order_IbCAszvUCXgm17', NULL, NULL, 'pending', '2021-12-24 05:23:39', '2021-12-24 05:23:39'),
(375, 53, 'razorpay', 400, 'order_IbCBS7SDkN2Ssz', NULL, NULL, 'pending', '2021-12-24 05:24:11', '2021-12-24 05:24:11'),
(376, 53, 'razorpay', 400, 'order_IbCCAMlAvjhgel', NULL, NULL, 'pending', '2021-12-24 05:24:52', '2021-12-24 05:24:52'),
(377, 53, 'razorpay', 400, 'order_IbCCeF2UsxRycT', NULL, NULL, 'success', '2021-12-24 05:25:19', '2021-12-24 05:26:15'),
(378, 54, 'razorpay', 13999, 'order_IbCkNQIWqfTKcx', NULL, NULL, 'pending', '2021-12-24 05:57:15', '2021-12-24 05:57:15'),
(379, 54, 'razorpay', 400, 'order_IbDgzvkNlxNi1c', NULL, NULL, 'success', '2021-12-24 06:52:45', '2021-12-24 06:53:12'),
(380, 53, 'razorpay', 200, 'order_IbH0FaOeygXNrW', NULL, NULL, 'pending', '2021-12-24 10:07:04', '2021-12-24 10:07:04'),
(381, 53, 'razorpay', 200, 'order_IbH2CONT3VuBNm', NULL, NULL, 'pending', '2021-12-24 10:08:55', '2021-12-24 10:08:55'),
(382, 53, 'razorpay', 200, 'order_IbHQY8l4Roqsqy', NULL, NULL, 'pending', '2021-12-24 10:31:58', '2021-12-24 10:31:58'),
(383, 33, 'razorpay', 200, 'order_IcUlvLhAxv8Hqq', NULL, NULL, 'pending', '2021-12-27 12:14:13', '2021-12-27 12:14:13'),
(384, 33, 'razorpay', 200, 'order_IcUnsrcVw1eUqZ', NULL, NULL, 'pending', '2021-12-27 12:16:04', '2021-12-27 12:16:04'),
(385, 33, 'razorpay', 200, 'order_IcUoO63ZwyVlJJ', NULL, NULL, 'pending', '2021-12-27 12:16:32', '2021-12-27 12:16:32'),
(386, 33, 'razorpay', 200, 'order_IcUpLHq2Ytovpy', NULL, NULL, 'pending', '2021-12-27 12:17:27', '2021-12-27 12:17:27'),
(387, 53, 'razorpay', 400, 'order_IclxS0Yp0CNt15', NULL, NULL, 'pending', '2021-12-28 05:02:54', '2021-12-28 05:02:54'),
(388, 53, 'razorpay', 400, 'order_Icm5KpRXfcyMCo', NULL, NULL, 'pending', '2021-12-28 05:10:21', '2021-12-28 05:10:21'),
(389, 53, 'razorpay', 400, 'order_IcmlKR4rJMf6LU', NULL, NULL, 'pending', '2021-12-28 05:50:07', '2021-12-28 05:50:07'),
(390, 53, 'razorpay', 400, 'order_IcmmXzQHAC2lYt', NULL, NULL, 'pending', '2021-12-28 05:51:16', '2021-12-28 05:51:16'),
(391, 53, 'razorpay', 400, 'order_IcmnOjJkIJ2Dy5', NULL, NULL, 'pending', '2021-12-28 05:52:04', '2021-12-28 05:52:04'),
(392, 53, 'razorpay', 400, 'order_Icmnx3gyS5lRz3', NULL, NULL, 'pending', '2021-12-28 05:52:35', '2021-12-28 05:52:35'),
(393, 53, 'razorpay', 400, 'order_IcmoMFQjCd65Pn', NULL, NULL, 'pending', '2021-12-28 05:52:59', '2021-12-28 05:52:59'),
(394, 53, 'razorpay', 400, 'order_Icmpn0s3IFKLLi', NULL, NULL, 'pending', '2021-12-28 05:54:20', '2021-12-28 05:54:20'),
(395, 53, 'razorpay', 400, 'order_IcmtR5X8G0gevS', NULL, NULL, 'pending', '2021-12-28 05:57:47', '2021-12-28 05:57:47'),
(396, 53, 'razorpay', 400, 'order_Icmth66CnExm7C', NULL, NULL, 'pending', '2021-12-28 05:58:02', '2021-12-28 05:58:02'),
(397, 53, 'razorpay', 400, 'order_Icmu22oaEs2zC8', NULL, NULL, 'pending', '2021-12-28 05:58:21', '2021-12-28 05:58:21'),
(398, 53, 'razorpay', 400, 'order_IcmuSX4Hq6JbUn', NULL, NULL, 'pending', '2021-12-28 05:58:45', '2021-12-28 05:58:45'),
(399, 53, 'razorpay', 400, 'order_IcmuubLGYhS3SE', NULL, NULL, 'pending', '2021-12-28 05:59:11', '2021-12-28 05:59:11'),
(400, 53, 'razorpay', 400, 'order_IcmvM7SptLzHLr', NULL, NULL, 'pending', '2021-12-28 05:59:36', '2021-12-28 05:59:36'),
(401, 33, 'razorpay', 200, 'order_Icmw2Ujfh9FgiC', NULL, NULL, 'pending', '2021-12-28 06:00:15', '2021-12-28 06:00:15'),
(402, 33, 'razorpay', 200, 'order_IcmwwkZA26U4aK', NULL, NULL, 'pending', '2021-12-28 06:01:06', '2021-12-28 06:01:06'),
(403, 33, 'razorpay', 200, 'order_IcmxSFex4bLbTr', NULL, NULL, 'pending', '2021-12-28 06:01:35', '2021-12-28 06:01:35'),
(404, 33, 'razorpay', 200, 'order_IcmzFP6xSlhucO', NULL, NULL, 'pending', '2021-12-28 06:03:17', '2021-12-28 06:03:17'),
(405, 33, 'razorpay', 200, 'order_Icn1Gq09mMUcXX', NULL, NULL, 'pending', '2021-12-28 06:05:12', '2021-12-28 06:05:12'),
(406, 46, 'razorpay', 220, 'order_IcnC6rGIoDRkyi', NULL, NULL, 'pending', '2021-12-28 06:15:28', '2021-12-28 06:15:28'),
(407, 33, 'razorpay', 200, 'order_IdFt687BTqqP3m', NULL, NULL, 'pending', '2021-12-29 10:19:34', '2021-12-29 10:19:34'),
(408, 33, 'razorpay', 200, 'order_IdFvf2NrThqJzy', NULL, NULL, 'pending', '2021-12-29 10:22:00', '2021-12-29 10:22:00'),
(409, 33, 'razorpay', 200, 'order_IdFwyOcPCyUJYb', NULL, NULL, 'success', '2021-12-29 10:23:14', '2021-12-29 10:23:48'),
(410, 33, 'razorpay', 14199, 'order_IdFzJa5FgczALi', NULL, NULL, 'success', '2021-12-29 10:25:27', '2021-12-29 10:25:46'),
(411, 33, 'razorpay', 13999, 'order_IdG3G1Eepwn40C', NULL, NULL, 'success', '2021-12-29 10:29:11', '2021-12-29 10:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `popup_notification`
--

CREATE TABLE `popup_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tex_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `is_deal_day` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `title`, `subtitle`, `added_by`, `description`, `category`, `sub_category`, `brand`, `no_of_images`, `main_image`, `variation`, `product_images`, `amount`, `coins`, `sale_price`, `purchase_price`, `shipping_cost`, `discount`, `discount_type`, `tex`, `tex_type`, `quantity`, `current_stock`, `unit`, `status`, `tags`, `is_featured`, `is_deal_day`, `created_at`, `updated_at`) VALUES
(2, 'Demo', 'ERY', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam diam nunc, ultrices sit amet convallis sed, ornare sit amet tortor. Pellentesque ut ultrices neque. Nulla nec ligula non enim dignissim dictum eget id mauris. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam sed dignissim quam, in bibendum dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur nec urna enim. Praesent accumsan leo at nisl sollicitudin dapibus. Phasellus vel pulvinar tellus, vitae maximus diam. Donec vestibulum vitae elit id fringilla. Ut a tempus orci. Etiam vitae placerat neque. Integer accumsan tellus id tincidunt dapibus. Duis lacus dolor, euismod a ullamcorper sed, viverra sed orci.</p>', '1', '3', '0', NULL, '05.jpg', '1', 'clg-I-1637818156.jpg{$}clg-I-1637818156.png{$}clg-I-1637818156-660.jpg', '200', 'Hello', '159', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-11-16 06:15:07', '2021-11-16 06:15:07'),
(3, 'RYRTY', 'ERY', NULL, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Flavour</td>\r\n			<td>Almonds</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ingredients</td>\r\n			<td>Almonds</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Himalayan Natives</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>200 Grams</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Diet Type</td>\r\n			<td>Vegetarian</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<hr />\r\n<h1>About this item</h1>\r\n\r\n<ul>\r\n	<li>Great for Blood Sugar Control</li>\r\n</ul>', '1', '3', '0', NULL, '4.png', '1', 'clg-I-1637818156.jpg{$}clg-I-1637818156.png{$}clg-I-1637818156-660.jpg', '1200', 'hek', '200', '160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-11-16 06:16:45', '2021-11-16 06:16:45'),
(12, 'Product4', 'erw', NULL, '<p>xADDdD</p>', '1', '3', '0', NULL, '0.95103500_1539073310_cashews.jpg', '1', 'clg-I-1637730073.jpg', '2800', 'Hel00', '180', '130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-11-16 06:40:14', '2021-11-16 06:40:14'),
(14, 'eere', 'erw', NULL, '<p>xADDdD</p>', '1', '3', NULL, NULL, 'Screenshot (1).clg-I2-1637045405.png', '1', 'clg-I-1637045405.png{$}clg-I-1637045405-276.png{$}clg-I-1637045405-231.png', '200', '34', '123', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-11-16 06:50:06', '2021-11-16 06:50:06'),
(15, 'test', 'EQWE', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam diam nunc, ultrices sit amet convallis sed, ornare sit amet tortor. Pellentesque ut ultrices neque. Nulla nec ligula non enim dignissim dictum eget id mauris. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam sed dignissim quam, in bibendum dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur nec urna enim. Praesent</p>', '1', '3', NULL, NULL, 'Screenshot (1).clg-I2-1637053102.png', NULL, 'clg-I-1637053102.png{$}clg-I-1637053102-958.png{$}clg-I-1637053102-260.png', '555', '54', '453', '389', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-11-16 08:58:22', '2021-11-16 08:58:22'),
(16, 'SugarFree', 'sugar', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam diam nunc, ultrices sit amet convallis sed, ornare sit amet tortor. Pellentesque ut ultrices neque. Nulla nec ligula non enim dignissim dictum eget id mauris. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam sed dignissim quam, in bibendum dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur nec urna enim. Praesent accumsan leo at nisl sollicitudin dapibus. Phasellus vel pulvinar tellus, vitae maximus diam. Donec vestibulum vitae elit id fringilla. Ut a tempus orci. Etiam vitae placerat neque. Integer accumsan tellus id tincidunt dapibus. Duis lacus dolor, euismod a ullamcorper sed, viverra sed orci.</p>', '2', '1', '0', NULL, 'sugar.clg-I21637917450.jpg', NULL, 'clg-I-1637917450.jpg{$}clg-I-1637917450-541.jpg{$}clg-I-1637917450-691.jpg', '30', '3', '234', '190', NULL, NULL, NULL, NULL, NULL, '1kg', '30', NULL, NULL, NULL, 1, 0, '2021-11-16 10:50:46', '2021-11-16 10:50:46'),
(17, 'maggie', 'noodle', NULL, '<p>Brand MAGGI has started &ldquo;Simply Good&rdquo; initiative, in line with Nestl&eacute;&rsquo;s global commitment which is firmly embedded in our Purpose and Values which is to enhance quality of life and contribute to a healthier future.</p>\r\n\r\n<p>In India the Simply Good journey has started with everyone&rsquo;s favourite&nbsp;<strong>MAGGI 2-Minute Masala Noodles</strong>&nbsp;fortified with iron which will now provide consumers 15% of their daily Iron requirement.</p>\r\n\r\n<p>Iron deficiency is one of the leading micronutrient deficiencies in our country. Not many people are aware of how stark the problem is but as per National Family Health Survey, 2015-16 more than half the women and children in India are iron deficient. Contrary to popular belief that iron deficiency is prevalent only in rural parts of the country we see that the issue is equally spread across urban and rural geographies</p>\r\n\r\n<p>MAGGI Noodles is a part of about 70% urban Indian households and with more than 2.5 Bio serves that are consumed by people every year (2x Indian population) it can be an ideal carrier for iron fortification and thus contribute to closing the gap of Iron deficiency.</p>', '1', '3', '0', NULL, 'maggiejpg.jpg', NULL, 'clg-I-1637917150.jpg{$}clg-I-1637917150-809.jpg', '20', '0', '500', '420', NULL, NULL, NULL, NULL, NULL, '100gm', '20', NULL, NULL, NULL, 1, 1, '2021-11-17 12:57:45', '2021-11-17 12:57:45'),
(18, 'Sugar', 'Sugar', NULL, '<p>sugar,&nbsp;<strong>any of numerous sweet, colourless, water-soluble compounds present in</strong>&nbsp;the sap of seed plants and the milk of mammals and making up the simplest group of carbohydrates. The most common sugar is sucrose, a crystalline tabletop and industrial sweetener used in foods and beverages</p>', '1', '3', '0', NULL, 'sugar.jpg', NULL, 'clg-I-1637818156.jpg{$}clg-I-1637818156.png{$}clg-I-1637818156-660.jpg', '50', '2', '344', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-11-23 12:17:38', '2021-11-23 12:17:38'),
(19, 'IMG product', 'IMGP', NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2', '1', NULL, NULL, 'baaz.clg-I2-1637729818.jpeg', NULL, 'clg-I-1637729818.png', '1200', 'HELLO121', '234', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-11-24 04:56:58', '2021-11-24 04:56:58'),
(20, 'Aatta', 'Chakki Aatta', NULL, '<p>Product info</p>\r\n\r\n<h6>General</h6>\r\n\r\n<ul>\r\n	<li>Model:&nbsp;Amazfit Smartwatch</li>\r\n	<li>Gender:&nbsp;Unisex</li>\r\n	<li>OS campitibility:&nbsp;Android / iOS</li>\r\n</ul>\r\n\r\n<h6>Physical specs</h6>\r\n\r\n<ul>\r\n	<li>Shape:&nbsp;Rectangular</li>\r\n	<li>Body material:&nbsp;Plastics / Ceramics</li>\r\n	<li>Band material:&nbsp;Silicone</li>\r\n</ul>', '1', '3', '0', NULL, 'wheat1.jpg', NULL, 'clg-I-1637911389.jpg{$}clg-I-1637911389-427.jpg{$}clg-I-1637911389-856.jpg', '200', '2', '345', '300', NULL, NULL, NULL, NULL, NULL, '10kg', '50', NULL, NULL, NULL, 1, 0, '2021-11-24 07:56:31', '2021-11-24 07:56:31'),
(21, 'myprod', 'prod', NULL, '<p>nsdc nsdcjkndsjkcndsjkcvnjkd jkdnndfj ndjnk</p>', '1', '3', NULL, NULL, '0.95103500_1539073310_cashews.clg-I2-1637817023.jpg', NULL, 'clg-I-1637817023.jpg', '13999', '23', '123', '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-11-25 05:10:23', '2021-11-25 05:10:23'),
(22, 'Oil', 'Refined Oil', NULL, '<p>In The Box</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>\r\n			<ul>\r\n				<li>Super Sarvottam</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model Name</td>\r\n			<td>\r\n			<ul>\r\n				<li>Physically refined</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rice Bran Oil</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quantity</td>\r\n			<td>\r\n			<ul>\r\n				<li>1 L</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Used For</td>\r\n			<td>\r\n			<ul>\r\n				<li>Cooking</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processing Type</td>\r\n			<td>\r\n			<ul>\r\n				<li>Refined</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Maximum Shelf Life</td>\r\n			<td>\r\n			<ul>\r\n				<li>9 Months</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Food Preference</td>\r\n			<td>\r\n			<ul>\r\n				<li>Vegetarian</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Container Type</td>\r\n			<td>\r\n			<ul>\r\n				<li>Pouch</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Organic</td>\r\n			<td>\r\n			<ul>\r\n				<li>No</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Added Preservatives</td>\r\n			<td>\r\n			<ul>\r\n				<li>No</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ingredients</td>\r\n			<td>\r\n			<ul>\r\n				<li>NA</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nutrient Content</td>\r\n			<td>\r\n			<ul>\r\n				<li>NA</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Legal Disclaimer</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Flipkart endeavors to ensure the accuracy of the information about the products. It is pertinent to note that, actual product packaging and materials may contain more and/or different information which may include nutritional information/allergen declaration/special instruction for intended use/warning/directions etc. We recommend the consumers to always read the label carefully before using or consuming any products. Please do not solely rely on the information provided on this website. For additional information, please contact the manufacturer.</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '1', '3', '0', NULL, 'oil.jpg', NULL, 'clg-I-1637911291.jpg{$}clg-I-1637911291-177.jpg', '200', '30', '120', '100', NULL, NULL, NULL, NULL, NULL, '500gm', '60', NULL, NULL, NULL, 0, 0, '2021-11-25 07:22:11', '2021-11-25 07:22:11'),
(23, 'salt', 'salt', NULL, '<p>&nbsp;$data[&#39;cart_product&#39;]</p>\r\n\r\n<p>Brand MAGGI has started &ldquo;Simply Good&rdquo; initiative, in line with Nestl&eacute;&rsquo;s global commitment which is firmly embedded in our Purpose and Values which is to enhance quality of life and contribute to a healthier future.</p>\r\n\r\n<p>In India the Simply Good journey has started with everyone&rsquo;s favourite&nbsp;<strong>MAGGI 2-Minute Masala Noodles</strong>&nbsp;fortified with iron which will now provide consumers 15% of their daily Iron requirement.</p>\r\n\r\n<p>Iron deficiency is one of the leading micronutrient deficiencies in our country. Not many people are aware of how stark the problem is but as per National Family Health Survey, 2015-16 more than half the women and children in India are iron deficient. Contrary to popular belief that iron deficiency is prevalent only in rural parts of the country we see that the issue is equally spread across urban and rural geographies</p>\r\n\r\n<p>MAGGI Noodles is a part of about 70% urban Indian households and with more than 2.5 Bio serves that are consumed by people every year (2x Indian population) it can be an ideal carrier for iron fortification and thus contribute to closing the gap of Iron deficiency.</p>', '1', '3', '0', NULL, 'oil1.jpg', NULL, 'clg-I-1637919084.jpg', '20', '10', '80', '50', NULL, NULL, NULL, NULL, NULL, '1kg', '20', NULL, NULL, NULL, 1, 0, '2021-11-26 09:31:24', '2021-11-26 09:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `region` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fantasy_type` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Cricket',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registerusers`
--

CREATE TABLE `registerusers` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `decrypted_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(4) COLLATE utf8_unicode_ci DEFAULT '',
  `auth_key` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `refer_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `refer_id` int(11) DEFAULT 0,
  `special_refer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `dob` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `comment` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `state` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `pincode` varchar(8) COLLATE utf8_unicode_ci DEFAULT '',
  `activation_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `team` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `deviceid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` int(11) DEFAULT NULL,
  `withdrawamount` decimal(10,0) NOT NULL DEFAULT 0,
  `youtuber_status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `default_address` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registerusers`
--

INSERT INTO `registerusers` (`id`, `fullname`, `email`, `mobile`, `password`, `decrypted_password`, `code`, `auth_key`, `status`, `refer_code`, `refer_id`, `special_refer`, `username`, `dob`, `gender`, `image`, `comment`, `address`, `city`, `state`, `pincode`, `activation_status`, `team`, `type`, `percentage`, `deviceid`, `user_status`, `remember_token`, `withdrawamount`, `youtuber_status`, `created_at`, `updated_at`, `default_address`) VALUES
(1, NULL, 'jshsjj@jsjsj.skis', '9496497646', '$2y$10$ZxAwmTchLX/wOcSuWW8r8eMTtORNftwvzlMS68VlebPrEfc3isXEK', NULL, '', 'b1a47073c93572900041b49fd99aafd1', 'activated', 'HT11441', 0, NULL, '', '9/6/2003', '', '', NULL, '', '', 'Gujarat', '', '', 'yeye', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-06 06:41:14', '2021-12-17 05:16:37', '0'),
(2, NULL, 'laliteshimg@gmail.com', '9587341597', '', NULL, '', '61dcd766ce4ad947034442d1c3ca987c', 'activated', 'HT11942', 0, NULL, 'Lalitesh', '9/6/2003', '', 'http://143.110.244.110/Hashtag11/public/uploads/user-profile/user-profile31851630914298.jpg', NULL, '', '', 'Himachal Pradesh', '', '', 'test', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-06 06:46:06', '2021-12-17 05:16:37', '0'),
(3, NULL, 'ajays1img@gmail.com', '9649868677', '$2y$10$tqeSMFnq8XhBeNaFbsS37ujyWdm9DqmPxq60MbmmOF1QcBULQvXUa', NULL, '0', 'fd41d842bc89eb2017b7e1303fd255ca', 'activated', 'HT11263', 1, NULL, 'KD CHAUHAN', '2003-09-07', '', 'https://lh3.googleusercontent.com/a-/AOh14GgJiKzi5sddMGLB-MCFn10bCEbKJEd2v_JMIREARw', NULL, '', '', 'Rajasthan', '', '', 'Ajay', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-06 06:51:13', '2021-12-17 05:16:37', '0'),
(4, NULL, 'osmamit29@gmail.com', '', '', NULL, '', '481739321cdd06d95ac4a3079e543772', 'activated', 'HT11814', 1, NULL, 'Amit Saini', '9/7/2003', '', 'https://lh3.googleusercontent.com/a-/AOh14GhbCwhHSpkL9RtsSVLK2PI5Wby04pjI2tfP93k02Q', NULL, '', '', 'Jammu & Kashmir', '', '', 'thrgs', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-06 07:33:32', '2021-12-17 05:16:37', '0'),
(5, NULL, 'rohit19img@gmail.com', '9462636977', '', NULL, '', '6591f77a9fdee3587afbf31371d3bc4f', 'activated', 'HT11695', 1, NULL, 'Rohit Lalwani', '9/6/2003', '', 'https://lh3.googleusercontent.com/a-/AOh14GjEBQ68N0uktEVoniVWXEdEEiGz3nO5DTm5J3Lb', NULL, '', '', 'Haryana', '', '', 'tttttt', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-06 12:41:42', '2021-12-17 05:16:37', '0'),
(6, NULL, 'panditajaysharma09@gmail.com', '', '', NULL, '', '302cc2581301bcedbf39edc80bdea931', 'activated', 'HT11436', 2, NULL, 'Ajay Sharma', '9/7/2003', '', 'https://lh3.googleusercontent.com/a-/AOh14GhPUwP2QaKv8eNR2aEWzG-QcUE8dQryy2OARf3S', NULL, '', '', 'Haryana', '', '', 'ajay1', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-07 05:08:27', '2021-12-17 05:16:37', '0'),
(7, NULL, 'datagwy@hsjjs.jskow', '9464384645', '$2y$10$62mhym2jaYKvdvaICuFeUO/umGCin.TXVRxblrpJahUzZarC0MngO', NULL, '', 'a85ceb277e9997a732b6418a96ac1d92', 'activated', 'HT11477', 0, NULL, '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-07 06:05:01', '2021-12-17 05:16:37', '0'),
(8, NULL, 'vzhshsh@vhahs.sjiw', '9797967646', '$2y$10$WQe.eFsa2lV6AMlfERkc2uVJOBcjsdT6ZkQP5cmm4bfr8CE5AuKNC', NULL, '', 'd1cb8abdafc64d8a6607efa297d0f632', 'activated', 'HT11408', 0, NULL, '', '9/7/2003', '', '', NULL, '', '', 'Gujarat', '', '', 'Testing', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-07 06:11:52', '2021-12-17 05:16:37', '0'),
(9, NULL, 'bxhshshu@hgshssh.jsisk', '9793484648', '$2y$10$lMcZ9.ZjXqfwo4v4DseHMeel1QkjpfqjXSW0vO0sKK4hX5vHH7xre', NULL, '', 'ca6cc0d705256631735f0047120ac2b8', 'activated', 'HT11359', 0, NULL, '', '9/8/2003', '', '', NULL, '', '', 'Haryana', '', '', 'Testinggaha', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-08 06:27:59', '2021-12-17 05:16:37', '0'),
(10, NULL, 'tdststd@urfyr.urye', '9828284235', '$2y$10$JUksH6kCBDTct/BqZUbgPe6t98V8v844tPX5qXkx7.feYmHlQcnLW', NULL, '7630', '6143935f08d5d3fc2d4afb703d8359cf', 'activated', 'HT118310', 0, NULL, '', '9/8/2003', '', '', NULL, '', '', 'Gujarat', '', '', 'guthdy', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-08 07:32:11', '2021-12-17 05:16:37', '0'),
(11, NULL, 'testing1@gmail.com', '9967946494', '$2y$10$ULQ0ufgQ3zz7QUvfk/GupeyQMbsipzBYANwigyOiEFH/zUoVKrpE6', NULL, '', 'c66e2a33393e3fd1831711fba0c59273', 'activated', 'SP112611', 0, NULL, '', '9/21/2003', '', '', NULL, '', '', 'Himachal Pradesh', '', '', 'testinggaus', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-21 06:00:13', '2021-12-17 05:16:37', '0'),
(12, NULL, 'waseemakramimg@gmail.com', '7014379102', '', NULL, '', 'e1a1b2d3735925bd763e5a28526ad77c', 'activated', 'SP112912', 0, NULL, 'WASEEM AKRAM', '1997-04-03', '', 'null', NULL, '', '', 'Rajasthan', '', '', 'waseem', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-21 08:36:47', '2021-12-17 05:16:37', '0'),
(13, NULL, 'test@gmail.com', '1234567890', '$2y$10$A2PmvdDX394FguyATfVhleWzk.s26LdEkc/kLOd5tSQQ.oUdTJaaS', NULL, '', 'f291a71fbacb582f57c0da6b345b2a92', 'activated', 'SP117113', 0, NULL, '', '9/21/2003', '', '', NULL, '', '', 'Haryana', '', '', 'testtyy', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-21 09:33:05', '2021-12-17 05:16:37', '0'),
(14, NULL, 'bshsjsu@usu.djd', '4664646433', '$2y$10$g3xjpHBruZ8Dj3hSGfXJ5Om0rWz9JmHvopmO.WgeoGJ3.z28DPDtS', NULL, '6350', 'aa23027d027825cc803667e0545dec6a', 'activated', 'SP116614', 0, NULL, '', '9/21/2003', '', '', NULL, '', '', 'Haryana', '', '', 'gsusus', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-21 11:37:06', '2021-12-17 05:16:37', '0'),
(15, NULL, 'lalwanirohit19@gmail.com', '', '', NULL, '', 'a5c2b0b055c1a8aca3426c5e9b2a0153', 'activated', 'SP114915', 0, NULL, 'Rohit Lalwani', '9/21/2003', '', 'https://graph.facebook.com/v3.3/3875533839182172/picture?height=100&width=100&migration_overrides=%7Boctober_2012%3Atrue%7D', NULL, '', '', 'Himachal Pradesh', '', '', 'Test1', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-21 12:40:56', '2021-12-17 05:16:37', '0'),
(16, NULL, 'bzhshs@hshsj.xjid', '4534454545', '$2y$10$KrQZmvTnwwE6s3wnUH6uRe0LJUEkLeJ7JkkfEyTEl5STjbAZwDDdK', NULL, '', 'aadc9a955c02771c358541f8eaf61e5b', 'activated', 'SP116316', 0, NULL, '', '9/22/2003', '', '', NULL, '', '', 'Delhi', '', '', 'pqoeiieoq', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-22 10:55:32', '2021-12-17 05:16:37', '0'),
(17, NULL, 'mahindrakuma1245@gmail.com', '', '', NULL, '1234', '4b4bd7daa40479382a90cb3366d26c7f', 'activated', 'SP112817', 0, NULL, 'SKJ Entertainment Aswan', '18-Sep-2001', 'male', 'https://lh3.googleusercontent.com/a-/AOh14Giwj54YxKUa5CH09BIkWoH_eTPcUCwfirYIkjMn', NULL, '', '', 'Uttar Pradesh', '212401', '', 'ssss', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-22 11:37:50', '2021-12-17 05:16:37', '0'),
(18, NULL, 'hshsvshsv@gmail.com', '9956984667', '$2y$10$5YmPdxPAQMPlD1mwK285reHAzUTXtrjjkHncRXFUBrg0WrndaU/E.', NULL, '', 'fdf77db2cd638c98cc34f11c6e833157', 'activated', 'SP113018', 0, NULL, '', '9/23/2003', '', '', NULL, '', '', 'Goa', '', '', 'testingalksls', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-23 07:54:11', '2021-12-17 05:16:37', '0'),
(19, NULL, 'mahendrakuma1245@gmail.com', '', '', NULL, '1234', '2e5966a6cab91b106f1074e9cffa2a0f', 'activated', 'SP116319', 0, NULL, 'Sj Tech Video', '9/25/2002', '', 'http://143.110.244.110/Sports11/public/uploads/user-profile/user-profile67421634277763.jpg', NULL, '', '', 'Uttar Pradesh', '', '', 'shsc', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-09-25 15:29:36', '2021-12-17 05:16:37', '0'),
(22, NULL, 'delivery@boy.com', '8764313933', '$2y$10$XfxoF9x8h/UyvKhLddos7.dNZBxUrv51i..ABaR/Ln7UyHCS/Gxwa', '12345678', '', 'd0ecb1476a01e809b4e3a410c02ae428', 'activated', 'DEL-1234', 0, NULL, 'Delivery Boy', '', '', 'http://143.110.244.110/Shopping_cart/public/uploads/user-profile/114-1149878_setting-user-avatar-in-specific-size-without-breaking.user1637045471.png', NULL, '', '', '', '', '', '', 'delivery_boy', NULL, '0', '0', NULL, '0', NULL, '2021-11-16 06:51:11', '2021-12-17 05:16:37', '0'),
(23, 'waseemak', 'wak@gmail.com', '9632587410', '$2y$10$pTNCLDTfm.ItMiCMLl9.W.F6N1x6AgH0sDsWTRUwwSj.OAB3kKA8W', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-11-22 11:59:32', '2021-12-17 05:16:37', '0'),
(24, 'ajay', 'rah@gmail.com', '7412589630', '$2y$10$yjK5K2JoMESK6SE4W5YqjOdLgjdC8Ch/EnRuGot2KtWav5QISq42y', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-11-22 13:00:22', '2021-12-17 05:16:37', '0'),
(25, 'demo', 'demo@gmail.com', '9632587401', '$2y$10$.oyxixe2LnWd7XzhB3s4COx6wX2MulNUM.uxBJnHwSD6kSuty01PO', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-11-23 06:13:35', '2021-12-17 05:16:37', '0'),
(26, 'demo', 'demo@gmail.com', '9632587401', '$2y$10$.oyxixe2LnWd7XzhB3s4COx6wX2MulNUM.uxBJnHwSD6kSuty01PO', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-11-23 06:53:35', '2021-12-17 05:16:37', '0'),
(27, 'sqd', 'demo1@gmail.com', '9638527410', '$2y$10$8xirGhh8slrTkQzx9ObAIelUWMJKAzUz0FeAZ5NULNgaR6bQ9SsRW', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-11-23 07:01:55', '2021-12-17 05:16:37', '0'),
(28, 'ravi', 'ravi@gmail.com', '9636564412', '$2y$10$1UFAkLtkai3mSoXyGw3XzepE6lhENe76YTOVbEwRPv2j1HjbEyxQG', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-11-24 06:10:19', '2021-12-17 05:16:37', '0'),
(29, 'ravi', 'ravi@gmail.com', '9636564412', '$2y$10$1UFAkLtkai3mSoXyGw3XzepE6lhENe76YTOVbEwRPv2j1HjbEyxQG', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-11-24 06:12:32', '2021-12-17 05:16:37', '0'),
(30, 'akram', 'akram@gmail.com', '7785544987', '$2y$10$l55pv4zxpKwqsDbS6HC1FOy3A814PCP2JJa6Bn78HJ27DtXDnHjHG', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-11-24 06:14:39', '2021-12-17 05:16:37', '0'),
(31, 'akram', 'akram@gmail.com', '7785544987', '$2y$10$l55pv4zxpKwqsDbS6HC1FOy3A814PCP2JJa6Bn78HJ27DtXDnHjHG', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-11-24 06:16:09', '2021-12-17 05:16:37', '0'),
(32, 'akash', 'akash@gmail.com', '9856258741', '$2y$10$R1JfpqgZiI/EtjFZk2/E2eQtluDuCv6O2q9mpIK02wPTzVm8glXjK', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-11-24 06:19:45', '2021-12-17 05:16:37', '0'),
(33, 'sameer', 'sam@gmail.com', '6395874120', '$2y$10$zudtmji1JnMbCOnr94bkDebl8JbSo4HB2kwgaObEblSeFriUn/UGa', NULL, '', NULL, '1', '', 0, NULL, '', '12/10/2021', '', '', NULL, '[{\"fname\":\"rahil\",\"lname\":\"Sharma\",\"email\":\"Freedomtesty@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Delhi\",\"address2\":\"hjkl;\",\"city\":\"ajmer\",\"zipcode\":\"321456\",\"mobnum\":\"9638520741\"},{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}]', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-11-24 09:47:23', '2021-12-28 11:31:04', '{\"fname\":\"rakesh\",\"lname\":\"kumar\",\"email\":\"rak@gmail.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"303023\",\"mobnum\":\"7410852966\",\"latitude\":27.0238036,\"longitude\":74.21793260000001}'),
(34, 'vinay', 'vinay@gmail.com', '9999999999', '$2y$10$xxv5a5ng9MduINvlIsjjkeKxbHMaGp.Zkow5g4Wv5AmHy/zw3QLT6', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-11-26 04:06:13', '2021-12-17 05:16:37', '0'),
(35, NULL, 'aja@gmail.com', '9658874632', '$2y$10$r7B9rL.D9k6OHB.KOUuUzOxz9Jt9V9Dx8/92kdW4Nk5155p8dI97i', '123456', '', '3448a5e770b74720e3b426ee01ace53f', 'activated', 'ref1234', 0, NULL, 'ajay', '', '', 'http://143.110.244.110/Shopping_cart/public/uploads/user-profile/rice.jpg', NULL, '', '', '', '', '', '', 'delivery_boy', NULL, '0', '0', NULL, '0', NULL, '2021-11-26 09:37:59', '2021-12-17 05:16:37', '0'),
(36, 'akash', 'ak@gmail.com', '9978452103', '$2y$10$M9pWxDRYmK9gf0Y997/CkuGmx5fHfJ0pF15u.JyJcu0oEKyB8GYqq', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-11-26 09:46:21', '2021-12-17 05:16:37', '0'),
(37, '33223', 'nitesh91153@gmail.com', '9680605623', '$2y$10$1Fzyo6xwNA9kl4BEr53kRO7Mm1R0XwCHgsyilseqlnJ13orySCGam', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-09 12:47:00', '2021-12-17 05:16:37', NULL),
(38, 'test', 'test1@gmail.com', '1122334455', '$2y$10$JvV8MVr/06f2YJgbO3kwBOhXNGevkOWV00MXNpvk0Xp6oVaLyN26y', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-09 12:55:36', '2021-12-17 05:16:37', NULL),
(39, '777', 'test2@gmail.com', '8855774422', '$2y$10$6MwWiJ1Ul8QVUrAqydkUo.vRtDQkx.J71vgcHDDdJ7V7tCmmnv.x2', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-10 03:44:25', '2021-12-17 05:16:37', NULL),
(40, 'test', 'testing@gmail.com', '9966553322', '$2y$10$pvgvsa9R9WwdGKxptfyWSeGvI40MKZN217ZAcxfQQbE6ivTSu8aya', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-10 03:46:43', '2021-12-17 05:16:37', NULL),
(41, 'vinay', 'sharma@gmail.com', '9887544221', '$2y$10$Sr4pYNp2Y/KeNmdOQKYG6exUmP/sYX7ahBy9W6UBW3suYOxPrdNMC', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '[{\"fname\":\"rahil\",\"lname\":\"Sharma\",\"email\":\"pixok16604@niekie.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"963852\",\"mobnum\":\"7410852966\"}]', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-10 05:28:17', '2021-12-17 05:16:37', '{\"fname\":\"rahil\",\"lname\":\"Sharma\",\"email\":\"pixok16604@niekie.com\",\"country\":\"INDIA\",\"address1\":\"Rajasthan\",\"address2\":\"jaipur\",\"city\":\"jaipur\",\"zipcode\":\"963852\",\"mobnum\":\"7410852966\"}'),
(42, 'test', 'testing7@gmail.com', '8777665527', '$2y$10$LdD04FABRuzjK0hIv.9YyOS3.b4U9Vk5/B52TGVhP7xWXw48MO366', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '[{\"fname\":\"punit\",\"lname\":\"khan\",\"email\":\"punit@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":\"viahsally\",\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999},{\"fname\":\"shakti\",\"lname\":\"singh\",\"email\":\"company@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Ladnu\",\"zipcode\":\"151001\",\"mobnum\":\"7788995522\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}]', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-10 12:37:53', '2021-12-17 05:16:37', NULL),
(43, 'test2', 'test5@gmail.com', '2233556644', '$2y$10$PTyKuEc88kBJyEOaG4m8W.WZ088UQwmBLphwr9byRYtgJmrFXxi1m', NULL, '', NULL, '1', '', 0, NULL, '', '21', '', '', NULL, '[{\"fname\":\"nitesh\",\"lname\":\"sharma\",\"email\":\"nitesh153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999},{\"fname\":\"shakti\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}]', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-13 03:43:43', '2021-12-17 05:16:37', '{\"fname\":\"nitesh\",\"lname\":\"sharma\",\"email\":\"nitesh153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(44, 'bhawna pathak', 'bhawna@gmail.com', '1230456789', '$2y$10$T4DDIeoHKRFMyaNo1/24WuwhHBZ32o.uelAQ4012VcozBd70fCrkG', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-13 04:44:18', '2021-12-17 05:16:37', NULL),
(45, 'bhawna pathak', 'pathak@gmail.com', '1203456789', '$2y$10$A2MGT.YdvQN4dt3o9f7iZO6T9.nWXez/L8B/MZpOj7dv49MbU3hAu', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '[]', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-14 12:11:23', '2021-12-17 05:16:37', NULL),
(46, 'nitesh', 'nitesh@gmail.com', '9888919141', '$2y$10$GVo.H8B0bcLMuXz352bQ9Oz0QPA78NxiGxxtgR8gInlIbIth3z8s2', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '[{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999},{\"fname\":\"test2\",\"lname\":\"khan\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}]', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-20 09:02:56', '2021-12-20 15:57:15', '{\"fname\":\"sunil\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}'),
(47, 'nitesj', 'nit@gmail.com', '8899665522', '$2y$10$.07qH4JEXKoczp1TjVvB9uRByAVJIaqEnoUFZYZcziv6FA2f5FwHe', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '[{\"fname\":\"nitu\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-20 12:49:06', '2021-12-21 17:01:23', '{\"fname\":\"nitu\",\"lname\":\"saini\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}'),
(48, 'test', 'it@gmail.com', '7788554411', '$2y$10$/DWSSSlG18KX9T3IMPnvN.iJY06m5taRWFaBh0.8UEKwO8KNeJYZe', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-20 12:52:36', '2021-12-20 18:22:36', NULL),
(49, 'punit', 'punit@gmail.com', '7788445511', '$2y$10$oHUzdxRlPBDeAN//tVIa3.ILonwaPAwfDQjYJ6tOvDZOyjcFQYEda', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-21 03:36:55', '2021-12-21 09:06:55', NULL),
(50, 'aj', 'aj@gmail.com', '2255883344', '$2y$10$L19AcP8diEJWrhqxms2WBOVVLdw9zHvZIBunjrru1tF0PHxFQ8U8O', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '[{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}]', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-21 03:53:38', '2021-12-21 18:17:17', '{\"fname\":\"nitesh\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\",\"latitude\":18.5856155,\"longitude\":73.7837291}'),
(51, 'shakti', 'shakti@gmail.com', '1234567891', '$2y$10$RKrfpeuLN.OSzt.L9O921OE3lDlA3IyLDwUgAOvUC4gmjGKBhJ8T.', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-22 12:21:53', '2021-12-22 17:52:49', '[{\"fname\":\"shakti\",\"lname\":\"kumar\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(52, 'kailash', 'kk@gmail.com', '2233445533', '$2y$10$SOlV2t71EINz80TNYz6jMuO0HMguxmWu2B8Vybv8QaOA2KiGThIli', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '[{\"fname\":\"qqqq\",\"lname\":\"qqq\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-23 04:20:09', '2021-12-23 09:51:02', '[{\"fname\":\"qqqq\",\"lname\":\"qqq\",\"email\":\"img@gmail.com\",\"country\":\"India\",\"address1\":\"vishally nagar\",\"address2\":null,\"city\":\"Srinagar\",\"zipcode\":\"151001\",\"mobnum\":\"7755886622\"}]'),
(53, 'harshit', 'harshit@gmail.com', '2233569988', '$2y$10$OJgOCl/wqxno4.NH3FhM2e7oUHKVwrO7KvaRCMhxUglqZSluMsvs2', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '[{\"fname\":\"ss\",\"lname\":\"ss\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999},{\"fname\":\"q\",\"lname\":\"qq\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\",\"latitude\":26.9047751,\"longitude\":75.74886409999999}]', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-24 05:08:22', '2021-12-28 11:20:00', '[{\"fname\":\"hh\",\"lname\":\"hh\",\"email\":\"nitesh91153@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Jaipur\",\"zipcode\":\"151001\",\"mobnum\":\"9680605623\"}]'),
(54, 'somu', 'somu@gmail.com', '3322665544', '$2y$10$1dcuwAUGGDj9Klw7wzLpF..mEj5/nWJvNJmtkexCEiyyS3hEmmVYe', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, '[{\"fname\":\"rr\",\"lname\":\"rr\",\"email\":\"company@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Ladnu\",\"zipcode\":\"151001\",\"mobnum\":\"7788995522\"}]', '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-24 05:55:34', '2021-12-24 11:27:10', '[{\"fname\":\"rr\",\"lname\":\"rr\",\"email\":\"company@gmail.com\",\"country\":\"India\",\"address1\":\"vaishally nagar\",\"address2\":null,\"city\":\"Ladnu\",\"zipcode\":\"151001\",\"mobnum\":\"7788995522\"}]'),
(55, 'kartik', 'kartik@gmail.com', '2233556699', '$2y$10$F/4Xbk74ejr8H0MDAVKA9uPkWOkvNPdMPw3sJiOaby70zyjhH2tVO', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-29 04:25:20', '2021-12-29 09:55:20', NULL),
(56, 'suman', 'suman@gmail.com', '1022334455', '$2y$10$xMkFNMsOKA/WV3ZuceWTl.ZaNbgjRI03JoM5MzTBHZ5/G02k52KW6', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-29 04:48:41', '2021-12-29 10:18:41', NULL),
(57, 'suman', 'suman@gmail.com', '1022334455', '$2y$10$xMkFNMsOKA/WV3ZuceWTl.ZaNbgjRI03JoM5MzTBHZ5/G02k52KW6', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-29 04:54:02', '2021-12-29 10:24:02', NULL),
(58, 'suman', 'suman@gmail.com', '1022334455', '$2y$10$xMkFNMsOKA/WV3ZuceWTl.ZaNbgjRI03JoM5MzTBHZ5/G02k52KW6', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-29 04:54:23', '2021-12-29 10:24:23', NULL),
(59, 'nitikamam', 'nitikamam@gmail.com', '7788995566', '$2y$10$PnfLHjqXMvfeG7yamFzsl.W3rP8zMeW1SCE7RY3IZE6nWjsWim4vG', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-29 05:42:13', '2021-12-29 11:12:13', NULL),
(60, 'sonalmam', 'sonalmam@gmail.com', '2233001144', '$2y$10$CpgNCF/J.V2KlMYVCOOBxOHqEPWAt.F6FuYw.2.XetWNqC2YjAFWq', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-29 05:42:59', '2021-12-29 11:12:59', NULL),
(61, 'bhawna', 'bh@gmail.com', '1100220033', '$2y$10$MFl/4YkfMnP6PYMCNOozmuCJScS6.GsTGmUZW28Zp7uH1QC9KKD.S', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-29 05:43:44', '2021-12-29 11:13:44', NULL),
(62, 'somendra', 'somendraa@gmail.com', '2233669988', '$2y$10$DzUt1zUKCfaZoykn6IV6ieri5TQUIIPhez54bXSaREr1jmOviQtCC', NULL, '', NULL, '1', '', 0, NULL, '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '0', '0', NULL, '0', NULL, '2021-12-29 05:44:37', '2021-12-29 11:14:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, '', 'primary_hsl', '230 38.5 17.8', '2020-12-01 09:14:13', '2021-12-17 05:16:38'),
(2, '', 'project_name', 'Tokari', '2020-09-11 14:05:25', '2021-12-17 05:16:38'),
(3, '', 'short_name', 'SP11', '2020-09-11 14:05:25', '2021-12-17 05:16:38'),
(4, '', 'background', 'white', '2020-09-11 14:05:25', '2021-12-17 05:16:38'),
(8, '', 'user_image', 'user_image.png', '2020-09-12 05:01:32', '2021-12-17 05:16:38'),
(9, '', 'team_image', 'team_image.png', '2020-09-12 05:02:08', '2021-12-17 05:16:38'),
(10, '', 'player_image', 'player_image.png', '2020-09-12 05:02:26', '2021-12-17 05:16:38'),
(12, '', 'info', '#000000', '2020-09-12 05:10:25', '2021-12-17 05:16:38'),
(14, '', 'secondary', '#000000', '2020-09-12 05:11:36', '2021-12-17 05:16:38'),
(15, '', 'facebook_app_id', 'facebook_app_id_value', '2020-09-12 05:57:07', '2021-12-17 05:16:38'),
(16, '', 'facebook_secret_key', 'facebook_secret_key_value', '2020-09-12 05:57:07', '2021-12-17 05:16:38'),
(17, '', 'facebook_app_url', 'facebook_app_url_value', '2020-09-12 05:57:07', '2021-12-17 05:16:38'),
(18, '', 'facebook_login', 'enable', '2020-09-12 05:59:16', '2021-12-17 05:16:38'),
(28, '', 'google_app_id', 'google_app_id_value', '2020-09-12 09:19:53', '2021-12-17 05:16:38'),
(29, '', 'google_secret_key', 'google_secret_key_value', '2020-09-12 09:19:53', '2021-12-17 05:16:38'),
(30, '', 'google_app_url', 'google_app_url_value', '2020-09-12 09:19:53', '2021-12-17 05:16:38'),
(31, '', 'google_login', 'enable', '2020-09-12 09:19:54', '2021-12-17 05:16:38'),
(32, '', 'create_user_welcome_email', 'no', '2020-09-12 09:49:03', '2021-12-17 05:16:38'),
(33, '', 'create_user_welcome_notification', 'yes', '2020-09-12 09:49:03', '2021-12-17 05:16:38'),
(34, '', 'mobile_verify_notification', 'yes', '2020-09-12 09:49:03', '2021-12-17 05:16:38'),
(35, '', 'email_verify_notification', 'yes', '2020-09-12 09:49:03', '2021-12-17 05:16:38'),
(36, '', 'pan_verify_notification', 'yes', '2020-09-12 09:49:03', '2021-12-17 05:16:38'),
(37, '', 'bank_verify_notification', 'yes', '2020-09-12 09:49:03', '2021-12-17 05:16:38'),
(38, '', 'favicon', 'favicon.png', '2020-09-12 05:04:35', '2021-12-17 05:16:38'),
(39, '', 'firebase_key', 'AAAAiMW2DqE:APA91bF4vR6ddSIS5804TXuuVuPDvLPBHLWnd-c5cLNwPCnwA2ZLBk2xCvfM7vJf9yLiGD4N91rUREHQyRQkta-aj8cpmErO7eK2Y0pu7ccI8G37S7ekNed1HpxmOafKAHiUIipJX2z6', '2020-09-14 10:16:45', '2021-12-17 05:16:38'),
(136, '', 'box_width', 'w-55', '2020-09-18 13:00:53', '2021-12-17 05:16:38'),
(164, '', 'instagram_link', 'instagram.com', '2020-09-22 12:35:21', '2021-12-17 05:16:38'),
(165, '', 'mobile', '7062334389', '2020-09-22 12:35:21', '2021-12-17 05:16:38'),
(166, '', 'rounded', 'rounded-30-30', '2020-09-22 12:35:21', '2021-12-17 05:16:38'),
(2275, '', 'logo', 'logo.png', '2020-09-12 05:01:32', '2021-12-17 05:16:38'),
(2276, '', 'cashfree_app_id', '608211da06d4543c578cd3a2a12806', '2020-10-21 13:36:37', '2021-12-17 05:16:38'),
(2277, '', 'cashfree_secret_key', '1b60c1ae243117f61a441050972b1d4a22079631', '2020-10-21 13:36:37', '2021-12-17 05:16:38'),
(2278, '', 'cashfree_app_url', '', '2020-10-21 13:36:37', '2021-12-17 05:16:38'),
(2279, '', 'cashfree_is_enable', 'enable', '2020-10-21 13:36:37', '2021-12-17 05:16:38'),
(2280, '', 'font_family_link', 'https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap', '2020-10-29 06:37:58', '2021-12-17 05:16:38'),
(2281, '', 'font_family_name', '\'Poppins\', sans-serif', '2020-10-29 06:37:58', '2021-12-17 05:16:38'),
(2282, '', 'primary_hex', '#1c223f', '2020-10-29 06:37:58', '2021-12-17 05:16:38'),
(2283, '', 'secondary_hex', '#4886ea', '2020-10-29 06:37:58', '2021-12-17 05:16:38'),
(2284, '', 'info_hex', '#17a2b8', '2020-10-29 06:37:58', '2021-12-17 05:16:38'),
(2285, '', 'success_hex', '#28a745', '2020-10-29 06:37:58', '2021-12-17 05:16:38'),
(2286, '', 'danger_hex', '#dc3545', '2020-10-29 06:37:58', '2021-12-17 05:16:38'),
(2287, '', 'warning_hex', '#ffc107', '2020-10-29 06:37:58', '2021-12-17 05:16:38'),
(2288, '', 'muted_hex', '#dedede', '2020-10-29 06:37:58', '2021-12-17 05:16:38'),
(2289, '', 'dark_hex', '#343a40', '2020-10-29 06:37:58', '2021-12-17 05:16:38'),
(2290, '', 'light_hex', '#f8f9fa', '2020-10-29 06:37:58', '2021-12-17 05:16:38'),
(2291, '', 'black_hex', '#000000', '2020-10-29 06:37:58', '2021-12-17 05:16:38'),
(2292, '', 'white_hex', '#ffffff', '2020-10-29 06:37:58', '2021-12-17 05:16:38'),
(2293, '', 'razorpay_app_id', '', '2020-10-29 11:28:58', '2021-12-17 05:16:38'),
(2294, '', 'razorpay_secret_key', '', '2020-10-29 11:28:58', '2021-12-17 05:16:38'),
(2295, '', 'razorpay_app_url', '', '2020-10-29 11:28:58', '2021-12-17 05:16:38'),
(2296, '', 'razorpay_is_enable', 'enable', '2020-10-29 11:28:58', '2021-12-17 05:16:38'),
(2297, '', 'project_name_or_logo', 'project_name', '2020-11-09 04:20:51', '2021-12-17 05:16:38'),
(2298, '', 'primary_rgb', '28 34 63', '2020-12-01 09:15:29', '2021-12-17 05:16:38'),
(2299, '', 'secondary_hsl', '217 79.4 60', '2020-12-01 09:15:29', '2021-12-17 05:16:38'),
(2300, '', 'secondary_rgb', '72 134 234', '2020-12-01 09:15:29', '2021-12-17 05:16:38'),
(2301, '', 'site_url', 'https://fantasybox.in', '2021-02-13 07:51:16', '2021-12-17 05:16:38'),
(2302, '', 'admin_folder', 'supreem', '2021-03-17 07:14:53', '2021-12-17 05:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sidebanner`
--

CREATE TABLE `sidebanner` (
  `id` int(11) NOT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sidebanner`
--

INSERT INTO `sidebanner` (`id`, `type`, `url`, `image`, `created_at`, `updated_at`) VALUES
(2, 'others', 'http://fantasybox.imgglobalinfotech.com', 'images_sidebanner/gFP2xT1ZtjtHCKaLPN96dlpIW3X54SQ1HGyCnIlj.png', '2021-04-07 16:16:49', '2021-12-17 05:16:40'),
(5, 'invite', '', 'images_sidebanner/sC3YqIvWN7Y8q6jx0eLGqcdTjtiEJaBJycSRfrfY.jpeg', '2021-04-16 06:28:20', '2021-12-17 05:16:40'),
(9, 'main_banner', NULL, 'images_sidebanner/4QBdMs4bIeqCra93CWwEfLT5qLEyQOagPnHXMPbL.jpg', '2021-11-23 13:04:37', '2021-12-17 05:16:40'),
(10, 'main_banner', NULL, 'images_sidebanner/ycrdMoZbhvhdp7BEMkv7GmzPZ0T5zGtvPQ89XTqX.jpg', '2021-11-23 13:04:56', '2021-12-17 05:16:40'),
(11, 'main_banner', NULL, 'images_sidebanner/1bxS5c5XWp8hKovqY2y8wDpQNBOyPGFgtona06Z5.jpg', '2021-11-23 13:05:11', '2021-12-17 05:16:40'),
(12, 'category', '', 'images_sidebanner/qi4LpRREdHeCwMdLo8ZYjTbrRbHmZMWeruuRfDuT.jpg', '2021-11-24 04:49:27', '2021-12-17 05:16:40'),
(13, 'today_deal', '', 'images_sidebanner/c4cXvxDrSXToKnDGjD71lhM60GMiZL5BLuYtk7dX.jpg', '2021-11-24 04:51:42', '2021-12-17 05:16:40'),
(14, 'category', '', 'images_sidebanner/6VP8yBPUunt3SoJhFvPmMQ15zd8dmUxV6WzvXoLL.jpg', '2021-11-24 04:52:24', '2021-12-17 05:16:40'),
(15, 'featured', '', 'images_sidebanner/IyH1olm9wpd8LrEfbL8iJRPKBuuKbV2iF2fLdUNT.jpg', '2021-11-25 12:46:50', '2021-12-17 05:16:40'),
(16, 'featured', '', 'images_sidebanner/aUU1wRFugKF2sjSX9EjFVoCcvX5tFCjEs275ggsf.jpg', '2021-11-25 12:47:07', '2021-12-17 05:16:40'),
(17, 'featured', '', 'images_sidebanner/1CYnPj6IDT5CPGIjKdEEPdzzynTvaaM1wQXu0YUu.jpg', '2021-11-25 12:47:20', '2021-12-17 05:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `special_refer`
--

CREATE TABLE `special_refer` (
  `id` int(11) NOT NULL,
  `bonus` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `expire_date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `category_id`, `subcategory_name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'shirt', 'category_image/zKPruBZTQi9YfyO5YjUlOg5tunQtovUQGvvYmgME.jpg', 1, '2021-11-09 11:49:20', '2021-11-09 11:49:20'),
(2, 1, 'shoe', 'category_image/y1536XocivIOGLfVY0ZZ4nKnrPDgFfR5nqlkdoSo.jpg', 0, '2021-11-10 04:29:25', '2021-11-10 04:29:25'),
(3, 1, 'sandle', 'category_image/fIzeM3E3AnD1oCjb3hFbsj669YZKDt5DNte03k0B.jpg', 0, '2021-11-10 06:26:16', '2021-11-10 06:26:16'),
(4, 4, 'noodle yh', 'category_image/qekVkz5gEMbkPxkf6ZscXYqF88hSEYZNgvXlgyFw.jpg', 0, '2021-11-26 09:27:31', '2021-11-26 09:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `tdsdetails`
--

CREATE TABLE `tdsdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `challengeid` int(11) NOT NULL,
  `tds_amount` double NOT NULL,
  `amount` double NOT NULL,
  `series_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tempuser`
--

CREATE TABLE `tempuser` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refer_id` int(11) NOT NULL DEFAULT 0,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `deviceid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tempuser`
--

INSERT INTO `tempuser` (`id`, `fullname`, `username`, `refer_id`, `email`, `mobile`, `password`, `code`, `auth_key`, `deviceid`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, 0, 'akqonsiw@jsjwi.kdow', '9764694649', '$2y$10$hp/.F9QCmxbmqQ/LKF0dSuzSpNkTugeB7KeWN9pO4bbGzUls1RoG6', '1234', '111f16813491c83b8b19e9ba57d2bf38', '0', '2021-09-07 05:58:57', '2021-12-17 05:16:41'),
(11, NULL, NULL, 0, 'mahindrakuma1245@gmail.com', '9598981143', '$2y$10$/6lTxBdX/NDmYAIJ1dl/1OKEadswE5oaBn.91b2i/a7ZqPZZ23Wi6', '1234', '595cd907adf6f2af7b9921c101286cfc', '0', '2021-09-22 11:25:26', '2021-12-17 05:16:41'),
(12, NULL, NULL, 0, 'mahindrakuma1245@gmail.com', '9598981143', '$2y$10$2iNQHAOLOSkQscHSa6KhsOLyLgueOLRn/llja/sY27powD540suA2', '1234', '3a6a938b0df75bae6393c4a7e0c93462', '0', '2021-09-22 11:27:46', '2021-12-17 05:16:41'),
(13, NULL, NULL, 0, 'mahindrakuma1245@gmail.com', '8808178520', '$2y$10$DFCHuGCY/38opuX9QZCX4.IHwWnfIVoFvbeOQdm3uXSdUeisag4Gi', '1234', '658c8496b019d1ed428702d08ec13aef', '0', '2021-09-22 11:32:57', '2021-12-17 05:16:41'),
(14, NULL, NULL, 0, 'mahindrakuma1245@gmail.com', '8808178520', '$2y$10$lygBmi/1frbURaYAYztGDuwZaOC.pnCHyjidv3MBcE5qOFlYb3wsu', '1234', '4d97c3596b33159dfdbbc4e3238966a2', '0', '2021-09-22 11:35:23', '2021-12-17 05:16:41'),
(16, NULL, NULL, 0, 'mahendrakuma1245@gmail.com', '9619536310', '$2y$10$286OnHbfDJukRrGdWKhzt.emPUks.tdE8QRwP0U/ax8t4A1p6953y', '1234', '3ab55e5fb304e995177e8c4f61e05183', '0', '2021-09-25 15:26:25', '2021-12-17 05:16:41'),
(17, NULL, NULL, 0, 'admin@gmail.com', '1234567896', '$2y$10$rnag6.NCi9yuUZmI2tW1b.ck0EiCT41PDkfrbeCavf2jugJh2jZD6', '1234', '', '0', '2021-11-22 10:27:53', '2021-12-17 05:16:41'),
(18, 'waseem', NULL, 0, 'admin@gmail.com', '1234567896', '$2y$10$7kWZKDpTOG5wE5857GbDJ.9YHalJwwKHW4c464HvozBglrZ6qm6DW', '1234', '', '0', '2021-11-22 10:28:36', '2021-12-17 05:16:41'),
(19, 'waseem', NULL, 0, 'admin@gmail.com', '9856320147', '$2y$10$MiNtrShvI0lkkTMkOgd7Puievry8V8JhPBOTZySltSOPo/EWrR8oC', '1234', '', '0', '2021-11-22 10:43:10', '2021-12-17 05:16:41'),
(20, 'waseem', NULL, 0, 'admin@gmail.com', '9856320147', '$2y$10$gt0r5Aj2x1.HCSB07HIA2e4qpwCwSYw3Vh2G3xWgRUxd0ItWXZOzC', '1234', '', '0', '2021-11-22 10:44:07', '2021-12-17 05:16:41'),
(21, 'wasee', NULL, 0, 'wa@gmail.com', '9658741230', '$2y$10$rqR1v2fg26Sn5wBaYdXSkOMjiKF.BIaKdKNVlWT8z8HKLRICKhC/K', '1234', '', '0', '2021-11-22 10:47:32', '2021-12-17 05:16:41'),
(22, 'wasee', NULL, 0, 'wa@gmail.com', '9658741230', '$2y$10$4EyvS1JbRezBaDZGI5WAY.n.4BQbAkQTHngbdkkKeu.feIW63W0u2', '1234', '', '0', '2021-11-22 10:47:54', '2021-12-17 05:16:41'),
(23, 'asd', NULL, 0, 'wa@gm.com', '9632587410', '$2y$10$DMSQQUGKfCKJeYdWobp2i.uzBB709hYPtab2xYvHk1DLy1UNwjuU6', '1234', '', '0', '2021-11-22 10:48:24', '2021-12-17 05:16:41'),
(24, 'waseemakram', NULL, 0, 'wa@gmail.com', '7014379658', '$2y$10$GjRDpSdGUrrTjm8kHNCbieiJDKLJE33wV6.KOpACkECsjxe5EzsrW', '1234', '', '0', '2021-11-22 11:44:41', '2021-12-17 05:16:41'),
(25, 'waseemak', NULL, 0, 'wak@gmail.com', '9632587410', '$2y$10$pTNCLDTfm.ItMiCMLl9.W.F6N1x6AgH0sDsWTRUwwSj.OAB3kKA8W', '1234', '', '0', '2021-11-22 11:50:18', '2021-12-17 05:16:41'),
(26, 'ajay', NULL, 0, 'rah@gmail.com', '7412589630', '$2y$10$yjK5K2JoMESK6SE4W5YqjOdLgjdC8Ch/EnRuGot2KtWav5QISq42y', '1234', '', '0', '2021-11-22 13:00:15', '2021-12-17 05:16:41'),
(27, 'demo', NULL, 0, 'demo@gmail.com', '9632587401', '$2y$10$.oyxixe2LnWd7XzhB3s4COx6wX2MulNUM.uxBJnHwSD6kSuty01PO', '1234', '', '0', '2021-11-23 06:13:08', '2021-12-17 05:16:41'),
(28, 'sqd', NULL, 0, 'demo1@gmail.com', '9638527410', '$2y$10$8xirGhh8slrTkQzx9ObAIelUWMJKAzUz0FeAZ5NULNgaR6bQ9SsRW', '1234', '', '0', '2021-11-23 07:01:27', '2021-12-17 05:16:41'),
(29, 'rahil', NULL, 0, 'rahil@gmail.com', '9658741230', '$2y$10$Ge5R..XJEBjrdboalh95u.5xL0ASimV/FUOQFYq6a.XQ5hLUC4XSy', '1234', '', '0', '2021-11-24 05:26:40', '2021-12-17 05:16:41'),
(30, 'werg', NULL, 0, 'Freedomtesty@gmail.com', '2209876543', '$2y$10$WuZBmvQyvai/Z6Fl7HHTrumyUGANMVbS/B3p2Ch.pqg7yF7q4nRjG', '1234', '', '0', '2021-11-24 05:37:21', '2021-12-17 05:16:41'),
(31, 'asdfgh', NULL, 0, 'Freedomtesty1@gmail.com', '9655587401', '$2y$10$S/NAtYHQhFKkI8CfoVmTHu01O/uu0t59vyNr1JCJzTePilHsi56GO', '1234', '', '0', '2021-11-24 05:40:42', '2021-12-17 05:16:41'),
(32, 'wsdgh', NULL, 0, 'Freedodsfmtesty@gmail.com', '7894563210', '$2y$10$ANfONJ0JeBiPOhyVNLD3SukwRSFcbrgtGdN8npJs/D337Sgg1r1U.', '1234', '', '0', '2021-11-24 05:43:43', '2021-12-17 05:16:41'),
(33, 'degtrfgrdgf', NULL, 0, 'Freedgfdomtesty@gmail.com', '9638532174', '$2y$10$HGN0e0.IXkPM/8NbyttQzeN5HDlJFbwE9QbVcjglUISH4EWTPuZ26', '1234', '', '0', '2021-11-24 05:44:56', '2021-12-17 05:16:41'),
(34, 'ravi', NULL, 0, 'ravi@gmail.com', '9636564412', '$2y$10$1UFAkLtkai3mSoXyGw3XzepE6lhENe76YTOVbEwRPv2j1HjbEyxQG', '1234', '', '0', '2021-11-24 06:09:45', '2021-12-17 05:16:41'),
(35, 'akram', NULL, 0, 'akram@gmail.com', '7785544987', '$2y$10$l55pv4zxpKwqsDbS6HC1FOy3A814PCP2JJa6Bn78HJ27DtXDnHjHG', '1234', '', '0', '2021-11-24 06:14:29', '2021-12-17 05:16:41'),
(36, 'akash', NULL, 0, 'akash@gmail.com', '9856258741', '$2y$10$R1JfpqgZiI/EtjFZk2/E2eQtluDuCv6O2q9mpIK02wPTzVm8glXjK', '1234', '', '0', '2021-11-24 06:19:27', '2021-12-17 05:16:41'),
(37, 'sameer', NULL, 0, 'sam@gmail.com', '6395874120', '$2y$10$zudtmji1JnMbCOnr94bkDebl8JbSo4HB2kwgaObEblSeFriUn/UGa', '1234', '', '0', '2021-11-24 09:47:11', '2021-12-17 05:16:41'),
(38, 'vinay', NULL, 0, 'vinay@gmail.com', '9999999999', '$2y$10$xxv5a5ng9MduINvlIsjjkeKxbHMaGp.Zkow5g4Wv5AmHy/zw3QLT6', '1234', '', '0', '2021-11-26 04:05:57', '2021-12-17 05:16:41'),
(39, 'akash', NULL, 0, 'ak@gmail.com', '9978452103', '$2y$10$M9pWxDRYmK9gf0Y997/CkuGmx5fHfJ0pF15u.JyJcu0oEKyB8GYqq', '1234', '', '0', '2021-11-26 09:46:09', '2021-12-17 05:16:41'),
(40, '33223', NULL, 0, 'nitesh91153@gmail.com', '9680605623', '$2y$10$1Fzyo6xwNA9kl4BEr53kRO7Mm1R0XwCHgsyilseqlnJ13orySCGam', '1234', '', '0', '2021-12-09 12:46:49', '2021-12-17 05:16:41'),
(41, 'test', NULL, 0, 'teest@gmail.com', '9680605626', '$2y$10$/0Sbxugx6TIiOCD6idRYC.v4JmEfDcZzZx/B0ElFYsfeNRN0lC.DS', '1234', '', '0', '2021-12-09 12:53:54', '2021-12-17 05:16:41'),
(42, 'test', NULL, 0, 'test1@gmail.com', '1122334455', '$2y$10$JvV8MVr/06f2YJgbO3kwBOhXNGevkOWV00MXNpvk0Xp6oVaLyN26y', '1234', '', '0', '2021-12-09 12:55:21', '2021-12-17 05:16:41'),
(43, '5555yy', NULL, 0, 'test7@gmail.com', '7777852471', '$2y$10$GQG7Bxaki1r5XHB6OdRnkO0Qb0qpRzN0aHXNJTRkHKucLviHeM2Xu', '1234', '', '0', '2021-12-10 03:40:46', '2021-12-17 05:16:41'),
(44, '5555yy', NULL, 0, 'test7@gmail.com', '7777852471', '$2y$10$.4OJmp/Y6T63YqJLpjdVten2EoNLlSzutlcpAbxnQWcH0nTvtDvJ6', '1234', '', '0', '2021-12-10 03:41:10', '2021-12-17 05:16:41'),
(45, '5555yy', NULL, 0, 'test7@gmail.com', '7777852471', '$2y$10$lng4.PfOMlCS2U/De5f63.xDWf0PtDV5HNEcNgLAQw1H6vQPHRBAW', '1234', '', '0', '2021-12-10 03:41:21', '2021-12-17 05:16:41'),
(46, '777', NULL, 0, 'test2@gmail.com', '8855774422', '$2y$10$0CK2v.yCSeLOth63a.2qOusffI.MaTlN3QdoKhSC1/2dA3p/qNnq.', '1234', '', '0', '2021-12-10 03:42:42', '2021-12-17 05:16:41'),
(47, '777', NULL, 0, 'test2@gmail.com', '8855774422', '$2y$10$6MwWiJ1Ul8QVUrAqydkUo.vRtDQkx.J71vgcHDDdJ7V7tCmmnv.x2', '1234', '', '0', '2021-12-10 03:44:23', '2021-12-17 05:16:41'),
(48, 'test', NULL, 0, 'testing@gmail.com', '9966553322', '$2y$10$pvgvsa9R9WwdGKxptfyWSeGvI40MKZN217ZAcxfQQbE6ivTSu8aya', '1234', '', '0', '2021-12-10 03:46:30', '2021-12-17 05:16:41'),
(49, 'test', NULL, 0, 'testing@gmaill.com', '9966553321', '$2y$10$AF.8s9RXqCA8K.NNbhIPfO4Cj1zzHBQ4XTSznN.81Ds8JbIbdaMR.', '1234', '', '0', '2021-12-10 03:47:46', '2021-12-17 05:16:41'),
(50, 'test', NULL, 0, 'testing@gmail.co', '9966553315', '$2y$10$43uyyW3rt.Isef4oo1qha.AIWSFyibG3tL7VcoJDUT2eCW43EYJ0e', '1234', '', '0', '2021-12-10 03:49:34', '2021-12-17 05:16:41'),
(51, 'test', NULL, 0, 'testng@gmail.com', '9966553315', '$2y$10$nrJR4x9P2pMKzanjJW5lC.cWG4xh2QiiTreinkLFiNb4qyC8nGPGu', '1234', '', '0', '2021-12-10 03:49:49', '2021-12-17 05:16:41'),
(52, 'vinay', NULL, 0, 'sharma@gmail.com', '9887544221', '$2y$10$Sr4pYNp2Y/KeNmdOQKYG6exUmP/sYX7ahBy9W6UBW3suYOxPrdNMC', '1234', '', '0', '2021-12-10 05:28:09', '2021-12-17 05:16:41'),
(53, 'test', NULL, 0, 'testing7@gmail.com', '8777665527', '$2y$10$LdD04FABRuzjK0hIv.9YyOS3.b4U9Vk5/B52TGVhP7xWXw48MO366', '1234', '', '0', '2021-12-10 12:37:36', '2021-12-17 05:16:41'),
(54, 'test', NULL, 0, 'test5@gmail.com', '2233556644', '$2y$10$4zPKZnZFgw4RWmTGtWJXiOlrjBa6g9Fyo7OIDUwrza.jmB62tTKFS', '1234', '', '0', '2021-12-13 03:43:31', '2021-12-17 05:16:41'),
(55, 'test', NULL, 0, 'test5@gmail.com', '2233556644', '$2y$10$PTyKuEc88kBJyEOaG4m8W.WZ088UQwmBLphwr9byRYtgJmrFXxi1m', '1234', '', '0', '2021-12-13 03:43:31', '2021-12-17 05:16:41'),
(56, 'bhawna pathak', NULL, 0, 'bhawna@gmail.com', '1230456789', '$2y$10$T4DDIeoHKRFMyaNo1/24WuwhHBZ32o.uelAQ4012VcozBd70fCrkG', '1234', '', '0', '2021-12-13 04:44:10', '2021-12-17 05:16:41'),
(57, 'werty', NULL, 0, 'admin@gmail.com', '8765543213', '$2y$10$Y/YNentGeoIjylJFT1d0lOpzE9Pdgq3bQ17/Q6QS3YDsWlLZuv9I2', '1234', '', '0', '2021-12-13 04:45:17', '2021-12-17 05:16:41'),
(58, 'dfsdfsdf', NULL, 0, 'fsdfsdf@gmail.com', '1023456789', '$2y$10$Si8VZ/ABYy0VhYXrrb4UvOuq5JuH.1GfSqZACyGLS1rapw4sCU03i', '1234', '', '0', '2021-12-13 04:49:41', '2021-12-17 05:16:41'),
(59, 'sdfsdfsd', NULL, 0, 'fsdfsdf@gmail.com', '1234056789', '$2y$10$mbqu6endAd/WoK/OeNaSqOjuhQMbsBKZ6lpOWYCPHD35vNR2vW9ca', '1234', '', '0', '2021-12-13 04:51:04', '2021-12-17 05:16:41'),
(60, 'sdfsdfsd', NULL, 0, 'fsdfsdf@gmail.com', '1234056789', '$2y$10$CDZb2ztJekfhwTZNaKZ7Ne9O0.vnzb3xfQMkd/q6Bw3U/CyIBGdDe', '1234', '', '0', '2021-12-13 04:51:08', '2021-12-17 05:16:41'),
(61, 'bhawna pathak', NULL, 0, 'pathak@gmail.com', '1203456789', '$2y$10$A2MGT.YdvQN4dt3o9f7iZO6T9.nWXez/L8B/MZpOj7dv49MbU3hAu', '1234', '', '0', '2021-12-14 12:11:13', '2021-12-17 05:16:41'),
(62, 'nitesh', NULL, 0, 'nitesh@gmail.com', '9888919141', '$2y$10$GVo.H8B0bcLMuXz352bQ9Oz0QPA78NxiGxxtgR8gInlIbIth3z8s2', '1234', '', '0', '2021-12-20 09:02:43', '2021-12-20 09:02:43'),
(63, 'nitesj', NULL, 0, 'nit@gmail.com', '8899665522', '$2y$10$.07qH4JEXKoczp1TjVvB9uRByAVJIaqEnoUFZYZcziv6FA2f5FwHe', '1234', '', '0', '2021-12-20 12:48:58', '2021-12-20 12:48:58'),
(64, 'test', NULL, 0, 'it@gmail.com', '7788554411', '$2y$10$/DWSSSlG18KX9T3IMPnvN.iJY06m5taRWFaBh0.8UEKwO8KNeJYZe', '1234', '', '0', '2021-12-20 12:52:23', '2021-12-20 12:52:23'),
(65, 'punit', NULL, 0, 'punit@gmail.com', '7788445511', '$2y$10$oHUzdxRlPBDeAN//tVIa3.ILonwaPAwfDQjYJ6tOvDZOyjcFQYEda', '1234', '', '0', '2021-12-21 03:36:51', '2021-12-21 03:36:51'),
(66, 'aj', NULL, 0, 'aj@gmail.com', '2255883344', '$2y$10$L19AcP8diEJWrhqxms2WBOVVLdw9zHvZIBunjrru1tF0PHxFQ8U8O', '1234', '', '0', '2021-12-21 03:53:32', '2021-12-21 03:53:32'),
(67, 'shakti', NULL, 0, 'shakti@gmail.com', '1234567891', '$2y$10$RKrfpeuLN.OSzt.L9O921OE3lDlA3IyLDwUgAOvUC4gmjGKBhJ8T.', '1234', '', '0', '2021-12-22 12:21:42', '2021-12-22 12:21:42'),
(68, 'kailash', NULL, 0, 'kk@gmail.com', '2233445533', '$2y$10$SOlV2t71EINz80TNYz6jMuO0HMguxmWu2B8Vybv8QaOA2KiGThIli', '1234', '', '0', '2021-12-23 04:19:55', '2021-12-23 04:19:55'),
(69, 'harshit', NULL, 0, 'harshit@gmail.com', '2233569988', '$2y$10$OJgOCl/wqxno4.NH3FhM2e7oUHKVwrO7KvaRCMhxUglqZSluMsvs2', '1234', '', '0', '2021-12-24 05:08:06', '2021-12-24 05:08:06'),
(70, 'somu', NULL, 0, 'somu@gmail.com', '3322665544', '$2y$10$1dcuwAUGGDj9Klw7wzLpF..mEj5/nWJvNJmtkexCEiyyS3hEmmVYe', '1234', '', '0', '2021-12-24 05:55:21', '2021-12-24 05:55:21'),
(71, 'kartik', NULL, 0, 'kartik@gmail.com', '2233556699', '$2y$10$F/4Xbk74ejr8H0MDAVKA9uPkWOkvNPdMPw3sJiOaby70zyjhH2tVO', '1234', '', '0', '2021-12-29 04:25:06', '2021-12-29 04:25:06'),
(72, 'suman', NULL, 0, 'suman@gmail.com', '1022334455', '$2y$10$xMkFNMsOKA/WV3ZuceWTl.ZaNbgjRI03JoM5MzTBHZ5/G02k52KW6', '1234', '', '0', '2021-12-29 04:47:24', '2021-12-29 04:47:24'),
(73, 'nitikamam', NULL, 0, 'nitikamam@gmail.com', '7788995566', '$2y$10$PnfLHjqXMvfeG7yamFzsl.W3rP8zMeW1SCE7RY3IZE6nWjsWim4vG', '1234', '', '0', '2021-12-29 05:42:03', '2021-12-29 05:42:03'),
(74, 'sonalmam', NULL, 0, 'sonalmam@gmail.com', '2233001144', '$2y$10$CpgNCF/J.V2KlMYVCOOBxOHqEPWAt.F6FuYw.2.XetWNqC2YjAFWq', '1234', '', '0', '2021-12-29 05:42:50', '2021-12-29 05:42:50'),
(75, 'bhawna', NULL, 0, 'bh@gmail.com', '1100220033', '$2y$10$MFl/4YkfMnP6PYMCNOozmuCJScS6.GsTGmUZW28Zp7uH1QC9KKD.S', '1234', '', '0', '2021-12-29 05:43:36', '2021-12-29 05:43:36'),
(76, 'somendra', NULL, 0, 'somendraa@gmail.com', '2233669988', '$2y$10$DzUt1zUKCfaZoykn6IV6ieri5TQUIIPhez54bXSaREr1jmOviQtCC', '1234', '', '0', '2021-12-29 05:44:29', '2021-12-29 05:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contestdetail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `paymentstatus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `challengeid` int(11) DEFAULT 0,
  `seriesid` int(11) DEFAULT 0,
  `joinid` int(11) NOT NULL DEFAULT 0,
  `bonus_amt` double DEFAULT 0,
  `win_amt` double NOT NULL DEFAULT 0,
  `addfund_amt` double NOT NULL DEFAULT 0,
  `bal_bonus_amt` double NOT NULL DEFAULT 0,
  `bal_win_amt` double DEFAULT 0,
  `bal_fund_amt` double DEFAULT 0,
  `total_available_amt` double NOT NULL DEFAULT 0,
  `challenge_join_amt` double NOT NULL DEFAULT 0,
  `withdraw_amt` double NOT NULL DEFAULT 0,
  `cons_bonus` double NOT NULL DEFAULT 0,
  `cons_win` double NOT NULL DEFAULT 0,
  `cons_amount` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `userid`, `type`, `contestdetail`, `transaction_id`, `transaction_by`, `amount`, `paymentstatus`, `challengeid`, `seriesid`, `joinid`, `bonus_amt`, `win_amt`, `addfund_amt`, `bal_bonus_amt`, `bal_win_amt`, `bal_fund_amt`, `total_available_amt`, `challenge_join_amt`, `withdraw_amt`, `cons_bonus`, `cons_win`, `cons_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mobile bonus', '', 'HT11-EBONUS-2038', 'HT11', 500, 'confirmed', 0, 0, 0, 500, 0, 0, 500, 0, 0, 500, 0, 0, 0, 0, 0, '2021-09-06 06:41:14', '2021-12-17 05:16:42'),
(2, 2, 'Email bonus', '', 'HT11-EBONUS-7637', 'HT11', 10, 'confirmed', 0, 0, 0, 10, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0, 0, '2021-09-06 06:46:06', '2021-12-17 05:16:42'),
(3, 3, 'Email bonus', '', 'HT11-EBONUS-9008', 'HT11', 10, 'confirmed', 0, 0, 0, 10, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0, 0, '2021-09-06 06:51:13', '2021-12-17 05:16:42'),
(4, 3, 'Mobile bonus', '', 'HT11-EBONUS-5946', 'HT11', 500, 'confirmed', 0, 0, 0, 500, 0, 0, 510, 0, 0, 510, 0, 0, 0, 0, 0, '2021-09-06 06:58:40', '2021-12-17 05:16:42'),
(5, 3, 'Contest Joining Fee', '19 - 1', 'MS11-JL-MS11-39-1630911685-3', 'wallet', 19, 'confirmed', 39, 0, 0, 0, 0, 0, 491, 0, 5000, 5491, 0, 0, 19, 0, 0, '2021-09-06 07:01:25', '2021-12-17 05:16:42'),
(6, 3, 'Contest Joining Fee', '20 - 1', 'MS11-JL-MS11-42-1630911692-3', 'wallet', 20, 'confirmed', 42, 0, 0, 0, 0, 0, 491, 0, 4980, 5471, 0, 0, 0, 0, 20, '2021-09-06 07:01:32', '2021-12-17 05:16:42'),
(7, 3, 'Contest Joining Fee', '3 - 1', 'MS11-JL-MS11-46-1630911706-3', 'wallet', 3, 'confirmed', 46, 0, 0, 0, 0, 0, 491, 0, 4977, 5468, 0, 0, 0, 0, 3, '2021-09-06 07:01:46', '2021-12-17 05:16:42'),
(8, 3, 'Contest Joining Fee', '2610 - 1', 'MS11-JL-MS11-35-1630911717-3', 'wallet', 2610, 'confirmed', 35, 0, 0, 0, 0, 0, 491, 0, 2367, 2858, 0, 0, 0, 0, 2610, '2021-09-06 07:01:57', '2021-12-17 05:16:42'),
(9, 3, 'Contest Joining Fee', '19 - 1', 'MS11-JL-MS11-86-1630911750-3', 'wallet', 19, 'confirmed', 86, 0, 0, 0, 0, 0, 472, 0, 2367, 2839, 0, 0, 19, 0, 0, '2021-09-06 07:02:30', '2021-12-17 05:16:42'),
(10, 3, 'Refund', '', 'HT113741630911847-3', 'HT11', 2610, 'confirmed', 35, 0, 0, 0, 0, 2610, 472, 0, 4977, 5449, 0, 0, 0, 0, 0, '2021-09-06 07:04:07', '2021-12-17 05:16:42'),
(11, 4, 'Email bonus', '', 'HT11-EBONUS-2614', 'HT11', 10, 'confirmed', 0, 0, 0, 10, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0, 0, '2021-09-06 07:33:32', '2021-12-17 05:16:42'),
(12, 5, 'Email bonus', '', 'HT11-EBONUS-7867', 'HT11', 10, 'confirmed', 0, 0, 0, 10, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0, 0, '2021-09-06 12:41:42', '2021-12-17 05:16:42'),
(13, 2, 'Mobile bonus', '', 'HT11-EBONUS-6946', 'HT11', 20, 'confirmed', 0, 0, 0, 20, 0, 0, 30, 0, 0, 30, 0, 0, 0, 0, 0, '2021-09-07 04:53:52', '2021-12-17 05:16:42'),
(14, 6, 'Email bonus', '', 'HT11-EBONUS-3428', 'HT11', 10, 'confirmed', 0, 0, 0, 10, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0, 0, '2021-09-07 05:08:27', '2021-12-17 05:16:42'),
(15, 3, 'Cash added', '', 'HT11-ADD-1630992391', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 472, 0, 5077, 5549, 0, 0, 0, 0, 0, '2021-09-07 05:26:31', '2021-12-17 05:16:42'),
(16, 3, 'Cash added', '', 'HT11-ADD-1630992417', 'Wallet', 1000, 'confirmed', 0, 0, 0, 0, 0, 1000, 472, 0, 6077, 6549, 0, 0, 0, 0, 0, '2021-09-07 05:26:57', '2021-12-17 05:16:42'),
(17, 3, 'Contest Joining Fee', '19 - 1', 'MS11-JL-MS11-227-1630992575-3', 'wallet', 19, 'confirmed', 227, 0, 0, 0, 0, 0, 453, 0, 6077, 6530, 0, 0, 19, 0, 0, '2021-09-07 05:29:35', '2021-12-17 05:16:42'),
(18, 3, 'Contest Joining Fee', '20 - 1', 'MS11-JL-MS11-230-1630992579-3', 'wallet', 20, 'confirmed', 230, 0, 0, 0, 0, 0, 453, 0, 6057, 6510, 0, 0, 0, 0, 20, '2021-09-07 05:29:39', '2021-12-17 05:16:42'),
(19, 3, 'Contest Joining Fee', '1 - 1', 'MS11-JL-MS11-231-1630992585-3', 'wallet', 1, 'confirmed', 231, 0, 0, 0, 0, 0, 452.9, 0, 6056.1, 6509, 0, 0, 0.1, 0, 0.9, '2021-09-07 05:29:45', '2021-12-17 05:16:42'),
(20, 3, 'Cash added', '', 'HT11-ADD-1630994380', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 452.9, 0, 6156.1, 6609, 0, 0, 0, 0, 0, '2021-09-07 05:59:40', '2021-12-17 05:16:42'),
(21, 7, 'Mobile bonus', '', 'HT11-EBONUS-6222', 'HT11', 20, 'confirmed', 0, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 0, 0, 0, '2021-09-07 06:05:01', '2021-12-17 05:16:42'),
(22, 8, 'Mobile bonus', '', 'HT11-EBONUS-4049', 'HT11', 20, 'confirmed', 0, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 0, 0, 0, '2021-09-07 06:11:52', '2021-12-17 05:16:42'),
(23, 3, 'Contest Joining Fee', '29 - 1', 'MS11-JL-MS11-119-1630996827-3', 'wallet', 29, 'confirmed', 119, 0, 0, 0, 0, 0, 452.9, 0, 6127.1, 6580, 0, 0, 0, 0, 29, '2021-09-07 06:40:27', '2021-12-17 05:16:42'),
(24, 3, 'Contest Joining Fee', '29 - 1', 'MS11-JL-MS11-119-1630996848-3', 'wallet', 29, 'confirmed', 119, 0, 0, 0, 0, 0, 452.9, 0, 6098.1, 6551, 0, 0, 0, 0, 29, '2021-09-07 06:40:49', '2021-12-17 05:16:42'),
(25, 3, 'Contest Joining Fee', '29 - 1', 'MS11-JL-MS11-119-1630996866-3', 'wallet', 29, 'confirmed', 119, 0, 0, 0, 0, 0, 452.9, 0, 6069.1, 6522, 0, 0, 0, 0, 29, '2021-09-07 06:41:06', '2021-12-17 05:16:42'),
(26, 3, 'Contest Joining Fee', '29 - 1', 'MS11-JL-MS11-119-1630996882-3', 'wallet', 29, 'confirmed', 119, 0, 0, 0, 0, 0, 452.9, 0, 6040.1, 6493, 0, 0, 0, 0, 29, '2021-09-07 06:41:22', '2021-12-17 05:16:42'),
(27, 3, 'Challenge Winning Amount', '', 'WIN-9172391', 'HT11', 400, 'confirmed', 39, 0, 0, 0, 400, 0, 452.9, 400, 6040.1, 6893, 0, 0, 0, 0, 0, '2021-09-07 10:45:20', '2021-12-17 05:16:42'),
(28, 3, 'Challenge Winning Amount', '', 'WIN-5724422', 'HT11', 500, 'confirmed', 42, 0, 0, 0, 500, 0, 452.9, 900, 6040.1, 7393, 0, 0, 0, 0, 0, '2021-09-07 10:45:20', '2021-12-17 05:16:42'),
(29, 3, 'Challenge Winning Amount', '', 'WIN-43219463', 'HT11', 50, 'confirmed', 46, 0, 0, 0, 50, 0, 452.9, 950, 6040.1, 7443, 0, 0, 0, 0, 0, '2021-09-07 10:45:20', '2021-12-17 05:16:42'),
(30, 3, 'Pan verification pan bonus', '', 'HT11-EBONUS-1272', 'HT11', 10, 'confirmed', 0, 0, 0, 10, 0, 0, 462.9, 950, 6040.1, 7453, 0, 0, 0, 0, 0, '2021-09-07 11:04:11', '2021-12-17 05:16:42'),
(31, 3, 'Bank verification bank bonus', '', 'HT11-EBONUS-6307', 'HT11', 15, 'confirmed', 0, 0, 0, 15, 0, 0, 477.9, 950, 6040.1, 7468, 0, 0, 0, 0, 0, '2021-09-07 11:04:37', '2021-12-17 05:16:42'),
(32, 3, 'Amount Withdraw', '', 'WD-3-1631012695', 'wallet', 500, 'Confirmed', 0, 0, 0, 0, 0, 0, 477.9, 450, 6040.1, 6968, 0, 500, 0, 500, 0, '2021-09-06 18:30:00', '2021-12-17 05:16:42'),
(33, 3, 'Contest Joining Fee', '30 - 1', 'HT11-JL-HT11-135-1631013510-3', 'wallet', 30, 'confirmed', 135, 0, 0, 0, 0, 0, 471.9, 450, 6016.1, 6938, 0, 0, 6, 0, 24, '2021-09-07 11:18:30', '2021-12-17 05:16:42'),
(34, 2, 'Contest Joining Fee', '0 - 1', 'HT11-JL-HT11-141-1631018073-2', 'wallet', 0, 'confirmed', 141, 0, 0, 0, 0, 0, 30, 0, 0, 30, 0, 0, 0, 0, 0, '2021-09-07 12:34:33', '2021-12-17 05:16:42'),
(35, 5, 'Mobile bonus', '', 'HT11-EBONUS-1205', 'HT11', 20, 'confirmed', 0, 0, 0, 20, 0, 0, 30, 0, 0, 30, 0, 0, 0, 0, 0, '2021-09-07 13:17:09', '2021-12-17 05:16:42'),
(36, 5, 'Cash added', '', 'HT11-ADD-1631020662', 'Wallet', 130, 'confirmed', 0, 0, 0, 0, 0, 130, 30, 0, 130, 160, 0, 0, 0, 0, 0, '2021-09-07 13:17:42', '2021-12-17 05:16:42'),
(37, 5, 'Contest Joining Fee', '30 - 1', 'HT11-JL-HT11-135-1631020670-5', 'wallet', 30, 'confirmed', 135, 0, 0, 0, 0, 0, 24, 0, 106, 130, 0, 0, 6, 0, 24, '2021-09-07 13:17:50', '2021-12-17 05:16:42'),
(38, 5, 'Contest Joining Fee', '19 - 1', 'HT11-JL-HT11-133-1631020746-5', 'wallet', 19, 'confirmed', 133, 0, 0, 0, 0, 0, 5, 0, 106, 111, 0, 0, 19, 0, 0, '2021-09-07 13:19:06', '2021-12-17 05:16:42'),
(39, 5, 'Contest Joining Fee', '11.5 - 1', 'HT11-JL-HT11-238-1631020761-5', 'wallet', 11.5, 'confirmed', 238, 0, 0, 0, 0, 0, 5, 0, 94.5, 99.5, 0, 0, 0, 0, 11.5, '2021-09-07 13:19:21', '2021-12-17 05:16:42'),
(40, 2, 'Refund', '', 'HT111121631023802-2', 'HT11', 0, 'confirmed', 141, 0, 0, 0, 0, 0, 30, 0, 0, 30, 0, 0, 0, 0, 0, '2021-09-07 14:10:03', '2021-12-17 05:16:42'),
(41, 5, 'Refund', '', 'HT115121631023803-5', 'HT11', 11.5, 'confirmed', 238, 0, 0, 0, 0, 11.5, 5, 0, 106, 111, 0, 0, 0, 0, 0, '2021-09-07 14:10:03', '2021-12-17 05:16:42'),
(42, 2, 'Cash added', '', 'HT11-ADD-1631073852', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 30, 0, 10, 40, 0, 0, 0, 0, 0, '2021-09-08 04:04:12', '2021-12-17 05:16:42'),
(43, 2, 'Cash added', '', 'HT11-ADD-1631073887', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 30, 0, 110, 140, 0, 0, 0, 0, 0, '2021-09-08 04:04:47', '2021-12-17 05:16:42'),
(44, 2, 'Cash added', '', 'HT11-ADD-1631074865', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 30, 0, 120, 150, 0, 0, 0, 0, 0, '2021-09-08 04:21:05', '2021-12-17 05:16:42'),
(45, 2, 'Cash added', '', 'HT11-ADD-1631075555', 'Wallet', 5, 'confirmed', 0, 0, 0, 0, 0, 5, 30, 0, 125, 155, 0, 0, 0, 0, 0, '2021-09-08 04:32:35', '2021-12-17 05:16:42'),
(46, 2, 'Cash added', '', 'HT11-ADD-1631075596', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 30, 0, 225, 255, 0, 0, 0, 0, 0, '2021-09-08 04:33:16', '2021-12-17 05:16:42'),
(47, 2, 'Cash added', '', 'HT11-ADD-1631082229', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 30, 0, 235, 265, 0, 0, 0, 0, 0, '2021-09-08 06:23:49', '2021-12-17 05:16:42'),
(48, 2, 'Cash added', '', 'HT11-ADD-1631082268', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 30, 0, 245, 275, 0, 0, 0, 0, 0, '2021-09-08 06:24:28', '2021-12-17 05:16:42'),
(49, 2, 'Cash added', '', 'HT11-ADD-1631082323', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 30, 0, 345, 375, 0, 0, 0, 0, 0, '2021-09-08 06:25:23', '2021-12-17 05:16:42'),
(50, 2, 'Cash added', '', 'HT11-ADD-1631082424', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 30, 0, 445, 475, 0, 0, 0, 0, 0, '2021-09-08 06:27:04', '2021-12-17 05:16:42'),
(51, 9, 'Mobile bonus', '', 'HT11-EBONUS-6242', 'HT11', 20, 'confirmed', 0, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 0, 0, 0, '2021-09-08 06:27:59', '2021-12-17 05:16:42'),
(52, 9, 'Cash added', '', 'HT11-ADD-1631082535', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 100, 120, 0, 0, 0, 0, 0, '2021-09-08 06:28:55', '2021-12-17 05:16:42'),
(53, 9, 'Cash added', '', 'HT11-ADD-1631083450', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 200, 220, 0, 0, 0, 0, 0, '2021-09-08 06:44:10', '2021-12-17 05:16:42'),
(54, 9, 'Cash added', '', 'HT11-ADD-1631083493', 'Wallet', 500, 'confirmed', 0, 0, 0, 0, 0, 500, 20, 0, 700, 720, 0, 0, 0, 0, 0, '2021-09-08 06:44:53', '2021-12-17 05:16:42'),
(55, 9, 'Cash added', '', 'HT11-ADD-1631083527', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 800, 820, 0, 0, 0, 0, 0, '2021-09-08 06:45:27', '2021-12-17 05:16:42'),
(56, 9, 'Cash added', '', 'HT11-ADD-1631083592', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 900, 920, 0, 0, 0, 0, 0, '2021-09-08 06:46:32', '2021-12-17 05:16:42'),
(57, 9, 'Cash added', '', 'HT11-ADD-1631083618', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 1000, 1020, 0, 0, 0, 0, 0, '2021-09-08 06:46:58', '2021-12-17 05:16:42'),
(58, 9, 'Cash added', '', 'HT11-ADD-1631083658', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 1100, 1120, 0, 0, 0, 0, 0, '2021-09-08 06:47:38', '2021-12-17 05:16:42'),
(59, 9, 'Cash added', '', 'HT11-ADD-1631083818', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 1200, 1220, 0, 0, 0, 0, 0, '2021-09-08 06:50:18', '2021-12-17 05:16:42'),
(60, 9, 'Cash added', '', 'HT11-ADD-1631083885', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 1300, 1320, 0, 0, 0, 0, 0, '2021-09-08 06:51:25', '2021-12-17 05:16:42'),
(61, 9, 'Cash added', '', 'HT11-ADD-1631083974', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 1400, 1420, 0, 0, 0, 0, 0, '2021-09-08 06:52:54', '2021-12-17 05:16:42'),
(62, 9, 'Cash added', '', 'HT11-ADD-1631084550', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 1500, 1520, 0, 0, 0, 0, 0, '2021-09-08 07:02:30', '2021-12-17 05:16:42'),
(63, 9, 'Cash added', '', 'HT11-ADD-1631084685', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 1600, 1620, 0, 0, 0, 0, 0, '2021-09-08 07:04:45', '2021-12-17 05:16:42'),
(64, 9, 'Cash added', '', 'HT11-ADD-1631084764', 'Wallet', 200, 'confirmed', 0, 0, 0, 0, 0, 200, 20, 0, 1800, 1820, 0, 0, 0, 0, 0, '2021-09-08 07:06:04', '2021-12-17 05:16:42'),
(65, 9, 'Cash added', '', 'HT11-ADD-1631085059', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 1900, 1920, 0, 0, 0, 0, 0, '2021-09-08 07:10:59', '2021-12-17 05:16:42'),
(66, 9, 'Cash added', '', 'HT11-ADD-1631085094', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 2000, 2020, 0, 0, 0, 0, 0, '2021-09-08 07:11:34', '2021-12-17 05:16:42'),
(67, 9, 'Cash added', '', 'HT11-ADD-1631085714', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 2100, 2120, 0, 0, 0, 0, 0, '2021-09-08 07:21:54', '2021-12-17 05:16:42'),
(68, 9, 'Cash added', '', 'HT11-ADD-1631085746', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 2200, 2220, 0, 0, 0, 0, 0, '2021-09-08 07:22:26', '2021-12-17 05:16:42'),
(69, 9, 'Cash added', '', 'HT11-ADD-1631085886', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 2300, 2320, 0, 0, 0, 0, 0, '2021-09-08 07:24:46', '2021-12-17 05:16:42'),
(70, 9, 'Cash added', '', 'HT11-ADD-1631086119', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 2400, 2420, 0, 0, 0, 0, 0, '2021-09-08 07:28:39', '2021-12-17 05:16:42'),
(71, 9, 'Cash added', '', 'HT11-ADD-1631086221', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 2410, 2430, 0, 0, 0, 0, 0, '2021-09-08 07:30:21', '2021-12-17 05:16:42'),
(72, 2, 'Cash added', '', 'HT11-ADD-1631086291', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 30, 0, 455, 485, 0, 0, 0, 0, 0, '2021-09-08 07:31:31', '2021-12-17 05:16:42'),
(73, 10, 'Mobile bonus', '', 'HT11-EBONUS-2887', 'HT11', 20, 'confirmed', 0, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 0, 0, 0, '2021-09-08 07:32:11', '2021-12-17 05:16:42'),
(74, 10, 'Cash added', '', 'HT11-ADD-1631086379', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 10, 30, 0, 0, 0, 0, 0, '2021-09-08 07:32:59', '2021-12-17 05:16:42'),
(75, 10, 'Cash added', '', 'HT11-ADD-1631086418', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 20, 40, 0, 0, 0, 0, 0, '2021-09-08 07:33:38', '2021-12-17 05:16:42'),
(76, 10, 'Cash added', '', 'HT11-ADD-1631086464', 'Wallet', 5, 'confirmed', 0, 0, 0, 0, 0, 5, 20, 0, 25, 45, 0, 0, 0, 0, 0, '2021-09-08 07:34:24', '2021-12-17 05:16:42'),
(77, 10, 'Cash added', '', 'HT11-ADD-1631086626', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 35, 55, 0, 0, 0, 0, 0, '2021-09-08 07:37:06', '2021-12-17 05:16:42'),
(78, 10, 'Cash added', '', 'HT11-ADD-1631086721', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 45, 65, 0, 0, 0, 0, 0, '2021-09-08 07:38:41', '2021-12-17 05:16:42'),
(79, 10, 'Cash added', '', 'HT11-ADD-1631086846', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 55, 75, 0, 0, 0, 0, 0, '2021-09-08 07:40:46', '2021-12-17 05:16:42'),
(80, 10, 'Cash added', '', 'HT11-ADD-1631086953', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 65, 85, 0, 0, 0, 0, 0, '2021-09-08 07:42:33', '2021-12-17 05:16:42'),
(81, 10, 'Cash added', '', 'HT11-ADD-1631086984', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 165, 185, 0, 0, 0, 0, 0, '2021-09-08 07:43:04', '2021-12-17 05:16:42'),
(82, 10, 'Cash added', '', 'HT11-ADD-1631087039', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 175, 195, 0, 0, 0, 0, 0, '2021-09-08 07:43:59', '2021-12-17 05:16:42'),
(83, 10, 'Cash added', '', 'HT11-ADD-1631087165', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 185, 205, 0, 0, 0, 0, 0, '2021-09-08 07:46:05', '2021-12-17 05:16:42'),
(84, 10, 'Cash added', '', 'HT11-ADD-1631087189', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 195, 215, 0, 0, 0, 0, 0, '2021-09-08 07:46:29', '2021-12-17 05:16:42'),
(85, 10, 'Cash added', '', 'HT11-ADD-1631094291', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 205, 225, 0, 0, 0, 0, 0, '2021-09-08 09:44:51', '2021-12-17 05:16:42'),
(86, 10, 'Cash added', '', 'HT11-ADD-1631094324', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 215, 235, 0, 0, 0, 0, 0, '2021-09-08 09:45:24', '2021-12-17 05:16:42'),
(87, 3, 'Cash added', '', 'HT11-ADD-1631097501', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 471.9, 450, 6116.1, 7038, 0, 0, 0, 0, 0, '2021-09-08 10:38:21', '2021-12-17 05:16:42'),
(88, 3, 'Cash added', '', 'HT11-ADD-1631097551', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 471.9, 450, 6216.1, 7138, 0, 0, 0, 0, 0, '2021-09-08 10:39:11', '2021-12-17 05:16:42'),
(89, 3, 'Cash added', '', 'HT11-ADD-1631097859', 'Wallet', 700, 'confirmed', 0, 0, 0, 0, 0, 700, 471.9, 450, 6916.1, 7838, 0, 0, 0, 0, 0, '2021-09-08 10:44:19', '2021-12-17 05:16:42'),
(90, 3, 'Cash added', '', 'HT11-ADD-1631097949', 'Wallet', 500, 'confirmed', 0, 0, 0, 0, 0, 500, 471.9, 450, 7416.1, 8338, 0, 0, 0, 0, 0, '2021-09-08 10:45:49', '2021-12-17 05:16:42'),
(91, 10, 'Cash added', '', 'HT11-ADD-1631098066', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 225, 245, 0, 0, 0, 0, 0, '2021-09-08 10:47:46', '2021-12-17 05:16:42'),
(92, 10, 'Cash added', '', 'HT11-ADD-1631098094', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 235, 255, 0, 0, 0, 0, 0, '2021-09-08 10:48:14', '2021-12-17 05:16:42'),
(93, 10, 'Cash added', '', 'HT11-ADD-1631120616', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 245, 265, 0, 0, 0, 0, 0, '2021-09-08 17:03:36', '2021-12-17 05:16:42'),
(94, 10, 'Cash added', '', 'HT11-ADD-1631177419', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 255, 275, 0, 0, 0, 0, 0, '2021-09-09 08:50:19', '2021-12-17 05:16:42'),
(95, 3, 'Cash added', '', 'HT11-ADD-1631264978', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 471.9, 450, 7516.1, 8438, 0, 0, 0, 0, 0, '2021-09-10 09:09:38', '2021-12-17 05:16:42'),
(96, 3, 'Cash added', '', 'HT11-ADD-1631265028', 'Wallet', 1000, 'confirmed', 0, 0, 0, 0, 0, 1000, 471.9, 450, 8516.1, 9438, 0, 0, 0, 0, 0, '2021-09-10 09:10:28', '2021-12-17 05:16:42'),
(97, 10, 'Cash added', '', 'HT11-ADD-1631275085', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 265, 285, 0, 0, 0, 0, 0, '2021-09-10 11:58:05', '2021-12-17 05:16:42'),
(98, 10, 'Cash added', '', 'HT11-ADD-1631275122', 'Wallet', 10, 'confirmed', 0, 0, 0, 0, 0, 10, 20, 0, 275, 295, 0, 0, 0, 0, 0, '2021-09-10 11:58:42', '2021-12-17 05:16:42'),
(99, 10, 'Cash added', '', 'HT11-ADD-1631275172', 'Wallet', 100, 'confirmed', 0, 0, 0, 0, 0, 100, 20, 0, 375, 395, 0, 0, 0, 0, 0, '2021-09-10 11:59:32', '2021-12-17 05:16:42'),
(100, 3, 'Contest Joining Fee', '19 - 1', 'HT11-JL-HT11-277-1631870431-3', 'wallet', 19, 'confirmed', 277, 0, 0, 0, 0, 0, 452.9, 450, 8516.1, 9419, 0, 0, 19, 0, 0, '2021-09-17 09:20:31', '2021-12-17 05:16:42'),
(101, 11, 'Mobile bonus', '', 'SP11-EBONUS-6236', 'SP11', 20, 'confirmed', 0, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 0, 0, 0, '2021-09-21 06:00:13', '2021-12-17 05:16:42'),
(102, 12, 'Email bonus', '', 'SP11-EBONUS-8402', 'SP11', 10, 'confirmed', 0, 0, 0, 10, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0, 0, '2021-09-21 08:36:47', '2021-12-17 05:16:42'),
(103, 12, 'Mobile bonus', '', 'SP11-EBONUS-5292', 'SP11', 20, 'confirmed', 0, 0, 0, 20, 0, 0, 30, 0, 0, 30, 0, 0, 0, 0, 0, '2021-09-21 08:49:49', '2021-12-17 05:16:42'),
(104, 12, 'Contest Joining Fee', '0 - 1', 'SP11-JL-SP11-333-1632215093-12', 'wallet', 0, 'confirmed', 333, 0, 0, 0, 0, 0, 30, 0, 0, 30, 0, 0, 0, 0, 0, '2021-09-21 09:04:53', '2021-12-17 05:16:42'),
(105, 13, 'Mobile bonus', '', 'SP11-EBONUS-5170', 'SP11', 20, 'confirmed', 0, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 0, 0, 0, '2021-09-21 09:33:05', '2021-12-17 05:16:42'),
(106, 12, 'Add Fund Adjustments', '', 'SP11-1061632220492', 'admin', 50000, 'confirmed', 0, 0, 0, 0, 0, 50000, 30, 0, 50000, 50030, 0, 0, 0, 0, 0, '2021-09-21 10:34:52', '2021-12-17 05:16:42'),
(107, 12, 'Contest Joining Fee', '40 - 1', 'SP11-JL-SP11-479-1632220700-12', 'wallet', 40, 'confirmed', 479, 0, 0, 0, 0, 0, 30, 0, 49960, 49990, 0, 0, 0, 0, 40, '2021-09-21 10:38:20', '2021-12-17 05:16:42'),
(108, 12, 'Contest Joining Fee', '40 - 1', 'SP11-JL-SP11-479-1632220725-12', 'wallet', 40, 'confirmed', 479, 0, 0, 0, 0, 0, 30, 0, 49920, 49950, 0, 0, 0, 0, 40, '2021-09-21 10:38:45', '2021-12-17 05:16:42'),
(109, 12, 'Contest Joining Fee', '40 - 1', 'SP11-JL-SP11-479-1632220762-12', 'wallet', 40, 'confirmed', 479, 0, 0, 0, 0, 0, 30, 0, 49880, 49910, 0, 0, 0, 0, 40, '2021-09-21 10:39:22', '2021-12-17 05:16:42'),
(110, 12, 'Contest Joining Fee', '40 - 1', 'SP11-JL-SP11-479-1632220799-12', 'wallet', 40, 'confirmed', 479, 0, 0, 0, 0, 0, 30, 0, 49840, 49870, 0, 0, 0, 0, 40, '2021-09-21 10:39:59', '2021-12-17 05:16:42'),
(111, 12, 'Contest Joining Fee', '40 - 1', 'SP11-JL-SP11-479-1632220850-12', 'wallet', 40, 'confirmed', 479, 0, 0, 0, 0, 0, 30, 0, 49800, 49830, 0, 0, 0, 0, 40, '2021-09-21 10:40:50', '2021-12-17 05:16:42'),
(112, 14, 'Mobile bonus', '', 'SP11-EBONUS-2372', 'SP11', 20, 'confirmed', 0, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 0, 0, 0, '2021-09-21 11:37:06', '2021-12-17 05:16:42'),
(113, 14, 'Contest Joining Fee', '0 - 1', 'SP11-JL-SP11-408-1632225781-14', 'wallet', 0, 'confirmed', 408, 0, 0, 0, 0, 0, 20, 0, 0, 20, 0, 0, 0, 0, 0, '2021-09-21 12:03:01', '2021-12-17 05:16:42'),
(114, 14, 'Contest Joining Fee', '0 - 1', 'SP11-JL-SP11-429-1632225797-14', 'wallet', 0, 'confirmed', 429, 0, 0, 0, 0, 0, 20, 0, 0, 20, 0, 0, 0, 0, 0, '2021-09-21 12:03:17', '2021-12-17 05:16:42'),
(115, 15, 'Email bonus', '', 'SP11-EBONUS-8888', 'SP11', 10, 'confirmed', 0, 0, 0, 10, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0, 0, '2021-09-21 12:40:56', '2021-12-17 05:16:42'),
(116, 12, 'Refund', '', 'SP112051632302462-12', 'SP11', 0, 'confirmed', 333, 0, 0, 0, 0, 0, 30, 0, 49800, 49830, 0, 0, 0, 0, 0, '2021-09-22 09:21:02', '2021-12-17 05:16:42'),
(117, 14, 'Refund', '', 'SP111811632302463-14', 'SP11', 0, 'confirmed', 429, 0, 0, 0, 0, 0, 20, 0, 0, 20, 0, 0, 0, 0, 0, '2021-09-22 09:21:03', '2021-12-17 05:16:42'),
(118, 12, 'Contest Joining Fee', '40 - 1', 'SP11-JL-SP11-577-1632303212-12', 'wallet', 40, 'confirmed', 577, 0, 0, 0, 0, 0, 30, 0, 49760, 49790, 0, 0, 0, 0, 40, '2021-09-22 09:33:32', '2021-12-17 05:16:42'),
(119, 12, 'Contest Joining Fee', '40 - 1', 'SP11-JL-SP11-577-1632303235-12', 'wallet', 40, 'confirmed', 577, 0, 0, 0, 0, 0, 30, 0, 49720, 49750, 0, 0, 0, 0, 40, '2021-09-22 09:33:55', '2021-12-17 05:16:42'),
(120, 12, 'Contest Joining Fee', '40 - 1', 'SP11-JL-SP11-577-1632303261-12', 'wallet', 40, 'confirmed', 577, 0, 0, 0, 0, 0, 30, 0, 49680, 49710, 0, 0, 0, 0, 40, '2021-09-22 09:34:21', '2021-12-17 05:16:42'),
(121, 12, 'Contest Joining Fee', '40 - 1', 'SP11-JL-SP11-577-1632303283-12', 'wallet', 40, 'confirmed', 577, 0, 0, 0, 0, 0, 30, 0, 49640, 49670, 0, 0, 0, 0, 40, '2021-09-22 09:34:43', '2021-12-17 05:16:42'),
(122, 12, 'Contest Joining Fee', '40 - 1', 'SP11-JL-SP11-577-1632303320-12', 'wallet', 40, 'confirmed', 577, 0, 0, 0, 0, 0, 30, 0, 49600, 49630, 0, 0, 0, 0, 40, '2021-09-22 09:35:20', '2021-12-17 05:16:42'),
(123, 12, 'Contest Joining Fee', '40 - 1', 'SP11-JL-SP11-577-1632303369-12', 'wallet', 40, 'confirmed', 577, 0, 0, 0, 0, 0, 30, 0, 49560, 49590, 0, 0, 0, 0, 40, '2021-09-22 09:36:09', '2021-12-17 05:16:42'),
(124, 12, 'Contest Joining Fee', '30 - 1', 'SP11-JL-SP11-569-1632305398-12', 'wallet', 30, 'confirmed', 569, 0, 0, 0, 0, 0, 24, 0, 49536, 49560, 0, 0, 6, 0, 24, '2021-09-22 10:09:58', '2021-12-17 05:16:42'),
(125, 16, 'Mobile bonus', '', 'SP11-EBONUS-9110', 'SP11', 20, 'confirmed', 0, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 0, 0, 0, '2021-09-22 10:55:32', '2021-12-17 05:16:42'),
(126, 12, 'Contest Joining Fee', '30 - 1', 'SP11-JL-SP11-618-1632309464-12', 'wallet', 30, 'confirmed', 618, 0, 0, 0, 0, 0, 18, 0, 49512, 49530, 0, 0, 6, 0, 24, '2021-09-22 11:17:44', '2021-12-17 05:16:42'),
(127, 12, 'Contest Joining Fee', '18 - 1', 'SP11-JL-SP11-621-1632309480-12', 'wallet', 18, 'confirmed', 621, 0, 0, 0, 0, 0, 16.2, 0, 49495.8, 49512, 0, 0, 1.8, 0, 16.2, '2021-09-22 11:18:00', '2021-12-17 05:16:42'),
(128, 16, 'Contest Joining Fee', '0 - 1', 'SP11-JL-SP11-554-1632309893-16', 'wallet', 0, 'confirmed', 554, 0, 0, 0, 0, 0, 20, 0, 0, 20, 0, 0, 0, 0, 0, '2021-09-22 11:24:53', '2021-12-17 05:16:42'),
(129, 17, 'Email bonus', '', 'SP11-EBONUS-5270', 'SP11', 10, 'confirmed', 0, 0, 0, 10, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0, 0, '2021-09-22 11:37:50', '2021-12-17 05:16:42'),
(130, 17, 'Contest Joining Fee', '0 - 1', 'SP11-JL-SP11-505-1632313288-17', 'wallet', 0, 'confirmed', 505, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0, 0, '2021-09-22 12:21:28', '2021-12-17 05:16:42'),
(131, 17, 'Contest Joining Fee', '0 - 1', 'SP11-JL-SP11-554-1632313450-17', 'wallet', 0, 'confirmed', 554, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0, 0, '2021-09-22 12:24:10', '2021-12-17 05:16:42'),
(132, 12, 'Contest Joining Fee', '30 - 1', 'SP11-JL-SP11-520-1632314073-12', 'wallet', 30, 'confirmed', 520, 0, 0, 0, 0, 0, 10.2, 0, 49471.8, 49482, 0, 0, 6, 0, 24, '2021-09-22 12:34:33', '2021-12-17 05:16:42'),
(133, 12, 'Contest Joining Fee', '220 - 1', 'SP11-JL-SP11-500-1632314251-12', 'wallet', 220, 'confirmed', 500, 0, 0, 0, 0, 0, 10.2, 0, 49251.8, 49262, 0, 0, 0, 0, 220, '2021-09-22 12:37:31', '2021-12-17 05:16:42'),
(134, 12, 'Contest Joining Fee', '422 - 1', 'SP11-JL-SP11-502-1632314506-12', 'wallet', 422, 'confirmed', 502, 0, 0, 0, 0, 0, 0, 0, 48840, 48840, 0, 0, 10.2, 0, 411.8, '2021-09-22 12:41:46', '2021-12-17 05:16:42'),
(135, 12, 'Contest Joining Fee', '20 - 1', 'SP11-JL-SP11-627-1632315094-12', 'wallet', 20, 'confirmed', 627, 0, 0, 0, 0, 0, 0, 0, 48820, 48820, 0, 0, 0, 0, 20, '2021-09-22 12:51:34', '2021-12-17 05:16:42'),
(136, 12, 'Contest Joining Fee', '20 - 1', 'SP11-JL-SP11-627-1632315131-12', 'wallet', 20, 'confirmed', 627, 0, 0, 0, 0, 0, 0, 0, 48800, 48800, 0, 0, 0, 0, 20, '2021-09-22 12:52:11', '2021-12-17 05:16:42'),
(137, 12, 'Refund', '', 'SP119031632316202-12', 'SP11', 220, 'confirmed', 500, 0, 0, 0, 0, 220, 0, 0, 49020, 49020, 0, 0, 0, 0, 0, '2021-09-22 13:10:02', '2021-12-17 05:16:42'),
(138, 12, 'Refund', '', 'SP111601632316202-12', 'SP11', 422, 'confirmed', 502, 0, 0, 10.2, 0, 411.8, 10.2, 0, 49431.8, 49442, 0, 0, 0, 0, 0, '2021-09-22 13:10:02', '2021-12-17 05:16:42'),
(139, 12, 'Refund', '', 'SP114621632316203-12', 'SP11', 18, 'confirmed', 621, 0, 0, 1.8, 0, 16.2, 12, 0, 49448, 49460, 0, 0, 0, 0, 0, '2021-09-22 13:10:03', '2021-12-17 05:16:42'),
(140, 12, 'Contest Joining Fee', '50 - 1', 'SP11-JL-SP11-667-1632370670-12', 'wallet', 50, 'confirmed', 667, 0, 0, 0, 0, 0, 12, 0, 49398, 49410, 0, 0, 0, 0, 50, '2021-09-23 04:17:50', '2021-12-17 05:16:42'),
(141, 18, 'Mobile bonus', '', 'SP11-EBONUS-6090', 'SP11', 20, 'confirmed', 0, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 0, 0, 0, '2021-09-23 07:54:11', '2021-12-17 05:16:42'),
(142, 12, 'Contest Joining Fee', '50 - 1', 'SP11-JL-SP11-716-1632387451-12', 'wallet', 50, 'confirmed', 716, 0, 0, 0, 0, 0, 12, 0, 49348, 49360, 0, 0, 0, 0, 50, '2021-09-23 08:57:31', '2021-12-17 05:16:42'),
(143, 12, 'Contest Joining Fee', '50 - 1', 'SP11-JL-SP11-765-1632392252-12', 'wallet', 50, 'confirmed', 765, 0, 0, 0, 0, 0, 12, 0, 49298, 49310, 0, 0, 0, 0, 50, '2021-09-23 10:17:32', '2021-12-17 05:16:42'),
(144, 12, 'Challenge Winning Amount', '', 'WIN-8928371645', 'SP11', 40, 'confirmed', 716, 0, 0, 0, 40, 0, 12, 40, 49298, 49350, 0, 0, 0, 0, 0, '2021-09-23 11:02:52', '2021-12-17 05:16:42'),
(145, 12, 'Challenge Winning Amount', '', 'WIN-4077866744', 'SP11', 40, 'confirmed', 667, 0, 0, 0, 40, 0, 12, 80, 49298, 49390, 0, 0, 0, 0, 0, '2021-09-23 11:04:13', '2021-12-17 05:16:42'),
(146, 12, 'Challenge Winning Amount', '', 'WIN-2979752039', 'SP11', 1000, 'confirmed', 520, 0, 0, 0, 1000, 0, 12, 1080, 49298, 50390, 0, 0, 0, 0, 0, '2021-09-23 11:21:47', '2021-12-17 05:16:42'),
(147, 12, 'Challenge Winning Amount', '', 'WIN-477462742', 'SP11', 30, 'confirmed', 627, 0, 0, 0, 30, 0, 12, 1110, 49298, 50420, 0, 0, 0, 0, 0, '2021-09-23 11:21:47', '2021-12-17 05:16:42'),
(148, 12, 'Challenge Winning Amount', '', 'WIN-2600261834', 'SP11', 1000, 'confirmed', 618, 0, 0, 0, 1000, 0, 12, 2110, 49298, 51420, 0, 0, 0, 0, 0, '2021-09-23 11:22:33', '2021-12-17 05:16:42'),
(149, 12, 'Challenge Winning Amount', '', 'WIN-1800156933', 'SP11', 1000, 'confirmed', 569, 0, 0, 0, 1000, 0, 12, 3110, 49298, 52420, 0, 0, 0, 0, 0, '2021-09-23 11:23:34', '2021-12-17 05:16:42'),
(150, 12, 'Challenge Winning Amount', '', 'WIN-1678057727', 'SP11', 900, 'confirmed', 577, 0, 0, 0, 900, 0, 12, 4010, 49298, 53320, 0, 0, 0, 0, 0, '2021-09-23 11:23:34', '2021-12-17 05:16:42'),
(151, 12, 'Challenge Winning Amount', '', 'WIN-1544357729', 'SP11', 600, 'confirmed', 577, 0, 0, 0, 600, 0, 12, 4610, 49298, 53920, 0, 0, 0, 0, 0, '2021-09-23 11:23:34', '2021-12-17 05:16:42'),
(152, 12, 'Challenge Winning Amount', '', 'WIN-8236257731', 'SP11', 600, 'confirmed', 577, 0, 0, 0, 600, 0, 12, 5210, 49298, 54520, 0, 0, 0, 0, 0, '2021-09-23 11:23:34', '2021-12-17 05:16:42'),
(153, 12, 'Challenge Winning Amount', '', 'WIN-1688757730', 'SP11', 600, 'confirmed', 577, 0, 0, 0, 600, 0, 12, 5810, 49298, 55120, 0, 0, 0, 0, 0, '2021-09-23 11:23:34', '2021-12-17 05:16:42'),
(154, 12, 'Challenge Winning Amount', '', 'WIN-8176347921', 'SP11', 353.13065, 'confirmed', 479, 0, 0, 0, 353.13065, 0, 12, 6163.13, 49298, 55473.13, 0, 0, 0, 0, 0, '2021-09-23 11:25:10', '2021-12-17 05:16:42'),
(155, 12, 'Challenge Winning Amount', '', 'WIN-5662947924', 'SP11', 271.87935, 'confirmed', 479, 0, 0, 0, 271.87935, 0, 12, 6435.01, 49298, 55745.01, 0, 0, 0, 0, 0, '2021-09-23 11:25:10', '2021-12-17 05:16:42'),
(156, 3, 'Challenge Winning Amount', '', 'WIN-2800727718', 'SP11', 400, 'confirmed', 277, 0, 0, 0, 400, 0, 452.9, 850, 8516.1, 9819, 0, 0, 0, 0, 0, '2021-09-23 11:26:22', '2021-12-17 05:16:42'),
(157, 3, 'Challenge Winning Amount', '', 'WIN-82795865', 'SP11', 400, 'confirmed', 86, 0, 0, 0, 400, 0, 452.9, 1250, 8516.1, 10219, 0, 0, 0, 0, 0, '2021-09-23 11:26:49', '2021-12-17 05:16:42'),
(158, 12, 'Pan verification pan bonus', '', 'SP11-EBONUS-6667', 'SP11', 10, 'confirmed', 0, 0, 0, 10, 0, 0, 22, 6435.01, 49298, 55755.01, 0, 0, 0, 0, 0, '2021-09-23 12:19:14', '2021-12-17 05:16:42'),
(159, 12, 'Bank verification bank bonus', '', 'SP11-EBONUS-8054', 'SP11', 15, 'confirmed', 0, 0, 0, 15, 0, 0, 37, 6435.01, 49298, 55770.01, 0, 0, 0, 0, 0, '2021-09-23 12:22:18', '2021-12-17 05:16:42'),
(160, 12, 'Amount Withdraw', '', 'WD-12-1632399776', 'wallet', 1000, 'Confirmed', 0, 0, 0, 0, 0, 0, 37, 5435.01, 49298, 54770.01, 0, 1000, 0, 1000, 0, '2021-09-22 18:30:00', '2021-12-17 05:16:42'),
(161, 12, 'Challenge Winning Amount', '', 'WIN-1250376546', 'SP11', 40, 'confirmed', 765, 0, 0, 0, 40, 0, 37, 5475.01, 49298, 54810.01, 0, 0, 0, 0, 0, '2021-09-23 12:55:45', '2021-12-17 05:16:42'),
(162, 19, 'Email bonus', '', 'SP11-EBONUS-5008', 'SP11', 10, 'confirmed', 0, 0, 0, 10, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0, 0, '2021-09-25 15:29:36', '2021-12-17 05:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `updatepoints`
--

CREATE TABLE `updatepoints` (
  `sno` int(11) NOT NULL,
  `matchkey` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `joinid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `points` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `used_offer`
--

CREATE TABLE `used_offer` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userbalance`
--

CREATE TABLE `userbalance` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `balance` decimal(10,2) DEFAULT 0.00,
  `refund` decimal(10,2) DEFAULT 0.00,
  `coins` decimal(12,0) DEFAULT NULL,
  `bonus` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userbalance`
--

INSERT INTO `userbalance` (`id`, `user_id`, `balance`, `refund`, `coins`, `bonus`, `created_at`, `updated_at`) VALUES
(1, 1, '0.00', '0.00', NULL, '500.00', '2021-09-06 06:41:14', '2021-12-17 05:16:44'),
(2, 2, '455.00', '0.00', NULL, '30.00', '2021-09-06 06:46:06', '2021-12-17 05:16:44'),
(3, 3, '8516.10', '1250.00', NULL, '452.90', '2021-09-06 06:51:13', '2021-12-17 05:16:44'),
(4, 4, '0.00', '0.00', NULL, '10.00', '2021-09-06 07:33:32', '2021-12-17 05:16:44'),
(5, 5, '106.00', '0.00', NULL, '5.00', '2021-09-06 12:41:42', '2021-12-17 05:16:44'),
(6, 6, '0.00', '0.00', NULL, '10.00', '2021-09-07 05:08:27', '2021-12-17 05:16:44'),
(7, 7, '0.00', '0.00', NULL, '20.00', '2021-09-07 06:05:01', '2021-12-17 05:16:44'),
(8, 8, '0.00', '0.00', NULL, '20.00', '2021-09-07 06:11:52', '2021-12-17 05:16:44'),
(9, 9, '2410.00', '0.00', NULL, '20.00', '2021-09-08 06:27:59', '2021-12-17 05:16:44'),
(10, 10, '375.00', '0.00', NULL, '20.00', '2021-09-08 07:32:11', '2021-12-17 05:16:44'),
(11, 11, '0.00', '0.00', NULL, '20.00', '2021-09-21 06:00:13', '2021-12-17 05:16:44'),
(12, 12, '49298.00', '5475.01', NULL, '37.00', '2021-09-21 08:36:47', '2021-12-17 05:16:44'),
(13, 13, '0.00', '0.00', NULL, '20.00', '2021-09-21 09:33:05', '2021-12-17 05:16:44'),
(14, 14, '0.00', '0.00', NULL, '20.00', '2021-09-21 11:37:06', '2021-12-17 05:16:44'),
(15, 15, '0.00', '0.00', NULL, '10.00', '2021-09-21 12:40:56', '2021-12-17 05:16:44'),
(16, 16, '0.00', '0.00', NULL, '20.00', '2021-09-22 10:55:32', '2021-12-17 05:16:44'),
(17, 17, '0.00', '0.00', NULL, '10.00', '2021-09-22 11:37:50', '2021-12-17 05:16:44'),
(18, 18, '0.00', '0.00', NULL, '20.00', '2021-09-23 07:54:11', '2021-12-17 05:16:44'),
(19, 19, '0.00', '0.00', NULL, '10.00', '2021-09-25 15:29:36', '2021-12-17 05:16:44'),
(20, 20, '0.00', '0.00', NULL, '0.00', '2021-11-16 06:33:30', '2021-12-17 05:16:44'),
(21, 21, '0.00', '0.00', NULL, '0.00', '2021-11-16 06:46:37', '2021-12-17 05:16:44'),
(22, 22, '0.00', '0.00', NULL, '0.00', '2021-11-16 06:51:11', '2021-12-17 05:16:44'),
(23, 35, '0.00', '0.00', NULL, '0.00', '2021-11-26 09:37:59', '2021-12-17 05:16:44'),
(24, 58, '0.00', '0.00', NULL, '0.00', '2021-12-29 04:54:23', '2021-12-29 04:54:23'),
(25, 59, '0.00', '0.00', NULL, '0.00', '2021-12-29 05:42:13', '2021-12-29 05:42:13'),
(26, 60, '0.00', '0.00', NULL, '0.00', '2021-12-29 05:42:59', '2021-12-29 05:42:59'),
(27, 61, '0.00', '0.00', NULL, '0.00', '2021-12-29 05:43:45', '2021-12-29 05:43:45'),
(28, 62, '455.00', '0.00', NULL, '0.00', '2021-12-29 05:44:37', '2021-12-30 10:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT 2,
  `permissions` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `masterpassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batting` int(11) DEFAULT 0,
  `bowling` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`, `image`, `role`, `permissions`, `remember_token`, `masterpassword`, `batting`, `bowling`, `created_at`, `updated_at`) VALUES
(4, 'Admin', 'Admin@gmail.com', '$2y$10$MoWX1xa0S9kGG5YvE4ShCOBmoHQNeTb5I1VlEvS1RtTcOi/2eXMLG', '9800000000', 'avtar1.profile-1606805561.png', 1, NULL, 'PK9pCTfr3L3SAIqVXnMqGpf4q0u6DkZv8yLDjKoXxgWPF4OPNTizDttnKErB', 'masterpassword', 0, 0, '2020-04-27 06:42:34', '2021-12-17 05:16:44'),
(5, 'Rashmi Goyal', 'rashmi.img@gmail.com', '$2y$10$MoWX1xa0S9kGG5YvE4ShCOBmoHQNeTb5I1VlEvS1RtTcOi/2eXMLG', '9799248077', NULL, 2, 'SettingsController@ui_settings,SettingsController@facebook_settings,SettingsController@google_settings,SettingsController@alert_settings,SeriesController@create,SeriesController@edit,SeriesController@index,SeriesController@series_datatable,SeriesController@updateseriesstatus,TeamController@edit_team,TeamController@view_team,TeamController@view_team_datatable,TeamController@downloadteamdata,PlayerController@edit_player,PlayerController@view_player,PlayerController@view_player_datatable,PlayerController@saveplayerroles,PlayerController@addplayermanually,PlayerController@downloadallplayerdetails,MatchController@upcoming_matches,MatchController@upcoming_matches_datatable,MatchController@editmatch,MatchController@importsquad,MatchController@allmatches,MatchController@allmatches_datatable,PlayingController@updateplaying11,RegisteruserController@index,RegisteruserController@view_users_datatable,RegisteruserController@getuserdetails,RegisteruserController@edituserdetails,RegisteruserController@update_userdetails,RegisteruserController@updateuserstatus,RegisteruserController@downloadalluserdetails,RegisteruserController@downloadalluserstransaction,RegisteruserController@viewtransactions,RegisteruserController@viewtransactions_table,RegisteruserController@userswallet,RegisteruserController@userswallet_table,AdminwalletController@adminwallet,AdminwalletController@wallet_list,AdminwalletController@giveadminwallet,AdminwalletController@searchadminwallet,AdminwalletController@deductmoneyinwallet,AdminwalletController@addmoneyinwallet,AdminwalletController@details,VerificationController@verifypan,VerificationController@verifypan_table,VerificationController@viewpandetails,VerificationController@editpandetails,VerificationController@updatepantatus,VerificationController@verifybankaccount,VerificationController@verifybankaccount_table,VerificationController@viewbankdetails,VerificationController@editbankdetails,VerificationController@updatebanktatus,VerificationController@withdraw_amount,VerificationController@withdrawl_amount_table,VerificationController@downloadwithdrawaldata,VerificationController@approve,VerificationController@withdrawl_amount_table,NotificationController@pushnotifications,NotificationController@getusers,NotificationController@addmodule,NotificationController@import,NotificationController@emailnotifications, NotificationController@getusers,NotificationController@addmodule,NotificationController@import,NotificationController@smsnotifications, NotificationController@getusers,NotificationController@addmodule,NotificationController@import,ContestFullDetailController@fulldetail1,ContestFullDetailController@allcontests,ContestFullDetailController@allusers,ContestFullDetailController@user_team,ContestFullDetailController@viewjoinusers_datatable,ContestController@create_category,ContestController@edit_contest_category,ContestController@view_contest_category,ContestController@delete_contest_category,ContestController@view_search_contest_category,ContestController@create_global,ContestController@addpricecard,ContestController@editglobalcontest,ContestController@global_index,ContestController@global_index_datatable,ContestController@globalcat_muldelete,ContestController@delete_global_contest,ContestController@addpricecard,ContestController@deletematchpricecard,ContestController@create_custom,ContestController@editcustomcontest,ContestController@create_custom_contest,ContestController@delete_customcontest,ContestController@makeConfirmed,ContestController@importdata,ContestController@contestcancel,ContestController@addmatchpricecard,ContestController@deletepricecard,ResultController@match_result,ResultController@match_detail,ResultController@updatepoints,ResultController@batting_points,ResultController@bowling_points,ResultController@fielding_points,ResultController@team_points,ResultController@match_score,ResultController@select_join_person,ResultController@refund_allamount,ResultController@refund_amount,ResultController@refundprocess,ResultController@updatematchfinalstatus,ResultController@updatescores,ResultController@userpoints,ResultController@match_points,ResultController@viewwinners,ResultController@distribute_winning_amount,SidebannerController@view_sidebanner,SidebannerController@view_sidebanner_table,SidebannerController@show_sidebanner,SidebannerController@add_sidebanner,SidebannerController@sidebanner,SidebannerController@edit_sidebanner,SidebannerController@update_sidebanner,SidebannerController@delete_sidebanner,GeneralTabsController@index,GeneralTabsController@viewrefer,GeneralTabsController@delete,GeneralTabsController@deleterefer,AddpointController@pointt,AddpointController@add_pointt,OffersController@popular,OffersController@getOffers,OffersController@addOffer,OffersController@editoffer,OffersController@deleteoffer,YoutuberController@view_youtuber,YoutuberController@view_youtuber_dt,YoutuberController@add_youtuber,PointSystemController@point_system,PointSystemController@update_point_system', NULL, 'masterpassword', 0, 0, '2021-04-13 09:34:37', '2021-12-17 05:16:44'),
(6, 'rashmii', 'rashminew.img@gmail.com', '$2y$10$fkbScymTismpVvF0Bhhe4OXsIOaPYe2V/bNRgd0pudpE49bbe58du', '8112235184', NULL, 2, 'MatchController@upcoming_matches,MatchController@upcoming_matches_datatable,MatchController@editmatch,MatchController@importsquad,MatchController@playerroles,MatchController@viewmatchdetails,MatchController@launchmatch,MatchController@updatelogo,MatchController@importdatafromapi,MatchController@launch,MatchController@deleteplayer,MatchController@DownloadPlayer,MatchController@DownloadPlayer2,MatchController@UploadPlayer,MatchController@UploadPlayer2', NULL, 'masterpassword', 0, 0, '2021-04-16 04:45:33', '2021-12-17 05:16:44'),
(7, 'Starter', 'starter@gmail.com', '$2y$10$MoWX1xa0S9kGG5YvE4ShCOBmoHQNeTb5I1VlEvS1RtTcOi/2eXMLG', '8888888888', NULL, 1, NULL, NULL, 'masterpassword', 0, 0, '2021-07-15 10:24:57', '2021-12-17 05:16:44'),
(8, 'sub admin', 'subadmin@gmail.com', '$2y$10$S5p6soI/2HODCmTa6kdcROpCFhCSelbMatKQRxY5ONymw8R191G3m', '7062334389', NULL, 2, 'RegisteruserController@index,RegisteruserController@view_users_datatable,RegisteruserController@getuserdetails,RegisteruserController@edituserdetails,RegisteruserController@update_userdetails,RegisteruserController@updateuserstatus,RegisteruserController@downloadalluserdetails,RegisteruserController@downloadalluserstransaction,RegisteruserController@viewtransactions,RegisteruserController@viewtransactions_table,RegisteruserController@userswallet,RegisteruserController@userswallet_table,AdminwalletController@adminwallet,AdminwalletController@wallet_list,AdminwalletController@giveadminwallet,AdminwalletController@searchadminwallet,AdminwalletController@deductmoneyinwallet,AdminwalletController@addmoneyinwallet,AdminwalletController@details,VerificationController@verifypan,VerificationController@verifypan_table,VerificationController@viewpandetails,VerificationController@editpandetails,VerificationController@updatepantatus,VerificationController@verifybankaccount,VerificationController@verifybankaccount_table,VerificationController@viewbankdetails,VerificationController@editbankdetails,VerificationController@updatebanktatus,VerificationController@withdraw_amount,VerificationController@withdrawl_amount_table,VerificationController@downloadwithdrawaldata,VerificationController@approve,VerificationController@withdrawl_amount_table,NotificationController@pushnotifications,NotificationController@getusers,NotificationController@addmodule,NotificationController@import,NotificationController@smsnotifications, NotificationController@getusers,NotificationController@addmodule,NotificationController@import,SidebannerController@view_sidebanner,SidebannerController@view_sidebanner_table,SidebannerController@show_sidebanner,SidebannerController@add_sidebanner,SidebannerController@sidebanner,SidebannerController@edit_sidebanner,SidebannerController@update_sidebanner,SidebannerController@delete_sidebanner,GeneralTabsController@index,GeneralTabsController@viewrefer,GeneralTabsController@delete,GeneralTabsController@deleterefer,CategoryController@viewcategory,CategoryController@category_datatable,CategoryController@create_category,CategoryController@edit_category,CategoryController@dele_category,CategoryController@enbdisbcategory,ProductController@view_product,ProductController@view_product_datatable,ProductController@add_product,ProductController@add_new_product,ProductController@getproductsubcategory,ProductController@getproductbrand,ProductController@get_div,ProductController@edit_product,ProductController@delete_product,SubcategoryController@viewcategory,SubcategoryController@category_datatable,SubcategoryController@create_category,SubcategoryController@edit_category,SubcategoryController@dele_category,SubcategoryController@enbdisbcategory,BrandsController@viewbrand,BrandsController@brand_datatable,BrandsController@create_brand,BrandsController@getsubcategory,BrandsController@edit_brand,BrandsController@dele_brand,BrandsController@enbdisbbrand,DeliveryBoyController@index,DeliveryBoyController@view_users_datatable,DeliveryBoyController@getuserdetails,DeliveryBoyController@add_delivery_boy,DeliveryBoyController@edit_delivery_boy,DeliveryBoyController@update_userdetails,DeliveryBoyController@updateuserstatus,DeliveryBoyController@downloadalluserdetails,DeliveryBoyController@downloadalluserstransaction,DeliveryBoyController@viewtransactions,DeliveryBoyController@viewtransactions_table,DeliveryBoyController@userswallet,DeliveryBoyController@userswallet_table,OrdersController@assigned_orders,OrdersController@view_orders,OrdersController@orders_datatable,OrdersController@view_orderproduct,OrdersController@orderproduct_datatable,OrdersController@accept,OrdersController@cancle_order,OrdersController@ready,OrdersController@deliverd,OrdersController@preparing,OrdersController@downloadinvoice', NULL, 'masterpassword', 0, 0, '2021-11-17 07:15:09', '2021-12-17 05:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_avatar`
--

CREATE TABLE `user_avatar` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `avatar_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_bonus`
--

CREATE TABLE `user_bonus` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `fromid` int(11) NOT NULL,
  `joinid` int(11) DEFAULT 0,
  `amount` double NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matchkey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `challengeid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `txnid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_name`
--

CREATE TABLE `user_name` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_verify`
--

CREATE TABLE `user_verify` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `mobile_verify` int(11) DEFAULT 0,
  `email_verify` int(11) DEFAULT 0,
  `pan_verify` int(11) DEFAULT -1,
  `bank_verify` int(11) DEFAULT -1,
  `androidbonus` int(11) DEFAULT 0,
  `mobilebonus` int(11) DEFAULT 0,
  `emailbonus` int(11) NOT NULL DEFAULT 0,
  `panbonus` int(11) DEFAULT 0,
  `bankbonus` int(11) DEFAULT 0,
  `signupbonus` int(11) DEFAULT 0,
  `referbonus` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_verify`
--

INSERT INTO `user_verify` (`id`, `userid`, `mobile_verify`, `email_verify`, `pan_verify`, `bank_verify`, `androidbonus`, `mobilebonus`, `emailbonus`, `panbonus`, `bankbonus`, `signupbonus`, `referbonus`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, -1, -1, 0, 1, 0, 0, 0, 0, 0, '2021-09-06 06:41:14', '2021-12-17 05:16:46'),
(2, 2, 1, 1, 0, -1, 0, 1, 0, 0, 0, 1, 0, '2021-09-06 06:46:06', '2021-12-17 05:16:46'),
(3, 3, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, '2021-09-06 06:51:13', '2021-12-17 05:16:46'),
(4, 4, 0, 1, -1, -1, 0, 0, 0, 0, 0, 1, 0, '2021-09-06 07:33:32', '2021-12-17 05:16:46'),
(5, 5, 1, 1, -1, -1, 0, 1, 0, 0, 0, 1, 0, '2021-09-06 12:41:42', '2021-12-17 05:16:46'),
(6, 6, 0, 1, -1, -1, 0, 0, 0, 0, 0, 1, 0, '2021-09-07 05:08:27', '2021-12-17 05:16:46'),
(7, 7, 1, 0, -1, -1, 0, 1, 0, 0, 0, 0, 0, '2021-09-07 06:05:01', '2021-12-17 05:16:46'),
(8, 8, 1, 0, -1, -1, 0, 1, 0, 0, 0, 0, 0, '2021-09-07 06:11:52', '2021-12-17 05:16:46'),
(9, 9, 1, 0, -1, -1, 0, 1, 0, 0, 0, 0, 0, '2021-09-08 06:27:59', '2021-12-17 05:16:46'),
(10, 10, 1, 0, -1, -1, 0, 1, 0, 0, 0, 0, 0, '2021-09-08 07:32:11', '2021-12-17 05:16:46'),
(11, 11, 1, 0, -1, -1, 0, 1, 0, 0, 0, 0, 0, '2021-09-21 06:00:13', '2021-12-17 05:16:46'),
(12, 12, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, '2021-09-21 08:36:47', '2021-12-17 05:16:46'),
(13, 13, 1, 0, -1, -1, 0, 1, 0, 0, 0, 0, 0, '2021-09-21 09:33:05', '2021-12-17 05:16:46'),
(14, 14, 1, 0, -1, -1, 0, 1, 0, 0, 0, 0, 0, '2021-09-21 11:37:06', '2021-12-17 05:16:46'),
(15, 15, 0, 1, -1, -1, 0, 0, 0, 0, 0, 1, 0, '2021-09-21 12:40:56', '2021-12-17 05:16:46'),
(16, 16, 1, 0, -1, -1, 0, 1, 0, 0, 0, 0, 0, '2021-09-22 10:55:32', '2021-12-17 05:16:46'),
(17, 17, 0, 1, -1, -1, 0, 0, 0, 0, 0, 1, 0, '2021-09-22 11:37:50', '2021-12-17 05:16:46'),
(18, 18, 1, 0, -1, -1, 0, 1, 0, 0, 0, 0, 0, '2021-09-23 07:54:11', '2021-12-17 05:16:46'),
(19, 19, 0, 1, -1, -1, 0, 0, 0, 0, 0, 1, 0, '2021-09-25 15:29:36', '2021-12-17 05:16:46'),
(20, 20, 1, 1, -1, -1, 0, 1, 1, 0, 0, 0, 0, '2021-11-16 06:33:30', '2021-12-17 05:16:46'),
(21, 21, 1, 1, -1, -1, 0, 1, 1, 0, 0, 0, 0, '2021-11-16 06:46:37', '2021-12-17 05:16:46'),
(22, 22, 1, 1, -1, -1, 0, 1, 1, 0, 0, 0, 0, '2021-11-16 06:51:11', '2021-12-17 05:16:46'),
(23, 35, 1, 1, -1, -1, 0, 1, 1, 0, 0, 0, 0, '2021-11-26 09:37:59', '2021-12-17 05:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `optionsquantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcash_bonus`
--
ALTER TABLE `addcash_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `androidappid`
--
ALTER TABLE `androidappid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `appkey` (`appkey`(191)),
  ADD KEY `user_id_2` (`user_id`,`appkey`(255));

--
-- Indexes for table `androidversion`
--
ALTER TABLE `androidversion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `version` (`version`);

--
-- Indexes for table `avatar`
--
ALTER TABLE `avatar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `userid_2` (`userid`);

--
-- Indexes for table `bonus_amount`
--
ALTER TABLE `bonus_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonus_refered`
--
ALTER TABLE `bonus_refered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(255)),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `general_tabs`
--
ALTER TABLE `general_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genral_tab`
--
ALTER TABLE `genral_tab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderedproduct`
--
ALTER TABLE `orderedproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_assigned`
--
ALTER TABLE `orders_assigned`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pancard`
--
ALTER TABLE `pancard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `userid_2` (`userid`,`pan_number`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `paymentprocess`
--
ALTER TABLE `paymentprocess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popup_notification`
--
ALTER TABLE `popup_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registerusers`
--
ALTER TABLE `registerusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile` (`mobile`),
  ADD KEY `email` (`email`),
  ADD KEY `refer_id` (`refer_id`),
  ADD KEY `username` (`username`),
  ADD KEY `email_2` (`email`,`mobile`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidebanner`
--
ALTER TABLE `sidebanner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_refer`
--
ALTER TABLE `special_refer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tdsdetails`
--
ALTER TABLE `tdsdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempuser`
--
ALTER TABLE `tempuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `mobile` (`mobile`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `challengeid` (`challengeid`),
  ADD KEY `seriesid` (`seriesid`),
  ADD KEY `joinid` (`joinid`),
  ADD KEY `type` (`type`),
  ADD KEY `userid_2` (`userid`,`type`),
  ADD KEY `userid_3` (`userid`,`challengeid`);

--
-- Indexes for table `updatepoints`
--
ALTER TABLE `updatepoints`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `used_offer`
--
ALTER TABLE `used_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userbalance`
--
ALTER TABLE `userbalance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_avatar`
--
ALTER TABLE `user_avatar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bonus`
--
ALTER TABLE `user_bonus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `fromid` (`fromid`),
  ADD KEY `matchkey` (`matchkey`),
  ADD KEY `challengeid` (`challengeid`),
  ADD KEY `txnid` (`txnid`),
  ADD KEY `userid_2` (`userid`,`matchkey`),
  ADD KEY `userid_3` (`userid`,`matchkey`,`challengeid`);

--
-- Indexes for table `user_name`
--
ALTER TABLE `user_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_verify`
--
ALTER TABLE `user_verify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `mobile_verify` (`mobile_verify`),
  ADD KEY `email_verify` (`email_verify`),
  ADD KEY `pan_verify` (`pan_verify`),
  ADD KEY `bank_verify` (`bank_verify`),
  ADD KEY `userid_2` (`userid`,`mobile_verify`),
  ADD KEY `userid_3` (`userid`,`email_verify`),
  ADD KEY `userid_4` (`userid`,`mobile_verify`,`email_verify`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcash_bonus`
--
ALTER TABLE `addcash_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `androidappid`
--
ALTER TABLE `androidappid`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `avatar`
--
ALTER TABLE `avatar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bonus_amount`
--
ALTER TABLE `bonus_amount`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bonus_refered`
--
ALTER TABLE `bonus_refered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_tabs`
--
ALTER TABLE `general_tabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orderedproduct`
--
ALTER TABLE `orderedproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT for table `orders_assigned`
--
ALTER TABLE `orders_assigned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pancard`
--
ALTER TABLE `pancard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paymentprocess`
--
ALTER TABLE `paymentprocess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `popup_notification`
--
ALTER TABLE `popup_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registerusers`
--
ALTER TABLE `registerusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2303;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sidebanner`
--
ALTER TABLE `sidebanner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `special_refer`
--
ALTER TABLE `special_refer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tdsdetails`
--
ALTER TABLE `tdsdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tempuser`
--
ALTER TABLE `tempuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `used_offer`
--
ALTER TABLE `used_offer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userbalance`
--
ALTER TABLE `userbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_avatar`
--
ALTER TABLE `user_avatar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_bonus`
--
ALTER TABLE `user_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_verify`
--
ALTER TABLE `user_verify`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
