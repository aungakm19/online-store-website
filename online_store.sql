-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 05, 2022 at 12:43 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Entry Level', '2020-10-08 00:23:50', '2020-10-08 00:23:50'),
(2, 'Midrange Level', '2020-10-08 00:24:24', '2020-10-08 00:24:24'),
(3, 'Flagship Level', '2020-10-08 00:24:40', '2020-10-08 00:24:40');

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
-- Table structure for table `featured_products`
--

CREATE TABLE `featured_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_products`
--

INSERT INTO `featured_products` (`id`, `name`, `spec`, `price`, `cover`, `category_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Apple MacBook Pro 2020 13-inch MWP42 i5 512GB (Space Gray)', 'MacOS Catalina, 2.0GHz quad-core 10th-generation Intel Core i5 processor, Turbo Boost up to 3.8GHz, Intel Iris Plus Graphics, 16GB 3733MHz LPDDR4X memory', 1600, '1602175700.jpg', 1, 'MacBook Pro elevates the notebook to a whole new level of performance and portability. Wherever your ideas take you, you’ll get there faster than ever with high‑performance processors and memory, advanced graphics, blazing‑fast storage, and more — all in a compact 3-pound package. With up to a 10th-generation quad-core Intel Core i7 processor, the 13-inch MacBook Pro is ready to take on even the toughest tasks. So when you’re powering through pro‑level processing jobs like compiling code, layering multiple tracks in a music composition, or encoding video, you’ll get everything done faster. And for the first time, you can configure 32GB of memory on a 13-inch MacBook Pro — for up to 50 percent faster performance when you’re applying edits to gigapixel images in Photoshop, the capacity to load more virtual instruments, and incredible fluidity when you’re running multiple virtual machines.\r\n\r\n', '2020-10-08 10:18:20', '2020-10-08 10:18:20'),
(2, 'ASUS VivoBook X512JP-EJ262TS i5-10th Gen (Star Gray)', 'CPU: Intel® Core™ i5 1035G1 1.0GHz (6MB Cache, up to 3.60GHz), OS: Windows 10 Home, Memory: DDR4 3200 8GB (onboard 4GB + 4GB), Up to 12GB, Display: 15.6″ FHD (60Hz Anti-Glare Panel), GPU: NVIDIA MX330 2GB GDDR5', 700, '1602175848.jpg', 2, 'The new frameless four-sided NanoEdge display keeps dimensions down to a minimum, giving VivoBook 15 a footprint that’s appreciably smaller than its predecessor. It takes up less space on your desk, leaving more room for you. VivoBook  is available in different finishes that suit your style. Choose Transparent Silver for a sophisticated look, or go for Slate Grey for a more understated approach. Set the trend with the uniquely iridescent Peacock Blue: a unique option that changes color when you look at it from different angles. And if you really want to stand out, there’s Coral Crush with its bright finish. VivoBook 15 is also available with a sleek Transparent Silver metal chassis.', '2020-10-08 10:20:48', '2020-10-08 10:20:48'),
(3, 'Acer Swift 1 SF114-33-P21Y Blue (Pentium)', 'Processor: Intel® Pentium® Silver™ N5030 (4 Cores / 4 Threads, 1.1 GHz / 3.1GHz, 4MB), Display: 14″ FHD (1920×1080) Full HD IPS Anti-glare, Graphics: Integrated Intel UHD Graphics 620, Memory: 8GB', 450, '1602175894.jpg', 3, 'Work quickly and efficiently or kick back and enjoy yourself with the powerful processing of the Intel® Pentium® Silver Processor1 and vivid colors of the narrow-bezel 14-inch display. The thin body and long 16-hour battery2 mean this device is at your side wherever life takes you. Go where you want, when you want, and be sure to choose a color that calls to you. At just 1.3 kg1 and 14.95mm, this laptop stays with you throughout your daily adventures.', '2020-10-08 10:21:34', '2020-10-08 10:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `spec`, `price`, `cover`, `category_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Apple MacBook Pro 2020 13-inch', 'MacOS Catalina, 2.0GHz quad-core 10th-generation Intel Core i5 processor, Turbo Boost up to 3.8GHz, Intel Iris Plus Graphics, 16GB 3733MHz LPDDR4X memory', 1600, '1603726321.jpg', 1, 'MacBook Pro elevates the notebook to a whole new level of performance and portability. Wherever your ideas take you, you’ll get there faster than ever with high‑performance processors and memory, advanced graphics, blazing‑fast storage, and more — all in a compact 3-pound package. With up to a 10th-generation quad-core Intel Core i7 processor, the 13-inch MacBook Pro is ready to take on even the toughest tasks. So when you’re powering through pro‑level processing jobs like compiling code, layering multiple tracks in a music composition, or encoding video, you’ll get everything done faster. And for the first time, you can configure 32GB of memory on a 13-inch MacBook Pro — for up to 50 percent faster performance when you’re applying edits to gigapixel images in Photoshop, the capacity to load more virtual instruments, and incredible fluidity when you’re running multiple virtual machines.\r\n\r\n', '2020-10-08 09:17:55', '2020-10-26 09:02:01'),
(3, 'Dell XPS 13 9300 (i7-10th Gen)', 'Processor: 10th Generation Intel® Core™ i7-1065G7 Processor (8MB Cache, up to 3.9 GHz), Graphics: Intel® Iris Plus Graphics, Display: 13.4″ UHD+ (3840 x 2400) InfinityEdge Touch Anti-Reflecitve 500-Nit, Memory: 16GB 3733MHz LPDDR4x Memory Onboard', 1500, '1603726184.jpg', 1, 'The stunning 4-sided InfinityEdge display enables us to bring a 6.8% larger 16:10 display to the 13-inch, all in a 2% smaller size than before, delivering a 91.5% screen to body ratio. With 10th Gen InteI® Core™ mobile processors, it’s now possible to enjoy incredibly immersive entertainment on a remarkably thin and light laptop. 10th Gen Intel® Core™ processor-powered systems featuring the latest Intel® Iris® Plus graphics take a huge leap forward in gaming, streaming and creativity, pushing a smoother, more detailed and more vivid experience than ever before on highly portable devices. When you see the “Engineering for mobile performance” icon next to select configurations, you know it was designed to keep up with your fast-paced life.', '2020-10-08 09:27:08', '2020-10-26 08:59:44'),
(4, 'Asus ZenBook UX534FTC (i7-10th Gen)', 'Processor: Intel® Core™ i7 10510U, Memory: 16 GB LPDDR3, Onboard Storage: 1TB PCIe SSD, Graphics: NVIDIA® GeForce® GTX 1650, Display: 15.6″ (16:9) LED-backlit FHD (1920×1080)', 1300, '1603726214.jpg', 1, 'Designed to give you more screen area in less physical space, the NanoEdge design has slimmer bezels on all four sides to make any visuals more immersive, with less distraction for your eyes. It also features wide-view technology for clear images even when viewed from extreme angles. ZenBook 15 has a crisp, clear, high-resolution display that makes any visuals look their best, with wide viewing angles and vivid, accurate colors. With any ZenBook, your comfort is one of our top priorities. ZenBook 15 goes the extra mile with its exclusive ErgoLift hinge, an engineering masterpiece designed to automatically tilt the keyboard to the most comfortable typing position. But that’s not all: the carefully calculated tilt improves cooling and audio performance, too.', '2020-10-08 01:46:50', '2020-10-26 09:00:14'),
(5, 'HP Notebook 15s-gu0002AU  (Ryzen 3250U)', 'Display: 15.6″ diagonal FHD SVA, anti-glare micro-edge WLED-backlit(1920 x 1080 ), CPU:  AMD RyzenTM 3 3250U Processor, Graphic: AMD Radeon Vega 3 Graphics (freeSync Ready), Memory: 4GB DDR4 Memory', 400, '1603726472.jpg', 1, 'Thin, light, and designed to travel. See more of your photos, videos and projects on a 6.5 mm micro-edge bezel display. Tackle your busiest days with the performance of a reliable AMD processor. Save more of what you love with abundant storage for all your photos, videos and documents.', '2020-10-08 01:51:16', '2020-10-26 09:04:32'),
(6, 'Acer Swift 1 SF114-33-P21Y Blue (Pentium)', 'Processor: Intel® Pentium® Silver™ N5030 (4 Cores / 4 Threads, 1.1 GHz / 3.1GHz, 4MB), Display: 14″ FHD (1920×1080) Full HD IPS Anti-glare, Graphics: Integrated Intel UHD Graphics 620, Memory: 8GB', 450, '1602145422.jpg', 1, 'Work quickly and efficiently or kick back and enjoy yourself with the powerful processing of the Intel® Pentium® Silver Processor1 and vivid colors of the narrow-bezel 14-inch display. The thin body and long 16-hour battery2 mean this device is at your side wherever life takes you. Go where you want, when you want, and be sure to choose a color that calls to you. At just 1.3 kg1 and 14.95mm, this laptop stays with you throughout your daily adventures.', '2020-10-08 01:53:42', '2020-10-08 01:53:42'),
(7, 'Lenovo Ideapad V330 14AST (Ryzen 3)', 'Processor: AMD A4-9125 Clock Speed: 2.3-26GHz, Display Size: 14 Inch Display, Resolution: 1366×768 HD, Ram: 4 Gb DDR4, Storage: SSD 128GB', 390, '1603726494.jpg', 1, 'A laptop isn’t just a piece of electronics—it’s also an investment. That’s why we designed the Ideapad 330 with a special protective finish to guard against wear and tear, as well as rubber detailing on the bottom to maximize ventilation and extend component life. Running out of battery and short on time? The Ideapad 330 boasts up to 6 hours of battery life—and also supports Rapid Charge—15 minutes plugged in will give you up to 2 hours of use.* Make the most of your time.', '2020-10-08 01:57:20', '2020-10-26 09:04:54'),
(8, 'ASUS VivoBook X512 (i5-10th Gen)', 'CPU: Intel® Core™ i5 1035G1 1.0GHz (6MB Cache, up to 3.60GHz), OS: Windows 10 Home, Memory: DDR4 3200 8GB (onboard 4GB + 4GB), Up to 12GB, Display: 15.6″ FHD (60Hz Anti-Glare Panel), GPU: NVIDIA MX330 2GB GDDR5', 700, '1603726669.jpg', 1, 'The new frameless four-sided NanoEdge display keeps dimensions down to a minimum, giving VivoBook 15 a footprint that’s appreciably smaller than its predecessor. It takes up less space on your desk, leaving more room for you. VivoBook  is available in different finishes that suit your style. Choose Transparent Silver for a sophisticated look, or go for Slate Grey for a more understated approach. Set the trend with the uniquely iridescent Peacock Blue: a unique option that changes color when you look at it from different angles. And if you really want to stand out, there’s Coral Crush with its bright finish. VivoBook 15 is also available with a sleek Transparent Silver metal chassis.', '2020-10-08 02:01:57', '2020-10-26 09:07:49'),
(9, 'Lenovo Ideapad3 14ADA05 (Ryzen 7)', 'Processor: AMD Ryzen 7 4700U (8Cores / 8Threads, 2.0 / 4.1GHz, 4MB L2 / 8MB L3), Graphics: Integrated AMD Radeon Vega 7 Graphics, Display: 14” FHD (1920×1080) 220nits Anti-glare, Memory: 8GB, Storage: SSD 512GB PCIe NVMe', 650, '1603726543.jpg', 1, 'Nothings worse than buying an entry-level laptop and having to replace it when you pick up a new hobby or skill that requires better performance. The IdeaPad 3 14” AMD is designed to keep you in that entry-level price point. With Ryzen™ R5 processing this laptop will keep up with you as your needs evolve. With a spacious 17″ display with HD+ resolution, you can catch all the fine details in your favorite photographs and streaming videos. You can take those visuals to the next level with AMD Radeon™ graphics. Narrow bezels give it a sleek and borderless look, providing you more screen to look at. With Dolby Audio™ sound, you’ll love what you hear as well as see.', '2020-10-08 02:04:51', '2020-10-26 09:05:43'),
(10, 'Dell Vostro 5590 (i7-10th Gen)', 'Display: 15.6″/FULL HD(1920X1080), Processor: 10th gen Intel(R) Core(TM) i7-10510U 1.80 GHz, Memory: 8GB(Onboard Memory)2666MHz Up to 24GB, Hard Drive: 256GB M.2 PCIe NVMe', 900, '1603726635.jpg', 1, 'Enjoy the extra power and optimal everyday performance of NVDIA® MX230/MX250 graphics with 2GB GDDR5 vRAM. Trusted Platform Module 2.0 is a commercial-grade security chip installed on the motherboard of the computer that creates and stores passwords and encryption keys. It is used to verify that the computer has not been tampered with before booting up and protects your data against external software attacks better than software security because it is hardware-based, opposed software security that can be hacked via malware.', '2020-10-08 02:07:32', '2020-10-26 09:07:15'),
(21, 'admin', 'aung kaung myat', 1600, '1602515932.jpg', 2, 'asdadafdzvae', '2020-10-12 08:48:52', '2020-10-12 08:48:52'),
(23, 'Macbook m1', 'blah blah', 1300, '1643986791.png', 3, 'a yaung kg', '2022-02-04 08:29:51', '2022-02-04 08:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_06_153100_create_items_table', 1),
(5, '2020_10_06_153311_create_categories_table', 1),
(6, '2020_10_08_163637_create_featured_products_table', 2),
(7, '2020_10_20_125351_create_orders_table', 3),
(8, '2020_10_20_125427_create_order_items_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aung Kg Myat', 'aung.akm17@gmail.com', '09422555544', 'yangon', 0, '2020-10-22 01:17:17', '2020-10-26 08:23:43'),
(2, 'Alfino', 'alfino@gmail.com', '09564323', 'Ahtaung', 1, '2020-10-22 02:55:41', '2020-10-27 08:06:51'),
(3, 'Nay Zin', 'nayzin@gamil.com', '01216545614', 'Bago', 0, '2020-10-26 00:17:58', '2020-10-26 02:31:57'),
(4, 'Pico jack', 'pico@gmail.com', '09564872', 'KyonePyaw', 0, '2020-10-26 10:42:12', '2020-10-27 08:05:47'),
(5, 'Pyone zarni', 'pyonezarni@gmail.com', '0954546454', 'Ahtaung', 1, '2020-12-07 01:20:50', '2020-12-07 01:24:04'),
(6, 'ViVi', 'viVi@gmail.com', 'asdfghjkl234', 'Bago', 0, '2021-08-04 11:02:13', '2021-08-04 11:02:13'),
(7, 'JoJo', 'jojo@gmail.com', 'tuyiy909', 'yangon', 0, '2021-08-04 11:09:48', '2021-08-04 11:09:48'),
(8, 'Kyaw Kyaw', 'kyaw@gmail.com', '098767657', 'Ahtaung', 0, '2021-08-18 03:31:21', '2021-08-18 03:42:26'),
(9, 'Chaw', 'chaw@gamil.com', '90900897907', 'Yangon', 1, '2022-02-01 09:59:56', '2022-02-01 10:03:14'),
(10, 'Kyaw kyaw', 'kyaw@gmail.com', '0987979800', 'Yangon', 0, '2022-02-04 08:27:19', '2022-02-04 08:30:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `totalprice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `item_id`, `order_id`, `qty`, `totalprice`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 2, '3000', '2020-10-22 01:17:17', '2020-10-22 01:17:17'),
(2, 1, 2, 1, '2900', '2020-10-22 02:55:41', '2020-10-22 02:55:41'),
(3, 4, 2, 1, '2900', '2020-10-22 02:55:41', '2020-10-22 02:55:41'),
(4, 3, 3, 2, '5900', '2020-10-26 00:17:58', '2020-10-26 00:17:58'),
(5, 4, 3, 1, '5900', '2020-10-26 00:17:58', '2020-10-26 00:17:58'),
(6, 1, 3, 1, '5900', '2020-10-26 00:17:58', '2020-10-26 00:17:58'),
(7, 3, 4, 2, '3000', '2020-10-26 10:42:13', '2020-10-26 10:42:13'),
(8, 1, 5, 2, '4700', '2020-12-07 01:20:50', '2020-12-07 01:20:50'),
(9, 3, 5, 1, '4700', '2020-12-07 01:20:50', '2020-12-07 01:20:50'),
(10, 3, 6, 1, '1500', '2021-08-04 11:02:13', '2021-08-04 11:02:13'),
(11, 1, 7, 1, '1600', '2021-08-04 11:09:48', '2021-08-04 11:09:48'),
(12, 1, 8, 1, '3100', '2021-08-18 03:31:21', '2021-08-18 03:31:21'),
(13, 3, 8, 1, '3100', '2021-08-18 03:31:21', '2021-08-18 03:31:21'),
(14, 4, 9, 1, '2900', '2022-02-01 09:59:56', '2022-02-01 09:59:56'),
(15, 1, 9, 1, '2900', '2022-02-01 09:59:56', '2022-02-01 09:59:56'),
(16, 1, 10, 1, '3100', '2022-02-04 08:27:19', '2022-02-04 08:27:19'),
(17, 3, 10, 1, '3100', '2022-02-04 08:27:19', '2022-02-04 08:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('aung.akm17@gmail.com', '$2y$10$vxvbCBY98eIOm2aY6s.QuOlCmiaCRzJjbLu5IkO69/LqX0S6mgP.e', '2021-10-02 07:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$BsZeYl7dJjy4J..EKq4nb.RILE3/fux0hcCNwQKTTL0v6ApGiKSjC', NULL, '2020-10-20 01:51:25', '2020-10-20 01:51:25'),
(2, 'Aung Kaung Myat', 'aung.akm17@gmail.com', NULL, '$2y$10$Dt0fAbgoHYsy7Md50bWDKuoU3j1Gbcj5HJ5tDOpFsywi0jaWhPXTS', NULL, '2021-08-04 09:18:35', '2021-08-04 09:18:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_products`
--
ALTER TABLE `featured_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_products`
--
ALTER TABLE `featured_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
