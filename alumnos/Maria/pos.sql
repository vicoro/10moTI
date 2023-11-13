-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-11-2023 a las 03:37:32
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
(1, 'Accesorios ', '2023-10-19 04:05:04'),
(2, 'Chamarras', '2023-10-19 04:05:04'),
(3, 'Conjuntos', '2023-10-19 04:05:08'),
(4, 'Playeras', '2023-10-19 04:05:08'),
(5, 'Tenis', '2023-10-19 04:06:14'),
(6, 'Sudaderas', '2023-10-29 03:12:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'Juan Villegas', 8161123, 'juan@hotmail.com', '(301) 391-3456', 'Calle 45F #23 - 4s', '2023-11-03', 3, '2023-11-13 04:24:54', '2023-11-04 04:40:00'),
(5, 'Maria Velazquez', 101, 'maria@hotmail.com', '(767) 104-7745', 'Calle Agustin de Iturbide #18 Col. Lazaro Cardenas ', '1997-05-30', 2, '2023-11-12 05:31:45', '2023-11-06 01:04:26'),
(7, 'Angelica López', 8161456, 'angelica@gamil.com', '(331) 345-6789', 'Carretera 34 #25 - 45', '1982-07-09', -3, '2023-11-13 04:26:47', '2023-11-06 01:24:20'),
(8, 'Luis Manra', 12345, 'luis@hotmail.com', '(732) 120-2434', 'Arcelia', '1997-01-29', 4, '2023-11-13 03:55:54', '2023-11-12 04:36:46');

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
(34, 1, '101', 'Anillo Gera MX', 'vistas/img/productos/101/115.jpg', 12, 250, 350, 3, '2023-10-29 02:36:58'),
(35, 1, '102', 'Cadena plata', 'vistas/img/productos/102/620.jpg', 76, 150, 210, 4, '2023-10-29 02:46:55'),
(36, 1, '103', 'Juego de cadena y aretes', 'vistas/img/productos/103/227.jpg', 49, 250, 350, 1, '2023-10-29 02:48:43'),
(37, 1, '104', 'Gorra varios colores', 'vistas/img/productos/104/538.jpg', 70, 150, 210, 0, '2023-10-29 02:49:33'),
(38, 1, '105', 'Gorro varios colores', 'vistas/img/productos/105/421.jpg', 50, 150, 210, 1, '2023-10-29 02:50:27'),
(39, 2, '201', 'Chamarra Negra', 'vistas/img/productos/201/258.jpg', 299, 250, 350, 1, '2023-10-29 02:54:45'),
(40, 2, '202', 'Chamarra Blanca', 'vistas/img/productos/202/583.jpg', 300, 250, 350, 0, '2023-10-29 02:55:15'),
(41, 2, '203', 'Chamarra Rosa', 'vistas/img/productos/203/526.jpg', 300, 250, 350, 0, '2023-10-29 02:56:07'),
(42, 2, '204', 'Chamarra Azul Rey', 'vistas/img/productos/204/621.jpg', 300, 250, 350, 0, '2023-10-29 02:57:04'),
(43, 3, '301', 'Conjunto de short y blusa', 'vistas/img/productos/301/156.jpg', 200, 300, 420, 0, '2023-10-29 02:58:05'),
(44, 3, '302', 'Conjunto Negro', 'vistas/img/productos/302/208.jpg', 200, 350, 490, 0, '2023-10-29 02:59:07'),
(45, 3, '303', 'Conjunto Gris', 'vistas/img/productos/303/922.jpg', 200, 350, 490, 0, '2023-10-29 02:59:33'),
(46, 3, '304', 'Conjunto Blanco', 'vistas/img/productos/304/614.jpg', 200, 350, 490, 0, '2023-10-29 03:00:08'),
(47, 4, '401', 'Playera Negra logo rojo', 'vistas/img/productos/401/913.jpg', 350, 250, 350, 0, '2023-10-29 03:01:07'),
(48, 4, '402', 'Playera Negra logo azul', 'vistas/img/productos/402/777.jpg', 350, 250, 350, 0, '2023-10-29 03:02:02'),
(49, 4, '403', 'Playera Negra logo blanco ', 'vistas/img/productos/403/236.jpg', 350, 250, 350, 0, '2023-10-29 03:02:59'),
(50, 4, '404', 'Playera Negra logo blanco dama', 'vistas/img/productos/404/957.jpg', 350, 250, 350, 0, '2023-10-29 03:04:08'),
(51, 4, '405', 'Playera Negra logo blanco dama', 'vistas/img/productos/405/588.jpg', 350, 250, 350, 0, '2023-10-29 03:04:49'),
(52, 4, '406', 'Playera Negra Dorado', 'vistas/img/productos/406/415.jpg', 350, 250, 350, 0, '2023-10-29 03:05:20'),
(53, 4, '407', 'Playera Negra 2 logos', 'vistas/img/productos/407/260.jpg', 350, 250, 350, 0, '2023-10-29 03:07:16'),
(54, 5, '501', 'Tenis Nike blanco 2 logo GeraMx', 'vistas/img/productos/501/823.jpg', 299, 550, 770, 1, '2023-10-29 03:08:23'),
(55, 5, '502', 'Tenis Nike blanco logo dorado', 'vistas/img/productos/502/663.jpg', 300, 550, 770, 0, '2023-10-29 03:09:14'),
(56, 5, '503', 'Tenis Nike Jordan logo blanco', 'vistas/img/productos/503/122.jpg', 300, 550, 770, 0, '2023-10-29 03:10:06'),
(57, 5, '504', 'Tenis Nike blanco logo negro RV', 'vistas/img/productos/504/523.jpg', 300, 550, 770, 0, '2023-10-29 03:10:46'),
(58, 6, '601', 'Sudadera Negra RV ', 'vistas/img/productos/601/410.jpg', 250, 300, 420, 0, '2023-10-29 03:15:48'),
(59, 6, '602', 'Sudadera Blanca RV ', 'vistas/img/productos/602/931.jpg', 250, 300, 420, 0, '2023-10-29 03:16:53'),
(60, 6, '603', 'Sudadera Negra 2 logos RV ', 'vistas/img/productos/603/847.jpg', 250, 300, 420, 0, '2023-10-29 03:17:42'),
(61, 6, '604', 'Sudadera negro y blanco 2 logos RV ', 'vistas/img/productos/604/899.jpg', 250, 300, 420, 0, '2023-10-29 03:18:24');

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
(2, 'Usuario Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5aub7LdtrTXnn.ZQdALsthndsluPeTbv.a', 'Administrador', 'vistas/img/usuarios/admin/621.png', 1, '2023-10-06 21:39:09', '2023-09-25 21:43:27'),
(33, 'Juan Fernando Urrego', 'juan', '$2a$07$asxx54ahjppf45sd87a5aub7LdtrTXnn.ZQdALsthndsluPeTbv.a', 'Vendedor', 'vistas/img/usuarios/juan/213.png', 1, '2023-10-17 18:57:30', '2023-10-07 20:05:30'),
(34, 'Julio Gomez', 'julio', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 'Especial', 'vistas/img/usuarios/julio/585.jpg', 1, '2023-10-28 00:32:14', '2023-10-07 20:06:13'),
(35, 'Ana Gonzalez', 'ana', '$2a$07$asxx54ahjppf45sd87a5auzGfz9GaOjSPJ5jEDpHii9vSQEEqY1Zm', 'Vendedor', 'vistas/img/usuarios/ana/101.jpg', 1, '2023-11-12 22:25:53', '2023-10-07 20:06:58'),
(43, 'Maria Velazquez', 'maria', '$2a$07$asxx54ahjppf45sd87a5auJnyEWu2I/LGrsdLfMawEZGMwUWnuJ6a', 'Administrador', 'vistas/img/usuarios/maria/278.jpg', 1, '2023-11-12 22:27:41', '2023-10-28 05:33:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`) VALUES
(18, 10002, 8, 43, '[{\"id\":\"34\",\"descripcion\":\"Anillo Gera MX\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"350\",\"total\":\"350\"},{\"id\":\"35\",\"descripcion\":\"Cadena plata\",\"cantidad\":\"1\",\"stock\":\"78\",\"precio\":\"210\",\"total\":\"210\"}]', 56, 560, 616, 'TC-4152313914894683'),
(19, 10003, 1, 43, '[{\"id\":\"35\",\"descripcion\":\"Cadena plata\",\"cantidad\":\"1\",\"stock\":\"77\",\"precio\":\"210\",\"total\":\"210\"},{\"id\":\"34\",\"descripcion\":\"Anillo Gera MX\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"350\",\"total\":\"350\"},{\"id\":\"36\",\"descripcion\":\"Juego de cadena y aretes\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"350\",\"total\":\"350\"}]', 91, 910, 1001, 'TD-4152313914894683'),
(20, 10004, 7, 35, '[{\"id\":\"35\",\"descripcion\":\"Cadena plata\",\"cantidad\":\"1\",\"stock\":\"76\",\"precio\":\"210\",\"total\":\"210\"},{\"id\":\"38\",\"descripcion\":\"Gorro varios colores\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"210\",\"total\":\"210\"}]', 42, 420, 462, 'Efectivo');

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
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
