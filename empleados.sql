-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 27, 2021 at 10:17 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empleados`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
CREATE TABLE IF NOT EXISTS `areas` (
  `idareas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`idareas`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`idareas`, `nombre`) VALUES
(1, 'TI'),
(2, 'Contabilidad'),
(3, 'Cartera'),
(4, 'Recursos Humanos');

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE IF NOT EXISTS `empleados` (
  `idEmpleados` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  `boletin` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `areas_idareas` int(11) NOT NULL,
  PRIMARY KEY (`idEmpleados`,`areas_idareas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`idEmpleados`, `nombre`, `email`, `sexo`, `boletin`, `descripcion`, `areas_idareas`) VALUES
(2, 'Edwin Ortega', 'ebor94@hotmail.com', 'M', 1, 'Ingeniero de sistemas', 1),
(3, 'Brandon Ortega', 'ebor94@hotmail.com', 'M', 1, 'Ingeniero de sistemas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `idRoles` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idRoles`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`idRoles`, `nombre`) VALUES
(1, 'Director'),
(2, 'Auxiliar'),
(3, 'Desarrollador');

-- --------------------------------------------------------

--
-- Table structure for table `roles_has_empleados`
--

DROP TABLE IF EXISTS `roles_has_empleados`;
CREATE TABLE IF NOT EXISTS `roles_has_empleados` (
  `Roles_idRoles` int(11) NOT NULL,
  `Empleados_idEmpleados` int(11) NOT NULL,
  `areas_idAreas` int(11) NOT NULL,
  PRIMARY KEY (`Roles_idRoles`,`Empleados_idEmpleados`,`areas_idAreas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_has_empleados`
--

INSERT INTO `roles_has_empleados` (`Roles_idRoles`, `Empleados_idEmpleados`, `areas_idAreas`) VALUES
(3, 1, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
