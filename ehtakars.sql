-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2020 at 09:37 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ehtakars`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `c_id` bigint(20) UNSIGNED NOT NULL,
  `c_province` enum('Badakhshan	','Badghis','Baghlan','Balkh','Bamyan','Daykundi','Farah','Faryab','Ghazni','Ghor','Helmand','Herat','Jowzjan','Kabul','Kandahar','Kapisa','Khost','Kunar','Kunduz','Laghman','Logar','Nangarhar','Nimruz','Nuristan','Paktia','Paktika','Panjshir','Parwan','Samangan','Sar-e Pol','Takhar','Urozgan','Wardak','Zabul') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Herat',
  `c_district` enum('Adraskan District','Chishti Sharif District','Farsi District','Ghurian District','Gulran District','Guzara District','Injil District','Karukh District','Kohsan District','Kushk District','Kushki Kuhna District','Obe District','Pashtun Zarghun District','Shindand District','Zendeh Jan District','First District','Second District','Third District','Fourth District','Fifth District','Sixth District','Seventh District','Eighth District','Ninth District','Tenth District','Eleventh District','Twelfth District','Thirteenth District','Fourteenth District','Fifteenth District') COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_ehtakar_position_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `c_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_answer` text COLLATE utf8mb4_unicode_ci DEFAULT 'Have not checked yet.',
  `c_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_type` enum('ehtakar','palces') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_material_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `c_cost` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `person_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`c_id`, `c_province`, `c_district`, `c_ehtakar_position_name`, `c_address`, `c_answer`, `c_photo`, `c_type`, `c_material_name`, `c_cost`, `created_at`, `updated_at`, `person_id`) VALUES
(9, 'Herat', 'Adraskan District', 'rice company', 'ali abad village', 'we will solve it at the first time', '1587315159user_image.jpg', 'ehtakar', 'rice', 2000, '2020-04-19 16:52:39', '2020-04-22 08:48:50', 1),
(11, 'Herat', 'Adraskan District', 'flour company', 'village', 'we will solve it.', '1587473532user_image.jpg', 'palces', NULL, NULL, '2020-04-20 11:08:59', '2020-04-22 09:18:39', 1);

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
(3, '2020_04_02_141108_create_complaints_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `r_id` int(11) NOT NULL,
  `r_name` varchar(255) NOT NULL,
  `r_last_name` varchar(255) NOT NULL,
  `r_phone` varchar(10) NOT NULL,
  `r_province` enum('Badakhshan	','Badghis','Baghlan','Balkh','Bamyan','Daykundi','Farah','Faryab','Ghazni','Ghor','Helmand','Herat','Jowzjan','Kabul','Kandahar','Kapisa','Khost','Kunar','Kunduz','Laghman','Logar','Nangarhar','Nimruz','Nuristan','Paktia','Paktika','Panjshir','Parwan','Samangan','Sar-e Pol','Takhar','Urozgan','Wardak','Zabul') NOT NULL,
  `r_district` enum('Adraskan District','Chishti Sharif District','Farsi District','Ghurian District','Gulran District','Guzara District','Injil District','Karukh District','Kohsan District','Kushk District','Kushki Kuhna District','Obe District','Pashtun Zarghun District','Shindand District','Zendeh Jan District','First District','Second District','Third District','Fourth District','Fifth District','Sixth District','Seventh District','Eighth District','Ninth District','Tenth District','Eleventh District','Twelfth District','Thirteenth District','Fourteenth District','Fifteenth District') NOT NULL,
  `r_location` varchar(255) NOT NULL,
  `r_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`r_id`, `r_name`, `r_last_name`, `r_phone`, `r_province`, `r_district`, `r_location`, `r_password`) VALUES
(1, 'ali', 'ahmadi', '0987654321', 'Herat', 'Fourth District', 'behzad road', ''),
(2, 'ali', 'کریم', '1234567890', 'Herat', 'Kushki Kuhna District', 'behzad road', ''),
(3, 'sudaba', 'solaimankhil', '0792270626', 'Herat', 'Injil District', 'behzad street', '$2y$10$nBwsLbUyh3bdGffJloQ2XOJ5k1tH/S2xhibYvzgFnj8UBMBJC7Hs.'),
(4, 'hh', 'nn', '0799491870', 'Herat', 'Kushki Kuhna District', 'مم', '$2y$10$yzR42rMX.5I/dV1q0DcVx.WVK.ZWolaKq4hK5G0K2.Y6zVZ6/VWZa'),
(5, 'name', 'r_last_name', '0799876543', 'Herat', 'Injil District', 'r_location', '$2y$10$i4Hfo5rpbTasru1/1XaWEu3usUdpRiO6CEHrOZ3lTHC/vA9nh1ydq');

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
(1, 'admin a', 'admin@gmail.com', NULL, '$2y$10$7qfQHFm84M0w1hyKj.1JeetkoFv8pT3BXr62HC5oUSRoZevbzhD5u', NULL, NULL, '2020-04-22 08:59:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`r_id`),
  ADD UNIQUE KEY `r_phone` (`r_phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `c_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `registrations` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
