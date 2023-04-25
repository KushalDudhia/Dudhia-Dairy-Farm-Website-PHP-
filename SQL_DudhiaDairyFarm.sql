-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 09:42 AM
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
-- Database: `ddf`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorized_staff`
--

CREATE TABLE `authorized_staff` (
  `staff_id` int(11) NOT NULL,
  `staff_email` varchar(50) NOT NULL,
  `staff_name` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `position` varchar(50) NOT NULL,
  `block_staff` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authorized_staff`
--

INSERT INTO `authorized_staff` (`staff_id`, `staff_email`, `staff_name`, `password`, `position`, `block_staff`) VALUES
(1, '', 'Kushal', 'kushaldudhia', '', 0),
(2, '', 'Krrish', 'krrishdudhia', '', 0),
(3, 'admin@gmail.com', 'admin', '$2y$04$n07gbiCYUnYAKfIa3E8gZO6NjyR5DBiuv8oiVHdgmIRwHupZ3nXtS', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` varchar(11) NOT NULL,
  `customer_id` varchar(11) NOT NULL,
  `product_id` varchar(11) NOT NULL,
  `product_name` varchar(55) NOT NULL,
  `size` varchar(50) NOT NULL,
  `quantity` int(3) NOT NULL,
  `price` float NOT NULL,
  `deleted` int(2) NOT NULL DEFAULT 0,
  `cart_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `customer_id`, `product_id`, `product_name`, `size`, `quantity`, `price`, `deleted`, `cart_date`) VALUES
('0fc2', '1', '3', 'Dynamix COW GHEE', '5 litre', 1, 2400, 1, '2022-06-17 15:01:46'),
('1214', '1', '6', 'Gowardhan Pure Cow Ghee', '500 grams', 3, 280, 1, '2022-06-23 01:17:23'),
('171c', '4', '7', 'Gowardhan Pure Cow Ghee', '1 litre (jar)', 1, 540, 1, '2022-06-17 15:32:54'),
('1a11', '1', '3', 'Dynamix COW GHEE', '5 litre', 1, 2400, 1, '2022-06-24 13:57:44'),
('1ca0', '1', '77', 'Dudhia Dairy loose WHITE BUTTER', '1 box (15 kg)', 1, 5550, 1, '2022-07-07 14:12:22'),
('375b', '1', '85', 'Vimal PROCESSED CHEESE', '500 grams', 1, 200, 1, '2022-07-07 22:37:45'),
('37f4', '4', '6', 'Gowardhan Pure Cow Ghee', '500 grams', 1, 280, 1, '2022-06-17 15:43:58'),
('4972', '1', '239', 'VIMAL VEG MAYONNAISE EGGLESS', '1 kg', 1, 100, 1, '2022-07-07 22:35:20'),
('4980', '1', '2', 'Dynamix COW GHEE', '1 litre (pouch)', 1, 500, 1, '2022-06-23 00:05:34'),
('503a', '4', '10', 'Prabhat Dairy COW GHEE', '200 grams', 2, 110, 1, '2022-06-21 16:14:53'),
('51e4', '1', '3', 'Dynamix COW GHEE', '5 litre', 1, 2400, 1, '2022-06-21 15:17:38'),
('52d5', '1', '7', 'Gowardhan Pure Cow Ghee', '1 litre (jar)', 1, 540, 1, '2022-06-20 20:54:50'),
('5882', '1', '76', 'Dudhia Dairy loose WHITE BUTTER', '1 kg', 2, 390, 1, '2022-07-07 14:09:45'),
('5a2f', '4', '10', 'Prabhat Dairy COW GHEE', '200 grams', 2, 110, 1, '2022-07-18 23:43:47'),
('5c92', '1', '52', 'Amul PASTEURISED BUTTER', '100 grams', 1, 47, 1, '2022-06-23 00:56:45'),
('7642', '4', '49', 'Paras Ghee', '15 kg', 11, 5800, 1, '2022-06-17 15:08:03'),
('79db', '4', '55', 'Amul PASTEURISED BUTTER', '1 box (100 gram', 3, 6900, 1, '2022-06-21 16:12:34'),
('7a61', '1', '3', 'Dynamix COW GHEE', '5 litre', 4, 2400, 1, '2022-06-28 21:43:13'),
('84b6', '4', '101', 'Amul CHEESE SLICE', '750 grams', 3, 350, 1, '2022-07-24 12:27:25'),
('851c', '1', '2', 'Dynamix COW GHEE', '1 litre (pouch)', 4, 500, 1, '2022-06-17 15:00:26'),
('85da', '1', '95', 'Vimal Mojerela Star DICED CHEESE', '1 box (2 kg)', 2, 4080, 1, '2022-07-07 14:06:40'),
('91cb', '1', '24', 'Maahi COW GHEE', '1 litre', 1, 460, 1, '2022-06-21 14:14:13'),
('9c98', '4', '3', 'Dynamix COW GHEE', '5 litre', 1, 2400, 1, '2022-06-21 16:48:19'),
('a0b7', '4', '10', 'Prabhat Dairy COW GHEE', '200 grams', 1, 110, 1, '2022-06-21 16:22:18'),
('a639', '1', '76', 'Dudhia Dairy loose WHITE BUTTER', '1 kg', 1, 390, 1, '2022-07-07 22:44:07'),
('a8f2', '4', '7', 'Gowardhan Pure Cow Ghee', '1 litre (jar)', 1, 540, 1, '2022-07-05 19:59:56'),
('ab4e', '1', '9', 'Gowardhan Pure Cow Ghee', '15 kg', 3, 7200, 1, '2022-06-28 21:13:31'),
('ad78', '4', '6', 'Gowardhan Pure Cow Ghee', '500 grams', 1, 280, 1, '2022-06-18 12:41:10'),
('b158', '4', '90', 'Vimal CHEEZE STAR', '1 kg', 1, 320, 1, '2022-07-07 23:36:02'),
('b18a', '1', '2', 'Dynamix COW GHEE', '1 litre (pouch)', 1, 500, 1, '2022-06-28 21:43:19'),
('bbc5', '1', '91', 'Vimal CHEEZE STAR', '1 box (1kg)', 1, 3720, 1, '2022-07-07 22:37:37'),
('bd97', '1', '72', 'Vimal DairyGold BUTTER', '500 grams', 1, 100, 1, '2022-07-07 14:05:56'),
('c0b8', '1', '8', 'Gowardhan Pure Cow Ghee', '5 litre', 1, 2600, 1, '2022-07-07 14:11:51'),
('d573', '1', '9', 'Gowardhan Pure Cow Ghee', '15 kg', 1, 7200, 1, '2022-07-07 22:37:31'),
('d81d', '1', '82', 'Amul CHEESE', '1 box (500 gram)', 1, 5400, 1, '2022-07-07 22:44:19'),
('dd38', '4', '237', 'DUDHIA DAIRY FRESH PANNER', '1 kg', 1, 250, 1, '2022-07-24 12:37:12'),
('e978', '1', '98', 'Vimal DICED MOZZARELLA & CHEDDAR CHEESE BLEND', '1 box (1 kg)', 2, 40, 0, '2022-07-07 23:05:53'),
('eac7', '1', '3', 'Dynamix COW GHEE', '5 litre', 2, 2400, 1, '2022-06-18 15:25:07'),
('f72e', '1', '18', 'Amul Cow Ghee', '1 litre (pouch)', 1, 480, 1, '2022-06-23 00:58:55'),
('f810', '1', '7', 'Gowardhan Pure Cow Ghee', '1 litre (jar)', 3, 540, 1, '2022-06-28 18:53:17'),
('fc2f', '4', '16', 'Amul Cow Ghee', '200 grams', 3, 110, 1, '2022-06-30 19:56:19'),
('ff1c', '4', '36', 'SAGAR Pure Ghee', '1 litre (tin)', 1, 460, 1, '2022-07-24 12:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` varchar(11) NOT NULL,
  `customer_firstname` varchar(50) NOT NULL,
  `customer_lastname` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phonenumber` int(15) NOT NULL,
  `dob` datetime NOT NULL,
  `city` varchar(20) NOT NULL,
  `otp` int(6) NOT NULL,
  `otp_status` int(2) NOT NULL DEFAULT 0,
  `c_status` int(2) NOT NULL DEFAULT 0,
  `created_at` varchar(50) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(50) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_firstname`, `customer_lastname`, `email_id`, `password`, `phonenumber`, `dob`, `city`, `otp`, `otp_status`, `c_status`, `created_at`, `updated_at`) VALUES
('', 'test', 'test', 'test@gmail.com', '$2y$10$d5o1pv8g6t.b0C1dtBpKBOQSBoufYfVpdoOmQiNLH6rXdW7dsm7ny', 2147483647, '2022-06-24 00:00:00', 'ahmedabad', 0, 0, 0, '2022-06-28 20:55:16', '2022-06-28 20:55:16'),
('1', 'yash', 'shah', 'yashshah@gmail.com', '$2y$04$QH/yI5ibn7PLnyKqtzKkbuSWatbRE44yExj74u1E8kkF.KcV8R0KC', 852369741, '2022-06-02 18:04:22', 'ahem', 0, 0, 0, 'yash', 'yash'),
('3', 'sonal', 'dave', 'sonal@gmail.com', '12345', 2147483647, '2000-02-26 00:00:00', 'ahmedabad', 0, 0, 0, '2022-06-16 12:23:18', '2022-06-16 12:23:18'),
('4', 'kushal', 'dudhia', 'kushal@gmail.com', '$2y$04$Iz1hYcFa9jxL9CWRozhLvuN0H5aWp45ZZ1Ybyax0FYt3Qm3Cz8pPe', 2147483647, '2022-06-04 00:00:00', 'ahme', 0, 0, 0, '2022-06-17 13:26:08', '2022-06-17 13:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `c_address`
--

CREATE TABLE `c_address` (
  `add_id` varchar(10) NOT NULL,
  `customer_id` varchar(10) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  `mo_num` int(11) NOT NULL,
  `pincode` int(6) NOT NULL,
  `add_line_1` varchar(255) NOT NULL,
  `add_line_2` varchar(255) NOT NULL,
  `landmark` varchar(125) NOT NULL,
  `city` varchar(125) NOT NULL,
  `state` varchar(125) NOT NULL,
  `add_type` varchar(50) NOT NULL,
  `ad_delete` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `c_address`
--

INSERT INTO `c_address` (`add_id`, `customer_id`, `fullname`, `mo_num`, `pincode`, `add_line_1`, `add_line_2`, `landmark`, `city`, `state`, `add_type`, `ad_delete`) VALUES
('4', '4', 'Kushal Dudhia', 2147483647, 380015, 'Zodiac Aarish', 'Jodhpur', 'Satellite', 'Ahmedabad', 'Gujarat', 'Home', 0),
('7pl9', '1', 'Anil Shah', 741258963, 380019, '4 Nareshwar society', 'geetangali nagar D-cabin', 'OOP IOC gate', 'Ahmedabad', 'Gujarat', 'home', 0),
('c9fe', '1', 'kushal', 2147483647, 147852, 'ajscb', 'ashicj', 'awfgucs', 'ahme', 'guj', 'home', 0),
('cd12', '1', 'yash', 2147483647, 380019, 'nareshwer', 'dcabin', 'ioc', 'ahme', 'guj', 'home', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(10) NOT NULL,
  `payment_method` varchar(25) NOT NULL,
  `customer_id` varchar(11) NOT NULL,
  `c_add_id` varchar(20) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `num_of_items` int(10) NOT NULL,
  `sub_total` float NOT NULL,
  `shipping_cost` float NOT NULL,
  `discount` float NOT NULL,
  `grand_total` float NOT NULL,
  `invoice_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `payment_method`, `customer_id`, `c_add_id`, `order_id`, `num_of_items`, `sub_total`, `shipping_cost`, `discount`, `grand_total`, `invoice_date`) VALUES
(55, '', '4', '', '', 0, 0, 49, 0, 49, '0000-00-00 00:00:00'),
(199, 'card', '4', '4', '', 4, 1980, 0, 0, 1980, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_method` tinyint(1) NOT NULL,
  `payment_channel` int(11) NOT NULL DEFAULT 1,
  `payment_total` int(11) NOT NULL,
  `payment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` varchar(11) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_subcategory` varchar(50) NOT NULL,
  `product_detail` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_category`, `product_subcategory`, `product_detail`, `size`, `price`, `image`, `status`, `quantity`, `created_at`, `modified_at`) VALUES
('1', '1', 'COW GHEE', 'Dynamix COW GHEE', '500 grams', 240, 'dynamix1.png', 1, 100, '2022-06-11 22:21:11', '2022-06-15 13:19:06'),
('10', '1', 'COW GHEE', 'Prabhat Dairy COW GHEE', '200 grams', 110, 'prabhat 10.png', 0, 150, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('100', '3', 'SLICE', 'Amul CHEESE SLICE', '200 grams', 122, 'Amul CHEESE SLICE 100.png', 0, 55, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('101', '3', 'SLICE', 'Amul CHEESE SLICE', '750 grams', 350, 'amulslice 105.png', 0, 63, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('102', '3', 'SLICE', 'Amul CHEESE SLICE', '1 box (200 gram)', 6900, 'Amul CHEESE SLICE 100.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('103', '3', 'SLICE', 'Amul CHEESE SLICE', '1 box (750 gram)', 6750, 'amulslice 105.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('104', '3', 'CUBE', 'Amul CHEESE CUBES', '1 cube', 14, 'amulcubes 108.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('105', '3', 'CUBE', 'Amul CHEESE CUBES', '200 grams', 114, 'amulcubes 109.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('106', '3', 'CUBE', 'Amul CHEESE CUBES', '1kg', 490, 'amulcubes 109.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('107', '3', 'CUBE', 'Amul CHEESE CUBES', '1 box (1 kg)', 5400, 'amulcubes 109.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('108', '4', '14o9', 'Fortune Refined SUNFLOWER OIL', '1 litre', 140, 'FortunerefinedSUNFLOWEROIL 108.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('109', '4', '14o9', 'Fortune Refined SUNFLOWER OIL', '5 litre', 700, 'FortunerefinedSUNFLOWEROIL 109.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('11', '1', 'COW GHEE', 'Prabhat Dairy COW GHEE', '500 grams', 240, 'prabhat 11.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('110', '4', '14o9', 'Fortune Refined SUNFLOWER OIL', '15 litre (tin)', 1950, 'FortunerefinedSUNFLOWEROIL 110.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('111', '4', '14o9', 'Fortune Refined SUNFLOWER OIL', '15 litre (jar)', 2000, 'FortunerefinedSUNFLOWEROIL 111.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('112', '4', '14o9', 'GULAB Refined SUNFLOWER OIL', '1 litre', 130, 'GULAB Refined SUNFLOWER OIL 112.png\r\n', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('113', '4', '14o9', 'GULAB Refined SUNFLOWER OIL', '5 litre', 660, 'GULAB Refined SUNFLOWER OIL 113.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('114', '4', '14o9', 'GULAB Refined SUNFLOWER OIL', '15 litre (tin)', 1880, 'GULAB Refined SUNFLOWER OIL 114.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('115', '4', '14o9', 'GULAB Refined SUNFLOWER OIL', '15 litre (jar)', 1900, 'GULAB Refined SUNFLOWER OIL 115.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('116', '4', '14o9', 'SUNPRIDE Refined SUNFLOWER OIL', '1 litre', 130, 'SUNPRIDE Refined SUNFLOWER OIL 116.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('117', '4', '14o9', 'SUNPRIDE Refined SUNFLOWER OIL', '5 litre', 660, 'SUNPRIDE Refined SUNFLOWER OIL 117.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('118', '4', '14o9', 'SUNPRIDE Refined SUNFLOWER OIL', '15 litre (tin)', 1880, 'SUNPRIDE Refined SUNFLOWER OIL 117.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('119', '4', '14o9', 'SUNPRIDE Refined SUNFLOWER OIL', '15 litre (jar)', 1900, 'SUNPRIDE Refined SUNFLOWER OIL 119', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('12', '1', 'COW GHEE', 'Prabhat Dairy COW GHEE', '1 litre (pouch)', 440, 'prabhat 12.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('120', '4', '14o9', 'Gemini Refined SUNFLOWER OIL', '15 litre (tin)', 1900, 'Gemini Refined SUNFLOWER OIL 120.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('121', '4', '14o9', 'SUNDROP Refined SUNFLOWER OIL', '15 litre (jar)', 2050, 'SUNDROP Refined SUNFLOWER OIL 121.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('122', '4', '14o9', 'Aadhaar Refined SUNFLOWER OIL', '15 litre (tin)', 1850, 'Aadhaar Refined SUNFLOWER OIL 122', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('123', '4', 'COTTONSEED  OIL', 'TIRUPATI Refined COTTONSEED OIL', '1 litre (pouch)', 120, 'TIRUPATI Refined COTTONSEED OIL 123.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('124', '4', 'COTTONSEED  OIL', 'TIRUPATI Refined COTTONSEED OIL', '5 litre', 600, 'TIRUPATI Refined COTTONSEED OIL 124.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('125', '4', 'COTTONSEED  OIL', 'TIRUPATI Refined COTTONSEED OIL', '15 litre', 1720, 'TIRUPATI Refined COTTONSEED OIL 125.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('126', '4', 'COTTONSEED  OIL', 'TIRUPATI Refined COTTONSEED OIL', '15 kg (tin)', 1810, 'TIRUPATI Refined COTTONSEED OIL 126.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('127', '4', 'COTTONSEED  OIL', 'TIRUPATI Refined COTTONSEED OIL', '15 kg (jar)', 1850, 'TIRUPATI Refined COTTONSEED OIL 127.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('128', '4', 'COTTONSEED  OIL', 'GULAB Refined COTTONSEED OIL', '500 ml', 60, 'GULAB Refined COTTONSEED OIL 128.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('129', '4', 'COTTONSEED  OIL', 'GULAB Refined COTTONSEED OIL', '1 litre (pouch)', 115, 'GULAB Refined COTTONSEED OIL 129.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('13', '1', 'COW GHEE', 'Prabhat Dairy COW GHEE', '1 litre (jar)', 460, 'prabhat 13.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('130', '4', 'COTTONSEED  OIL', 'GULAB Refined COTTONSEED OIL', '1 litre (bottle)', 120, 'GULAB Refined COTTONSEED OIL 130.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('131', '4', 'COTTONSEED  OIL', 'GULAB Refined COTTONSEED OIL', '5 litre', 570, 'GULAB Refined COTTONSEED OIL 131.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('132', '4', 'COTTONSEED  OIL', 'GULAB Refined COTTONSEED OIL', '15 litre', 1700, 'GULAB Refined COTTONSEED OIL 132.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('133', '4', 'COTTONSEED  OIL', 'GULAB Refined COTTONSEED OIL', '15 kg (tin)', 1770, 'GULAB Refined COTTONSEED OIL 133.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('134', '4', 'COTTONSEED  OIL', 'ANKUR Refined COTTONSEED OIL', '500 ml', 60, 'ANKUR Refined COTTONSEED OIL 134.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('135', '4', 'COTTONSEED  OIL', 'ANKUR Refined COTTONSEED OIL', '1 litre (pouch)', 115, 'ANKUR Refined COTTONSEED OIL 134.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('136', '4', 'COTTONSEED  OIL', 'ANKUR Refined COTTONSEED OIL', '1 litre (bottle)', 120, 'ANKUR Refined COTTONSEED OIL.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('137', '4', 'COTTONSEED  OIL', 'ANKUR Refined COTTONSEED OIL', '5 litre', 570, 'ANKUR Refined COTTONSEED OIL 137.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('138', '4', 'COTTONSEED  OIL', 'ANKUR Refined COTTONSEED OIL', '15 litre', 1700, 'ANKUR Refined COTTONSEED OIL.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('139', '4', 'COTTONSEED  OIL', 'ANKUR Refined COTTONSEED OIL', '15 kg (tin)', 1770, 'ANKUR Refined COTTONSEED OIL 139.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('14', '1', 'COW GHEE', 'Prabhat Dairy COW GHEE', '5 litre', 2300, 'prabhat 14.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('140', '4', 'SOYABEAN  OIL', 'Fortune Refined SOYABEAN  OIL', '1 litre', 120, 'Fortune Refined SOYABEAN  OIL 140.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('141', '4', 'SOYABEAN  OIL', 'Fortune Refined SOYABEAN  OIL', '5 litre', 600, 'Fortune Refined SOYABEAN  OIL 141.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('142', '4', 'SOYABEAN  OIL', 'Fortune Refined SOYABEAN  OIL', '15 kg (tin)', 1950, 'Fortune Refined SOYABEAN  OIL 142.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('143', '4', 'SOYABEAN  OIL', 'GULAB Refined SOYABEAN  OIL', '5 litre', 570, 'Fortune Refined SOYABEAN  OIL 143.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('144', '4', 'SOYABEAN  OIL', 'GULAB Refined SOYABEAN  OIL', '15 kg (tin)', 1850, 'Fortune Refined SOYABEAN  OIL 144.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('145', '4', 'SOYABEAN  OIL', 'JANMAY Refined SOYABEAN  OIL', '15 kg (tin)', 1450, 'JANMAY Refined SOYABEAN  OIL 145.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('146', '4', 'SOYABEAN  OIL', 'MAHAKOSH  Refined SOYABEAN  OIL', '15 kg (tin)', 1850, 'MAHAKOSH  Refined SOYABEAN  OIL 146.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('147', '4', 'CORN OIL', 'KORNDROP REFINED CORN OIL', '1 litre', 130, 'KORNDROP REFINED CORN OIL 147.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('148', '4', 'CORN OIL', 'KORNDROP REFINED CORN OIL', '5 litre', 650, 'KORNDROP REFINED CORN OIL 148.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('149', '4', 'CORN OIL', 'KORNDROP REFINED CORN OIL', '15 litre', 1900, 'KORNDROP REFINED CORN OIL 149.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('15', '1', 'COW GHEE', 'Prabhat Dairy COW GHEE', '15 kg', 6400, 'prabhat 16.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('150', '4', 'CORN OIL', 'Fortune REFINED CORN OIL', '1 litre', 120, 'Fortune REFINED CORN OIL 150.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('151', '4', 'CORN OIL', 'Fortune REFINED CORN OIL', '5 litre', 580, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('152', '4', 'CORN OIL', 'Fortune REFINED CORN OIL', '15 litre', 1850, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('153', '4', 'CORN OIL', 'GULAB REFINED CORN OIL', '1 litre', 120, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('154', '4', 'CORN OIL', 'GULAB REFINED CORN OIL', '5 litre', 580, 'GULAB REFINED CORN OIL 154.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('155', '4', 'CORN OIL', 'GULAB REFINED CORN OIL', '15 litre', 1850, 'GULAB REFINED CORN OIL 155.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('156', '4', 'MUSTARD OIL', 'VIMAL MUSTARD OIL', '200 ml', 30, 'VIMAL MUSTARD OIL 156.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('157', '4', 'MUSTARD OIL', 'VIMAL MUSTARD OIL', '500 ml', 70, 'VIMAL MUSTARD OIL 157.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('158', '4', 'MUSTARD OIL', 'VIMAL MUSTARD OIL', '1 litre', 130, 'VIMAL MUSTARD OIL 158.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('159', '4', 'MUSTARD OIL', 'VIMAL MUSTARD OIL', '5 litre', 650, 'VIMAL MUSTARD OIL 159.png', 0, 100, '2022-06-11 22:21:11', '2022-07-01 18:41:43'),
('16', '1', 'COW GHEE', 'Amul Cow Ghee', '200 grams', 110, 'amul 17.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('160', '4', 'MUSTARD OIL', 'VIMAL MUSTARD OIL', '1 box (200 ml)', 1800, 'VIMAL MUSTARD OIL 156.png', 0, 100, '2022-06-11 22:21:11', '2022-07-01 18:43:39'),
('161', '4', 'MUSTARD OIL', 'VIMAL MUSTARD OIL', '1 box (500 ml)', 1632, 'VIMAL MUSTARD OIL 157.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('162', '4', 'MUSTARD OIL', 'VIMAL MUSTARD OIL', '1 box (1 litre)', 1560, 'VIMAL MUSTARD OIL 158.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('163', '4', 'MUSTARD OIL', 'VIMAL MUSTARD OIL', '5 litre (4 piece)', 2600, 'VIMAL MUSTARD OIL 159.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('164', '4', 'MUSTARD OIL', 'APPU-KACHI GHANI MUSTARD OIL', '100 ml', 25, 'APPU-KACHI GHANI MUSTARD OIL 165.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('165', '4', 'MUSTARD OIL', 'APPU-KACHI GHANI MUSTARD OIL', '200 ml', 42, 'APPU-KACHI GHANI MUSTARD OIL 165.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('166', '4', 'MUSTARD OIL', 'APPU-KACHI GHANI MUSTARD OIL', '500 ml', 78, 'APPU-KACHI GHANI MUSTARD OIL 166.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('167', '4', 'MUSTARD OIL', 'APPU-KACHI GHANI MUSTARD OIL', '1 litre', 145, 'APPU-KACHI GHANI MUSTARD OIL 167.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('168', '4', 'MUSTARD OIL', 'APPU-KACHI GHANI MUSTARD OIL', '5 litre', 750, 'APPU-KACHI GHANI MUSTARD OIL 168.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('169', '4', 'MUSTARD OIL', 'APPU-KACHI GHANI MUSTARD OIL', '1 box (100 ml)', 0, 'APPU-KACHI GHANI MUSTARD OIL 165.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('17', '1', 'COW GHEE', 'Amul Cow Ghee', '500 grams', 245, 'amul 18.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('170', '4', 'MUSTARD OIL', 'APPU-KACHI GHANI MUSTARD OIL', '1 box (200 ml)', 0, 'APPU-KACHI GHANI MUSTARD OIL 165.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('171', '4', 'MUSTARD OIL', 'APPU-KACHI GHANI MUSTARD OIL', '1 box (500 ml)', 0, 'APPU-KACHI GHANI MUSTARD OIL 166.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('172', '4', 'MUSTARD OIL', 'APPU-KACHI GHANI MUSTARD OIL', '1 box (1 litre)', 0, 'APPU-KACHI GHANI MUSTARD OIL 167.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('173', '4', 'MUSTARD OIL', 'HATHI-KACHI GHANI MUSTARD OIL', '1 litre', 165, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('174', '4', 'MUSTARD OIL', 'HATHI-KACHI GHANI MUSTARD OIL', '5 litre', 800, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('175', '4', 'MUSTARD OIL', 'GOKUL MUSTARD OIL', '1 litre', 130, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('176', '4', 'MUSTARD OIL', 'GOKUL MUSTARD OIL', '5 litre', 620, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('177', '4', 'MUSTARD OIL', 'GOKUL MUSTARD OIL', '1 box (1 litre)', 1500, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('178', '4', 'MUSTARD OIL', 'GOKUL MUSTARD OIL', '5 litre (4 piec', 2480, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('179', '4', 'CASTOR OIL', 'LAXMI Refined CASTOR OIL', '100 ml', 25, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('18', '1', 'COW GHEE', 'Amul Cow Ghee', '1 litre (pouch)', 480, 'amul 19.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('180', '4', 'CASTOR OIL', 'LAXMI Refined CASTOR OIL', '200 ml', 40, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('181', '4', 'CASTOR OIL', 'LAXMI Refined CASTOR OIL', '500 ml', 65, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('182', '4', 'CASTOR OIL', 'LAXMI Refined CASTOR OIL', '1 litre', 120, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('183', '4', 'CASTOR OIL', 'LAXMI Refined CASTOR OIL', '5 litre', 550, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('184', '4', 'ADIBLE TIL OIL', 'DARVESH TIL OIL', '100 ml', 30, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('185', '4', 'ADIBLE TIL OIL', 'DARVESH TIL OIL', '200 ml', 50, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('186', '4', 'ADIBLE TIL OIL', 'DARVESH TIL OIL', '500 ml', 95, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('187', '4', 'ADIBLE TIL OIL', 'DARVESH TIL OIL', '1 litre', 180, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('188', '4', 'ADIBLE TIL OIL', 'DARVESH TIL OIL', '5 litre', 850, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('189', '4', 'ADIBLE TIL OIL', 'DARVESH TIL OIL', '15 kg', 2600, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('19', '1', 'COW GHEE', 'Amul Cow Ghee', '1 litre (jar)', 490, 'amul 20.png', 0, 100, '2022-06-11 22:21:11', '2022-07-01 18:36:31'),
('190', '4', 'ADIBLE TIL OIL', 'TILONI Filtered TIL OIL', '200 ml', 50, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('191', '4', 'ADIBLE TIL OIL', 'TILONI Filtered TIL OIL', '500 ml', 100, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('192', '4', 'ADIBLE TIL OIL', 'TILONI Filtered TIL OIL', '1 litre', 195, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('193', '4', 'ADIBLE TIL OIL', 'TILONI Filtered TIL OIL', '5 litre', 900, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('194', '4', 'ADIBLE TIL OIL', 'TILONI Filtered TIL OIL', '15 kg', 2700, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('195', '4', 'ADIBLE TIL OIL', 'SANT Filtered TIL OIL', '15 kg', 2500, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('196', '4', 'NON-ADIBLE TIL OIL', 'TIL POOJA', '500 ml', 70, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('197', '4', 'NON-ADIBLE TIL OIL', 'TIL POOJA', '1 litre', 140, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('198', '4', 'NON-ADIBLE TIL OIL', 'TIL POOJA', '1 box (500 ml)', 0, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('199', '4', 'NON-ADIBLE TIL OIL', 'TIL POOJA', '1 box (1 llitre', 0, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('2', '1', 'COW GHEE', 'Dynamix COW GHEE', '1 litre (pouch)', 500, 'dynamix 2.png', 0, 10, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('20', '1', 'COW GHEE', 'Thirumala Cow Ghee', '1 litre', 500, 'thirumala 21.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('200', '4', 'GROUDNUT OIL', 'GULAB Double Filtered GROUNDNUT OIL', '500 ml', 80, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('201', '4', 'GROUNDNUT OIL', 'GULAB Double Filtered GROUNDNUT OIL', '1 litre', 150, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('202', '4', 'GROUNDNUT OIL', 'GULAB Double Filtered GROUNDNUT OIL', '2 litre', 310, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('203', '4', 'GROUNDNUT OIL', 'GULAB Double Filtered GROUNDNUT OIL', '5 litre', 740, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('204', '4', 'GROUNDNUT OIL', 'GULAB Double Filtered GROUNDNUT OIL', '15 kg', 2420, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('205', '4', 'GROUNDNUT OIL', 'DHARA Filtered GROUNDNUT OIL', '5 litre', 770, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('206', '4', 'GROUNDNUT OIL', 'DHARA Filtered GROUNDNUT OIL', '15 kg', 2450, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('207', '4', 'GROUNDNUT OIL', 'DHARA Filtered GROUNDNUT OIL', '1 litre', 160, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('208', '4', 'GROUNDNUT OIL', 'REFINE POSTLINE Filtered GROUNDNUT OIL', '15 kg', 2500, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('209', '4', 'GROUNDNUT OIL', 'JANMAY FARM FRESH GROUNDNUT OIL', '1 litre', 140, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('21', '1', 'COW GHEE', 'Thirumala Cow Ghee', '5 litre', 2400, 'thirumala 22.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('210', '4', 'COCONUT  OIL', 'SHALIMAR Popular COCONUT OIL', '1 litre', 210, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('211', '4', 'COCONUT  OIL', 'KISHTI COCONUT OIL', '5 kg', 1150, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('212', '4', 'COCONUT  OIL', 'SHANTIK COCONUT OIL', '5 kg', 1100, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('213', '4', 'COCONUT  OIL', 'SHANTIK COCONUT OIL', '15 kg', 3300, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('214', '4', 'RICE BRAN OIL', 'SARVOTTAM Refined Rice Bran Oil', '1 litre', 130, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('215', '4', 'RICE BRAN OIL', 'SARVOTTAM Refined Rice Bran Oil', '5 litre', 650, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('216', '4', 'RICE BRAN OIL', 'SARVOTTAM Refined Rice Bran Oil', '15 litre', 1750, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('217', '4', 'RICE BRAN OIL', 'FORTUNE Refined Rice Bran Oil', '1 litre', 130, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('218', '4', 'RICE BRAN OIL', 'FORTUNE Refined Rice Bran Oil', '5 litre', 700, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('219', '4', 'RICE BRAN OIL', 'FORTUNE Refined Rice Bran Oil', '15 litre', 1950, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('22', '1', 'COW GHEE', 'Thirumala Cow Ghee', '15 kg', 6700, 'thirumala 23.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('220', '4', 'OLIVE OIL', 'FIGARO OLIVE OIL', '200 ml', 250, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('221', '4', 'OLIVE OIL', 'FIGARO OLIVE OIL', '500 ml', 480, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('222', '4', 'OLIVE OIL', 'FIGARO OLIVE OIL', '1 litre', 900, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('223', '4', 'OLIVE OIL', 'FIGARO OLIVE OIL', '5 litre', 3400, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('224', '4', 'OLIVE OIL', 'DEL MONTE OLIVE OIL', '5 litre', 1800, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('225', '4', 'OLIVE OIL', 'OLIVEFUL OLIVE POMACE OIL', '5 litre', 1700, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('226', '4', 'OLIVE OIL', 'MODI OLIVE OIL', '1 litre', 400, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('227', '4', 'SAFFOLA OIL', 'SAFFOLA GOLD', '1 litre', 140, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('228', '4', 'SAFFOLA OIL', 'SAFFOLA GOLD', '5 litre + 1litr', 790, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('229', '4', 'SAFFOLA OIL', 'SAFFOLA GOLD', '15 litre', 2050, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('23', '1', 'COW GHEE', 'Maahi COW GHEE', '500 grams', 235, 'maahi 24.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('230', '4', 'SAFFOLA OIL', 'SAFFOLA ACTIVE', '15 litre', 1850, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('231', '4', 'SAFFOLA OIL', 'SAFFOLA TOTAL', '5 litre', 980, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('232', '4', 'PALM OIL', 'PAMOLINE PALM OIL', '1 litre', 120, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('233', '7', 'DAIRY WHITNER', 'AMULYA DAIRY WHITNER', '200 grams', 80, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('234', '7', 'DAIRY WHITNER', 'AMULYA DAIRY WHITNER', '500 grams', 190, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('235', '7', 'DAIRY WHITNER', 'AMULYA DAIRY WHITNER', '1 litre', 370, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('236', '7', 'SKIMMED MILK POWDER', 'MADHAV SKIMMED MILK POWDER', '1 litre', 250, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('237', '5', 'FRESH PANNER', 'DUDHIA DAIRY FRESH PANNER', '1 kg', 250, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('238', '8', 'WHIP TOPPING', 'DLICIA DAIRY FREE WHIP TOPPING', '1 kg', 180, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('239', '6', 'VEG MAYONNAISE', 'VIMAL VEG MAYONNAISE EGGLESS', '1 kg', 100, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('24', '1', 'COW GHEE', 'Maahi COW GHEE', '1 litre', 460, 'maahi 25.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('240', '4', 'SOYABEAN  OIL', 'JANMAY Refined SOYABEAN  OIL', '1 litre', 240, 'JANMAY Refined SOYABEAN  OIL 240.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('241', '1', 'MUSTARD OIL ', 'VIMAL MUSTARD OIL ', '15kg', 6000, 'VIMAL MUSTARD OIL 160.png', 0, 100, '2022-06-11 22:21:11', '2022-07-01 18:36:46'),
('25', '1', 'COW GHEE', 'Maahi COW GHEE', '5 litre', 2400, 'maahi 26.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('26', '1', 'COW GHEE', 'MOTHER FOOD Cow Ghee', '15 kg', 6500, 'motherfood 27.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('27', '1', 'COW GHEE', 'Gits COW GHEE', '5 litre', 2300, 'gits 28.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('28', '1', 'BUFFALO GHEE', 'Amul Pure Ghee', '500 grams', 230, 'amul 29.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('29', '1', 'BUFFALO GHEE', 'Amul Pure Ghee', '1 litre (pouch)', 440, 'amul 30.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('3', '1', 'COW GHEE', 'Dynamix COW GHEE', '5 litre', 2400, 'dynamix 3.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('30', '1', 'BUFFALO GHEE', 'Amul Pure Ghee', '1 litre (tin)', 460, 'amul 31.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('31', '1', 'BUFFALO GHEE', 'Amul Pure Ghee', '2 litre', 900, 'amul 32.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('32', '1', 'BUFFALO GHEE', 'Amul Pure Ghee', '5 litre', 2250, 'amul 33.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('33', '1', 'BUFFALO GHEE', 'Amul Pure Ghee', '15 kg', 6700, 'amul 34.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('34', '1', 'BUFFALO GHEE', 'SAGAR Pure Ghee', '500 grams', 230, 'sagar 35.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('35', '1', 'BUFFALO GHEE', 'SAGAR Pure Ghee', '1 litre (pouch)', 440, 'sagar 36.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('36', '1', 'BUFFALO GHEE', 'SAGAR Pure Ghee', '1 litre (tin)', 460, 'sagar 37.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('37', '1', 'BUFFALO GHEE', 'SAGAR Pure Ghee', '2 litre', 900, 'sagar 38.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('38', '1', 'BUFFALO GHEE', 'SAGAR Pure Ghee', '5 litre', 2250, 'sagar 39.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('39', '1', 'BUFFALO GHEE', 'SAGAR Pure Ghee', '15 kg', 6700, 'sagar 40.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('4', '1', 'COW GHEE', 'Dynamix COW GHEE', '15 kg', 6800, 'dynamix 4.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('40', '1', 'BUFFALO GHEE', 'Maahi Ghee', '500 grams', 220, 'maahi 41.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('41', '1', 'BUFFALO GHEE', 'Maahi Ghee', '1 litre', 450, 'maahi 42.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('42', '1', 'BUFFALO GHEE', 'Maahi Ghee', '5 litre', 2200, 'maahi 43.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('43', '1', 'BUFFALO GHEE', 'Maahi Ghee', '15 kg', 6700, 'maahi 44.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('44', '1', 'BUFFALO GHEE', 'NOVA Shudh ghee', '1 litre', 400, 'nova 45.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('45', '1', 'BUFFALO GHEE', 'NOVA Shudh Ghee                                   ', '5 litre', 1950, 'nova 46.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('46', '1', 'BUFFALO GHEE', 'NOVA Shudh Ghee      ', '15 kg', 5700, 'nova 47.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('47', '1', 'BUFFALO GHEE', 'Nestle EveryDay Shahi Ghee', '1 litre', 440, 'everyday 51.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('48', '1', 'BUFFALO GHEE', 'MotherFood AGMARK Pure Ghee', '15 kg', 6000, 'motherfood 52.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('49', '1', 'BUFFALO GHEE', 'Paras Ghee', '15 kg', 5800, 'paras 53.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('5', '1', 'COW GHEE', 'Gowardhan Pure Cow Ghee', '200 grams', 140, 'gowardhan 5.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('50', '1', 'BUFFALO GHEE', 'VASU JEE BEST Pure Ghee', '15 kg', 5800, 'vasujeebest 54.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('51', '1', 'BUFFALO GHEE', 'MADHAV AGMARK Ghee', '15 kg', 5800, 'madhav 55.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('52', '2', 'PASTEURISED BUTTER', 'Amul PASTEURISED BUTTER', '100 grams', 47, 'amul 56.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('53', '2', 'PASTEURISED BUTTER', 'Amul PASTEURISED BUTTER', '200 grams', 95, 'amul 57.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('54', '2', 'PASTEURISED BUTTER', 'Amul PASTEURISED BUTTER', '500 grams', 230, 'amul 58.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('55', '2', 'PASTEURISED BUTTER', 'Amul PASTEURISED BUTTER', '1 box (100 gram', 6900, 'amul 56.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('56', '2', 'PASTEURISED BUTTER', 'Amul PASTEURISED BUTTER', '1 box (500 gram)', 6750, 'amul 58.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('57', '2', 'PASTEURISED BUTTER', 'Vimal PASTEURISED BUTTER', '100 grams', 43, 'vimal 61.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('58', '2', 'PASTEURISED BUTTER', 'Vimal PASTEURISED BUTTER', '500 grams', 210, 'vimal 62.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('59', '2', 'PASTEURISED BUTTER', 'Vimal PASTEURISED BUTTER', '1 box (100 gram', 6300, 'vimal 61.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('6', '1', 'COW GHEE', 'Gowardhan Pure Cow Ghee', '500 grams', 280, 'gowardhan 6.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('60', '2', 'PASTEURISED BUTTER', 'Vimal PASTEURISED BUTTER', '1 box (500 gram)', 6150, 'vimal 62.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('61', '2', 'TABLE SPREAD', 'Vimal Lite BUTTER', '100 grams', 17, 'vimallite 65.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('62', '2', 'TABLE SPREAD', 'Vimal Lite BUTTER', '500 grams', 70, 'vimallite 66.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('63', '2', 'TABLE SPREAD', 'Vimal Lite BUTTER', '1 box (100 gram)', 2250, 'vimallite 65.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('64', '2', 'TABLE SPREAD', 'Vimal Lite BUTTER', '1 box (500 gram)', 1750, 'vimallite 66.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('65', '2', 'TABLE SPREAD', 'Amul Delicious BUTTER', '100 grams', 19, 'Amul Delicious BUTTER 65.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('66', '2', 'TABLE SPREAD', 'Amul Delicious BUTTER', '500 grams', 75, 'amuldelecious 70.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('67', '2', 'TABLE SPREAD', 'Amul Delicious BUTTER', '1 box (100 gram)', 2700, 'Amul Delicious BUTTER 65.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('68', '2', 'TABLE SPREAD', 'Amul Delicious BUTTER', '1 box (500 gram)', 1800, 'amuldelecious 70.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('69', '2', 'TABLE SPREAD', 'Oscar Lite BUTTER', '500 grams', 50, 'oscarlite 73.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('7', '1', 'COW GHEE', 'Gowardhan Pure Cow Ghee', '1 litre (jar)', 540, 'gowardhan 7.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('70', '2', 'TABLE SPREAD', 'Oscar Lite BUTTER', '1 box (500 gram)', 1400, 'oscarlite 73.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('71', '2', 'TABLE SPREAD', 'Vimal DairyGold BUTTER', '100 grams', 25, '', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('72', '2', 'TABLE SPREAD', 'Vimal DairyGold BUTTER', '500 grams', 100, 'vimaldairy 76.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('73', '2', 'TABLE SPREAD', 'Vimal DairyGold BUTTER', '1 box (500 gram)', 3000, 'vimaldairy 76.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('74', '2', 'WHITE TABLE SPREAD', 'Vimal Lite WHITE TABLE SPREAD', '500 grams', 80, 'vimsllitewhite 78.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('75', '2', 'WHITE TABLE SPREAD', 'Vimal Lite WHITE TABLE SPREAD', '1 box (500 gram)', 1800, 'vimsllitewhite 78.png', 1, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('76', '2', 'WHITE TABLE SPREAD', 'Dudhia Dairy loose WHITE BUTTER', '1 kg', 390, 'dudhiadairy 81.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('77', '2', 'WHITE TABLE SPREAD', 'Dudhia Dairy loose WHITE BUTTER', '1 box (15 kg)', 5550, 'dudhiadairy 81.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('78', '2', 'WHITE TABLE SPREAD', 'Dudhia Dairy loose WHITE BUTTER', '100 grams', 40, 'dudhiadairy 81.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('79', '3', 'PROCESSED CHEESE', 'Amul CHEESE', '200 grams', 100, 'amul 83.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('8', '1', 'COW GHEE', 'Gowardhan Pure Cow Ghee', '5 litre', 2600, 'gowardhan 8.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('80', '3', 'PROCESSED CHEESE', 'Amul CHEESE', '500 grams', 230, 'amul 84.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('81', '3', 'PROCESSED CHEESE', 'Amul CHEESE', '1 kg', 435, 'amul 85.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('82', '3', 'PROCESSED CHEESE', 'Amul CHEESE', '1 box (500 gram)', 5400, 'amul 84.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('83', '3', 'PROCESSED CHEESE', 'Amul CHEESE', '1 box (1 kg)', 5160, 'amul 85.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('84', '3', 'PROCESSED CHEESE', 'Vimal PROCESSED CHEESE', '200 grams', 95, 'vimal 88.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('85', '3', 'PROCESSED CHEESE', 'Vimal PROCESSED CHEESE', '500 grams', 200, 'vimal 89.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('86', '3', 'PROCESSED CHEESE', 'Vimal PROCESSED CHEESE', '1 kg', 380, 'vimal 90.png', 1, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('87', '3', 'PROCESSED CHEESE', 'Vimal PROCESSED CHEESE', '1 box (200 gram)', 5520, 'vimal 88.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('88', '3', 'PROCESSED CHEESE', 'Vimal PROCESSED CHEESE', '1 box (500 gram)', 4560, 'vimal 89.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('89', '3', 'PROCESSED CHEESE', 'Vimal PROCESSED CHEESE', '1 box (1 kg)', 4380, 'vimal 90.png', 1, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('9', '1', 'COW GHEE', 'Gowardhan Pure Cow Ghee', '15 kg', 7200, 'gowardhan 9.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('90', '3', 'PROCESSED CHEESE', 'Vimal CHEEZE STAR', '1 kg', 320, 'vimalcheesestar 94.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('91', '3', 'PROCESSED CHEESE', 'Vimal CHEEZE STAR', '1 box (1kg)', 3720, 'vimalcheesestar 94.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('92', '3', 'PIZZA TOPPING', 'Vimal Mojerela Star CHEESE', '1 kg', 320, 'vimalmojerellastarcheese 96.png', 1, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('93', '3', 'PIZZA TOPPING', 'Vimal Mojerela Star CHEESE', '1 box (1kg)', 3720, 'vimalmojerellastarcheese 96.png', 1, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('94', '3', 'PIZZA TOPPING', 'Vimal Mojerela Star DICED CHEESE', '2 kg', 700, 'Vimal Mojerela Star DICED CHEESE 98.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('95', '3', 'PIZZA TOPPING', 'Vimal Mojerela Star DICED CHEESE', '1 box (2 kg)', 4080, 'Vimal Mojerela Star DICED CHEESE 98.png', 0, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('96', '3', 'PIZZA TOPPING', 'Vimal DICED MOZZARELLA & CHEDDAR CHEESE BLEND', '200 grams', 100, 'Vimal DICED MOZZARELLA & CHEDDAR CHEESE BLEND 100....', 1, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('97', '3', 'PIZZA TOPPING', 'Vimal DICED MOZZARELLA & CHEDDAR CHEESE BLEND', '1 kg', 400, 'Vimal DICED MOZZARELLA & CHEDDAR CHEESE BLEND 101....', 1, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00'),
('98', '3', 'PIZZA TOPPING', 'Vimal DICED MOZZARELLA & CHEDDAR CHEESE BLEND', '1 box (1 kg)', 40, 'Vimal DICED MOZZARELLA & CHEDDAR CHEESE BLEND 101.png', 0, 17, '2022-06-11 22:21:11', '2022-06-16 22:35:52'),
('99', '3', 'SLICE', 'Amul CHEESE SLICE', '100 grams', 70, 'amulslice 103.png', 1, 100, '2022-06-11 22:21:11', '2022-06-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(125) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES
(1, 'Ghee', 0),
(2, 'Butter', 0),
(3, 'Cheese', 0),
(4, 'Oil', 0),
(5, 'Panner', 0),
(6, 'Mayonnaise', 0),
(7, 'Milk Powder', 0),
(8, 'Cream', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_subcategory`
--

CREATE TABLE `product_subcategory` (
  `subcategory_id` varchar(11) NOT NULL,
  `subcategory_name` varchar(125) NOT NULL,
  `category_id` varchar(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_subcategory`
--

INSERT INTO `product_subcategory` (`subcategory_id`, `subcategory_name`, `category_id`, `status`) VALUES
('036a', 'OLIVE OIL', '6', 1),
('14o9', 'sun f oil', '4', 0),
('1596', 'NON-ADIBLE TIL OIL', '6', 1),
('1b57', 'COCONUT  OIL ', '6', 0),
('25d0', 'PALM OIL', '6', 0),
('4b97', 'GROUNDNUT OIL', '6', 0),
('69c4', 'MUSTARD OIL', '6', 0),
('7db6', 'FRESH PANNER', '10', 0),
('9329', 'SAFFOLA OIL', '6', 0),
('972a', 'SKIMMED MILK POWDER', '9', 0),
('a536', 'CASTOR OIL', '6', 0),
('c3a8', 'RICE BRAN OIL ', '6', 0),
('c6df', 'COTTONSEED  OIL', '6', 0);

-- --------------------------------------------------------

--
-- Table structure for table `p_order`
--

CREATE TABLE `p_order` (
  `order_id` varchar(11) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `invoice_id` varchar(11) NOT NULL,
  `c_add_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `product_detail` varchar(200) NOT NULL,
  `product_size` varchar(100) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `total` double NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `order_status` varchar(100) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_order`
--

INSERT INTO `p_order` (`order_id`, `customer_id`, `invoice_id`, `c_add_id`, `product_id`, `product_detail`, `product_size`, `product_quantity`, `product_price`, `total`, `status`, `order_status`, `order_date`) VALUES
('02af', '1', '0a48', '7pl9', '82', 'Amul CHEESE', '1 box (500 gram)', 1, 5400, 5400, 0, 'order_placed', '2022-07-07 23:04:32'),
('04c1', '4', '9b4e', '4', '90', 'Vimal CHEEZE STAR', '1 kg', 1, 320, 320, 0, 'order_placed', '2022-07-07 23:36:22'),
('12ce', '4', '9b4e', '4', '6', 'Gowardhan Pure Cow Ghee', '500 grams', 1, 280, 280, 0, 'order_placed', '2022-07-07 23:36:22'),
('148d', '1', '0a48', '7pl9', '85', 'Vimal PROCESSED CHEESE', '500 grams', 1, 200, 200, 0, 'order_placed', '2022-07-07 23:04:31'),
('1a5a', '1', 'acc2', '7pl9', '76', 'Dudhia Dairy loose WHITE BUTTER', '1 kg', 1, 390, 390, 0, 'order_placed', '2022-07-07 22:44:39'),
('3e62', '4', '199b', '4', '10', 'Prabhat Dairy COW GHEE', '200 grams', 2, 110, 220, 0, 'order_placed', '2022-07-24 12:39:47'),
('4123', '1', '0a48', '7pl9', '76', 'Dudhia Dairy loose WHITE BUTTER', '1 kg', 1, 390, 390, 0, 'order_placed', '2022-07-07 23:04:31'),
('5a15', '1', 'acc2', '7pl9', '85', 'Vimal PROCESSED CHEESE', '500 grams', 1, 200, 200, 0, 'order_placed', '2022-07-07 22:44:39'),
('78bc', '4', '199b', '4', '237', 'DUDHIA DAIRY FRESH PANNER', '1 kg', 1, 250, 250, 0, 'order_placed', '2022-07-24 12:39:47'),
('7dd6', '1', 'acc2', '7pl9', '82', 'Amul CHEESE', '1 box (500 gram)', 1, 5400, 5400, 0, 'order_placed', '2022-07-07 22:44:40'),
('8ef3', '4', '199b', '4', '101', 'Amul CHEESE SLICE', '750 grams', 3, 350, 1050, 0, 'order_placed', '2022-07-24 12:39:47'),
('9d18', '1', 'acc2', '7pl9', '9', 'Gowardhan Pure Cow Ghee', '15 kg', 1, 7200, 7200, 0, 'order_placed', '2022-07-07 22:44:40'),
('a53e', '4', '9b4e', '4', '7', 'Gowardhan Pure Cow Ghee', '1 litre (jar)', 1, 540, 540, 0, 'order_placed', '2022-07-07 23:36:22'),
('ad18', '4', '9b4e', '4', '16', 'Amul Cow Ghee', '200 grams', 3, 110, 330, 0, 'order_placed', '2022-07-07 23:36:22'),
('da49', '1', 'acc2', '7pl9', '91', 'Vimal CHEEZE STAR', '1 box (1kg)', 1, 3720, 3720, 0, 'order_placed', '2022-07-07 22:44:40'),
('ee87', '4', '9b4e', '4', '10', 'Prabhat Dairy COW GHEE', '200 grams', 1, 110, 110, 0, 'order_placed', '2022-07-07 23:36:22'),
('f167', '1', '0a48', '7pl9', '9', 'Gowardhan Pure Cow Ghee', '15 kg', 1, 7200, 7200, 0, 'order_placed', '2022-07-07 23:04:32'),
('f567', '4', '199b', '4', '36', 'SAGAR Pure Ghee', '1 litre (tin)', 1, 460, 460, 0, 'order_placed', '2022-07-24 12:39:47'),
('f955', '1', '0a48', '7pl9', '91', 'Vimal CHEEZE STAR', '1 box (1kg)', 1, 3720, 3720, 0, 'order_placed', '2022-07-07 23:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `w_list_id` varchar(10) NOT NULL,
  `customer_id` varchar(10) NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `size` varchar(25) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` float NOT NULL,
  `deleted` int(2) NOT NULL DEFAULT 0,
  `cart_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`w_list_id`, `customer_id`, `product_id`, `product_name`, `size`, `quantity`, `price`, `deleted`, `cart_date`) VALUES
('0331', '1', '95', 'Vimal Mojerela Star DICED CHEESE', '1 box (2 kg)', 1, 4080, 0, '2022-07-04'),
('1fc9', '1', '6', 'Gowardhan Pure Cow Ghee', '500 grams', 1, 280, 1, '2022-06-23'),
('2c71', '1', '52', 'Amul PASTEURISED BUTTER', '100 grams', 1, 47, 1, '2022-06-23'),
('46c1', '4', '10', 'Prabhat Dairy COW GHEE', '200 grams', 1, 110, 1, '2022-06-30'),
('7157', '4', '36', 'SAGAR Pure Ghee', '1 litre (tin)', 1, 460, 1, '2022-07-24'),
('7a2b', '1', '3', 'Dynamix COW GHEE', '5 litre', 1, 2400, 1, '2022-06-23'),
('7b2b', '1', '6', 'Gowardhan Pure Cow Ghee', '500 grams', 1, 280, 1, '2022-06-28'),
('88ee', '1', '3', 'Dynamix COW GHEE', '5 litre', 1, 2400, 1, '2022-06-23'),
('8bee', '1', '3', 'Dynamix COW GHEE', '5 litre', 1, 2400, 1, '2022-06-28'),
('8ef0', '4', '101', 'Amul CHEESE SLICE', '750 grams', 1, 350, 1, '2022-07-24'),
('a062', '1', '2', 'Dynamix COW GHEE', '1 litre (pouch)', 1, 500, 1, '2022-06-23'),
('a64c', '4', '10', 'Prabhat Dairy COW GHEE', '200 grams', 1, 110, 1, '2022-06-30'),
('b21f', '4', '101', 'Amul CHEESE SLICE', '750 grams', 1, 350, 0, '2022-07-24'),
('bd22', '1', '18', 'Amul Cow Ghee', '1 litre (pouch)', 1, 480, 1, '2022-06-23'),
('dea2', '1', '10', 'Prabhat Dairy COW GHEE', '200 grams', 1, 110, 1, '2022-06-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authorized_staff`
--
ALTER TABLE `authorized_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `c_address`
--
ALTER TABLE `c_address`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product_subcategory`
--
ALTER TABLE `product_subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `p_order`
--
ALTER TABLE `p_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`w_list_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorized_staff`
--
ALTER TABLE `authorized_staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6374;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
