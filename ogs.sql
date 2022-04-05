-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2022 at 11:29 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uname` varchar(200) NOT NULL,
  `passwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `passwd`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `pid` int(11) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `ctype` varchar(200) NOT NULL,
  `ptype` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `cname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `fname` varchar(200) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobileno` varchar(200) NOT NULL,
  `adhaar` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`fname`, `mname`, `lname`, `username`, `password`, `address`, `mobileno`, `adhaar`, `email`) VALUES
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('shlok', 'mahadev', 'yadav', 'vtupe@gmail.com', 'hello123', 'bhavani peth', '7558461546', '755896587458', 'vtupe171@gmail.com'),
('shlok', 'mahadev', 'yadav', 'vtupe@gmail.com', 'hello123', 'bhavani peth', '7558461546', '755896587458', 'vtupe171@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `pid` int(11) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `ctype` varchar(200) NOT NULL,
  `ptype` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`pid`, `pname`, `ctype`, `ptype`, `qty`, `unit`, `rate`, `cname`, `flag`) VALUES
(6, 'ponds', 'Cosmetics', 'purple', 1, 'number', 55, 'vtupe@gmail.com', 1),
(4, 'rice', 'Grocery', 'ambemohor', 1, 'kg', 55, 'vtupe@gmail.com', 0),
(5, 'wheat', 'Grocery', 'lahu', 10, 'kg', 32, 'vtupe@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoiceid` int(11) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `transactionid` varchar(200) NOT NULL,
  `mop` varchar(200) NOT NULL,
  `dateofp` varchar(200) NOT NULL,
  `amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceid`, `cname`, `transactionid`, `mop`, `dateofp`, `amt`) VALUES
(15, 'vtupe@gmail.com', 'hello123', 'googlepay', '2022-01-23', 55);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `ctype` varchar(200) NOT NULL,
  `ptype` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `ctype`, `ptype`, `qty`, `unit`, `rate`) VALUES
(4, 'rice', 'Grocery', 'ambemohor', 1500, 'kg', 55),
(5, 'wheat', 'Grocery', 'lahu', 500, 'kg', 32),
(6, 'ponds', 'Cosmetics', 'purple', 50, 'number', 54);

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `qid` int(11) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `ctype` varchar(200) NOT NULL,
  `ptype` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `dateofq` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`qid`, `pname`, `ctype`, `ptype`, `qty`, `unit`, `rate`, `uname`, `status`, `dateofq`) VALUES
(11, 'rice', 'Grocery', 'ambemohor', 500, 'kg', 28, 'ganesh0633@gmail.com', 2, '2021-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `spayment`
--

CREATE TABLE `spayment` (
  `pid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `ctype` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `date` varchar(200) NOT NULL,
  `tid` varchar(200) NOT NULL,
  `mop` varchar(200) NOT NULL,
  `ptype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spayment`
--

INSERT INTO `spayment` (`pid`, `qid`, `pname`, `ctype`, `qty`, `unit`, `rate`, `sname`, `status`, `date`, `tid`, `mop`, `ptype`) VALUES
(4, 11, 'rice', 'Grocery', 500, 'kg', 28, 'ganesh0633@gmail.com', 2, '2021-08-08', '123456', 'google pay', 'ambemohor'),
(5, 11, 'rice', 'Grocery', 500, 'kg', 28, 'ganesh0633@gmail.com', 2, '2021-08-08', '', '', 'ambemohor');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `fname` varchar(200) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobileno` varchar(200) NOT NULL,
  `adhaar` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`fname`, `mname`, `lname`, `username`, `password`, `address`, `mobileno`, `adhaar`, `email`) VALUES
('metew', 's', 'hw', 'hello@123.com', 'hello123', 'navi peth', '8596654585', '755896587458', 'hello@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `spayment`
--
ALTER TABLE `spayment`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoiceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `spayment`
--
ALTER TABLE `spayment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
