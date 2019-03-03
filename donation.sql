-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 03, 2019 at 11:43 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `amount` double NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `t_key` varchar(50) NOT NULL,
  `paystack_ref` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_key` (`t_key`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `uid`, `amount`, `status`, `created_at`, `updated_at`, `t_key`, `paystack_ref`) VALUES
(00000000016, 1, 1000, 1, '2019-03-03 07:32:46', '2019-03-03 07:34:16', '155159836603-03-2019-1', '155159834580'),
(00000000017, 1, 1000, 1, '2019-03-03 07:49:31', '2019-03-03 07:50:21', '155159937103-03-2019-1', '155159935080'),
(00000000018, 1, 5000, 1, '2019-03-03 08:13:15', '2019-03-03 08:14:04', '155160079503-03-2019-1', '155160077480'),
(00000000019, 1, 1000, 1, '2019-03-03 11:37:59', '2019-03-03 11:39:09', '155161307903-03-2019-1', '155161305880');

-- --------------------------------------------------------

--
-- Table structure for table `usr`
--

DROP TABLE IF EXISTS `usr`;
CREATE TABLE IF NOT EXISTS `usr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `pwd` varchar(100) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usr`
--

INSERT INTO `usr` (`id`, `name`, `email`, `pwd`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Victor Frank', 'vickfranks@gmail.com', 'life', '2019-03-01 22:07:26', '2019-03-01 22:07:26', 0),
(2, 'vick frank', 'vickfrank@gmail.com', 'life', '2019-03-01 22:44:19', '2019-03-01 22:44:19', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
