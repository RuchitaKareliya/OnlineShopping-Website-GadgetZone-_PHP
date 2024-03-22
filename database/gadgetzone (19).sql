-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2022 at 07:39 AM
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
-- Database: `gadgetzone`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(10) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `email`, `password`) VALUES
(1, 'kareliyaruchitaj@gmail.com', 'krj@1810');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `b_id` int(10) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(32) NOT NULL,
  `payment_type` varchar(30) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` int(6) NOT NULL,
  `total_product` varchar(255) NOT NULL,
  `total_amount` float(10,2) NOT NULL,
  `payment_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`b_id`, `fullname`, `email`, `payment_type`, `mobile_no`, `address`, `city`, `state`, `pincode`, `total_product`, `total_amount`, `payment_time`) VALUES
(1, 'Kareliya Ruchita', 'kareliyaruchitaj@gmail.com', 'Credit Card', '9904461614', 'santkabir rood', 'Rajkot', 'Gujarat', 360003, 'MacBook 12 (1) , LG 55UQ8020PSB  (2) , HomePod mini (1) , Asus Zenfone 9 (1) , SONY ILCE-3500J (1) ', 343951.00, '2022-09-10'),
(2, 'R K', 'rk@gmail.com', 'Cash On Delivery', '1331133113', 'pedak rood', 'Rajkot', 'Gujarat', 360003, 'ASUS TUF Gaming (2) ', 117.00, '0000-00-00'),
(3, 'R K', 'rk@gmail.com', 'Credit Card', '1331133131', 'padek road', 'Rajkot', 'Gujarat', 360003, 'MacBook Air 13.3-inch (1) , Sony 43 Tv With Hd Display (1) , Apple iPhone 13 Pro (1) ', 169334.00, '2022-09-14'),
(4, 'Kareliya Ruchita', 'kareliyaruchitaj@gmail.com', 'Cash On Delivery', '9904461614', 'santkabir rood', 'Rajkot', 'Gujarat', 360003, 'MacBook Air 13.3-inch (1) ', 45.00, '0000-00-00'),
(5, 'C C', 'cc@gmail.com', 'Cash On Delivery', '9904461614', 'santkabir rood', 'Rajkot', 'Gujarat', 360003, 'Apple MacBook Pro (1) ', 329.00, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `c_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(10) NOT NULL,
  `email` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `email` varchar(32) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `message`) VALUES
(1, 'kareliya@gmail.com', 'Your wedsite cash back offer available?'),
(2, 'kareliyaruchitaj@gmail.com', 'your website discount offer available'),
(3, 'rk@gmail.com', 'your website any offer avaliable ?');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `email` varchar(32) NOT NULL,
  `feedback` text NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `feedback`, `message`) VALUES
(3, 'kareliya@gmail.com', 'Good', 'your wedsite product good.'),
(4, 'kareliyaruchitaj@gmail.com', 'VeryGood', 'your wedsite design veryGood'),
(5, 'rk@gmail.com', 'VeryGood', 'your product is very good.');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `categories_name` varchar(10) NOT NULL,
  `company` varchar(10) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `decryption` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(10) NOT NULL,
  `date&time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categories_name`, `company`, `product_name`, `decryption`, `price`, `quantity`, `date&time`, `img`) VALUES
(13, 'laptop', 'lenovo', 'Lenovo Ideapad 5', 'Lenovo IdeaPad 5 Core i5 11th Gen - (16 GB/512 GB SSD/Windows 11 Home) 14ITL05 Thin and Light Laptop  (14 inch, Graphite Grey, With MS Office)', 66490.00, 40, '2022-08-04 20:08:13', 'Lenovo Ideapad 5.jpg'),
(15, 'laptop', 'asus', 'Asus ZenBook Pro', 'ASUS Core i9 10th Gen - (32 GB/1 TB SSD/Windows 10 Home/6 GB Graphics/NVIDIA GeForce RTX 2060)', 269990.00, 50, '2022-08-17 15:24:49', 'Asus ZenBook Pro.jpg'),
(16, 'laptop', 'asus', 'Asus X543MA-GQ1015T ', 'Asus X543MA-GQ1015T Laptop (Celeron Dual Core/4 GB/1 TB/Windows 10)', 26990.00, 25, '2022-08-23 17:51:03', 'Asus X543MA-GQ1015T Laptop.jpg'),
(18, 'laptop', 'asus', 'Asus Vivobook14', 'Asus Vivobook14 Intel Core I3-1115G4(4Gb Ram/256Gb Nvme Ssd/Office H&S 2019/1 Yr. Mcafee/Uhd Graphics/14.1 Inches Fhd Ips/Fp Reader/Windows 11/1.6 Kg/Silver)', 29000.00, 30, '2022-08-24 01:04:43', 'Asus Vivobook14.jpg'),
(19, 'laptop', 'asus', 'ASUS TUF Gaming', 'ASUS TUF Gaming F15 Core i5 10th Gen - (8 GB/512 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650/144 Hz) FX506LH-HN258T Gaming Laptop', 58990.00, 30, '2022-08-24 01:06:29', 'ASUS TUF Gaming.jpg'),
(20, 'laptop', 'apple', 'Apple MGN63HNA MacBo', 'Apple MGN63HNA MacBook Air (Apple M1 Chip/8GB/256GB SSD/macOS Big Sur/Retina), 33.78 cm (13.3 inch)', 91908.00, 35, '2022-08-24 01:20:35', 'Apple MGN63HNA MacBook Air.jpg'),
(22, 'laptop', 'hp', 'Hp Ryzen 3', 'HP Ryzen 3 Dual Core 3250U - (8 GB/256 GB SSD/Windows 11 Home) 15s-GY0501AU Thin and Light Laptop  (15.6 inch, Natural Silver, 1.69 kg, With MS Office)', 31990.00, 40, '2022-08-25 17:53:09', 'Hp Ryzen 3.jpg'),
(23, 'laptop', 'dell', 'Dell Inspiron 15', 'Processor:\r\nIntel® Pentium® Silver N5030 (4 MB cache, 4 cores, 4 threads, up to 3.10 GHz)', 34489.00, 30, '2022-08-25 17:58:46', 'Dell Inspiron 15 Laptop.jpg'),
(26, 'laptop', 'apple', 'MacBook Air 13.3-inch', 'MacBook Air 13.3-inch (2015) - Core i5 - 8GB - SSD 512 GB', 45000.00, 50, '2022-09-09 03:37:15', 'MacBook Air.jpg'),
(28, 'laptop', 'apple', 'MacBook 12', 'MacBook 12\" (2017) - QWERTY - English (US) Retina - Core m3 - 1.2 GHz - SSD 256 GB - RAM 8GB Display Type	LCD\r\nProcessor Type	Intel CORE M3\r\nNumber of CPU Cores	Dual Core\r\nGraphics Type	Integrated\r\nFeatured Brands	Apple\r\ndisplay size (IN)	12\r\nWeight	1.625\r\nModel Year	2017\r\nCPU Speed	1.2\r\nOperating System	Mac Os', 75000.00, 50, '2022-09-09 03:39:33', 'MacBook 12 (2017).jpg'),
(29, 'laptop', 'apple', 'Apple MacBook Pro 14 ', 'Apple MacBook Pro 14 M1 Pro chip macOS Monterey Laptop (16GB RAM, 512GB SSD, Apple M1 GPU, 35.97 cm, Space Grey)', 175410.00, 40, '2022-09-09 03:52:33', 'Apple MacBook Pro 14 M1 Pro chip macOS Monterey Laptop .jpg'),
(31, 'laptop', 'apple', 'Apple MacBook Pro I7', 'Apple MacBook Pro I7 Processor 16 500Gb CPU Manufacturer – Intel\r\nScreen Size – 13 Inches\r\nComputer Memory Size – 16 GB\r\nHard Disk Size – 500 GB\r\nChipset Brand – Intel\r\nSeries – MacBook Pro\r\nCPU Model – Core i7', 59999.00, 30, '2022-09-09 03:54:10', 'Apple MacBook Pro I7.jpg'),
(34, 'laptop', 'apple', 'Apple MacBook Pro', '2021 Apple MacBook Pro (16-inch//41.05 cm, Apple M1 Max chip with 10‑core CPU and 32‑core GPU, 32GB RAM, 1TB SSD) - Space Grey', 329900.00, 50, '2022-09-09 03:58:28', 'Apple MacBook Pro.jpg'),
(35, 'laptop', 'apple', 'Apple MacBook Pro', 'Apple MacBook Pro | 8GB+500GB | Core i5 | 13″ | Refurbished\r\n\r\nProcessor – Core i5\r\nSize  – 13″ Screen\r\nRAM 8GB – ROM 500GB\r\nWarranty: 3 Months Seller’s Warranty\r\nShipping: Surface Shipping (Delivery Within 5-7 Days)', 26999.00, 50, '2022-09-09 20:23:08', '2021 Apple MacBook Pro.jpg'),
(37, 'laptop', 'apple', 'MacBook Air', 'MacBook Air \r\n\r\nApple M2 chip with 8‑core CPU, 8‑core GPU, 16‑core Neural Engine\r\n8GB unified memory\r\n256GB SSD storage\r\n34.46 cm (13.6-inch) Liquid Retina display with True Tone\r\n1080p FaceTime HD camera', 119900.00, 30, '2022-09-09 20:28:58', 'MacBook Air - Midnight.jpg'),
(38, 'laptop', 'apple', 'MACBOOK PRO RETINA 15.4', 'PROCESSOR\r\n\r\nIntel Core i7\r\nRAM\r\n\r\n8 GB\r\nHARDDISK\r\n\r\n128 GB SSD', 45119.00, 40, '2022-09-09 20:32:19', 'MACBOOK PRO RETINA 15.4.jpg'),
(39, 'laptop', 'asus', 'Asus ROG Strix', 'Asus ROG Strix G15 G513IH-HN086T Laptop AMD Octa Core Ryzen 7 4800H NVIDIA GeForce GTX 1650 8GB 512GB SSD Windows 10', 71990.00, 50, '2022-09-09 20:35:04', 'Asus ROG Strix.jpg'),
(40, 'laptop', 'asus', 'ASUS VivoBook 15', 'ASUS VivoBook 15 (2022) Core i5 11th Gen - (8 GB/1 TB HDD/256 GB SSD/Windows 10 Home) X515EA-EJ502TS Thin and Light Laptop  (15.6 inch, Transparent Silver, 1.80 kg, With MS Office)', 50990.00, 40, '2022-09-09 20:36:22', 'Asus Vivobook 15.jpg'),
(41, 'laptop', 'asus', 'ASUS Vivobook 14', 'ASUS Vivobook 14 Intel Core i3 10th Gen ASUS VIVOBOOK 14 CORE I3 10TH GEN - (4 GB/1 TB HDD/WINDOWS 10 HOME) X409FA-BV301T THIN AND LIGHT LAPTOP (14.1 INCH, SLATE GREY, 1.6 KG)', 29.00, 30, '2022-09-09 20:39:32', 'Asus Vivobook14.jpg'),
(42, 'laptop', 'asus', 'Asus HY777TS ZenBook Duo (2021', 'Asus HY777TS ZenBook Duo (2021) Laptop (11th Gen-Intel Core i7-1165G7/16 GB/1 TB SSD/Intel Iris Xe Graphics/Windows 10/MSO/Full HD), 35.56 cm (14 inch)', 112090.00, 50, '2022-09-09 20:41:02', 'Asus HY777TS ZenBook Duo (2021) Laptop.jpg'),
(43, 'laptop', 'asus', 'ASUS VivoBook Flip 14', 'ASUS VivoBook Flip 14 Thin and Light 2-in-1 Laptop, 14” FHD Touch, 11th Gen Intel Core i3-1115G4, 4GB RAM, 128GB SSD, Thunderbolt 4, Fingerprint, Windows 10 Home in S Mode, Indie Black, TP470EA-AS34T', 77495.00, 40, '2022-09-09 20:51:13', 'ASUS VivoBook Flip 14.jpg'),
(44, 'laptop', 'dell', 'Dell Vostro 3515 Laptop', 'Processor\r\nAMD Athlon™ Silver 3050U Mobile Processor with Radeon™ Graphics\r\n\r\nOperating System\r\nWindows 11 Home Single Language, English\r\n\r\nVideo Card\r\nAMD® APU™ Graphics\r\n\r\nDisplay\r\n15.6\", HD 1366x768, 60Hz, Non-Touch, Anti-Glare, LED-Backlit, Narrow Border\r\n\r\nMemory \r\n8 GB, 1 x 8 GB, DDR4, 2400 MHz\r\n\r\nHard Drive\r\n256 GB, M.2, PCIe NVMe, SSD', 33990.00, 50, '2022-09-09 20:55:06', 'Dell Vostro 3515 Laptop.jpg'),
(45, 'laptop', 'dell', 'Dell Inspiron Athlon Dual Core', 'DELL Inspiron Athlon Dual Core 3050U - (8 GB/256 GB SSD/Windows 11 Home) Inspiron 3525 Notebook  (15.6 Inch, Carbon Black, 1.68 Kg, With MS Office)', 34999.00, 40, '2022-09-09 21:00:45', 'Dell Inspiron Athlon Dual Core 3050u.jpg'),
(46, 'laptop', 'dell', 'Dell Laptop dual core', 'Processor NamePentium Dual Core\r\nProcessor Generation4th Gen\r\nSSDNo\r\nRAM4 GB\r\nRAM TypeDDR3\r\nHDD Capacity500 GB', 8999.00, 40, '2022-09-09 21:04:47', 'Dell Laptop dual core.jpg'),
(47, 'laptop', 'dell', 'Dell Inspiron Ryzen 3', 'DELL Inspiron Ryzen 3 Dual Core 3250U - (8 GB/512 GB SSD/Windows 11 Home) Inspiron 3515 Thin and Light Laptop  (15.6 Inch, Platinum Silver, 1.8 Kgs, With MS Office)', 44390.00, 30, '2022-09-09 21:06:42', 'Dell Inspiron Ryzen 3.jpg'),
(48, 'laptop', 'dell', 'Dell Inspiron 14 ', 'DELL INSPIRON 14 5000 SERIES 5402 LAPTOP INTEL(R) CORE(TM) I5-1135G7 PROCESSOR 8GB, 1X8GB, DDR4, 3200MHZ 512GB SSD 14.0-INCH FHD (1920 X 1080) DISPLAY', 122562.00, 50, '2022-09-09 21:10:24', 'Dell Inspiron 14.jpg'),
(49, 'laptop', 'dell', 'Dell G15 5511 Gaming Laptop', 'DELL 15 (2021) I5-11400H GAMING LAPTOP, 16GB, 512GB SSD, WIN 10 + MS OFFICE, NVIDIA RTX 3050 TI 4GB, 15.6 (39.61 CMS) FHD, BACKLIT KB ', 75992.00, 30, '2022-09-09 21:11:32', 'Dell G15 5511 Gaming Laptop.jpg'),
(50, 'laptop', 'dell', 'Dell Latitude E7270 ', 'Processor: Intel Core i7 Processor 6th Generation  6600U\r\nProcessor Speed: 2.6 GHz 4M Cache, up to 3.40 GHz  \r\nScreen Size:- 12.5 Inch Full HD \r\nGraphics : Integrated: Intel HD\r\nBattery Backup:- Our minimum commitment is 2 Hr \r\nHard Disk: 512 SSD M2\r\nMemory (RAM) : 8GB DDR4 ', 32800.00, 40, '2022-09-09 21:13:40', 'Dell Latitude E7270.jpg'),
(51, 'laptop', 'dell', 'Dell Inspiron 11 (3148)', 'Brand	Dell \r\nSeries	Dell Inspiron 11 (3148)\r\nColor	Silver\r\nScreen Size	11.6\" Inches\r\nItem Weight	1.2 Kg\r\nProcessor Brand	Intel\r\nProcessor Type	Intel core i3-4030U @ 1.90GHz\r\nProcessor Speed	1.90GHz', 44990.00, 40, '2022-09-09 21:15:39', 'Dell Inspiron 11 (3148).jpg'),
(52, 'laptop', 'hp', 'HP 14s-fq1089AU Laptop', 'HP 14s-fq1089AU Laptop (AMD Ryzen 3 5300U/8 GB/512 GB SSD/Windows 11/MSO/FHD) 35.56 cm (14 Inch)', 39999.00, 40, '2022-09-09 21:17:55', 'HP 14s-fq1089AU Laptop.jpg'),
(53, 'laptop', 'hp', 'HP 14s-dq3033TU', 'HP Laptop 14s-dq3033TU\r\nSCREEN SIZE 35.6 cm (14)\r\nCOLOUR Jet black\r\nIntel® Pentium® Silver N6000 processor\r\nWindows 11 Home 8 GB DDR4-2933 MHz RAM (1 x 8 GB)\r\n256 GB PCIe® NVMe™ M.2 SSD\r\nStarting at 1.47 kg', 31.00, 40, '2022-09-09 22:02:13', 'HP 14s-dq3033TU.jpg'),
(54, 'laptop', 'hp', 'HP ENVY x360 Laptop', 'HP Envy X360 13-Ay0045AU 13.3-Inch Laptop (3rd Gen Ryzen 5 4500U/8GB/512GB SSD/Windows 10 Home/Integrated Graphics), Night Fall Black', 73999.00, 30, '2022-09-09 22:09:56', 'HP ENVY x360 Laptop.jpg'),
(55, 'laptop', 'hp', 'Hp Pavilion Aero Ryzen 5', 'HP PAVILION AERO ULTRA THIN & LIGHT 13.3-INCH(33.8 CM) WUXGA LAPTOP (RYZEN 5-5600U/16GB RAM/512GB SSD/WIN 10/FINGERPRINT READER/B&O/ MS OFFICE/PALE ROSE GOLD/0.97 KG), 13-BE0190AU', 70705.00, 40, '2022-09-09 22:11:45', 'Hp Pavilion Aero Ryzen 5 Hexa Core 5600u.jpg'),
(56, 'laptop', 'hp', 'HP Pavilion x360', 'HP 14-DY0208TU Pavilion x360 Convertible Laptop (11th Gen-Intel Core i3-1125G4/8GB/512GB SSD/Intel UHD Graphics/Windows 11/MSO/FHD), 35.56 cm (14 inch)', 55999.00, 30, '2022-09-09 22:13:43', 'HP Pavilion x360 14-dy0053TU Laptop.jpg'),
(57, 'laptop', 'hp', 'HP Chromebook - 14a-na0003tu', 'HP CHROMEBOOK 14 INTEL CELERON N4020-4GB SDRAM/64GB EMMC + 256GB EXPANDABLE STORAGE 14INCH(35.6 CM)\r\nPROCESSOR: Intel Celeron N4020 (1.1 GHz base frequency, up to 2.8 GHz burst frequency, 4 MB L2 cache, 2 cores) MEMORY & STORAGE: 4 GB DDR4-2400 SDRAM | HARD DRIVE: 64 GB eMMC |', 21199.00, 40, '2022-09-09 22:15:59', 'HP Chromebook - 14a-na0003tu.jpg'),
(58, 'laptop', 'hp', 'OMEN by HP Gaming Laptop', 'OMEN by HP Gaming Laptop 16 (40.9 cm) b1351TX\r\nSCREEN SIZE 40.9 cm (16.1)  12th Generation Intel® Core™ i7 processor\r\nWindows 11 Home', 132999.00, 50, '2022-09-09 22:21:00', 'OMEN by HP Gaming Laptop.jpg'),
(59, 'laptop', 'hp', 'HP - Pavilion 15.6\" Gaming Lap', 'HP - PAVILION 15.6 GAMING LAPTOP - AMD RYZEN 5 - 8GB MEMORY - NVIDIA GEFORCE GTX 1650 - 256GB SSD - SHADOW BLACK AMD Ryzen 5 4600H Processor\r\n 8GB system memory for advanced multitasking\r\n 256GB solid state drive (SSD)\r\n NVIDIA GeForce GTX 1650 Graphics\r\n 15.6\" Full HD Micro-edge display', 95701.00, 50, '2022-09-09 22:22:25', 'HP - Pavilion 15.6 Gaming Laptop.jpg'),
(60, 'laptop', 'lenovo', 'LENOVO IDEAPAD D330', 'LENOVO IDEAPAD D330 INTEL CELERON N4020 10.1\" HD IPS DETACHABLE 2-IN-1 LAPTOP (4GB/128GB EMMC/WINDOWS 10/1 YR WARRANTY/MINERAL GREY/1.1KG), 82H0001YIN', 18870.00, 50, '2022-09-09 22:25:33', 'Lenovo IdeaPad D330.jpg'),
(61, 'laptop', 'lenovo', 'Lenovo IdeaPad 3', 'Lenovo 7KIN IdeaPad Slim 3i Laptop (Intel Celeron N4020/4GB/256GB/ Windows 11/MSO/HD), 35.56 cm (14 inch) Processor: Intel Celeron N4020 Processor\r\nRAM: 4 GB\r\nInternal Storage: 256 GB\r\nStorage Type : SSD\r\nOperating System: Windows 11 Home', 28980.00, 30, '2022-09-09 22:27:08', 'Lenovo IdeaPad 3.jpg'),
(62, 'laptop', 'lenovo', 'Lenovo Ideapad S145', 'LENOVO IDEAPAD S145 INTEL CORE I5 10TH GEN 15.6 INCH (39.62 CMS) FHD THIN AND LIGHT LAPTOP (8GB/1TB/WINDOWS 10/GREY/1.85KG), 81W800FLIN', 42499.00, 40, '2022-09-09 22:29:20', 'Lenovo Ideapad S145.jpg'),
(63, 'laptop', 'lenovo', 'Lenovo T410', 'Condition: Almost New Condition Refurbished Laptop\r\nProcessor: Core i5 1st Gen\r\nRam: 8GB DDR3\r\nHard Disk: 500GB\r\n14inch HD Screen\r\nWarranty: 3 Months Seller’s Warranty\r\nShipping: Surface Shipping (Delivery Within 5-7 Days)', 14999.00, 30, '2022-09-09 22:30:26', 'Lenovo T410.jpg'),
(64, 'laptop', 'lenovo', 'Lenovo IdeaPad 3 15ALC6 82KU01', 'Lenovo IdeaPad 3 15ALC6 82KU017HIN Laptop (Ryzen 5 5500U/ 8 GB RAM/512 GB SSD/ 15.6 inch (39.62 cm) Display / AMD Radeon Graphics / Windows 11 / MSO)', 47690.00, 50, '2022-09-09 22:31:54', 'Lenovo IdeaPad 3 15ALC6 82KU017HIN Laptop.jpg'),
(65, 'laptop', 'lenovo', 'Lenovo Ideapad 1 81VT0095IN', 'Lenovo 95IN Ideapad 1 Laptop (Intel Celeron N4020/4GB/256GB SSD/Intel UHD Graphics/Windows 11/MSO/HD), 29.46 cm (11.6 inch) Processor: Intel Celeron N4020 (2C / 2T, 1.1 / 2.8GHz, 4MB) Processor\r\nRAM: 4GB\r\nInternal Storage: 256 GB\r\nStorage Type: SSD', 23890.00, 40, '2022-09-09 22:33:25', 'Lenovo Ideapad 1 81VT0095IN.jpg'),
(66, 'laptop', 'lenovo', 'Lenovo IdeaPad 1 15ADA7 82R100', 'Lenovo Ideapad 1 AMD Ryzen 3 (15.6 inch, 8GB RAM, 512GB ROM, Windows 11 Home, MS Office 2021, AMD Radeon Graphics, Platinum Grey, 82R10049IN)', 31490.00, 40, '2022-09-09 22:34:27', 'Lenovo IdeaPad 1 15ADA7 82R10049IN Laptop.jpg'),
(67, 'laptop', 'lenovo', 'Lenovo Ideapad Duet Chromebook', 'Processor: MediaTek® P60T (8 Cores, 4x A73 @2.0GHz + 4x A53 @2.0GHz)\r\nOperating System: Chrome OS\r\nDisplay Type: 25.65cms (10.1) FHD (1920x1200) IPS 400nits\r\nMemory: 4 GB Soldered LPDDR4x\r\nHard Drive: 128 GB eMCP', 26999.00, 50, '2022-09-09 22:35:36', 'Lenovo Ideapad Duet Chromebook .jpg'),
(68, 'tv', 'sony', 'Sony Bravia R 302 F', 'SONY Bravia R302F 80 cm (32 inch) HD Ready LED TV Resolution: HD Ready 1366 x 768 Pixels Sound Output: 10 W Refresh Rate: 50 Hz', 15499.00, 50, '2022-09-09 22:39:37', 'Sony Bravia R 302 F.jpg'),
(69, 'tv', 'sony', 'Sony Bravia 139 cm', 'Sony Bravia 139 cm (55 Inch) 4K Ultra HD Smart LED Google TV XR-55X90J Supported Apps: YouTube, Prime Video, Disney HotStar, YouTube Music, Spotify, HBOMax, Netflix, SonyLiv, Apple TV, Eros Now, Voot, SunNxt, MX Player, Zee5, JioCinema\r\nOperating System: Android TV\r\nResolution: UHD (3840 x 2160)\r\nConnectivity: UHD (3840 x 2160) ,Chromecast Built-In', 109990.00, 50, '2022-09-09 23:05:41', 'Sony Bravia.jpg'),
(70, 'tv', 'sony', 'SONY 24 INCH LED TV', 'SONY 24 INCH LED TV (KLV-24P413D)\r\n\r\nGENERAL\r\nSpeakers	2 (10w x 2)\r\nUSB	1\r\nAUDIO OUTPUT (RMS) 	1 (Side) RESOLUTION	1366 x 768\r\nHDMI	2\r\nSCREEN SIZE	24 Inch\r\nSET WEIGHT (WITHOUT STAND ) KG	3.8 kg\r\nSET WXHXD (WITHOUT STAND ) MM	558 mm x 341 mm x 65 mm\r\nSET WXHXD (WITH STAND ) MM	558 mm x 367 mm x 147 mm\r\nSCREEN SIZE (CM)	59.9 cm\r\nTV RECEPTION	B/G, D/K, I, M, PAL, SECAM, NTSC 3.58, NTSC 4.43\r\nBACKLIGHT MODULE	Backlight Off Mode\r\nMODEL NO.	BRAVIA KLV-24P413D\r\nSPEAKER SYSTEM	Dolby Digital\r\nDISPLAY TYPE	HD\r\nTECHNOLOGY	HD Technology-WXGA\r\nSMART TV PLATFORM	No', 54990.00, 50, '2022-09-09 23:09:13', 'SONY 24 INCH LED TV.jpg'),
(71, 'tv', 'sony', 'Refurbished Sony', 'Refurbished Sony 65 Inch 4K Ultra HD Android Smart TV – KD-65X80J\r\n\r\nModel KD-65X80J\r\n\r\nBox Contents Television, Remote Control, Batteries, Wall Mount, User Manual & Warranty Card', 2180.00, 40, '2022-09-09 23:12:48', 'Refurbished Sony.jpg'),
(72, 'tv', 'sony', 'Refurbished Sony Bravia', 'Refurbished Sony Bravia 108 cm (43) Full HD Smart LED TV 43W6600 (Black)\r\nSKU: CMRT27197 Category: Refurbished TV Tags: 43 Inches, Full HD, LED, Linux, Smart, Sony', 3009.00, 40, '2022-09-09 23:14:15', 'Refurbished Sony Bravia.jpg'),
(73, 'tv', 'sony', 'Sony Bravia 80 cm', 'KD-32W830 IN5 - Sony Bravia 80 cm (32) HD Ready Smart Android LED TV (Black) (2021 Model) Resolution: HD Ready (1366 x 768 ) | Refresh Rate: 60 hertz\r\nConnectivity: 3 HDMI ports to connect set top box, Blu Ray players, gaming console | 2 USB ports to connect hard drives and other USB devices\r\nSound : 20 Watts Output | Clear Phase | Dolby Audio \r\nSmart TV Features: Android TV | Voice Search | Google Play | Chromecast | Netflix | Amazon Prime Video | HDR Gaming | Additional Features: Alexa\r\nDisplay: X Reality Pro | HDR | Live Colour Display | Motionflow XR200', 27990.00, 30, '2022-09-09 23:16:28', 'Sony Bravia 80 cm.jpg'),
(74, 'tv', 'sony', 'Refurbished Sony 65', 'Refurbished Sony 65 Inches 4K Ultra HD Android Smart TV – KD-65X75K\r\nGeneral', 3009.00, 40, '2022-09-09 23:19:47', 'Refurbished Sony 65.jpg'),
(75, 'tv', 'sony', 'Sony 43 Tv With Hd Display', 'Flat · High Definition · LED · 1080p · 60 Hz · 1920 x 1080 · USB · HDMI · VGA · AUX', 15335.00, 25, '2022-09-09 23:20:43', 'Sony 43 Tv With Hd Display.jpg'),
(76, 'tv', 'sony', 'Sony Bravia XR X90J 4K', '4K UHD 3840 x 2160 LED Panel\r\nHDR10, HLG, Dolby Vision Compatibility\r\nXR Motion Clarity Technology\r\nBuilt-In Wi-Fi & Ethernet Connectivity', 59657.00, 30, '2022-09-09 23:22:05', 'Sony Bravia XR X90J 4K.jpg'),
(77, 'tv', 'lg', 'LG 81.28', 'LG 81.28 cm (32 inch) HD LED Smart TV, 32LM562BPTA\r\nBuy RCP warranty and save up to 55%. Read T&C\r\nGet Cashback upto Rs. 1,000 on Mobikwik Wallet. Read T&C\r\nWall Mount Bracket included with this TV', 120000.00, 50, '2022-09-09 23:56:25', 'LG 81.28.jpg'),
(78, 'tv', 'lg', 'LG 55UQ8020PSB ', 'LG 55UQ8020PSB 55 Inch LED 4K, 3840 X 2160 Pixels TV\r\nSize - 55 Inch\r\nResolution - 4K, 3840 x 2160 Pixels\r\nRefresh Rate- 60 Hz\r\nSound - Total Speaker output 20 W\r\nConnectivity Port - USB Ports -2 & HDMI Ports-3', 61000.00, 30, '2022-09-10 00:15:44', 'LG 55UQ8020PSB.jpg'),
(79, 'tv', 'lg', 'LG UQ80', 'LG UQ80 139cm (55 Inches) 4K Ultra HD Smart TV (WebOS, AI Processor 4K, 55UQ8020PSB, Black)\r\n139 cm (55’’) 4K UHD TV\r\nWebOS, Smart TV\r\n20 Watts | 2.0 Ch Speaker\r\n2 x USB 2.0 | 3 x HDMI 2.0\r\nIdeal Viewing Distance: 8 - 10 Ft', 51000.00, 35, '2022-09-10 00:18:00', 'LG UQ80.jpg'),
(80, 'tv', 'lg', 'LG LM562', 'LG LM562 81.28 cm (32 inch) HD Ready LED Smart WebOS TV with Down Firing Speaker\r\nDisplay: LED HD Ready, 1366 x 768 pixels, 50 Hz Refresh Rate\r\nConnectivity: 2 HDMI | 1 USB | Wi-Fi\r\nOperating System: WebOS\r\nApps: Netflix, Hotstar, Amazon Prime\r\nSound: 10 W Speaker, Dolby Digital Decoder\r\nUSP: Quad Core Picture Processor, Active HDR', 20000.00, 40, '2022-09-10 00:18:48', 'LG LM562.jpg'),
(81, 'tv', 'lg', 'LG 65UQ8020PSB', 'LG 65UQ8020PSB 65 Inch LED 4K, 3840 X 2160 Pixels TV\r\nSize - 65 Inch\r\nResolution - 4K, 3840 x 2160 Pixels\r\nRefresh Rate- 60 Hz\r\nSound - Total Speaker output 20 W\r\nConnectivity Port - USB Ports -2 & HDMI Ports-3', 84000.00, 50, '2022-09-10 00:19:35', 'LG 65UQ8020PSB.jpg'),
(82, 'tv', 'lg', 'LG LM63 ', 'LG LM63 108.22 cm (43 inch) Full HD LED Smart WebOS TV with Vivid Picture Mode (2019 model)\r\nDisplay: LED Full HD, 1920 x 1080 pixels, 50 Hz Refresh Rate\r\nConnectivity: 3 HDMI | 2 USB | Wi-Fi\r\nOperating System: WebOS\r\nApps: Netflix, Prime Video, YouTube, Disney+ Hotstar\r\nSound: 20 W Speaker, Dolby Digital, DTS Decoder\r\nUSP: Dynamic Color Enhancer, HDR 10 Pro', 31000.00, 30, '2022-09-10 00:20:51', 'LG LM63.jpg'),
(83, 'tv', 'lg', 'LG OLED55A1PTZ', 'LG OLED55A1PTZ 55 Inch LED 4K, 3840 X 2160 Pixels TV\r\nSize - 55 Inch\r\nResolution - 4K, 3840 x 2160 Pixels\r\nRefresh Rate- 60 Hz\r\nSound- Total Speaker output 20 W\r\nConnectivity Port - USB Ports -2 & HDMI Ports-3', 97999.00, 30, '2022-09-10 00:21:42', 'LG OLED55A1PTZ 55.jpg'),
(84, 'tv', 'lg', 'h LED 4K', '	h LED 4K, 3840 x 2160 Pixels TV Size - 55 Inch Resolution - 4K, 3840 x 2160 Pixels Refresh Rate- 60 Hz Sound - Total Speaker output 20 W Connectivity Port - USB Ports -2 & HDMI Ports-4', 83999.00, 40, '2022-09-10 00:25:16', 'h LED.jpg'),
(85, 'tv', 'lg', 'LG 50UP7500PTZ', 'LG 50UP7500PTZ 50 Inch LED 4K, 3840 X 2160 Pixels TV\r\nSize - 50 Inch\r\nResolution - 4K, 3840 x 2160 Pixels\r\nRefresh Rate- 60 Hz\r\nSound- Total Speaker output 20 W\r\nConnectivity Port - USB Ports -1 & HDMI Ports-2', 65990.00, 45, '2022-09-10 00:28:39', 'LG 50UP7500PTZ.jpg'),
(86, 'tv', 'panasonic', 'AUE70 Crystal 4K UHD', '1m 38cm (55\") AUE70 Crystal 4K UHD Smart TV\r\n55AUE70 \r\nWishlist\r\nNo Cost EMI starts from ? 4165.83/ month.\r\nCrystal Display and HDR\r\nAdaptive Sound & Q Symphony\r\nMultiple Voice Assistant with One Remote Control', 55000.00, 50, '2022-09-10 00:33:44', 'AUE70 Crystal 4K UHD.jpg'),
(87, 'tv', 'panasonic', 'Panasonic LX 108 cm', 'Panasonic LX 108 cm (43 inch) 4K Ultra HD LED Android TV with Google Assistant\r\nDisplay: LED 4K Ultra HD, 3840 x 2160 pixels\r\nConnectivity: 3 HDMI | 2 USB | Wi-Fi\r\nOperating System: Android\r\nApps: Netflix, Disney+ Hotstar, YouTube, Prime Video\r\nSound: 20 W Speaker, Dolby Digital\r\nUSP: 4K HDR, Hexa Chroma Drive', 40000.00, 25, '2022-09-10 00:35:16', 'Panasonic LX 108 cm.jpg'),
(88, 'tv', 'panasonic', 'Panasonic LX 139 cm ', 'Panasonic LX 139 cm (55 inch) 4K Ultra HD LED Android TV with Alexa Compatibility\r\nDisplay: LED 4K Ultra HD, 3840 x 2160 pixels\r\nConnectivity: 3 HDMI | 2 USB | Wi-Fi\r\nOperating System: Android\r\nApps: Netflix, Disney+ Hotstar, YouTube, Prime Video\r\nSound: 20 W Speaker, Dolby Digital\r\nUSP: Google Assistant', 68990.00, 45, '2022-09-10 00:37:44', 'Panasonic LX 139 cm.jpg'),
(89, 'tv', 'panasonic', 'Panasonic 80cm TH-32LS680DX', 'Panasonic 80cm (32 Inch) HD Ready LED Smart TV (Android 11, TH-32LS680DX)\r\n80 cm (32’’) Full HD TV\r\nAndroid 11, Smart TV\r\n20 Watts\r\n2 x USB | 2 x HDMI\r\nIdeal Viewing Distance: Under 6Ft', 25000.00, 50, '2022-09-10 00:41:31', 'Panasonic 80cm TH-32LS680DX.jpg'),
(90, 'tv', 'panasonic', 'Panasonic 80cm TH-32LS680DX', 'Panasonic 80cm (32 Inch) HD Ready LED Smart TV (Android 11, TH-32LS680DX)\r\n80 cm (32’’) Full HD TV\r\nAndroid 11, Smart TV\r\n20 Watts\r\n2 x USB | 2 x HDMI\r\nIdeal Viewing Distance: Under 6Ft', 22000.00, 30, '2022-09-10 00:44:35', 'p5.jpg'),
(91, 'tv', 'panasonic', 'Panasonic 100 cm TH-40HS450DX', 'Panasonic 100 cm (40 inch) Full HD LED Smart Android TV  (TH-40HS450DX)\r\nSupported Apps: Netflix|Disney+Hotstar|Youtube\r\nOperating System: Android (Google Assistant & Chromecast in-built)\r\nResolution: Full HD 1920 x 1080 Pixels\r\nSound Output: 16 W\r\nRefresh Rate: 60 Hz', 24990.00, 40, '2022-09-10 00:46:56', 'Panasonic 100 cm TH-40HS450DX.jpg'),
(92, 'tv', 'panasonic', 'Panasonic FX650', 'Panasonic FX650 Series 108 cm (43 inch) Ultra HD (4K) LED Smart Linux based TV  (TH-43FX650D)\r\nSupported Apps: Netflix|Prime Video|Youtube\r\nOperating System: Linux based\r\nResolution: Ultra HD (4K) 3840 x 2160 Pixels\r\nSound Output: 20 W\r\nRefresh Rate: 100 Hz', 41990.00, 40, '2022-09-10 00:49:49', 'Panasonic FX650.jpg'),
(93, 'tv', 'panasonic', 'Panasonic VIERA TH-32HS700DX', 'Panasonic VIERA TH-32HS700DX 32 Inch LED HD-Ready TV\r\nSize - 32 Inch\r\nResolution- HD Ready, 1366 x 768\r\nRefresh Rate- 60 Hz\r\nSound- Total Speaker output 16 W\r\nConnectivity Port - USB Ports -2 & HDMI Ports- 2', 25990.00, 35, '2022-09-10 00:51:34', 'Panasonic VIERA TH-32HS700DX.jpg'),
(94, 'tv', 'panasonic', 'Panasonic LX 108 cm ', 'Panasonic LX 108 cm (43 inch) 4K Ultra HD LED Android TV with Google Assistant\r\nDisplay: LED 4K Ultra HD, 3840 x 2160 pixels\r\nConnectivity: 3 HDMI | 2 USB | Wi-Fi\r\nOperating System: Android\r\nApps: Netflix, Disney+ Hotstar, YouTube, Prime Video\r\nSound: 20 W Speaker, Dolby Digital\r\nUSP: 4K HDR, Hexa Chroma Drive', 39990.00, 50, '2022-09-10 00:52:55', 'Panasonic LX 108 cm.jpg'),
(95, 'tv', 'redmi', 'Mi 5X', 'Mi 5X 108 cm (43 inch) 4K Ultra HD LED Android TV with Alexa Compatibility (2021 model)\r\nDisplay: LED 4K Ultra HD, 3840 x 2160 pixels, 60 Hz Refresh Rate\r\nConnectivity: 3 HDMI | 2 USB | Wi-Fi\r\nOperating System: Android\r\nApps: Netflix, Prime Video, Disney+ Hotstar, YouTube\r\nSound: 30 W Speaker, Dolby Atmos\r\nUSP: Google Assistant', 31000.00, 30, '2022-09-10 00:54:30', 'Mi 5X.jpg'),
(96, 'tv', 'redmi', 'Mi 5A', 'Mi 5A 80 cm (32 Inches) HD Ready Smart Android TV (Android 11, ELA4819IN-L32M7-5A)\r\n80 cm (32’’) HD TV\r\nAndroid 11, Smart TV\r\n20 Watts | ?Dolby Audio\r\n2 x USB 2.0 | 2 x HDMI 2.1\r\nIdeal Viewing Distance: Under 6Ft', 25000.00, 30, '2022-09-10 00:56:01', 'Mi 5A.jpg'),
(97, 'tv', 'redmi', 'Mi 5A ELA4773IN-L43M7-EA', 'Mi 5A 108 cm (43 Inches) Full HD Smart Android TV (Android 11, ELA4773IN-L43M7-EA)\r\n108 cm (43’’) Full HD TV\r\nAndroid 11, Smart TV\r\n24 Watts | ?Dolby Audio\r\n2 x USB 2.0 | 2 x HDMI 2.1\r\nIdeal Viewing Distance: 8 – 10 Ft', 27000.00, 50, '2022-09-10 01:00:16', 'Mi 5A ELA4773IN-L43M7-EA.jpg'),
(98, 'tv', 'redmi', 'Mi 5A ELA4777IN-L40M7-EA', 'Mi 5A 100 cm (40 Inches) Full HD Smart Android TV (Android 11, ELA4777IN-L40M7-EA)\r\n100 cm (40’’) Full HD TV\r\nAndroid 11, Smart TV\r\n24 Watts | ?Dolby Audio\r\n2 x USB 2.0 | 2 x HDMI 2.1\r\nIdeal Viewing Distance: 8 – 10 Ft', 23000.00, 35, '2022-09-10 01:02:55', 'Mi 5A ELA4777IN-L40M7-EA.jpg'),
(99, 'laptop', 'redmi', 'Mi 4APRO ', 'Mi 4A PRO 80 cm (32 inch) HD Ready LED Smart Android TV\r\nSupported Apps: Netflix|Prime Video|Disney+Hotstar|Youtube\r\nOperating System: Android (Google Assistant & Chromecast in-built)\r\nResolution: HD Ready 1366 x 768 Pixels\r\nSound Output: 20 W\r\nRefresh Rate: 60 Hz', 23000.00, 40, '2022-09-10 01:08:58', 'Mi 4APRO .jpg'),
(100, 'tv', 'redmi', 'Xiaomi Mi 4A ', 'Xiaomi Mi 4A 100 cm (40 inch) Full HD LED Smart Android TV', 20000.00, 40, '2022-09-10 01:11:52', 'Xiaomi Mi 4A.jpg'),
(101, 'tv', 'redmi', 'Mi 4X', 'Mi 138.8 cm (55 Inches) 4K Ultra HD Android Smart LED TV 4X| L55M5-5XIN \r\n\r\nScreen Size	55 Inches', 43348.00, 30, '2022-09-10 01:14:00', 'Mi 4X.jpg'),
(102, 'tv', 'redmi', 'Xiaomi Mi TV P1E', 'Xiaomi Mi TV P1E 43 Inch Smart Television 4K Qled LED UHD Dolby Vision New Boxed\r\nSB:	\r\n2.0x3	\r\nOperating System:	\r\nAndroid TV™\r\nviewing angle:	\r\n178°(H)/178°(V), Supports HDR10, HLG	\r\nvoltage:	\r\n100-240V ~ 50/60Hz\r\nFeatures:	\r\nHeadphone Jack, Wall Bracket, Ethernet Connection, Bluetooth, Built-in Speakers, HDR TV, 2160p (4K)	\r\nDisplay Technology:	\r\nLED', 31000.00, 30, '2022-09-10 01:16:39', 'Xiaomi Mi TV P1E.jpg'),
(103, 'tv', 'redmi', 'Mi 4K Ultra HD Android', 'Mi 125.7 cm (50 Inches) 4K Ultra HD Android Smart LED TV 4X \r\nBrand: MI\r\n\r\nColor: Black\r\n\r\nFeatures:\r\n\r\nResolution: 4K Ultra HD (3840×2160) | Refresh Rate: 60 hertz. Powerful speakers : 2×10W 6ohm\r\nConnectivity: 3 HDMI ports to connect set top box, Blu Ray players gaming console | 2 USB ports to connect hard drives and other USB devices\r\nSound: 20 Watts Output | Dolby+ DTS-HD. Viewing Angle:178°', 29990.00, 30, '2022-09-10 01:20:06', '4K Ultra HD Android.jpg'),
(104, 'tv', 'redmi', 'Mi 4A Horizon Edition', 'Mi 4A Horizon Edition 100 cm (40 inch) Full HD LED Smart Android TV\r\nSupported Apps: Netflix|Prime Video|Disney+Hotstar|Youtube\r\nOperating System: Android (Google Assistant & Chromecast in-built)\r\nResolution: Full HD 1920 x 1080 Pixels\r\nSound Output: 20 W\r\nRefresh Rate: 60 Hz', 26999.00, 35, '2022-09-10 01:21:17', 'Mi 4A Horizon Edition.jpg'),
(105, 'tv', 'samsung', 'SAMSUNG Series 7', 'SAMSUNG Series 7 108 cm (43 inch) 4K Ultra HD LED Tizen TV with Alexa Compatibility \r\nDisplay: LED 4K Ultra HD, 3840 x 2160 pixels, 60 Hz Refresh Rate\r\nConnectivity: 3 HDMI | 1 USB | Wi-Fi\r\nOperating System: Tizen\r\nApps: Netflix, Amazon Prime, Sony Liv, Zee5, YouTube\r\nSound: 20 W Speaker, Dolby Digital Plus\r\nUSP: Q Symphony', 45000.00, 50, '2022-09-10 01:25:19', 'SAMSUNG Series 7.jpg'),
(106, 'tv', 'samsung', 'Samsung UA43AUE65AKXXL', 'Samsung 108cm (43 Inch) Ultra HD 4K LED Smart TV (Dolby Digital Plus Audio, UA43AUE65AKXXL, Black)\r\n108 cm (43\"), Ultra HD 4K\r\nSmart TV, Tizen OS\r\n20 Watts | Dual Speakers | Dolby Digital Plus\r\n1 x USB 2.0 | 3 x HDMI\r\nIdeal Viewing Distance: 6 - 8Ft', 35990.00, 40, '2022-09-10 01:30:30', 'Samsung UA43AUE65AKXXL.jpg'),
(107, 'tv', 'samsung', 'Samsung UA58AUE70AK', 'Samsung UA58AUE70AK 58 Inch LED 4K, 3840 X 2160 Pixels TV\r\nSize - 58 Inch\r\nResolution- 4K, 3840 x 2160 Pixels\r\nRefresh Rate- 60 Hz\r\nSound- Total Speaker output 20 W\r\nConnectivity Port - USB Ports -1 & HDMI Ports-3\r\nWarranty- 1 Year', 56560.00, 30, '2022-09-10 01:35:55', 'Samsung UA58AUE70AK.jpg'),
(108, 'tv', 'samsung', 'SAMSUNG Series 5', 'SAMSUNG Series 5 108 cm (43 inch) Full HD LED Smart Tizen TV with Google Assistant (2020 model)\r\nDisplay: LED Full HD, 1920 x 1080 pixels, 60 Hz Refresh Rate\r\nConnectivity: 2 HDMI | 1 USB | Wi-Fi\r\nOperating System: Tizen\r\nApps: YouTube, Facebook, Spotify, Aaj Tak\r\nSound: 20 W Speaker, Dolby Digital Plus\r\nUSP: Game Enhancer, HDR 10+', 25000.00, 40, '2022-09-10 01:37:03', 'SAMSUNG Series 5.jpg'),
(109, 'tv', 'samsung', 'SAMSUNG Series 4', 'SAMSUNG Series 4 80 cm (32 inch) HD Ready LED Tizen Smart TV with Hyper Real Picture Engine\r\nDisplay: LED HD Ready, 1366 x 768 pixels, 60 Hz Refresh Rate\r\nConnectivity: 2 HDMI | 1 USB | Wi-Fi\r\nOperating System: Tizen\r\nApps: Sony Liv, Eros Now, Jio Cinema, Gaana\r\nSound: 20 W Speaker, Dolby Digital Plus\r\nUSP: Mega Contrast Enhancer, Game Mode', 23000.00, 35, '2022-09-10 01:38:07', 'SAMSUNG Series 4.jpg'),
(110, 'tv', 'samsung', 'Samsung QA55Q60AAKLXL', 'Samsung QA55Q60AAKLXL 55 Inch LED 4K, 3840 X 2160 Pixels TV\r\nSize - 55 Inch\r\nResolution- 4K, 3840 x 2160 Pixels\r\nRefresh Rate- 60 Hz\r\nSound- Total Speaker output 20 W\r\nConnectivity Port - USB Ports -2 & HDMI Ports-3\r\nWarranty- 1 Year', 83500.00, 40, '2022-09-10 01:39:09', 'Samsung QA55Q60AAKLXL.jpg'),
(111, 'tv', 'samsung', 'Samsung UA55AU8000KLXL ', 'Samsung UA55AU8000KLXL 55 Inch LED 4K, 3840 X 2160 Pixels TV\r\nSize - 55 Inch\r\nResolution- 4K, 3840 x 2160 Pixels\r\nRefresh Rate- 60 Hz\r\nSound- Total Speaker output 20 W\r\nConnectivity Port - USB Ports -2 & HDMI Ports-3\r\nWarranty- 1 Year', 77990.00, 40, '2022-09-10 01:42:44', 'Samsung UA55AU8000KLXL .jpg'),
(112, 'tv', 'samsung', 'SAMSUNG LS Series', 'SAMSUNG LS Series 138 cm (55 inch) QLED 4K Ultra HD Tizen TV with Alexa Compatibility (2021 model)\r\nDisplay: QLED 4K Ultra HD, 3840 x 2160 pixels, 120 Hz Refresh Rate\r\nConnectivity: 4 HDMI | 2 USB | Wi-Fi\r\nOperating System: Tizen\r\nApps: Netflix, Prime Video, Zee5, Sony Liv, YouTube, Hotstar\r\nSound: 40 W Speaker, Dolby Digital Plus\r\nUSP: Google Assistant', 77990.00, 50, '2022-09-10 01:45:31', 'SAMSUNG LS Series.jpg'),
(113, 'tv', 'samsung', 'Samsung UA43AU9070ULXL', 'Samsung UA43AU9070ULXL 43 Inch LED 4K, 3840 X 2160 Pixels TV\r\nSize - 43 Inch\r\nResolution- 4K, 3840 x 2160 Pixels\r\nRefresh Rate- 60 Hz\r\nSound- Total Speaker output 20 W\r\nConnectivity Port - USB Ports -1 & HDMI Ports-3\r\nWarranty- 1 Year', 55990.00, 40, '2022-09-10 01:46:56', 'Samsung UA43AU9070ULXL.jpg'),
(114, 'camera', 'conon', 'Canon Eos R3 Mirrorless Camera', ' Canon Eos R3 Mirrorless Camera \r\nHigh Image Quality with a Back-illuminated Stacked 24.1 Megapixel Full-frame CMOS Sensor\r\nDIGIC X Image Processor with an ISO range of 100-102400; Expandable to 204800\r\nHigh-speed continuous shooting of up to approx. 30 fps with electronic (silent) shutter and up to 12fps with Mechanical Shutter\r\nImproved Dual Pixel CMOS AF with 1,053 AF Points featuring Vehicle Detection as well as Eye, Face, Head, and Animal Detection\r\nThe First EOS Digital camera to feature Eye Control AF', 465900.00, 30, '2022-09-10 01:57:41', 'Canon Eos R3 Mirrorless Camera.jpg'),
(115, 'camera', 'conon', 'CANON EOS RP', 'CANON EOS RP MIRRORLESS DIGITAL CAMERA\r\n26.2MP Full-Frame CMOS Sensor | DIGIC 8 Image Processor | Dual Pixel CMOS AF | 2.36m-Dot Electronic Viewfinder | Vari-Angle Touchscreen LCD | Wi-Fi and Bluetooth Connectivity', 84490.00, 25, '2022-09-10 02:00:33', 'CANON EOS RP.jpg'),
(116, 'camera', 'conon', 'CANON EOS R', 'CANON EOS R MIRRORLESS CAMERA\r\nBrand Canon\r\nReference 3075C002\r\nCondition Brand New / Company Sealed\r\nIn stock 15 Items', 139000.00, 30, '2022-09-10 02:01:54', 'CANON EOS R.jpg'),
(117, 'camera', 'samsung', ' samsung EOS RP', ' samsung EOS RP 26.2 MP Mirrorless Camera Body With 24 - 105 Mm Lens (Black)\r\n26.2 MP, Mirrorless Camera\r\nSuitable For : Hobbyist\r\nCompetent Photographer\r\nSkilled Photographer\r\nSingle Lens Kit\r\nCMOS\r\nDimensions : 13.25 x 7.01 x 8.51 cms\r\n24 Months Warranty', 70.00, 35, '2022-09-12 04:04:39', 'samsungc14.jpg'),
(119, 'camera', 'conon', 'Canon EOS 80D DSLR', 'Canon EOS 80D DSLR Camera with 18-135 mm Lens Kit\r\nHas newly-developed 45-point, all cross-type AF sensor\r\nContinuous shooting speed of up to 7.0fps\r\nMovie shooting at a quality of up to Full HD\r\nRemote shooting and image sharing through Wi-Fi and NFC', 145000.00, 40, '2022-09-10 02:08:31', 'Canon EOS 80D DSLR.jpg'),
(120, 'camera', 'conon', 'CANON EOS R3', 'CANON EOS R3 MIRRORLESS CAMERA (BODY ONLY)\r\nFull-Frame Stacked BSI CMOS Sensor | Eye Control AF, Dual Pixel CMOS AF | Subject Tracking with Deep Learning | Continuous Shooting Up to 30 fps | Integrated Vertical Grip | Weather-Sealed Construction | 2 Year Warranty', 465900.00, 30, '2022-09-10 02:10:13', 'CANON EOS R3.jpg'),
(121, 'camera', 'conon', 'Canon EOS 80D ', 'Canon EOS 80D DSLR Camera with 18-135 mm Lens Kit\r\nHas newly-developed 45-point, all cross-type AF sensor\r\nContinuous shooting speed of up to 7.0fps\r\nMovie shooting at a quality of up to Full HD\r\nRemote shooting and image sharing through Wi-Fi and NFC', 93999.00, 40, '2022-09-10 02:12:19', 'Canon EOS 80D.jpg'),
(122, 'camera', 'conon', 'Canon EOS Rebel', 'Canon EOS Rebel T1i EOS 500D 15.1MP Digital SLR Camera Kit w/ 18-55mm Lens\r\nStandard Shipping 	\"Korea\" Post (7-15 business days)\r\n  Express Shipping	FEDEX express (3-8 business days)\r\nItem Location	Korea, Republic of\r\nReturn policy	Full refund available for DOAs', 12304.00, 50, '2022-09-10 02:13:37', 'Canon EOS Rebel.jpg'),
(123, 'camera', 'conon', 'Canon PowerShot ELPH 180 ', 'Canon PowerShot ELPH 180 20-Megapixel Digital Camera, Silver\r\nAuthor: CANON Color: Silver\r\nUltra-slim camera that shoots 720p HD video\r\nFeatures the DIGIC 4+ image processor for enhanced performance.\r\n8x optical zoom lets you close in and see more. Also includes 4x digital zoom.\r\nFrame shots and view photos easily with the 2.7\" LCD viewfinder.\r\nIncludes a built-in optical image stabilizer. Helps reduce blurry images caused when the camera shakes or vibrates.', 500000.00, 40, '2022-09-10 02:15:30', 'Canon PowerShot ELPH 180.jpg'),
(124, 'camera', 'kodak', 'KODAK D5600', 'KODAK D5600 WITH 18-55MM AND 70-300MM COMBO\r\n24.1MP APS-C CMOS Sensor\r\nDIGIC 8 Image Processor\r\n2.36m-Dot OLED Electronic Viewfinder\r\n3.0? 1.04m-Dot Vari-Angle Touchscreen\r\nUHD 4K and HD 720p120 Video Recording\r\nBuilt-In Wi-Fi with NFC, Bluetooth\r\nDual Pixel CMOS AF', 75990.00, 40, '2022-09-10 02:17:34', 'KODAK D5600.jpg'),
(125, 'camera', 'kodak', 'KODAK D5600 DSLR', 'KODAK D5600 DSLR with 18-140mm Lens Kit\r\nIncludes KODAK D5600 Body, 18-140mm Lens, Camera Bag, Camera Strap\r\nSanDisk 64GB UHS-I Memory Card\r\nExtra Battery', 25000.00, 35, '2022-09-10 02:19:30', 'KODAK D5600 DSLR.jpg'),
(126, 'camera', 'kodak', 'KODAK D5600 18-55KIT', 'KODAK D5600 18-55KIT DSLR Camera SINGLE LENS 18-55(Black) Compatible Card: \"SD Card\" Brand:KODAK Model Number: \"D5600 18-55KIT\" Model Name: \"D5600\" SLR Variant: \"SINGLE LENS 18-55\" Brand Color: \"BLACK\" Type: \"DSLR\" Color: \"Black\" Effective Pixels: \"24.2 MP\" Tripod Socket: \"Yes\" Wifi: \"Yes\"', 51450.00, 40, '2022-09-10 02:25:51', 'KODAK D5600 18-55KIT.jpg'),
(127, 'camera', 'kodak', ' KODAK D5600 DSLR Camera with ', 'KODAK D5600 DSLR Camera with AF-P 18-55 mm + AF-P 70-300 mm VR Kit\r\nISO range of 100-25600\r\n39-point autofocus (AF) system\r\nDX-format CMOS image sensor EXPEED 4 image-processing engine\r\nConnect wirelessly to smart device Wi-Fi, Bluetooth or NFC', 61990.00, 40, '2022-09-10 02:23:54', ' KODAK D5600 DSLR Camera with AF-P 18-55 mm + AF-P 70-300 mm VR Kit.jpg'),
(128, 'camera', 'kodak', 'KODAK D5600 Dslr Camera (Body ', 'KODAK D5600 Dslr Camera (Body Only) (Open Box)\r\n24.2MP DX-Format CMOS Sensor\r\nEXPEED 4 Image Processor\r\n3.2\" 1.037m-Dot Vari-Angle Touchscreen', 43250.00, 40, '2022-09-10 02:27:55', 'KODAK D5600 Dslr Camera (Body Only) (Open Box).jpg'),
(129, 'camera', 'kodak', 'KODAK D5600 DSLR Camera with 1', 'KODAK D5600 DSLR Camera with 18-55mm and 70-300mm Lenses\r\n24.2MP DX-Format CMOS Sensor\r\nEXPEED 4 Image Processor\r\n3.2 1.037m-Dot Vari-Angle Touchscreen\r\nFull HD 1080p Video Recording at 60 fps\r\n', 63500.00, 30, '2022-09-10 02:30:21', 'KODAK D5600 DSLR Camera with 18-55mm and 70-300mm Lenses.jpg'),
(130, 'camera', 'kodak', 'KODAK D5600 with 18 55mm VR Le', 'Used KODAK D5600 with 18 55mm VR Lens\r\nBrand : KODAK \r\nWEIGHT	2.5 kg\r\nDIMENSIONS	25 × 25 × 35 cm\r\nACCESSORIES	\r\nBattery, Box, Charger', 50499.00, 35, '2022-09-10 02:33:08', 'KODAK D5600 with 18 55mm VR Lens.jpg'),
(131, 'camera', 'kodak', 'KODAK D5600 with 18', 'KODAK D5600 with 18 55mm VR Lens\r\nBrand : KODAK\r\nWEIGHT	2.5 kg\r\nDIMENSIONS	25 × 25 × 35 cm\r\nACCESSORIES	\r\nBattery, Box, Charger', 50499.00, 35, '2022-09-10 02:41:41', 'KODAK D5600 with 18.jpg'),
(132, 'camera', 'kodak', 'KODAK D5600 with AF-P', 'KODAK D5600 with AF-P 18-55 mm + AF-P 70-300 mm VR Kit\r\nLens Mount: KODAK F mount\r\nModel    ?D5600\r\nModel Name    ?D5600\r\nProduct Dimensions    ?7 x 12.4 x 9.7 cm; 465 Grams', 75799.00, 50, '2022-09-10 02:46:05', 'KODAK D5600 with AF-P.jpg'),
(133, 'camera', 'nikon', 'NIKON D5600 WITH 18-55MM', 'NIKON D5600 WITH 18-55MM AND 70-300MM COMBO\r\nNikon D5600 DSLR Camera with AF-P 18-55 mm + AF-P 70-300 mm VR Kit\r\nISO range of 100-25600\r\n39-point autofocus (AF) system\r\nDX-format CMOS image sensor EXPEED 4 image-processing engine\r\nConnect wirelessly to smart device Wi-Fi, Bluetooth or NFC', 75990.00, 40, '2022-09-10 02:48:27', 'NIKON D5600 WITH 18-55MM.jpg'),
(134, 'camera', 'nikon', 'Nikon D5600 DSLR', 'Nikon D5600 DSLR with 18-140mm Lens Kit\r\nExtra Battery?50 - Per Day\r\nJoby 3K Gorillapod?160 - Per Day\r\nSanDisk 128GB UHS-I Memory Card?75 - Per Day\r\nSanDisk 64GB UHS-I Memory C', 110.00, 40, '2022-09-10 11:16:49', 'n2.jpg'),
(135, 'camera', 'nikon', 'NIKON D5600 18-55KIT DSLR', 'NIKON D5600 18-55KIT DSLR Camera SINGLE LENS 18-55(Black)\r\nBrand: \"NIKON\"\r\nModel Number: \"D5600 18-55KIT\"\r\nModel Name: \"D5600\"\r\nSLR Variant: \"SINGLE LENS 18-55\"\r\nBrand Color: \"BLACK\"\r\nType: \"DSLR\"\r\nColor: \"Black\"\r\nEffective Pixels: \"24.2 MP\"\r\nTripod Socket: \"Yes\"\r\nWifi: \"Yes\"', 51450.00, 35, '2022-09-10 11:18:08', 'n7.jpg'),
(136, 'camera', 'nikon', 'NIKON D5600 18-55 + 70-300 DUA', 'NIKON D5600 18-55 + 70-300 DUAL LENS KIT DSLR Camera DUAL LENS KIT(Black)\r\nBrand: \"NIKON\"\r\nModel Number: \"B600\"\r\nSeries: \"COOLPIX\"\r\nModel Name: \"B600\"\r\nBrand Color: \"Black\"\r\nColor: \"Black\"\r\nEffective Pixels: \"16 MP\"\r\nShooting Modes: \"Approx. 99 % Horizontal and Vertical (Compared to Actual Picture)\"', 66750.00, 40, '2022-09-10 11:28:01', 'n12.jpg'),
(137, 'camera', 'nikon', 'NIKON D5600 Camera Body with S', 'NIKON D5600 Camera Body with Single Lens: AF-P DX Nikkor 18-55 MM F/3.5-5.6G VR (Black)- -Certified refurbished\r\nBrand	\r\nNIKON\r\nModel Number	\r\nD5600\r\nModel Name	\r\nD5600\r\nSLR Variant	\r\nBody with Single Lens: AF-P DX Nikkor 18-55 MM F/3.5-5.6G VR\r\nBrand Color	\r\nBlack\r\nType	\r\nDSLR', 24999.00, 30, '2022-09-10 11:29:00', 'n14.jpg'),
(138, 'camera', 'nikon', 'Nikon D5600 DSLR Camera with 1', 'Nikon D5600 DSLR Camera with 18-140mm Lens\r\nBrand	\r\nNIKON\r\nD5600\r\nSLR Variant\r\nBrand Color	\r\nBlack', 45000.00, 50, '2022-09-10 11:30:54', 'n15.jpg'),
(139, 'camera', 'nikon', 'Nikon Focal Length18-55 mm', 'BrandNikon\r\nFocal Length18-55 mm, 70-300 mm\r\nSelf-TimerYes\r\nAperture PriorityYes\r\nThickness7 cm\r\nShooting Modes', 1990.00, 35, '2022-09-10 11:33:58', 'n3.jpg'),
(140, 'camera', 'nikon', 'NIKON D5600 18-55KIT DSLR Came', 'NIKON D5600 18-55KIT DSLR Camera SINGLE LENS 18-55(Black)\r\nBrand: \"NIKON\"\r\nModel Number: \"D5600 18-55KIT\"\r\nModel Name: \"D5600\"\r\nSLR Variant: \"SINGLE LENS 18-55\"\r\nBrand Color: \"BLACK\"\r\nType: \"DSLR\"\r\nColor: \"Black\"\r\nEffective Pixels: \"24.2 MP\"\r\nTripod Socket: \"Yes\"\r\nWifi: \"Yes\"', 75450.00, 35, '2022-09-10 11:35:32', 'n8.jpg'),
(141, 'camera', 'nikon', 'NIKON Coolpix A100 Point & Sho', 'Sales Package: \"Nikon Digital Camera Coolpix A100 with 8GB (Class 10) SD Card and Camera Pouch\"\r\nModel Name: \"Coolpix A100\"\r\nType: \"Point & Shoot\"\r\nEffective Pixel: \"20.1 MP\"\r\nScreen Resolution Type: \"HD\"\r\nOptical Zoom: \"5x\"\r\nMaximum Shutter Speed: \"12000 sec\"', 6450.00, 30, '2022-09-10 11:40:50', 'NIKON Coolpix A100 Point & Shoot Camera.jpg'),
(142, 'camera', 'samsung', 'Samsung EC-WB350FBPBUS 16.3', 'WB350FBPBUS 16.3	Samsung EC-WB350FBPBUS 16.3Digital Camera with 21x Optical Image Stabilized Zoom with 3-Inch LCD (white) Product Dimensions 4.49 x 0.98 x 2.56 inches (11.4 x 2.5 x 6.5 cm) Item Weight 9.8 ounces (277.83 grams) ASIN B00HZE2PYI Item model number EC-WB350FBPBUS Batteries 1 Lithium Metal batteries required.', 25000.00, 40, '2022-09-12 04:06:10', 'samsungc1.jpg'),
(143, 'camera', 'samsung', 'SAMSUNG DIGIMAX NV3 7MP', 'SAMSUNG DIGIMAX NV3 7MP DIGITAL CAMERA WITH 3X ADVANCE SHAKE REDUCTION OPTICAL ZOOM (SILVER) Samsung Sensory Pleasure NV3 Digital CameranFully tested and working in good used condition with some minor marks, scuffs and scratches from use,', 35000.00, 35, '2022-09-12 04:07:39', 'samsungc2.jpg'),
(144, 'camera', 'samsung', 'Samsung EC-WB350FBPBUS 16.3', 'Samsung EC-WB350FBPBUS 16.3Digital Camera with 21x Optical Image Stabilized Zoom with 3-Inch LCD Product Dimensions 4.49 x 0.98 x 2.56 inches (11.4 x 2.5 x 6.5 cm) Brand SAMSUNG Special Feature Lightweight', 38000.00, 30, '2022-09-12 04:09:15', 'samsungc3.jpg'),
(146, 'camera', 'samsung', 'SAMSUNG ELECTRONICS EV-NX500ZB', 'SAMSUNG ELECTRONICS EV-NX500ZBMIUS NX500 28 MP WIRELESS SMART COMPACT SYSTEM CAMERA WITH INCLUDED KIT LENS', 75000.00, 25, '2022-09-12 04:10:51', 'samsungc5.jpg'),
(147, 'camera', 'samsung', 'SAMSUNG ES28', 'SAMSUNG ES28 DIGITAL CAMERA - BLACK (12MP, 5X OPTICAL ZOOM, 2.5-INCH LCD) ? brand : samsung Screen Size 3 Inches (7.6 cm) Photo Sensor Size 1/2.3-inch (31.2 cm)', 66000.00, 30, '2022-09-10 16:30:54', 'samsungc6.jpg'),
(148, 'camera', 'samsung', 'SAMSUNG EV-NX3000BEIUS WIRELES', 'SAMSUNG EV-NX3000BEIUS WIRELESS SMART 20.3MP COMPACT SYSTEM CAMERA WITH 3-INCH LCD AND 20-50MM COMPACT ZOOM (BLACK) RF 24-240MM F4-6.3 IS USM LENS KIT', 72000.00, 40, '2022-09-10 16:32:31', 'samsungc7.jpg'),
(149, 'camera', 'samsung', 'Samsung EC-WB350FBPBUS 16.3', 'Samsung EC-WB350FBPBUS 16.3Digital Camera with 21x Optical Image Stabilized Zoom with 3-Inch LCD (white) Item Weight 9.8 ounces (277.83 grams) ASIN B00HZE2PYI Item model number EC-WB350FBPBUS Batteries 1 Lithium Metal batteries required. (included) Brand SAMSUNG Model Name Samsung EC-WB350FBPBUS Form Factor Compact Effective Still Resolution 16 MP Special Feature Lightweight', 66000.00, 40, '2022-09-10 16:40:12', 'samsungc8.jpg'),
(150, 'camera', 'samsung', 'SAMSUNG NX20', 'SAMSUNG NX20 DIGITAL CAMERA BODY ONLY\r\nItem Weight	9.8 ounces (277.83 grams)\r\nASIN	B00HZE2PYI\r\nItem model number	EC-WB350FBPBUS\r\nBatteries	1 Lithium Metal batteries required. (included)\r\nBrand	SAMSUNG\r\nModel Name	Samsung EC-WB350FBPBUS\r\nForm Factor	Compact\r\nEffective Still Resolution	16 MP\r\nSpecial Feature	Lightweight', 50000.00, 30, '2022-09-10 11:51:19', 's12.jpg'),
(151, 'camera', 'sony', 'Sony Alpha ILCE-7M3K', 'Sony Alpha ILCE-7M3K Full-Frame 24.2MP Mirrorless Digital SLR Camera with 28-70 mm Zoom Lens (4K Full Frame, Real-Time Eye Auto Focus, 4K Vlogging Camera, Tiltable LCD, Low Light Camera), Black\r\nSensor: 24.2MP 35 mm Full-Frame CMOS Sensor with Back-Illuminated Design\r\nISO: Sensitivity Range Up To ISO 51200 (Expandable To ISO 50-204800 For Stills)\r\nImage Processor: Fast Hybrid AF with 693 Phase-Detection and 425 Contrast-Detection AF Points\r\nHigh-Speed Continuous Shooting Of Up To 10fps with AF/AE Tracking', 62000.00, 50, '2022-09-10 11:54:22', 's1.jpg'),
(152, 'camera', 'sony', 'Sony Alpha A7', 'Sony Alpha A7 III Mirrorless Camera with FE 85mm F1.8 Lens', 85000.00, 40, '2022-09-10 11:55:08', 's2.jpg'),
(153, 'camera', 'sony', 'SONY ILCE-3500J', 'SONY ILCE-3500J with SEL1850 Lens Mirrorless Camera(Black)\r\nSales Package: \"ILCE-3500J Camera body -1 U (Including Rechargeable Battery NP-FW50,Lens (SEL1850), AC Adaptor AC-UB10, Shoulder Strap, Micro USB Cable,Lens Cap, Lens Hood, Power Cord - 1 U each)\"\r\nModel Name: \"ILCE-3500J with SEL1850 Lens\"\r\nType: \"Mirrorless\"\r\nEffective Pixel: \"20.1 MP\"\r\nMaximum Shutter Speed: \"14000 sec\"', 75000.00, 35, '2022-09-10 11:55:55', 's3.jpg'),
(154, 'camera', 'sony', 'Sony Alpha a6400', 'Sony Alpha a6400 Mirrorless Camera with 16-50mm Lens (ILCE-6400L)\r\n24.2MP APS-C Exmor CMOS Sensor | Real-Time Eye AF & Real-Time Tracking | XGA Tru-Finder 2.36m-Dot OLED EVF | 3.0? 921.6k-Dot 180° Tilting Touchscreen | Internal UHD 4K Video, S-Log3, and HLG | Built-In Wi-Fi with NFC', 66000.00, 50, '2022-09-10 11:56:58', 's5.jpg'),
(155, 'camera', 'sony', 'Sony Alpha A7 III Mirrorless C', 'Sony Alpha A7 III Mirrorless Camera with FE 85mm F1.8 Lens 24.2MP APS-C Exmor CMOS Sensor | Real-Time Eye AF & Real-Time Tracking | XGA Tru-Finder 2.36m-Dot OLED EVF | 3.0? 921.6k-Dot 180° Tilting Touchscreen | Internal UHD 4K Video, S-Log3, and HLG | Built-In Wi-Fi with NFC', 10000.00, 30, '2022-09-10 16:20:39', 'sonyc6.jpg'),
(156, 'camera', 'sony', 'SONY A7 IV', 'SONY A7 IV MIRRORLESS CAMERA Brand Sony Reference ILCE-7M4/B Condition Brand New / Company Sealed 33MP Full-Frame Exmor R CMOS Sensor Up to 10 fps Shooting, ISO 100-51200 4K 60p Video in 10-Bit, S-Cinetone 3.68m-Dot EVF with 120 fps Refresh Rate 3\" 1.03m-Dot Vari-Angle Touchscreen LCD 759-Pt. Fast Hybrid AF, Real-time Eye AF Focus Breathing Compensation', 219990.00, 50, '2022-09-10 16:18:57', 'sonyc7.jpg'),
(157, 'camera', 'sony', 'Sony a7 III (ILCEM3K/B)', 'Sony a7 III (ILCEM3K/B) Full-frame Mirrorless Interchangeable-Lens Camera with 28-70mm Lens with 3-Inch LCD, Black Author: SONY Brand: Sony Color: Black', 162898.00, 40, '2022-09-10 16:23:52', 'sonyc8.jpg'),
(158, 'camera', 'sony', 'Sony Alpha A7c', 'Sony Alpha A7c Mirrorless Digital Camera With 28-60mm Lens BRAND Sony LENS INCLUDED 28-60mm EDITION Standard SERIES Sony Alpha CONFIGURATION Body & Lens COLOR Silver (Colour options might not be available) SPECIAL FEATURES Bluetooth SENSOR SIZE Full Frame Camera IN-BODY STABILIZATION 5-Axis Digital MAX VIDEO QUALITY 4K 30fps', 196990.00, 30, '2022-09-10 16:22:10', 'sonyc9.jpg'),
(159, 'camera', 'sony', 'Sony DSCH300/B', 'Sony DSCH300/B Digital Camera (Black)\r\nGet everything up close with powerful 35x optical zoom\r\nOperating temperature:-10 ~ +40? (operation)/ -20 ~ +60? (storage).201MP Super HAD CCD sensor for beautifully detailed images\r\nMinimized Blur with optical SteadyShot image stabilization\r\nPlease refer the user guide and the user manual before use', 221000.00, 35, '2022-09-10 12:01:56', 's11.jpg'),
(160, 'mobile', 'apple', 'Apple iPhone 11', 'Apple iPhone 11 (64GB) - Black\r\n\r\nPattern name: iPhone 11\r\nBrand	Apple\r\nModel Name	IPhone 11\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	IOS 14\r\nCellular Technology	4G', 41999.00, 35, '2022-09-10 12:05:31', 'm1.jpg'),
(161, 'mobile', 'apple', 'Apple iPhone 13 Pro', 'Apple iPhone 13 Pro (128GB) - Sierra Blue\r\n\r\n\r\nBrand	Apple\r\nModel Name	IPhone\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	IOS 14\r\nCellular Technology	GSM', 108999.00, 35, '2022-09-10 12:06:59', 'm2.jpg'),
(162, 'mobile', 'apple', 'Apple iPhone 13', 'Apple iPhone 13 (256GB) - Starlight\r\n\r\n\r\nBrand	Apple\r\nModel Name	IPhone\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	IOS 14', 100000.00, 35, '2022-09-10 12:07:59', 'm3.jpg'),
(163, 'mobile', 'apple', 'Apple iPhone SE', 'Apple iPhone SE (128 GB) - (Product) RED (3rd Generation)\r\n\r\n\r\nBrand	Apple\r\nModel Name	IPhone SE\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	IOS\r\nCellular Technology	5G', 48999.00, 25, '2022-09-10 12:09:10', 'm4.jpg'),
(164, 'mobile', 'apple', 'Apple iPhone 12 Mini', 'Apple iPhone 12 Mini (128GB) - Black\r\n\r\nSize name: 128GB\r\nPattern name: iPhone 12 Mini\r\n5.4-inch (13.7 cm diagonal) Super Retina XDR display\r\nCeramic Shield, tougher than any smartphone glass\r\nA14 Bionic chip, the fastest chip ever in a smartphone\r\nAdvanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording\r\n12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording\r\nIndustry-leading IP68 water resistance\r\nSupports MagSafe accessories for easy attach and faster wireless charging\r\niOS with redesigned widgets on the Home screen, all-new App Library, App Clips and more', 55499.00, 40, '2022-09-10 12:10:19', 'm5.jpg'),
(165, 'mobile', 'apple', 'Apple iPhone 13 Pro Max', 'Apple iPhone 13 Pro Max (128GB) - Sierra Blue\r\n\r\n\r\nBrand	Apple\r\nModel Name	IPhone\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	IOS 14\r\nCellular Technology	GSM', 118999.00, 35, '2022-09-10 12:11:17', 'm6.webp'),
(166, 'mobile', 'apple', 'Apple iPhone 12 Mini', 'Apple iPhone 12 Mini (128GB) - White\r\n\r\nSize name: 128GB\r\nPattern name: iPhone 12 Mini\r\nBrand	Apple\r\nModel Name	IPhone 12 mini 128GB White\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	IOS 14\r\nCellular Technology	5G', 55499.00, 30, '2022-09-10 12:18:06', 'm7.webp'),
(167, 'mobile', 'apple', 'Apple iPhone 11', 'Apple iPhone 11 (64GB) - White\r\n\r\n\r\nBrand	Apple\r\nModel Name	IPhone 11\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	IOS 14\r\nCellular Technology	4G', 41999.00, 25, '2022-09-10 12:20:17', 'm13.webp'),
(168, 'mobile', 'apple', 'Apple iPhone 12', 'Apple iPhone 12 (64GB) - Purple\r\n\r\n\r\nBrand	Apple\r\nModel Name	IPhone 12\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	IOS 14\r\nCellular Technology	5G', 52999.00, 50, '2022-09-10 12:21:54', 'm15.jpg');
INSERT INTO `products` (`id`, `categories_name`, `company`, `product_name`, `decryption`, `price`, `quantity`, `date&time`, `img`) VALUES
(169, 'mobile', 'samsung', 'Samsung Galaxy M33 5G', 'Samsung Galaxy M33 5G (Mystique Green, 6GB, 128GB Storage) | 6000mAh Battery | Upto 12GB RAM with RAM Plus | Travel Adapter to be Purchased Separately Brand Samsung Model Name Samsung Galaxy M33 5G Network Service Provider Unlocked for All Carriers OS Android | 12.0 Cellular Technology 5G, 4G LTE', 28999.00, 30, '2022-09-10 16:49:57', 'samsungm1.jpg'),
(170, 'mobile', 'samsung', 'Samsung Galaxy M13', 'Samsung Galaxy M13 (Aqua Green, 4GB, 64GB Storage) | 6000mAh Battery | Upto 8GB RAM with RAM Plus\r\n\r\n\r\nBrand	Samsung\r\nModel Name	Samsung Galaxy M13\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	Android 12.0\r\nCellular Technology	4G', 11999.00, 50, '2022-09-10 12:25:08', 's2.webp'),
(171, 'mobile', 'samsung', 'Samsung Galaxy M13 5G', 'Samsung Galaxy M13 5G (Stardust Brown, 4GB, 64GB Storage) | 5000mAh Battery | Upto 8GB RAM with RAM Plus\r\n\r\n\r\nBrand	Samsung\r\nModel Name	Samsung Galaxy M13 5G\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	Android 12.0\r\nCellular Technology	5G', 13999.00, 40, '2022-09-10 12:26:56', '53.webp'),
(172, 'mobile', 'samsung', 'Samsung Galaxy Z Flip4 5G ', 'Samsung Galaxy Z Flip4 5G (Bora Purple, 8GB RAM, 256GB Storage) with No Cost EMI/Additional Exchange Offers\r\n\r\n\r\nBrand	Samsung\r\nModel Name	Samsung Galaxy Flip4 5G\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	Android 12.0\r\nCellular Technology	5G,4G LTE', 94999.00, 40, '2022-09-10 12:28:25', 's4.jpg'),
(173, 'mobile', 'samsung', 'Samsung Galaxy Z Fold4 5G', 'Samsung Galaxy Z Fold4 5G (Beige, 12GB RAM, 512GB Storage) with No Cost EMI/Additional Exchange Offers\r\n\r\n\r\nBrand	Samsung\r\nModel Name	Samsung Galaxy Z Fold4 5G\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	Android 12.0\r\nCellular Technology	5G,4G LTE', 164999.00, 35, '2022-09-10 12:29:45', 's5.webp'),
(174, 'mobile', 'samsung', 'Samsung Galaxy S22 Ultra 5G', 'Samsung Galaxy S22 Ultra 5G (Phantom Black, 12GB, 256GB Storage) with No Cost EMI/Additional Exchange Offers\r\n\r\n\r\nBrand	Samsung\r\nModel Name	Samsung Galaxy S22 Ultra 5G\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	Android 12\r\nCellular Technology	5G', 85000.00, 40, '2022-09-10 12:30:48', 's6.jpg'),
(175, 'mobile', 'samsung', 'Samsung Galaxy Z Fold4 5G', 'Samsung Galaxy Z Fold4 5G (Beige, 12GB RAM, 256GB Storage) with No Cost EMI/Additional Exchange Offers\r\n\r\n\r\nBrand	Samsung\r\nModel Name	Samsung Galaxy Z Fold4 5G\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	Android 12.0\r\nCellular Technology	5G,4G LTE', 154999.00, 40, '2022-09-10 12:37:12', 's7.jpg'),
(176, 'mobile', 'samsung', 'Samsung Galaxy A13', 'Samsung Galaxy A13 Blue, 6GB RAM, 128GB Storage with No Cost EMI/Additional Exchange Offers\r\n\r\n\r\nBrand	Samsung\r\nModel Name	SM-A135FLBJINS\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	Android 12.0\r\nMemory Storage Capacity	128 GB', 13999.00, 50, '2022-09-10 12:38:18', 's8.jpg'),
(177, 'mobile', 'samsung', 'Samsung Galaxy S22 Ultra 5G', 'Samsung Galaxy S22 Ultra 5G (Phantom White, 12GB, 256GB Storage) with No Cost EMI/Additional Exchange Offers\r\n\r\n\r\nBrand	Samsung\r\nModel Name	Samsung Galaxy S22 Ultra 5G\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	Android 12\r\nCellular Technology	5G, 4G LTE', 109999.00, 45, '2022-09-10 12:39:18', 's9.jpg'),
(178, 'mobile', 'redmi', 'Redmi Note 9', 'Redmi Note 9 (Pebble Grey, 4GB RAM 64GB Storage) - 48MP Quad Camera & Full HD+ Display - 3 Months No Cost EMI on BFL\r\n\r\n\r\nBrand	Redmi\r\nOS	Android\r\nMemory Storage Capacity	128 GB\r\nConnectivity technologies	Bluetooth, 4G,\r\n Wi-Fi, Infrared, GLONASS, USB, GPS, BeiDou\r\n', 9999.00, 30, '2022-09-10 12:41:09', 'r1.jpg'),
(179, 'mobile', 'redmi', 'Redmi Note 10T 5G', 'Redmi Note 10T 5G (Mint Green, 4GB RAM, 64GB Storage) | Dual5G | 90Hz Adaptive Refresh Rate | MediaTek Dimensity 700 7nm Processor | 22.5W Charger Included\r\n\r\n\r\nBrand	Redmi\r\nModel Name	Redmi Note 10T\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	MIUI 12\r\nCellular Technology	5G', 13999.00, 45, '2022-09-10 12:42:28', 'r2.jpg'),
(180, 'mobile', 'redmi', 'Redmi 9 Activ', 'Redmi 9 Activ (Carbon Black, 6GB RAM, 128GB Storage)\r\n\r\n\r\nBrand	Redmi\r\nModel Name	Redmi 9 Activ\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	Andriod MIUI 21, MIUI 21\r\nCellular Technology	LTE', 10499.00, 50, '2022-09-10 12:43:44', 'r3.jpg'),
(181, 'mobile', 'redmi', 'Redmi Note 11', 'Redmi Note 11 (Space Black, 6GB RAM, 64GB Storage) | 90Hz FHD+ AMOLED Display | Qualcomm® Snapdragon™ 680-6nm | Alexa Built-in | 33W Charger Included | Get 2 Months of YouTube Premium Free!\r\n\r\n\r\nBrand	Redmi\r\nModel Name	Redmi Note 11\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	MIUI 13\r\nCellular Technology	LTE', 14999.00, 35, '2022-09-10 12:44:44', 'r4.jpg'),
(182, 'mobile', 'redmi', 'Redmi 10A', 'Redmi 10A (Slate Grey, 4GB RAM, 64GB Storage) | 2 Ghz Octa Core Helio G25 | 5000 mAh Battery | Finger Print Sensor | Upto 5GB RAM with RAM Booster\r\n\r\nStyle name: Redmi 10A\r\nBrand	Redmi\r\nModel Name	Redmi 10A\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	MIUI 12.5\r\nCellular Technology	LTE', 9499.00, 50, '2022-09-10 12:47:19', 'r5.webp'),
(183, 'mobile', 'redmi', 'Redmi 9 Activ', ' Redmi 9 Activ (Metallic Purple, 4GB RAM, 64GB Storage) | Octa-core Helio G35 | 5000 mAh Battery\r\n\r\n\r\nBrand	Redmi\r\nModel Name	Redmi 9 Activ\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	MIUI 12, Android MIUI 12\r\nCellular Technology	LTE', 8499.00, 35, '2022-09-10 12:48:03', 'r6.jpg'),
(184, 'mobile', 'redmi', 'Redmi 10A Sport Sea', 'Redmi 10A Sport Sea Blue 6GB RAM 128GB ROM | Helio H25 |Finger Print Sensor | 6GB RAM with RAM Booster\r\n\r\n\r\nBrand	Redmi\r\nModel Name	Redmi 10A Sport\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOS	MIUI 12.5\r\nCellular Technology	4G', 10999.00, 50, '2022-09-10 12:49:09', 'r7.webp'),
(186, 'mobile', 'redmi', 'Xiaomi Redmi Note 11 SE', 'Redmi Note 11SE mobile was comes with a 90 Hz refresh rate 6.50-inch touchscreen display offering a resolution of 1800×2400 pixels (FHD+). Redmi Note 11SE is powered by a 2.2GHz octa-core MediaTek Dimensity 700 processor. It comes with 4GB/8GB of RAM.', 10999.00, 50, '2022-09-10 13:00:04', 'Xiaomi Redmi Note 11 SE.jpg'),
(187, 'mobile', 'redmi', 'Xiaomi Mi 11 Ultra', 'The design of the Mi 11 Ultra is stunning. It has an aluminium frame, a curved display with Corning Gorilla Glass Victus, and a ceramic back. However, all these premium materials contribute to the 234g weight. ', 69999.00, 35, '2022-09-10 13:03:28', 'Xiaomi Mi 11 Ultra.jpg'),
(188, 'speaker', 'apple', 'Apple HomePod mini', 'Apple HomePod mini with Siri assistant Smart Speaker White\r\n\r\nGeneral Information:\r\n\r\nModel		 HomePod mini\r\nBrand		 Apple\r\nPhysical		 Dimensions\r\nColour		  White\r\nItem Width   	  9.36 cm\r\nItem Height   	 9.27 cm\r\nItem Length    	 14.31 cm\r\nNet Quantity   	 1N\r\nNet Weight      	645.3 gram', 9900.00, 40, '2022-09-10 13:18:25', 'a1.jpg'),
(189, 'speaker', 'apple', 'HomePod mini', 'HomePod miniModel		 HomePod mini\r\nBrand		 Apple\r\nPhysical		 Dimensions\r\nColour		  Blue\r\nItem Width   	  9.36 cm\r\nItem Height   	 9.27 cm\r\nItem Length    	 14.31 cm\r\nNet Quantity   	 1N\r\nNet Weight      	645.3 gram', 9900.00, 40, '2022-09-10 13:19:48', 'a2.jpg'),
(190, 'speaker', 'apple', 'Apple HomePod mini with Siri a', 'Apple HomePod mini with Siri assistant Smart Speaker Grey Model  		HomePod mini\r\nBrand		Apple\r\nPhysical		 Dimensions\r\nColour		Space Gray\r\nItem Width	9.63 cm\r\nItem Height	9.27 cm\r\nItem Length	14.31 cm\r\nNet Quantity	1N\r\nNet Weight	660.6 gram', 9900.00, 35, '2022-09-10 13:20:40', 'a3.jpg'),
(191, 'speaker', 'apple', 'Hot Sale Homepod Mini', 'Hot Sale Homepod Mini Support Smart Phones protective cover Wireless Speaker For Apple Homepod silicone earphone cover Model  	HomePod Mini\r\nBrand	Apple\r\n\r\nBuilt-in Functions	Rechargeable BatteryYes\r\nPhysical		 Dimensions\r\nColour		white\r\nstand		orange\r\nItem Width	9.906 cm\r\nItem Height	8.382 cm\r\nItem Length	8.382 cm\r\nNet Quantity	1N\r\nNet Weight	345 gram', 19900.00, 50, '2022-09-10 13:21:43', 'a4.jpg'),
(193, 'speaker', 'apple', 'Apple Homopod with Siri assist', 'Apple Homopod with Siri assistant smart space grayModel		 Homopod with Siri assistant\r\nBrand		 Apple\r\nPhysical		 Dimensions\r\nColour		  Space Gray\r\nItem Width   	  9.36 cm\r\nItem Height   	 9.27 cm\r\nItem Length    	 14.31 cm\r\nNet Quantity   	 1N\r\nNet Weight      	645.3 gram', 34900.00, 50, '2022-09-10 13:25:32', 'a6.jpg'),
(194, 'speaker', 'apple', 'Echo Dot', 'Echo Dot (4th Gen) Next generation Smart Speaker with LED Clock Model		Echo Dot (4th Gen)\r\nBran 		Apple\r\nAudio	               Jack 3.5 mm\r\n\r\nRechargeable Battery	Yes\r\nPhysical		 Dimensions', 4999.00, 35, '2022-09-10 13:26:51', 'a7.jpg'),
(195, 'speaker', 'apple', 'Apple iPhone 8 Mini', 'Apple iPhone 8 Mini Bluetooth Speaker, Premium Cute Bunny Animal Model		Apple iphone8 (4th Gen)\r\nBran 		Apple\r\nAudio	               Jack 3.5 mm\r\n\r\nRechargeable Battery	Yes\r\nPhysical		 Dimensions', 34500.00, 35, '2022-09-10 13:30:25', 'a15.jpg'),
(196, 'speaker', 'apple', 'Apple Homopod with Siri assist', 'Model  	HomePod Mini\r\nBrand	Apple\r\n\r\nBuilt-in Functions	Rechargeable BatteryYes\r\nPhysical		 Dimensions\r\nColour		sky blue\r\nItem Width	9.906 cm\r\nItem Height	8.382 cm\r\nItem Length	8.382 cm\r\nNet Quantity	1N\r\nNet Weight	345 gram', 9900.00, 26, '2022-09-10 13:36:09', 'a12.jpg'),
(197, 'speaker', 'apple', 'SONOS One Multimedia Speaker', 'SONOS One Multimedia Speaker The powerful Gen 2 smart speaker with voice control built-in. Get rich, room-filling sound with Sonos One, and control it with your voice, the Sonos app, Apple AirPlay 2, and more.', 21999.00, 50, '2022-09-10 13:42:09', 'SONOS One Multimedia Speaker.jpg'),
(198, 'speaker', 'sony', 'Sony Srs-Xb13', 'Sony Srs-Xb13 Wireless Extra Bass Portable Compact Bluetooth Speaker\r\n\r\nStyle name: SRS-XB13\r\nColour: Black\r\nBrand	Sony\r\nModel Name	SRS-XB13\r\nSpeaker Type	Bookshelf\r\nConnectivity Technology	Wireless, Bluetooth\r\nSpecial Feature	Waterproof, Dustproof, Extra Bass', 3490.00, 50, '2022-09-10 13:51:53', 'Sony Srs-Xb13.jpg'),
(199, 'speaker', 'sony', 'Sony SRS-XB01 ', 'Sony SRS-XB01 Compact Portable Bluetooth Speaker: Loud Portable Party Speaker \r\n\r\nBrand	Sony\r\nModel Name	SRSXB01/L\r\nSpeaker Type	Bookshelf\r\nConnectivity Technology	Bluetooth\r\nSpecial Feature	Built-in Microphone', 2989.00, 35, '2022-09-10 13:55:02', 'sony6.jpg'),
(200, 'speaker', 'sony', 'Sony SRS-XB31', 'Sony SRS-XB31 Portable Wireless Bluetooth Speaker, Black (SRSXB31/B)\r\n\r\nBrand	Sony\r\nModel Name	SRS-XB31\r\nSpeaker Type	3D\r\nConnectivity Technology	Wireless, Bluetooth\r\nSpecial Feature	Portable\r\n\r\nAbout this item\r\nFeel the power of EXTRA BASS with Live Sound Mode for an immersive 3D sound experience\r\nWaterproof and dustproof IP67 design for worry-free usage\r\nListen all day and night with up to 24 hours of battery life. Pick it up and play with the lightweight, portable design\r\nConnect and add more speakers (up to 100) with Wireless Party Chain\r\nBuild energy with a multicolored line light and flashing strobe\r\nAdd an extra speaker for stereo sound. In the box: USB Cable', 2900.00, 30, '2022-09-10 13:56:57', 'sony8.jpg'),
(201, 'speaker', 'sony', 'Sony SRS-XB43', 'Brand	Sony\r\nModel Name	Speakers\r\nSpeaker Type	Outdoor\r\nConnectivity Technology	Wireless, Bluetooth, USB\r\nSpecial Feature	Waterproof, Built-in Microphone', 2900.00, 50, '2022-09-10 13:58:13', 'sony10.jpg'),
(202, 'speaker', 'sony', 'Sony MHC-V83D', 'Sony MHC-V83D Wireless Bluetooth Party Speaker (Black)Brand	Sony\r\nModel Name	MHC-V83D\r\nSpeaker Type	Tweeter\r\nConnector Type	Wireless, Bluetooth, NFC\r\nSpecial Feature	NFC Enabled', 1677.00, 50, '2022-09-10 13:59:23', 'sony11.jpg'),
(203, 'speaker', 'sony', 'Sony SRS-RA3000', '360 Reality Audio:  Experience 360 Reality Audio sound creates a feeling of immersion that makes it feel like you are at a concert or in the recording studio with the artist.\r\n\r\nAmbient Room Filling Sound:  Fill your whole room with sound. Sound is diffused both horizontally and vertically to create the perfect atmosphere anywhere in your home.', 1200.00, 35, '2022-09-10 14:01:54', 'sony13.jpg'),
(204, 'speaker', 'sony', 'Sony SA D20 2.1', 'Boost-up your sound experience with 60W 2.1ch stylish home theatre speaker SA-D20. This compact, space saving system features Bluetooth connectivity along with USB and audio inputs. So you can connect it with mobile, TV or your PC and bring great sound to all your entertainment. Just one cable required to connect and is easy to control by user friendly Remote controller.', 7990.00, 50, '2022-09-10 14:04:45', 'Sony SA D20 2.1.webp'),
(205, 'speaker', 'sony', 'Sony SRS-XP500', 'Omnidirectional Party Sound With front and rear tweeters for multi-directional sound, and X-Balanced speaker units for deep, punchy MEGA BASS, the XP700 speaker is tuned to enjoy all different genres of music. The powerful rear tweeter makes the XP700 sound incredible from anywhere – even from behind the speaker.', 26790.00, 35, '2022-09-10 14:07:05', 'Sony SRS-XP500.jpg'),
(206, 'speaker', 'sony', 'Sony HT-RT40', 'Bring home authentic room-filling sound. Tall-boy rear speakers immerse you deeper in the movies you love with real 5.1 channel surround sound, while a 600W total power output delivers dynamic cinema sound.', 26990.00, 40, '2022-09-10 14:09:33', 'Sony HT-RT40.jpg'),
(207, 'speaker', 'boss', 'Bose SoundLink Revolve', 'Bose SoundLink Revolve+(Series II) Portable and Long-Lasting Bluetooth SpeakerBrand Bose Model Name SoundLink Revolve+ Bluetooth Speaker II Speaker Type Multimedia Connector Type Wireless Bluetooth Special Feature Wireless, Portable', 29400.00, 35, '2022-09-10 14:15:10', 'b2.jpg'),
(208, 'speaker', 'boss', 'Bose Soundlink Micro', 'Bose Soundlink Micro Wireless Bluetooth Speaker Black Model  	Soundlink Micro\r\nBrand 	 Bose\r\nBattery 	 Related\r\nBattery Type  Lithium Ion (Li-Ion)\r\n\r\nRechargeable Battery	Yes\r\nPhysical			Dimensions\r\nColour			Black', 7630.00, 30, '2022-09-10 14:13:42', 'b3.jpg'),
(209, 'speaker', 'boss', 'Bose SoundLink Flex', 'Bose SoundLink Flex Bluetooth Portable Speaker, Wireless Waterproof Speaker for Outdoor Travel ', 10800.00, 50, '2022-09-10 14:16:35', 'b8.jpg'),
(210, 'speaker', 'boss', 'SoundLink Color Bluetooth® spe', 'SoundLink Color Bluetooth® speaker II\r\n\r\nSurround Sound · Wireless · Portable · Citron · Google Assistant · Siri · Bluetooth · NFC\r\nDual 40mm Drivers, Bluetooth 4.2 Wireless, Built-In Rechargeable Battery, IPX4 Splashproof, Lasts up to Eight Hours on a Charge, 3.5mm Auxiliary Port. Wireless audio streaming and portability are combined in the yellow citron Bose SoundLink Color II Bluetooth Speaker.', 30000.00, 50, '2022-09-10 14:19:37', 'b12.jpg'),
(211, 'speaker', 'boss', 'Bose Sound Touch 30', 'Bose Sound Touch 30 Iii Portable Bluetooth Mobile Tablet Speaker Black Mono Channel enjoy blissful music with the sony srs-xb10/bc portable bluetooth mobile tablet speaker. this product comes with exciting features such as 1 year warranty, single channel output, digital sound and much more.', 57263.00, 50, '2022-09-10 14:22:35', 'Bose Sound Touch 30.webp'),
(212, 'speaker', 'boss', 'Bose Soundlink Wireless Portab', '	\r\nBose Soundlink Wireless Portable Bluetooth Speaker III - Silver (Refurbished)\r\nPRODUCT OVERVIEW Meet the speaker that brings your music and friends together—with a style that’s all your own.', 20548.00, 50, '2022-09-10 14:25:39', 'Bose Soundlink Wireless Portable Bluetooth Speaker III - Silver.webp'),
(213, 'speaker', 'boss', 'Bose S1 Pro', 'You spent a lot of time creating that perfect playlist, now make sure everyone gets to hear it. The Bose S1 Pro system is a combination Bluetooth speaker and versatile PA system made for parties, outdoor get-together and all those times that deserve better sound.', 68833.00, 50, '2022-09-10 14:27:24', 'Bose S1 Pro.webp'),
(214, 'speaker', 'boss', 'Hitone Boss Wall Mount Speaker', 'Hitone Boss Speakers, Safety, Public Address Systems, Speakers From Industry Buying Online In India Item Code Ps-300T Is Part Of The Bearingproduct Line Offered Online In India By Industry Buying At Low Price. Hitone Boss Speakers, Safety, Public Address Systems, Speakers From Industrybuyingis One Of The Best Buy, Low Priced, Available To Buy Online In India. Hitone Boss Speakers, Safety, Public Address Systems, Speakers , Is Of Type Of Product Speakers, Category Safety, Public Address Systems, Speakers (Item Code Ps-300T)', 2880.00, 50, '2022-09-10 14:30:05', 'Hitone Boss Wall Mount Speakers PS-300 T.webp'),
(215, 'speaker', 'boss', 'Bose SoundLink Mini', 'PRODUCT OVERVIEWEnjoy better sound on the go, everywhere you go, with the Bose Sound Link Mini Bluetooth speaker. It delivers full, natural sound from an ultra-compact speaker that fits in the palm of your hand', 8964.00, 50, '2022-09-10 14:31:30', 'Bose SoundLink Mini.webp'),
(216, 'speaker', 'jbl', 'JBL Go Essential', 'JBL Go Essential with Rich Bass, 5 Hrs Playtime, IPX7 Waterproof, Ultra Portable 3.1 W Bluetooth Speaker Power Output(RMS): 3.1 W\r\nPower Source: Battery\r\nBattery life: 5 hr | Charging time: 2.5 hr\r\nBluetooth Version: 4.2\r\nWireless range: 10 m\r\nWireless music streaming via Bluetooth', 1799.00, 50, '2022-09-10 14:33:11', 'j1.jpg'),
(217, 'speaker', 'jbl', 'JBL GO Portable Wireless Bluet', 'Brand	JBL\r\nModel Name	Flip\r\nSpeaker Type	Outdoor\r\ncolor		orange\r\nConnector Type	Wireless Bluetooth\r\nSpecial Feature	Built-in  ', 1900.00, 40, '2022-09-10 14:35:32', 'j2.jpg'),
(218, 'speaker', 'jbl', 'JBL Clip 3', 'JBL Clip 3 Wireless Bluetooth® Streaming\r\n iconUp to 10 Hours of Playtime\r\n iconIPX7 Waterproof\r\n\r\nMaximum music playing time (hrs)	10\r\nOutput power (W)			3\r\nCountry of origin			China', 2999.00, 35, '2022-09-10 14:37:16', 'j10.jpg'),
(219, 'speaker', 'jbl', 'JBL PartyBox 100 ', 'JBL PartyBox 100 Portable Bluetooth Party Speaker with Bass Boost and Dynamic Light Show (160 Watts, Black)', 24999.00, 50, '2022-09-10 14:41:01', 'JBL PartyBox 100.webp'),
(221, 'speaker', 'jbl', 'Ecart Mini JBL MINI', 'Sound you can see. Elevate your music experience to another dimension with the JBL Pulse 2, a portable Bluetooth speaker that offers sensational sound with an interactive light show.', 549.00, 50, '2022-09-10 14:46:51', 'Ecart Mini JBL MINI.webp'),
(222, 'speaker', 'jbl', 'JBL Xtreme 3 Portable waterpro', 'JBL Xtreme 3 Portable waterproof speaker Massive JBL Original Pro Sound | 15 Hours of Playtime | IP67 waterproof and dustproof', 25490.00, 35, '2022-09-10 14:49:53', 'JBL Xtreme 3.webp'),
(223, 'speaker', 'jbl', 'JBL Go 3 Portable', 'JBL Go 3 Portable Bluetooth Speaker (Blue) with 5 Hours of Playtime , IP67 Waterproof and dustproof rating , Ultra-portable design', 3699.00, 35, '2022-09-10 14:51:39', 'JBL Go 3 Portable.jpg'),
(224, 'speaker', 'jbl', 'JBL Spark Wireless Bluetooth S', 'JBL Spark Wireless Bluetooth Stereo Speaker - Blue (Certified Refurbished) PRODUCT OVERVIEW With the JBL Spark you get the best in sound, with a fun and unique look that is as individual as your taste in music.', 2238.00, 35, '2022-09-10 14:54:17', 'JBL Spark Wireless.webp'),
(225, 'speaker', 'jbl', 'JBL Flip 4 Portable Waterproof', 'JBL Signature Sound\r\nWireless Bluetooth Streaming\r\nDual Passive Bass Radiators\r\nAccess Siri or Google Now from your JBL speaker with a simple button press', 7299.00, 26, '2022-09-10 14:56:06', 'JBL Flip 4 Portable Waterproof Wireless Speaker with Powerful Bass & Mic (White).jpg'),
(226, 'camera', 'conon', 'Canon IVY CLIQ2 Instant Camera', '5MP Image SensorZINK Zero Ink Printing TechnologyInstantly Prints 2 x 3\" Photo StickersSmudge-Free and Water & Tear Resistant The pocket-sized IVY CLIQ2 Instant Camera Printer from Canon is a fun and easy-to-use instant camera printer you can take with you when you are on-the-go. Available here in charcoal, the IVY CLIQ2 lets you instantly shoot and print 2 x 3\" photo stickers, which you can then place almost anywhere thanks to their peel-and-stick backing.', 6899.00, 50, '2022-09-10 17:04:36', 'Canon IVY CLIQ2 Instant Camera Printer (Charcoal).webp'),
(228, 'speaker', 'klipsch', 'Klipsch Reference Series R-12S', 'Powered · RCA · Energy: A++\r\nKlipsch R-12SW Subwoofer - Add robust bass impact to movies and music with the black Klispch R-12SW 12\" Subwoofer. This front-firing subwoofer features a 12\" copper-spun woofer and delivers up to 400W of power. With a frequency response of 29 - 120 Hz, this model is equipped to handle a wide variety of listening material. Integrated low pass crossover and phase control settings allow you to optimize the sound of the subwoofer in your listening environment.', 17046.00, 50, '2022-09-10 17:20:20', 'Klipsch Reference Series R-12SW.webp'),
(229, 'speaker', 'klipsch', 'Klipsch ProMedia 2.1', 'PRODUCT OVERVIEWLooking to upgrade your PC audio? Our award-winning, THX-certified ProMedia 2.1 computer speakers are the perfect match for any desktop. But more importantly, this compact, three-piece setup delivers high-quality sound that puts some home theater systems to shame.', 6722.00, 45, '2022-09-10 17:21:36', 'Klipsch ProMedia 2.1.webp'),
(230, 'speaker', 'klipsch', 'Klipsch Reference R-26FA 5.1', 'Surround Sound · Wireless · 5.1 Channel · Bookshelf · Dolby Atmos Enabled · Energy: A++ Built with an elevation channel integrated into the top, the R-26FA Dolby Atmos floorstanding speaker not only delivers stereo sound towards the listener, but also reflects sound off the ceiling to deliver the immersive, overhead Dolby Atmos experience. Klipsch signature controlled directivity and high-performance have been an integral part of Klipsch acoustic design principals for the better part of a century - which is why Klipsch is the preferred speaker for this cutting-edge soundstage.', 99410.00, 40, '2022-09-10 17:33:10', 'Klipsch Reference R-26FA 5.1.webp'),
(231, 'speaker', 'klipsch', 'Klipsch RP-600M Bookshelf Spea', 'Klipsch RP-600M Reference Monitor Speakers delivers 400 Watts of room-filling detailed and clean sound with its 165 mm woofer and Titanium LTS Vented Tweeter. The RP-600M fills medium to a larger listening area with high-end design and components that reduces noise, distortion and standing unwanted harmonic waves.', 31543.00, 35, '2022-09-10 17:24:51', 'Klipsch RP-600M Bookshelf Speakers - Ebony.webp'),
(233, 'speaker', 'klipsch', 'Klipsch Reference R-26FA', 'the R-26FA Dolby Atmos floorstanding speaker not only delivers stereo sound towards the listener, but also reflects sound off the ceiling to deliver the immersive, overhead Dolby Atmos experience. Klipsch signature controlled directivity and high-performance have been an integral part of Klipsch acoustic design principals for the better part of a century - which is why Klipsch is the preferred speaker for this advanced soundstage.', 53847.00, 35, '2022-09-10 17:31:15', 'Klipsch Reference R-26FA.webp'),
(234, 'speaker', 'klipsch', 'Klipsch KIO-650 Indoor / Outdo', 'PRODUCT OVERVIEWBring the live music experience to your home or backyard with the highly durable and easy-to-install Klipsch KIO-650 Indoor/Outdoor All-weather Speakers. Outfitted with Klipsch legendary sound tech, the KIO-650 Indoor/Outdoor speakers boast a 6.5” long-throw Cerametallic woofer and Tractrix horn-loaded 1” aluminum tweeter providing a detailed and balanced sound', 13074.00, 50, '2022-09-10 17:35:10', 'Klipsch KIO-650 Indoor Outdoor AllWeather Speakers.jpg'),
(235, 'speaker', 'klipsch', 'Klipsch The One', 'PRODUCT OVERVIEWBring the live music experience to your home or backyard with the highly durable and easy-to-install Klipsch KIO-650 Indoor/Outdoor All-weather Speakers. Outfitted with Klipsch legendary sound tech, the KIO-650 Indoor/Outdoor speakers boast a 6.5” long-throw Cerametallic woofer and Tractrix horn-loaded 1” aluminum tweeter providing a detailed and balanced sound', 13074.00, 35, '2022-09-10 17:36:25', 'Klipsch The One.webp'),
(239, 'mobile', 'asus', 'Asus Zen Fone Pro', 'Single SIM\r\nAsus zenfone max pro m2 summary the asus zenfone max pro m2 sports a big 6.26-inch display with a 19:9 aspect ratio. it is powered by a qualcomm snapdragon 660 soc and comes with multiple ram and storage options. you get 3gb ram with 32gb of storage, 4gb ram with 64gb storage and 6gb ram with 64gb of storage.', 11999.00, 35, '2022-09-10 21:15:14', 'Asus Zen Fone Pro M 2 4 Gb 64 Gb.webp'),
(241, 'mobile', 'asus', 'Asus ROG 6 Pro 5G', 'Asus ROG 6 Pro 5G Dual Sim 512GB White (18GB RAM) Product details\r\nSmartphone · Dual SIM · Android · 4G · Dual Lens · GSM Network · Fingerprint Scanner · With Expandable Storage\r\nTouchscreen Is Yes. Otg Compatible Is Yes. Model Name Is Zenfone Max Pro M1', 127847.00, 30, '2022-09-10 21:33:31', 'Asus ROG 6 Pro 5G Dual Sim 512GB White (18GB RAM).webp'),
(242, 'mobile', 'asus', 'Asus Rog 5 S Pro', 'Asus Rog 5 S Pro Phantom Black 512 Gb 18 Gb Ram Dual SIM · With Expandable Storage\r\nRAM | ROM 18gb ram | 512gb rom PROCESSOR qualcomm snapdragon 888 plus(sm8350) octa core 2.99 ghz REAR CAMERA 64mp + 13mp + 5mp FRONT CAMERA 24mp DISPLAY 6.78 inch full hd+ display BATTERY & POWER FEATURES 6000 mah OTHER DETAILS Network Type. ( 5g, 4g volte, 4g, 3g, 2g ) SIM type. ', 39999.00, 30, '2022-09-10 21:36:54', 'Asus Rog 5 S Pro Phantom Black 512 Gb 18 Gb Ram.webp'),
(243, 'mobile', 'asus', ' Asus Zenfone 8', 'Asus Zenfone 8 Unlocked Zs590ks 128gb 8gb Ram Fast Ship Dhl Fedex Dual SIM · GSM Network · With OLED Display · Unlocked · 2400 x 1080 · Quad-band · Nano\r\nASUS Zenfone 8 Unlocked ZS590KS 128GB 8GB RAM Fast Ship DHL FEDEX * Global Version - can be use worldwide * ***If the shipping is not available in your country or you want discount for large volume please send us a message for shipping price.', 41819.00, 30, '2022-09-10 21:38:43', 'Asus Zenfone 8 Unlocked Zs590ks 128gb 8gb Ram Fast Ship Dhl Fedex.webp'),
(244, 'mobile', 'asus', 'Asus Zenfone 9', 'Asus Zenfone 9 AI2202 5G 128GB Dual Sim 8GB Ram GSM Product details\r\nSmartphone · Dual SIM · Android · 5G · With Fast Charging · Dual Lens · GSM Network · CDMA Network · Unlocked · Blue', 62051.00, 30, '2022-09-10 21:40:59', 'Asus Zenfone 9 AI2202 5G 128GB Dual Sim 8GB Ram GSM.webp'),
(246, 'mobile', 'asus', 'Asus Zenfone 8', 'Asus Zenfone 8 Flip Zs672ks 5g Dual 256gb 8gb Ram Factory Unlocked Gsm Only No Cdma - Not Compatible With Verizonsprint | International Version | Bundle Wfast Car Charger - Silver Generic Asus Zenfone 8 Flip Zs672ks 5g Dual 256gb 8gb Ram Factory Unlocked Gsm Only | No Cdma - Not Compatible With Verizonsprint | International Version | Bundle Wfast Car Charger - Silver ', 71780.00, 50, '2022-09-10 21:48:25', 'Asus Zenfone 8 Flip Zs672ks 5g Dual 256gb 8gb Ram Factory Unlocked Gsm Only.webp'),
(247, 'mobile', 'asus', 'Asus ROG Phone 6', 'Asus ROG Phone 6\" Gaming Smartphone - 8 GB RAM - 512 GB Storage Smartphone · Dual SIM · Android · 4G · With Fast Charging · Dual Lens · GSM Network · CDMA Network · With OLED Display · Facial Recognition\r\nOperating system: android 8.1 oreo. Part number: zs600kl-s845-8g512g. Form factor: smart phones. Dual sim: yes. Sim card type: nano sim. Secondary Sim card type: nano sim. Sensors: Fingerprint (rear-mounted). Accelerometer. Gyro. Proximity. Compass. Audio connectors: 3.5mm jack.', 54086.00, 40, '2022-09-10 21:52:02', 'Asus ROG Phone 6 Gaming Smartphone 8 GB RAM 512 GB Storage.webp'),
(248, 'mobile', 'realme', 'Realme C35', 'Smartphone · Dual SIM · Android · With Fast Charging · Triple Lens · Fingerprint Scanner · With Expandable Storage\r\nRealme C35 mobile was launched on 10th February 2022. The phone comes with a 6.60-inch display with a resolution of 1080×2408 pixels at a pixel density of 401 pixels per inch (ppi).Realme C35 comes with 4GB/6GB of RAM. The Realme C35 runs Android 11 and is powered by a 5000mAh battery.', 11999.00, 35, '2022-09-10 22:30:31', 'Realme C35.webp'),
(249, 'mobile', 'realme', 'Realme 8 5G 128 GB ', 'Smartphone · Dual SIM · Android · 5G · With Fast Charging · Triple Lens · GSM Network · Fingerprint Scanner · 2400 x 1080 · Supersonic Blue The Realme 8 5g Is A Visual Treat With Its Slim And Lightweight Design. Thanks To Its Slim Construction, You Can Comfortably Hold It. Its 16.5 Cm 6.5 Fhd+ Display And Fast Refresh Rate, You Can Enjoy Delightful And Smooth Visuals While Streaming Content, Gaming, And So On. And, With An Instant Side-fingerprint Sensor, You Can Unlock Your Device In An Instant.', 18399.00, 30, '2022-09-10 22:42:51', 'realme 8 5G (2).avif'),
(250, 'mobile', 'realme', 'Realme 9 Pro+ 5G', 'Smartphone · Single SIM · Android · 5G · Dual Lens · GSM Network · With OLED Display · 2400 x 1080 · Quad-band · Wide Angle\r\nDisplay Features Display Size 16.3 cm (6.4 inch) Resolution 2400 x 1080 Pixels Resolution Type Full HD+ GPU Arm Mali-G68 MC4 Display Type 90Hz Super AMOLED Other Display Features HDR10 Support, 90.8% Screen to Body Ratio Os & Processor Features Operating System Android 12 (realme UI 3.0) Processor Type MediaTek Dimensity 920 (5G Processor) Processor Core Octa Core Primary Clock Speed 2.5 GHz', 11999.00, 40, '2022-09-10 22:45:47', 'Realme 9 Pro+ 5G.webp'),
(251, 'mobile', 'realme', 'realme 9 Pro 5G', 'Brand : realme\r\nQualcomm Snapdragon 695 5G Processor\r\n16.76 cm (6.6 inch) 120Hz Ultra Smooth Display\r\n5000mAh Battery, 5G Enabled\r\n16MP In-display Selfie Camera\r\n64 MP Primary Camera + 8 MP Ultra Wide-angle Lens + 2 MP Macro Lens\r\n33 Watts Dart Charge\r\n5G+5G Dual Mode', 20999.00, 40, '2022-09-10 22:48:55', 'realme 9 Pro 5G.webp'),
(252, 'mobile', 'realme', 'Realme 9', 'Dual SIM · 4G · GSM Network · Nano\r\nRealme 9 4G mobile was comes with a 90 Hz refresh rate 6.40-inch touchscreen display offering a resolution of 1080×2400 pixels (FHD+). It comes with 6GB/8GB of RAM. The Realme 9 4G is powered by a 5,000mAh non-removable battery. As far as the cameras are concerned, the Realme 9 4G on the rear packs a 108-megapixel (f/1.75) primary camera; an 8-megapixel (f/2.2) camera, and a 2-megapixel (f/2.4) camera. It sports a 16-megapixel camera on the front for selfies with an f/2.45 aperture. The Realme 9 4G runs Realme UI 3.0Realme 9 4G packs 128GB of inbuilt storage with a dedicated slot.', 20999.00, 35, '2022-09-10 22:50:45', 'Realme 9.webp'),
(253, 'mobile', 'realme', 'Realme 7', 'Smartphone · Dual SIM · Android · 4G · Quad Lens · GSM Network · With OLED Display · Fingerprint Scanner · 2400 x 1080 · Mist Blue\r\nTake advantage of this realme smartphone’s 64 MP quad camera and click stunning photos. This phone also comes with a bunch of cool filters that’ll make night photography all the more amazing. In addition, this smartphone’s Helio G95 Gaming Processor makes it one powerful performer.', 15999.00, 40, '2022-09-10 22:52:14', 'Realme 7.webp'),
(254, 'mobile', 'realme', 'Realme 8i', 'Smartphone · Dual SIM · Android · 4G · With Fast Charging · Triple Lens · Fingerprint Scanner · Space Black 6 GB RAM | 128 GB ROM | Expandable Upto 256 GB 16.76 cm (6.6 inch) Full HD+ Display 50MP + 2MP + 2MP | 16MP Front Camera 5000 mAh Battery MediaTek Helio G96 Processor Realme 8i is powered by an octa-core MediaTek Helio G96 processor,The Realme 8i runs Android 11 and is powered by a 5000mAh battery.', 16999.00, 50, '2022-09-10 22:58:54', 'realme 8i.webp'),
(255, 'mobile', 'realme', 'realme 9 Speed Edition 5G', 'Smartphone · Single SIM · Android · 5G · Triple Lens · Fingerprint Scanner\r\nThe Realme 9 5g Se, Sporting A Plethora Of Impeccable Features, Is A Treat To The Tech-geeks. Driven By The Snapdragon 778g 5g Processor And A 6 Nm Architecture, This Phone Delivers An Immaculate Performance. ', 22999.00, 35, '2022-09-10 23:00:59', 'realme 9 Speed Edition 5G.webp'),
(256, 'mobile', 'realme', 'Realme 5i', 'Smartphone · Single SIM · Android · Quad Lens · Wide Angle\r\nRealme 5i shares the same design as the Realme 5 and the Realme 5s. It has a 6.52-inch display and a tiny waterdrop notch that houses the selfie camera. The Realme 5i packs a 5,000mAh battery which makes it a tad bulky at 195g. This smartphone is available in Aqua Blue and Forest Green colour variants', 10999.00, 50, '2022-09-10 23:02:43', 'Realme 5i 4GB 64GB.webp'),
(257, 'mobile', 'asus', 'Asus Zenfone Zoom', 'Asus Zenfone Zoom - 4GB - 128GB White (New Condition - Box Packed) 4 GB RAM | 128 GB ROM | Expandable Upto 1 TB 13.97 cm (5.5 inch) Full HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Li-Polymer Battery Intel Intel Atom Z3590 Quad Core 2.5GHz Processo	', 8999.00, 35, '2022-09-10 23:12:17', 'Asus Zenfone Zoom.webp'),
(258, 'mobile', 'asus', 'ASUS Zenfone Max Pro M1', 'Smartphone · Dual SIM · Android · 4G · Dual Lens · GSM Network · Fingerprint Scanner · With Expandable Storage\r\nSpecifications General In The Box - Handset, Charger, User Manual, Warranty Card, Max-Box, Sim Ejector Model Number - ZB601KL-4H070IN / ZB601KL-4H080IN Model Name - Zenfone Max Pro M1 Browse Type - Smartphones SIM Type - Dual Sim Hybrid Sim Slot - No Touchscreen - Yes', 13999.00, 50, '2022-09-10 23:17:04', 'ASUS Zenfone Max Pro M1 (64 GB) (4 GB RAM).webp'),
(259, 'speaker', 'klipsch', 'Klipsch ProMedia 2.1', 'Make sure this fits by entering your model number.\r\nThree-piece computer audio system.\r\nExclusive Klipsch MicroTractrix Horn maximizes audio clarity and output.\r\n200-watt digital hybrid amplifier driven ProMedia 21 incorporates a convenient headphone jack as well as a miniplug input.\r\nCompatible with desktop, laptop, smartphone, tablet and other devices via a headphone Jack and mini plug input.', 11709.00, 50, '2022-09-10 23:26:56', 'Klipsch ProMedia 2.1 Computer Speaker System.webp'),
(260, 'speaker', 'klipsch', ' Klipsch Reference Cinema Dolb', 'Dolby Atmos Enabled Includes four satellite speakers outfitted with Dolby Atmos technology Provides an incredibly immersive and realistic 360° audio experience Exclusive Tractrix 90° x 90° horn technology', 184990.00, 50, '2022-09-10 23:37:29', 'Klipsch Reference Cinema Dolby Atmos.webp');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(10) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(8) NOT NULL,
  `confirm_password` varchar(8) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pin_code` int(6) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `full_name`, `email`, `password`, `confirm_password`, `mobile_no`, `address`, `pin_code`, `city`, `state`) VALUES
(1, 'Kareliya Ruchita', 'kareliyaruchitaj@gmail.com', 'Krj@1234', 'Krj@1234', '0990446161', 'santkabir rood', 360003, 'Rajkot', 'Gujarat'),
(2, 'Kareliya', 'kareliya@gmail.com', 'kKK@1234', 'kKK@1234', '7878787878', 'kalavad rood', 360003, 'Rajkot', 'Gujarat'),
(3, 'Ruchita', 'ruchitaj@gmail.com', 'Rrr@1234', 'Rrr@1234', '5665566556', 'morbi rood', 360003, 'Rajkot', 'Gujarat'),
(4, 'Abc Xyz', 'abcxyz@gmail.com', 'Aaa@1234', 'Aaa@1234', '1221121212', 'mota mova', 360003, 'Rajkot', 'Gujarat'),
(5, 'xyz abc', 'xyzabc@gmail.com', 'Xxx@1234', 'Xxx@1234', '3443344334', 'ranachhodnagar rood', 360003, 'Rajkot', 'Gujarat'),
(6, 'R K', 'rk@gmail.com', 'Rkk@1234', 'Rkk@1234', '1331133113', 'pedak rood', 360003, 'Rajkot', 'Gujarat'),
(10, 'A A', 'aa@gmail.com', 'Aaa@1234', 'Aaa@1234', '9988899988', 'gokul rood', 360003, 'Rajkot', 'Gujarat'),
(11, 'C C', 'cc@gmail.com', 'Ccc@1234', 'Ccc@1234', '3334422444', 'voma rood', 360003, 'Rajkot', 'Gujarat');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `decryption` text NOT NULL,
  `email` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `product_name`, `image`, `price`, `decryption`, `email`) VALUES
(11, 'Apple MGN63HNA MacBo', 'Apple MGN63HNA MacBook Air.jpg', 91908.00, 'Apple MGN63HNA MacBook Air (Apple M1 Chip/8GB/256GB SSD/macOS Big Sur/Retina), 33.78 cm (13.3 inch)', 'kareliya@gmail.com'),
(14, 'Sony 43 Tv With Hd Display', 'Sony 43 Tv With Hd Display.jpg', 15335.00, 'Flat · High Definition · LED · 1080p · 60 Hz · 1920 x 1080 · USB · HDMI · VGA · AUX', 'kareliyaruchitaj@gmail.com'),
(15, 'Canon IVY CLIQ2 Instant Camera', 'Canon IVY CLIQ2 Instant Camera Printer (Charcoal).webp', 6899.00, '5MP Image SensorZINK Zero Ink Printing TechnologyInstantly Prints 2 x 3', 'kareliyaruchitaj@gmail.com'),
(16, 'Hot Sale Homepod Mini', 'a4.jpg', 19900.00, 'Hot Sale Homepod Mini Support Smart Phones protective cover Wireless Speaker For Apple Homepod silicone earphone cover Model  HomePod MiniBrandAppleBuilt-in FunctionsRechargeable BatteryYesPhysical DimensionsColourwhitestandorangeItem Width9.906 cmItem Height8.382 cmItem Length8.382 cmNet Quantity1NNet Weight345 gram', 'kareliya@gmail.com'),
(17, 'Apple iPhone 13 Pro', 'm2.jpg', 108999.00, 'Apple iPhone 13 Pro (128GB) - Sierra BlueBrandAppleModel NameIPhoneNetwork Service ProviderUnlocked for All CarriersOperating SystemIOS 14Cellular TechnologyGSM', 'kareliya@gmail.com'),
(19, 'Mi 5A ELA4773IN-L43M7-EA', 'Mi 5A ELA4773IN-L43M7-EA.jpg', 27000.00, 'Mi 5A 108 cm (43 Inches) Full HD Smart Android TV (Android 11, ELA4773IN-L43M7-EA)108 cm (43’’) Full HD TVAndroid 11, Smart TV24 Watts | ?Dolby Audio2 x USB 2.0 | 2 x HDMI 2.1Ideal Viewing Distance: 8 – 10 Ft', 'rk@gmail.com'),
(20, 'Apple iPhone 13 Pro', 'm2.jpg', 108999.00, 'Apple iPhone 13 Pro (128GB) - Sierra BlueBrandAppleModel NameIPhoneNetwork Service ProviderUnlocked for All CarriersOperating SystemIOS 14Cellular TechnologyGSM', 'rk@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
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
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `b_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
