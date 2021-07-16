-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2021 a las 01:44:44
-- Versión del servidor: 10.1.40-MariaDB
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
-- Base de datos: `sisox`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `CodigoCalificacion` int(11) NOT NULL,
  `CodigoIpress` int(11) NOT NULL,
  `CalificacionEstrellas` decimal(10,0) NOT NULL,
  `EstadoRegistroCalificacion` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ipress`
--

CREATE TABLE `ipress` (
  `CodigoIpress` int(11) NOT NULL,
  `NombreIpress` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `FechaRegistro` date NOT NULL,
  `NivellIpress` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `Institucion` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `Ubigeo` int(11) NOT NULL,
  `Region` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Provincia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Distrito` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `CilindrosTotales` int(11) NOT NULL,
  `VolumenPotencial` decimal(10,0) NOT NULL,
  `TotalPlantas` int(11) NOT NULL,
  `ConsumoDia` decimal(10,0) NOT NULL,
  `DescripcionLocal` text COLLATE utf8_spanish_ci NOT NULL,
  `TelefonoIpress` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `CorreoIpress` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `RUC` int(11) NOT NULL,
  `EstadoRegistroIpress` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ipress`
--

INSERT INTO `ipress` (`CodigoIpress`, `NombreIpress`, `FechaRegistro`, `NivellIpress`, `Institucion`, `Ubigeo`, `Region`, `Provincia`, `Distrito`, `CilindrosTotales`, `VolumenPotencial`, `TotalPlantas`, `ConsumoDia`, `DescripcionLocal`, `TelefonoIpress`, `CorreoIpress`, `RUC`, `EstadoRegistroIpress`) VALUES
(100, 'oxin', '2020-12-16', 'III', 'Regional', 351452, 'Arequipa', 'Arequipa', 'Cayma', 5, '46', 4, '40', 'primera prueba', '925922034', 'root3@gmail.com', 1259845698, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `CodigoNoticia` int(11) NOT NULL,
  `CodigoIpress` int(11) NOT NULL,
  `TituloNoticia` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `DescripccionNoticia` text COLLATE utf8_spanish_ci NOT NULL,
  `FechaNoticia` date NOT NULL,
  `EstadoRegistroNoticia` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`CodigoNoticia`, `CodigoIpress`, `TituloNoticia`, `DescripccionNoticia`, `FechaNoticia`, `EstadoRegistroNoticia`) VALUES
(40, 100, 'Navidad', 'Esta es la fiesta en la que toda la empresa trabaja unida y en familia', '2021-07-16', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oxigenodisponible`
--

CREATE TABLE `oxigenodisponible` (
  `CodigoOxigenoDisponible` int(11) NOT NULL,
  `CodigoIpress` int(11) NOT NULL,
  `CilindrosLlenos` int(11) NOT NULL,
  `VolumenDisponible` int(11) NOT NULL,
  `PrecioOxigeno` int(11) NOT NULL,
  `EstadoRegistroOxigeno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntosred`
--

CREATE TABLE `puntosred` (
  `CodigoPuntoRed` int(11) NOT NULL,
  `RedUciAdultos` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `RedUciNeonatal` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `RedUciPediatria` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `RedUcin` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `RedHospitalizacion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `RedEmergencia` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `RedHospitalizacionTemp` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `RedCriticoTemporal` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `EstadoRegistroRed` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservacion`
--

CREATE TABLE `reservacion` (
  `CodigoReservacion` int(11) NOT NULL,
  `CodigoTipo` int(11) NOT NULL,
  `CodigoIpress` int(11) NOT NULL,
  `HorarioReservacion` date NOT NULL,
  `CantidadOxigeno` double(10,0) NOT NULL,
  `EstadoRegistroReservacion` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reservacion`
--

INSERT INTO `reservacion` (`CodigoReservacion`, `CodigoTipo`, `CodigoIpress`, `HorarioReservacion`, `CantidadOxigeno`, `EstadoRegistroReservacion`) VALUES
(20, 11, 100, '2021-07-30', 26, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saturacion`
--

CREATE TABLE `saturacion` (
  `CodigoSaturacion` int(11) NOT NULL,
  `CodigoIpress` int(11) NOT NULL,
  `NivelSaturacion` decimal(10,0) NOT NULL,
  `EstadoRegistroSaturacion` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `saturacion`
--

INSERT INTO `saturacion` (`CodigoSaturacion`, `CodigoIpress`, `NivelSaturacion`, `EstadoRegistroSaturacion`) VALUES
(150, 100, '10', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `CodigoTipo` int(11) NOT NULL,
  `TipoUsuario` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `EstadoRegistroTipoUsuario` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`CodigoTipo`, `TipoUsuario`, `EstadoRegistroTipoUsuario`) VALUES
(1, 'Administrador', 'A'),
(2, 'Cliente', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioadministrador`
--

CREATE TABLE `usuarioadministrador` (
  `TipoUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariocliente`
--

CREATE TABLE `usuariocliente` (
  `CodigoUsuario` int(11) NOT NULL,
  `NombreUsuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido1Usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido2Usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `TipoUsuario` int(11) NOT NULL,
  `RecetaMedica` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Celular` int(11) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `CorreoCliente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Sexo` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `DNI` int(11) NOT NULL,
  `EstadoRegistroCliente` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuariocliente`
--

INSERT INTO `usuariocliente` (`CodigoUsuario`, `NombreUsuario`, `Apellido1Usuario`, `Apellido2Usuario`, `TipoUsuario`, `RecetaMedica`, `Celular`, `FechaNacimiento`, `CorreoCliente`, `Sexo`, `DNI`, `EstadoRegistroCliente`) VALUES
(10, 'juan', 'rivera', 'gomez', 1, 'no', 984563251, '2020-05-12', 'root1@gmail.com', 'M', 76971629, 'A'),
(11, 'jose', 'camilo', 'lopez', 2, 'no', 925922035, '2021-07-28', 'root5@gmail.com', 'M', 76971629, 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`CodigoCalificacion`) USING BTREE,
  ADD UNIQUE KEY `CodigoIpress` (`CodigoIpress`);

--
-- Indices de la tabla `ipress`
--
ALTER TABLE `ipress`
  ADD PRIMARY KEY (`CodigoIpress`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`CodigoNoticia`),
  ADD UNIQUE KEY `CodigoIpress` (`CodigoIpress`);

--
-- Indices de la tabla `oxigenodisponible`
--
ALTER TABLE `oxigenodisponible`
  ADD PRIMARY KEY (`CodigoOxigenoDisponible`),
  ADD UNIQUE KEY `CodigoIpress` (`CodigoIpress`);

--
-- Indices de la tabla `puntosred`
--
ALTER TABLE `puntosred`
  ADD PRIMARY KEY (`CodigoPuntoRed`);

--
-- Indices de la tabla `reservacion`
--
ALTER TABLE `reservacion`
  ADD PRIMARY KEY (`CodigoReservacion`),
  ADD UNIQUE KEY `CodigoIpress` (`CodigoIpress`),
  ADD UNIQUE KEY `CodigoTipo` (`CodigoTipo`);

--
-- Indices de la tabla `saturacion`
--
ALTER TABLE `saturacion`
  ADD PRIMARY KEY (`CodigoSaturacion`),
  ADD UNIQUE KEY `CodigoIpress` (`CodigoIpress`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`CodigoTipo`);

--
-- Indices de la tabla `usuariocliente`
--
ALTER TABLE `usuariocliente`
  ADD PRIMARY KEY (`CodigoUsuario`),
  ADD UNIQUE KEY `TipoUsuario` (`TipoUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `CodigoCalificacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ipress`
--
ALTER TABLE `ipress`
  MODIFY `CodigoIpress` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `CodigoNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `oxigenodisponible`
--
ALTER TABLE `oxigenodisponible`
  MODIFY `CodigoOxigenoDisponible` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puntosred`
--
ALTER TABLE `puntosred`
  MODIFY `CodigoPuntoRed` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservacion`
--
ALTER TABLE `reservacion`
  MODIFY `CodigoReservacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `saturacion`
--
ALTER TABLE `saturacion`
  MODIFY `CodigoSaturacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `CodigoTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuariocliente`
--
ALTER TABLE `usuariocliente`
  MODIFY `CodigoUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `Calificacion-ipress` FOREIGN KEY (`CodigoIpress`) REFERENCES `ipress` (`codigoipress`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `Noticia-Ipress` FOREIGN KEY (`CodigoIpress`) REFERENCES `ipress` (`codigoipress`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `oxigenodisponible`
--
ALTER TABLE `oxigenodisponible`
  ADD CONSTRAINT `Oxigeno-Ipress` FOREIGN KEY (`CodigoIpress`) REFERENCES `ipress` (`codigoipress`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `puntosred`
--
ALTER TABLE `puntosred`
  ADD CONSTRAINT `PuntosRed-Ipress` FOREIGN KEY (`CodigoPuntoRed`) REFERENCES `ipress` (`codigoipress`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservacion`
--
ALTER TABLE `reservacion`
  ADD CONSTRAINT `reservacion_ibfk_1` FOREIGN KEY (`CodigoTipo`) REFERENCES `usuariocliente` (`CodigoUsuario`),
  ADD CONSTRAINT `reservacion_ibfk_2` FOREIGN KEY (`CodigoIpress`) REFERENCES `ipress` (`codigoipress`);

--
-- Filtros para la tabla `saturacion`
--
ALTER TABLE `saturacion`
  ADD CONSTRAINT `saturacion_ibfk_1` FOREIGN KEY (`CodigoIpress`) REFERENCES `ipress` (`codigoipress`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuariocliente`
--
ALTER TABLE `usuariocliente`
  ADD CONSTRAINT `usuariocliente_ibfk_1` FOREIGN KEY (`TipoUsuario`) REFERENCES `tipousuario` (`CodigoTipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
