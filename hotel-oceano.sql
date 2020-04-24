-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2020 a las 13:12:42
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotel-oceano`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `img`, `descripcion`, `fecha`) VALUES
(1, 'vistas/img/flaticon/surf2.png', 'Surf', '2020-04-10 10:12:51'),
(2, 'vistas/img/flaticon/kite-surf2.png', 'Kite-Surf', '2020-04-10 10:12:51'),
(3, 'vistas/img/flaticon/remo2.png', 'Remo', '2020-04-10 10:12:51'),
(4, 'vistas/img/flaticon/navegacion2.png', 'Navegación', '2020-04-10 10:12:51'),
(5, 'vistas/img/flaticon/submarinismo2.png', 'Submarinismo', '2020-04-10 10:12:51'),
(6, 'vistas/img/flaticon/senderismo2.png', 'Senderismo', '2020-04-10 10:12:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `img`, `fecha`) VALUES
(1, 'vistas/img/banner/bubbles.jpg', '2020-04-10 10:43:15'),
(2, 'vistas/img/banner/bolonia.jpg', '2020-04-10 10:43:15'),
(3, 'vistas/img/banner/sea.jpg', '2020-04-10 10:43:16'),
(4, 'vistas/img/banner/palms.jpg', '2020-04-10 10:43:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `color` text NOT NULL,
  `tipo` text NOT NULL,
  `descripcion` text NOT NULL,
  `incluye` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `ruta`, `color`, `tipo`, `descripcion`, `incluye`, `temporada_alta`, `temporada_baja`, `fecha`, `img`) VALUES
(1, 'habitacion-tipo-suite', '#00d4ff', 'Suite', 'La mejor habitación que podrás escoger, con todas las comodidades a tu disposición', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Jacuzzi\", \"icono\": \"fas fa-water\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Balcón\", \"icono\": \"far fa-image\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 150, 90, '2020-04-10 16:39:01', 'vistas/img/suite/portada.png'),
(2, 'habitacion-tipo-especial', '#00bfff', 'Especial', 'La mejor habitación en calidad-precio, las mas solicitada por nuestros clientes.', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Balcón\", \"icono\": \"far fa-image\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 130, 70, '2020-04-10 16:40:52', 'vistas/img/especial/portada.png'),
(3, 'habitacion-tipo-standar', '#00aaff', 'Standar', 'A un precio imbatible, no tendrás escusa para venir. Resérvalo antes de que se acaben.', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 100, 50, '2020-04-10 16:40:04', 'vistas/img/standar/portada.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id_h` int(11) NOT NULL,
  `tipo_h` int(11) NOT NULL,
  `estilo` text NOT NULL,
  `galeria` text NOT NULL,
  `descripcion_h` text NOT NULL,
  `fecha_h` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id_h`, `tipo_h`, `estilo`, `galeria`, `descripcion_h`, `fecha_h`) VALUES
(1, 1, 'Tarifa', '[\"vistas/img/suite/tarifa01.jpg\", \"vistas/img/suite/tarifa02.jpg\", \"vistas/img/suite/tarifa03.jpg\",\"vistas/img/suite/tarifa04.jpg\"]\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(2, 1, 'Atlántica', '[\"vistas/img/suite/atlantica01.jpg\", \"vistas/img/suite/atlantica02.jpg\", \"vistas/img/suite/atlantica03.jpg\",\"vistas/img/suite/atlantica04.jpg\"]\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(3, 1, 'Mediterránea', '[\"vistas/img/suite/mediterranea01.jpg\", \"vistas/img/suite/mediterranea02.jpg\", \"vistas/img/suite/mediterranea03.jpg\",\"vistas/img/suite/mediterranea04.jpg\"]\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(4, 1, 'Bolonia', '[\"vistas/img/suite/bolonia01.jpg\", \"vistas/img/suite/bolonia02.jpg\", \"vistas/img/suite/bolonia03.jpg\",\"vistas/img/suite/bolonia04.jpg\"]\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(5, 1, 'Gibraltar', '[\"vistas/img/suite/gibraltar01.jpg\", \"vistas/img/suite/gibraltar02.jpg\", \"vistas/img/suite/gibraltar03.jpg\",\"vistas/img/suite/gibraltar04.jpg\"]\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(6, 2, 'Andalucia', '[\"vistas/img/especial/andalucia01.jpg\", \"vistas/img/especial/andalucia02.jpg\", \"vistas/img/especial/andalucia03.jpg\",\"vistas/img/especial/andalucia04.jpg\"]\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(7, 2, 'Cadiz', '[\"vistas/img/especial/cadiz01.jpg\", \"vistas/img/especial/cadiz02.jpg\", \"vistas/img/especial/cadiz03.jpg\",\"vistas/img/especial/cadiz04.jpg\"]', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(8, 2, 'Africa', '[\"vistas/img/especial/africa01.jpg\", \"vistas/img/especial/africa02.jpg\", \"vistas/img/especial/africa03.jpg\",\"vistas/img/especial/africa04.jpg\"]\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(9, 2, 'Europa', '[\"vistas/img/especial/europa01.jpg\", \"vistas/img/especial/europa02.jpg\", \"vistas/img/especial/europa03.jpg\",\"vistas/img/especial/europa04.jpg\"]', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(10, 2, 'Tanger', '[\"vistas/img/especial/tanger01.jpg\", \"vistas/img/especial/tanger02.jpg\", \"vistas/img/especial/tanger03.jpg\",\"vistas/img/especial/tanger04.jpg\"]', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(11, 3, 'Agua', '[\"vistas/img/standar/agua01.jpg\", \"vistas/img/standar/agua02.jpg\", \"vistas/img/standar/agua03.jpg\",\"vistas/img/standar/agua04.jpg\"]', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(12, 3, 'Viento', '[\"vistas/img/standar/viento01.jpg\", \"vistas/img/standar/viento02.jpg\", \"vistas/img/standar/viento03.jpg\",\"vistas/img/standar/viento04.jpg\"]\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(13, 3, 'Sol', '[\"vistas/img/standar/sol01.jpg\", \"vistas/img/standar/sol02.jpg\", \"vistas/img/standar/sol03.jpg\",\"vistas/img/standar/sol04.jpg\"]', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(14, 3, 'Mar', '[\"vistas/img/standar/mar01.jpg\", \"vistas/img/standar/mar02.jpg\", \"vistas/img/standar/mar03.jpg\",\"vistas/img/standar/mar04.jpg\"]', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26'),
(15, 3, 'Playa', '[\"vistas/img/standar/playa01.jpg\", \"vistas/img/standar/playa02.jpg\", \"vistas/img/standar/playa03.jpg\",\"vistas/img/standar/playa04.jpg\"]\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: $300.000 COP<br>\r\n					Temporada Alta: $350.000 COP</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: $380.000 COP<br>\r\n					Temporada Alta: $420.000 COP</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2020-04-11 15:32:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

CREATE TABLE `precios` (
  `id_precios` int(11) NOT NULL,
  `tipo` text NOT NULL,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `t_alta` float NOT NULL,
  `t_baja` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `precios`
--

INSERT INTO `precios` (`id_precios`, `tipo`, `img`, `descripcion`, `t_alta`, `t_baja`, `fecha`) VALUES
(1, 'economica ', 'vistas/img/planes/economica.png', 'Solo alojamiento. Disfruta en nuestro hotel y muévete libremente.\r\n\r\n\r\n', 90, 60, '2020-04-20 15:44:46'),
(2, 'standar', 'vistas/img/planes/standar.png', 'Incluye Alojamiento y desayuno, imbatible en calidad precio durante todas las temporadas\r\n', 120, 100, '2020-04-20 15:44:46'),
(3, 'media', 'vistas/img/planes/media.png', 'Alojamiento y desayuno mas elegir entre comida o cena, la tarifa más popular entre nuestros clientes.\r\n\r\n', 150, 130, '2020-04-20 14:54:16'),
(4, 'total', 'vistas/img/planes/total.png', 'Paga solo una vez y disfruta de toso nuestros servicios sin límites.\r\n\r\n\r\n', 180, 150, '2020-04-20 15:45:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `cod_reserva` text NOT NULL,
  `descripcion_r` text NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `fecha_r` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `id_habitacion`, `id_usuario`, `cod_reserva`, `descripcion_r`, `fecha_ingreso`, `fecha_salida`, `fecha_r`) VALUES
(1, 9, 9, 'JKHKJH', 'habitacion europa - pension completa-2 personas', '2020-04-19', '2020-04-21', '2020-04-17 09:56:31'),
(2, 1, 1, '9YXR0H190', 'Habitación suite Oriental - Plan SPA 5 personas', '2020-04-27', '2020-04-30', '2020-04-20 10:25:47'),
(3, 1, 1, '9YXR0H191', 'Habitación suite Oriental - Plan SPA 3 personas', '2020-04-02', '2020-04-04', '2020-04-19 09:20:29'),
(5, 5, 1, '9YXR0H458', 'Habitación suite Oriental - Plan SPA 3 personas', '2020-04-28', '2020-04-30', '2020-04-22 11:00:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifa`
--

CREATE TABLE `tarifa` (
  `id` int(11) NOT NULL,
  `foto_p` text NOT NULL,
  `foto_g` text NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tarifa`
--

INSERT INTO `tarifa` (`id`, `foto_p`, `foto_g`, `titulo`, `descripcion`, `fecha`) VALUES
(1, 'vistas/img/tarifa/455/hotel-455.png', 'vistas/img/tarifa/650/baelo-claudia-650.png', 'HISTORIA', 'Recorre las calles de Tarifa, sumerjete en su historia, visita la ciudad romana de Baelo Claudia. Nuestro hotel está cerca de todo, disfrutarás de nuestr patrimonio artistico y monumental.\r\n\r\n', '2020-04-10 08:10:27'),
(2, 'vistas/img/tarifa/455/windrader-455.png', 'vistas/img/tarifa/650/kite-surf-650.png', 'VIENTO', 'El mejor sitio de Europa para la práctica de actividades acuáticas relacionadas con el viento, conviertéte en un experto en kiteSurf\r\n\r\n', '2020-04-10 08:10:27'),
(3, 'vistas/img/tarifa/455/youth-455.png', 'vistas/img/tarifa/650/wind-farm-650.png', 'NATURALEZA', 'Báñate en el Mar Mediterráneo y el Océano Atlántico a la vez, aguas cristalinas, contempla el norte de Africa. Pasea por sus rutas habilitadas para senderos.\r\n\r\n', '2020-04-10 08:10:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id_h`);

--
-- Indices de la tabla `precios`
--
ALTER TABLE `precios`
  ADD PRIMARY KEY (`id_precios`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`);

--
-- Indices de la tabla `tarifa`
--
ALTER TABLE `tarifa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id_h` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `precios`
--
ALTER TABLE `precios`
  MODIFY `id_precios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tarifa`
--
ALTER TABLE `tarifa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
