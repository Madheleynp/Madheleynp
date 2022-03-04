-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 04-03-2022 a las 18:16:29
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cur_amigos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre_de_Usuario` varchar(100) DEFAULT NULL,
  `Amigos` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Relación_de_Usuarios` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`Id_Usuario`, `Nombre_de_Usuario`, `Amigos`, `Relación_de_Usuarios`) VALUES
(1, 'Madheleyn Perez', 'Valentina Espinoza\r\nAndrea Agamez\r\nAlfonso Lopez\r\nÁngel Zambrano\r\n\r\n', '2\r\n'),
(2, 'Valentina Espinoza', '\r\nMadheleyn Perez\r\nPaola Ramirez\r\nJosefa Valencia', '1'),
(3, 'Mayherlis Perez', 'No 0\r\n', 'NINGUNA'),
(4, 'Magnolia Redondo', 'no 0', 'NINGUNA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuarios` int(11) DEFAULT NULL,
  `Estado_de_la_solicitud` varchar(10) NOT NULL,
  `Respuesta_de_la_solicitud` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuarios`, `Estado_de_la_solicitud`, `Respuesta_de_la_solicitud`) VALUES
(1, 'Enviada', 'Aceptada'),
(2, 'Recibida', 'Aceptada'),
(3, 'Recibida', 'Rechazada'),
(4, 'Enviada', 'Rechazada');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD KEY `Id_Usuarios` (`Id_Usuarios`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Id_Usuarios`) REFERENCES `solicitud` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
