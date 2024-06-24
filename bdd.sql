-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2024 a las 00:14:45
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id_autor`, `nombre`, `apellido`) VALUES
(1, 'Isabel Allende', NULL),
(2, 'Gabriel García Márquez', NULL),
(3, 'Mario Vargas Llosa', NULL),
(4, 'Pablo Neruda', NULL),
(5, 'Jorge Luis Borges', NULL),
(6, 'Julio Cortázar', NULL),
(7, 'Octavio Paz', NULL),
(8, 'Carlos Fuentes', NULL),
(9, 'Alejo Carpentier', NULL),
(10, 'Manuel Puig', NULL),
(11, 'Miguel Ángel Asturias', NULL),
(12, 'Joaquim Maria Machado de Assis', NULL),
(13, 'Rubén Darío', NULL),
(14, 'César Vallejo', NULL),
(15, 'Juan Rulfo', NULL),
(16, 'Augusto Roa Bastos', NULL),
(17, 'José Martí', NULL),
(18, 'Adolfo Bioy Casares', NULL),
(19, 'Carlos Drummond de Andrade', NULL),
(20, 'Julio Ramón Ribeyro', NULL),
(21, 'José Donoso', NULL),
(22, 'Juan Carlos Onetti', NULL),
(23, 'Antonio Skármeta', NULL),
(24, 'Luis Sepúlveda', NULL),
(25, 'Clarice Lispector', NULL),
(26, 'Miguel de Cervantes', NULL),
(27, 'Jorge Amado', NULL),
(28, 'Horacio Quiroga', NULL),
(29, 'José Saramago', NULL),
(30, 'Camilo José Cela', NULL),
(31, 'Federico García Lorca', NULL),
(32, 'Benito Pérez Galdós', NULL),
(33, 'Arturo Pérez-Reverte', NULL),
(34, 'Ana María Matute', NULL),
(35, 'Ramón del Valle-Inclán', NULL),
(36, 'Emilia Pardo Bazán', NULL),
(37, 'Miguel Delibes', NULL),
(38, 'Leopoldo Alas Clarín', NULL),
(39, 'Rosa Montero', NULL),
(40, 'Juan Marsé', NULL),
(41, 'Javier Marías', NULL),
(42, 'Antonio Muñoz Molina', NULL),
(43, 'Luis Landero', NULL),
(44, 'Manuel Rivas', NULL),
(45, 'Juan José Millás', NULL),
(46, 'Marta Sanz', NULL),
(47, 'Rafael Sánchez Ferlosio', NULL),
(48, 'Almudena Grandes', NULL),
(49, 'Juan Goytisolo', NULL),
(50, 'Ignacio Aldecoa', NULL),
(51, 'Ramón J. Sender', NULL),
(52, 'Dolores Redondo', NULL),
(53, 'Fernando Aramburu', NULL),
(54, 'Carmen Laforet', NULL),
(55, 'Miguel Espinosa', NULL),
(56, 'Lola Larra', NULL),
(57, 'María Dueñas', NULL),
(58, 'Luis Martín-Santos', NULL),
(59, 'Jesús Carrasco', NULL),
(60, 'Rosa Ribas', NULL),
(61, 'Eduardo Mendoza', NULL),
(62, 'Nuria Amat', NULL),
(63, 'Ricardo Piglia', NULL),
(64, 'Samanta Schweblin', NULL),
(65, 'Álvaro Enrigue', NULL),
(66, 'Valeria Luiselli', NULL),
(67, 'Andrés Neuman', NULL),
(68, 'Guadalupe Nettel', NULL),
(69, 'Patricio Pron', NULL),
(70, 'Alejandro Zambra', NULL),
(71, 'Cristina Rivera Garza', NULL),
(72, 'Mariana Enriquez', NULL),
(73, 'Hernán Ronsino', NULL),
(74, 'Juan José Saer', NULL),
(75, 'Rodolfo Walsh', NULL),
(76, 'José Emilio Pacheco', NULL),
(77, 'Elena Poniatowska', NULL),
(78, 'Rosario Castellanos', NULL),
(79, 'Marta Lamas', NULL),
(80, 'Gioconda Belli', NULL),
(81, 'Pablo de Rokha', NULL),
(82, 'Nicanor Parra', NULL),
(83, 'Pablo de Rokha', NULL),
(84, 'Gonzalo Rojas', NULL),
(85, 'Vicente Huidobro', NULL),
(86, 'Carmen Berenguer', NULL),
(87, 'Alejandra Pizarnik', NULL),
(88, 'Roberto Bolaño', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `rut` varchar(30) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `facultad` varchar(30) DEFAULT NULL,
  `carrera` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`rut`, `nombre`, `facultad`, `carrera`) VALUES
('12345678-9', 'Juan Pérez', 'Ingeniería', 'Civil'),
('87654321-0', 'María Gómez', 'Medicina', 'Enfermería'),
('11223344-5', 'Carlos Soto', 'Derecho', 'Abogacía'),
('99887766-4', 'Ana López', 'Economía', 'Finanzas'),
('12345679-5', 'Pedro Martínez', 'Ciencias', 'Biología'),
('23456789-0', 'Laura Hernández', 'Ingeniería', 'Informática'),
('34567890-1', 'José Ramírez', 'Artes', 'Música'),
('45678901-2', 'Claudia Torres', 'Medicina', 'Odontología'),
('56789012-3', 'Francisco Silva', 'Derecho', 'Abogacía'),
('67890123-4', 'Carmen Vega', 'Economía', 'Administración'),
('78901234-5', 'Luis Morales', 'Ingeniería', 'Eléctrica'),
('89012345-6', 'Andrea Rojas', 'Ciencias', 'Física'),
('90123456-7', 'Manuel Díaz', 'Artes', 'Pintura'),
('01234567-8', 'Isabel Castillo', 'Medicina', 'Kinesiología'),
('12345680-9', 'Roberto Fuentes', 'Derecho', 'Notaría'),
('23456780-0', 'Mónica Bravo', 'Economía', 'Contabilidad'),
('34567891-1', 'Hugo Aguilar', 'Ingeniería', 'Industrial'),
('45678912-2', 'Patricia Reyes', 'Ciencias', 'Matemáticas'),
('56789023-3', 'Daniel González', 'Artes', 'Teatro'),
('67890134-4', 'Rosa Soto', 'Medicina', 'Enfermería'),
('78901245-5', 'Miguel Valdés', 'Derecho', 'Abogacía'),
('89012356-6', 'Elena Figueroa', 'Economía', 'Marketing'),
('90123467-7', 'Juan Carlos Herrera', 'Ingeniería', 'Química'),
('01234578-8', 'María Teresa Méndez', 'Ciencias', 'Química'),
('12345689-9', 'Carlos Eduardo Espinoza', 'Artes', 'Escultura'),
('23456790-0', 'Ana Isabel Bustos', 'Medicina', 'Fisioterapia'),
('34567890-2', 'Jorge Luis Vargas', 'Derecho', 'Criminología'),
('45678901-3', 'Liliana Ortiz', 'Economía', 'Empresariales'),
('56789012-4', 'Pablo García', 'Ingeniería', 'Civil'),
('67890123-5', 'Catalina Mendoza', 'Ciencias', 'Biología'),
('78901234-6', 'Esteban Ruiz', 'Artes', 'Fotografía'),
('89012345-7', 'Gabriela Sáez', 'Medicina', 'Nutrición'),
('90123456-8', 'Felipe Castillo', 'Derecho', 'Notaría'),
('01234567-9', 'Paula Morales', 'Economía', 'Finanzas'),
('12345670-1', 'José Luis Vidal', 'Ingeniería', 'Informática'),
('23456781-2', 'Verónica Paredes', 'Ciencias', 'Física'),
('34567892-3', 'Francisca Cáceres', 'Artes', 'Música'),
('45678903-4', 'Diego Fernández', 'Medicina', 'Odontología'),
('56789014-5', 'Natalia Jiménez', 'Derecho', 'Abogacía'),
('67890125-6', 'Rodrigo Guzmán', 'Economía', 'Administración'),
('78901236-7', 'Valeria Quintana', 'Ingeniería', 'Eléctrica'),
('89012347-8', 'Ignacio Navarrete', 'Ciencias', 'Química'),
('90123458-9', 'Camila Riquelme', 'Artes', 'Pintura'),
('01234569-0', 'Sebastián Vergara', 'Medicina', 'Kinesiología'),
('12345671-1', 'Antonia Toledo', 'Derecho', 'Notaría'),
('23456782-2', 'Martín Campos', 'Economía', 'Contabilidad'),
('34567893-3', 'Rafael Bustamante', 'Ingeniería', 'Industrial'),
('45678904-4', 'Josefa Robles', 'Ciencias', 'Matemáticas'),
('56789015-5', 'Álvaro Sepúlveda', 'Artes', 'Teatro'),
('67890126-6', 'Florencia Pino', 'Medicina', 'Enfermería'),
('78901237-7', 'Vicente Salinas', 'Derecho', 'Abogacía'),
('89012348-8', 'Ana María Yáñez', 'Economía', 'Marketing'),
('90123459-9', 'Benjamín Castillo', 'Ingeniería', 'Química'),
('01234560-0', 'Catalina González', 'Ciencias', 'Química'),
('12345672-1', 'Mariana Reyes', 'Artes', 'Escultura'),
('23456783-2', 'Andrés Ortiz', 'Medicina', 'Fisioterapia'),
('34567894-3', 'Laura Carrasco', 'Derecho', 'Criminología'),
('45678905-4', 'Diego Pérez', 'Economía', 'Empresariales'),
('56789016-5', 'Elisa Ramírez', 'Ingeniería', 'Civil'),
('67890127-6', 'Gonzalo Vega', 'Ciencias', 'Biología'),
('78901238-7', 'Ricardo Lara', 'Artes', 'Fotografía'),
('89012349-8', 'Daniela Herrera', 'Medicina', 'Nutrición'),
('90123460-9', 'Francisco Espinoza', 'Derecho', 'Notaría'),
('01234571-0', 'Lucía Paredes', 'Economía', 'Finanzas'),
('12345673-1', 'Esteban Vargas', 'Ingeniería', 'Informática'),
('23456784-2', 'Andrea Ruiz', 'Ciencias', 'Física'),
('34567895-3', 'Manuel Fuentes', 'Artes', 'Música'),
('45678906-4', 'Catalina Valenzuela', 'Medicina', 'Odontología'),
('56789017-5', 'Matías Fernández', 'Derecho', 'Abogacía'),
('67890128-6', 'Valentina Soto', 'Economía', 'Administración'),
('78901239-7', 'Fernando Orellana', 'Ingeniería', 'Eléctrica'),
('89012350-8', 'Sofía Castro', 'Ciencias', 'Química'),
('90123461-9', 'Carlos Vidal', 'Artes', 'Pintura'),
('01234572-0', 'Fernanda Peña', 'Medicina', 'Kinesiología'),
('12345674-1', 'Claudio Méndez', 'Derecho', 'Notaría'),
('23456785-2', 'Gloria Herrera', 'Economía', 'Contabilidad'),
('34567896-3', 'Javier Molina', 'Ingeniería', 'Industrial'),
('45678907-4', 'Marta Sandoval', 'Ciencias', 'Matemáticas'),
('56789018-5', 'Tomás Aravena', 'Artes', 'Teatro'),
('67890129-6', 'Karina Soto', 'Medicina', 'Enfermería'),
('78901240-7', 'Mario Leiva', 'Derecho', 'Abogacía'),
('89012351-8', 'Loreto Díaz', 'Economía', 'Marketing'),
('90123462-9', 'Rodrigo Morales', 'Ingeniería', 'Química'),
('01234573-0', 'Francisco Olivares', 'Ciencias', 'Química'),
('12345675-1', 'Javiera Fuentes', 'Artes', 'Escultura'),
('23456786-2', 'Mauricio Pérez', 'Medicina', 'Fisioterapia'),
('34567897-3', 'Carmen Cabrera', 'Derecho', 'Criminología'),
('45678908-4', 'Vicente Pizarro', 'Economía', 'Empresariales'),
('56789019-5', 'Sebastián Valdés', 'Ingeniería', 'Civil'),
('67890130-6', 'Alicia Gutiérrez', 'Ciencias', 'Biología'),
('78901241-7', 'Ricardo Miranda', 'Artes', 'Fotografía'),
('89012352-8', 'Ángela Rivas', 'Medicina', 'Nutrición'),
('90123463-9', 'Gabriel Figueroa', 'Derecho', 'Notaría'),
('01234574-0', 'Josefina Torres', 'Economía', 'Finanzas'),
('12345676-1', 'Cristóbal Lara', 'Ingeniería', 'Informática');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `id_editorial` varchar(30) DEFAULT NULL,
  `Nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`id_editorial`, `Nombre`) VALUES
('E001', 'Editorial A'),
('E002', 'Editorial B'),
('E003', 'Editorial C'),
('E004', 'Editorial D'),
('E005', 'Editorial E'),
('E006', 'Editorial F'),
('E007', 'Editorial G'),
('E008', 'Editorial H'),
('E009', 'Editorial I'),
('E010', 'Editorial J'),
('E011', 'Editorial K'),
('E012', 'Editorial L'),
('E013', 'Editorial M'),
('E014', 'Editorial N'),
('E015', 'Editorial O'),
('E016', 'Editorial P'),
('E017', 'Editorial Q'),
('E018', 'Editorial R'),
('E019', 'Editorial S'),
('E020', 'Editorial T'),
('E021', 'Editorial U'),
('E022', 'Editorial V'),
('E023', 'Editorial W'),
('E024', 'Editorial X'),
('E025', 'Editorial Y'),
('E026', 'Editorial Z'),
('E027', 'Editorial AA'),
('E028', 'Editorial BB'),
('E029', 'Editorial CC'),
('E030', 'Editorial DD'),
('E031', 'Editorial EE'),
('E032', 'Editorial FF'),
('E033', 'Editorial GG'),
('E034', 'Editorial HH'),
('E035', 'Editorial II'),
('E036', 'Editorial JJ'),
('E037', 'Editorial KK'),
('E038', 'Editorial LL'),
('E039', 'Editorial MM'),
('E040', 'Editorial NN'),
('E041', 'Editorial OO'),
('E042', 'Editorial PP'),
('E043', 'Editorial QQ'),
('E044', 'Editorial RR'),
('E045', 'Editorial SS'),
('E046', 'Editorial TT'),
('E047', 'Editorial UU'),
('E048', 'Editorial VV'),
('E049', 'Editorial WW'),
('E050', 'Editorial XX'),
('E051', 'Editorial YY'),
('E052', 'Editorial ZZ'),
('E053', 'Editorial AAA'),
('E054', 'Editorial BBB'),
('E055', 'Editorial CCC'),
('E056', 'Editorial DDD'),
('E057', 'Editorial EEE'),
('E058', 'Editorial FFF'),
('E059', 'Editorial GGG'),
('E060', 'Editorial HHH'),
('E061', 'Editorial III'),
('E062', 'Editorial JJJ'),
('E063', 'Editorial KKK'),
('E064', 'Editorial LLL'),
('E065', 'Editorial MMM'),
('E066', 'Editorial NNN'),
('E067', 'Editorial OOO'),
('E068', 'Editorial PPP'),
('E069', 'Editorial QQQ'),
('E070', 'Editorial RRR'),
('E071', 'Editorial SSS'),
('E072', 'Editorial TTT'),
('E073', 'Editorial UUU'),
('E074', 'Editorial VVV'),
('E075', 'Editorial WWW'),
('E076', 'Editorial XXX'),
('E077', 'Editorial YYY'),
('E078', 'Editorial ZZZ'),
('E079', 'Editorial AAAA'),
('E080', 'Editorial BBBB'),
('E081', 'Editorial CCCC'),
('E082', 'Editorial DDDD'),
('E083', 'Editorial EEEE'),
('E084', 'Editorial FFFF'),
('E085', 'Editorial GGGG'),
('E086', 'Editorial HHHH'),
('E087', 'Editorial IIII'),
('E088', 'Editorial JJJJ'),
('E089', 'Editorial KKKK'),
('E090', 'Editorial LLLL'),
('E091', 'Editorial MMMM'),
('E092', 'Editorial NNNN'),
('E093', 'Editorial OOOO'),
('E094', 'Editorial PPPP'),
('E095', 'Editorial QQQQ'),
('E096', 'Editorial RRRR'),
('E097', 'Editorial SSSS'),
('E098', 'Editorial TTTT'),
('E099', 'Editorial UUUU'),
('E100', 'Editorial VVVV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplar`
--

CREATE TABLE `ejemplar` (
  `id_ejemplar` varchar(30) DEFAULT NULL,
  `isbn` varchar(30) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ejemplar`
--

INSERT INTO `ejemplar` (`id_ejemplar`, `isbn`, `precio`, `estado`) VALUES
('J001', '978-3-16-148410-0', 5000, 'Disponible'),
('J002', '978-1-56619-909-4', 4500, 'Prestado'),
('J003', '978-0-262-13472-9', 7000, 'Disponible'),
('J004', '978-0-395-19395-8', 3000, 'Disponible'),
('J005', '978-0-307-40646-3', 6000, 'Disponible'),
('J006', '978-3-16-148410-1', 5200, 'Disponible'),
('J007', '978-1-56619-909-5', 4600, 'Disponible'),
('J008', '978-0-262-13472-0', 7100, 'Disponible'),
('J009', '978-0-395-19395-9', 3100, 'Disponible'),
('J010', '978-0-307-40646-4', 6100, 'Disponible'),
('J011', '978-3-16-148410-2', 5300, 'Disponible'),
('J012', '978-1-56619-909-6', 4700, 'Disponible'),
('J013', '978-0-262-13472-1', 7200, 'Disponible'),
('J014', '978-0-395-19396-0', 3200, 'Disponible'),
('J015', '978-0-307-40646-5', 6200, 'Disponible'),
('J016', '978-3-16-148410-3', 5400, 'Disponible'),
('J017', '978-1-56619-909-7', 4800, 'Disponible'),
('J018', '978-0-262-13472-2', 7300, 'Disponible'),
('J019', '978-0-395-19396-1', 3300, 'Disponible'),
('J020', '978-0-307-40646-6', 6300, 'Disponible'),
('J021', '978-3-16-148410-4', 5500, 'Disponible'),
('J022', '978-1-56619-909-8', 4900, 'Disponible'),
('J023', '978-0-262-13472-3', 7400, 'Disponible'),
('J024', '978-0-395-19396-2', 3400, 'Disponible'),
('J025', '978-0-307-40646-7', 6400, 'Disponible'),
('J026', '978-3-16-148410-5', 5600, 'Disponible'),
('J027', '978-1-56619-909-9', 5000, 'Disponible'),
('J028', '978-0-262-13472-4', 7500, 'Disponible'),
('J029', '978-0-395-19396-3', 3500, 'Disponible'),
('J030', '978-0-307-40646-8', 6500, 'Disponible'),
('J031', '978-3-16-148410-6', 5700, 'Disponible'),
('J032', '978-1-56619-909-0', 5100, 'Disponible'),
('J033', '978-0-262-13472-5', 7600, 'Disponible'),
('J034', '978-0-395-19396-4', 3600, 'Disponible'),
('J035', '978-0-307-40646-9', 6600, 'Disponible'),
('J036', '978-3-16-148410-7', 5800, 'Disponible'),
('J037', '978-1-56619-909-1', 5200, 'Disponible'),
('J038', '978-0-262-13472-6', 7700, 'Disponible'),
('J039', '978-0-395-19396-5', 3700, 'Disponible'),
('J040', '978-0-307-40646-0', 6700, 'Disponible'),
('J041', '978-3-16-148410-8', 5900, 'Disponible'),
('J042', '978-1-56619-909-2', 5300, 'Disponible'),
('J043', '978-0-262-13472-7', 7800, 'Disponible'),
('J044', '978-0-395-19396-6', 3800, 'Disponible'),
('J045', '978-0-307-40646-1', 6800, 'Disponible'),
('J046', '978-3-16-148410-9', 6000, 'Disponible'),
('J047', '978-1-56619-909-3', 5400, 'Disponible'),
('J048', '978-0-262-13472-8', 7900, 'Disponible'),
('J049', '978-0-395-19396-7', 3900, 'Disponible'),
('J050', '978-0-307-40646-2', 6900, 'Disponible'),
('J051', '978-3-16-148411-0', 6100, 'Disponible'),
('J052', '978-1-56619-910-0', 5500, 'Disponible'),
('J053', '978-0-262-13473-0', 8000, 'Disponible'),
('J054', '978-0-395-19397-0', 4000, 'Disponible'),
('J055', '978-0-307-40647-0', 7000, 'Disponible'),
('J056', '978-3-16-148411-1', 6200, 'Disponible'),
('J057', '978-1-56619-910-1', 5600, 'Disponible'),
('J058', '978-0-262-13473-1', 8100, 'Disponible'),
('J059', '978-0-395-19397-1', 4100, 'Disponible'),
('J060', '978-0-307-40647-1', 7100, 'Disponible'),
('J061', '978-3-16-148411-2', 6300, 'Disponible'),
('J062', '978-1-56619-910-2', 5700, 'Disponible'),
('J063', '978-0-262-13473-2', 8200, 'Disponible'),
('J064', '978-0-395-19397-2', 4200, 'Disponible'),
('J065', '978-0-307-40647-2', 7200, 'Disponible'),
('J066', '978-3-16-148411-3', 6400, 'Disponible'),
('J067', '978-1-56619-910-3', 5800, 'Disponible'),
('J068', '978-0-262-13473-3', 8300, 'Disponible'),
('J069', '978-0-395-19397-3', 4300, 'Disponible'),
('J070', '978-0-307-40647-3', 7300, 'Disponible'),
('J071', '978-3-16-148411-4', 6500, 'Disponible'),
('J072', '978-1-56619-910-4', 5900, 'Disponible'),
('J073', '978-0-262-13473-4', 8400, 'Disponible'),
('J074', '978-0-395-19397-4', 4400, 'Disponible'),
('J075', '978-0-307-40647-4', 7400, 'Disponible'),
('J076', '978-3-16-148411-5', 6600, 'Disponible'),
('J077', '978-1-56619-910-5', 6000, 'Disponible'),
('J078', '978-0-262-13473-5', 8500, 'Disponible'),
('J079', '978-0-395-19397-5', 4500, 'Disponible'),
('J080', '978-0-307-40647-5', 7500, 'Disponible'),
('J081', '978-3-16-148411-6', 6700, 'Disponible'),
('J082', '978-1-56619-910-6', 6100, 'Disponible'),
('J083', '978-0-262-13473-6', 8600, 'Disponible'),
('J084', '978-0-395-19397-6', 4600, 'Disponible'),
('J085', '978-0-307-40647-6', 7600, 'Disponible'),
('J086', '978-3-16-148411-7', 6800, 'Disponible'),
('J087', '978-1-56619-910-7', 6200, 'Disponible'),
('J088', '978-0-262-13473-7', 8700, 'Disponible'),
('J089', '978-0-395-19397-7', 4700, 'Disponible'),
('J090', '978-0-307-40647-7', 7700, 'Disponible'),
('J091', '978-3-16-148411-8', 6900, 'Disponible'),
('J092', '978-1-56619-910-8', 6300, 'Disponible'),
('J093', '978-0-262-13473-8', 8800, 'Disponible'),
('J094', '978-0-395-19397-8', 4800, 'Disponible'),
('J095', '978-0-307-40647-8', 7800, 'Disponible'),
('J096', '978-3-16-148411-9', 7000, 'Disponible'),
('J097', '978-1-56619-910-9', 6400, 'Disponible'),
('J098', '978-0-262-13473-9', 8900, 'Disponible'),
('J099', '978-0-395-19397-9', 4900, 'Disponible'),
('J100', '978-0-307-40647-9', 7900, 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `isbn` varchar(30) DEFAULT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `genero` varchar(30) DEFAULT NULL,
  `id_editorial` varchar(30) DEFAULT NULL,
  `edicion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`isbn`, `titulo`, `id_autor`, `genero`, `id_editorial`, `edicion`) VALUES
('978-3-16-148410-0', 'Libro 1', 1, 'Ficción', 'E001', 1),
('978-1-56619-909-4', 'Libro 2', 2, 'Ciencia', 'E002', 2),
('978-0-262-13472-9', 'Libro 3', 3, 'Aventura', 'E003', 3),
('978-0-395-19395-8', 'Libro 4', 4, 'Romance', 'E004', 4),
('978-0-307-40646-3', 'Libro 5', 5, 'Misterio', 'E005', 5),
('978-3-16-148410-1', 'Libro 6', 6, 'Ficción', 'E006', 6),
('978-1-56619-909-5', 'Libro 7', 7, 'Ciencia', 'E007', 7),
('978-0-262-13472-0', 'Libro 8', 8, 'Aventura', 'E008', 8),
('978-0-395-19395-9', 'Libro 9', 9, 'Romance', 'E009', 9),
('978-0-307-40646-4', 'Libro 10', 10, 'Misterio', 'E010', 10),
('978-3-16-148410-2', 'Libro 11', 11, 'Ficción', 'E011', 11),
('978-1-56619-909-6', 'Libro 12', 12, 'Ciencia', 'E012', 12),
('978-0-262-13472-1', 'Libro 13', 13, 'Aventura', 'E013', 13),
('978-0-395-19396-0', 'Libro 14', 14, 'Romance', 'E014', 14),
('978-0-307-40646-5', 'Libro 15', 15, 'Misterio', 'E015', 15),
('978-3-16-148410-3', 'Libro 16', 16, 'Ficción', 'E016', 16),
('978-1-56619-909-7', 'Libro 17', 17, 'Ciencia', 'E017', 17),
('978-0-262-13472-2', 'Libro 18', 18, 'Aventura', 'E018', 18),
('978-0-395-19396-1', 'Libro 19', 19, 'Romance', 'E019', 19),
('978-0-307-40646-6', 'Libro 20', 20, 'Misterio', 'E020', 20),
('978-3-16-148410-4', 'Libro 21', 21, 'Ficción', 'E021', 21),
('978-1-56619-909-8', 'Libro 22', 22, 'Ciencia', 'E022', 22),
('978-0-262-13472-3', 'Libro 23', 23, 'Aventura', 'E023', 23),
('978-0-395-19396-2', 'Libro 24', 24, 'Romance', 'E024', 24),
('978-0-307-40646-7', 'Libro 25', 25, 'Misterio', 'E025', 25),
('978-3-16-148410-5', 'Libro 26', 26, 'Ficción', 'E026', 26),
('978-1-56619-909-9', 'Libro 27', 27, 'Ciencia', 'E027', 27),
('978-0-262-13472-4', 'Libro 28', 28, 'Aventura', 'E028', 28),
('978-0-395-19396-3', 'Libro 29', 29, 'Romance', 'E029', 29),
('978-0-307-40646-8', 'Libro 30', 30, 'Misterio', 'E030', 30),
('978-3-16-148410-6', 'Libro 31', 31, 'Ficción', 'E031', 31),
('978-1-56619-909-0', 'Libro 32', 32, 'Ciencia', 'E032', 32),
('978-0-262-13472-5', 'Libro 33', 33, 'Aventura', 'E033', 33),
('978-0-395-19396-4', 'Libro 34', 34, 'Romance', 'E034', 34),
('978-0-307-40646-9', 'Libro 35', 35, 'Misterio', 'E035', 35),
('978-3-16-148410-7', 'Libro 36', 36, 'Ficción', 'E036', 36),
('978-1-56619-909-1', 'Libro 37', 37, 'Ciencia', 'E037', 37),
('978-0-262-13472-6', 'Libro 38', 38, 'Aventura', 'E038', 38),
('978-0-395-19396-5', 'Libro 39', 39, 'Romance', 'E039', 39),
('978-0-307-40646-0', 'Libro 40', 40, 'Misterio', 'E040', 40),
('978-3-16-148410-8', 'Libro 41', 41, 'Ficción', 'E041', 41),
('978-1-56619-909-2', 'Libro 42', 42, 'Ciencia', 'E042', 42),
('978-0-262-13472-7', 'Libro 43', 43, 'Aventura', 'E043', 43),
('978-0-395-19396-6', 'Libro 44', 44, 'Romance', 'E044', 44),
('978-0-307-40646-1', 'Libro 45', 45, 'Misterio', 'E045', 45),
('978-3-16-148410-9', 'Libro 46', 46, 'Ficción', 'E046', 46),
('978-1-56619-909-3', 'Libro 47', 47, 'Ciencia', 'E047', 47),
('978-0-262-13472-8', 'Libro 48', 48, 'Aventura', 'E048', 48),
('978-0-395-19396-7', 'Libro 49', 49, 'Romance', 'E049', 49),
('978-0-307-40646-2', 'Libro 50', 50, 'Misterio', 'E050', 50),
('978-3-16-148411-0', 'Libro 51', 51, 'Ficción', 'E051', 51),
('978-1-56619-910-0', 'Libro 52', 52, 'Ciencia', 'E052', 52),
('978-0-262-13473-0', 'Libro 53', 53, 'Aventura', 'E053', 53),
('978-0-395-19397-0', 'Libro 54', 54, 'Romance', 'E054', 54),
('978-0-307-40647-0', 'Libro 55', 55, 'Misterio', 'E055', 55),
('978-3-16-148411-1', 'Libro 56', 56, 'Ficción', 'E056', 56),
('978-1-56619-910-1', 'Libro 57', 57, 'Ciencia', 'E057', 57),
('978-0-262-13473-1', 'Libro 58', 58, 'Aventura', 'E058', 58),
('978-0-395-19397-1', 'Libro 59', 59, 'Romance', 'E059', 59),
('978-0-307-40647-1', 'Libro 60', 60, 'Misterio', 'E060', 60),
('978-3-16-148411-2', 'Libro 61', 61, 'Ficción', 'E061', 61),
('978-1-56619-910-2', 'Libro 62', 62, 'Ciencia', 'E062', 62),
('978-0-262-13473-2', 'Libro 63', 63, 'Aventura', 'E063', 63),
('978-0-395-19397-2', 'Libro 64', 64, 'Romance', 'E064', 64),
('978-0-307-40647-2', 'Libro 65', 65, 'Misterio', 'E065', 65),
('978-3-16-148411-3', 'Libro 66', 66, 'Ficción', 'E066', 66),
('978-1-56619-910-3', 'Libro 67', 67, 'Ciencia', 'E067', 67),
('978-0-262-13473-3', 'Libro 68', 68, 'Aventura', 'E068', 68),
('978-0-395-19397-3', 'Libro 69', 69, 'Romance', 'E069', 69),
('978-0-307-40647-3', 'Libro 70', 70, 'Misterio', 'E070', 70),
('978-3-16-148411-4', 'Libro 71', 71, 'Ficción', 'E071', 71),
('978-1-56619-910-4', 'Libro 72', 72, 'Ciencia', 'E072', 72),
('978-0-262-13473-4', 'Libro 73', 73, 'Aventura', 'E073', 73),
('978-0-395-19397-4', 'Libro 74', 74, 'Romance', 'E074', 74),
('978-0-307-40647-4', 'Libro 75', 75, 'Misterio', 'E075', 75),
('978-3-16-148411-5', 'Libro 76', 76, 'Ficción', 'E076', 76),
('978-1-56619-910-5', 'Libro 77', 77, 'Ciencia', 'E077', 77),
('978-0-262-13473-5', 'Libro 78', 78, 'Aventura', 'E078', 78),
('978-0-395-19397-5', 'Libro 79', 79, 'Romance', 'E079', 79),
('978-0-307-40647-5', 'Libro 80', 80, 'Misterio', 'E080', 80),
('978-3-16-148411-6', 'Libro 81', 81, 'Ficción', 'E081', 81),
('978-1-56619-910-6', 'Libro 82', 82, 'Ciencia', 'E082', 82),
('978-0-262-13473-6', 'Libro 83', 83, 'Aventura', 'E083', 83),
('978-0-395-19397-6', 'Libro 84', 84, 'Romance', 'E084', 84),
('978-0-307-40647-6', 'Libro 85', 85, 'Misterio', 'E085', 85),
('978-3-16-148411-7', 'Libro 86', 86, 'Ficción', 'E086', 86),
('978-1-56619-910-7', 'Libro 87', 87, 'Ciencia', 'E087', 87),
('978-0-262-13473-7', 'Libro 88', 88, 'Aventura', 'E088', 88);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `id_prestamo` int(11) NOT NULL,
  `id_ejemplar` varchar(30) DEFAULT NULL,
  `rut` varchar(30) DEFAULT NULL,
  `fecha_prestamo` date DEFAULT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `fecha_prevista` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`id_prestamo`, `id_ejemplar`, `rut`, `fecha_prestamo`, `fecha_devolucion`, `fecha_prevista`) VALUES
(1, 'J001', '12345678-9', '2023-06-15', '2023-07-15', '2023-07-22'),
(2, 'J002', '87654321-0', '2023-06-15', '2023-07-15', '2023-07-22'),
(3, 'J003', '11223344-5', '2023-06-15', '2023-07-15', '2023-07-22'),
(4, 'J004', '99887766-4', '2023-06-15', '2023-07-15', '2023-07-22'),
(5, 'J005', '12345679-5', '2023-06-15', '2023-07-15', '2023-07-22'),
(6, 'J006', '23456789-0', '2023-06-15', '2023-07-15', '2023-07-22'),
(7, 'J007', '34567890-1', '2023-06-15', '2023-07-15', '2023-07-22'),
(8, 'J008', '45678901-2', '2023-06-15', '2023-07-15', '2023-07-22'),
(9, 'J009', '56789012-3', '2023-06-15', '2023-07-15', '2023-07-22'),
(10, 'J010', '67890123-4', '2023-06-15', '2023-07-15', '2023-07-22'),
(11, 'J011', '78901234-5', '2023-06-15', '2023-07-15', '2023-07-22'),
(12, 'J012', '89012345-6', '2023-06-15', '2023-07-15', '2023-07-22'),
(13, 'J013', '90123456-7', '2023-06-15', '2023-07-15', '2023-07-22'),
(14, 'J014', '01234567-8', '2023-06-15', '2023-07-15', '2023-07-22'),
(15, 'J015', '12345680-9', '2023-06-15', '2023-07-15', '2023-07-22'),
(16, 'J016', '23456780-0', '2023-06-15', '2023-07-15', '2023-07-22'),
(17, 'J017', '34567891-1', '2023-06-15', '2023-07-15', '2023-07-22'),
(18, 'J018', '45678912-2', '2023-06-15', '2023-07-15', '2023-07-22'),
(19, 'J019', '56789023-3', '2023-06-15', '2023-07-15', '2023-07-22'),
(20, 'J020', '67890134-4', '2023-06-15', '2023-07-15', '2023-07-22'),
(21, 'J021', '78901245-5', '2023-06-15', '2023-07-15', '2023-07-22'),
(22, 'J022', '89012356-6', '2023-06-15', '2023-07-15', '2023-07-22'),
(23, 'J023', '90123467-7', '2023-06-15', '2023-07-15', '2023-07-22'),
(24, 'J024', '01234578-8', '2023-06-15', '2023-07-15', '2023-07-22'),
(25, 'J025', '12345670-1', '2023-06-15', '2023-07-15', '2023-07-22'),
(26, 'J026', '23456781-2', '2023-06-15', '2023-07-15', '2023-07-22'),
(27, 'J027', '34567892-3', '2023-06-15', '2023-07-15', '2023-07-22'),
(28, 'J028', '45678903-4', '2023-06-15', '2023-07-15', '2023-07-22'),
(29, 'J029', '56789014-5', '2023-06-15', '2023-07-15', '2023-07-22'),
(30, 'J030', '67890125-6', '2023-06-15', '2023-07-15', '2023-07-22'),
(31, 'J031', '78901236-7', '2023-06-15', '2023-07-15', '2023-07-22'),
(32, 'J032', '89012347-8', '2023-06-15', '2023-07-15', '2023-07-22'),
(33, 'J033', '90123458-9', '2023-06-15', '2023-07-15', '2023-07-22'),
(34, 'J034', '01234569-0', '2023-06-15', '2023-07-15', '2023-07-22'),
(35, 'J035', '12345671-1', '2023-06-15', '2023-07-15', '2023-07-22'),
(36, 'J036', '23456782-2', '2023-06-15', '2023-07-15', '2023-07-22'),
(37, 'J037', '34567893-3', '2023-06-15', '2023-07-15', '2023-07-22'),
(38, 'J038', '45678904-4', '2023-06-15', '2023-07-15', '2023-07-22'),
(39, 'J039', '56789015-5', '2023-06-15', '2023-07-15', '2023-07-22'),
(40, 'J040', '67890126-6', '2023-06-15', '2023-07-15', '2023-07-22'),
(41, 'J041', '78901237-7', '2023-06-15', '2023-07-15', '2023-07-22'),
(42, 'J042', '89012348-8', '2023-06-15', '2023-07-15', '2023-07-22'),
(43, 'J043', '90123459-9', '2023-06-15', '2023-07-15', '2023-07-22'),
(44, 'J044', '01234560-0', '2023-06-15', '2023-07-15', '2023-07-22'),
(45, 'J045', '12345672-1', '2023-06-15', '2023-07-15', '2023-07-22'),
(46, 'J046', '23456783-2', '2023-06-15', '2023-07-15', '2023-07-22'),
(47, 'J047', '34567894-3', '2023-06-15', '2023-07-15', '2023-07-22'),
(48, 'J048', '45678905-4', '2023-06-15', '2023-07-15', '2023-07-22'),
(49, 'J049', '56789016-5', '2023-06-15', '2023-07-15', '2023-07-22'),
(50, 'J050', '67890127-6', '2023-06-15', '2023-07-15', '2023-07-22'),
(51, 'J051', '78901238-7', '2023-06-15', '2023-07-15', '2023-07-22'),
(52, 'J052', '89012349-8', '2023-06-15', '2023-07-15', '2023-07-22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD KEY `Pk` (`id_autor`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD KEY `Pk` (`rut`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD KEY `Fk` (`id_editorial`);

--
-- Indices de la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  ADD KEY `Pk` (`id_ejemplar`),
  ADD KEY `Fk` (`isbn`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD KEY `Pk` (`isbn`),
  ADD KEY `Fk` (`id_autor`,`id_editorial`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `rut` (`rut`),
  ADD KEY `Fk` (`id_ejemplar`,`rut`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autor`
--
ALTER TABLE `autor`
  ADD CONSTRAINT `autor_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `libro` (`id_autor`);

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `ejemplar` (`isbn`);

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`id_ejemplar`) REFERENCES `ejemplar` (`id_ejemplar`),
  ADD CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`rut`) REFERENCES `cliente` (`rut`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
