-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-10-2023 a las 23:48:00
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
(4, 'Arte'),
(5, 'Escolar');

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
(1, 1, '101', 'Aspiradora industrial', '', 20, 1500, 2000, 0),
(2, 1, '102', 'Plato flotante', '', 20, 4500, 5000, 0),
(3, 1, '103', 'Compresor de aire', '', 20, 3500, 4000, 0),
(4, 1, '104', 'cortadora de adobe', '', 20, 3200, 3700, 0),
(5, 1, '105', 'cortadora de piso', '', 20, 1500, 2000, 0),
(6, 2, '106', 'disco punta diamante', '', 20, 2000, 2500, 0),
(7, 2, '107', 'Extractor de aire', '', 20, 4000, 4500, 0),
(8, 2, '108', 'Guada?adora', '', 20, 3000, 3500, 0),
(9, 2, '109', 'Hidrolavadora Electrica', '', 20, 3600, 4100, 0),
(10, 2, '110', 'Hidrolavadora Gasolina', '', 20, 1500, 2000, 0),
(11, 3, '111', 'Motobomba gasolina', '', 20, 1600, 2100, 0),
(12, 3, '112', 'Motobomba electrica', '', 20, 1700, 2200, 0),
(13, 3, '113', 'cierra circulaer', '', 20, 2500, 3000, 0),
(14, 3, '114', 'Disco de tugsteno', '', 20, 9600, 10000, 0),
(15, 3, '115', 'Soldadora electrica', '', 20, 1980, 2200, 0),
(16, 4, '116', 'Careta para soldar', '', 20, 3850, 4000, 0),
(17, 4, '117', 'Torre de ilumnicacion', '', 20, 2210, 2500, 0),
(18, 4, '118', 'Martillo demoledor', '', 20, 1500, 2000, 0),
(19, 4, '119', 'Cincel', '', 20, 1500, 2000, 0),
(20, 5, '120', 'Taladro demoledor ', '', 20, 1490, 1900, 0),
(21, 5, '121', 'Martillo cincel', '', 20, 3200, 3700, 0),
(22, 5, '122', 'Taladro percutor', '', 20, 1200, 1700, 0),
(23, 5, '123', 'Bascula', '', 20, 2150, 2600, 0),
(24, 5, '124', 'Pasamanos de seguridad', '', 20, 4500, 5000, 0);

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
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/153.jpg', 1, '2023-10-21 18:00:23', '2023-09-25 21:44:06'),
(20, 'Karla Juarez', 'karla', '$2a$07$asxx54ahjppf45sd87a5au7h1SYmZx5dn51nPghKV7g9XuPyG01yC', 'Vendedor', 'vistas/img/usuarios/karla/918.jpg', 1, '2023-10-05 12:54:42', '2023-09-30 07:39:12'),
(24, 'Ana Gonzalez', 'ana', '$2a$07$asxx54ahjppf45sd87a5auLd2AxYsA/2BbmGKNk2kMChC3oj7V0Ca', 'Vendedor', 'vistas/img/usuarios/ana/653.jpg', 1, '2023-10-05 13:07:01', '2023-10-05 17:55:48'),
(25, 'Juan Fernando Urrego', 'juan', '$2a$07$asxx54ahjppf45sd87a5auwRi.z6UsW7kVIpm0CUEuCpmsvT2sG6O', 'Especial', 'vistas/img/usuarios/juan/588.jpg', 1, '0000-00-00 00:00:00', '2023-10-05 17:56:31'),
(26, 'Elder Pineda', 'elder', '$2a$07$asxx54ahjppf45sd87a5auK/kW3QvJdE4err5ztrzFX6f26VpOuge', 'Administrador', 'vistas/img/usuarios/elder/268.png', 1, '2023-10-10 15:59:13', '2023-10-10 20:58:33');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
