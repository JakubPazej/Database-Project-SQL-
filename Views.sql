-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2019 at 06:58 PM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `z18241646`
--

-- --------------------------------------------------------

--
-- Table structure for table `consoles`
--

CREATE TABLE `consoles` (
  `price` double DEFAULT NULL,
  `product_id` int(4) DEFAULT NULL,
  `colour` varchar(100) DEFAULT NULL,
  `memory_capacity` varchar(10) DEFAULT NULL,
  `maker` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `consoles_memory`
-- (See below for the actual view)
--
CREATE TABLE `consoles_memory` (
`product_id` int(4)
,`price` double
,`memory_capacity` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `address` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `customer_id` int(7) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `developer_as`
-- (See below for the actual view)
--
CREATE TABLE `developer_as` (
`product_id` int(4)
,`price` double
,`title` varchar(100)
,`developer` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `age` int(11) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `hourly_wage` double DEFAULT NULL,
  `employee_id` int(3) NOT NULL,
  `employee_name` varchar(100) DEFAULT NULL,
  `employee_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_wage`
-- (See below for the actual view)
--
CREATE TABLE `employee_wage` (
`employee_name` varchar(100)
,`age` int(11)
,`gender` varchar(100)
,`hourly_wage` double
);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `product_id` int(4) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `age_rating` varchar(3) DEFAULT NULL,
  `developer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(4) NOT NULL,
  `title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `customer_id` int(7) DEFAULT NULL,
  `product_id` int(4) DEFAULT NULL,
  `sale_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_info`
--

CREATE TABLE `sale_info` (
  `sale_id` int(9) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `employee_id` int(3) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `time` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `consoles_memory`
--
DROP TABLE IF EXISTS `consoles_memory`;

CREATE ALGORITHM=UNDEFINED DEFINER=`z18241646`@`%` SQL SECURITY DEFINER VIEW `consoles_memory`  AS  select `consoles`.`product_id` AS `product_id`,`consoles`.`price` AS `price`,`consoles`.`memory_capacity` AS `memory_capacity` from `consoles` where `consoles`.`product_id` in (select `consoles`.`product_id` from `consoles` where (`consoles`.`price` > 499)) ;

-- --------------------------------------------------------

--
-- Structure for view `developer_as`
--
DROP TABLE IF EXISTS `developer_as`;

CREATE ALGORITHM=UNDEFINED DEFINER=`z18241646`@`%` SQL SECURITY DEFINER VIEW `developer_as`  AS  select `games`.`product_id` AS `product_id`,`games`.`price` AS `price`,`products`.`title` AS `title`,`games`.`developer` AS `developer` from (`games` join `products`) where `games`.`product_id` in (select `games`.`product_id` from `games` where (`games`.`developer` = 'EA')) ;

-- --------------------------------------------------------

--
-- Structure for view `employee_wage`
--
DROP TABLE IF EXISTS `employee_wage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`z18241646`@`%` SQL SECURITY DEFINER VIEW `employee_wage`  AS  select `employee`.`employee_name` AS `employee_name`,`employee`.`age` AS `age`,`employee`.`gender` AS `gender`,`employee`.`hourly_wage` AS `hourly_wage` from `employee` where `employee`.`employee_name` in (select `employee`.`employee_name` from `employee` where (`employee`.`hourly_wage` > 15.99)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consoles`
--
ALTER TABLE `consoles`
  ADD KEY `PK,FK` (`product_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_index` (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD KEY `PK,FK` (`product_id`),
  ADD KEY `games_index` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `FK` (`customer_id`,`product_id`);

--
-- Indexes for table `sale_info`
--
ALTER TABLE `sale_info`
  ADD KEY `PK,FK` (`sale_id`),
  ADD KEY `FK` (`employee_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
