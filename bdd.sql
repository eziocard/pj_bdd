-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2024 a las 00:51:28
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

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `crearEstudiante` (`nRut` VARCHAR(30), `nNombre` VARCHAR(30), `nApellido` VARCHAR(30), `nFacultad` VARCHAR(30), `nCarrera` VARCHAR(30))   Insert into estudiante (rut,nombre,apellido,facultad,carrera)
VALUES (nRut,nNombre,nApellido,nFacultad,nCarrera)$$

DELIMITER ;

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
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `rut` varchar(30) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `Apellido` varchar(30) NOT NULL,
  `facultad` varchar(30) DEFAULT NULL,
  `carrera` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`rut`, `nombre`, `Apellido`, `facultad`, `carrera`) VALUES
('21.240.437-3', 'ricardo ', 'lopez', 'ingeneria', 'ingeneria civil informatica');

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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD KEY `Pk` (`id_autor`);

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
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD KEY `Pk` (`rut`);

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
  ADD CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`rut`) REFERENCES `estudiante` (`rut`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
