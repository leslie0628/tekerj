-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 08:09 PM
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
-- Database: `termekek`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategoria`
--

CREATE TABLE `kategoria` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `kategoria`
--

INSERT INTO `kategoria` (`id`, `name`, `image`) VALUES
(1, 'Trekking/Cross', 'full_2021_grand-canyon-6_2615_bk-gy_P5.jpg'),
(2, 'Mountain bike', 'neuron 7.jpg'),
(3, 'BMX', '2021-Premium-Subway-Denim-Blue_5000x.png');

-- --------------------------------------------------------

--
-- Table structure for table `termek`
--

CREATE TABLE `termek` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `termek`
--

INSERT INTO `termek` (`id`, `name`, `price`, `image`, `category_id`) VALUES
(1, 'Csepel Rapid', 165800, '114368159.csepel-rapid-3.jpg', 1),
(2, 'KTM Ultra Fun', 249000, '614539398.ktm-ultra-fun-2020.jpg', 2),
(3, 'Capriolo Oxigen 29', 110700, '669347700.capriolo-oxigen-29-2020.jpg', 2),
(4, 'KTM Life Track 2021', 266850, '761629338.ktm-life-track-2021.jpg', 1),
(5, 'KTM Life Cross', 329990, '762721281.ktm-life-cross-2021.jpg', 1),
(6, 'Mongoose Legion L500', 214900, '764626395.mongoose-legion-l500-2021.jpg', 3),
(7, 'Mongoose Legion L20', 127900, '485967867.mongoose-legion-l20.jpg', 3),
(8, 'Academy Trooper 2021', 136900, '766021977.academy-trooper-bmx-2021.jpg', 3),
(9, 'CUBE Aim Pro 29', 244640, '872529405.cube-aim-pro-29-2022.jpg', 2),
(10, 'CUBE Acces WS 29', 211990, '872529585.cube-access-ws-29-2022.jpg', 2),
(11, 'Koliken Bigboy 300', 124900, '875172621.koliken-bigboy-300-29.jpg', 2),
(12, 'Gepida Mundo Pro', 199900, '925471995.gepida-mundo-pro-27-5-24s-2022.jpg', 2),
(13, 'Galaxy BMX Spot 20', 211700, '825404058.galaxy-bmx-spot-20-2021.jpg', 3),
(14, 'Mongoose Legion L60 ', 140900, '764626860.mongoose-legion-l60-2021.jpg', 3),
(16, 'Mongoose Legion L10', 118900, 'mongoose-legion.jpg', 3),
(17, 'Mongoose Legion L60', 151990, '836247636.mongoose-legion-l60.jpg', 3),
(18, 'GT Air BMX 2021', 154900, '757842174.gt-air-bmx-2021.jpg', 3),
(19, 'DHS Jumper 2005', 99100, 'DHS-Jumper.jpg', 3),
(20, 'S\'COOL XtriX 40', 116900, '873957057.s-cool-xtrix-40-20.jpg', 3),
(21, 'Mongoose Legion L40', 147990, '485967833.mongoose-legion-l40.jpg', 3),
(22, 'GT Team Conway', 210900, '757842303.gt-team-conway-bmx-2021.jpg', 3),
(23, 'KTM Chicago Disc 2021', 256850, '762719745.ktm-chicago-disc-292-2021.jpg', 2),
(24, 'CUBE Nature 2022', 279290, '884155014.cube-nature-2022.jpg', 1),
(25, 'CUBE Analog 29', 339990, '887713443.cube-analog-29-2022.jpg', 2),
(26, 'GHOST Square Trekking', 347990, 'TBH_Gh1SQUTB_be_Square_Trekking_Base_AL_MJ21-il.jpg', 1),
(27, 'Merida Crossway', 249990, 'Merida-Crossway.jpg', 1),
(28, 'GHOST Square Cross Base', 263990, 'ghost-square-cross2.jpg', 1),
(29, 'KTM Life Joy 2021', 276990, '762721926.ktm-life-joy-2021.jpg', 1),
(30, 'Koliken Scoria', 104890, '642202380.koliken-scoria.jpg', 2),
(31, 'Gepida Albion 300', 2015900, '46310216.gepida-alboin-300-crs.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termek`
--
ALTER TABLE `termek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `termek`
--
ALTER TABLE `termek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategoria`
--
ALTER TABLE `kategoria`
  ADD CONSTRAINT `kategoria_ibfk_1` FOREIGN KEY (`id`) REFERENCES `termek` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
