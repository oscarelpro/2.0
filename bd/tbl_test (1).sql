-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2024 a las 04:13:06
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
-- Base de datos: `tbl_test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_almacen`
--

CREATE TABLE `tbl_almacen` (
  `id_almacen` int(11) NOT NULL,
  `almacen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_almacen`
--

INSERT INTO `tbl_almacen` (`id_almacen`, `almacen`) VALUES
(1, 'terras plaza'),
(2, 'candelaria'),
(3, 'puerto la cruz'),
(4, 'galpon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`id_categoria`, `categoria`) VALUES
(1, 'electronico'),
(2, 'cuidado personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `id_cliente` int(11) NOT NULL,
  `cliente` varchar(20) NOT NULL,
  `cedula` int(11) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`id_cliente`, `cliente`, `cedula`, `telefono`, `correo`) VALUES
(1, 'OSCAR', 25213710, '04242585491', 'loscar630@gmail.com'),
(2, 'dubraska', 25625917, '04242591410', 'dududhu@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_deli`
--

CREATE TABLE `tbl_deli` (
  `id_deli` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `cedula` int(11) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `usu_deli` varchar(20) NOT NULL,
  `p_seguridad` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_deli`
--

INSERT INTO `tbl_deli` (`id_deli`, `nombre`, `cedula`, `pass`, `usu_deli`, `p_seguridad`, `correo`) VALUES
(1, 'oscar', 25213710, '1234', 'loscar630', 'nombre de mi madre', 'loscar630@gmail.com'),
(2, 'keyber', 5416157, '1234', 'elguaro', 'moto', 'horse');

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
(1, 'hp'),
(2, 'sony'),
(3, 'matel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producto`
--

CREATE TABLE `tbl_producto` (
  `id_producto` int(11) NOT NULL,
  `sku` varchar(30) NOT NULL,
  `p_nombre` varchar(30) NOT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL,
  `marca` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `almacen` int(11) NOT NULL,
  `detalle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_producto`
--

INSERT INTO `tbl_producto` (`id_producto`, `sku`, `p_nombre`, `precio`, `stock`, `marca`, `categoria`, `almacen`, `detalle`) VALUES
(1, '12345', 'computadora', 12, 1, 1, 1, 1, ''),
(4, '123456', 'telefono', 24, 12, 2, 1, 1, 'AZUL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registro`
--

CREATE TABLE `tbl_registro` (
  `id_pedido` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `fk_delivery` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registro_delivery`
--

CREATE TABLE `tbl_registro_delivery` (
  `id_pedido` int(11) NOT NULL,
  `id_repartidor` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_roll`
--

CREATE TABLE `tbl_roll` (
  `id_rol` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_roll`
--

INSERT INTO `tbl_roll` (`id_rol`, `tipo`) VALUES
(1, 'admin'),
(2, 'usuario'),
(3, 'master');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tventa`
--

CREATE TABLE `tbl_tventa` (
  `id_tipo` int(11) NOT NULL,
  `t_venta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_tventa`
--

INSERT INTO `tbl_tventa` (`id_tipo`, `t_venta`) VALUES
(1, 'TIENDA'),
(2, 'PICK UP'),
(3, 'DELIVERY'),
(4, 'ENVIO NACIONAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `fk_rool` int(11) NOT NULL,
  `pregunta` varchar(20) NOT NULL,
  `respuesta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`id_usuario`, `usuario`, `pass`, `fk_rool`, `pregunta`, `respuesta`) VALUES
(1, 'oscar', '123456', 1, 'primer nombre', 'oscar'),
(2, 'pedro', '1234', 3, 'hijos', 'santiago'),
(3, 'juan', '111111', 2, 'esposa', 'dubraska'),
(4, 'infante', '123456', 1, 'nombre de mi hijo', 'santiago'),
(5, 'felipe', '1234', 2, 'nombre de mi hijo', 'santi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_venta`
--

CREATE TABLE `tbl_venta` (
  `id_venta` int(11) NOT NULL,
  `fk_producto` int(11) NOT NULL,
  `fk_cliente` int(11) NOT NULL,
  `fk_tipo_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_venta`
--

INSERT INTO `tbl_venta` (`id_venta`, `fk_producto`, `fk_cliente`, `fk_tipo_venta`) VALUES
(1, 1, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_almacen`
--
ALTER TABLE `tbl_almacen`
  ADD PRIMARY KEY (`id_almacen`);

--
-- Indices de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `tbl_deli`
--
ALTER TABLE `tbl_deli`
  ADD PRIMARY KEY (`id_deli`);

--
-- Indices de la tabla `tbl_marca`
--
ALTER TABLE `tbl_marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `marca` (`marca`,`categoria`),
  ADD KEY `almacen` (`almacen`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `tbl_registro`
--
ALTER TABLE `tbl_registro`
  ADD PRIMARY KEY (`id_pedido`),
  ADD UNIQUE KEY `fk_delivery` (`fk_delivery`);

--
-- Indices de la tabla `tbl_registro_delivery`
--
ALTER TABLE `tbl_registro_delivery`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indices de la tabla `tbl_roll`
--
ALTER TABLE `tbl_roll`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tbl_tventa`
--
ALTER TABLE `tbl_tventa`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_rool` (`fk_rool`);

--
-- Indices de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD UNIQUE KEY `fk_producto` (`fk_producto`,`fk_cliente`,`fk_tipo_venta`),
  ADD KEY `fk_cliente` (`fk_cliente`),
  ADD KEY `fk_tipo_venta` (`fk_tipo_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_almacen`
--
ALTER TABLE `tbl_almacen`
  MODIFY `id_almacen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_deli`
--
ALTER TABLE `tbl_deli`
  MODIFY `id_deli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_marca`
--
ALTER TABLE `tbl_marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_registro`
--
ALTER TABLE `tbl_registro`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_registro_delivery`
--
ALTER TABLE `tbl_registro_delivery`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_roll`
--
ALTER TABLE `tbl_roll`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_tventa`
--
ALTER TABLE `tbl_tventa`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD CONSTRAINT `tbl_producto_ibfk_1` FOREIGN KEY (`almacen`) REFERENCES `tbl_almacen` (`id_almacen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_producto_ibfk_2` FOREIGN KEY (`categoria`) REFERENCES `tbl_categoria` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_producto_ibfk_3` FOREIGN KEY (`marca`) REFERENCES `tbl_marca` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_registro`
--
ALTER TABLE `tbl_registro`
  ADD CONSTRAINT `tbl_registro_ibfk_1` FOREIGN KEY (`fk_delivery`) REFERENCES `tbl_deli` (`id_deli`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD CONSTRAINT `tbl_usuario_ibfk_1` FOREIGN KEY (`fk_rool`) REFERENCES `tbl_roll` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_venta`
--
ALTER TABLE `tbl_venta`
  ADD CONSTRAINT `tbl_venta_ibfk_1` FOREIGN KEY (`fk_producto`) REFERENCES `tbl_producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_venta_ibfk_2` FOREIGN KEY (`fk_cliente`) REFERENCES `tbl_clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_venta_ibfk_3` FOREIGN KEY (`fk_tipo_venta`) REFERENCES `tbl_tventa` (`id_tipo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
