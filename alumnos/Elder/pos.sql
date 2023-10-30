-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-10-2023 a las 00:49:34
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
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'Escritura'),
(2, 'Papel'),
(3, 'Oficina'),
(4, 'Organizacion'),
(5, 'Embalaje');

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
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`) VALUES
(1, 1, '101', 'Lapiz', 'vistas/img/productos/101/225.png', 20, 1500, 1950, 0),
(2, 1, '102', 'Lapicero Bic', 'vistas/img/productos/102/145.png', 20, 4500, 5400, 0),
(3, 1, '103', 'Colores', 'vistas/img/productos/103/906.png', 20, 3500, 3675, 0),
(6, 2, '106', 'Hojas Blancas', 'vistas/img/productos/106/599.png', 15, 2000, 2540, 0),
(7, 2, '107', 'Opalina', 'vistas/img/productos/107/208.png', 20, 4000, 5400, 0),
(8, 2, '108', 'Hojas de color', 'vistas/img/productos/108/828.png', 20, 2950, 3363, 0),
(9, 2, '109', 'Cartulina', 'vistas/img/productos/109/711.png', 20, 3600, 4100, 0),
(10, 2, '110', 'Fichas bibliograficas', 'vistas/img/productos/110/494.png', 20, 1500, 2000, 0),
(11, 2, '111', 'Hojas milimetricas', 'vistas/img/productos/111/204.png', 10, 100, 130, 0),
(12, 3, '112', 'Engrapadora', 'vistas/img/productos/112/670.png', 20, 1700, 2200, 0),
(13, 3, '113', 'Perforadora', 'vistas/img/productos/113/190.png', 20, 2500, 3000, 0),
(14, 3, '114', 'Grapas', 'vistas/img/productos/114/361.png', 20, 9600, 10000, 0),
(15, 3, '115', 'Clips', 'vistas/img/productos/115/587.png', 20, 1980, 2200, 0),
(27, 5, '501', 'Cinta canela', 'vistas/img/productos/501/413.png', 20, 800, 1040, 0),
(28, 5, '502', 'Cinta adhesiva', 'vistas/img/productos/502/423.png', 10, 300, 420, 0),
(29, 4, '401', 'Carpeta', 'vistas/img/productos/401/318.png', 18, 245, 343, 0);

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
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/538.jpg', 1, '2023-10-29 19:45:26', '2023-09-25 21:44:06'),
(24, 'Ana Gonzalez', 'ana', '$2a$07$asxx54ahjppf45sd87a5auLd2AxYsA/2BbmGKNk2kMChC3oj7V0Ca', 'Vendedor', 'vistas/img/usuarios/ana/875.png', 1, '2023-10-05 13:07:01', '2023-10-05 17:55:48'),
(27, 'Carmen Pineda', 'carmen', '$2a$07$asxx54ahjppf45sd87a5auU.7XJYQrZScY96s9MPVNgh6SXWD95a6', 'Administrador', 'vistas/img/usuarios/carmen/371.jpg', 1, '2023-10-26 18:15:05', '2023-10-26 23:13:53'),
(33, 'Lauro Perez', 'lauro', '$2a$07$asxx54ahjppf45sd87a5aue2Pl9yDwLnSeE2dYXQHSEgi5YKTjtuy', 'Administrador', 'vistas/img/usuarios/lauro/750.png', 1, '0000-00-00 00:00:00', '2023-10-26 23:44:33'),
(34, 'Oscar Arellano', 'oscar', '$2a$07$asxx54ahjppf45sd87a5au/bu4Ick41GRhbhIEPg0Nvajd22gNWwy', 'Administrador', 'vistas/img/usuarios/oscar/980.png', 1, '0000-00-00 00:00:00', '2023-10-27 00:36:03'),
(35, 'Elder Pineda', 'elder', '$2a$07$asxx54ahjppf45sd87a5auK/kW3QvJdE4err5ztrzFX6f26VpOuge', 'Especial', 'vistas/img/usuarios/elder/413.jpg', 1, '2023-10-26 19:47:41', '2023-10-27 00:47:21'),
(36, 'maria velazquez', 'maria', '$2a$07$asxx54ahjppf45sd87a5au/styESZTpqxpFPzgJF99YaIo877LNdy', 'Administrador', '', 0, '0000-00-00 00:00:00', '2023-10-30 00:46:55');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
