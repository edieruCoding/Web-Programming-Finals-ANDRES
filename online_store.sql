-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 08:49 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `order_id` int(11) NOT NULL,
  `quantity` int(255) DEFAULT NULL,
  `item_id` int(200) DEFAULT NULL,
  `user_id` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_type` enum('Set Product Type','CPU','MOTHERBOARD','RAM','GPU','SSD','HDD','PSU','CASING','CPU COOLER','KEYBOARD','MOUSE','MONITOR','HEADSET') DEFAULT NULL,
  `product_name` varchar(200) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `model` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_type`, `product_name`, `brand`, `model`, `description`, `price`, `quantity`) VALUES
(1, 'CPU', 'INTEL CORE I5 12400', 'INTEL', 'CORE I5 12400', 'https://ark.intel.com/content/www/us/en/ark/products/134586/intel-core-i512400-processor-18m-cache-up-to-4-40-ghz.html\r\n', '8850.00', 10),
(2, 'CPU', 'AMD RYZEN 5 5600', 'AMD', 'RYZEN 5 5600', 'https://www.amd.com/en/products/cpu/amd-ryzen-5-5600\r\n', '7995.00', 10),
(3, 'MOTHERBOARD', 'ASUS TUF B760M-PLUS WIFI DDR4 M-ATX LGA1700\r\n', 'ASUS', 'TUF B760M-PLUS WIFI\r\n', 'https://www.asus.com/motherboards-components/motherboards/tuf-gaming/tuf-gaming-b760m-plus-wifi-d4/techspec/', '10495.00', 10),
(4, 'MOTHERBOARD', 'MSI B550M MORTAR MAX WIFI MATX AM4', 'MSI', 'MAG B550M MORTAR MAX WIFI\r\n', 'https://www.msi.com/Motherboard/MAG-B550M-MORTAR-MAX-WIFI/Overview', '9515.00', 10),
(5, 'RAM', 'G-SKILL TRIDENT Z NEO RGB 8GBX2=16GB 3200MHZ DDR4\r\n', 'G.SKILL', 'TRIDENT Z NEO RGB\r\n', 'https://www.gskill.com/product/165/326/1562838776/F4-3200C16D-16GTZN', '3996.00', 10),
(6, 'RAM', 'PNY XLR8 GAMING RGB WHITE 8GBX2=16GB 3200MHZ DDR4\r\n\r\n', 'PNY', 'XLR8 GAMING RGB WHITE\r\n', 'https://www.pny.com/XLR8-Gaming-EPIC-X-RGB-Desktop-Memory?sku=MD16GK2D4320016XRGBW', '2945.00', 10),
(7, 'GPU', 'RADEON RX 7700XT SAPPHIRE NITRO GAMING BLACK 12GB GDDR6 TRIPLE FAN\r\n', 'AMD', 'RX 7700XT SAPPHIRE NITRO GAMING BLACK 12GB GDDR6 TRIPLE FAN', 'https://www.sapphiretech.com/en/consumer/nitro-radeon-rx-7700-xt-12g-gddr6', '30595.00', 10),
(8, 'GPU', 'GEFORCE RTX 4070 ASUS TUF GAMING OC 12GB GDDR6X TRIPLE FAN\r\n', 'ASUS', 'RTX 4070 ASUS TUF GAMING OC 12GB GDDR6X TRIPLE FAN\r\n', 'https://www.asus.com/motherboards-components/graphics-cards/tuf-gaming/tuf-rtx4070-o12g-gaming/', '50595.00', 10),
(9, 'SSD', 'GIGABYTE GEN3 2500E 500GB NVME M.2 SSD\r\n', 'GIGABYTE', 'GEN3 2500E 500GB NVME', 'https://www.gigabyte.com/SSD/GIGABYTE-Gen3-2500E-SSD-500GB#kf\r\n', '2195.00', 10),
(10, 'SSD', 'WESTERN DIGITAL SN350 1TB NVME GEN3\r\n', 'WESTERN DIGITAL', 'DIGITAL SN350 1TB NVME GEN3\r\n', 'https://www.westerndigital.com/en-ap/products/internal-drives/wd-green-sn350-nvme-ssd?sku=WDS100T2G0C', '3290.00', 10),
(11, 'HDD', '2tb Seagate Barracuda HDD, 256mb 7200rpm', 'SEAGATE', 'ST2000LM015\r\n', 'https://www.seagate.com/as/en/products/hard-drives/barracuda-hard-drive/', '3325.00', 10),
(12, 'HDD', '4tb WD Red Plus HDD, For NAS, 256mb 5400rpm\r\n', 'WESTERN DIGITAL', '4tb WD Red Plus 256mb 5400rpm\r\n', 'https://www.westerndigital.com/products/internal-drives/wd-red-plus-sata-3-5-hdd?sku=WD40EFPX', '6995.00', 10),
(13, 'PSU', 'SEASONIC SSR-750 PX FOCUS PLUS 750W 80+ PLATINUM FULLY MODULAR', 'SEASONIC', 'SSR-750 PX FOCUS PLUS PLATINUM FULLY MODULAR\r\n', 'https://seasonic.com/focus-plus-platinum#overview\r\n', '6695.00', 10),
(14, 'PSU', 'CORSAIR RM1000X SHIFT 1000W 80PLUS GOLD\r\n', 'CORSAIR', 'RM1000X SHIFT 1000W 80PLUS GOLD\r\n', 'https://www.corsair.com/us/en/Categories/Products/Power-Supply-Units/RMx-SHIFT-Series-Fully-Modular-Power-Supplies/p/CP-9020253-NA', '13495.00', 10),
(15, 'CASING', 'MONTECH AIR 100 BLACK MATX 4PCS ARGB FANS\r\n', 'MONTECH', 'AIR 100 BLACK MATX\r\n', 'https://www.montechpc.com/en/products_detail.php?nid=225\r\n', '3650.00', 10),
(16, 'CASING', 'DARK FLASH DK361 WHITE ATX 4 PCS ARGB FANS', 'DARK FLASH', 'DK361 WHITE ATX\r\n', 'https://www.darkflash.com/tw/product/show.php?num=135', '2895.00', 10),
(17, 'CPU COOLER', 'DEEPCOOL AK400 1 FAN AIR COOLER WHITE (R-AK400-WHNNMT-G-1)\r\n', 'DEEPCOOL', 'AK400 1 FAN AIR COOLER WHITE (R-AK400-WHNNMT-G-1)\r\n', 'https://www.deepcool.com/products/Cooling/cpuaircoolers/AK400-WH-Performance-CPU-Cooler-White-1700-AM5/2021/15223.shtml\r\n', '1635.00', 10),
(18, 'CPU COOLER', 'CORSAIR ICUE H150I ELITE CAPELLIX XT RGB 360MM 3FANS AIO COOLER (BLACK)\r\n', 'CORSAIR', 'ICUE H150I ELITE CAPELLIX XT RGB 360MM 3FANS AIO COOLER (BLACK)\r\n', 'https://www.corsair.com/us/en/Categories/Products/Liquid-Cooling/iCUE-ELITE-CAPELLIX-XT-Liquid-CPU-Cooler/p/CW-9060070-WW\r\n', '11295.00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(200) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `username`, `password`, `firstname`, `lastname`, `mobile`, `address`, `email`) VALUES
(1, 'justine13', 'p4ss4321', 'Justine', 'Andres', '09123456789', '#2 SunNata, Talipapa, Quezon City, NCR', 'justine13@phpmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `user_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `profile` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
