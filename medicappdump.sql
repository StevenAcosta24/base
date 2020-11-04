-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2020 a las 18:01:47
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `medicapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `CIAdmin` char(9) NOT NULL,
  `Contrasena` varchar(30) NOT NULL
) ;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`CIAdmin`, `Contrasena`) VALUES
('49645266', '49645266'),
('36584282', '36584282'),
('55461320', '55461320');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asociado`
--

CREATE TABLE `asociado` (
  `CodigoPatologia` int(20) NOT NULL,
  `CodigoSintoma` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asociado`
--

INSERT INTO `asociado` (`CodigoPatologia`, `CodigoSintoma`) VALUES
(1, 1),
(11, 1),
(53, 1),
(1, 2),
(1, 3),
(3, 3),
(4, 3),
(11, 3),
(35, 3),
(43, 3),
(44, 3),
(47, 3),
(52, 3),
(1, 4),
(43, 4),
(2, 5),
(41, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(3, 10),
(6, 10),
(3, 11),
(6, 11),
(3, 12),
(8, 12),
(35, 12),
(47, 12),
(50, 12),
(3, 13),
(4, 13),
(5, 13),
(6, 13),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(5, 18),
(5, 19),
(36, 19),
(42, 19),
(51, 19),
(5, 20),
(35, 20),
(36, 20),
(42, 20),
(51, 20),
(5, 21),
(50, 21),
(51, 21),
(52, 21),
(53, 21),
(5, 22),
(36, 22),
(52, 22),
(6, 23),
(6, 24),
(7, 25),
(35, 25),
(7, 26),
(7, 27),
(8, 28),
(44, 28),
(9, 29),
(9, 30),
(9, 31),
(10, 32),
(10, 33),
(10, 34),
(41, 34),
(11, 35),
(11, 36),
(12, 37),
(12, 38),
(12, 39),
(47, 41),
(50, 41),
(52, 41),
(51, 92),
(50, 96),
(34, 108),
(34, 109),
(34, 110),
(34, 111),
(35, 112),
(47, 112),
(35, 113),
(35, 114),
(36, 115),
(37, 116),
(37, 117),
(37, 118),
(37, 119),
(38, 120),
(38, 121),
(38, 122),
(38, 123),
(40, 124),
(40, 125),
(40, 126),
(40, 127),
(41, 128),
(41, 129),
(41, 130),
(41, 131),
(49, 131),
(41, 132),
(42, 133),
(43, 134),
(49, 134),
(43, 135),
(43, 136),
(44, 137),
(44, 138),
(44, 139),
(45, 140),
(45, 141),
(45, 142),
(46, 143),
(46, 144),
(46, 145),
(46, 146),
(47, 147),
(53, 147),
(48, 148),
(48, 149),
(48, 150),
(49, 151),
(49, 152),
(49, 153),
(49, 154),
(50, 155),
(50, 156),
(50, 157),
(51, 158),
(52, 159);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atiende`
--

CREATE TABLE `atiende` (
  `CodigoDiagnostico` int(20) NOT NULL,
  `CIMedico` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chatea`
--

CREATE TABLE `chatea` (
  `CIMedico` char(9) NOT NULL,
  `CIPaciente` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corresponde`
--

CREATE TABLE `corresponde` (
  `CodigoDiagnostico` int(20) NOT NULL,
  `CodigoPatologia` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnostico`
--

CREATE TABLE `diagnostico` (
  `CodigoDiagnostico` int(20) NOT NULL,
  `CodigoPatologiaPrimaria` int(20) NOT NULL,
  `CodigoPatologiaFinal` int(20) DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') NOT NULL,
  `FechaDiagnostico` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `CIMedico` char(9) NOT NULL,
  `Contrasena` varchar(30) NOT NULL,
  `Especialidad` varchar(30) NOT NULL
) ;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`CIMedico`, `Contrasena`, `Especialidad`) VALUES
('45687884', '45687884', 'Neumólogo'),
('66676785', '66676785', 'Cardiólogo'),
('44567895', '44567895', 'Epidemiólogo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicoenvia`
--

CREATE TABLE `medicoenvia` (
  `codigoMensaje` int(20) NOT NULL,
  `CiMedico` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajechat`
--

CREATE TABLE `mensajechat` (
  `CodigoMensaje` int(20) NOT NULL,
  `CiEmisor` char(9) NOT NULL,
  `ContenidoMensaje` varchar(300) NOT NULL,
  `FechaMensaje` datetime NOT NULL,
  `CodigoDiagnostico` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `CIPaciente` char(9) NOT NULL,
  `Contrasena` varchar(30) NOT NULL
) ;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`CIPaciente`, `Contrasena`) VALUES
('66758884', '66758884'),
('58789875', '58789875'),
('45484569', '45484569');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacienteenvia`
--

CREATE TABLE `pacienteenvia` (
  `codigoMensaje` int(20) NOT NULL,
  `CiPaciente` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patologia`
--

CREATE TABLE `patologia` (
  `CodigoPatologia` int(20) NOT NULL,
  `Especialista` varchar(30) NOT NULL,
  `Gravedad` int(5) DEFAULT NULL,
  `NombrePatologia` varchar(100) NOT NULL
) ;

--
-- Volcado de datos para la tabla `patologia`
--

INSERT INTO `patologia` (`CodigoPatologia`, `Especialista`, `Gravedad`, `NombrePatologia`) VALUES
(1, 'Neumólogo', 3, 'Asma'),
(2, 'Neurólogo', 5, 'Alzheimer'),
(3, 'Hematólogo', 4, 'Anemia'),
(4, 'Psicólogo', 3, 'Anorexia'),
(5, 'Cirujano', 3, 'Apendicitis'),
(6, 'Cardiólogo', 1, 'Arritmia '),
(7, 'Reumatólogo', 1, 'Artritis'),
(8, 'Oftalmólogo', 1, 'Astigmatismo'),
(9, 'Ginecólogo', 2, 'Atrofia vaginal'),
(10, 'Psiquiatra', 3, 'Autismo'),
(11, 'Neumólogo', 1, 'Bronquitis'),
(12, 'Psiquiatra', 4, 'Bulimia'),
(34, 'Oftalmólogo', 3, 'Cataratas'),
(35, 'Infectólogo', 4, 'Chikungunya'),
(36, 'Epidemiólogo', 3, 'Cólera'),
(37, 'Oftalmólogo', 2, 'Conjuntivitis'),
(38, 'Oftalmólogo', 1, 'Daltonismo'),
(40, 'Endocrinólogo', 2, 'Déficit de la hormona del crecimiento'),
(41, 'Neurólogo', 5, 'Demencia'),
(42, 'Epidemiólogo', 3, 'Dengue'),
(43, 'Psiquiatra', 3, 'Depresión'),
(44, 'Endocrinólogo', 3, 'Diabetes'),
(45, 'Urólogo', 1, 'Disfunción eréctil'),
(46, 'Psicólogo', 1, 'Dislexia'),
(47, 'Epidemiólogo', 4, 'Ébola'),
(48, 'Epileptólogo', 3, 'Epilepsia'),
(49, 'Psicólogo', 4, 'Esquizofrenia'),
(50, 'Otorrinolaringólogo', 3, 'Faringitis'),
(51, 'Infectólogo', 5, 'Fiebre amarilla'),
(52, 'Epidemiólogo', 4, 'Coronavirus'),
(53, 'Neumólogo', 4, 'Neumonía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibe`
--

CREATE TABLE `recibe` (
  `CIPaciente` char(9) NOT NULL,
  `CodigoDiagnostico` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sintoma`
--

CREATE TABLE `sintoma` (
  `CodigoSintoma` int(20) NOT NULL,
  `NombreSintoma` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sintoma`
--

INSERT INTO `sintoma` (`CodigoSintoma`, `NombreSintoma`) VALUES
(1, 'Tos'),
(2, 'Opresión en el pecho'),
(3, 'Fatiga'),
(4, 'Problemas para dormir '),
(5, 'Deterioro de la memoria'),
(6, 'Problemas de lenguaje'),
(7, 'Dificultades visuales'),
(8, 'Dificultad para concentrarse'),
(9, 'Bajo nivel de energía'),
(10, 'Piel pálida'),
(11, 'Dolor torácico'),
(12, 'Dolor de cabeza'),
(13, 'Mareos'),
(14, 'Pérdida de peso excesiva'),
(15, 'Insomnio'),
(16, 'Presión arterial baja'),
(17, 'Ausencia de menstruación'),
(18, 'Fuerte dolor abdominal'),
(19, 'Vómitos'),
(20, 'Nauseas'),
(21, 'Fiebre'),
(22, 'Diarrea'),
(23, 'Desmayos'),
(24, 'Sudoración'),
(25, 'Dolor articular'),
(26, 'Inflamación articular'),
(27, 'Rigidez articular'),
(28, 'Visión borrosa'),
(29, 'Sequedad vaginal'),
(30, 'Ardor vaginal'),
(31, 'Picazón genital'),
(32, 'Movimientos corporales estereo'),
(33, 'Anomalías en el lenguaje'),
(34, 'Anomalías en la comunicación'),
(35, 'Producción de mucosidad'),
(36, 'Molestia en el pecho'),
(37, 'Miedo de aumentar de peso'),
(38, 'Forzar el vómito'),
(39, 'Comer cantidades excesivas de alimentos'),
(40, 'Dificultad para tragar'),
(41, 'Dolor de garganta'),
(42, 'Una llaga que no se cura'),
(44, 'Sangrado rectal'),
(45, 'Heces oscuras o sangre en las heces'),
(46, 'Sangrado menstrual  más prolongado'),
(47, 'Sangrado después del coito'),
(48, 'Dolor durante las relaciones sexuales'),
(49, 'Sangrado después de la menopausia'),
(50, 'Tos crónica'),
(51, 'Poco apetito'),
(52, 'Acidez'),
(53, 'Sensación de llenura tras comer poco'),
(54, 'Cambios en la voz'),
(55, 'Dolor de oído'),
(56, 'Pérdida de peso'),
(57, 'Bulto o engrosamiento en la mama'),
(58, 'Cambio de tamaño, forma o aspecto de una mama.'),
(59, 'Descamación'),
(60, 'Distensión abdominal'),
(61, 'Dificultad para ingerir alimentos'),
(62, 'Cambios en el período menstrual'),
(63, 'Pérdida de apetito'),
(64, 'Heces de color claro'),
(65, 'Orina de color oscuro'),
(66, 'Picazón en la piel'),
(67, 'Coágulos sanguíneos'),
(68, 'Erupción en el pene'),
(69, 'Dolor en el pene'),
(70, 'Cambios en el color del pene'),
(71, 'Sangrado del pene'),
(72, 'Dolor e inflamación'),
(73, 'Llaga o ulceración que no sana'),
(74, 'Enrojecimiento'),
(75, 'Comezón'),
(76, 'Dificultad para comenzar a orinar.'),
(77, 'Flujo de orina débil '),
(78, 'Ardor al orinar'),
(79, 'Sangre en la orina'),
(80, 'Dolor al eyacular'),
(81, 'Dolor de pecho'),
(82, 'Dificultad para respirar'),
(83, 'Tos con sangre'),
(84, 'Pérdida de peso'),
(86, 'Dolor en el costado o la espalda'),
(87, 'Bulto en el costado o la espalda'),
(88, 'Hinchazón de los tobillos y las piernas'),
(89, 'Presión arterial alta'),
(90, 'Anemia'),
(91, 'Bulto en los testículos'),
(92, 'Dolor de espalda'),
(93, 'Acumulación de liquido en el escroto'),
(94, 'Bulto en el cuello'),
(95, 'Hinchazón en el cuello'),
(96, 'Ronquera'),
(99, 'Dolor en la región lumbar'),
(100, 'Hinchazón en los pies'),
(101, 'Llaga que no sana'),
(102, 'Mancha roja o blanca en al boca'),
(103, 'Sangrado en la boca'),
(104, 'Cambios en la forma de hablar'),
(105, 'Dolor de huesos'),
(106, 'Debilidad en los huesos'),
(107, 'Inflamación'),
(108, 'Visión opaca'),
(109, 'Sensibilidad a la luz'),
(110, 'Visión doble en un solo ojo'),
(111, 'Visión de halos alrededor de las luces'),
(112, 'Fiebre alta'),
(113, 'Dolor muscular'),
(114, 'Erupciones cutaneas'),
(115, 'Deshidratación'),
(116, 'Enrojecimiento o inflamación de la parte blanca del ojo'),
(117, 'Aumento en la cantidad de lágrimas'),
(118, 'Secreción ocular'),
(119, 'Picazón, irritación o ardor en los ojos'),
(120, 'Ambliopía'),
(121, 'Incapacidad de diferenciar un color'),
(122, 'Movimiento involuntario y rápido de los ojos'),
(123, 'Sensibilidad a la luz.'),
(124, 'Voz muy aguda'),
(125, 'Cabello muy fino'),
(126, 'Pubertad lenta o tardía'),
(127, 'Pene de tamaño reducido'),
(128, 'Dificultad para razonar'),
(129, 'Confusión y desorientación'),
(130, 'Paranoia'),
(131, 'Alucinaciones'),
(132, 'Depresión'),
(133, 'Sarpullido'),
(134, 'Estado de ánimo irritable'),
(135, 'Sentimientos de inutilidad'),
(136, 'Pensamientos repetitivos de muerte o suicidio'),
(137, 'Aumento de la sed'),
(138, 'Aumento del hambre'),
(139, 'Encías rojas e inflamadas.'),
(140, 'Problemas persistentes para tener una erección'),
(141, 'Problemas persistentes para mantener la erección'),
(142, 'Disminución persistente del deseo sexual'),
(143, 'Problemas para deletrear'),
(144, 'Tardar en comenzar a hablar'),
(145, 'Dificultad para leer'),
(146, 'Dificultad para memorizar'),
(147, 'Escalofríos'),
(148, 'Confusión temporal'),
(149, 'Episodios de ausencias'),
(150, 'Movimientos espasmódicos incontrolables de brazos y piernas'),
(151, 'Fantasias'),
(152, 'Comportamiento motor extremadamente desorganizado o anormal'),
(153, 'Pensamiento desorganizado'),
(154, 'Falta de motivación'),
(155, 'Sequedad de la garganta'),
(156, 'Erupciones cutáneas'),
(157, 'Amígdalas rojas'),
(158, 'Perdida del apetito'),
(159, 'Tos seca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiene`
--

CREATE TABLE `tiene` (
  `CIPaciente` char(9) NOT NULL,
  `CodigoSintoma` int(20) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `CI` char(9) NOT NULL,
  `PrimerNombre` varchar(15) NOT NULL,
  `PrimerApellido` varchar(15) NOT NULL,
  `SegundoApellido` varchar(15) NOT NULL,
  `Sexo` enum('Masculino','Femenino') NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Calle` varchar(30) NOT NULL,
  `Esquina` varchar(30) NOT NULL,
  `NumeroPuerta` varchar(15) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Mail` varchar(80) NOT NULL
) ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CI`, `PrimerNombre`, `PrimerApellido`, `SegundoApellido`, `Sexo`, `Telefono`, `Calle`, `Esquina`, `NumeroPuerta`, `FechaNacimiento`, `Mail`) VALUES
('36584282', 'Federico', 'Rodriguez', 'Rodriguez', 'Masculino', '098456574', 'Cno. La Redencion', 'yu', '3512', '1999-02-19', 'FedeRR192@gmail.com'),
('44567895', 'María', 'Alvez', 'Olmos', 'Femenino', '092534755', 'Av. Millán', 'fhjf', '5142', '1956-06-22', 'MariaAlvezOlmos@hotmail.com'),
('45484569', 'Agustín', 'Trzcinski', 'Torrez', 'Masculino', '095753541', 'Av. Millán', 'Bv. Artigas', '2417', '1986-10-18', 'agustrz@gmail.com'),
('45687884', 'Pablo', 'Suárez', 'Varela', 'Masculino', '096754385', 'Cno. Maldonado', 'Libra', '2347', '1988-12-06', 'pablo281002@gmail.com'),
('49645266', 'Jorge', 'Martinez', 'Perez', 'Masculino', '099457352', 'Av. Rivera', 'Av. L.A. de Herrera', '5619', '1980-08-09', 'jmperez@hotmail.com'),
('55461320', 'Steven', 'Martín', 'Acosta', 'Masculino', '091234761', 'Oficial 2', 'Cno. El Fortín', '3515', '2002-07-24', 'stevenacostauy@gmail.com'),
('58789875', 'Paula', 'Lopez', 'Pereira', 'Femenino', '099675412', 'Cno. Ariel', 'Av. Sayago', '548', '1977-03-24', 'PauLopezPereira@gmail.com'),
('66676785', 'Jesica', 'Juarez', 'Martinez', 'Femenino', '094568543', 'Bv. Artigas', 'Bv. J.B y Ordoñez', '452 bis', '1988-12-06', 'JesicaJuarezM06@hotmail.es'),
('66758884', 'Mauro', 'Sosa', 'Cerrudo', 'Masculino', '092468741', 'Maria Orticochea', 'Hector Vigil', '8465', '2001-05-26', 'maurososa07@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD KEY `CIAdmin` (`CIAdmin`);

--
-- Indices de la tabla `asociado`
--
ALTER TABLE `asociado`
  ADD PRIMARY KEY (`CodigoSintoma`,`CodigoPatologia`),
  ADD KEY `CodigoPatologia` (`CodigoPatologia`);

--
-- Indices de la tabla `atiende`
--
ALTER TABLE `atiende`
  ADD KEY `CodigoDiagnostico` (`CodigoDiagnostico`),
  ADD KEY `CIMedico` (`CIMedico`);

--
-- Indices de la tabla `chatea`
--
ALTER TABLE `chatea`
  ADD KEY `CIMedico` (`CIMedico`),
  ADD KEY `CIPaciente` (`CIPaciente`);

--
-- Indices de la tabla `corresponde`
--
ALTER TABLE `corresponde`
  ADD KEY `CodigoDiagnostico` (`CodigoDiagnostico`),
  ADD KEY `CodigoPatologia` (`CodigoPatologia`);

--
-- Indices de la tabla `diagnostico`
--
ALTER TABLE `diagnostico`
  ADD PRIMARY KEY (`CodigoDiagnostico`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD KEY `CIMedico` (`CIMedico`);

--
-- Indices de la tabla `medicoenvia`
--
ALTER TABLE `medicoenvia`
  ADD KEY `codigoMensaje` (`codigoMensaje`),
  ADD KEY `CiMedico` (`CiMedico`);

--
-- Indices de la tabla `mensajechat`
--
ALTER TABLE `mensajechat`
  ADD UNIQUE KEY `CodigoMensaje` (`CodigoMensaje`),
  ADD KEY `CiEmisor` (`CiEmisor`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD KEY `CIPaciente` (`CIPaciente`);

--
-- Indices de la tabla `pacienteenvia`
--
ALTER TABLE `pacienteenvia`
  ADD KEY `codigoMensaje` (`codigoMensaje`),
  ADD KEY `CiPaciente` (`CiPaciente`);

--
-- Indices de la tabla `patologia`
--
ALTER TABLE `patologia`
  ADD PRIMARY KEY (`CodigoPatologia`);

--
-- Indices de la tabla `recibe`
--
ALTER TABLE `recibe`
  ADD KEY `CIPaciente` (`CIPaciente`),
  ADD KEY `CodigoDiagnostico` (`CodigoDiagnostico`);

--
-- Indices de la tabla `sintoma`
--
ALTER TABLE `sintoma`
  ADD PRIMARY KEY (`CodigoSintoma`);

--
-- Indices de la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD KEY `CIPaciente` (`CIPaciente`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CI`),
  ADD UNIQUE KEY `Mail` (`Mail`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `diagnostico`
--
ALTER TABLE `diagnostico`
  MODIFY `CodigoDiagnostico` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensajechat`
--
ALTER TABLE `mensajechat`
  MODIFY `CodigoMensaje` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `patologia`
--
ALTER TABLE `patologia`
  MODIFY `CodigoPatologia` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sintoma`
--
ALTER TABLE `sintoma`
  MODIFY `CodigoSintoma` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`CIAdmin`) REFERENCES `usuario` (`CI`);

--
-- Filtros para la tabla `asociado`
--
ALTER TABLE `asociado`
  ADD CONSTRAINT `asociado_ibfk_1` FOREIGN KEY (`CodigoPatologia`) REFERENCES `patologia` (`CodigoPatologia`),
  ADD CONSTRAINT `asociado_ibfk_2` FOREIGN KEY (`CodigoSintoma`) REFERENCES `sintoma` (`CodigoSintoma`);

--
-- Filtros para la tabla `atiende`
--
ALTER TABLE `atiende`
  ADD CONSTRAINT `atiende_ibfk_1` FOREIGN KEY (`CodigoDiagnostico`) REFERENCES `diagnostico` (`CodigoDiagnostico`),
  ADD CONSTRAINT `atiende_ibfk_2` FOREIGN KEY (`CIMedico`) REFERENCES `medico` (`CIMedico`);

--
-- Filtros para la tabla `chatea`
--
ALTER TABLE `chatea`
  ADD CONSTRAINT `chatea_ibfk_1` FOREIGN KEY (`CIMedico`) REFERENCES `medico` (`CIMedico`),
  ADD CONSTRAINT `chatea_ibfk_2` FOREIGN KEY (`CIPaciente`) REFERENCES `paciente` (`CIPaciente`);

--
-- Filtros para la tabla `corresponde`
--
ALTER TABLE `corresponde`
  ADD CONSTRAINT `corresponde_ibfk_1` FOREIGN KEY (`CodigoDiagnostico`) REFERENCES `diagnostico` (`CodigoDiagnostico`),
  ADD CONSTRAINT `corresponde_ibfk_2` FOREIGN KEY (`CodigoPatologia`) REFERENCES `patologia` (`CodigoPatologia`);

--
-- Filtros para la tabla `medico`
--
ALTER TABLE `medico`
  ADD CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`CIMedico`) REFERENCES `usuario` (`CI`);

--
-- Filtros para la tabla `medicoenvia`
--
ALTER TABLE `medicoenvia`
  ADD CONSTRAINT `medicoenvia_ibfk_1` FOREIGN KEY (`codigoMensaje`) REFERENCES `mensajechat` (`CodigoMensaje`),
  ADD CONSTRAINT `medicoenvia_ibfk_2` FOREIGN KEY (`CiMedico`) REFERENCES `medico` (`CIMedico`);

--
-- Filtros para la tabla `mensajechat`
--
ALTER TABLE `mensajechat`
  ADD CONSTRAINT `mensajechat_ibfk_1` FOREIGN KEY (`CiEmisor`) REFERENCES `usuario` (`CI`);

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`CIPaciente`) REFERENCES `usuario` (`CI`);

--
-- Filtros para la tabla `pacienteenvia`
--
ALTER TABLE `pacienteenvia`
  ADD CONSTRAINT `pacienteenvia_ibfk_1` FOREIGN KEY (`codigoMensaje`) REFERENCES `mensajechat` (`CodigoMensaje`),
  ADD CONSTRAINT `pacienteenvia_ibfk_2` FOREIGN KEY (`CiPaciente`) REFERENCES `paciente` (`CIPaciente`);

--
-- Filtros para la tabla `recibe`
--
ALTER TABLE `recibe`
  ADD CONSTRAINT `recibe_ibfk_1` FOREIGN KEY (`CIPaciente`) REFERENCES `paciente` (`CIPaciente`),
  ADD CONSTRAINT `recibe_ibfk_2` FOREIGN KEY (`CodigoDiagnostico`) REFERENCES `diagnostico` (`CodigoDiagnostico`);

--
-- Filtros para la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD CONSTRAINT `tiene_ibfk_1` FOREIGN KEY (`CIPaciente`) REFERENCES `paciente` (`CIPaciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
