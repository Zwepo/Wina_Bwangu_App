-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2025 at 12:05 PM
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
-- Database: `winabwangu`
--

-- --------------------------------------------------------

--
-- Table structure for table `booths`
--

CREATE TABLE `booths` (
  `BoothID` int(11) NOT NULL,
  `BoothName` varchar(10) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booths`
--

INSERT INTO `booths` (`BoothID`, `BoothName`, `Location`) VALUES
(1, 'Wina1', 'Lusaka CPD'),
(2, 'Wina2', 'Libala'),
(3, 'Wina3', 'Kabwata'),
(4, 'Wina4', 'Mandevu'),
(5, 'Wina5', 'Woodlands'),
(6, 'Wina6', 'Matero East');

-- --------------------------------------------------------

--
-- Table structure for table `booth_services`
--

CREATE TABLE `booth_services` (
  `BoothID` int(11) DEFAULT NULL,
  `ServiceID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booth_services`
--

INSERT INTO `booth_services` (`BoothID`, `ServiceID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 4),
(5, 5),
(6, 1),
(6, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ServiceID` int(11) NOT NULL,
  `ServiceName` varchar(50) DEFAULT NULL,
  `MonthLimit` int(11) DEFAULT NULL,
  `RevenuePerKwacha` decimal(6,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ServiceID`, `ServiceName`, `MonthLimit`, `RevenuePerKwacha`) VALUES
(1, 'Airtel Money', 350000, 0.050),
(2, 'MTN Money', 160000, 0.060),
(3, 'Zamtel Money', 70000, 0.045),
(4, 'Zanaco', 80000, 0.035),
(5, 'FNB', 80000, 0.040);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TransactionID` varchar(10) NOT NULL,
  `BoothID` int(11) DEFAULT NULL,
  `ServiceID` int(11) DEFAULT NULL,
  `TransactionAmount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`TransactionID`, `BoothID`, `ServiceID`, `TransactionAmount`) VALUES
('WB0000001', 1, 1, 964.00),
('WB0000002', 1, 2, 220.00),
('WB0000003', 2, 2, 582.00),
('WB0000004', 3, 3, 349.00),
('WB0000005', 4, 1, 328.00),
('WB0000006', 3, 2, 192.00),
('WB0000007', 3, 4, 1519.00),
('WB0000008', 4, 3, 1113.00),
('WB0000009', 1, 5, 1999.00),
('WB0000010', 3, 1, 3810.00),
('WB0000011', 6, 3, 3270.00),
('WB0000012', 3, 4, 1092.00),
('WB0000013', 2, 1, 1056.00),
('WB0000014', 3, 1, 509.00),
('WB0000015', 5, 5, 34.00),
('WB0000016', 2, 2, 1658.00),
('WB0000017', 5, 3, 2167.00),
('WB0000018', 3, 1, 2594.00),
('WB0000019', 4, 1, 3656.00),
('WB0000020', 3, 1, 4030.00),
('WB0000021', 3, 4, 989.00),
('WB0000022', 3, 1, 4081.00),
('WB0000023', 4, 1, 925.00),
('WB0000024', 2, 2, 2312.00),
('WB0000025', 3, 4, 3280.00),
('WB0000026', 4, 1, 90.00),
('WB0000027', 5, 5, 2556.00),
('WB0000028', 3, 4, 673.00),
('WB0000029', 4, 2, 4185.00),
('WB0000030', 1, 4, 412.00),
('WB0000031', 1, 2, 310.00),
('WB0000032', 2, 2, 4248.00),
('WB0000033', 3, 1, 4105.00),
('WB0000034', 4, 1, 1147.00),
('WB0000035', 3, 3, 1815.00),
('WB0000036', 3, 4, 1653.00),
('WB0000037', 4, 1, 1045.00),
('WB0000038', 1, 5, 4364.00),
('WB0000039', 3, 2, 2822.00),
('WB0000040', 6, 1, 2046.00),
('WB0000041', 3, 3, 1985.00),
('WB0000042', 2, 2, 3023.00),
('WB0000043', 3, 1, 3728.00),
('WB0000044', 5, 2, 58.00),
('WB0000045', 2, 1, 2744.00),
('WB0000046', 5, 5, 1654.00),
('WB0000047', 3, 1, 1331.00),
('WB0000048', 4, 1, 801.00),
('WB0000049', 3, 2, 967.00),
('WB0000050', 3, 2, 1988.00),
('WB0000051', 3, 1, 3646.00),
('WB0000052', 4, 1, 54.00),
('WB0000053', 2, 3, 2121.00),
('WB0000054', 3, 4, 564.00),
('WB0000055', 4, 1, 1011.00),
('WB0000056', 5, 5, 2950.00),
('WB0000057', 3, 4, 57.00),
('WB0000058', 4, 1, 2382.00),
('WB0000059', 1, 2, 349.00),
('WB0000060', 1, 1, 2479.00),
('WB0000061', 2, 1, 1537.00),
('WB0000062', 3, 3, 2802.00),
('WB0000063', 4, 1, 1290.00),
('WB0000064', 3, 2, 4331.00),
('WB0000065', 3, 4, 1338.00),
('WB0000066', 4, 1, 1477.00),
('WB0000067', 1, 1, 3430.00),
('WB0000068', 3, 2, 451.00),
('WB0000069', 6, 1, 80.00),
('WB0000070', 3, 4, 2002.00),
('WB0000071', 2, 1, 3235.00),
('WB0000072', 3, 2, 4156.00),
('WB0000073', 5, 1, 22.00),
('WB0000074', 2, 1, 2156.00),
('WB0000075', 5, 2, 2267.00),
('WB0000076', 3, 3, 2419.00),
('WB0000077', 4, 1, 1691.00),
('WB0000078', 3, 1, 2736.00),
('WB0000079', 3, 2, 4282.00),
('WB0000080', 3, 3, 2331.00),
('WB0000081', 4, 1, 1405.00),
('WB0000082', 2, 1, 945.00),
('WB0000083', 3, 4, 688.00),
('WB0000084', 4, 1, 189.00),
('WB0000085', 5, 5, 3787.00),
('WB0000086', 3, 4, 3407.00),
('WB0000087', 4, 1, 1105.00),
('WB0000088', 6, 1, 174.00),
('WB0000089', 2, 2, 1440.00),
('WB0000090', 6, 1, 3344.00),
('WB0000091', 2, 1, 2676.00),
('WB0000092', 2, 1, 812.00),
('WB0000093', 3, 4, 4224.00),
('WB0000094', 3, 1, 592.00),
('WB0000095', 3, 1, 1662.00),
('WB0000096', 2, 1, 1915.00),
('WB0000097', 3, 1, 1866.00),
('WB0000098', 6, 2, 4320.00),
('WB0000099', 2, 1, 228.00),
('WB0000100', 6, 1, 3318.00),
('WB0000101', 2, 1, 3615.00),
('WB0000102', 2, 1, 4156.00),
('WB0000103', 3, 3, 1401.00),
('WB0000104', 3, 1, 2014.00),
('WB0000105', 3, 2, 3475.00),
('WB0000106', 2, 2, 2452.00),
('WB0000107', 3, 4, 1720.00),
('WB0000108', 2, 1, 118.00),
('WB0000109', 3, 2, 779.00),
('WB0000110', 4, 1, 1623.00),
('WB0000111', 3, 1, 2679.00),
('WB0000112', 3, 4, 1976.00),
('WB0000113', 4, 1, 974.00),
('WB0000114', 1, 1, 2911.00),
('WB0000115', 3, 4, 279.00),
('WB0000116', 6, 1, 3646.00),
('WB0000117', 3, 2, 855.00),
('WB0000118', 2, 1, 1412.00),
('WB0000119', 3, 1, 2137.00),
('WB0000120', 5, 5, 1800.00),
('WB0000121', 2, 1, 1219.00),
('WB0000122', 5, 5, 3582.00),
('WB0000123', 3, 1, 760.00),
('WB0000124', 4, 2, 2308.00),
('WB0000125', 1, 3, 1941.00),
('WB0000126', 3, 1, 2068.00),
('WB0000127', 6, 2, 4242.00),
('WB0000128', 3, 1, 2587.00),
('WB0000129', 2, 3, 4196.00),
('WB0000130', 3, 1, 1463.00),
('WB0000131', 5, 5, 2199.00),
('WB0000132', 2, 1, 2956.00),
('WB0000133', 5, 5, 1663.00),
('WB0000134', 3, 1, 2525.00),
('WB0000135', 4, 1, 4404.00),
('WB0000136', 3, 2, 1012.00),
('WB0000137', 3, 1, 69.00),
('WB0000138', 3, 1, 4241.00),
('WB0000139', 4, 2, 3379.00),
('WB0000140', 2, 2, 3255.00),
('WB0000141', 3, 4, 1705.00),
('WB0000142', 4, 1, 1039.00),
('WB0000143', 5, 5, 254.00),
('WB0000144', 3, 2, 870.00),
('WB0000145', 4, 2, 772.00),
('WB0000146', 1, 3, 1791.00),
('WB0000147', 3, 1, 3320.00),
('WB0000148', 4, 1, 4185.00),
('WB0000149', 1, 2, 100.00),
('WB0000150', 3, 2, 3794.00),
('WB0000151', 6, 1, 498.00),
('WB0000152', 3, 1, 2566.00),
('WB0000153', 2, 1, 4459.00),
('WB0000154', 3, 1, 3916.00),
('WB0000155', 5, 5, 528.00),
('WB0000156', 2, 5, 2067.00),
('WB0000157', 5, 5, 1119.00),
('WB0000158', 3, 1, 1209.00),
('WB0000159', 4, 1, 1950.00),
('WB0000160', 3, 2, 1268.00),
('WB0000161', 3, 4, 1066.00),
('WB0000162', 3, 1, 4419.00),
('WB0000163', 4, 1, 2065.00),
('WB0000164', 2, 5, 2663.00),
('WB0000165', 3, 1, 2075.00),
('WB0000166', 4, 3, 3284.00),
('WB0000167', 5, 1, 425.00),
('WB0000168', 3, 4, 1856.00),
('WB0000169', 4, 1, 405.00),
('WB0000170', 1, 5, 608.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booths`
--
ALTER TABLE `booths`
  ADD PRIMARY KEY (`BoothID`);

--
-- Indexes for table `booth_services`
--
ALTER TABLE `booth_services`
  ADD KEY `BoothID` (`BoothID`),
  ADD KEY `ServiceID` (`ServiceID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ServiceID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `BoothID` (`BoothID`),
  ADD KEY `ServiceID` (`ServiceID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booths`
--
ALTER TABLE `booths`
  MODIFY `BoothID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ServiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booth_services`
--
ALTER TABLE `booth_services`
  ADD CONSTRAINT `booth_services_ibfk_1` FOREIGN KEY (`BoothID`) REFERENCES `booths` (`BoothID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booth_services_ibfk_2` FOREIGN KEY (`ServiceID`) REFERENCES `services` (`ServiceID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`BoothID`) REFERENCES `booths` (`BoothID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`ServiceID`) REFERENCES `services` (`ServiceID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
