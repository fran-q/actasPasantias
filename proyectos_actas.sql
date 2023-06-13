-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2023 a las 16:35:26
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectos_actas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actas`
--

CREATE TABLE `actas` (
  `id` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `numero` int(10) NOT NULL,
  `comercio` int(11) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `responsable` int(10) NOT NULL,
  `inspector` int(10) NOT NULL,
  `empresa_desinfeccion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_comercio`
--

CREATE TABLE `actividad_comercio` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `actividad_comercio`
--

INSERT INTO `actividad_comercio` (`id`, `descripcion`) VALUES
(1, 'LAVADERO AUTOS'),
(2, 'ROTISERÍA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agentes`
--

CREATE TABLE `agentes` (
  `id` int(11) NOT NULL,
  `legajo` varchar(10) DEFAULT NULL,
  `persona` int(11) DEFAULT NULL,
  `funcion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercios`
--

CREATE TABLE `comercios` (
  `id` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `actividad` int(11) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `titular` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `comercios`
--

INSERT INTO `comercios` (`id`, `nombre`, `email`, `direccion`, `actividad`, `telefono`, `titular`) VALUES
(1, 'RICO', 'rico@rico.com.ar', 'espora 666', 2, '422222', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcion_agente`
--

CREATE TABLE `funcion_agente` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `cuit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `apellido`, `email`, `telefono`, `direccion`, `cuit`) VALUES
(1, 'Juan', 'Perez', 'fedesmi@gmail.com', '444444', 'alberdi', '2022254874');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `created_at`, `updated_at`, `deleted_at`, `password`) VALUES
(1, 'federico@gmail.com', NULL, NULL, NULL, '$2y$10$a2rLgWVWExi87ZkVna//COH5k4/iyUFEL.Uazt/jTlu4XLhOqk5mi'),
(2, 'fede@gmail.com', NULL, NULL, NULL, '$2y$10$oKJuzHPkvQEDUi9jITpSEe3Zvbe598Y/y01X5/XVNMGvOVn38P8F2'),
(3, 'pasantes@gmail.com', NULL, NULL, NULL, '$2y$10$IS4c2igoS5eSBnhDJ8eW9.tuyltz2HbUQpqWf3uvqsomlbabSnraa'),
(6, 'denise@gmail.com', NULL, NULL, NULL, '$2y$10$it54niY715X3P.0CNQmGZ.27n1eds.TUxX3Q/BES9rxxK1pgDkdyO'),
(9, 'francisco@gmail.com', NULL, NULL, NULL, '$2y$10$O9JHQcWyNfEKKH4jPrNMDOlVds0103QEudXk5WKjMMvbcMxQbI7tm');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actas`
--
ALTER TABLE `actas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actas_FK` (`inspector`),
  ADD KEY `actas_FK_1` (`comercio`),
  ADD KEY `actas_FK_2` (`responsable`),
  ADD KEY `actas_FK_3` (`empresa_desinfeccion`);

--
-- Indices de la tabla `actividad_comercio`
--
ALTER TABLE `actividad_comercio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `agentes`
--
ALTER TABLE `agentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ID Inspector` (`id`),
  ADD KEY `agentes_FK` (`persona`),
  ADD KEY `agentes_FK_1` (`funcion`);

--
-- Indices de la tabla `comercios`
--
ALTER TABLE `comercios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ID comerciante` (`id`),
  ADD KEY `comercios_FK` (`actividad`),
  ADD KEY `comercios_FK_1` (`titular`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `funcion_agente`
--
ALTER TABLE `funcion_agente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actas`
--
ALTER TABLE `actas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `actividad_comercio`
--
ALTER TABLE `actividad_comercio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `agentes`
--
ALTER TABLE `agentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comercios`
--
ALTER TABLE `comercios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `funcion_agente`
--
ALTER TABLE `funcion_agente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actas`
--
ALTER TABLE `actas`
  ADD CONSTRAINT `actas_FK` FOREIGN KEY (`inspector`) REFERENCES `agentes` (`id`),
  ADD CONSTRAINT `actas_FK_1` FOREIGN KEY (`comercio`) REFERENCES `comercios` (`id`),
  ADD CONSTRAINT `actas_FK_2` FOREIGN KEY (`responsable`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `actas_FK_3` FOREIGN KEY (`empresa_desinfeccion`) REFERENCES `empresas` (`id`);

--
-- Filtros para la tabla `agentes`
--
ALTER TABLE `agentes`
  ADD CONSTRAINT `agentes_FK` FOREIGN KEY (`persona`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `agentes_FK_1` FOREIGN KEY (`funcion`) REFERENCES `funcion_agente` (`id`);

--
-- Filtros para la tabla `comercios`
--
ALTER TABLE `comercios`
  ADD CONSTRAINT `comercios_FK` FOREIGN KEY (`actividad`) REFERENCES `actividad_comercio` (`id`),
  ADD CONSTRAINT `comercios_FK_1` FOREIGN KEY (`titular`) REFERENCES `personas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
