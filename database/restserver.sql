DROP DATABASE IF EXISTS `restserver`;
CREATE DATABASE IF NOT EXISTS `restserver`;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-11-2021 a las 21:10:51
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restserver`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'qwe', 'qwe', '1636919942', '1636919942'),
(2, 11, 'qwerty', 'qwerty', '1636919942', '1636919942'),
(3, 10, 'asdfg', 'asdfg', '1636919942', '1636919942'),
(4, 12, 'qwerty', 'qwerty', '1636919942', '1636919942');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` text NOT NULL,
  `created_at` varchar(20) NOT NULL,
  `updated_at` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `full_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', 'c93ccd78b2076528346216b3b2f701e6', 'admin admin', '1636919942', '1636919942'),
(2, 'manuel', 'manuel@admin.com', 'manuel1234', 'manuel admin', '', ''),
(3, 'soto', 'soto@admin.com', 'soto1234', 'soto admin', '', ''),
(4, 'luffy', 'luffy@admin.com', 'luffy1234', 'luffy admin', '', ''),
(5, 'zoro', 'zoro@admin.com', 'zoro1234', 'zoro admin', '', ''),
(6, 'sanji', 'sanji@admin.com', 'sanji1234', 'sanji admin', '', ''),
(7, 'nami', 'nami@admin.com', 'nami1234', 'nami admin', '', ''),
(8, 'robin', 'robin@admin.com', 'robin1234', 'robin admin', '', ''),
(9, 'rogger', 'rogger@admin.com', 'rogger1234', 'rogger admin', '', ''),
(10, 'pruebaAAAAA', 'pruebaAAAAA@admin.com', '33311d7f97c82d34b362d55aebe3a602', 'prueba pruebaAAA', '1636775074', '1636775074'),
(11, 'mahp', 'mahp1234@admin.com', '8181852a737a0c13ac75dc80b6b82601', 'manuel henriquez', '1636913287', '1636913287'),
(12, 'sabo', 'sabo@admin.com', '2838a174ade19608f3e4e69adfdbf711', 'sabo', '1636919480', '1636919480');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
