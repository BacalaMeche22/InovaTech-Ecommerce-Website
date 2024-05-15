-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 07:42 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'mech', '8cb2237d0679ca88db6464eac60da96345513964');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(23, 1, 26, 'NPET K10 Wired Gaming Keyboard, LED Backlit, Spill-Resistant Design, Multimedia Keys.', 890, 1, '7113k0qNblL._AC_SX679_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `products`, `total_price`, `placed_on`, `payment_status`) VALUES
(12, 1, 'mechelou', '9638913583', 'mechelousabaybacala02@gmail.com', 'Cash on delivery', 'region Cagayan de Oro City, 9003, Jasaan, Danao, Purok 2', 'Dell Desktop Computer Package Compatible with Dell Optiplex 7010 Intel Quad Core i5 3.2GHz,Win10 pro (5999 x 1) - ACER EXTENSA EX215-54-3485 | INTEL CORE i3 1115G4 | 8GB FULL HD DISPLAY | WINDOWS 11| LAPTOP (29397 x 1) - ASUS TUF DASH F15 FX517ZR-HN036W (BLACK) | 15.6” FHD | I5-12450H |WINDOWS 11 HOME LAPTOP (86999 x 1) - ', 122395, '2023-05-24', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`) VALUES
(10, 'ACER EXTENSA EX215-54-3485 | INTEL CORE i3 1115G4 | 8GB FULL HD DISPLAY | WINDOWS 11| LAPTOP', 'For better performance, the Extensa 15 employs up to Intel® Core™ Processors1, has up to 16 GB1 of memory, and delivers enough power to see you through your workday2. Work, play, or relax; do it all with powerful productivity.\r\nThe Full HD1 display keeps images and videos stunning while the narrow border offers-up more viewable space. To protect user’s eyes from harmful blue light, it also includes Acer BlueLightShield.\r\n', 29397, 'ACER_24@2x.jpg'),
(11, 'ASUS TUF DASH F15 FX517ZR-HN036W (BLACK) | 15.6” FHD | I5-12450H |WINDOWS 11 HOME LAPTOP', 'GAMING HORSEPOWER\r\nLatest 12th Gen Intel® Core™ CPU and a RTX 30 Series Laptop GPU with MUX switch\r\nON-THE-GO VERSATILITY\r\nMeets MIL-STD-810H standard, Type-C charging support and a long-lasting battery in a 19.95mm slim chassis.\r\n\r\nCRYSTAL CLEAR VISUALS\r\nQHD 165Hz or FHD 300Hz with Adaptive Sync support.\r\n\r\nMORE MULTITASKING\r\nUp to dual-channel DDR5 4800MHz memory.', 86999, 'ASUS-TUF@2x.png'),
(12, 'ASUS ROG STRIX G15 G513IC-HN073W [ECLIPSE GREY] 15″ FHD 144HZ | | WINDOWS 11 LAPTOP', 'Processor: Ryzen 7-4800H \r\nDisplay: 15.6-inch Full HD (1920×1080) 16:9, 144Hz, Value IPS-Level\r\nMemory: 8GB DDR4-3200 SO-DIMM (Upgradable: Max 32GB)\r\nStorage: 512GB M.2 NVMe™ PCIe® 3.0 SSD\r\nGraphics: NVIDIA® GeForce RTX™ 3050 4GDDR6\r\nOperating System: Windows 11\r\nKeyboard: Backlit Chiclet Keyboard 4-Zone RGB\r\nWebcam: N/A\r\nI/O Ports:\r\nx RJ45 LAN port\r\nWireless Connectivity: Wi-Fi 6(802.11ax)+Bluetooth 5.1 (Dual band) 2*2', 62697, 'asus rog-2.webp'),
(13, 'HUAWEI MATEBOOK 14S|14.2IN (2520X1680), TOUCH |CORE I7-11370H|INTEL IRIS XE GRAPHICS | WIN10 LAPTOP', 'DISPLAY: 14.2-inch 2.5K LTPS (1680 x 2520 pixels, 213 ppi) with 90Hz Refresh Rate and 3:4 Aspect Ratio\r\nOS:	Windows 10 (FREE Upgrade to Windows 11)\r\nPROCESSOR: Intel® Core™ i7-11370H\r\nGRAPHICS: Intel Iris Xᵉ (Integrated)\r\nRAM: 16 GB LPDDR4x\r\nSTORAGE	512 GB NVMe PCIe SSD', 69999, 'huawei.png'),
(14, 'ACER TRAVELMATE P214-53-38X2 | INTEL CORE i3-1115G4 |WINDOWS 11 HOME | BLACK LAPTOP', 'TMP214-53-38X2\r\nNX.VPN5P.097\r\nWindows 11 Home SL\r\nIntel® Core i3-1115G4 processor , 2Cores 4Threads, 6MB Cache, 3.0 GHz with up to 4.10 GHz, 11 Generation\r\n8GB (1 x 8GB) Dual-channel DDR4 SDRAM support, Up to 32 GB of system memory\r\n512GB PCIe NVMe SSD\r\nIntel® UHD Graphics for 11th Gen Intel® Processors\r\n14&#34; HD 1366 x 768 resolution Acer ComfyView LED-backlit TFT LCD, 16:9 aspect ratio, Ultra-slim design, Mercury free, environment friendly\r\n', 25999, 'ACER5.PNG'),
(15, 'MIRACLE SNAIL GK20 KEYBOARD', 'DISPLAY: 14.2-inch 2.5K LTPS (1680 x 2520 pixels, 213 ppi) with 90Hz Refresh Rate and 3:4 Aspect Ratio\r\nOS: Windows 10 (FREE Upgrade to Windows 11)\r\nPROCESSOR	Intel® Core™ i7-11370H\r\nGRAPHICS: Intel Iris Xᵉ (Integrated)\r\nRAM	16 GB LPDDR4x\r\nSTORAGE: 512 GB NVMe PCIe SSD\r\nWEBCAM: 720p HD Camera\r\nWI-FI: WiFi 802.11 a/b/g/n/ac/ax (dual band)\r\nBLUETOOTH: Bluetooth 5.1', 250, 'MIRACLE-SNAIL-GK20-KEYBOARD_540x.png'),
(16, 'LOGITECH MX KEYS MINI (ROSE) MINIMALIST WIRELESS ILLUMINATED KEYBOARD', 'DISPLAY	14.2-inch 2.5K LTPS (1680 x 2520 pixels, 213 ppi) with 90Hz Refresh Rate and 3:4 Aspect Ratio\r\nOS	Windows 10 (FREE Upgrade to Windows 11)\r\nPROCESSOR	Intel® Core™ i7-11370H\r\nGRAPHICS	Intel Iris Xᵉ (Integrated)\r\nRAM	16 GB LPDDR4x\r\nSTORAGE	512 GB NVMe PCIe SSD\r\nWEBCAM	720p HD Camera\r\nWI-FI	WiFi 802.11 a/b/g/n/ac/ax (dual band)\r\nBLUETOOTH	Bluetooth 5.1\r\nPORTS	USB Type-C x 2 (Thunderbolt support for i7/1TB variant),\r\nUSB 3.2 x 1,\r\nHDMI x 1, and\r\n3.5mm Audio Jack\r\nKEYBOARD	Full-size Backlit Ke', 550, '2.png'),
(17, 'HP Elite Desktop PC Computer Intel Core i5 3.1-GHz,19 Inch LCD , Win10', 'Specific Uses For Product	Personal\r\nBrand	HP\r\nPersonal computer design type	Computer Tower\r\nOperating System	Windows 10\r\nMemory Storage Capacity	1 TB\r\nScreen Size	19 Inches\r\nRam Memory Installed Size	8 GB\r\nSeries	Pro / Elite\r\nIncluded Components	Includes Power Cable, USB Keyboard & Mouse, WiFi Adapter\r\nCPU Model	Core i5', 7734, 'pc1.png'),
(18, 'Dell Desktop Computer Package Compatible with Dell Optiplex 7010 Intel Quad Core i5 3.2GHz,Win10 pro', 'Specific Uses For Product:	Personal\r\nBrand:	Dell\r\nPersonal computer design type	All in One\r\nOperating System: Windows 10 Pro\r\nMemory Storage Capacity:	500 GB\r\nScreen Size:19 Inches\r\nRam Memory Installed Size	8 GB\r\nSeries: Optiplex\r\nIncluded Components	Monitor, Mouse, Keyboard\r\nCPU Model:	Core i5', 5999, 'p2.png'),
(19, 'KAMRUI Mini PC Windows 11 Pro, Mini Desktop Computer Ιntel Celeron J4105, Mini Computer', 'Specific Uses For Product:	Multimedia, Personal, Business\r\nBrand: KAMRUI\r\nPersonal computer design type	Mini PC\r\nOperating System	: Windows 11 Pro\r\nScreen Size: 51 Inches\r\nRam Memory Installed Size	:12 GB\r\nSeries: GK2\r\nIncluded Components:	1 x User Manual, 1 x Power Adapter, 1 x Mini PC, 1 x VESA Mount with Screws, 1 x HDMI cable\r\nCPU Model: Celeron\r\nColor: Grey', 12187, 'p3.jpg'),
(20, 'KOORUI 24 Inch Computer Monitor Full HD 1920 x 1080p VA Display 75Hz 3000', 'Screen Size: 23.8 Inches\r\nDisplay Resolution Maximum:	1920 x 1080 Pixels\r\nBrand: KOORUI\r\nSpecial Feature: Blue Light Filter, Wall Mountable, Tilt Adjustment, Frameless, Flicker-Free\r\nRefresh Rate: 75 Hz', 5599, 'pc2.png'),
(21, 'TCL 30XL |2022| Unlocked Cell Phone, 6.82 inch Vast Display, 5000mAh Battery, Android 12 Smartphone.', 'Brand: TCL\r\nModel Name: CL 30XL NIGHT MIST\r\nWireless Carrier: Unlocked\r\nOS	Android 12.0\r\nCellular Technology: 4G\r\nMemory Storage Capacity: 64 GB\r\nConnectivity technologies: Bluetooth, Wi-Fi\r\nColor: Night Mist\r\nScreen Size:	6.82 Inches\r\nWireless network technology	GSM, Wi-Fi', 8291, '7189upD5MWL._AC_SX569_.jpg'),
(22, 'Apple iPhone 12 Mini, 64GB, Blue', 'Brand: Apple\r\nModel Name: iPhone 12 Mini\r\nWireless Carrier: Unlocked for All Carriers\r\nOS: iOS 14\r\nCellular Technology:	5G\r\nMemory Storage Capacity:	64 GB\r\nConnectivity technologies:	Wi-Fi\r\nColor: Blue\r\nScreen Size: 5.4 Inches\r\nWireless network technology	Wi-Fi', 17352, '7135f9dGtqL._AC_SX569_.jpg'),
(23, 'Realme 9 Pro 5G + 4G LTE GSM 128GB + 8GB 6.6&#34; 64MP Triple Camera ', 'Brand: realme\r\nModel Name:	9 pro\r\nWireless Carrier:	Unlocked for All Carriers\r\nOS: realme UI 3.0 Based on Android 12\r\nCellular Technology:	5G + 4G\r\nMemory Storage Capacity:	128 GB\r\nConnectivity technologies:	Wi-Fi\r\nColor: Sunrise Blue\r\nScreen Size:	6.6 Inches\r\nWireless network technology:	GSM, Wi-Fi, CDMA, LTE', 14000, '61cW27JOnGL._AC_SX569_.jpg'),
(24, 'Logitech G502 HERO High Performance Wired Gaming Mouse.', 'Brand: Logitech G\r\nColor: Black\r\nConnectivity Technology: USB\r\nSpecial Feature: LED Lights\r\nMovement Detection Technology:	Optical', 1120, '61mpMH5TzkL._AC_SX679_.jpg'),
(25, 'Logitech MX Master 3S for Mac - Wireless Bluetooth Mouse with Ultra-Fast Scrolling, Ergo, 8K DPI.', 'Brand: Logitech\r\nColor: Pale Grey\r\nConnectivity Technology: USB\r\nSpecial Feature: Wireless\r\nMovement Detection', 5509, '61jFSvCTfpL._AC_SX679_.jpg'),
(26, 'NPET K10 Wired Gaming Keyboard, LED Backlit, Spill-Resistant Design, Multimedia Keys.', 'Brand: NPET\r\nCompatible Devices: Compatible with Windows 95/98/XP/2000/ME/VISTA/7/8/10 and Mac OS\r\nConnectivity Technology: USB\r\nKeyboard Description: Gaming, Membrane, Multimedia, Mechanical\r\nRecommended Uses For Product Office, Multimedia, Gaming\r\nSpecial Feature: Backlit, Spillproof, Ergonomic, Water Resistant, Fade Resistant, Doubleshot ABS Keycaps\r\nColor: Black', 890, '7113k0qNblL._AC_SX679_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Mechelou', 'mechelousabaybacala02@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964'),
(3, 'rena', 'rena@gmail.com', '7b52009b64fd0a2a49e6d8a939753077792b0554'),
(4, 'maria', 'maria22@gmail.com', '7b52009b64fd0a2a49e6d8a939753077792b0554');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(2, 1, 17, 'HP Elite Desktop PC Computer Intel Core i5 3.1-GHz,19 Inch LCD , Win10', 7734, 'pc1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
