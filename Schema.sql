-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2019 at 07:00 PM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `z18257038`
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

--
-- Dumping data for table `consoles`
--

INSERT INTO `consoles` (`price`, `product_id`, `colour`, `memory_capacity`, `maker`) VALUES
(509, 1, 'BLUE', '500 GB', 'Sonoy'),
(400, 2, 'RED', '540 GB', 'High on Inc.'),
(539, 3, 'PURPLE', '600 GB', 'Xsquare'),
(690, 4, 'YELLOW', '360 GB', 'Aleksksksks Co.'),
(420, 5, 'GREEN', '1000 GB', 'JoeMama Industries'),
(580, 6, 'BLUE', '695 GB', 'Sonoy'),
(300, 7, 'YELLOW', '400 GB', 'Nontendies'),
(895, 8, 'ORANGE', '580 GB', 'Sonoy'),
(500, 9, 'RED', '693 GB', 'Xsquare'),
(501, 10, 'BLUE', '245 GB', 'Sonoy');

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

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`address`, `first_name`, `last_name`, `customer_id`, `email`) VALUES
('Sesame Street', 'Jakuuub', 'McBad', 1, 'SlickDaddy@TheTwoTime.com'),
('Narnia Ave.', 'Oven', 'Ogood', 2, 'BigOven69@gmol.com'),
('Elevn grove Ave.', 'Alex', 'McCummings', 3, 'NotMafia@gmol.com'),
('Trigger making street 69', 'Jessie', 'McCree', 4, 'FastestGunInTheWest@gmol.com'),
('Chinatown 420', 'Anton', 'Antonov', 5, 'AntonAntonov@yuha.com'),
('Serbian gym street 58', 'Paddy', 'Odonoughe', 6, 'PaddyPad@yuha.com'),
('Alpha romero sweets 4', 'Alexis', 'Avocado', 7, 'AvocadoAndy@gmol.com'),
('Ice skating ave 5', 'Tessa', 'Pashe', 8, 'Tessa45@gmol.com'),
('Avocado street 64', 'Juraj', 'Novak', 9, 'mushky@gmol.com'),
('Sesame Street', 'Alibaba', 'Intelligence', 10, 'predictions@yuha.com');

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

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`age`, `gender`, `hourly_wage`, `employee_id`, `employee_name`, `employee_email`) VALUES
(45, 'Male', 15.5, 1, 'Alyks MaBaulls', 'alis45@gmol.com'),
(36, 'Male', 15, 2, 'Yuri Tarted', 'YuriRussia88@gmol.com'),
(24, 'Female', 16, 3, 'Bob Satan', 'BobboBoi@yuha.com'),
(21, 'Male', 17, 4, 'Bobby McJesus Saviour', 'Heavengate69@yuha.com'),
(31, 'Female', 25, 5, 'Jim Oconnell', 'IrishBull84@gmol.com'),
(20, 'Male', 15, 6, 'Gregor Ivanov', 'NotASpy@yuha.com');

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

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`product_id`, `genre`, `price`, `age_rating`, `developer`) VALUES
(11, 'MMO', 25, '18+', 'EA'),
(12, 'RTS', 60, '15+', 'EA'),
(13, 'Battle Royale', 30, '13+', 'Baguette Inc.'),
(14, 'FPS', 25, '15+', 'Bankrupt Inc.'),
(15, 'FPS', 40, '13+', 'Alfons'),
(16, 'MMO', 60, '18+', 'spyrts'),
(17, 'RTS', 5, '15+', 'spillage'),
(18, 'FPS', 25, '13+', 'EA'),
(19, 'RTS', 40, '18+', 'spyrts'),
(20, 'MMORPG', 30, '13+', 'Alfons');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(4) NOT NULL,
  `title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `title`) VALUES
(1, 'Sporos'),
(2, 'JustBattleRoyale'),
(3, 'God of Furry'),
(4, 'GodGamer2'),
(5, 'HardStone'),
(6, 'DatabaseSimulator5'),
(7, 'GiveUsMarks: Survive the Semester 3'),
(8, 'Santa Adventures 3'),
(9, 'Alpha Adventure: The comeback'),
(10, 'Osu2'),
(11, 'PlyStation2'),
(12, 'Octopud'),
(13, 'PolyStation6'),
(14, 'Octopud Pro'),
(15, 'OBox2'),
(16, 'Octopud Slime'),
(17, 'OBox Slime'),
(18, 'PlyStation Slime'),
(19, 'Nontendie Woo'),
(20, 'Nontendie SwitchSwatch');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `customer_id` int(7) DEFAULT NULL,
  `product_id` int(4) DEFAULT NULL,
  `sale_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`customer_id`, `product_id`, `sale_id`) VALUES
(1, 9, 6),
(1, 12, 1),
(1, 17, 9),
(2, 13, 4),
(4, 12, 7),
(5, 16, 8),
(5, 19, 2),
(6, 5, 3),
(8, 5, 5),
(9, 6, 10);

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

--
-- Dumping data for table `sale_info`
--

INSERT INTO `sale_info` (`sale_id`, `date`, `employee_id`, `quantity`, `time`) VALUES
(1, '1-12-2019', 4, 2, '23:56'),
(2, '9-11-2015', 1, 1, '12:16'),
(3, '6-12-2019', 2, 3, '11:58'),
(4, '24-5-2019', 2, 4, '13:17'),
(5, '23-4-2019', 1, 1, '19:27'),
(6, '3-8-2018', 4, 1, '22:22'),
(7, '6-10-2014', 5, 2, '16:36'),
(8, '8-6-2019', 5, 2, '18:54'),
(9, '25-7-2019', 5, 6, '18:31'),
(10, '12-5-2019', 3, 9, '13:33');

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
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD KEY `PK,FK` (`product_id`);

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
