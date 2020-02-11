-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 11, 2020 at 12:35 PM
-- Server version: 5.6.13
-- PHP Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `april_2012`
--

CREATE TABLE IF NOT EXISTS `april_2012` (
  `Datum` date DEFAULT NULL,
  `Opis_vremena` text,
  `Temp_mjerenje1` double DEFAULT NULL,
  `Vlaznost_mjerenje1` int(11) DEFAULT NULL,
  `Temp_mjerenje2` double DEFAULT NULL,
  `Vlaznost_mjerenje2` int(11) DEFAULT NULL,
  `Temp_mjerenje3` double DEFAULT NULL,
  `Vlaznost_mjerenje3` int(11) DEFAULT NULL,
  `Biljeske` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `avgust_2012`
--

CREATE TABLE IF NOT EXISTS `avgust_2012` (
  `Datum` date DEFAULT NULL,
  `Opis_vremena` text,
  `Temp_mjerenje1` double DEFAULT NULL,
  `Vlaznost_mjerenje1` int(11) DEFAULT NULL,
  `Temp_mjerenje2` double DEFAULT NULL,
  `Vlaznost_mjerenje2` int(11) DEFAULT NULL,
  `Temp_mjerenje3` double DEFAULT NULL,
  `Vlaznost_mjerenje3` int(11) DEFAULT NULL,
  `Biljeske` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `decembar_2012`
--

CREATE TABLE IF NOT EXISTS `decembar_2012` (
  `Datum` date DEFAULT NULL,
  `Opis_vremena` text,
  `Temp_mjerenje1` double DEFAULT NULL,
  `Vlaznost_mjerenje1` int(11) DEFAULT NULL,
  `Temp_mjerenje2` double DEFAULT NULL,
  `Vlaznost_mjerenje2` int(11) DEFAULT NULL,
  `Temp_mjerenje3` double DEFAULT NULL,
  `Vlaznost_mjerenje3` int(11) DEFAULT NULL,
  `Biljeske` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `februar_2012`
--

CREATE TABLE IF NOT EXISTS `februar_2012` (
  `Datum` date DEFAULT NULL,
  `Temp_7h` double DEFAULT NULL,
  `Vlaga_7h` int(11) DEFAULT NULL,
  `Temp_12h` double DEFAULT NULL,
  `Vlaga_12h` int(11) DEFAULT NULL,
  `Temp_17h` double DEFAULT NULL,
  `Vlaga_17h` int(11) DEFAULT NULL,
  `Biljeske` text CHARACTER SET utf8 COLLATE utf8_croatian_ci,
  UNIQUE KEY `Datum` (`Datum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `februar_2012`
--

INSERT INTO `februar_2012` (`Datum`, `Temp_7h`, `Vlaga_7h`, `Temp_12h`, `Vlaga_12h`, `Temp_17h`, `Vlaga_17h`, `Biljeske`) VALUES
('2012-02-01', -2.8, 62, -5.3, 65, -6.2, 59, 'Ujutro pretežno vedro sa jakim mrazom. Na kraju dana oblačno. Min temp -12.8 a max -3.3.'),
('2012-02-02', -2.8, 62, -5.3, 65, -6.2, 59, 'U procesu ažuriranja i ovog dijela'),
('2012-02-03', -2.8, 62, -5.3, 65, -6.2, 59, 'U procesu ažuriranja i ovog dijela'),
('2012-02-04', -2.8, 62, -5.3, 65, -6.2, 59, 'U procesu ažuriranja i ovog dijela'),
('2012-02-05', -2.8, 62, -5.3, 65, -6.2, 59, 'U procesu ažuriranja i ovog dijela'),
('2012-02-06', -2.8, 62, -5.3, 65, -6.2, 59, 'U procesu ažuriranja i ovog dijela'),
('2012-02-07', -2.8, 62, -5.3, 65, -6.2, 59, 'U procesu ažuriranja i ovog dijela'),
('2012-02-08', -2.8, 62, -5.3, 65, -6.2, 59, 'U procesu ažuriranja i ovog dijela'),
('2012-02-09', -2.8, 62, -5.3, 65, -6.2, 59, 'U procesu ažuriranja i ovog dijela'),
('2012-02-10', -2.8, 62, -5.3, 65, -6.2, 59, 'U procesu ažuriranja i ovog dijela');

-- --------------------------------------------------------

--
-- Table structure for table `januar_2012`
--

CREATE TABLE IF NOT EXISTS `januar_2012` (
  `Datum` date NOT NULL,
  `Temp_7h` double NOT NULL,
  `Vlaga_7h` int(11) NOT NULL,
  `Temp_12h` double NOT NULL,
  `Vlaga_12h` int(11) NOT NULL,
  `Temp_17h` double NOT NULL,
  `Vlaga_17h` int(11) NOT NULL,
  `Biljeske` text COLLATE utf8_croatian_ci NOT NULL,
  UNIQUE KEY `Datum` (`Datum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `januar_2012`
--

INSERT INTO `januar_2012` (`Datum`, `Temp_7h`, `Vlaga_7h`, `Temp_12h`, `Vlaga_12h`, `Temp_17h`, `Vlaga_17h`, `Biljeske`) VALUES
('2012-01-01', -2.2, 83, 2.5, 82, 3.7, 76, '1. jutro nove godine uz mraz i inje. U toku dana vedro; navečer umjereno oblačno.'),
('2012-01-02', -1.8, 79, 9.1, 77, 4.5, 74, 'Ujutro mraz a tokom dana pretežno vedro i toplije.'),
('2012-01-03', 2.2, 78, 8.2, 78, 3.8, 80, 'Umjereno do pretežno oblačno.'),
('2012-01-04', -1.4, 85, 7.6, 85, 7.6, 82, 'Tokom dana pretežno oblačno; navečer kišovito.'),
('2012-01-05', 2.1, 84, 7.6, 86, 9, 76, 'Pretežno oblačno.'),
('2012-01-06', 2.3, 80, 4.3, 79, 4.8, 69, 'Oblačno; u popodnevnim satima sa slabom kišom.'),
('2012-01-07', 1, 65, 6.4, 60, 1.1, 65, 'Jutro vjetrovito i vedro; malo oblačnije u toku, pa ulaskom u noć ponovo vedro.'),
('2012-01-08', 0.3, 73, 3.9, 74, 0.6, 73, 'Ujutro i prijepodne snijeg; tokom dana porast temperature i prelazak snijega u kišu.');

-- --------------------------------------------------------

--
-- Table structure for table `juli_2012`
--

CREATE TABLE IF NOT EXISTS `juli_2012` (
  `Datum` date DEFAULT NULL,
  `Opis_vremena` text,
  `Temp_mjerenje1` double DEFAULT NULL,
  `Vlaznost_mjerenje1` int(11) DEFAULT NULL,
  `Temp_mjerenje2` double DEFAULT NULL,
  `Vlaznost_mjerenje2` int(11) DEFAULT NULL,
  `Temp_mjerenje3` double DEFAULT NULL,
  `Vlaznost_mjerenje3` int(11) DEFAULT NULL,
  `Biljeske` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `juni_2012`
--

CREATE TABLE IF NOT EXISTS `juni_2012` (
  `Datum` date DEFAULT NULL,
  `Opis_vremena` text,
  `Temp_mjerenje1` double DEFAULT NULL,
  `Vlaznost_mjerenje1` int(11) DEFAULT NULL,
  `Temp_mjerenje2` double DEFAULT NULL,
  `Vlaznost_mjerenje2` int(11) DEFAULT NULL,
  `Temp_mjerenje3` double DEFAULT NULL,
  `Vlaznost_mjerenje3` int(11) DEFAULT NULL,
  `Biljeske` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `maj_2012`
--

CREATE TABLE IF NOT EXISTS `maj_2012` (
  `Datum` date DEFAULT NULL,
  `Opis_vremena` text,
  `Temp_mjerenje1` double DEFAULT NULL,
  `Vlaznost_mjerenje1` int(11) DEFAULT NULL,
  `Temp_mjerenje2` double DEFAULT NULL,
  `Vlaznost_mjerenje2` int(11) DEFAULT NULL,
  `Temp_mjerenje3` double DEFAULT NULL,
  `Vlaznost_mjerenje3` int(11) DEFAULT NULL,
  `Biljeske` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mart_2012`
--

CREATE TABLE IF NOT EXISTS `mart_2012` (
  `Datum` date DEFAULT NULL,
  `Opis_vremena` text,
  `Temp_mjerenje1` double DEFAULT NULL,
  `Vlaznost_mjerenje1` int(11) DEFAULT NULL,
  `Temp_mjerenje2` double DEFAULT NULL,
  `Vlaznost_mjerenje2` int(11) DEFAULT NULL,
  `Temp_mjerenje3` double DEFAULT NULL,
  `Vlaznost_mjerenje3` int(11) DEFAULT NULL,
  `Biljeske` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `novembar_2012`
--

CREATE TABLE IF NOT EXISTS `novembar_2012` (
  `Datum` date DEFAULT NULL,
  `Opis_vremena` text,
  `Temp_mjerenje1` double DEFAULT NULL,
  `Vlaznost_mjerenje1` int(11) DEFAULT NULL,
  `Temp_mjerenje2` double DEFAULT NULL,
  `Vlaznost_mjerenje2` int(11) DEFAULT NULL,
  `Temp_mjerenje3` double DEFAULT NULL,
  `Vlaznost_mjerenje3` int(11) DEFAULT NULL,
  `Biljeske` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oktobar_2012`
--

CREATE TABLE IF NOT EXISTS `oktobar_2012` (
  `Datum` date DEFAULT NULL,
  `Opis_vremena` text,
  `Temp_mjerenje1` double DEFAULT NULL,
  `Vlaznost_mjerenje1` int(11) DEFAULT NULL,
  `Temp_mjerenje2` double DEFAULT NULL,
  `Vlaznost_mjerenje2` int(11) DEFAULT NULL,
  `Temp_mjerenje3` double DEFAULT NULL,
  `Vlaznost_mjerenje3` int(11) DEFAULT NULL,
  `Biljeske` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `septembar_2012`
--

CREATE TABLE IF NOT EXISTS `septembar_2012` (
  `Datum` date DEFAULT NULL,
  `Opis_vremena` text,
  `Temp_mjerenje1` double DEFAULT NULL,
  `Vlaznost_mjerenje1` int(11) DEFAULT NULL,
  `Temp_mjerenje2` double DEFAULT NULL,
  `Vlaznost_mjerenje2` int(11) DEFAULT NULL,
  `Temp_mjerenje3` double DEFAULT NULL,
  `Vlaznost_mjerenje3` int(11) DEFAULT NULL,
  `Biljeske` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
