-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2022 at 07:34 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_wondrousbouquet`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fname`, `lname`, `address`, `city`, `email`, `password`, `type`) VALUES
(7, 'Muhammad', 'Jazlan', '12, Jalan timah 7/25 Seksyen 7', 'Shah Alam', 'lan@gmail.com', '321', 'user'),
(9, 'Abdullah', 'Talib', '18 Jalan Batu', 'Selangor', 'abdullah@gmail.com', '123', 'user'),
(11, 'Muhammad', 'Yazid', '56, Lorong F2, Kampung Melayu Seri Kundang, 48020, Selangor', 'Rawang', 'yazidmuhammad2331@gmail.com', 'yazid', 'user'),
(12, 'Arif', 'Aiman', 'No. 63, Jalan TTB 2, Taman Tasik Biru,48050, Selangor', ' Rawang ', 'arifaiman99@gmail.com', 'arif', 'user'),
(13, 'Afiq', 'Ikmal', 'No. 15 Jalan Taman Desa Kundang 7, Taman Desa Kundang, 48050 , Selangor', 'Rawang', 'afiqikmal61@gmail.com', 'zainal', 'user'),
(14, ' Hariz', 'Azmi', 'No. 27, Jalan Taman Desa Kundang 5,  48050, Selangor', 'Rawang', 'harizkawaii101@gmail.com', 'hariz', 'user'),
(15, 'Halim', 'Mazlan', 'Blok B, No. 9 Lorong B1, Kampung Melayu Seri Kundang, 48050,  Selangor', 'Rawang', 'abdulhalimmajelan@gmail.com', 'halim', 'user'),
(17, 'Muhammad ', 'Naqiuddin', '10, Jalan Nikel', 'Shah Alam', 'naqiuddin@gmail.com', '123', 'user'),
(20, 'Khairul', 'Afiq', '04, Jalan kelana 7/29 Seksyen 7, Selangor\r\n', 'Shah Alam', 'khairul@gmail.com', '456', 'user'),
(22, 'Aqil', 'Farhan', '12, Jalan Koperasi Polis', 'Gombak', 'aqil@gmail.com', '123', 'user'),
(30, 'nik', 'aiman', '01 Kampung Paya', 'Kuala Besut', 'nik@gmail.com', '1234', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_category`, `product_name`, `price`, `units`, `total`, `date`, `email`) VALUES
(31, 'Male', 'RALPH LAUREN POLO BLACK EDT', 500, 1, 500, '2022-07-22 19:55:03', 'jazlanmuhd23@gmail.com'),
(32, 'Male', 'RALPH LAUREN POLO BLACK EDT', 500, 1, 500, '2022-07-22 19:55:40', 'jazlanmuhd23@gmail.com'),
(33, 'Male ', 'Giorgio Armani Acqua Di Gio Profondo', 350, 2, 700, '2022-07-22 21:30:28', 'jazlanmuhd23@gmail.com'),
(34, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 10, 3000, '2022-07-22 21:55:27', 'jazlanmuhd123@gmail.com'),
(35, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 10, 3000, '2022-07-22 22:16:14', 'mohdfarism@gmail.com'),
(36, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 1, 300, '2022-07-22 22:40:42', 'jazlanmuhd123@gmail.com'),
(37, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 2, 600, '2022-07-22 22:46:56', 'jazlanmuhd123@gmail.com'),
(38, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 2, 600, '2022-07-22 23:26:32', 'jazlanmuhd123@gmail.com'),
(39, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 5, 1500, '2022-07-23 05:19:49', 'jazlanmuhd123@gmail.com'),
(40, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 1, 300, '2022-07-23 06:05:08', 'jazlanmuhd123@gmail.com'),
(41, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 3, 900, '2022-07-23 06:09:46', 'jazlanmuhd123@gmail.com'),
(42, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 3, 900, '2022-07-23 06:14:12', 'jazlanmuhd123@gmail.com'),
(43, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 1, 300, '2022-07-23 06:15:41', 'jazlanmuhd123@gmail.com'),
(44, 'Male ', 'Giorgio Armani Acqua Di Gio Profondo', 350, 1, 350, '2022-07-23 06:15:41', 'jazlanmuhd123@gmail.com'),
(45, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 1, 300, '2022-07-23 08:15:31', 'jazlanmuhd123@gmail.com'),
(46, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 3, 900, '2022-07-23 16:13:39', 'jazlanmuhd123@gmail.com'),
(47, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 6, 1800, '2022-07-23 16:16:22', 'jazlanmuhd123@gmail.com'),
(48, 'Male ', 'Giorgio Armani Acqua Di Gio Profondo', 350, 1, 350, '2022-07-23 16:17:31', 'jazlanmuhd123@gmail.com'),
(49, 'Male ', 'CHRISTIAN DIOR - Sauvage Eau De Parfum ', 400, 1, 400, '2022-07-23 16:17:31', 'jazlanmuhd123@gmail.com'),
(50, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 1, 300, '2022-07-23 21:32:56', 'lan@gmail.com'),
(51, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 1, 300, '2022-07-23 21:34:59', 'lan@gmail.com'),
(52, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 1, 300, '2022-07-23 21:36:08', 'lan@gmail.com'),
(53, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 1, 300, '2022-07-23 21:45:23', 'lan@gmail.com'),
(54, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 2, 600, '2022-07-24 03:31:20', 'khairul@gmail.com'),
(55, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 3, 900, '2022-07-24 03:49:27', 'khairul@gmail.com'),
(56, 'Male ', 'GIORGIO ARMANI ACQUA DI GIO', 350, 1, 350, '2022-07-24 03:49:27', 'khairul@gmail.com'),
(57, 'Male', 'RALPH LAUREN POLO BLACK EDT', 300, 2, 600, '2022-07-24 04:20:03', 'aqil@gmail.com'),
(58, 'Male ', 'GIORGIO ARMANI ACQUA DI GIO', 350, 1, 350, '2022-07-24 04:20:03', 'aqil@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_category` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_img` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_category`, `product_name`, `product_img`, `qty`, `price`) VALUES
(2, 'Male ', 'GIORGIO ARMANI ACQUA DI GIO', 'Giorgio.jpg', 96, '350.00'),
(3, 'Male ', 'CHRISTIAN DIOR SAUVAGE EDP', 'Dior sauvage.jpeg', 98, '400.00'),
(4, 'Female ', 'COACH DREAMS EAU DE PARFUM', 'Coach Womenn.jpg', 99, '280.00'),
(5, 'Female ', 'JOE MALONE LONDON RED ROSE', 'Jo Malone Red Womenn.jpg', 99, '300.00'),
(6, 'Female ', 'GUCCI FLORA GORGEOUS EDP', 'Gucci Womenn.jpg', 99, '400.00'),
(7, 'Home ', 'DIPTYQUE BAIES CANDLE', 'Diptyque candle.jpg', 99, '25.00'),
(8, 'Home ', 'DIPTYQUE ORPHÉON EAU DE PARFUM', 'Diptyque edp home.jpg', 99, '80.00'),
(9, 'Home ', 'PARTU HEPA PURIFIER', 'Partu air.jpg', 99, '250.00'),
(99, 'Male', 'RALPH LAUREN POLO BLACK EDT', 'Polo.jpg', 1, '300.00');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) NOT NULL,
  `staff_name` varchar(200) NOT NULL,
  `staff_PhoneNo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_name`, `staff_PhoneNo`) VALUES
(1, 'Muhammad Safawi\r\n', 187885463),
(2, 'Khairul Azrai', 193548872),
(3, 'Ahmad Nazif', 176479982),
(4, 'Abdul Razak', 148887459),
(5, 'Muhammad Amnan', 137745634);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
