-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2023 a las 03:21:35
-- Versión del servidor: 10.1.39-MariaDB
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
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `numero_control` varchar(30) NOT NULL,
  `semestre` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `turno` varchar(10) NOT NULL,
  `sexo` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `numero_control`, `semestre`, `edad`, `turno`, `sexo`) VALUES
(1, 'Beltran Duarte Paulet Mariana', '21325061070363', 5, 17, 'Vespertino', 0),
(2, 'Garcia Leyva Leonardo David', '21325067070484', 5, 17, 'Vespertino', 1),
(3, 'Apodaca Morales Hasly Kamila', '21325067070423', 5, 17, 'Vespertino', 0),
(4, 'Campos Rodriguez Hector Javier', '21325067070468', 5, 17, 'Vespertino', 1),
(5, 'Rocha Magana Ruben', '21325061070254', 5, 17, 'Vespertino', 1),
(6, 'Castro Samaniego Evelyn Melissa', '21325061070308', 5, 17, 'Vespertino', 0),
(8, 'Rocha Nunez Miriam Guadalupe', '21325061070551', 5, 17, 'Vespertino', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_materias`
--

CREATE TABLE `alumno_materias` (
  `id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno_materias`
--

INSERT INTO `alumno_materias` (`id`, `alumno_id`, `materia_id`) VALUES
(3, 8, 3),
(4, 8, 4),
(5, 1, 1),
(6, 1, 3),
(9, 6, 1),
(10, 6, 2),
(11, 6, 3),
(13, 2, 1),
(14, 5, 2),
(15, 3, 1),
(16, 3, 2),
(17, 3, 3),
(18, 4, 2),
(19, 4, 3),
(20, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL,
  `especialidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`, `especialidad`) VALUES
(1, 'Ingles V', 5, 'PROGRAMACION'),
(2, 'Calculo', 5, 'PROGRAMACION'),
(3, 'Fisica', 5, 'CONSTRUCCION'),
(4, 'Personas Morales', 5, 'CONTABILIDAD'),
(5, 'Desarrolla Paginas Web', 4, 'PROGRAMACION'),
(6, 'Dibujo Tecnico', 6, 'ELECTRONICA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alumno_materias`
--
ALTER TABLE `alumno_materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `alumno_materias`
--
ALTER TABLE `alumno_materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
