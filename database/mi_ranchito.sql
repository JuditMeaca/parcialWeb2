-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2020 a las 01:25:01
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mi_ranchito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `residencial` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `barrio`
--

INSERT INTO `barrio` (`id`, `nombre`, `residencial`) VALUES
(1, 'El Jardin', 0),
(2, 'Golf', 1),
(3, 'Fuerte Apache', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casa`
--

CREATE TABLE `casa` (
  `id` int(11) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `cantidad_habitaciones` int(11) NOT NULL,
  `dimension_terreno` varchar(20) DEFAULT NULL,
  `precio` int(11) NOT NULL,
  `id_barrio_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `casa`
--

INSERT INTO `casa` (`id`, `estado`, `direccion`, `cantidad_habitaciones`, `dimension_terreno`, `precio`, `id_barrio_fk`) VALUES
(1, 'remodelada', 'Los Rosales 120', 2, '10x30', 100000, 1),
(2, 'nueva', 'Bolivar 1208', 3, '20x50', 800000, 2),
(3, 'usada', 'Los Sauces 401', 1, '10x40', 70000, 1),
(4, 'usada', 'Sangria 785', 1, '10*20', 300000, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `casa`
--
ALTER TABLE `casa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barrio_fk` (`id_barrio_fk`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `barrio`
--
ALTER TABLE `barrio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `casa`
--
ALTER TABLE `casa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `casa`
--
ALTER TABLE `casa`
  ADD CONSTRAINT `casa_ibfk_1` FOREIGN KEY (`id_barrio_fk`) REFERENCES `barrio` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
