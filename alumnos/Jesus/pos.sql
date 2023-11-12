-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2023 a las 05:21:33
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Accesorios', '2023-11-08 16:33:18'),
(2, 'Ropa', '2023-11-07 22:25:29'),
(3, 'Joyeria', '2023-11-08 16:33:35'),
(4, 'Calzado', '2023-11-08 16:33:49'),
(5, 'Gorras', '2023-11-08 16:34:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `fecha`) VALUES
(1, 'Fernando Garcia', 7086123, 'garciaferchuy@gmail.com', '767-102-5472', 'CD. Altamirano Gro.', '2002-09-05', 1, '2023-11-10 22:54:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '1', 'Cinturon', 'vistas/img/productos/default/anonymous.png', 17, 150, 210, 0, '2023-11-10 22:12:37'),
(2, 1, '2', 'Cartera', 'vistas/img/productos/default/anonymous.png', 20, 100, 140, 0, '2023-11-10 22:01:51'),
(3, 1, '3', 'Reloj', 'vistas/img/productos/default/anonymous.png', 15, 250, 350, 0, '2023-11-10 22:12:53'),
(4, 1, '4', 'Cinturon de piel', 'vistas/img/productos/default/anonymous.png', 10, 300, 420, 0, '2023-11-10 22:13:30'),
(5, 1, '5', 'Cartera de piel', 'vistas/img/productos/default/anonymous.png', 10, 250, 300, 0, '2023-11-10 22:13:11'),
(6, 2, '6', 'Playera Gucci', 'vistas/img/productos/default/anonymous.png', 20, 1400, 1540, 0, '2023-11-10 22:05:30'),
(7, 2, '7', 'Jeans Pantalon ', 'vistas/img/productos/default/anonymous.png', 15, 1500, 1650, 0, '2023-11-10 22:14:30'),
(8, 2, '8', 'Camisa ', 'vistas/img/productos/default/anonymous.png', 20, 300, 420, 0, '2023-11-10 22:16:31'),
(9, 2, '9', 'Playera sin cuello', 'vistas/img/productos/default/anonymous.png', 25, 150, 210, 0, '2023-11-10 22:16:05'),
(10, 2, '10', 'Playera con cuello', 'vistas/img/productos/default/anonymous.png', 15, 230, 345, 0, '2023-11-10 22:17:27'),
(11, 3, '11', 'Anillo', 'vistas/img/productos/default/anonymous.png', 8, 2500, 3500, 0, '2023-11-10 22:29:54'),
(12, 3, '12', 'Cadena', 'vistas/img/productos/default/anonymous.png', 15, 3500, 4900, 0, '2023-11-10 22:30:38'),
(13, 3, '13', 'Esclava', 'vistas/img/productos/default/anonymous.png', 10, 3000, 4200, 0, '2023-11-10 22:31:13'),
(14, 3, '14', 'Aretes', 'vistas/img/productos/default/anonymous.png', 10, 2200, 3300, 0, '2023-11-10 22:33:28'),
(15, 3, '15', 'Cruz Dije', 'vistas/img/productos/default/anonymous.png', 25, 1000, 1400, 0, '2023-11-10 22:36:01'),
(16, 4, '16', 'Tenis Futbol', 'vistas/img/productos/default/anonymous.png', 20, 1500, 2100, 0, '2023-11-10 22:18:58'),
(17, 4, '17', 'Tenis ', 'vistas/img/productos/default/anonymous.png', 15, 1000, 1300, 0, '2023-11-10 22:20:52'),
(18, 4, '18', 'Zapatos', 'vistas/img/productos/default/anonymous.png', 22, 965, 1495.75, 0, '2023-11-10 22:23:21'),
(19, 4, '19', 'Tachones de futbol', 'vistas/img/productos/default/anonymous.png', 10, 1590, 1749, 0, '2023-11-10 22:28:05'),
(20, 4, '20', 'Sandalias', 'vistas/img/productos/default/anonymous.png', 15, 565, 870.1, 0, '2023-11-10 22:29:05'),
(21, 5, '21', 'Gorra negra', 'vistas/img/productos/default/anonymous.png', 15, 350, 490, 0, '2023-11-10 22:37:37'),
(22, 5, '22', 'Gorra Blanca', 'vistas/img/productos/default/anonymous.png', 20, 300, 420, 0, '2023-11-10 22:38:55'),
(23, 5, '23', 'Gato tensor', 'vistas/img/productos/default/anonymous.png', 20, 380, 532, 0, '2023-11-08 17:16:19'),
(24, 5, '24', 'Bass pro shops', 'vistas/img/productos/default/anonymous.png', 25, 500, 750, 0, '2023-11-10 22:40:41'),
(25, 5, '25', 'Gorra Animales', 'vistas/img/productos/default/anonymous.png', 25, 250, 440, 0, '2023-11-10 22:41:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/191.jpg', 1, '2023-11-10 21:59:02', '2023-11-11 02:59:02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
