-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2025 at 08:56 PM
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
-- Database: `bondvoyage_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `password`, `created_at`) VALUES
(1, '4bstravelandtours@gmail.com', '0680ca7e3e9b3b7dfafaf52b4a55179785689364f87829dbe6faae005603a595', '2025-01-10 03:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `create_travel`
--

CREATE TABLE `create_travel` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `travel_name` varchar(255) NOT NULL,
  `share_code` varchar(8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `create_travel`
--

INSERT INTO `create_travel` (`id`, `user_id`, `travel_name`, `share_code`, `created_at`) VALUES
(1, 2, 'A', 'LLDAS28C', '2025-01-12 09:06:46'),
(4, 2, 'C', 'JU8Z4RHY', '2025-01-12 09:17:29'),
(5, 2, 'B', 'O4RLX7C8', '2025-01-12 09:19:17'),
(6, 2, 'N', 'AYVGLS0D', '2025-01-12 09:19:36'),
(7, 1, 'L', '0EOQ8ALW', '2025-01-12 09:20:56'),
(8, 1, 'F', 'K5J0I0CT', '2025-01-12 10:10:44'),
(9, 1, 'G', '8OMFRDG4', '2025-01-12 10:10:55'),
(10, 1, 'H', 'KPS7RF88', '2025-01-12 10:16:14'),
(11, 1, 'I', 'IJR2IQSY', '2025-01-12 10:16:22'),
(12, 1, 'J', 'C7B7VA89', '2025-01-12 10:34:17'),
(14, 2, 'O', 'ENOYVCXQ', '2025-01-12 13:46:05'),
(15, 1, 'P', '7VSU68ZE', '2025-01-12 17:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `itineraries`
--

CREATE TABLE `itineraries` (
  `id` int(11) NOT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `duration_days` int(11) DEFAULT NULL,
  `duration_nights` int(11) DEFAULT NULL,
  `lodging` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itineraries`
--

INSERT INTO `itineraries` (`id`, `destination`, `duration_days`, `duration_nights`, `lodging`) VALUES
(1, 'Sample 1', 1, 1, 'Hotel'),
(2, 'Baguio', 2, 1, 'Hotel'),
(3, 'A', 1, 0, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `itinerary_days`
--

CREATE TABLE `itinerary_days` (
  `id` int(11) NOT NULL,
  `itinerary_id` int(11) NOT NULL,
  `day_number` int(11) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itinerary_days`
--

INSERT INTO `itinerary_days` (`id`, `itinerary_id`, `day_number`, `start_time`, `end_time`, `activity`) VALUES
(1, 1, 1, '12:00:00', '13:00:00', 'Lunch'),
(2, 2, 1, '00:00:00', '10:00:00', 'Meet Up'),
(3, 2, 2, '00:00:00', '10:00:00', 'Run'),
(4, 3, 1, '02:51:00', '03:51:00', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `activities` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `destination`, `place_name`, `location`, `description`, `activities`, `created_at`) VALUES
(1, 'Ilocos', 'San Agustin Church of Paoay', 'Marcos Ave, Paoay, Ilocos Norte', 'Paoay Church is a Roman Catholic church in Paoay, Ilocos Norte province, completed in 1710 after two decades of construction. With a massive pediment and complementary bell tower standing imposingly on an expansive plain, the church is famous for its architecture that blends baroque, gothic, Chinese, and Javanese styles. Today, it is one of the top tourist attractions in the Ilocos Region.', 'Religious Services (Masses, Novena Services, Sacrament of Confession)\r\nCultural and Heritage Tours\r\nEducational and Spiritual Workshops\r\nHeritage and Arts Exhibits\r\nLocal Craft and Souvenir Sales:', '2025-01-07 16:14:41'),
(2, 'Ilocos', 'a', 'a', 'a', 'a', '2025-01-07 16:44:14'),
(3, 'Ilocos', 'b', 'b', 'b', 'b', '2025-01-07 16:45:21'),
(4, 'Ilocos', 'C', 'C', 'C', 'C', '2025-01-07 16:47:57'),
(5, 'Ilocos', 'D', 'D', 'D', 'D', '2025-01-07 16:56:10'),
(6, 'Ilocos', 'E', 'E', 'E', 'E', '2025-01-07 16:56:56'),
(7, 'Ilocos', 'F', 'F', 'F', 'F', '2025-01-07 17:11:37'),
(8, 'Ilocos', 'H', 'H', 'H', 'H', '2025-01-07 17:21:05'),
(9, 'Ilocos', 'I', 'I', 'I', 'I', '2025-01-07 17:23:30'),
(10, 'Ilocos', 'J', 'J', 'J', 'J', '2025-01-07 17:32:57'),
(11, 'Ilocos', 'K', 'K', 'K', 'K', '2025-01-07 17:33:43'),
(12, 'Ilocos', 'L', 'L', 'L', 'L', '2025-01-07 17:34:38'),
(13, 'Ilocos', 'M', 'M', 'M', 'M', '2025-01-07 17:36:10'),
(14, 'Ilocos', 'N', 'N', 'N', 'N', '2025-01-07 17:50:53'),
(15, 'Ilocos', 'a', 'a', 'a', 'a', '2025-01-10 18:06:52'),
(16, 'Ilocos', 'B', 'B', 'B', 'B', '2025-01-10 18:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `place_images`
--

CREATE TABLE `place_images` (
  `id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `place_images`
--

INSERT INTO `place_images` (`id`, `place_id`, `image_path`) VALUES
(1, 1, 'uploads/677d52f1dbba6_paoay-church-4.JPG'),
(2, 1, 'uploads/677d52f20fba6_paoay-church-3.jpg'),
(3, 1, 'uploads/677d52f235890_paoay-church-2.png'),
(4, 1, 'uploads/677d52f28c461_paoay-church-1.jpg'),
(5, 2, 'uploads/677d59e0225f9_paoay-church-1.jpg'),
(6, 3, 'uploads/677d5a21cbfa2_paoay-church-3.jpg'),
(7, 3, 'uploads/677d5a2200ee3_paoay-church-2.png'),
(8, 4, 'uploads/677d5abdaf9d8_paoay-church-3.jpg'),
(9, 5, 'uploads/677d5caae1020_paoay-church-3.jpg'),
(10, 6, 'uploads/677d5cd8def1a_paoay-church-1.jpg'),
(11, 7, 'uploads/677d6049be8c1_paoay-church-1.jpg'),
(12, 7, 'uploads/677d604a11cbe_paoay-church-2.png'),
(13, 7, 'uploads/677d604ad83db_paoay-church-3.jpg'),
(14, 7, 'uploads/677d604b219a7_paoay-church-4.JPG'),
(15, 8, 'uploads/677d6282b14c3_paoay-church-1.jpg'),
(16, 9, 'uploads/677d6312beef2_paoay-church-4.JPG'),
(17, 9, 'uploads/677d6312d577a_paoay-church-3.jpg'),
(18, 9, 'uploads/677d631307ca5_paoay-church-2.png'),
(19, 9, 'uploads/677d631360861_paoay-church-1.jpg'),
(20, 10, 'uploads/677d6549aab4c_paoay-church-4.JPG'),
(21, 10, 'uploads/677d6549e48a9_paoay-church-3.jpg'),
(22, 10, 'uploads/677d654a26faf_paoay-church-1.jpg'),
(23, 10, 'uploads/677d654a6d12b_paoay-church-2.png'),
(24, 10, 'uploads/677d654b3bd03_paoay-church-4.JPG'),
(25, 10, 'uploads/677d654b96d43_paoay-church-3.jpg'),
(26, 11, 'uploads/677d6577736d6_paoay-church-4.JPG'),
(27, 11, 'uploads/677d6577c21d0_paoay-church-3.jpg'),
(28, 11, 'uploads/677d6577f2e1c_paoay-church-1.jpg'),
(29, 11, 'uploads/677d657841418_paoay-church-2.png'),
(30, 11, 'uploads/677d6578b35c2_paoay-church-4.JPG'),
(31, 11, 'uploads/677d65794fb14_paoay-church-3.jpg'),
(32, 11, 'uploads/677d65796ad3c_paoay-church-1.jpg'),
(33, 11, 'uploads/677d657995a0b_paoay-church-2.png'),
(34, 11, 'uploads/677d6579abd7a_paoay-church-4.JPG'),
(35, 11, 'uploads/677d657abb353_paoay-church-3.jpg'),
(36, 12, 'uploads/677d65aed279b_paoay-church-4.JPG'),
(37, 12, 'uploads/677d65af1c9f2_paoay-church-3.jpg'),
(38, 12, 'uploads/677d65af3c960_paoay-church-1.jpg'),
(39, 12, 'uploads/677d65af5ea00_paoay-church-2.png'),
(40, 12, 'uploads/677d65af8bca6_paoay-church-3.jpg'),
(41, 12, 'uploads/677d65afbf3ff_paoay-church-4.JPG'),
(42, 13, 'uploads/677d660a3b4ed_paoay-church-4.JPG'),
(43, 13, 'uploads/677d660a691a4_paoay-church-3.jpg'),
(44, 13, 'uploads/677d660a7c2b6_paoay-church-1.jpg'),
(45, 13, 'uploads/677d660a94845_paoay-church-2.png'),
(46, 13, 'uploads/677d660abe4be_paoay-church-3.jpg'),
(47, 13, 'uploads/677d660af261a_paoay-church-4.JPG'),
(48, 13, 'uploads/677d660b869c5_paoay-church-1.jpg'),
(49, 13, 'uploads/677d660be09b7_paoay-church-2.png'),
(50, 13, 'uploads/677d660c13d07_paoay-church-4.JPG'),
(51, 13, 'uploads/677d660c254e7_paoay-church-3.jpg'),
(52, 14, 'uploads/677d697db3327_paoay-church-4.JPG'),
(53, 14, 'uploads/677d697e089d4_paoay-church-3.jpg'),
(54, 14, 'uploads/677d697e6b1f5_paoay-church-1.jpg'),
(55, 14, 'uploads/677d697f4eb48_paoay-church-2.png'),
(56, 16, 'uploads/67816553b6990_paoay-church-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `travel_collaborators`
--

CREATE TABLE `travel_collaborators` (
  `id` int(11) NOT NULL,
  `travel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `joined_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel_collaborators`
--

INSERT INTO `travel_collaborators` (`id`, `travel_id`, `user_id`, `joined_at`) VALUES
(1, 1, 1, '2025-01-12 16:47:07'),
(2, 1, 1, '2025-01-12 16:47:08'),
(3, 1, 1, '2025-01-12 16:47:10'),
(4, 1, 1, '2025-01-12 16:47:11'),
(5, 4, 1, '2025-01-12 16:47:51'),
(6, 14, 1, '2025-01-12 16:56:32'),
(7, 1, 3, '2025-01-12 19:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `birthday` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `security_question_1` varchar(255) NOT NULL,
  `security_answer_1` varchar(255) NOT NULL,
  `security_question_2` varchar(255) NOT NULL,
  `security_answer_2` varchar(255) NOT NULL,
  `security_question_3` varchar(255) NOT NULL,
  `security_answer_3` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `mobile`, `birthday`, `password`, `security_question_1`, `security_answer_1`, `security_question_2`, `security_answer_2`, `security_question_3`, `security_answer_3`, `created_at`) VALUES
(1, 'Virginia Rose', 'Dichoso', 'virginiarosedichoso@gmail.com', '09064815090', '2003-01-04', '$2y$10$hbglgRDQ9GqpHtWBhj2U/O1osolsI3j8XiK1OODera7U/2jSRDz5e', 'friend', '$2y$10$Wo8A6kTQRBtReJtgCnQt2.Em1Letci6xb09c/dHZGxUc7Nw5m38jm', 'toy', '$2y$10$HB0nb2lMkQS9Dj5nqQZFF.Fp1RBaG3wnWAK9bJRtmLVjBxbnc25bi', 'character', '$2y$10$SwEfZU4eYy0JCdjCyJ.H/OU.OApe1ZSnhitV0.sAqkcGWDwPtGC0.', '2025-01-12 07:42:27'),
(2, 'Tony', 'Stark', 'tonystark@gmail.com', '09064815090', '2003-01-04', '$2y$10$IHYZBwWx2HOuRCKyIwRgu..fCGHUNzdHITPkWprIYRfLYiFA38O66', 'movie', '$2y$10$egON3O5VMBmyyzSGhI3zy.DnfkZSeUayL.r01E6Brli2UFsF.vjNe', 'friend', '$2y$10$FbUxP92BSMWAJDj1M8OtjOyeJiqmaHdthLm8gXHsNpL2oKg6W4Wqy', 'character', '$2y$10$0KS8FjAj7M0/41khNkBCWe0LJnvr4S6jE.UHKdQ6x8458pKyct2Zq', '2025-01-12 08:56:33'),
(3, 'Steve', 'Rogers', 'steverogers@gmail.com', '09064815090', '2003-01-04', '$2y$10$dvF2Qqpny9Vp.EjTJQCwNuEkMzbNn2g5REFafBsJBxd9MROz.4Ryy', 'movie', '$2y$10$bX1oxk//b6hgM6umL03bneJ46yVjqaZUS/X12l7KJ95KdlNzRGpcG', 'friend', '$2y$10$Wi.ojVHXJ5nwwTdBif1h8OKSHnv.edvju5tav3suv3mTBMH0ypCwu', 'character', '$2y$10$v/xt1pxxcuGVrPW/E.XuIehruVD8EjolNInHAKjZq/frQG/WX7QLu', '2025-01-12 19:18:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `create_travel`
--
ALTER TABLE `create_travel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `share_code` (`share_code`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `itineraries`
--
ALTER TABLE `itineraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itinerary_days`
--
ALTER TABLE `itinerary_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itinerary_id` (`itinerary_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place_images`
--
ALTER TABLE `place_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place_id` (`place_id`);

--
-- Indexes for table `travel_collaborators`
--
ALTER TABLE `travel_collaborators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel_id` (`travel_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `create_travel`
--
ALTER TABLE `create_travel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `itineraries`
--
ALTER TABLE `itineraries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `itinerary_days`
--
ALTER TABLE `itinerary_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `place_images`
--
ALTER TABLE `place_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `travel_collaborators`
--
ALTER TABLE `travel_collaborators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `create_travel`
--
ALTER TABLE `create_travel`
  ADD CONSTRAINT `create_travel_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `place_images`
--
ALTER TABLE `place_images`
  ADD CONSTRAINT `place_images_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `travel_collaborators`
--
ALTER TABLE `travel_collaborators`
  ADD CONSTRAINT `travel_collaborators_ibfk_1` FOREIGN KEY (`travel_id`) REFERENCES `create_travel` (`id`),
  ADD CONSTRAINT `travel_collaborators_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
