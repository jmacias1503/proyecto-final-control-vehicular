-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server:3306
-- Generation Time: May 08, 2025 at 07:37 PM
-- Server version: 8.0.41
-- PHP Version: 8.2.27
CREATE DATABASE IF NOT EXISTS vehicle_control;
USE vehicle_control;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `controlvehicular31`
--

-- --------------------------------------------------------

--
-- Table structure for table `caso_domicilios`
--

CREATE TABLE IF NOT EXISTS `caso_domicilios` (
  `compuesta` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `CURP` char(18) COLLATE utf8mb4_general_ci NOT NULL,
  `IdDomicilio` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caso_domicilios`
--

INSERT INTO `caso_domicilios` (`compuesta`, `CURP`, `IdDomicilio`) VALUES
('FAKE000000HAKEFAK31', 'FAKE000000HAKEFAK3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `centros_verificacion`
--

CREATE TABLE IF NOT EXISTS `centros_verificacion` (
  `IdCentro` int NOT NULL,
  `IdDomicilio` int NOT NULL,
  `Nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `centros_verificacion`
--

INSERT INTO `centros_verificacion` (`IdCentro`, `IdDomicilio`, `Nombre`) VALUES
(1, 1, 'Paseo de Libero');

-- --------------------------------------------------------

--
-- Table structure for table `conductores`
--

CREATE TABLE IF NOT EXISTS `conductores` (
  `IdConductor` int NOT NULL,
  `CURP` char(18) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conductores`
--

INSERT INTO `conductores` (`IdConductor`, `CURP`) VALUES
(1, 'FAKE000000HAKEFAK3');

-- --------------------------------------------------------

--
-- Table structure for table `domicilios`
--

CREATE TABLE IF NOT EXISTS `domicilios` (
  `IdDomicilio` int NOT NULL,
  `NumInt` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NumExt` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CP` int NOT NULL,
  `Estado` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `Ciudad` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Colonia` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Calle` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CURP` char(18) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `domicilios`
--

INSERT INTO `domicilios` (`IdDomicilio`, `NumInt`, `NumExt`, `CP`, `Estado`, `Ciudad`, `Colonia`, `Calle`, `CURP`) VALUES
(1, '120', '0', 37000, 'Queretaro', 'Queretaro', 'Caleto', 'Paseo de Santini', 'FAKE000000HAKEFAK3'),
(2, '172', '0', 37901, 'Queretaro', 'Queretaro', 'Caleto', 'Paseo de Libero', 'MAGD050922HNETRVA2');

-- --------------------------------------------------------

--
-- Table structure for table `licencias`
--

CREATE TABLE IF NOT EXISTS `licencias` (
  `IdLicencia` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `ValidoHasta` date NOT NULL,
  `Antiguedad` int NOT NULL,
  `Restriccion` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `NumEmergencia` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `DonadorOrganos` tinyint(1) NOT NULL,
  `FechaExp` date DEFAULT NULL,
  `IdConductor` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `licencias`
--

INSERT INTO `licencias` (`IdLicencia`, `ValidoHasta`, `Antiguedad`, `Restriccion`, `NumEmergencia`, `DonadorOrganos`, `FechaExp`, `IdConductor`) VALUES
('1', '2025-05-13', 0, 'none', 'DUMMY', 0, '2025-05-14', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `licencias_conductor`
-- (See below for the actual view)
--
CREATE TABLE IF NOT EXISTS `licencias_conductor` (
`Antiguedad` int
,`ApellidoM` varchar(50)
,`ApellidoP` varchar(50)
,`Calle` varchar(200)
,`Ciudad` varchar(50)
,`Colonia` varchar(50)
,`CP` int
,`DonadorOrganos` tinyint(1)
,`Estado` varchar(25)
,`FechaExp` date
,`FechaNac` date
,`IdLicencia` varchar(20)
,`Nombre` varchar(50)
,`Restriccion` varchar(50)
,`ValidoHasta` date
);

-- --------------------------------------------------------

--
-- Table structure for table `multas`
--

CREATE TABLE IF NOT EXISTS `multas` (
  `FolioMultas` bigint NOT NULL,
  `IdPago` int NOT NULL,
  `FolioVerificacion` int NOT NULL,
  `FolioCirculacion` int NOT NULL,
  `IdSerie` int NOT NULL,
  `IdOficial` int NOT NULL,
  `Causa` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Observaciones` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Region` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `FechaExp` date NOT NULL,
  `Estado` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Descripcion` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Tipo` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `FechaHora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `multas`
--

INSERT INTO `multas` (`FolioMultas`, `IdPago`, `FolioVerificacion`, `FolioCirculacion`, `IdSerie`, `IdOficial`, `Causa`, `Observaciones`, `Region`, `FechaExp`, `Estado`, `Descripcion`, `Tipo`, `FechaHora`) VALUES
(1, 1, 1, 1, 1, 1, 'DUMMY', 'nonne', 'DUMMY', '2025-05-12', 'DUMMY', 'hello world', 'DUMMY', '2025-04-08 21:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `oficiales`
--

CREATE TABLE IF NOT EXISTS `oficiales` (
  `id` int NOT NULL,
  `numero_placa` int NOT NULL,
  `curp` char(18) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oficiales`
--

INSERT INTO `oficiales` (`id`, `numero_placa`, `curp`) VALUES
(1, 1, 'FAKE000000HAKEFAK3');

-- --------------------------------------------------------

--
-- Table structure for table `pagos`
--

CREATE TABLE IF NOT EXISTS `pagos` (
  `id` int NOT NULL,
  `transaccion` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `folio` int NOT NULL,
  `fechaLimPago` date NOT NULL,
  `Importe` decimal(10,2) NOT NULL,
  `TipoPago` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `FechayHora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CodigoBarras` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pagos`
--

INSERT INTO `pagos` (`id`, `transaccion`, `folio`, `fechaLimPago`, `Importe`, `TipoPago`, `FechayHora`, `CodigoBarras`) VALUES
(1, 'DUMMY', 0, '2025-05-28', 11.00, 'DUMMY', '2025-01-01 00:00:00', 'DUMMY');

-- --------------------------------------------------------

--
-- Table structure for table `personas`
--

CREATE TABLE IF NOT EXISTS `personas` (
  `CURP` char(18) COLLATE utf8mb4_general_ci NOT NULL,
  `Nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ApellidoP` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ApellidoM` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `FechaNac` date NOT NULL,
  `Sexo` tinyint(1) NOT NULL,
  `Firma` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personas`
--

INSERT INTO `personas` (`CURP`, `Nombre`, `ApellidoP`, `ApellidoM`, `FechaNac`, `Sexo`, `Firma`) VALUES
('FAKE000000HAKEFAK3', 'Alejandro', 'Juarez', 'Camacho', '1977-05-15', 1, 'helloworld'),
('MAGD050922HNETRVA2', 'David', 'Mata', 'Guerra', '2025-05-13', 1, 'asas');

-- --------------------------------------------------------

--
-- Table structure for table `propietarios`
--

CREATE TABLE IF NOT EXISTS `propietarios` (
  `IdPropietario` int NOT NULL,
  `CURP` char(18) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `propietarios`
--

INSERT INTO `propietarios` (`IdPropietario`, `CURP`) VALUES
(1, 'FAKE000000HAKEFAK3');

-- --------------------------------------------------------

--
-- Table structure for table `tarjetas_circulacion`
--

CREATE TABLE IF NOT EXISTS `tarjetas_circulacion` (
  `FolioCirculacion` int NOT NULL,
  `IdPago` int NOT NULL,
  `NumConstancia` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Origen` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `CveVehicular` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipo` tinyint NOT NULL,
  `Uso` tinyint NOT NULL,
  `RPA` tinyint DEFAULT NULL,
  `Operacion` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `PlacaAnt` varchar(8) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `OficinaExpendidora` tinyint NOT NULL,
  `Movimiento` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Vigencia` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tarjetas_circulacion`
--

INSERT INTO `tarjetas_circulacion` (`FolioCirculacion`, `IdPago`, `NumConstancia`, `Origen`, `CveVehicular`, `Tipo`, `Uso`, `RPA`, `Operacion`, `PlacaAnt`, `OficinaExpendidora`, `Movimiento`, `Vigencia`) VALUES
(1, 1, '34343', 'Extranjero', 'DADA-2323', 1, 4, 3, 'Cambio', 'PHC0509', 1, 'Transaccion', '2025-05-07');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tarjetas_circulacion_v`
-- (See below for the actual view)
--
CREATE TABLE IF NOT EXISTS `tarjetas_circulacion_v` (
`FolioCirculacion` int
,`IdPago` int
,`Movimiento` varchar(50)
,`NumConstancia` varchar(30)
,`PlacaAnt` varchar(8)
,`RPA` tinyint
,`Tipo` tinyint
,`Uso` tinyint
,`Vigencia` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `tarjetas_verificacion`
--

CREATE TABLE IF NOT EXISTS `tarjetas_verificacion` (
  `FolioVerificacion` int NOT NULL,
  `HoraSalida` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MotivoVerificacion` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `FolioCertificado` bigint DEFAULT NULL,
  `Semestre` tinyint(1) NOT NULL,
  `TipoServicio` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `FechaExp` date NOT NULL,
  `HoraEntrada` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IdCentro` int NOT NULL,
  `IdSerie` int NOT NULL,
  `IdPago` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tarjetas_verificacion`
--

INSERT INTO `tarjetas_verificacion` (`FolioVerificacion`, `HoraSalida`, `MotivoVerificacion`, `FolioCertificado`, `Semestre`, `TipoServicio`, `FechaExp`, `HoraEntrada`, `IdCentro`, `IdSerie`, `IdPago`) VALUES
(1, '2025-04-08 21:40:39', 'hello', 1, 0, '1', '2025-05-21', '2025-04-08 21:40:39', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `user_type` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `block` tinyint(1) DEFAULT NULL,
  `tries` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`username`, `password`, `user_type`, `status`, `block`, `tries`) VALUES
('JUAN', 'J1234', 'A', 1, 0, 0),
('LUIS', 'L1234', 'U', 1, 0, 0),
('MARIA', 'M1234', 'A', 1, 1, 0),
('PEDRO', 'P1234', 'U', 1, 1, 0),
('SAUL', 'S1234', 'U', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehiculos`
--

CREATE TABLE IF NOT EXISTS `vehiculos` (
  `IdSerie` int NOT NULL,
  `FolioCirculacion` int NOT NULL,
  `IdPropietario` int NOT NULL,
  `Color` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Ano` char(4) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Clase` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Combustible` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NIV` char(17) COLLATE utf8mb4_general_ci NOT NULL,
  `NumCilindros` int DEFAULT NULL,
  `Modelo` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Marca` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehiculos`
--

INSERT INTO `vehiculos` (`IdSerie`, `FolioCirculacion`, `IdPropietario`, `Color`, `Ano`, `Clase`, `Combustible`, `NIV`, `NumCilindros`, `Modelo`, `Marca`) VALUES
(1, 1, 1, 'DUMMY', '0', 'DUMMY', 'hello', 'YDUMMYDUMMYDUMMYD', 0, 'DUMMY', 'DUMMY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caso_domicilios`
--
ALTER TABLE `caso_domicilios`
  ADD PRIMARY KEY (`compuesta`),
  ADD KEY `CURP` (`CURP`),
  ADD KEY `IdDomicilio` (`IdDomicilio`);

--
-- Indexes for table `centros_verificacion`
--
ALTER TABLE `centros_verificacion`
  ADD PRIMARY KEY (`IdCentro`),
  ADD KEY `IdDomicilio` (`IdDomicilio`);

--
-- Indexes for table `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`IdConductor`),
  ADD KEY `CURP` (`CURP`);

--
-- Indexes for table `domicilios`
--
ALTER TABLE `domicilios`
  ADD PRIMARY KEY (`IdDomicilio`),
  ADD KEY `CURP` (`CURP`);

--
-- Indexes for table `licencias`
--
ALTER TABLE `licencias`
  ADD PRIMARY KEY (`IdLicencia`),
  ADD KEY `IdConductor` (`IdConductor`);

--
-- Indexes for table `multas`
--
ALTER TABLE `multas`
  ADD PRIMARY KEY (`FolioMultas`),
  ADD KEY `IdPago` (`IdPago`),
  ADD KEY `FolioVerificacion` (`FolioVerificacion`),
  ADD KEY `FolioCirculacion` (`FolioCirculacion`),
  ADD KEY `IdSerie` (`IdSerie`),
  ADD KEY `IdOficial` (`IdOficial`);

--
-- Indexes for table `oficiales`
--
ALTER TABLE `oficiales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curp` (`curp`);

--
-- Indexes for table `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`CURP`);

--
-- Indexes for table `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`IdPropietario`),
  ADD KEY `CURP` (`CURP`);

--
-- Indexes for table `tarjetas_circulacion`
--
ALTER TABLE `tarjetas_circulacion`
  ADD PRIMARY KEY (`FolioCirculacion`),
  ADD KEY `IdPago` (`IdPago`);

--
-- Indexes for table `tarjetas_verificacion`
--
ALTER TABLE `tarjetas_verificacion`
  ADD PRIMARY KEY (`FolioVerificacion`),
  ADD KEY `IdCentro` (`IdCentro`),
  ADD KEY `IdSerie` (`IdSerie`),
  ADD KEY `IdPago` (`IdPago`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`IdSerie`),
  ADD KEY `FolioCirculacion` (`FolioCirculacion`),
  ADD KEY `IdPropietario` (`IdPropietario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `centros_verificacion`
--
ALTER TABLE `centros_verificacion`
  MODIFY `IdCentro` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conductores`
--
ALTER TABLE `conductores`
  MODIFY `IdConductor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `domicilios`
--
ALTER TABLE `domicilios`
  MODIFY `IdDomicilio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oficiales`
--
ALTER TABLE `oficiales`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `propietarios`
--
ALTER TABLE `propietarios`
  MODIFY `IdPropietario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- --------------------------------------------------------

--
-- Structure for view `licencias_conductor`
--
DROP TABLE IF EXISTS `licencias_conductor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `licencias_conductor`  AS SELECT `l`.`IdLicencia` AS `IdLicencia`, `p`.`Nombre` AS `Nombre`, `p`.`ApellidoP` AS `ApellidoP`, `p`.`ApellidoM` AS `ApellidoM`, `p`.`FechaNac` AS `FechaNac`, `l`.`FechaExp` AS `FechaExp`, `l`.`ValidoHasta` AS `ValidoHasta`, `l`.`Antiguedad` AS `Antiguedad`, `l`.`Restriccion` AS `Restriccion`, `d`.`CP` AS `CP`, `d`.`Estado` AS `Estado`, `d`.`Ciudad` AS `Ciudad`, `d`.`Colonia` AS `Colonia`, `d`.`Calle` AS `Calle`, `l`.`DonadorOrganos` AS `DonadorOrganos` FROM (((`licencias` `l` join `conductores` `c` on((`l`.`IdConductor` = `c`.`IdConductor`))) join `personas` `p` on((`c`.`CURP` = `p`.`CURP`))) left join `domicilios` `d` on((`p`.`CURP` = `d`.`CURP`))) ;

-- --------------------------------------------------------

--
-- Structure for view `tarjetas_circulacion_v`
--
DROP TABLE IF EXISTS `tarjetas_circulacion_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tarjetas_circulacion_v`  AS SELECT `tarjetas_circulacion`.`FolioCirculacion` AS `FolioCirculacion`, `tarjetas_circulacion`.`Vigencia` AS `Vigencia`, `tarjetas_circulacion`.`PlacaAnt` AS `PlacaAnt`, `tarjetas_circulacion`.`NumConstancia` AS `NumConstancia`, `tarjetas_circulacion`.`Movimiento` AS `Movimiento`, `tarjetas_circulacion`.`Tipo` AS `Tipo`, `tarjetas_circulacion`.`Uso` AS `Uso`, `tarjetas_circulacion`.`RPA` AS `RPA`, `tarjetas_circulacion`.`IdPago` AS `IdPago` FROM `tarjetas_circulacion` WHERE (`tarjetas_circulacion`.`FolioCirculacion` = 1) ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `caso_domicilios`
--
ALTER TABLE `caso_domicilios`
  ADD CONSTRAINT `caso_domicilios_ibfk_1` FOREIGN KEY (`CURP`) REFERENCES `personas` (`CURP`),
  ADD CONSTRAINT `caso_domicilios_ibfk_2` FOREIGN KEY (`IdDomicilio`) REFERENCES `domicilios` (`IdDomicilio`);

--
-- Constraints for table `centros_verificacion`
--
ALTER TABLE `centros_verificacion`
  ADD CONSTRAINT `centros_verificacion_ibfk_1` FOREIGN KEY (`IdDomicilio`) REFERENCES `domicilios` (`IdDomicilio`);

--
-- Constraints for table `conductores`
--
ALTER TABLE `conductores`
  ADD CONSTRAINT `conductores_ibfk_1` FOREIGN KEY (`CURP`) REFERENCES `personas` (`CURP`);

--
-- Constraints for table `domicilios`
--
ALTER TABLE `domicilios`
  ADD CONSTRAINT `domicilios_ibfk_1` FOREIGN KEY (`CURP`) REFERENCES `personas` (`CURP`);

--
-- Constraints for table `licencias`
--
ALTER TABLE `licencias`
  ADD CONSTRAINT `licencias_ibfk_1` FOREIGN KEY (`IdConductor`) REFERENCES `conductores` (`IdConductor`),
  ADD CONSTRAINT `licencias_ibfk_2` FOREIGN KEY (`IdConductor`) REFERENCES `conductores` (`IdConductor`);

--
-- Constraints for table `multas`
--
ALTER TABLE `multas`
  ADD CONSTRAINT `multas_ibfk_1` FOREIGN KEY (`IdPago`) REFERENCES `pagos` (`id`),
  ADD CONSTRAINT `multas_ibfk_2` FOREIGN KEY (`FolioVerificacion`) REFERENCES `tarjetas_verificacion` (`FolioVerificacion`),
  ADD CONSTRAINT `multas_ibfk_3` FOREIGN KEY (`FolioCirculacion`) REFERENCES `tarjetas_circulacion` (`FolioCirculacion`),
  ADD CONSTRAINT `multas_ibfk_4` FOREIGN KEY (`IdSerie`) REFERENCES `vehiculos` (`IdSerie`),
  ADD CONSTRAINT `multas_ibfk_5` FOREIGN KEY (`IdOficial`) REFERENCES `oficiales` (`id`);

--
-- Constraints for table `oficiales`
--
ALTER TABLE `oficiales`
  ADD CONSTRAINT `oficiales_ibfk_1` FOREIGN KEY (`curp`) REFERENCES `personas` (`CURP`);

--
-- Constraints for table `propietarios`
--
ALTER TABLE `propietarios`
  ADD CONSTRAINT `propietarios_ibfk_1` FOREIGN KEY (`CURP`) REFERENCES `personas` (`CURP`);

--
-- Constraints for table `tarjetas_circulacion`
--
ALTER TABLE `tarjetas_circulacion`
  ADD CONSTRAINT `tarjetas_circulacion_ibfk_1` FOREIGN KEY (`IdPago`) REFERENCES `pagos` (`id`);

--
-- Constraints for table `tarjetas_verificacion`
--
ALTER TABLE `tarjetas_verificacion`
  ADD CONSTRAINT `tarjetas_verificacion_ibfk_1` FOREIGN KEY (`IdCentro`) REFERENCES `centros_verificacion` (`IdCentro`),
  ADD CONSTRAINT `tarjetas_verificacion_ibfk_2` FOREIGN KEY (`IdSerie`) REFERENCES `vehiculos` (`IdSerie`),
  ADD CONSTRAINT `tarjetas_verificacion_ibfk_3` FOREIGN KEY (`IdPago`) REFERENCES `pagos` (`id`);

--
-- Constraints for table `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`FolioCirculacion`) REFERENCES `tarjetas_circulacion` (`FolioCirculacion`),
  ADD CONSTRAINT `vehiculos_ibfk_2` FOREIGN KEY (`IdPropietario`) REFERENCES `propietarios` (`IdPropietario`);
COMMIT;
