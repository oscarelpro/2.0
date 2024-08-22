-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2024 a las 05:24:37
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_deli`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_delivery`
--

CREATE TABLE `tbl_delivery` (
  `id_edlivery` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `cedula` int(11) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_delivery`
--

INSERT INTO `tbl_delivery` (`id_edlivery`, `nombre`, `apellido`, `cedula`, `telefono`, `direccion`) VALUES
(1, 'oscar', 'lopez', 25213710, '04242585491', 'caricuao');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_entrega`
--

CREATE TABLE `tbl_entrega` (
  `id_entrega` int(11) NOT NULL,
  `id_repartidor` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_entrega`
--

INSERT INTO `tbl_entrega` (`id_entrega`, `id_repartidor`, `id_venta`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_marca`
--

CREATE TABLE `tbl_marca` (
  `id_marca` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_marca`
--

INSERT INTO `tbl_marca` (`id_marca`, `marca`) VALUES
(1, 'BERA'),
(2, 'EMPIRE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_modelo`
--

CREATE TABLE `tbl_modelo` (
  `id_modelo` int(11) NOT NULL,
  `modelo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producto`
--

CREATE TABLE `tbl_producto` (
  `id_producto` int(11) NOT NULL,
  `producto` varchar(30) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_producto`
--

INSERT INTO `tbl_producto` (`id_producto`, `producto`, `precio`, `cantidad`) VALUES
(1, 'telefono', 250, 12),
(2, 'cartera', 50, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_vehiculo`
--

CREATE TABLE `tbl_vehiculo` (
  `id_vehiculo` int(11) NOT NULL,
  `id_delivery` int(11) NOT NULL,
  `placa` varchar(30) NOT NULL,
  `marca` int(11) NOT NULL,
  `modelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_vendedor`
--

CREATE TABLE `tbl_vendedor` (
  `id_vendedor` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `cedula` int(11) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_vendedor`
--

INSERT INTO `tbl_vendedor` (`id_vendedor`, `nombre`, `cedula`, `telefono`, `direccion`) VALUES
(1, 'jose', 123456, '04242591410', 'catia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_venta`
--

CREATE TABLE `tbl_venta` (
  `id_vebta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` float NOT NULL,
  `fecha` date NOT NULL,
  `vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_venta`
--

INSERT INTO `tbl_venta` (`id_vebta`, `id_producto`, `cantidad`, `precio`, `fecha`, `vendedor`) VALUES
(1, 1, 1, 22, '2024-08-19', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_delivery`
--
ALTER TABLE `tbl_delivery`
  ADD PRIMARY KEY (`id_edlivery`);

--
-- Indices de la tabla `tbl_entrega`
--
ALTER TABLE `tbl_entrega`
  ADD PRIMARY KEY (`id_entrega`),
  ADD UNIQUE KEY `id_repartidor` (`id_repartidor`,`id_venta`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `tbl_marca`
--
ALTER TABLE `tbl_marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `tbl_modelo`
--
ALTER TABLE `tbl_modelo`
  ADD PRIMARY KEY (`id_modelo`);

--
-- Indices de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `tbl_vehiculo`
--
ALTER TABLE `tbl_vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD UNIQUE KEY `marca` (`marca`),
  ADD UNIQUE KEY `modelo` (`modelo`),
  ADD KEY `id_delivery` (`id_delivery`);

--
-- Indices de la tabla `tbl_vendedor`
--
ALTER TABLE `tbl_vendedor`
  ADD PRIMARY KEY (`id_vendedor`);

--
-- Indices de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  ADD PRIMARY KEY (`id_vebta`),
  ADD UNIQUE KEY `id_producto` (`id_producto`),
  ADD KEY `vendedor` (`vendedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_delivery`
--
ALTER TABLE `tbl_delivery`
  MODIFY `id_edlivery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_entrega`
--
ALTER TABLE `tbl_entrega`
  MODIFY `id_entrega` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_marca`
--
ALTER TABLE `tbl_marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_modelo`
--
ALTER TABLE `tbl_modelo`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_vehiculo`
--
ALTER TABLE `tbl_vehiculo`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_vendedor`
--
ALTER TABLE `tbl_vendedor`
  MODIFY `id_vendedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  MODIFY `id_vebta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_entrega`
--
ALTER TABLE `tbl_entrega`
  ADD CONSTRAINT `tbl_entrega_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `tbl_venta` (`id_vebta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_vehiculo`
--
ALTER TABLE `tbl_vehiculo`
  ADD CONSTRAINT `tbl_vehiculo_ibfk_1` FOREIGN KEY (`id_delivery`) REFERENCES `tbl_delivery` (`id_edlivery`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_vehiculo_ibfk_2` FOREIGN KEY (`marca`) REFERENCES `tbl_marca` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_vehiculo_ibfk_3` FOREIGN KEY (`modelo`) REFERENCES `tbl_modelo` (`id_modelo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  ADD CONSTRAINT `tbl_venta_ibfk_1` FOREIGN KEY (`vendedor`) REFERENCES `tbl_vendedor` (`id_vendedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_venta_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `tbl_producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
