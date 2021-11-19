-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2021 a las 18:52:05
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
-- Base de datos: `libapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `nom_aut` varchar(180) DEFAULT NULL,
  `apell_autor` varchar(180) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id_autor`, `nom_aut`, `apell_autor`) VALUES
(1, 'Stephen ', 'King'),
(2, 'John', 'Tolkien');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `id_editorial` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`id_editorial`, `nombre`) VALUES
(1, 'Penguin Random House'),
(2, 'Debolsillo'),
(3, 'Marvel'),
(4, 'Plaza y Janes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nom_gen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nom_gen`) VALUES
(1, 'Ciencia Ficcion'),
(2, 'terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `isbn` bigint(20) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `cant_pag` int(11) DEFAULT NULL,
  `id_edit` int(11) DEFAULT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `disponibilidad` varchar(10) DEFAULT NULL,
  `id_genero` int(11) NOT NULL,
  `peso` decimal(10,0) NOT NULL,
  `formato` varchar(30) NOT NULL,
  `edicion` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `urlImagen` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`isbn`, `titulo`, `cant_pag`, `id_edit`, `id_autor`, `precio`, `disponibilidad`, `id_genero`, `peso`, `formato`, `edicion`, `descripcion`, `urlImagen`) VALUES
(9788466657662, 'El Camino de los Reyes', 1200, 2, 1, '3500', 'disponible', 1, '1620', 'rustico', 2021, 'Rand ha sobrevivido a su primer enfrentamiento con los perversos seguidores del Oscuro, pero ni sus amigos ni Ã©l estÃ¡n a salvo, ya que el SeÃ±or del mal ha liberado a los Renegados, mientras los hÃ©roes de todas las eras se levantan de la tumba cuando el Cuerno de Valere los saca de su sueÃ±o. Al verse obligado a enfrentar a las fuerzas de la oscuridad, Rand decide escapar de su destino. Pero la profecÃ­a tiene que cumplirse. Cada dÃ­a que pasa aumenta la fuerza del Oscuro, que lucha con empeÃ±o por destruir su arcaica prisiÃ³n para acabar con la Rueda y poner fin al tiempo. Si nadie se lo impide, hara aÃ±icos el Entramado que sustenta la realidad y el mundo estarÃ¡ perdido para siempre. AsÃ­ pues, mientras Rand huye, el Entramado lo acerca a su sino... Por su calidad literaria, su ambicioso planteamiento y su monumental historia, La Rueda del Tiempo es la saga de fantasÃ­a mÃ¡s importante de los ultimos aÃ±os. El lector que inicie el camino junto a Rand, Mat y Perrin no podrÃ¡ abandonar el viaje hasta su incierto y sorprendente final.', 'https://firebasestorage.googleapis.com/v0/b/libapp-e432d.appspot.com/o/9788466657662.png?alt=media&token=8f32043f-5216-4b7c-a9ef-e711988e702e'),
(9789506445843, 'BILLY SUMMERS', 648, 4, 1, '2800', 'disponible', 1, '400', 'rustico', 2021, 'Billy Summers es un asesino a sueldo y el mejor en lo suyo, pero tiene una norma: solo acepta un encargo si su objetivo es realmente mala persona. Ahora Billy quiere dejarlo, pero todavía le queda un último golpe. Y siendo uno de los mejores francotiradores del mundo, un veterano condecorado de la guerra de Irak, un auténtico Houdini cuando toca desaparecer después de finiquitar un trabajo, ¿qué podría salirle mal? Todo. La crítica ha dicho...: «Billy Summers es un excelente relato de redención que engancha y conmueve.» La Razón «No hay asesinato más criminal ni caos más entretenido. Otra lectura adictiva de un maestro de mente proteica.» Kirkus «Otra novedad excepcional de un escritor que siempre les da a los lectores mucho más de lo que esperan.» Publishers Weekly «Ver al indiscutido Rey del Terror adentrarse en el territorio de los thrillers noir es la prueba de que Stephen King todavía es capaz de sorprendernos y dejarnos sin palabras.» Esquire «A King nunca se le ha dado mejor envolver a sus lectores en una narrativa impelente y con muchos tentáculos que se completa con un final emocionante y perfectamente orquestado.» Booklist «No importa lo que escriba: Stephen King siempre será considerado un escritor de terror. Es inevitable, pues demasiadas pesadillas que rondan la cultura popular son responsabilidad suya. Sin embargo, en Billy Summers no hay elementos sobrenaturales (salvo una referencia oculta a cierto hotel embrujado). En lugar de eso, se pone en modo noir y nos cuenta el relato de un asesino a sueldo con un último trabajo por delante. Divaga, ignora en su justa medida las reglas de la estructura narrativa, se ceba con estereotipos y con una descarada crítica política... Y es su mejor libro en años.» The Guardian «Billy Summers está tan plagada de monstruos como sus anteriores novelas. Pero no son de los paranormales que solemos asociar al maestro del terror. Aquí, los monstruos son asesinos, mafiosos, violadores y ladrones... En resumen, maleantes de', 'https://firebasestorage.googleapis.com/v0/b/libapp-e432d.appspot.com/o/9789506445843.png?alt=media&token=9456216e-baa2-4991-89d3-9da47f04ea93'),
(9789877253191, 'It', 940, 2, 1, '4899', 'disponible', 1, '940', 'rustico', 2018, 'El libro que inspiró a la película homónima. ¿Quién o qué mutila y mata a los niños de un pequeño pueblo norteamericano? ¿Por qué llega cíclicamente el horror a Derry en forma d e un payaso siniestro que va sembrando la destrucción a su paso? Esto es lo que se proponen averiguar los protagonistas de esta novela. Tras veintisiete años de tranquilidad y lejanía una antigua promesa infantil les hace volver al lugar en el que vivieron su infancia y juventud como una terrible pesadilla. Regresan a Derry para enfrentarse con su pasado y enterrar definitivamente laamenaza que los amargó durante su niñez. Saben que pueden morir, pero son conscientes de que no conocerán la paz hasta que aquella cosa sea destruida para siempre. La crítica ha dicho... «Insuperable.» La Vanguardia', 'https://firebasestorage.googleapis.com/v0/b/libapp-e432d.appspot.com/o/it.png?alt=media&token=b58e1802-43e9-459b-8d00-55c870436d0f'),
(9789877802351, 'Horoscopo Chino', 4488, 1, 1, '1300', 'disponible', 2, '550', 'rustico', 2021, 'Â«El aÃ±o del tigre de agua, a pesar de ser el mÃ¡s diplomÃ¡tico y pacÃ­fico, serÃ¡ el mÃ¡s guerrero para definir el rumbo de gran parte de la humanidad.Â» L.S.D. Ludovica Squirru Dari anticipÃ³ la crisis de salud que azotÃ³ al mundo y tambiÃ©n predijo el gran esfuerzo que deberÃ­a hacer la humanidad para salir adelante. En este nuevo libro, la astrÃ³loga mÃ¡s leÃ­da en habla hispana nos dice que llegÃ³ la hora de reinventarnos, de hacer una revoluciÃ³n, de resolver viejos conflictos. El HorÃ³scopo chino 2022 nos introduce en el fascinante mundo de la milenaria astrologÃ­a oriental, permite conocernos Ã­ntimamente y a travÃ©s de las predicciones preventivas basadas en el I Ching, la intuiciÃ³n y el Bazi tomar mejores decisiones en el amor, el trabajo, la salud y la familia. Incluye, ademÃ¡s, las predicciones planetarias, para LatinoamÃ©rica, Estados Unidos y EspaÃ±a, informaciÃ³n sobre Eneagramas y la relaciÃ³n de cada signo con las mascotas. Â«Este bello animal destila sex appeal, glamour y sensualidad. Es irresistible; apenas se tiene un pantallazo de su esencia, hay que pedir amparo en la ONU.Â» L.S.D.', 'https://firebasestorage.googleapis.com/v0/b/libapp-e432d.appspot.com/o/9789877802351.png?alt=media&token=f5cd716b-702a-43be-9ad3-9842311e9895');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`id_editorial`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `fk_libro_1` (`id_edit`),
  ADD KEY `fk_libro_2` (`id_autor`),
  ADD KEY `fk_libro_3` (`id_genero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `id_editorial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `fk_libro_1` FOREIGN KEY (`id_edit`) REFERENCES `editorial` (`id_editorial`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_libro_2` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_libro_3` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
