-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-10-2023 a las 04:12:37
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
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Accesorios', '2023-10-19 04:05:04'),
(2, 'Chamarras', '2023-10-19 04:05:04'),
(3, 'Conjuntos', '2023-10-19 04:05:08'),
(4, 'Playeras', '2023-10-19 04:05:08'),
(5, 'Tenis', '2023-10-19 04:06:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'Anillo', '', 100, 120, 300, 0, '0000-00-00 00:00:00'),
(2, 1, '102', 'Cadena con dije plata', '', 80, 120, 350, 0, '0000-00-00 00:00:00'),
(3, 1, '103', 'Juego de cadena y arretes', '', 50, 200, 400, 0, '0000-00-00 00:00:00'),
(4, 1, '104', 'Gorra varios colores\r\n', '', 70, 120, 250, 0, '0000-00-00 00:00:00'),
(5, 1, '105', 'Gorro varios colores', '', 40, 110, 220, 0, '0000-00-00 00:00:00'),
(6, 2, '201', 'Chamarra negra', '', 300, 250, 550, 0, '0000-00-00 00:00:00'),
(7, 2, '202', 'Chamarra blanca', '', 300, 250, 550, 0, '0000-00-00 00:00:00'),
(8, 2, '203', 'Chamarra gris', '', 300, 250, 550, 0, '0000-00-00 00:00:00'),
(9, 2, '204', 'Chamarra rosa', '', 300, 250, 550, 0, '0000-00-00 00:00:00'),
(10, 2, '205\r\n', 'Chamarra azul', '', 300, 250, 550, 0, '0000-00-00 00:00:00'),
(11, 3, '301', 'Conjunto short y blusa', '', 200, 250, 500, 0, '0000-00-00 00:00:00'),
(12, 3, '302', 'Conjunto negro', '', 200, 300, 650, 0, '0000-00-00 00:00:00'),
(13, 3, '303', 'Conjunto gris\r\n', '', 200, 300, 650, 0, '0000-00-00 00:00:00'),
(14, 3, '304', 'Conjunto blanco', '', 200, 300, 650, 0, '0000-00-00 00:00:00'),
(15, 4, '401', 'Playera negra logo rojo', '', 350, 150, 400, 0, '0000-00-00 00:00:00'),
(16, 4, '402', 'Playera negro logo azul', '', 350, 150, 400, 0, '0000-00-00 00:00:00'),
(17, 4, '403\r\n', 'Playera negra logo blanco', '', 350, 150, 400, 0, '0000-00-00 00:00:00'),
(18, 4, '404', 'Playera negro logo blanco dama', '', 350, 150, 400, 0, '0000-00-00 00:00:00'),
(19, 4, '405', 'Playera negro logo blanco dama', '', 350, 150, 400, 0, '0000-00-00 00:00:00'),
(20, 4, '406', 'Playera negro logo dorado RV', '', 350, 150, 400, 0, '0000-00-00 00:00:00'),
(21, 4, '407', 'Playera negro 2logo blanco RV', '', 350, 150, 400, 0, '0000-00-00 00:00:00'),
(22, 5, '501', 'Tenis Nike blanco logo Rv GeraMX', '', 300, 400, 950, 0, '0000-00-00 00:00:00'),
(23, 5, '502', 'Tenis Nike logo dorado', '', 300, 400, 950, 0, '0000-00-00 00:00:00'),
(24, 5, '503', 'Tenis tipo Jordan  logo blanco', '', 300, 400, 950, 0, '0000-00-00 00:00:00'),
(25, 5, '504', 'Tenis Nike blanco logo negro RV', '', 300, 400, 950, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(2, 'Usuario Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5aub7LdtrTXnn.ZQdALsthndsluPeTbv.a', 'Administrador', 'vistas/img/usuarios/admin/741.jpg', 1, '2023-10-06 21:39:09', '2023-09-25 21:43:27'),
(33, 'Juan Fernando Urrego', 'juan', '$2a$07$asxx54ahjppf45sd87a5au.U/M0caGNRi1j0bgxZqVwBDctNLt11O', 'Vendedor', 'vistas/img/usuarios/juan/251.jpg', 1, '2023-10-17 18:57:30', '2023-10-07 20:05:30'),
(34, 'Julio Gomez', 'julio', '$2a$07$asxx54ahjppf45sd87a5aub5nGP0VwzLwk9mYKNeU59ocPXY/HdwK', 'Especial', 'vistas/img/usuarios/julio/153.png', 1, '2023-10-07 15:09:31', '2023-10-07 20:06:13'),
(35, 'Ana Gonzalez', 'ana', '$2a$07$asxx54ahjppf45sd87a5aub7LdtrTXnn.ZQdALsthndsluPeTbv.a', 'Vendedor', 'vistas/img/usuarios/ana/338.png', 1, '2023-10-07 15:08:56', '2023-10-07 20:06:58'),
(36, 'Maria Velázquez', 'maria', '$2a$07$asxx54ahjppf45sd87a5auJnyEWu2I/LGrsdLfMawEZGMwUWnuJ6a', 'Administrador', 'vistas/img/usuarios/maria/378.jpg', 1, '2023-10-20 23:47:50', '2023-10-07 20:08:05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
