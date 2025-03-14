-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33065
-- Tiempo de generación: 03-03-2025 a las 03:02:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_moviles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistenciaapp`
--

CREATE TABLE `asistenciaapp` (
  `ID` int(11) NOT NULL,
  `nombreCompleto` varchar(50) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistenciaapp`
--

INSERT INTO `asistenciaapp` (`ID`, `nombreCompleto`, `Fecha`) VALUES
(202031072, 'Fabiola Castillo Cuahuizo', '2025-02-09 23:21:50'),
(202031072, 'Fabiola Castillo Cuahuizo', '2025-02-17 12:30:55'),
(202031072, 'Fabiola Castillo Cuahuizo', '2025-02-22 14:46:44'),
(202031072, 'Fabiola Castillo Cuahuizo', '2025-02-24 15:25:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroapp`
--

CREATE TABLE `registroapp` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registroapp`
--

INSERT INTO `registroapp` (`ID`, `nombre`, `apellidos`, `pass`) VALUES
(202031072, 'Fabiola ', 'Castillo Cuahuizo ', '12345'),
(2147483647, 'prueba', 'prueba', '0987');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
