-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-10-2023 a las 00:36:01
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
(33, 'Juan Fernando Urrego', 'juan', '$2a$07$asxx54ahjppf45sd87a5au.U/M0caGNRi1j0bgxZqVwBDctNLt11O', 'Vendedor', 'vistas/img/usuarios/juan/251.jpg', 1, '2023-10-07 15:10:42', '2023-10-07 20:05:30'),
(34, 'Julio Gomez', 'julio', '$2a$07$asxx54ahjppf45sd87a5aub5nGP0VwzLwk9mYKNeU59ocPXY/HdwK', 'Especial', 'vistas/img/usuarios/julio/153.png', 0, '2023-10-07 15:09:31', '2023-10-07 20:06:13'),
(35, 'Ana Gonzalez', 'ana', '$2a$07$asxx54ahjppf45sd87a5aub7LdtrTXnn.ZQdALsthndsluPeTbv.a', 'Vendedor', 'vistas/img/usuarios/ana/338.png', 1, '2023-10-07 15:08:56', '2023-10-07 20:06:58'),
(36, 'Maria Velázquez', 'maria', '$2a$07$asxx54ahjppf45sd87a5auJnyEWu2I/LGrsdLfMawEZGMwUWnuJ6a', 'Especial', 'vistas/img/usuarios/maria/378.jpg', 1, '2023-10-08 19:34:58', '2023-10-07 20:08:05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
