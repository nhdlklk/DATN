-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2020 at 05:43 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel56`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `avatar`, `active`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Hoàng Duy', 'nhdlklk@gmail.com', NULL, NULL, 1, '$2y$10$e.BwXDnuDCYHnZ5fuK0MXOgd2JSBNnceXgc9Ka/MKuPMFuH9IQ5Py', 'ITjtYde8YDfTTvQ5uAj3PlRGgA0hTMWn1JbaCduMjjHfUd0CFxyenilv2HwL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_author_id` int(11) NOT NULL DEFAULT 0,
  `a_description_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_title_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_description`, `a_content`, `a_active`, `a_author_id`, `a_description_seo`, `a_title_seo`, `a_avatar`, `a_view`, `created_at`, `updated_at`) VALUES
(6, 'Cách di chuyển dữ liệu qua thẻ nhớ trên Samsung Galaxy J7 2016', 'cach-di-chuyen-du-lieu-qua-the-nho-tren-samsung-galaxy-j7-2016', 'Bạn là tín đồ thích quay phim chụp ảnh trên điện thoại nhưng dường như điện thoại bạn không đáp ứng đủ bộ nhớ trong để lưu trữ.', '<h3><strong>1. Lợi &iacute;ch của việc chuyển dữ liệu qua thẻ nhớ tr&ecirc;n Samsung Galaxy J7 2016</strong></h3>\r\n\r\n<p>- Tận dụng được thẻ nhớ l&agrave;m trống bộ nhớ m&aacute;y, gi&uacute;p bạn c&agrave;i được nhiều game, ứng dụng hơn.</p>\r\n\r\n<p>- Thoải m&aacute;i lưu trữ h&igrave;nh ảnh, nhạc, phim kh&ocirc;ng lo lắng phải kiểm tra bộ nhớ m&aacute;y.</p>\r\n\r\n<h3><strong>2. Hướng dẫn c&aacute;ch di chuyển dữ liệu qua thẻ nhớ tr&ecirc;n Samsung Galaxy J7 2016</strong></h3>\r\n\r\n<p><strong>Hướng dẫn nhanh:</strong>&nbsp;Chọn Bộ nhớ trong ở File của bạn &gt; Chọn dữ liệu di chuyển &gt; Chọn vị tr&iacute; chuyển đến tr&ecirc;n Thẻ nhớ SD.</p>\r\n\r\n<h4><strong>- Bước 1: Chọn Bộ nhớ trong ở File của bạn</strong></h4>\r\n\r\n<p>Đầu ti&ecirc;n tại m&agrave;n h&igrave;nh ch&iacute;nh bạn t&igrave;m đến&nbsp;<strong>File của bạn</strong>&nbsp;&gt; Chọn v&agrave;o&nbsp;<strong>Bộ nhớ trong.</strong></p>\r\n\r\n<p><img alt=\"Chọn Bộ nhớ trong ở File của bạn\" src=\"//cdn.tgdd.vn/hoi-dap/832087/di-chuyen-du-lieu-qua-the-nho-tren-dien-thoai-sams-01.jpg\" title=\"Chọn Bộ nhớ trong ở File của bạn\" /></p>\r\n\r\n<h4><strong>- Bước 2: Chọn dữ liệu di chuyển</strong></h4>\r\n\r\n<p>Tiếp theo bạn<strong>&nbsp;nhấn giữ v&agrave;o dữ liệu</strong>&nbsp;m&agrave; bạn muốn di chuyển để chọn &gt; Chọn v&agrave;o&nbsp;<strong>biểu tượng 3 chấm</strong>&nbsp;ở g&oacute;c tr&ecirc;n m&agrave;n h&igrave;nh &gt; Chọn&nbsp;<strong>Di chuyển.</strong></p>\r\n\r\n<p><img alt=\"Chọn dữ liệu di chuyển\" src=\"//cdn.tgdd.vn/hoi-dap/832087/di-chuyen-du-lieu-qua-the-nho-tren-dien-thoai-sams-02.jpg\" title=\"Chọn dữ liệu di chuyển\" /></p>\r\n\r\n<h4><strong>- Bước 3: Chọn vị tr&iacute; chuyển đến tr&ecirc;n Thẻ nhớ SD</strong></h4>\r\n\r\n<p>L&uacute;c n&agrave;y bạn chọn v&agrave;o&nbsp;<strong>Thẻ nhớ SD</strong>&nbsp;&gt; Chọn đến&nbsp;<strong>vị tr&iacute; chuyển đến</strong>&nbsp;tr&ecirc;n thẻ &gt; Chọn&nbsp;<strong>Ho&agrave;n tất.</strong></p>\r\n\r\n<p><img alt=\"Chọn vị trí di chuyển trên Thẻ nhớ SD\" src=\"//cdn.tgdd.vn/hoi-dap/832087/di-chuyen-du-lieu-qua-the-nho-tren-dien-thoai-sams-3.jpg\" title=\"Chọn vị trí di chuyển trên Thẻ nhớ SD\" /></p>\r\n\r\n<p>Như vậy với v&agrave;i thao t&aacute;c đơn giản bạn c&oacute; thể di chuyển dữ liệu qua thẻ nhớ tr&ecirc;n Samsung Galaxy J7 2016 rồi. Hy vọng b&agrave;i viết n&agrave;y sẽ gi&uacute;p &iacute;ch cho bạn.</p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng.</p>', 1, 0, 'Cách di chuyển dữ liệu qua thẻ nhớ trên Samsung Galaxy J7 2016', 'Cách di chuyển dữ liệu qua thẻ nhớ trên Samsung Galaxy J7 2016', '2020-05-25__di-chuyen-du-lieu-qua-the-nho-tren-dien-thoai-sams-thumb1.jpg', 0, '2020-05-24 17:50:46', '2020-05-24 17:55:02'),
(7, 'Hướng dẫn cách xóa, thay đổi ảnh đại diện, ảnh bìa trên Zalo', 'huong-dan-cach-xoa-thay-doi-anh-dai-dien-anh-bia-tren-zalo', 'Bạn muốn xóa ảnh đại diện và ảnh bìa để trở về ảnh mặc định của Zalo? Hiện nay Zalo vẫn chưa hỗ trợ xóa ảnh đại diện và ảnh nền', '<h3><strong>1. C&aacute;ch thay đổi ảnh đại diện</strong></h3>\r\n\r\n<h4><strong>- Bước 1:</strong>&nbsp;<strong>Truy cập trang c&aacute; nh&acirc;n</strong></h4>\r\n\r\n<p>Trong giao diện ch&iacute;nh của Zalo, chọn mục&nbsp;<strong>Th&ecirc;m</strong>&nbsp;(biểu tượng 4 &ocirc; vu&ocirc;ng) &gt; V&agrave;o trang c&aacute; nh&acirc;n của bạn.</p>\r\n\r\n<p><img alt=\"Vào trang cá nhân\" src=\"//cdn.tgdd.vn/hoi-dap/746357/huong-dan-cach-xoa-thay-doi-anh-dai-dien-anh-bia-tren-zalo - 11e.jpg\" title=\"Vào trang cá nhân\" /></p>\r\n\r\n<h4><strong>- Bước 2:</strong>&nbsp;<strong>T&igrave;m ảnh c&oacute; sẵn</strong></h4>\r\n\r\n<p>Trong trang c&aacute; nh&acirc;n của bạn, nhấn v&agrave;o ảnh đại diện &gt; Chọn mục&nbsp;<strong>Chọn ảnh c&oacute; sẵn</strong>.</p>\r\n\r\n<p><img alt=\"Chọn ảnh đại diện có sẵn\" src=\"//cdn.tgdd.vn/hoi-dap/746357/huong-dan-cach-xoa-thay-doi-anh-dai-dien-anh-bia-tren-zalo - 21e.jpg\" title=\"Chọn ảnh đại diện có sẵn\" /></p>\r\n\r\n<h4><strong>- Bước 3:</strong>&nbsp;<strong>Thay đổi ảnh đại diện</strong></h4>\r\n\r\n<p>Chọn ảnh mong muốn &gt; Nhấn&nbsp;<strong>Xong</strong>.</p>\r\n\r\n<p><img alt=\"Thay ảnh đại diện\" src=\"//cdn.tgdd.vn/hoi-dap/746357/huong-dan-cach-xoa-thay-doi-anh-dai-dien-anh-bia-tren-zalo - 31e.jpg\" title=\"Thay ảnh đại diện\" /></p>\r\n\r\n<h3><strong>2. C&aacute;ch thay đổi ảnh b&igrave;a​</strong></h3>\r\n\r\n<h4><strong>- Bước 1:</strong>&nbsp;<strong>Truy cập trang c&aacute; nh&acirc;n</strong></h4>\r\n\r\n<p>Trong giao diện ch&iacute;nh của Zalo, chọn mục&nbsp;<strong>Th&ecirc;m&nbsp;</strong>(biểu tượng 4 &ocirc; vu&ocirc;ng) &gt; V&agrave;o trang c&aacute; nh&acirc;n của bạn.</p>\r\n\r\n<p><img alt=\"Vào trang cá nhân\" src=\"//cdn.tgdd.vn/hoi-dap/746357/huong-dan-cach-xoa-thay-doi-anh-dai-dien-anh-bia-tren-zalo - 12e.jpg\" title=\"Vào trang cá nhân\" /></p>\r\n\r\n<h4><strong>- Bước 2:</strong>&nbsp;<strong>T&igrave;m ảnh c&oacute; sẵn</strong></h4>\r\n\r\n<p>Trong trang c&aacute; nh&acirc;n của bạn, nhấn v&agrave;o ảnh b&igrave;a &gt; Chọn mục&nbsp;<strong>Chọn ảnh c&oacute; sẵn</strong>.</p>\r\n\r\n<p><img alt=\"Chọn ảnh bìa có sẵn\" src=\"//cdn.tgdd.vn/hoi-dap/746357/huong-dan-cach-xoa-thay-doi-anh-dai-dien-anh-bia-tren-zalo - 22e.jpg\" title=\"Chọn ảnh bìa có sẵn\" /></p>\r\n\r\n<h4><strong>- Bước 3:</strong>&nbsp;<strong>Thay đổi ảnh b&igrave;a</strong></h4>\r\n\r\n<p>Chọn ảnh mong muốn &gt; Nhấn&nbsp;<strong>Xong</strong>.</p>\r\n\r\n<p><img alt=\"Thay ảnh bìa\" src=\"//cdn.tgdd.vn/hoi-dap/746357/huong-dan-cach-xoa-thay-doi-anh-dai-dien-anh-bia-tren-zalo - 32e.jpg\" title=\"Thay ảnh bìa\" />​</p>\r\n\r\n<p>Hy vọng sau b&agrave;i viết n&agrave;y, bạn c&oacute; thể chuyển về ảnh mặc định của Zalo. Cảm ơn c&aacute;c bạn đ&atilde; quan t&acirc;m theo d&otilde;i!</p>', 1, 0, 'Hướng dẫn cách xóa, thay đổi ảnh đại diện, ảnh bìa trên Zalo', 'Hướng dẫn cách xóa, thay đổi ảnh đại diện, ảnh bìa trên Zalo', '2020-05-25__huong-dan-cach-xoa-thay-doi-anh-dai-dien-anh-bia-tren-zalo-thumb.jpg', 0, '2020-05-24 18:01:29', '2020-06-30 10:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_active` tinyint(4) NOT NULL DEFAULT 1,
  `c_total_product` int(11) NOT NULL DEFAULT 0,
  `c_title_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_keyword_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `c_home` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_icon`, `c_avatar`, `c_active`, `c_total_product`, `c_title_seo`, `c_description_seo`, `c_keyword_seo`, `created_at`, `updated_at`, `c_home`) VALUES
(9, 'Iphone', 'iphone', 'fa-mobile', NULL, 1, 0, 'iphone', 'iPhone', NULL, '2020-05-12 01:03:00', '2020-06-17 03:35:17', 1),
(10, 'SamSung', 'samsung', 'fa-mobile', NULL, 0, 0, 'Điện thoại new 2020', 'Điện thoại new 2020', NULL, '2020-05-12 01:03:50', '2020-06-09 03:28:41', 1),
(11, 'Oppo', 'oppo', 'fa-mobile', NULL, 0, 0, 'Điện thoại new 2020', 'Điện thoại new 2020', NULL, '2020-05-12 01:04:09', '2020-06-30 13:51:24', 1),
(12, 'Xiaomi', 'xiaomi', 'fa-mobile', NULL, 0, 0, 'Điện thoại new 2020', 'Điện thoại new 2020a', NULL, '2020-05-12 01:04:35', '2020-06-17 03:35:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `c_name`, `c_email`, `c_title`, `c_content`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Duy', 'nhdlklk@gmail.com', '1212', '121212', 1, NULL, '2020-06-09 00:42:19'),
(2, 'Duy121212', 'nhdlklk1212@gmail.com', '121212', '12121212', 1, '2020-05-07 01:16:19', '2020-06-17 01:20:19'),
(3, 'Duy', 'abc@gmail.com', 'Giúp đỡ việc mua hàng', 'Giúp đỡ việc mua hàng', 1, '2020-05-12 02:01:48', '2020-06-30 13:55:03');

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
(3, '2020_04_26_062042_create_categories_table', 1),
(4, '2020_04_28_030548_create_products_table', 2),
(5, '2020_04_28_040743_alter_column_pro_content_and_pro_title_seo_in_table_products', 3),
(7, '2020_04_29_065352_create_article_table', 4),
(8, '2020_05_07_072006_create_contact_table', 5),
(9, '2020_05_10_062602_create_transactions_table', 6),
(10, '2020_05_10_062729_create_orders_table', 6),
(11, '2020_05_10_064438_alter_column_pro_pay_in_table_products', 7),
(12, '2020_05_19_050711_create_ratings_table', 8),
(13, '2020_05_19_051719_alter_column_rating_in_table_products', 8),
(14, '2020_05_22_051540_alter_column_total_pay_in_table_users', 9),
(15, '2020_05_29_064449_alter_column_c_home_in_table_categories', 10),
(16, '2020_06_05_081751_create_admins_table', 11),
(17, '2020_06_13_061832_alter_column_about_end_address_in_table_user', 12),
(18, '2020_06_14_071214_alter_column_code_and_time_code_in_table_users', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `or_transaction_id` int(11) NOT NULL DEFAULT 0,
  `or_product_id` int(11) NOT NULL DEFAULT 0,
  `or_qty` tinyint(4) NOT NULL DEFAULT 0,
  `or_price` int(11) NOT NULL DEFAULT 0,
  `or_sale` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `or_transaction_id`, `or_product_id`, `or_qty`, `or_price`, `or_sale`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 1, 0, 0, NULL, NULL),
(2, 1, 4, 1, 0, 0, NULL, NULL),
(3, 2, 6, 1, 0, 0, NULL, NULL),
(4, 3, 6, 2, 0, 0, NULL, NULL),
(5, 4, 4, 1, 12121212, 0, NULL, NULL),
(6, 5, 6, 1, 1212, 10, NULL, NULL),
(7, 6, 6, 2, 1212, 10, NULL, NULL),
(8, 6, 4, 1, 12121212, 0, NULL, NULL),
(9, 7, 10, 1, 35990000, 0, NULL, NULL),
(10, 7, 12, 1, 50000000, 0, NULL, NULL),
(11, 8, 11, 1, 3690000, 0, NULL, NULL),
(12, 8, 8, 1, 21690000, 2, NULL, NULL),
(13, 8, 10, 1, 35990000, 0, NULL, NULL),
(14, 8, 13, 1, 36000000, 0, NULL, NULL),
(15, 9, 12, 2, 50000000, 0, '2020-05-22 05:24:28', '2020-05-22 05:24:28'),
(16, 10, 12, 2, 50000000, 0, '2020-05-22 05:31:16', '2020-05-22 05:31:16'),
(17, 11, 12, 2, 50000000, 0, '2020-05-22 05:33:44', '2020-05-22 05:33:44'),
(18, 12, 12, 2, 50000000, 0, '2020-05-22 05:36:29', '2020-05-22 05:36:29'),
(19, 13, 10, 1, 35990000, 0, '2020-05-26 01:21:22', '2020-05-26 01:21:22'),
(20, 13, 11, 1, 3690000, 0, '2020-05-26 01:21:22', '2020-05-26 01:21:22'),
(21, 14, 11, 2, 3690000, 0, '2020-06-02 04:05:34', '2020-06-02 04:05:34'),
(22, 15, 11, 1, 3690000, 0, '2020-06-12 07:28:44', '2020-06-12 07:28:44'),
(23, 16, 13, 1, 36000000, 0, '2020-06-17 01:31:52', '2020-06-17 01:31:52'),
(25, 17, 10, 1, 35990000, 0, '2020-06-17 04:45:59', '2020-06-17 04:45:59'),
(26, 18, 10, 1, 35990000, 0, '2020-06-17 05:43:28', '2020-06-17 05:43:28'),
(27, 19, 11, 1, 3690000, 0, '2020-06-28 09:07:10', '2020-06-28 09:07:10'),
(28, 21, 11, 1, 3690000, 0, '2020-06-28 09:11:04', '2020-06-28 09:11:04'),
(29, 22, 11, 1, 3690000, 0, '2020-06-28 09:12:57', '2020-06-28 09:12:57');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_author_id` int(11) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_description` varchar(991) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_description_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_keyword_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pro_title_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_pay` tinyint(4) NOT NULL DEFAULT 0,
  `pro_number` tinyint(4) NOT NULL DEFAULT 0,
  `pro_total_rating` int(11) NOT NULL DEFAULT 0 COMMENT 'Tổng số đánh giá',
  `pro_total_number` int(11) NOT NULL DEFAULT 0 COMMENT ' tổng số điểm đánh giá'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_category_id`, `pro_price`, `pro_sale`, `pro_author_id`, `pro_active`, `pro_hot`, `pro_view`, `pro_description`, `pro_avatar`, `pro_description_seo`, `pro_keyword_seo`, `created_at`, `updated_at`, `pro_title_seo`, `pro_content`, `pro_pay`, `pro_number`, `pro_total_rating`, `pro_total_number`) VALUES
(8, 'Điện thoại iPhone 11 64GB', 'dien-thoai-iphone-11-64gb', 9, 21690000, 2, 0, 1, 1, 0, 'Sau bao nhiêu chờ đợi cũng như đồn đoán thì cuối cùng Apple', '2020-05-12__iphone-11-red-2-400x460-400x460.png', 'Điện thoại iPhone 11 64GB', NULL, '2020-05-12 01:07:14', '2020-06-17 05:16:53', 'Điện thoại iPhone 11 64GB', '<h3 dir=\"ltr\">N&acirc;ng cấp mạnh mẽ về camera</h3>\r\n\r\n<p dir=\"ltr\">N&oacute;i về n&acirc;ng cấp th&igrave; camera ch&iacute;nh l&agrave; điểm c&oacute; nhiều cải tiến nhất tr&ecirc;n thế hệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone iPhone chính hãng\">iPhone</a>&nbsp;mới.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/153856/iphone-11-tgdd42.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thiết kế nhiều màu sắc\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd42.jpg\" title=\"Điện thoại iPhone 11 64GB | Thiết kế nhiều màu sắc\" /></a></p>\r\n\r\n<p dir=\"ltr\">Nếu như trước đ&acirc;y iPhone Xr chỉ c&oacute; một camera th&igrave; nay với iPhone 11 ch&uacute;ng ta sẽ c&oacute; tới hai camera ở mặt sau.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/153856/iphone-114-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-114-1.jpg\" title=\"Điện thoại iPhone 11 64GB | Camera sau\" /></a></p>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i camera ch&iacute;nh vẫn c&oacute; độ ph&acirc;n giải 12 MP th&igrave; ch&uacute;ng ta sẽ c&oacute; th&ecirc;m một camera g&oacute;c si&ecirc;u rộng v&agrave; cũng với độ ph&acirc;n giải tương tự.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/153856/iphone-116.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-116.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" /></a></p>\r\n\r\n<p dir=\"ltr\"><em>Ảnh chụp ch&acirc;n dung với iPhone 11</em></p>\r\n\r\n<p dir=\"ltr\">Theo Apple th&igrave; việc chuyển đổi qua lại giữa hai ống k&iacute;nh th&igrave; sẽ kh&ocirc;ng l&agrave;m thay đổi m&agrave;u sắc của bức ảnh.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/153856/iphone-11-2-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-2-1.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" /></a></p>\r\n\r\n<p dir=\"ltr\"><em>Ảnh chụp chế độ ch&acirc;n dung với iPhone 11</em></p>\r\n\r\n<p dir=\"ltr\">Đ&acirc;y l&agrave; một điều được xem l&agrave; bước ngoặt bởi những chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone chính hãng\">smartphone</a>&nbsp;Android c&oacute; nhiều camera hiện nay sẽ thường bị sai lệch về m&agrave;u sắc khi chuyển đổi qua lại giữa c&aacute;c ống k&iacute;nh g&acirc;y cảm gi&aacute;c kh&aacute; kh&oacute; chịu cho người d&ugrave;ng.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/153856/iphone-11-tgdd7.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp với Deep Fusion\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd7.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp với Deep Fusion\" /></a></p>\r\n\r\n<p dir=\"ltr\"><em>Ảnh chụp với&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/deep-fusion-tren-dong-iphone-11-pro-la-gi-tinh-nan-1197418\" target=\"_blank\" title=\"Tìm hiểu tính năng Deel Fusion\" type=\"Tìm hiểu tính năng Deel Fusion\">Deep Fusion</a></em></p>\r\n\r\n<p dir=\"ltr\">B&ecirc;n cạnh đ&oacute; với iPhone 11 th&igrave; đ&acirc;y sẽ l&agrave; lần đầu ti&ecirc;n Apple trang bị khả năng chụp đ&ecirc;m l&ecirc;n chiếc iPhone của m&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/153856/iphone-113.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp với chế độ Night Mode Ảnh chụp với chế độ Night Mode\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-113.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp với chế độ Night Mode Ảnh chụp với chế độ Night Mode\" /></a></p>\r\n\r\n<p dir=\"ltr\"><em>Ảnh chụp với&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/night-mode-la-gi-diem-khac-nhau-giu-night-mode-va-1197122\" target=\"_blank\" title=\"Tìm hiểu chế độ Night Mode\" type=\"Tìm hiểu chế độ Night Mode\">chế độ Night Mode</a></em></p>\r\n\r\n<p dir=\"ltr\">Theo trải nghiệm th&igrave; t&iacute;nh năng n&agrave;y hoạt động rất hiệu quả đặc biệt trong những m&ocirc;i trường cực kỳ thiếu s&aacute;ng.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/153856/iphone-112.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp bằng camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-112.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp bằng camera sau\" /></a></p>\r\n\r\n<p dir=\"ltr\">K&iacute;ch hoạt chế độ chụp đ&ecirc;m sẽ do iPhone tự quyết định việc của bạn chỉ cần đưa m&aacute;y l&ecirc;n v&agrave; chụp, rất đơn giản.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/153856/iphone-11-.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ góc siêu rộng\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ góc siêu rộng\" /></a></p>\r\n\r\n<p dir=\"ltr\"><em>Ảnh chụp chế độ g&oacute;c si&ecirc;u rộng</em></p>\r\n\r\n<p dir=\"ltr\">Năm nay Apple cũng đ&atilde; n&acirc;ng cấp độ ph&acirc;n giải camera trước n&ecirc;n 12 MP thay v&igrave; 7 MP như thế hệ trước đ&oacute;.</p>\r\n\r\n<p dir=\"ltr\">Camera trước cũng c&oacute; một t&iacute;nh năng th&ocirc;ng minh, khi bạn xoay ngang điện thoại n&oacute; sẽ tự k&iacute;ch hoạt chế độ selfie g&oacute;c rộng để bạn c&oacute; thể chụp với nhiều người hơn.</p>', 1, 10, 2, 9),
(9, 'Điện thoại iPhone 11 Pro Max 512GB', 'dien-thoai-iphone-11-pro-max-512gb', 9, 41990000, 2, 0, 1, 1, 0, '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;OLED, 6.5&quot;, Super Retina XDR<br />\r\nHệ điều h&agrave;nh:&nbsp;&nbsp; &nbsp;iOS 13<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;3 camera 12 MP<br />\r\nCamera trước:&nbsp;&nbsp; &nbsp;12 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Apple A13 Bionic 6 nh&acirc;n<br />\r\nRAM:&nbsp;&nbsp; &nbsp;4 GB<br />\r\nBộ nhớ trong:&nbsp;&nbsp; &nbsp;512 GB<br />\r\nDung lượng pin:&nbsp;&nbsp; &nbsp;3969 mAh, c&oacute; sạc nhanh</p>', '2020-05-12__iphone-11-pro-max-512gb-gold-400x460.png', 'Điện thoại iPhone 11 Pro Max 512GB', NULL, '2020-05-12 01:09:45', '2020-07-03 04:10:43', 'Điện thoại iPhone 11 Pro Max 512GB', '<h3>Hiệu năng &quot;đ&egrave; bẹp&quot; mọi đối thủ</h3>\r\n\r\n<p>iPhone 11 Pro Max 512GB năm nay sử dụng chip&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a13-bionic-tren-iphone-11-n-1197492\" target=\"_blank\" title=\"Tìm hiểu về chip Apple A13 Bionic\" type=\"Tìm hiểu về chip Apple A13 Bionic\">Apple A13 Bionic</a>&nbsp;mới nhất, nhanh v&agrave; tiết kiệm điện hơn so với A12 năm ngo&aacute;i.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210654/iphone-11-pro-max-512gb-tgdd10.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 Pro Max 512GB | Trải nghiệm chơi game\" src=\"https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-tgdd10.jpg\" title=\"Điện thoại iPhone 11 Pro Max 512GB | Trải nghiệm chơi game\" /></a></p>\r\n\r\n<p>M&aacute;y cũng sở hữu ri&ecirc;ng một con chip&nbsp;AI Neural Engine sẽ phụ tr&aacute;ch c&aacute;c t&iacute;nh năng xử l&yacute; h&igrave;nh ảnh như&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/deep-fusion-tren-dong-iphone-11-pro-la-gi-tinh-nan-1197418\" target=\"_blank\" title=\"Tìm hiểu tính năng Deel Fusion\" type=\"Tìm hiểu tính năng Deel Fusion\">Deep Fusion</a>&nbsp;v&agrave; Night Mode.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210654/iphone-11-pro-max-512gb-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 Pro Max 512GB | Điểm hiệu năng Antutu Benchmark\" src=\"https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-1.jpg\" title=\"Điện thoại iPhone 11 Pro Max 512GB | Điểm hiệu năng Antutu Benchmark\" /></a></p>\r\n\r\n<p><em>Điểm Geekbench của iPhone 11 Pro Max</em></p>\r\n\r\n<p>Theo Apple th&igrave; đ&acirc;y l&agrave; điện thoại th&ocirc;ng minh c&oacute; hiệu suất nhanh nhất thế giới ở thời điểm ra mắt.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210654/iphone-11-pro-max-512gb-tgdd12.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 Pro Max 512GB | Hiệu năng mạnh mẽ\" src=\"https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-tgdd12.jpg\" title=\"Điện thoại iPhone 11 Pro Max 512GB | Hiệu năng mạnh mẽ\" /></a></p>\r\n\r\n<p>Cụ thể, hiệu năng của bộ vi xử l&yacute; A13 Bionic mới của Apple c&oacute; sức mạnh vượt trội, nhanh hơn đến 20% v&agrave; tiết ki&ecirc;m điện đến 40% so với chip A12, mang đến cho&nbsp;bạn trải nghiệm mượt m&agrave;, ổn định tất cả c&aacute;c t&aacute;c vụ, đa nhiệm.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210654/iphone-11-pro-max-512gb-tgdd8.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 Pro Max 512GB | Giao diện iOS 13 mới\" src=\"https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-tgdd8.jpg\" title=\"Điện thoại iPhone 11 Pro Max 512GB | Giao diện iOS 13 mới\" /></a></p>\r\n\r\n<p>M&aacute;y sẽ chạy tr&ecirc;n phi&ecirc;n bản iOS 13 mới với nhiều t&iacute;nh năng tiện dụng gi&uacute;p bạn khai th&aacute;c chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" title=\"Tham khảo iPhone chính hãng\">iPhone</a>&nbsp;của m&igrave;nh hiệu quả hơn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210654/iphone-11-pro-max-512gb-tgdd9.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 Pro Max 512GB | Giao diện iOS 13 mới\" src=\"https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-tgdd9.jpg\" title=\"Điện thoại iPhone 11 Pro Max 512GB | Giao diện iOS 13 mới\" /></a></p>\r\n\r\n<p><em>iOS 13 mới tr&ecirc;n iPhone 11 Pro Max</em></p>\r\n\r\n<p dir=\"ltr\">Năm nay Face ID cũng được cải thiện để c&oacute; thể nhận dạng ở nhiều g&oacute;c kh&aacute;c nhau mang lại trải nghiệm mở kh&oacute;a tốt hơn.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/210654/iphone-11-pro-max-512gb-tgdd11.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 Pro Max 512GB | Giao diện màn hình chính\" src=\"https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-tgdd11.jpg\" title=\"Điện thoại iPhone 11 Pro Max 512GB | Giao diện màn hình chính\" /></a></p>\r\n\r\n<p dir=\"ltr\">C&ocirc;ng nghệ Haptic Engine mới sẽ dựa tr&ecirc;n thời gian ấn v&agrave; giữ icon để hiện l&ecirc;n những menu chức năng kh&aacute;c nhau thay v&igrave; dựa v&agrave;o lực ấn như 3D Touch.</p>\r\n\r\n<h3 dir=\"ltr\">Camera l&agrave; điểm nhấn đ&aacute;ng ch&uacute; &yacute;</h3>\r\n\r\n<p dir=\"ltr\">Tại buổi ra mắt chiếc iPhone mới của m&igrave;nh, Apple d&agrave;nh rất nhiều thời gian để giới thiệu bộ 3 camera ho&agrave;n to&agrave;n mới tr&ecirc;n chiếc&nbsp;iPhone 11 Pro Max.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/210654/iphone-11-pro-max-512gb-tgdd22.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 Pro Max 512GB | Giao diện camera\" src=\"https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-tgdd22.jpg\" title=\"Điện thoại iPhone 11 Pro Max 512GB | Giao diện camera\" /></a></p>\r\n\r\n<p dir=\"ltr\">V&agrave; quả thực camera ch&iacute;nh l&agrave; điểm n&acirc;ng cấp đ&aacute;ng gi&aacute; nhất tr&ecirc;n chiếc&nbsp;iPhone 11 Pro Max.</p>', 0, 0, 1, 4),
(10, 'Điện thoại iPhone 11 Pro Max 256GB', 'dien-thoai-iphone-11-pro-max-256gb', 9, 35990000, 0, 0, 1, 1, 0, 'iPhone 11 Pro Max 256GB là chiếc iPhone cao cấp nhất trong bộ 3 iPhone Apple', '2020-05-12__iphone-11-pro-max-256gb-black-400x460.png', 'Điện thoại iPhone 11 Pro Max 256GB', NULL, '2020-05-12 01:11:34', '2020-06-30 13:52:42', 'Điện thoại iPhone 11 Pro Max 256GB', '<h3>Pro về camera sau</h3>\r\n\r\n<p>Camera l&agrave; một trong những điểm n&acirc;ng cấp mạnh mẽ nhất năm nay Apple mang đến cho chiếc&nbsp;iPhone 11 Pro Max.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd15-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 Pro Max 256GB | Thiết kế camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd15-1.jpg\" title=\"Điện thoại iPhone 11 Pro Max 256GB | Thiết kế camera sau\" /></a></p>\r\n\r\n<p>Đ&oacute; l&agrave; lần đầu ti&ecirc;n một chiếc iPhone sở hữu tới 3 camera ở mặt sau với 3 ti&ecirc;u cự kh&aacute;c nhau m&agrave; người ta vẫn gọi l&agrave; &quot;từ nh&agrave; tới trường&quot; đ&aacute;p ứng mọi nhu cầu nhiếp ảnh của người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd22.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 Pro Max 256GB | Giao diện chụp ảnh\" src=\"https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd22.jpg\" title=\"Điện thoại iPhone 11 Pro Max 256GB | Giao diện chụp ảnh\" /></a></p>\r\n\r\n<p>Ngo&agrave;i một camera g&oacute;c rộng v&agrave; một camera tele vốn dĩ đ&atilde; xuất hiện từ thời iPhone 7 Plus th&igrave; năm nay&nbsp;iPhone 11 Pro Max được trang bị th&ecirc;m một ống k&iacute;nh&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" title=\"Tham khảo các dòng điện thoại hỗ trợ chụp góc rộng\" type=\"Tham khảo các dòng điện thoại hỗ trợ chụp góc rộng\">g&oacute;c si&ecirc;u rộng</a>&nbsp;nữa.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd10-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 Pro Max 256GB | Ảnh chụp chân dung bằng camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd10-1.jpg\" title=\"Điện thoại iPhone 11 Pro Max 256GB | Ảnh chụp chân dung bằng camera sau\" /></a></p>\r\n\r\n<p><em>Ảnh chụp bằng camera sau tr&ecirc;n iPhone 11 Pro Max</em></p>\r\n\r\n<p>Ống k&iacute;nh n&agrave;y sẽ thực sự hữu &iacute;ch khi bạn muốn lấy được nhiều chi tiết hơn khi đứng c&ugrave;ng một vị tr&iacute; chụp m&agrave; kh&ocirc;ng cần phải di chuyển ra xa chủ thể.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd16-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 Pro Max 256GB | Ảnh chụp bằng camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd16-1.jpg\" title=\"Điện thoại iPhone 11 Pro Max 256GB | Ảnh chụp bằng camera sau\" /></a></p>\r\n\r\n<p><em>Ảnh chụp bằng camera sau tr&ecirc;n iPhone 11 Pro Max</em></p>\r\n\r\n<p>Kh&ocirc;ng chỉ n&acirc;ng cấp về mặt phần cứng m&agrave; phần mềm b&ecirc;n trong m&aacute;y cũng được bổ sung th&ecirc;m nhiều t&iacute;nh năng đ&aacute;ng gi&aacute; kh&aacute;c.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd19.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 Pro Max 256GB | Chế độ Night Mode mới\" src=\"https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd19.jpg\" title=\"Điện thoại iPhone 11 Pro Max 256GB | Chế độ Night Mode mới\" /></a></p>\r\n\r\n<p><em>Chế độ Night Mode mới</em></p>\r\n\r\n<p>Đ&oacute; l&agrave; chế độ chụp đ&ecirc;m gi&uacute;p m&aacute;y khắc phục ho&agrave;n to&agrave;n &quot;yếu điểm&quot; chụp đ&ecirc;m kh&ocirc;ng tốt vốn bị ph&agrave;n n&agrave;n kh&aacute; nhiều tới từ người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd8-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 Pro Max 256GB | Ảnh chụp bằng chế độ Night Mode\" src=\"https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd8-1.jpg\" title=\"Điện thoại iPhone 11 Pro Max 256GB | Ảnh chụp bằng chế độ Night Mode\" /></a></p>\r\n\r\n<p><em>Ảnh chụp chế độ Night Mode mới</em></p>\r\n\r\n<p>iPhone năm nay thực sự l&agrave; một sự &quot;lột x&aacute;c&quot; của Apple về camera chụp đ&ecirc;m khi những bức ảnh cho ra c&oacute; độ s&aacute;ng v&agrave; chi tiết cao hơn hẳn nếu đem so với chiếc iPhone Xs Max năm ngo&aacute;i.</p>', 4, 8, 0, 0),
(11, 'Điện thoại Samsung Galaxy A11', 'dien-thoai-samsung-galaxy-a11', 10, 3690000, 0, 0, 1, 1, 0, 'Samsung Galaxy A11 với màn hình Infinity-O siêu tràn viền', '2020-05-12__samsung-galaxy-a11-400x460-1-400x460.png', 'Điện thoại Samsung Galaxy A11Điện thoại Samsung Galaxy A11', NULL, '2020-05-12 01:16:28', '2020-06-17 05:14:02', 'Điện thoại Samsung Galaxy A11', '<h2>Đặc điểm nổi bật của Samsung Galaxy A11</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/216173/Slider/vi-vn-samsung-galaxy-a11.jpg\" /><img src=\"https://www.thegioididong.com/Content/desktop/images/V4/icon-yt.png\" /></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: Hộp, Sạc, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a11\" target=\"_blank\" title=\"Tham khảo giá điện thoại Samsung Galaxy A11 tại thegioididong.com\" type=\"Tham khảo giá điện thoại Samsung Galaxy A11 tại thegioididong.com\">Samsung Galaxy A11</a>&nbsp;với thiết kế m&agrave;n h&igrave;nh Infinity-O si&ecirc;u&nbsp;tr&agrave;n viền, bộ ba camera ấn tượng, đi k&egrave;m với mức gi&aacute; phải chăng hứa hẹn sẽ tạo n&ecirc;n cơn sốt tr&ecirc;n thị trường&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo các dòng điện thoại chính hãng giá tốt tại thegioididong.com\" type=\"Tham khảo các dòng điện thoại chính hãng giá tốt tại thegioididong.com\">điện thoại</a>&nbsp;gi&aacute; rẻ.</h2>\r\n\r\n<h3>M&agrave;n h&igrave;nh Infinity-O si&ecirc;u tr&agrave;n viền 6.4 inch</h3>\r\n\r\n<p>V&igrave; l&agrave; smartphone gi&aacute; rẻ, Galaxy A11 kh&ocirc;ng d&ugrave;ng m&agrave;n h&igrave;nh AMOLED thường thấy của&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\" title=\"Tham khảo các smartphone Samsung chính hãng tại Thegioididong.com\" type=\"Tham khảo các smartphone Samsung chính hãng tại Thegioididong.com\">Samsung</a>, thay v&agrave;o đ&oacute; l&agrave; m&agrave;n h&igrave;nh PLS TFT&nbsp;độ ph&acirc;n giải HD+. Điểm cộng cho m&agrave;n h&igrave;nh của m&aacute;y l&agrave; k&iacute;ch thước đến 6.4 inch rộng r&atilde;i, ph&ugrave; hợp nhiều nhu cầu sử dụng kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/216173/samsung-galaxy-a112.jpg\" onclick=\"return false;\"><img alt=\"Màn hình nốt ruồi dần được Samsung phổ cập đến những dòng giá rẻ như điện thoại Samsung Galaxy A11\" src=\"https://cdn.tgdd.vn/Products/Images/42/216173/samsung-galaxy-a112.jpg\" title=\"Màn hình nốt ruồi dần được Samsung phổ cập đến những dòng giá rẻ như điện thoại Samsung Galaxy A11\" /></a></p>\r\n\r\n<p>M&agrave;n h&igrave;nh tr&ecirc;n Galaxy A11 sẽ ph&ugrave; hợp cho việc sử dụng cho mục đ&iacute;ch xem phim, chơi game th&ocirc;ng thường v&agrave; kh&ocirc;ng đ&ograve;i hỏi y&ecirc;u cầu qu&aacute; cao về đồ họa.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/216173/samsung-galaxy-a118.jpg\" onclick=\"return false;\"><img alt=\"Camera selfie trên Galaxy A11\" src=\"https://cdn.tgdd.vn/Products/Images/42/216173/samsung-galaxy-a118.jpg\" title=\"Camera selfie trên Galaxy A11\" /></a></p>\r\n\r\n<p>Mặc d&ugrave; nằm ở ph&acirc;n kh&uacute;c gi&aacute; rẻ m&aacute;y vẫn sở hữu thiết kế Infinity-O thời thượng với camera trước dạng đục lỗ của c&aacute;c d&ograve;ng flagship cao cấp như&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s20\" target=\"_blank\" title=\"Tham khảo giá điện thoại Samsung Galaxy S20 chính hãng\" type=\"Tham khảo giá điện thoại Samsung Galaxy S20 chính hãng\">Galaxy S20</a>,&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-note-10\" target=\"_blank\" title=\"Tham khảo giá điện thoại Samsung Galaxy Note 10 chính hãng\" type=\"Tham khảo giá điện thoại Samsung Galaxy Note 10 chính hãng\">Galaxy Note 10</a>,&hellip;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/216173/samsung-galaxy-a115.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế cạnh viền trên Galaxy A11\" src=\"https://cdn.tgdd.vn/Products/Images/42/216173/samsung-galaxy-a115.jpg\" title=\"Thiết kế cạnh viền trên Galaxy A11\" /></a></p>\r\n\r\n<p>Viền dưới của m&agrave;n h&igrave;nh cũng c&ograve;n kh&aacute; d&agrave;y, nhưng l&agrave; một smartphone gi&aacute; rẻ n&ecirc;n điều n&agrave;y ho&agrave;n to&agrave;n chấp nhận được. N&oacute;i về ưu điểm th&igrave; phần viền d&agrave;y cũng g&oacute;p phần hạn chế v&ocirc; t&igrave;nh chạm v&agrave;o m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/216173/samsung-galaxy-a117.jpg\" onclick=\"return false;\"><img alt=\"Galaxy A11 vẫn giữ jack tai nghe 3.5 mm\" src=\"https://cdn.tgdd.vn/Products/Images/42/216173/samsung-galaxy-a117.jpg\" title=\"Galaxy A11 vẫn giữ jack tai nghe 3.5 mm\" /></a></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tong-hop-cac-loai-man-hinh-vo-cuc-moi-tren-dien-th-1150900\" target=\"_blank\" title=\"Tham khảo bài viết 4 loại màn hình vô cực mới trên điện thoại Samsung\" type=\"Tham khảo bài viết 4 loại màn hình vô cực mới trên điện thoại Samsung\">4 loại thiết kế m&agrave;n h&igrave;nh v&ocirc; cực Infinity của Samsung</a></p>\r\n\r\n<h3>Lưu giữ khoảnh khắc thường ng&agrave;y với bộ 3 camera đa dụng</h3>\r\n\r\n<p>Về camera, Galaxy A11 được trang bị 3 camera mặt sau bao gồm: 13 MP + 5 MP + 2 MP, trong khi mặt trước l&agrave; camera selfie với thiết kế đục lỗ độ ph&acirc;n giải 8 MP để người d&ugrave;ng chụp ảnh &ldquo;tự sướng&rdquo; v&agrave; gọi video call.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/216173/samsung-galaxy-a114.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Galaxy A11 thiết kế nguyên khối chắc chắn với 3 camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/216173/samsung-galaxy-a114.jpg\" title=\"Điện thoại Galaxy A11 thiết kế nguyên khối chắc chắn với 3 camera sau\" /></a></p>\r\n\r\n<p>Bộ 3 camera sau của m&aacute;y vẫn hỗ trợ tốt c&aacute;c t&iacute;nh năng thời thượng để người d&ugrave;ng c&oacute; những bức ảnh &ldquo;sống ảo&rdquo; đẹp mắt như: nhận diện khu&ocirc;n mặt, HDR, chụp to&agrave;n cảnh (Panorama), L&agrave;m đẹp (Beautify) v&agrave; hỗ trợ quay phim Full HD 1080p...</p>', 4, 6, 1, 4),
(12, 'Điện thoại Samsung Galaxy S20', 'dien-thoai-samsung-galaxy-s20', 10, 50000000, 0, 0, 1, 1, 0, 'Samsung Galaxy S20 - chiếc smartphone màn hình gập đầu tiên của Samsung', '2020-05-12__samsung-galaxy-s20-600x600-hong-600x600.jpg', 'Điện thoại Samsung Galaxy S20', NULL, '2020-05-12 01:17:46', '2020-06-17 05:12:58', 'Điện thoại Samsung Galaxy S20', '<h3 dir=\"ltr\">Thiết kế m&agrave;n h&igrave;nh tr&agrave;n viền, si&ecirc;u mượt 120 Hz</h3>\r\n\r\n<p dir=\"ltr\">Thiết kế của chiếc điện thoại Samsung Galaxy S20 Plus l&agrave; k&iacute;nh kết hợp độc đ&aacute;o giữa với khung kim loại c&ugrave;ng mặt lưng k&iacute;nh cường lực&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-cac-mat-kinh-cuong-luc-gorilla-glass-1172198#glass6\" target=\"_blank\" title=\"Tìm hiểu kính cường lực Gorilla Glass 6\" type=\"Tìm hiểu kính cường lực Gorilla Glass 6\">Gorilla Glass 6</a>&nbsp;thế hệ mới nhất cho khả năng chống chịu trầy xước v&agrave; va đập tốt.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/217936/samsung-galaxy-s20-plus1-1.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S20 Plus | Thiết kế siêu tràn viền\" src=\"https://cdn.tgdd.vn/Products/Images/42/217936/samsung-galaxy-s20-plus1-1.jpg\" title=\"Samsung Galaxy S20 Plus | Thiết kế siêu tràn viền\" /></a></p>\r\n\r\n<p dir=\"ltr\">M&agrave;n h&igrave;nh Galaxy S20+ c&oacute; k&iacute;ch thước 6.7 inch độ ph&acirc;n giải 2K&nbsp;(1440 x 3200 Pixels) sử dụng tấm nền Dynamic AMOLED 2X với khả năng hiển thị m&agrave;u sắc sắc n&eacute;t, độ chi tiết cao v&agrave; sống động.</p>\r\n\r\n<p dir=\"ltr\">Khung m&aacute;y được ho&agrave;n thiện một c&aacute;ch tỉ mỉ, độ ch&iacute;nh x&aacute;c cao với viền m&agrave;n h&igrave;nh đ&atilde; được thiết kế&nbsp;cong nhẹ&nbsp;cho cảm gi&aacute;c dễ d&agrave;ng cầm nắm, kh&ocirc;ng bị cấn tay hay v&ocirc; t&igrave;nh chạm v&agrave;o m&agrave;n h&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/217936/samsung-galaxy-s20-plus4-1.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S20 Plus | Viền màn kim loại\" src=\"https://cdn.tgdd.vn/Products/Images/42/217936/samsung-galaxy-s20-plus4-1.jpg\" title=\"Samsung Galaxy S20 Plus | Viền màn kim loại\" /></a></p>\r\n\r\n<p dir=\"ltr\">Điểm nổi bật tr&ecirc;n chiếc điện thoại Samsung Galaxy S20 Plus ch&iacute;nh l&agrave; việc trang bị m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tong-hop-cac-loai-man-hinh-vo-cuc-moi-tren-dien-th-1150900\" title=\"Tham khảo các công nghệ màn hinh Samsung\" type=\"Tham khảo các công nghệ màn hinh Samsung\">Infinity O</a>&nbsp;tr&agrave;n viền ra bốn cạnh với tỷ lệ diện t&iacute;ch hiển thị l&ecirc;n tới 90.5%.</p>\r\n\r\n<p dir=\"ltr\">Tần số qu&eacute;t m&agrave;n h&igrave;nh l&ecirc;n đến 120 Hz cho cảm gi&aacute;c phản hồi nhanh, dường như kh&ocirc;ng c&oacute; độ trễ. Người d&ugrave;ng c&oacute; thể điều chỉnh giữa 60 v&agrave; 120 Hz để tiết kiệm năng lượng pin cho m&aacute;y.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/217936/samsung-galaxy-s20-plus6.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S20 Plus | Thiết kế màn hình 120 Hz\" src=\"https://cdn.tgdd.vn/Products/Images/42/217936/samsung-galaxy-s20-plus6.jpg\" title=\"Samsung Galaxy S20 Plus | Thiết kế màn hình 120 Hz\" /></a></p>\r\n\r\n<p dir=\"ltr\">B&ecirc;n cạnh đ&oacute; m&agrave;n h&igrave;nh của m&aacute;y c&ograve;n hỗ trợ c&ocirc;ng nghệ hiển thị HDR10+ mang đến những thước phim giải tr&iacute; hay những pha h&agrave;nh động combat được t&aacute;i hiện một c&aacute;ch sống động, ch&acirc;n thực c&ugrave;ng trải nghiệm thao t&aacute;c&nbsp;si&ecirc;u mượt m&agrave;.</p>\r\n\r\n<h3 dir=\"ltr\">Đột ph&aacute; camera sau&nbsp;</h3>\r\n\r\n<p dir=\"ltr\">Galaxy S20+ được trang bị hệ thống 4 camera sau bao gồm: camera tele 64 MP, camera g&oacute;c rộng v&agrave; camera g&oacute;c si&ecirc;u rộng 12 MP v&agrave; cuối c&ugrave;ng cảm biến TOF với chức năng hỗ trợ đo chiều s&acirc;u.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/217936/samsung-galaxy-s20-plus3-1.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S20 Plus | Đột phá camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/217936/samsung-galaxy-s20-plus3-1.jpg\" title=\"Samsung Galaxy S20 Plus | Đột phá camera sau\" /></a></p>\r\n\r\n<p dir=\"ltr\">Cụm camera sau được thiết kế hơi lồi so với mặt lưng, hỗ trợ c&aacute;c t&iacute;nh năng độc đ&aacute;o mới được trang bị tr&ecirc;n d&ograve;ng sản phẩm Galaxy S20 như quay video 8K, Space Zoom, Single Take,... người d&ugrave;ng thỏa th&iacute;ch s&aacute;ng tạo n&ecirc;n nhiều kiệt t&aacute;c nghệ thuật.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/217936/samsung-galaxy-s20-plus-2-1.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S20 Plus | Chụp đêm \" src=\"https://cdn.tgdd.vn/Products/Images/42/217936/samsung-galaxy-s20-plus-2-1.jpg\" title=\"Samsung Galaxy S20 Plus | Chụp đêm \" /></a></p>\r\n\r\n<p dir=\"ltr\">Đ&acirc;y cũng l&agrave; lần đầu ti&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone Samsung chính hãng\" type=\"Tham khảo giá điện thoại smartphone Samsung chính hãng\">Samsung</a>&nbsp;trang bị t&iacute;nh năng quay video chất lượng điện ảnh 8K l&ecirc;n chiếc điện thoại, mang đến những thước phim với độ ph&acirc;n giải đ&aacute;ng kinh ngạc, độ sắc n&eacute;t sẽ cũng được duy tr&igrave; ở mức tối đa ngay cả khi video được tr&igrave;nh chiếu tr&ecirc;n những m&agrave;n h&igrave;nh lớn.</p>', 5, 4, 4, 15),
(13, 'Điện thoại Samsung Galaxy Z Flip', 'dien-thoai-samsung-galaxy-z-flip', 10, 36000000, 0, 0, 1, 1, 0, 'Samsung Galaxy Z Flip đã được Samsung ra mắt tại sự kiện Unpacked 2020.', '2020-05-12__samsung-galaxy-z-flip-den-600x600-600x600.jpg', 'Điện thoại Samsung Galaxy Z Flip', NULL, '2020-05-12 01:19:47', '2020-06-17 05:11:29', 'Điện thoại Samsung Galaxy Z Flip', '<h3 dir=\"ltr\">Đột ph&aacute; với thiết kế m&agrave;n h&igrave;nh gập</h3>\r\n\r\n<p dir=\"ltr\">Samsung Galaxy Z Flip được thiết kế với kiểu d&aacute;ng m&agrave;n h&igrave;nh gập lấy &yacute; tưởng từ d&ograve;ng sản phẩm&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-fold\" target=\"_blank\" title=\"Tham khảo giá điện thoại Samsung Galaxy Fold chính hãng\" type=\"Tham khảo giá điện thoại Samsung Galaxy Fold chính hãng\">Galaxy Fold</a>&nbsp;từng g&acirc;y nhiều tiếng vang trong năm 2019.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/213022/samsung-galaxy-z-flip-tgdd4-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Z Flip | Khả năng gập với nhiều góc độ khác nhau\" src=\"https://cdn.tgdd.vn/Products/Images/42/213022/samsung-galaxy-z-flip-tgdd4-1.jpg\" title=\"Điện thoại Samsung Galaxy Z Flip | Khả năng gập với nhiều góc độ khác nhau\" /></a></p>\r\n\r\n<p dir=\"ltr\">Tuy nhi&ecirc;n điểm kh&aacute;c biệt l&agrave; m&agrave;n h&igrave;nh của Z Flip được&nbsp;thiết kế gập theo chiều dọc, khiến cho tổng thể m&aacute;y c&oacute; thể nằm gọn trong l&ograve;ng b&agrave;n tay của người d&ugrave;ng như một phụ kiện thời trang cao cấp.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/213022/samsung-galaxy-z-flip-tgdd2-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Z Flip | Đột phá thiết kế màn hình gập\" src=\"https://cdn.tgdd.vn/Products/Images/42/213022/samsung-galaxy-z-flip-tgdd2-1.jpg\" title=\"Điện thoại Samsung Galaxy Z Flip | Đột phá thiết kế màn hình gập\" /></a></p>\r\n\r\n<p dir=\"ltr\">Bản lề của m&aacute;y cũng c&oacute; khả năng gập - mở với nhiều g&oacute;c độ kh&aacute;c nhau, khi thiết bị ở trạng th&aacute;i mở một nửa, m&agrave;n h&igrave;nh sẽ tự động chia th&agrave;nh hai m&agrave;n h&igrave;nh 4 inch vừa đủ để bạn c&oacute; thể dễ d&agrave;ng xem h&igrave;nh ảnh, nội dung hoặc video ở nửa tr&ecirc;n của m&agrave;n h&igrave;nh v&agrave; thao t&aacute;c điều khiển ch&uacute;ng ở nửa dưới.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/213022/samsung-galaxy-z-flip-tgdd5-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Z Flip | Thiết kế bản lề mới với độ bền cao\" src=\"https://cdn.tgdd.vn/Products/Images/42/213022/samsung-galaxy-z-flip-tgdd5-1.jpg\" title=\"Điện thoại Samsung Galaxy Z Flip | Thiết kế bản lề mới với độ bền cao\" /></a></p>\r\n\r\n<p dir=\"ltr\">Trải nghiệm sử dụng Samsung Galaxy Z Flip linh hoạt nhờ kết cấu bản lề mới hiện đại, c&oacute; khả năng chống bụi bẩn tốt hơn. Tuy vẫn c&oacute; vết gấp giữa m&agrave;n h&igrave;nh Galaxy Z Flip nhưng ho&agrave;n to&agrave;n kh&ocirc;ng ảnh hưởng đến trải nghiệm người d&ugrave;ng.</p>\r\n\r\n<p dir=\"ltr\">B&ecirc;n cạnh đ&oacute; c&ocirc;ng nghệ n&agrave;y c&ograve;n cho ph&eacute;p Samsung Galaxy Z Flip c&oacute; thể dễ d&agrave;ng gập mở với độ bền l&ecirc;n tới hơn 200.000 lần, mở ra một thập kỷ mới của sự s&aacute;ng tạo d&agrave;nh cho&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone chính hãng\" type=\"Tham khảo giá điện thoại smartphone chính hãng\">điện thoại</a>&nbsp;m&agrave;n h&igrave;nh gập.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/213022/samsung-galaxy-z-flip-tgdd11-2.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Z Flip | Thiết kế gọn nhẹ\" src=\"https://cdn.tgdd.vn/Products/Images/42/213022/samsung-galaxy-z-flip-tgdd11-2.jpg\" title=\"Điện thoại Samsung Galaxy Z Flip | Thiết kế gọn nhẹ\" /></a></p>\r\n\r\n<p dir=\"ltr\">Khi mở m&aacute;y hết cỡ, m&agrave;n h&igrave;nh của m&aacute;y c&oacute; k&iacute;ch thước 6.7 inch, đ&acirc;y l&agrave; m&agrave;n h&igrave;nh c&oacute; thiết kế gập vỏ s&ograve; bằng k&iacute;nh đầu ti&ecirc;n tr&ecirc;n thế giới với thiết kế&nbsp;<a href=\"https://www.thegioididong.com/dtdd-man-hinh-tran-vien\" target=\"_blank\" title=\"Điên thoại Tràn viền tại Thegioididong.com\" type=\"Điên thoại Tràn viền tại Thegioididong.com\">m&agrave;n h&igrave;nh tr&agrave;n viền</a>&nbsp;với camera kho&eacute;t lỗ.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Galaxy Z Flip sở hữu m&agrave;n h&igrave;nh Infinity Flex với c&ocirc;ng nghệ k&iacute;nh uốn dẻo Ultra Thin Glass (UTG) độc đ&aacute;o từ Samsung, c&ocirc;ng nghệ n&agrave;y gi&uacute;p m&aacute;y mỏng hơn, cho cảm gi&aacute;c cầm nắm sang trọng v&agrave; cao cấp.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/213022/samsung-galaxy-z-flip-tgdd10-2.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Z Flip | Màn hình giải trí sắc nét\" src=\"https://cdn.tgdd.vn/Products/Images/42/213022/samsung-galaxy-z-flip-tgdd10-2.jpg\" title=\"Điện thoại Samsung Galaxy Z Flip | Màn hình giải trí sắc nét\" /></a></p>\r\n\r\n<p dir=\"ltr\">Sử dụng tấm nền Dynamic AMOLED độ ph&acirc;n giải Full HD+ tỉ lệ m&agrave;n h&igrave;nh 21.9:9 độc đ&aacute;o nhất hiện nay, hỗ trợ HDR10+ gi&uacute;p cho từng h&igrave;nh ảnh m&agrave; bạn xem sống động tr&ecirc;n từng chi tiết, sắc n&eacute;t tr&ecirc;n từng chuyển động mang đến m&agrave;u sắc sống động ch&acirc;n thật.</p>\r\n\r\n<h3 dir=\"ltr\">N&acirc;ng cấp camera k&eacute;p, chụp ảnh ban đ&ecirc;m ấn tượng</h3>\r\n\r\n<p dir=\"ltr\">Samsung Galaxy Z Flip được trang bị camera k&eacute;p c&ugrave;ng độ ph&acirc;n giải 12 MP với khẩu độ lần lượt l&agrave; f/1.8 v&agrave; f/2.2 c&oacute; hỗ trợ chống rung quang học OIS cho khả năng chụp h&igrave;nh thiếu s&aacute;ng tốt đi k&egrave;m c&ocirc;ng nghệ chụp ảnh bằng cử chỉ, dễ d&agrave;ng ghi lại mọi khoảnh khắc hằng ng&agrave;y.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/213022/samsung-galaxy-z-flip-tgdd8-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Z Flip | Camera kép ấn tượng\" src=\"https://cdn.tgdd.vn/Products/Images/42/213022/samsung-galaxy-z-flip-tgdd8-1.jpg\" title=\"Điện thoại Samsung Galaxy Z Flip | Camera kép ấn tượng\" /></a></p>\r\n\r\n<p dir=\"ltr\">C&ocirc;ng nghệ nhận diện AI gi&uacute;p m&aacute;y c&oacute; thể nhận biết được nhiều chủ thể kh&aacute;c nhau qua đ&oacute; tối ưu c&aacute;c th&ocirc;ng số kỹ thuật để cho ra những tấm h&igrave;nh sắc n&eacute;t, độ chi tiết cao c&ugrave;ng m&agrave;u sắc sống động.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/213022/samsung-galaxy-z-flip-tgdd12.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Z Flip | Trải nghiệm camera \" src=\"https://cdn.tgdd.vn/Products/Images/42/213022/samsung-galaxy-z-flip-tgdd12.jpg\" title=\"Điện thoại Samsung Galaxy Z Flip | Trải nghiệm camera \" /></a></p>\r\n\r\n<p dir=\"ltr\">Camera trước của m&aacute;y c&oacute; độ ph&acirc;n giải 10 MP với khẩu độ f2.4 được bố tr&iacute; dạng đục lỗ ở ch&iacute;nh giữa m&agrave;n h&igrave;nh cũng tương tự như Galaxy S20, đ&aacute;p ứng tốt nhu cầu chụp ảnh selfie, quay video với chất lượng tốt.</p>', 1, 10, 3, 13),
(14, 'Điện thoại Samsung Galaxy S20 Ultra', 'dien-thoai-samsung-galaxy-s20-ultra', 10, 29990000, 0, 0, 1, 1, 0, 'Samsung Galaxy S20 Ultra siêu phẩm công nghệ hàng đầu của Samsung', '2020-05-12__samsung-galaxy-note-10-plus-blue-600x600.jpg', 'Điện thoại Samsung Galaxy S20 Ultra', NULL, '2020-05-12 01:21:24', '2020-06-17 05:09:15', 'Điện thoại Samsung Galaxy S20 Ultra', '<h3 dir=\"ltr\">Đột ph&aacute; m&agrave;n h&igrave;nh si&ecirc;u tr&agrave;n viền k&iacute;ch thước lớn</h3>\r\n\r\n<p dir=\"ltr\">Galaxy S20 Ultra được trang bị một m&agrave;n h&igrave;nh k&iacute;ch thước 6.9 inch sử dụng tấm nền Dynamic AMOLED 2X cho chất lượng hiển thị h&igrave;nh ảnh trung thực, sắc n&eacute;t đến từng chi tiết.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/217937/samsung-galaxy-s20-ultra6.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy S20 Ultra | Thiết kế màn hình siêu tràn viền kích thước lớn\" src=\"https://cdn.tgdd.vn/Products/Images/42/217937/samsung-galaxy-s20-ultra6.jpg\" title=\"Điện thoại Samsung Galaxy S20 Ultra | Thiết kế màn hình siêu tràn viền kích thước lớn\" /></a></p>\r\n\r\n<p dir=\"ltr\">M&agrave;n h&igrave;nh tr&ecirc;n&nbsp;Galaxy S20 Ultra c&oacute;&nbsp;<strong>tần số qu&eacute;t l&ecirc;n tới&nbsp;120 Hz</strong>&nbsp;cho từng chuyển động tr&ecirc;n m&aacute;y diễn ra si&ecirc;u mượt, dễ d&agrave;ng nhận thấy ở cả c&aacute;c thao t&aacute;c vuốt h&agrave;ng ng&agrave;y. M&aacute;y cho ph&eacute;p chuyển qua lại giữa chế độ 120 Hz v&agrave; 60 Hz để tiết kiệm pin khi cần thiết.</p>\r\n\r\n<p dir=\"ltr\">C&ocirc;ng nghệ HDR10+ cho trải nghiệm giải tr&iacute; chơi game với chất lượng tuyệt vời.</p>\r\n\r\n<p dir=\"ltr\">Cả mặt trước v&agrave; sau của m&aacute;y đều được bảo vệ bằng k&iacute;nh cường lực Gorilla Glass 6 với độ bền cao, nhược điểm duy nhất l&agrave; dễ b&aacute;m mồ h&ocirc;i v&agrave; dấu v&acirc;n tay sau một thời gian sử dụng.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/217937/samsung-galaxy-s20-ultra7.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy S20 Ultra | Thiết kế mặt lưng kính cường lực cao cấp\" src=\"https://cdn.tgdd.vn/Products/Images/42/217937/samsung-galaxy-s20-ultra7.jpg\" title=\"Điện thoại Samsung Galaxy S20 Ultra | Thiết kế mặt lưng kính cường lực cao cấp\" /></a></p>\r\n\r\n<p dir=\"ltr\">Galaxy S20 Ultra sử dụng m&agrave;n h&igrave;nh c&ocirc;ng nghệ&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tong-hop-cac-loai-man-hinh-vo-cuc-moi-tren-dien-th-1150900#infinity-o\" target=\"_blank\" title=\"Tìm hiểu về công nghệ màn hình Infinity O\" type=\"Tìm hiểu về công nghệ màn hình Infinity O\">Infinity O</a>&nbsp;kho&eacute;t lỗ&nbsp;cho camera selfie, d&ugrave; c&oacute; m&agrave;n h&igrave;nh lớn nhưng đ&atilde; được cắt giảm viền m&agrave;n h&igrave;nh n&ecirc;n tổng thể m&aacute;y vẫn rất thon gọn, chắc chắn dễ d&agrave;ng cầm nắm v&agrave; sử dụng bằng một tay.</p>\r\n\r\n<p dir=\"ltr\">Viền m&agrave;n h&igrave;nh si&ecirc;u mỏng tr&agrave;n ra c&aacute;c cạnh được bo cong nhẹ nổi bật với cụm camera hơi lồi l&ecirc;n so với mặt lưng của m&aacute;y, điều n&agrave;y c&oacute; thể được loại bỏ ho&agrave;n to&agrave;n bằng một chiếc ốp lưng.</p>\r\n\r\n<h3 dir=\"ltr\">Camera đỉnh cao, độ ph&acirc;n giải si&ecirc;u khủng 108 MP</h3>\r\n\r\n<p dir=\"ltr\">Camera tr&ecirc;n Galaxy S20 Ultra l&agrave; sự kết hợp độc đ&aacute;o giữa bộ 4 camera si&ecirc;u khủng bao gồm 1 camera ch&iacute;nh c&oacute; độ ph&acirc;n giải 108 MP một camera tele 48 MP, một camera g&oacute;c rộng 12 MP c&oacute; g&oacute;c nh&igrave;n l&ecirc;n tới 120 độ, cuối c&ugrave;ng l&agrave; cảm biến TOF c&oacute; chức năng đo chiều s&acirc;u, đi k&egrave;m nhiều t&iacute;nh năng chụp ảnh chuy&ecirc;n nghiệp.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.thegioididong.com/images/42/217937/samsung-galaxy-s20-ultra-108mp-108mp.jpg\" onclick=\"return false;\"><img alt=\"Galaxy S20 Ultra | Camera 108 MP\" src=\"https://cdn.tgdd.vn/Products/Images/42/217937/samsung-galaxy-s20-ultra-108mp-108mp.jpg\" title=\"Galaxy S20 Ultra | Camera 108 MP\" /></a></p>\r\n\r\n<p dir=\"ltr\">Ấn tượng nhất tr&ecirc;n Galaxy S20 Ultra l&agrave; chế độ Space Zoom 100x số 1 tr&ecirc;n thế giới smartphone, chế độ n&agrave;y kết hợp giữa phần cứng v&agrave; phần mềm AI, cho ph&eacute;p người d&ugrave;ng c&oacute; thể chụp vật thể ở khoảng c&aacute;ch v&ocirc; c&ugrave;ng xa m&agrave; mắt thường kh&ocirc;ng nh&igrave;n thấy được.</p>', 0, 10, 1, 3),
(15, 'Điện thoại Samsung Galaxy Note 10', 'dien-thoai-samsung-galaxy-note-10', 10, 21490000, 0, 0, 1, 1, 0, 'Dòng Galaxy Note của Samsung thường ít được các bạn nữ sử dụng', '2020-05-12__samsung-galaxy-note-10-lite-thumb-600x600.jpg', 'Điện thoại Samsung Galaxy Note 10', NULL, '2020-05-12 01:23:20', '2020-06-30 11:23:39', 'Điện thoại Samsung Galaxy Note 10', '<h3>M&agrave;n h&igrave;nh tr&agrave;n viền tuyệt đẹp</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh tr&ecirc;n Galaxy Note 10 l&agrave; đ&aacute;nh dấu sự đổi mới về thiết kế của Samsung.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/191276/samsung-galaxy-note-10-tgdd-35.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Note 10 | Màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-tgdd-35.jpg\" title=\"Điện thoại Samsung Galaxy Note 10 | Màn hình\" /></a></p>\r\n\r\n<p>Kh&ocirc;ng giống với c&aacute;ch đục lỗ g&oacute;c phải tr&ecirc;n S10, chiếc Note 10 đưa camera selfie ra ch&iacute;nh giữa, k&egrave;m theo viền&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/hoi-dap-tong-hop-cac-loai-man-hinh-vo-cuc-moi-t-1150900#infinity-o\" target=\"_blank\" title=\"Tìm hiểu về màn hình tràn viền Infinity-O\" type=\"Tìm hiểu về màn hình tràn viền Infinity-O\">m&agrave;n h&igrave;nh Infinity-O</a>&nbsp;n&agrave;y cũng được mỏng hơn đ&aacute;ng kể.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/191276/samsung-galaxy-note-10-tgdd-34.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Note 10 | Màn hình Infinity-O\" src=\"https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-tgdd-34.jpg\" title=\"Điện thoại Samsung Galaxy Note 10 | Màn hình Infinity-O\" /></a></p>\r\n\r\n<p>M&aacute;y c&oacute; k&iacute;ch thước 6.3 inch c&ugrave;ng độ ph&acirc;n giải Full HD+,&nbsp;được trang bị&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-ma-hinh-dynamic-amoled-co-gi-noi-bat-1151123\" target=\"_blank\" title=\"Tìm hiểu về tấm nền Dynamic AMOLED\" type=\"Tìm hiểu về tấm nền Dynamic AMOLED\">tấm nền Dynamic AMOLED</a>&nbsp;mang lại m&agrave;u sắc đậm đ&agrave; v&agrave; sống động hơn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/191276/samsung-galaxy-note-10-tgdd-33.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Note 10 | Tấm nền trên điện thoại\" src=\"https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-tgdd-33.jpg\" title=\"Điện thoại Samsung Galaxy Note 10 | Tấm nền trên điện thoại\" /></a></p>\r\n\r\n<p>C&ocirc;ng nghệ Dynamic AMOLED n&agrave;y c&ograve;n cho ra m&agrave;n h&igrave;nh &iacute;t &aacute;nh s&aacute;ng xanh hơn nhằm gi&uacute;p mắt thoải m&aacute;i.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/191276/samsung-galaxy-note-10-tgdd-28.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Note 10 | Trải nghiệm màu sắc trên màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-tgdd-28.jpg\" title=\"Điện thoại Samsung Galaxy Note 10 | Trải nghiệm màu sắc trên màn hình\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, nhờ được hỗ trợ HDR10+ n&ecirc;n Note 10 c&oacute; thể cải thiện độ ch&iacute;nh x&aacute;c m&agrave;u tốt hơn v&agrave; cho ra h&igrave;nh ảnh đẹp hơn.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tren-tay-danh-gia-galaxy-note-10-1185175\" target=\"_blank\" title=\"Trên tay &amp; đánh giá nhanh Samsung Galaxy Note 10\" type=\"Trên tay &amp; đánh giá nhanh Samsung Galaxy Note 10\">Tr&ecirc;n tay &amp; đ&aacute;nh gi&aacute; nhanh Samsung Galaxy Note 10: Gọn g&agrave;ng, ph&ugrave; hợp nữ d&ugrave;ng, phần cứng mạnh mẽ</a></p>\r\n\r\n<h3>Thiết kế với m&agrave;u gradient b&oacute;ng bẩy</h3>\r\n\r\n<p>D&ograve;ng Note 10 l&agrave; sản phẩm đầu ti&ecirc;n của Samsung &aacute;p dụng thiết kế m&agrave;u gradient rất thu h&uacute;t người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/191276/samsung-galaxy-note-10-tgdd-30.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Note 10 | Thiết kế màu sắc\" src=\"https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-tgdd-30.jpg\" title=\"Điện thoại Samsung Galaxy Note 10 | Thiết kế màu sắc\" /></a></p>\r\n\r\n<p>Samsung kh&ocirc;ng đơn thuần l&agrave; phủ l&ecirc;n mặt lưng m&agrave;u gradient c&oacute; chuyển đổi sắc độ từ m&agrave;u n&agrave;y sang m&agrave;u kh&aacute;c, hay từ đậm sang nhạt hơn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/191276/samsung-galaxy-note-10-tgdd-29.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Note 10 | Mặt lưng phản chiếu ánh sáng\" src=\"https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-tgdd-29.jpg\" title=\"Điện thoại Samsung Galaxy Note 10 | Mặt lưng phản chiếu ánh sáng\" /></a></p>\r\n\r\n<p>Lớp m&agrave;u m&agrave; Samsung phủ l&ecirc;n n&oacute; c&oacute; thể phản chiếu lại &aacute;nh s&aacute;ng, để cho ra gần như l&agrave; đầy đủ c&aacute;c m&agrave;u sắc tuỳ v&agrave;o độ nghi&ecirc;ng v&agrave; mức độ &aacute;nh s&aacute;ng chiếu v&agrave;o.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/191276/samsung-galaxy-note-10-tgdd-31.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Note 10 | Thiết kế phần khung\" src=\"https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-tgdd-31.jpg\" title=\"Điện thoại Samsung Galaxy Note 10 | Thiết kế phần khung\" /></a></p>\r\n\r\n<p>Samsung Galaxy Note 10 được gia c&ocirc;ng bằng chất liệu kim loại, với mặt trước v&agrave; mặt sau được bao phủ bởi lớp k&iacute;nh Gorilla Glass gi&uacute;p m&aacute;y tr&ocirc;ng b&oacute;ng bẩy v&agrave; bền vững.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/191276/samsung-galaxy-note-10-tgdd-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Note 10 | Thiết kế mặt trước\" src=\"https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-tgdd-1.jpg\" title=\"Điện thoại Samsung Galaxy Note 10 | Thiết kế mặt trước\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, với khối lượng l&agrave; 168 g th&igrave; cũng kh&ocirc;ng qu&aacute; nặng khi cầm tr&ecirc;n tay, cho n&ecirc;n bạn c&oacute; thể sử dụng dễ d&agrave;ng hay mang theo b&ecirc;n m&igrave;nh.</p>\r\n\r\n<h3>B&uacute;t S Pen &ldquo;thần th&aacute;nh&rdquo; ng&agrave;y c&agrave;ng nhiều &quot;ph&eacute;p&quot;</h3>\r\n\r\n<p>B&uacute;t S Pen vốn l&agrave; phụ kiện đặc trưng của Galaxy Note m&agrave; iPhone hay bất kỳ d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone chính hãng\">smartphone</a>&nbsp;n&agrave;o kh&aacute;c chưa từng sở hữu.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/191276/samsung-galaxy-note-10-tgdd-38.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Note 10 | Trải nghiệm Bút S-Pen\" src=\"https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-tgdd-38.jpg\" title=\"Điện thoại Samsung Galaxy Note 10 | Trải nghiệm Bút S-Pen\" /></a></p>\r\n\r\n<p>V&agrave; ở Note 10, b&ecirc;n cạnh được t&iacute;ch hợp Bluetooth cực tiện lợi, c&acirc;y b&uacute;t n&agrave;y c&ograve;n được cải tiến kh&aacute; nhiều với cảm biến gia tốc v&agrave; con quay hồi chuyển độc lập ngay trong kết cấu, nhằm mang lại những trải nghiệm cao cho người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/191276/samsung-galaxy-note-10-tgdd-32.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại Samsung Galaxy Note 10 | Khe cắm bút S-Pen\" src=\"https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-tgdd-32.jpg\" title=\"Điện thoại Samsung Galaxy Note 10 | Khe cắm bút S-Pen\" /></a></p>\r\n\r\n<p>Ngo&agrave;i những thao t&aacute;c điều khiển m&aacute;y từ xa bằng c&aacute;ch chạm, g&otilde; như Samsung đ&atilde; giới thiệu tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-note-9\" target=\"_blank\" title=\"Tham khảo điện thoại Samsung Galaxy Note 9 chính hãng, giá rẻ\" type=\"Tham khảo điện thoại Samsung Galaxy Note 9 chính hãng, giá rẻ\">Note 9</a>, b&uacute;t S Pen của Note 10 nay c&ograve;n c&oacute; thể thực hiện nhiều hơn thế với động t&aacute;c vẫy, uốn tay nhờ những cảm biến n&agrave;y.</p>\r\n\r\n<p>V&iacute; dụ ứng dụng camera tr&ecirc;n m&aacute;y hỗ trợ kết nối với S Pen, cho ph&eacute;p bạn biến b&uacute;t S Pen th&agrave;nh c&ocirc;ng cụ gi&uacute;p bạn điều chỉnh ống k&iacute;nh camera, thay đổi m&agrave;u sắc, zoom,... giống như đang thao t&aacute;c bằng tay.</p>', 0, 10, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `ra_product_id` int(11) NOT NULL DEFAULT 0,
  `ra_number` tinyint(4) NOT NULL DEFAULT 0,
  `ra_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ra_user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `ra_product_id`, `ra_number`, `ra_content`, `ra_user_id`, `created_at`, `updated_at`) VALUES
(1, 14, 3, '121212', 1, NULL, NULL),
(3, 13, 4, 'Sản phẩm quá tốt', 1, NULL, NULL),
(4, 11, 4, 'Sản phẩm rất tốt', 1, NULL, NULL),
(5, 12, 3, 'tot', 1, NULL, NULL),
(6, 13, 5, 'san pham qua ngon', 1, '2020-05-20 18:20:23', '2020-05-20 18:20:23'),
(7, 12, 4, 'san pham rat tuyet', 1, '2020-05-21 02:34:06', '2020-05-21 02:34:06'),
(8, 12, 4, 'san pham rat tot', 5, '2020-05-26 02:03:52', '2020-05-26 02:03:52'),
(9, 8, 4, 'Sản phẩm rất tốt và ổn', 5, '2020-05-29 07:38:58', '2020-05-29 07:38:58'),
(10, 8, 5, 'San pham rat chat luong', 5, '2020-06-02 04:09:16', '2020-06-02 04:09:16'),
(11, 12, 4, 'Rat tot', 5, '2020-06-17 04:34:54', '2020-06-17 04:34:54'),
(12, 9, 4, 'Sản phẩm rất tốt', 5, '2020-06-17 05:17:49', '2020-06-17 05:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `tr_user_id` int(11) NOT NULL DEFAULT 0,
  `tr_total` int(11) NOT NULL DEFAULT 0,
  `tr_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tr_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tr_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tr_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tr_user_id`, `tr_total`, `tr_note`, `tr_address`, `tr_phone`, `tr_status`, `created_at`, `updated_at`) VALUES
(9, 5, 100000000, 'giao hanh nhanh', '3118 duong so 6 Linh Chieu Thu Duc', '04674566641', 1, '2020-05-21 22:24:28', '2020-05-21 22:24:57'),
(10, 5, 100000000, 'giao hang nhanh', '228 duong so 6 Linh Chieu Thu Duc', '04674566641', 1, '2020-05-21 22:31:16', '2020-05-21 22:33:52'),
(11, 5, 100000000, 'lien he nhanh', '228 duong so 6 Linh Chieu Thu Duc', '04674566641', 1, '2020-05-21 22:33:44', '2020-05-21 22:33:56'),
(12, 5, 100000000, 'nhanh len nhe', '228 duong so 6 Linh Chieu Thu Duc', '04674566641', 1, '2020-05-21 22:36:29', '2020-05-21 22:36:38'),
(13, 5, 39680000, 'giao hang nhanh', '13118 duong so 6 Linh Chieu Thu Duc', '04674566641', 1, '2020-05-25 18:21:22', '2020-05-25 18:21:34'),
(14, 5, 7380000, 'giao hang nhanh', '13118 duong so 6 Linh Chieu Thu Duc', '04674566641', 1, '2020-06-01 21:05:34', '2020-06-01 21:05:54'),
(15, 5, 3690000, 'giao hang nhanh', '13118 duong so 6 Linh Chieu Thu Duc', '04674566641', 1, '2020-06-12 00:28:44', '2020-06-17 04:28:57'),
(17, 5, 35990000, 'giao hang nhanh', '228 duong so 6 Linh Chieu Thu Duc', '04674566641', 1, '2020-06-17 04:45:59', '2020-06-17 04:46:16'),
(18, 5, 35990000, '12221', '228 duong so 6 Linh Chieu Thu Duc', '04674566641', 0, '2020-06-17 05:43:28', '2020-06-17 05:43:28'),
(19, 5, 3690000, 'tốt', '228 duong so 6 Linh Chieu Thu Duc', '04674566641', 0, '2020-06-28 09:07:09', '2020-06-28 09:07:09'),
(21, 5, 3690000, NULL, '228 duong so 6 Linh Chieu Thu Duc', '04674566641', 0, '2020-06-28 09:11:04', '2020-06-28 09:11:04'),
(22, 5, 3690000, NULL, '228 duong so 6 Linh Chieu Thu Duc', '04674566641', 0, '2020-06-28 09:12:57', '2020-06-28 09:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_pay` int(11) NOT NULL DEFAULT 0,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_code` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `avatar`, `active`, `password`, `remember_token`, `created_at`, `updated_at`, `total_pay`, `address`, `about`, `code`, `time_code`) VALUES
(1, 'Duy', 'nhdlklk@gmail.com', '2121212121212', NULL, 1, '$2y$10$mbiVVSfPoDv0.Aqnun6B3eBEvzfwJlfmGRkm13FuHWVRQi8MszqUK', 'o0KjZpcH2ZHTiQnCjWuBdggl75SAJ54UaEDkvVZj4Ekuodhy34nLXZZ463mj', '2020-05-03 02:14:58', '2020-06-14 07:48:29', 0, NULL, NULL, '$2y$10$c76Vm92nQkPPqtHY49wU0ufQpooKyew9ixy5ff5lhEEa1a3fov3uq', '2020-06-14 07:48:29'),
(2, 'Nguyễn Văn A', 'anc@gmail.com.vn', '0467456664', NULL, 1, '$2y$10$Fmcy670x3giVCKvgA0N4pu54wy7Qs8gyLQF20ExXQ7V3chu5ffSwy', NULL, '2020-05-12 01:52:27', '2020-06-30 11:18:12', 0, NULL, NULL, '$2y$10$4FYdbqzw2cvGZQjaNZp9xuz23.Du8ZLsYS2zZHUdIAFVdeYuYhDpa', '2020-06-30 11:18:12'),
(3, 'Nguyễn Văn B', 'anvc@gmail.com', '0467456664', NULL, 1, '$2y$10$0egZQcRgrZYK53FkgMk/m.mYeUrxa3aLyBeLr0Fr7RtKK9K17lQDW', 'Ky2ck4Y4JXqKIRQsaQAGQilj2GzNNpDIwrLd4uqeqNFOrEFXeNnrxjzPdyDe', '2020-05-12 01:55:13', '2020-05-12 01:55:13', 1, NULL, NULL, NULL, NULL),
(5, 'Cù Anh Tuấn', '16110037@student.hcmute.edu.vn', '04674566641', NULL, 1, '$2y$10$pTq/WkTcVPVj47BFMNALd./glRsgHIF64e.O.iehhUigh5kz14JyC', 'TP3aIIzbmi5HL7HW3z9vizkj8CoDziA42j7YBOmG8tdFh8W71lNn6AA9fnox', '2020-05-21 22:23:56', '2020-06-30 11:19:23', 8, '228 duong so 6 Linh Chieu Thu Duc', 'Là người vui vẻ, hoà đồng', '$2y$10$xoLqprdtufgLe4xmJof/zOYTZvYjz9/6bAwiMEOGZ4G8a6eCsYguy', '2020-06-30 11:17:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_active_index` (`active`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_a_name_unique` (`a_name`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_author_id_index` (`a_author_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_name_unique` (`c_name`),
  ADD KEY `categories_c_slug_index` (`c_slug`),
  ADD KEY `categories_c_active_index` (`c_active`),
  ADD KEY `categories_c_home_index` (`c_home`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_or_transaction_id_index` (`or_transaction_id`),
  ADD KEY `orders_or_product_id_index` (`or_product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_pro_slug_index` (`pro_slug`),
  ADD KEY `products_pro_category_id_index` (`pro_category_id`),
  ADD KEY `products_pro_author_id_index` (`pro_author_id`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_ra_product_id_index` (`ra_product_id`),
  ADD KEY `ratings_ra_user_id_index` (`ra_user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tr_user_id_index` (`tr_user_id`),
  ADD KEY `transactions_tr_status_index` (`tr_status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_active_index` (`active`),
  ADD KEY `users_code_index` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
