-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-04-2020 a las 22:03:13
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemapos108`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

DROP TABLE IF EXISTS `articulos`;
CREATE TABLE IF NOT EXISTS `articulos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idcategoria` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articulos_nombre_unique` (`nombre`),
  KEY `articulos_idcategoria_foreign` (`idcategoria`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `idcategoria`, `codigo`, `nombre`, `precio_venta`, `stock`, `descripcion`, `condicion`, `created_at`, `updated_at`) VALUES
(1, 2, 'ssdfsad', 'sadfasd', '223.00', 23337, '242asdfasdf', 1, '2019-09-20 01:48:51', '2019-09-20 01:48:51'),
(2, 2, '332211', 'Leche deslactosada', '3452345.00', 183, 'wrtwrwert', 1, '2019-09-23 17:42:37', '2019-10-15 03:07:33'),
(3, 2, '112233', 'leche entera', '2.00', 663, 'leche', 1, '2019-10-13 02:32:28', '2019-10-15 03:07:24'),
(4, 2, '44332211', 'Leche descremada', '1.00', 13, 'Leche descremada', 1, '2019-10-14 17:28:43', '2019-10-15 03:07:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `condicion`, `created_at`, `updated_at`) VALUES
(1, 'pan', 'pan de queso', 0, '2019-09-20 00:43:18', '2019-09-20 00:43:43'),
(2, 'leche entera', 'leche deslactosada', 1, '2019-09-20 00:43:33', '2019-10-14 17:26:46'),
(3, 'andres', 'lemus', 0, '2019-09-23 17:41:44', '2019-09-23 17:41:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_ingresos`
--

DROP TABLE IF EXISTS `detalles_ingresos`;
CREATE TABLE IF NOT EXISTS `detalles_ingresos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idingreso` int(10) UNSIGNED NOT NULL,
  `idarticulo` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `detalles_ingresos_idingreso_foreign` (`idingreso`),
  KEY `detalles_ingresos_idarticulo_foreign` (`idarticulo`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalles_ingresos`
--

INSERT INTO `detalles_ingresos` (`id`, `idingreso`, `idarticulo`, `cantidad`, `precio`) VALUES
(21, 10, 3, 66, '66.00'),
(20, 10, 4, 1000, '100.00'),
(19, 9, 2, 30, '3.00'),
(18, 9, 3, 50, '4.00'),
(17, 8, 2, 20, '4.00'),
(16, 8, 3, 100, '50.00'),
(15, 8, 4, 59, '4.00'),
(22, 11, 4, 1, '1.00'),
(23, 11, 3, 1, '1.00'),
(24, 11, 2, 1, '1.00'),
(25, 11, 1, 1, '1.00'),
(26, 12, 4, 1, '1.00'),
(27, 12, 3, 1, '1.00'),
(28, 12, 2, 1, '1.00'),
(29, 12, 1, 1, '1.00'),
(30, 13, 4, 1, '1.00'),
(31, 13, 3, 1, '1.00'),
(32, 13, 2, 1, '1.00'),
(33, 13, 1, 1, '1.00'),
(34, 14, 4, 1, '1.00'),
(35, 14, 3, 1, '1.00'),
(36, 14, 2, 1, '1.00'),
(37, 14, 1, 1, '1.00'),
(38, 15, 4, 1, '1.00'),
(39, 15, 3, 1, '1.00'),
(40, 15, 2, 1, '1.00'),
(41, 15, 1, 1, '1.00'),
(42, 16, 4, 1, '1.00'),
(43, 16, 3, 1, '1.00'),
(44, 16, 2, 1, '1.00'),
(45, 16, 1, 1, '1.00'),
(46, 17, 4, 1, '1.00'),
(47, 17, 3, 1, '1.00'),
(48, 17, 2, 1, '1.00'),
(49, 17, 1, 1, '1.00'),
(50, 18, 4, 1, '1.00'),
(51, 18, 3, 1, '1.00'),
(52, 18, 2, 1, '1.00'),
(53, 18, 1, 1, '1.00'),
(54, 19, 4, 1, '1.00'),
(55, 19, 3, 1, '1.00'),
(56, 19, 2, 1, '1.00'),
(57, 19, 1, 1, '1.00'),
(58, 20, 4, 1, '1.00'),
(59, 20, 3, 1, '1.00'),
(60, 20, 2, 1, '1.00'),
(61, 20, 1, 1, '1.00'),
(62, 21, 4, 1, '1.00'),
(63, 21, 3, 1, '1.00'),
(64, 21, 2, 1, '1.00'),
(65, 21, 1, 1, '1.00'),
(66, 22, 4, 1, '1.00'),
(67, 22, 3, 1, '1.00'),
(68, 22, 2, 1, '1.00'),
(69, 22, 1, 1, '1.00'),
(70, 23, 4, 1, '1.00'),
(71, 23, 3, 1, '1.00'),
(72, 23, 2, 1, '1.00'),
(73, 23, 1, 1, '1.00');

--
-- Disparadores `detalles_ingresos`
--
DROP TRIGGER IF EXISTS `tr_updStockIngreso`;
DELIMITER $$
CREATE TRIGGER `tr_updStockIngreso` AFTER INSERT ON `detalles_ingresos` FOR EACH ROW BEGIN
 UPDATE articulos SET stock = stock + NEW.cantidad 
 WHERE articulos.id = NEW.idarticulo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

DROP TABLE IF EXISTS `detalle_ventas`;
CREATE TABLE IF NOT EXISTS `detalle_ventas` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idventa` int(10) UNSIGNED NOT NULL,
  `idarticulo` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `detalle_ventas_idventa_foreign` (`idventa`),
  KEY `detalle_ventas_idarticulo_foreign` (`idarticulo`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id`, `idventa`, `idarticulo`, `cantidad`, `precio`, `descuento`) VALUES
(1, 1, 3, 2, '2.00', '1.00'),
(2, 1, 2, 2, '3452345.00', '0.00'),
(3, 1, 1, 2, '223.00', '0.00'),
(4, 2, 3, 50, '2.00', '10.00'),
(5, 2, 2, 50, '3452345.00', '10.00');

--
-- Disparadores `detalle_ventas`
--
DROP TRIGGER IF EXISTS `tr_updStockVenta`;
DELIMITER $$
CREATE TRIGGER `tr_updStockVenta` AFTER INSERT ON `detalle_ventas` FOR EACH ROW BEGIN
 UPDATE articulos SET stock = stock - NEW.cantidad 
 WHERE articulos.id = NEW.idarticulo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

DROP TABLE IF EXISTS `ingresos`;
CREATE TABLE IF NOT EXISTS `ingresos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idproveedor` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `tipo_comprobante` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serie_comprobante` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_comprobante` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ingresos_idproveedor_foreign` (`idproveedor`),
  KEY `ingresos_idusuario_foreign` (`idusuario`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id`, `idproveedor`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total`, `estado`, `created_at`, `updated_at`) VALUES
(10, 7, 1, 'FACTURA', '00001', '000011', '2019-11-21 00:00:00', '0.19', '104356.00', 'Anulado', '2019-11-21 16:11:53', '2019-11-21 16:12:40'),
(9, 7, 1, 'BOLETA', '1111', '1111', '2019-10-14 00:00:00', '0.19', '290.00', 'Anulado', '2019-10-15 03:43:18', '2019-10-15 03:44:16'),
(8, 7, 1, 'BOLETA', '0001', '00011', '2019-10-14 00:00:00', '0.19', '5316.00', 'Anulado', '2019-10-15 03:09:22', '2019-10-15 03:36:05'),
(11, 7, 1, 'BOLETA', '345345', '345435', '2020-04-14 00:00:00', '0.19', '4.00', 'Registrado', '2020-04-14 16:47:52', '2020-04-14 16:47:52'),
(12, 7, 1, 'BOLETA', '345345', '345435', '2020-04-14 00:00:00', '0.19', '4.00', 'Registrado', '2020-04-14 16:47:54', '2020-04-14 16:47:54'),
(13, 7, 1, 'BOLETA', '345345', '345435', '2020-04-14 00:00:00', '0.19', '4.00', 'Registrado', '2020-04-14 16:50:28', '2020-04-14 16:50:28'),
(14, 7, 1, 'BOLETA', '345345', '345435', '2020-04-14 00:00:00', '0.19', '4.00', 'Registrado', '2020-04-14 16:50:29', '2020-04-14 16:50:29'),
(15, 7, 1, 'BOLETA', '345345', '345435', '2020-04-14 00:00:00', '0.19', '4.00', 'Registrado', '2020-04-14 16:51:00', '2020-04-14 16:51:00'),
(16, 7, 1, 'BOLETA', '345345', '345435', '2020-04-14 00:00:00', '0.19', '4.00', 'Registrado', '2020-04-14 16:51:01', '2020-04-14 16:51:01'),
(17, 7, 1, 'BOLETA', '5464356', '35463456', '2020-04-14 00:00:00', '0.19', '4.00', 'Registrado', '2020-04-14 16:52:18', '2020-04-14 16:52:18'),
(18, 7, 1, 'BOLETA', '5464356', '35463456', '2020-04-14 00:00:00', '0.19', '4.00', 'Registrado', '2020-04-14 17:16:10', '2020-04-14 17:16:10'),
(19, 7, 1, 'BOLETA', '5464356', '35463456', '2020-04-14 00:00:00', '0.19', '4.00', 'Registrado', '2020-04-14 17:16:11', '2020-04-14 17:16:11'),
(20, 7, 1, 'BOLETA', '5464356', '35463456', '2020-04-14 00:00:00', '0.19', '4.00', 'Registrado', '2020-04-14 17:16:12', '2020-04-14 17:16:12'),
(21, 7, 1, 'BOLETA', '5464356', '35463456', '2020-04-14 00:00:00', '0.19', '4.00', 'Registrado', '2020-04-14 17:16:12', '2020-04-14 17:16:12'),
(22, 7, 1, 'BOLETA', '5464356', '35463456', '2020-04-14 00:00:00', '0.19', '4.00', 'Registrado', '2020-04-14 17:16:12', '2020-04-14 17:16:12'),
(23, 7, 1, 'BOLETA', '5464356', '35463456', '2020-04-14 00:00:00', '0.19', '4.00', 'Registrado', '2020-04-14 17:16:15', '2020-04-14 17:16:15');

--
-- Disparadores `ingresos`
--
DROP TRIGGER IF EXISTS `tr_updStockIngresoAnular`;
DELIMITER $$
CREATE TRIGGER `tr_updStockIngresoAnular` AFTER UPDATE ON `ingresos` FOR EACH ROW BEGIN
  UPDATE articulos a
    JOIN detalles_ingresos di
      ON di.idarticulo = a.id
     AND di.idingreso = new.id
     set a.stock = a.stock - di.cantidad;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2018_02_01_171225_create_categorias_table', 1),
(3, '2018_02_22_235257_create_articulos_table', 1),
(4, '2018_02_27_143638_create_personas_table', 1),
(5, '2018_03_06_024616_create_proveedores_table', 1),
(6, '2018_03_13_133425_create_roles_table', 1),
(7, '2018_03_14_000000_create_users_table', 1),
(8, '2018_04_08_140106_create_ingresos_table', 1),
(9, '2018_04_08_140532_create_detalle_ingresos_table', 1),
(10, '2018_04_22_212328_create_ventas_table', 1),
(11, '2018_04_22_212558_create_detalle_ventas_table', 1),
(12, '2018_05_26_001854_create_notifications_table', 1),
(13, '2019_09_19_195537_create_ingresos_table', 2),
(14, '2019_09_19_195831_create_detalles_ingresos_table', 2),
(15, '2019_11_21_113019_create_ventas_table', 3),
(16, '2019_11_21_114639_create_detalle_ventas_table', 3),
(17, '2020_04_13_125314_create_notifications_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('c4c8557d-44e9-4893-8791-b7b33c219242', 'App\\Notifications\\NotifyAdmin', 'App\\User', 1, '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"Ventas\"},\"ingresos\":{\"numero\":3,\"msj\":\"Ingresos\"}}}', NULL, '2020-04-14 16:50:28', '2020-04-14 16:50:28'),
('01c2baa3-89f8-4ec7-88db-3b97270432d8', 'App\\Notifications\\NotifyAdmin', 'App\\User', 1, '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"Ventas\"},\"ingresos\":{\"numero\":4,\"msj\":\"Ingresos\"}}}', NULL, '2020-04-14 16:50:29', '2020-04-14 16:50:29'),
('2c28d3f9-56c3-47ef-a411-e01ba0e26850', 'App\\Notifications\\NotifyAdmin', 'App\\User', 1, '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"Ventas\"},\"ingresos\":{\"numero\":5,\"msj\":\"Ingresos\"}}}', NULL, '2020-04-14 16:51:00', '2020-04-14 16:51:00'),
('9f0d2dfc-6faa-4ac4-82ad-bc78bb2659cf', 'App\\Notifications\\NotifyAdmin', 'App\\User', 1, '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"Ventas\"},\"ingresos\":{\"numero\":6,\"msj\":\"Ingresos\"}}}', NULL, '2020-04-14 16:51:01', '2020-04-14 16:51:01'),
('d15dd363-1f06-4067-be43-cc2f69549feb', 'App\\Notifications\\NotifyAdmin', 'App\\User', 1, '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"Ventas\"},\"ingresos\":{\"numero\":7,\"msj\":\"Ingresos\"}}}', NULL, '2020-04-14 16:52:18', '2020-04-14 16:52:18'),
('ad8ed778-0d4e-4774-81ca-8fd550290794', 'App\\Notifications\\NotifyAdmin', 'App\\User', 1, '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"Ventas\"},\"ingresos\":{\"numero\":8,\"msj\":\"Ingresos\"}}}', NULL, '2020-04-14 17:16:10', '2020-04-14 17:16:10'),
('d3671aab-59a5-40bb-8c3d-6577425afba9', 'App\\Notifications\\NotifyAdmin', 'App\\User', 1, '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"Ventas\"},\"ingresos\":{\"numero\":9,\"msj\":\"Ingresos\"}}}', NULL, '2020-04-14 17:16:11', '2020-04-14 17:16:11'),
('e5f85842-de9a-4b5e-a9e7-446fc9ddbf03', 'App\\Notifications\\NotifyAdmin', 'App\\User', 1, '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"Ventas\"},\"ingresos\":{\"numero\":10,\"msj\":\"Ingresos\"}}}', NULL, '2020-04-14 17:16:12', '2020-04-14 17:16:12'),
('2237c92d-f1ef-482d-98d7-7bfecd0c1dd9', 'App\\Notifications\\NotifyAdmin', 'App\\User', 1, '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"Ventas\"},\"ingresos\":{\"numero\":11,\"msj\":\"Ingresos\"}}}', NULL, '2020-04-14 17:16:12', '2020-04-14 17:16:12'),
('62781318-c140-4599-89cc-b1cbd1fc3084', 'App\\Notifications\\NotifyAdmin', 'App\\User', 1, '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"Ventas\"},\"ingresos\":{\"numero\":12,\"msj\":\"Ingresos\"}}}', NULL, '2020-04-14 17:16:12', '2020-04-14 17:16:12'),
('a8c0eb84-e901-4c88-8d66-bae68d5612ee', 'App\\Notifications\\NotifyAdmin', 'App\\User', 1, '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"Ventas\"},\"ingresos\":{\"numero\":13,\"msj\":\"Ingresos\"}}}', NULL, '2020-04-14 17:16:15', '2020-04-14 17:16:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_documento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_documento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personas_nombre_unique` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `created_at`, `updated_at`) VALUES
(1, 'asdf', 'DNI', '10', '12', '3106909255', '212sadf@gmail.com', '2019-09-16 18:08:24', '2019-09-16 18:08:24'),
(2, 'vendedor', 'DNI', '123', '1212', '3106909255', 'gmail@gmail.com', '2019-09-19 19:33:50', '2019-09-19 19:33:50'),
(3, 'almacenero', 'DNI', '123', '112313', '3106909255', 'gma2@gmail.com', '2019-09-19 19:35:45', '2019-09-19 19:35:45'),
(4, '1', 'RUT', '2', '2', '3106909255', '2', '2019-09-20 01:40:58', '2019-09-20 01:40:58'),
(5, '2', 'RUT', '2', '2', '3106909255', '2', '2019-09-20 01:41:09', '2019-09-20 01:41:09'),
(6, '3', 'RUT', '3', '3', '3', '3', '2019-09-20 01:41:19', '2019-09-20 01:41:19'),
(7, 'Transportes Mi casa', 'RUT', '1234567890', 'calle 3 #427 barranquilla', '3106909255', 'asfgsa@gmail.com', '2019-10-14 20:25:58', '2019-10-14 20:25:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE IF NOT EXISTS `proveedores` (
  `id` int(10) UNSIGNED NOT NULL,
  `contacto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_contacto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `proveedores_id_foreign` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `contacto`, `telefono_contacto`) VALUES
(4, '1', '1'),
(5, '2', '2'),
(6, '3', '3'),
(7, '30000000', '3106909255');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_nombre_unique` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `descripcion`, `condicion`) VALUES
(1, 'Administrador', 'Administradores de área', 1),
(2, 'Vendedor', 'Vendedor área venta', 1),
(3, 'Almacenero', 'Almacenero área compras', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  `idrol` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `users_usuario_unique` (`usuario`),
  KEY `users_id_foreign` (`id`),
  KEY `users_idrol_foreign` (`idrol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `password`, `condicion`, `idrol`, `remember_token`) VALUES
(1, 'admin', '$2y$10$UhjEg8Y78pHUPbFAOX9iQOlgD2VqYhj0U1TsLN.BoYmXOHRQoDAdW', 1, 1, NULL),
(2, 'vendedor', '$2y$10$KeDTMK9cu8PQvO9xAALQU.hRJ0VRroziDXhwUpG7AYKU94.LEjzkC', 1, 2, NULL),
(3, 'almacenero', '$2y$10$fIpdwXZ4dBJb1YSuPfOo7eygOfmaYq.3xL7l05JMVbAQgDHYQb/2W', 1, 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idcliente` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `tipo_comprobante` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serie_comprobante` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_comprobante` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ventas_idcliente_foreign` (`idcliente`),
  KEY `ventas_idusuario_foreign` (`idusuario`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `idcliente`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total`, `estado`, `created_at`, `updated_at`) VALUES
(1, 7, 2, 'BOLETA', '0001', '00002', '2020-04-07 00:00:00', '0.19', '6905139.00', 'Registrado', '2020-04-08 03:57:57', '2020-04-08 03:57:57'),
(2, 7, 2, 'BOLETA', '00001', '00012', '2020-04-07 00:00:00', '0.19', '172617330.00', 'Registrado', '2020-04-08 04:22:41', '2020-04-08 04:22:41');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
