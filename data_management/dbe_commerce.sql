-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2023 at 07:35 PM
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
-- Database: `dbe_commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `login` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`login`) VALUES
('root');

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`cat_id`, `name`) VALUES
(12, 'Skincare'),
(13, 'Makeup'),
(14, 'Haircare'),
(16, 'Nail Care'),
(18, 'Personal Care');

-- --------------------------------------------------------

--
-- Table structure for table `itm`
--

CREATE TABLE `itm` (
  `itm_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` float NOT NULL,
  `photo` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itm`
--

INSERT INTO `itm` (`itm_id`, `name`, `stock`, `price`, `photo`) VALUES
(43, 'The Face Shop Rice Water Bright Light Face Cleansing Foam & 3 Piece Set', 13, 12, '61Fs57EJylL._AC_UL320_.jpg'),
(44, 'CeraVe SA Cleanser ', 79, 12.37, '61wvSMgzHEL._AC_UL320_.jpg'),
(45, 'CeraVe Hydrating Facial Cleanser ', 50, 11.97, '71gzqzvhb-L._AC_UL320_.jpg'),
(46, 'L’Oréal Paris Infallible Matte Resistance Liquid Lipstick', 396, 10.75, '61r93VejHgL._AC_UL320_.jpg'),
(47, 'Maybelline Lash Sensational', 69, 9.98, '71e5-Rxbp7L._AC_UL320_.jpg'),
(49, 'NYX PROFESSIONAL MAKEUP', 80, 12.44, '61SWjLCijsL._AC_UL320_.jpg'),
(50, 'Olaplex No. 4 Bond', 47, 30, '416jmfawOFL._AC_UL320_.jpg'),
(51, 'Head & Shoulders Clinical', 28, 20.85, '81tzZG5Zy8L._AC_UL320_.jpg'),
(52, 'TRESemmé Conditioner', 80, 11.99, '81lJPp2bh4L._AC_UL320_.jpg'),
(53, '3C4G THREE CHEERS FOR GIRLS', 78, 19.99, '81Ohe+ie60L._AC_UL320_.jpg'),
(54, 'Nail Polish Set for Girls & Teens ', 89, 12.99, '71eMasSFpTL._AC_UL320_.jpg'),
(55, 'U-Shinein Crackle Gel Nail', 100, 11.54, '61LJP8E00aL._AC_UL320_.jpg'),
(56, 'Dove Hypoallergenic', 40, 9.97, '417n+o1AFbL._AC_UL320_.jpg'),
(57, 'Everyone 3-in-1 Soap', 67, 24.98, '71r1RYA9QML._AC_UL320_.jpg'),
(58, 'Dove Body Wash Variety ', 6, 12.5, '61RJqWVnMIS._AC_UL320_.jpg'),
(59, 'Makeup Brushes Makeup Brush Set', 20, 7.15, '71hMhFrd6IL._AC_UL320_.jpg'),
(60, 'Mount Vanity Round Mirror', 10, 15.83, '61E+qAtDQjL._AC_UL320_.jpg'),
(61, 'DELSEY Paris Women\'s Chatelet 2.0 ', 10, 106, '81Mgnl83GNL._AC_UL320_.jpg'),
(62, 'Londo Top Grain Leather', 5, 51, '811JHiyUzeL._AC_UL320_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `itm_cat`
--

CREATE TABLE `itm_cat` (
  `itm_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itm_cat`
--

INSERT INTO `itm_cat` (`itm_id`, `cat_id`) VALUES
(43, 12),
(44, 12),
(45, 12),
(46, 13),
(47, 13),
(49, 13),
(50, 14),
(51, 14),
(52, 14),
(53, 16),
(54, 16),
(55, 16),
(56, 18),
(57, 18),
(58, 18);

-- --------------------------------------------------------

--
-- Table structure for table `ord`
--

CREATE TABLE `ord` (
  `ord_id` int(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL,
  `address` varchar(2555) NOT NULL,
  `login` varchar(2555) NOT NULL,
  `total` int(255) NOT NULL,
  `items` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ord`
--

INSERT INTO `ord` (`ord_id`, `date`, `status`, `address`, `login`, `total`, `items`) VALUES
(18, '2023-09-24 11:09:38', 'Delivered', 'Mahdia Sidi massoud immeuble Fappartement 8', 'root', 43, 'Olaplex No. 4 Bond,Nail Polish Set for Girls & Teens ,'),
(19, '2023-09-24 11:11:29', 'Processing', 'aaa', 'root', 37, 'CeraVe SA Cleanser ||Everyone 3-in-1 Soap||'),
(20, '2023-09-24 11:21:54', 'Cancelled', 'ff', 'root', 30, 'Olaplex No. 4 Bond,'),
(21, '2023-09-24 13:44:49', 'Processing', 'Mahdia Sidi massoud immeuble Fappartement 8', 'test', 40, '3C4G THREE CHEERS FOR GIRLS,');

-- --------------------------------------------------------

--
-- Table structure for table `usr`
--

CREATE TABLE `usr` (
  `login` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `prename` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `passwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usr`
--

INSERT INTO `usr` (`login`, `name`, `prename`, `email`, `passwd`) VALUES
('root', 'root', 'root', 'root@root.com', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785'),
('test', 'test', 'user', 'test@gmail.com', 'd4881c060f8391178ea6f07ff0e630620e770852');

-- --------------------------------------------------------

--
-- Table structure for table `usr_itm`
--

CREATE TABLE `usr_itm` (
  `login` varchar(20) NOT NULL,
  `itm_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `itm`
--
ALTER TABLE `itm`
  ADD PRIMARY KEY (`itm_id`);

--
-- Indexes for table `ord`
--
ALTER TABLE `ord`
  ADD PRIMARY KEY (`ord_id`);

--
-- Indexes for table `usr`
--
ALTER TABLE `usr`
  ADD PRIMARY KEY (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `itm`
--
ALTER TABLE `itm`
  MODIFY `itm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `ord`
--
ALTER TABLE `ord`
  MODIFY `ord_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
