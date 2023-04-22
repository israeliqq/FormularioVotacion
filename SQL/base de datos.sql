
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2023 a las 07:01:44
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

--
-- Base de datos: `elecciones`
--

CREATE DATABASE elecciones;

USE elecciones;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id_candidato` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id_candidato`, `nombre`) VALUES
(1, 'Alex'),
(2, 'Maria'),
(3, 'Mario');

--
-- Estructura de tabla para la tabla `votos`
--

CREATE TABLE `votos` (
  `id_voto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `rut` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `comuna` varchar(100) NOT NULL,
  `fk_candidato` varchar(100) NOT NULL,
  `web` tinyint(1) NOT NULL,
  `tv` tinyint(1) NOT NULL,
  `rrss` tinyint(1) NOT NULL,
  `amigo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `votos`
--

INSERT INTO `votos` (`id_voto`, `nombre`, `alias`, `rut`, `email`, `region`, `comuna`, `fk_candidato`, `web`, `tv`, `rrss`, `amigo`) VALUES
(4, 'Israel Teran', 'Israel123', '17097331-3', 'israeliqq@live.cl', 'Tarapacá', 'Iquique', '3', 1, 1, 1, 0);


--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id_candidato`);

--
-- Indices de la tabla `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`id_voto`);


--
-- AUTO_INCREMENT de la tabla `votos`
--
ALTER TABLE `votos`
  MODIFY `id_voto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

