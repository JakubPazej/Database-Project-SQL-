-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2019 at 07:50 PM
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

--
-- Triggers `games`
--
DELIMITER $$
CREATE TRIGGER `DeleteGame` AFTER DELETE ON `games` FOR EACH ROW BEGIN
 IF OLD.product_id IN (SELECT product_id FROM products) THEN
  INSERT INTO DeletedGames VALUES(OLD.product_id, OLD.price, OLD.genre, OLD.age_rating, OLD.developer);
 END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `NewGame` AFTER INSERT ON `games` FOR EACH ROW BEGIN
 IF NEW.product_id NOT IN (SELECT product_id FROM products) THEN
  INSERT INTO products(product_id) VALUES(NEW.product_id);
 END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD KEY `PK,FK` (`product_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
