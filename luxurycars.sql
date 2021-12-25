-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-12-2021 a las 23:55:25
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `luxurycars`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `idLocalidad` int(11) NOT NULL,
  `nombrelocalidad` varchar(40) CHARACTER SET utf8 NOT NULL,
  `idProvLoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`idLocalidad`, `nombrelocalidad`, `idProvLoc`) VALUES
(1, 'Rosario', 2),
(2, 'Ciduad Autónoma de Buenos Aires', 1),
(3, 'Posadas', 4),
(5, 'Colón', 6),
(6, 'Corrientes, capital', 5),
(7, 'Cordoba, capital', 3),
(8, 'Mar del Plata', 1),
(9, 'Ciudad de Santa Fe', 2),
(10, 'Río Cuarto', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `idPago` int(11) NOT NULL,
  `medioPago` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`idPago`, `medioPago`) VALUES
(1, 'tarjeta de credito'),
(2, 'mercadopago');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `idProvincia` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`idProvincia`, `nombre`) VALUES
(1, 'Buenos Aires'),
(2, 'Santa Fe'),
(3, 'Cordoba'),
(4, 'Misiones'),
(5, 'Corrientes'),
(6, 'Entre Ríos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `idreserva` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `idVehiculo` int(11) NOT NULL,
  `fechaEntrega` int(11) DEFAULT NULL,
  `fechaDevolu` int(11) DEFAULT NULL,
  `direccion` varchar(40) NOT NULL,
  `idlocalidad` int(11) NOT NULL,
  `idprovincia` int(11) NOT NULL,
  `codPost` int(11) DEFAULT NULL,
  `idPago` int(11) NOT NULL,
  `nomTarj` varchar(40) NOT NULL,
  `numTarj` bigint(16) NOT NULL,
  `vtoTarj` int(11) DEFAULT NULL,
  `codSeg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`idreserva`, `nombre`, `apellido`, `usuario`, `mail`, `idVehiculo`, `fechaEntrega`, `fechaDevolu`, `direccion`, `idlocalidad`, `idprovincia`, `codPost`, `idPago`, `nomTarj`, `numTarj`, `vtoTarj`, `codSeg`) VALUES
(13, 'Matias', 'Delgado', 'mdelgado', 'mdg@gmail.com', 4, 20052022, 20052023, 'Av San martin 3020, 1° B', 3, 4, 243, 2, 'Matias Delgado', 6592057469035468, 10082024, 383),
(14, 'Federico', 'Garcia', 'fede', 'fedegarcia@yahoo.com.ar', 5, 20032022, 20062022, 'Av 25 de mayo 3060, casa', 5, 6, 2558, 2, 'Federico Garcia', 6587250369846598, 524, 336),
(15, 'David', 'Molina', 'davmo', 'davmo@live.com', 3, 21022022, 21022023, 'Calle 10 4039, casa', 10, 3, 986, 1, 'David molina', 9875698632546326, 20032025, 439),
(16, 'Monica', 'Delgado', 'monicadelgado', 'monicadelgado@yahoo.com.ar', 4, 20082022, 20092022, 'larrea 540, 2°b', 5, 6, 164, 2, 'Monica Delgado', 5932085984532156, 525, 382),
(17, 'fernando', 'barreto', 'ferbarreto', 'fbarreto@gmail.com', 7, 2102022, 25092023, 'Av Triunvirato 5040, 9° C', 2, 1, 1431, 1, 'Fernando Barreto', 6582069853157466, 52023, 887);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `usuario` varchar(20) CHARACTER SET utf8 NOT NULL,
  `clave` varchar(20) CHARACTER SET utf8 NOT NULL,
  `nombreyapellido` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `usuario`, `clave`, `nombreyapellido`, `email`) VALUES
(10, 'mdelgado', '12345abc', 'matias delgado', 'mdg@gmail.com'),
(11, 'fedegarcia', '505050abc', 'Federico Garcia', 'fedegarcia@yahoo.com.ar'),
(12, 'davmo', '101010abc', 'David Molina', 'davmo@live.com'),
(13, 'monicadelgado', '202020abc', 'Monica Delgado', 'monicadelgado@yahoo.com.ar'),
(14, 'ferbarreto', '303030abc', 'Fernando Barreto ', 'fbarreto@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `idVehiculo` int(11) NOT NULL,
  `marca` varchar(40) NOT NULL,
  `modelo` varchar(40) NOT NULL,
  `anio` int(11) NOT NULL,
  `velocidad` int(11) NOT NULL,
  `patente` varchar(7) NOT NULL,
  `capacidad` tinyint(4) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`idVehiculo`, `marca`, `modelo`, `anio`, `velocidad`, `patente`, `capacidad`, `precio`) VALUES
(1, 'Bugatti', 'Veyron', 2021, 431, 'AED450E', 2, 250000),
(2, 'Lamborghini', 'Huracan Evo Spyder', 2020, 325, 'AQS293L', 2, 149000),
(3, 'Ferrari', 'F12 Berlinetta', 2020, 340, 'BCD112A', 2, 179500),
(4, 'Bmw', '850i', 2019, 250, 'CEJ330L', 4, 150000),
(5, 'Land Rover', 'HSE LWB', 2021, 234, 'AIK258S', 5, 160000),
(6, 'Jeep', 'Gladiator', 2021, 177, 'AJK990I', 5, 120000),
(7, 'Mercedes benz', 'Sprinter limo', 2021, 160, 'AKI783O', 6, 200000),
(8, 'Kawasaki', 'Ninja h2 carbon', 2020, 400, 'A293JS', 1, 320000),
(9, 'Horex', 'VR6 cafe racer hl', 2019, 250, 'S030DJO', 1, 220500);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`idLocalidad`),
  ADD KEY `idlocalidad` (`idLocalidad`),
  ADD KEY `idprovlocalidad` (`idProvLoc`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`idPago`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`idProvincia`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idreserva`),
  ADD UNIQUE KEY `mail` (`mail`),
  ADD KEY `idVehiculo` (`idVehiculo`,`idlocalidad`,`idprovincia`,`idPago`),
  ADD KEY `idPago` (`idPago`),
  ADD KEY `idlocalidad` (`idlocalidad`),
  ADD KEY `idprovincia` (`idprovincia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`idVehiculo`),
  ADD UNIQUE KEY `patente` (`patente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `idLocalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `idPago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `idProvincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idreserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `idVehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD CONSTRAINT `localidades_ibfk_1` FOREIGN KEY (`idProvLoc`) REFERENCES `provincias` (`idprovincia`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`idLocalidad`) REFERENCES `localidades` (`idlocalidad`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`idProvincia`) REFERENCES `provincias` (`idprovincia`),
  ADD CONSTRAINT `reserva_ibfk_3` FOREIGN KEY (`idVehiculo`) REFERENCES `vehiculos` (`idVehiculo`),
  ADD CONSTRAINT `reserva_ibfk_4` FOREIGN KEY (`idPago`) REFERENCES `pago` (`idPago`),
  ADD CONSTRAINT `reserva_ibfk_5` FOREIGN KEY (`idlocalidad`) REFERENCES `localidades` (`idlocalidad`),
  ADD CONSTRAINT `reserva_ibfk_6` FOREIGN KEY (`idprovincia`) REFERENCES `provincias` (`idprovincia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
