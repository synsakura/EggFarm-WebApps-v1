-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2019 at 11:54 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_peternakan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_address`
--

CREATE TABLE `tb_address` (
  `id_address` int(11) NOT NULL,
  `street` varchar(30) NOT NULL,
  `rt` int(11) NOT NULL,
  `rw` int(11) NOT NULL,
  `village` varchar(30) NOT NULL,
  `districts` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_address`
--

INSERT INTO `tb_address` (`id_address`, `street`, `rt`, `rw`, `village`, `districts`, `city`, `zip_code`, `username`) VALUES
(1, 'Jalan Kesadaran', 2, 1, 'Cipinang', 'Jatinegara', 'Jakarta', 13420, 'google123'),
(2, 'jalanan', 23, 11, 'cipinang', 'jatinegara', 'jakarta', 13420, 'jancuk123');

-- --------------------------------------------------------

--
-- Table structure for table `tb_agent`
--

CREATE TABLE `tb_agent` (
  `id_agent` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `shop` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_booking`
--

CREATE TABLE `tb_booking` (
  `id_booking` varchar(30) NOT NULL,
  `id_agent` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `id_address` varchar(30) NOT NULL,
  `id_courier` varchar(30) NOT NULL,
  `id_product` varchar(30) NOT NULL,
  `order_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_courier`
--

CREATE TABLE `tb_courier` (
  `id_courier` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `vehicle` varchar(30) NOT NULL,
  `plat_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `id_product` varchar(30) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `username` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(70) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`username`, `fname`, `lname`, `email`, `password`, `type`) VALUES
('google123', 'google', 'indonesia', 'google@gmail.com', 'c822c1b63853ed273b89687ac505f9fa', 'agent'),
('jancuk123', 'jancuk', 'fc', 'jancuk@gmail.com', '42059b2e8bd844a3f8de2beb91a14993', 'agent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_address`
--
ALTER TABLE `tb_address`
  ADD PRIMARY KEY (`id_address`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `tb_agent`
--
ALTER TABLE `tb_agent`
  ADD PRIMARY KEY (`id_agent`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `tb_booking`
--
ALTER TABLE `tb_booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `tb_courier`
--
ALTER TABLE `tb_courier`
  ADD PRIMARY KEY (`id_courier`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_address`
--
ALTER TABLE `tb_address`
  MODIFY `id_address` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_address`
--
ALTER TABLE `tb_address`
  ADD CONSTRAINT `tb_address_ibfk_1` FOREIGN KEY (`username`) REFERENCES `tb_users` (`username`);

--
-- Constraints for table `tb_agent`
--
ALTER TABLE `tb_agent`
  ADD CONSTRAINT `tb_agent_ibfk_1` FOREIGN KEY (`username`) REFERENCES `tb_users` (`username`);

--
-- Constraints for table `tb_courier`
--
ALTER TABLE `tb_courier`
  ADD CONSTRAINT `tb_courier_ibfk_1` FOREIGN KEY (`username`) REFERENCES `tb_users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
