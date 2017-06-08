-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2017 a las 14:33:09
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `survey`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_criterios`
--

CREATE TABLE IF NOT EXISTS `tbl_criterios` (
  `id_criterio` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_criterio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_criterios`
--

INSERT INTO `tbl_criterios` (`id_criterio`, `descripcion`) VALUES
(1, 'visión de desarrollo compartida'),
(2, 'estructura y organización del trabajo'),
(3, 'normas y procedimientos de trabajo'),
(4, 'comunicación y coordinación'),
(5, 'cohesión y motivación del grupo'),
(6, 'capacitaci&ocuten y desarrollo del personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_encuestas`
--

CREATE TABLE IF NOT EXISTS `tbl_encuestas` (
  `id_encuesta` int(10) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activo` int(1) NOT NULL,
  PRIMARY KEY (`id_encuesta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tbl_encuestas`
--

INSERT INTO `tbl_encuestas` (`id_encuesta`, `titulo`, `fecha_creacion`, `activo`) VALUES
(1, 'prueba', '2017-02-20 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_encuesta_valida`
--

CREATE TABLE IF NOT EXISTS `tbl_encuesta_valida` (
  `cadena` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `encuesta` int(10) NOT NULL,
  `completado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_encuesta_valida`
--

INSERT INTO `tbl_encuesta_valida` (`cadena`, `encuesta`, `completado`) VALUES
('83303cd4dc4ebd37ad7e6ca048853e38', 1, 1),
('819c9bdb45bdc1ab9b30c46cf0a4d4c9', 1, 1),
('c612da2dba8fc89a6577324e21f71676', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estudio`
--

CREATE TABLE IF NOT EXISTS `tbl_estudio` (
  `fk_pregunta` int(11) NOT NULL,
  `fk_criterio` varchar(11) NOT NULL,
  `valores_estudio` int(20) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_estudio`
--

INSERT INTO `tbl_estudio` (`fk_pregunta`, `fk_criterio`, `valores_estudio`, `cantidad`) VALUES
(1, '1', 4, 1),
(2, '1', 5, 1),
(3, '2', 4, 1),
(4, '3', 4, 1),
(5, '1', 1, 1),
(6, '4', 2, 1),
(7, '2', 2, 1),
(8, '2', 2, 1),
(9, '2', 4, 1),
(10, '2', 5, 1),
(11, '2', 4, 1),
(12, '2', 4, 1),
(13, '5', 4, 1),
(14, '3', 2, 1),
(13, '5', 4, 1),
(14, '3', 2, 1),
(13, '5', 4, 1),
(14, '3', 2, 1),
(1, '1', 5, 1),
(2, '1', 4, 1),
(3, '2', 5, 1),
(4, '3', 5, 1),
(5, '1', 1, 1),
(6, '4', 2, 1),
(7, '2', 1, 1),
(8, '2', 5, 1),
(9, '2', 1, 1),
(10, '2', 5, 1),
(11, '2', 5, 1),
(12, '2', 1, 1),
(13, '5', 4, 1),
(14, '3', 2, 1),
(15, '5', 5, 1),
(17, '5', 2, 1),
(1, '1', 5, 1),
(2, '1', 2, 1),
(3, '2', 5, 1),
(4, '3', 5, 1),
(5, '1', 4, 1),
(6, '4', 4, 1),
(7, '2', 4, 1),
(8, '2', 2, 1),
(9, '2', 4, 1),
(10, '2', 5, 1),
(11, '2', 5, 1),
(12, '2', 5, 1),
(13, '5', 4, 1),
(14, '3', 2, 1),
(15, '5', 5, 1),
(16, '6', 5, 1),
(17, '5', 2, 1),
(1, '1', 5, 1),
(2, '1', 5, 1),
(3, '2', 5, 1),
(4, '3', 4, 1),
(5, '1', 5, 1),
(6, '4', 4, 1),
(7, '2', 5, 1),
(8, '2', 5, 1),
(9, '2', 5, 1),
(10, '2', 5, 1),
(11, '2', 5, 1),
(12, '2', 5, 1),
(11, '2', 5, 1),
(12, '2', 5, 1),
(15, '5', 5, 1),
(16, '6', 5, 1),
(1, '1', 4, 1),
(2, '1', 5, 1),
(3, '2', 5, 1),
(4, '3', 5, 1),
(5, '1', 5, 1),
(6, '4', 2, 1),
(7, '2', 5, 1),
(8, '2', 5, 1),
(9, '2', 5, 1),
(10, '2', 5, 1),
(11, '2', 5, 1),
(12, '2', 4, 1),
(13, '5', 5, 1),
(14, '3', 2, 1),
(15, '5', 5, 1),
(16, '6', 5, 1),
(17, '5', 5, 1),
(17, '5', 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_peso_resp`
--

CREATE TABLE IF NOT EXISTS `tbl_peso_resp` (
  `respuesta` varchar(20) NOT NULL,
  `peso` int(11) NOT NULL,
  PRIMARY KEY (`respuesta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_peso_resp`
--

INSERT INTO `tbl_peso_resp` (`respuesta`, `peso`) VALUES
('A VECES', 2),
('CASI SIEMPRE', 4),
('NUNCA', 1),
('SIEMPRE', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preguntas`
--

CREATE TABLE IF NOT EXISTS `tbl_preguntas` (
  `id_pregunta` int(11) NOT NULL,
  `fk_criterio` varchar(20) CHARACTER SET latin1 NOT NULL,
  `pregunta` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `encuesta` int(10) NOT NULL,
  PRIMARY KEY (`id_pregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_preguntas`
--

INSERT INTO `tbl_preguntas` (`id_pregunta`, `fk_criterio`, `pregunta`, `encuesta`) VALUES
(1, '1', 'Los objetivos y metas de trabajo de la unidad se definen y dan a conocer con claridad y precisi&oacuten.', 1),
(2, '1', 'El trabajo a realizar es analizado con el personal y se le brinda lineamientos sobre él.', 1),
(3, '2', 'Se asignan equitativamente las tareas, y la autoridad y responsabilidad para desempeñarlas.', 1),
(4, '3', 'Las normas y procedimientos de trabajo son conocidos y aplicados por el personal.', 1),
(5, '1', 'Se aplican mecanismos  de evaluación y control del trabajo.', 1),
(6, '4', 'El superior esta disponible para aclarar dudas, dar orientación y realimentación a sus subalternos.', 1),
(7, '2', 'El recurso humano del que se dispone es suficiente y con el perfil requerido.', 1),
(8, '2', 'Los recursos materiales  y suministros para el trabajo se proveen en la cantidad y la calidad requerida.', 1),
(9, '2', 'Se dispone de las herramientas, maquinarias y Equipos necesarios para realizar el trabajo.', 1),
(10, '2', 'La iluminación, ventilación y espacio físico disponible en el area de trabajo son los adecuados.', 1),
(11, '2', 'Se dispone de presupuesto necesario para desarrollar el trabajo de la unidad administrativa.', 1),
(12, '2', 'Hay disponibilidad de medios de transporte cuando estos son los requeridos por el personal para el trabajo.', 1),
(13, '5', 'se recibe información y colaboración de los otros compañeros de unidad para desarrollar el trabajo.', 1),
(14, '3', 'El supervisor inmediato administra la disciplina del equipo de trabajo en forma justa y constante.', 1),
(15, '5', 'El trabajo realizado es valorado justamente por el jefe o supervisor.', 1),
(16, '6', 'se recibe capacitacion que resulta de utilidad para el desempeño del puesto', 1),
(17, '5', 'Existe cohesión, cooperación y armonía en el grupo de trabajo.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL,
  `mostrar` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_usuario`, `id_rol`, `correo_electronico`, `clave`, `nombre`, `apellido`, `estado`, `mostrar`) VALUES
(2, 2, 'admin@hotmail.com', 'admin', 'kevin', 'Rojas', 1, 1),
(3, 2, 'prueba@hotmail.com', 'admin123', 'usuario', 'prueba', 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
