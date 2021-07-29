-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-07-2021 a las 08:17:19
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sisox_db1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_empresa`
--

CREATE TABLE `accounts_empresa` (
  `nombres` varchar(75) NOT NULL,
  `telefono` varchar(75) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(75) NOT NULL,
  `ruc` varchar(255) NOT NULL,
  `distrito` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `nombre_empresa` varchar(75) NOT NULL,
  `tipo_usuario` tinyint(1) NOT NULL,
  `categoria` varchar(8) DEFAULT NULL,
  `codigo` varchar(8) NOT NULL,
  `institucion` varchar(40) DEFAULT NULL,
  `nivel` varchar(9) DEFAULT NULL,
  `provincia` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `accounts_empresa`
--

INSERT INTO `accounts_empresa` (`nombres`, `telefono`, `email`, `password`, `ruc`, `distrito`, `region`, `nombre_empresa`, `tipo_usuario`, `categoria`, `codigo`, `institucion`, `nivel`, `provincia`) VALUES
('HOSPITAL II CAJAMARCA\r\n', '989333743\r\n', 'HOSPITALIICAJAMARCA@gmail.com\r\n', '989333743\r\n', '', 'CAJAMARCA\r\n', 'CAJAMARCA\r\n', '', 1, 'II-2', '10272', 'ESSALUD', '2', 'CAJAMARCA'),
('SERVICIOS MEDICOS CLINICA SANTA ANITA\r\n', '978331862\r\n', 'SERVICIOSMEDICOSCLINICASANTAANITA@gmail.com\r\n', '978331862\r\n', '', 'IQUITOS\r\n', 'LORETO\r\n', '', 1, 'II-1', '12170', 'PRIVADO', '2', 'MAYNAS'),
('CARLOS ALBERTO CORTEZ JIMENEZ\r\n', '982327003\r\n', 'CARLOSALBERTOCORTEZJIMENEZ@gmail.com\r\n', '982327003\r\n', '', 'TUMBES\r\n', 'TUMBES\r\n', '', 1, 'II-1', '12272', 'ESSALUD', '2', 'TUMBES'),
('CLINICA PROVIDENCIA\r\n', '976625109\r\n', 'CLINICAPROVIDENCIA@gmail.com\r\n', '976625109\r\n', '', 'SAN MIGUEL\r\n', 'LIMA\r\n', '', 1, 'II-2', '12666', 'PRIVADO', '2', 'LIMA'),
('CLINICA SANTA MARIA DE CHIMBOTE S.A.C', '963583731', 'santamaria@gmail.com', 'calendin', '', 'CHIMBOTE', 'ANCASH', '', 1, 'II-1', '13164', 'PRIVADO', '2', 'SANTA'),
('CLINICA SAN JUAN DE DIOS\r\n', '945417386\r\n', 'CLINICASANJUANDEDIOS@gmail.com\r\n', '945417386\r\n', '', 'CAYMA\r\n', 'AREQUIPA\r\n', '', 1, 'II-1', '15730', 'PRIVADO', '2', 'AREQUIPA'),
('CLINICA VALLESUR\r\n', '970306519\r\n', 'CLINICAVALLESUR@gmail.com\r\n', '970306519\r\n', '', 'AREQUIPA\r\n', 'AREQUIPA\r\n', '', 1, 'II-E', '16744', 'PRIVADO', '2', 'AREQUIPA'),
('GONZALES PINEDO RODOLFO \r\n', '978784351\r\n', 'GONZALESPINEDORODOLFO@gmail.com\r\n', '978784351\r\n', '', 'LIMA\r\n', 'LIMA\r\n', '', 1, 'II-E', '17392', 'PRIVADO', '2', 'LIMA'),
('CLINICA GAXAY E.I.R.L\r\n', '988952183\r\n', 'CLINICAGAXAYE.I.R.L@gmail.com\r\n', '988952183\r\n', '', 'CHINCHA ALTA\r\n', 'ICA\r\n', '', 1, 'II-1', '17493', 'PRIVADO', '2', 'CHINCHA'),
('CLINICA DEL NORTE\r\n', '942457311\r\n', 'CLINICADELNORTE@gmail.com\r\n', '942457311\r\n', '', 'LOS OLIVOS\r\n', 'LIMA\r\n', '', 1, 'II-E', '17847', 'PRIVADO', '2', 'LIMA'),
('PAMPA GRANDE\r\n', '977779583\r\n', 'PAMPAGRANDE@gmail.com\r\n', '977779583\r\n', '', 'TUMBES\r\n', 'TUMBES\r\n', '', 1, 'I-4', '1882', 'GOBIERNO REGIONAL', '1', 'TUMBES'),
('CLINICA JAVIER PRADO SANTA MARIA E.I.R.L\r\n', '985815089\r\n', 'CLINICAJAVIERPRADOSANTAMARIAE.I.R.L@gmail.com\r\n', '985815089\r\n', '', 'MARIANO MELGAR\r\n', 'AREQUIPA\r\n', '', 1, 'II-E', '19481', 'PRIVADO', '2', 'AREQUIPA'),
('CLINICA SANTA LEONOR \r\n', '982599465\r\n', 'CLINICASANTALEONOR@gmail.com\r\n', '982599465\r\n', '', 'CHORRILLO\r\n', 'LIMA\r\n', '', 1, 'II-E', '19839', 'PRIVADO', '2', 'LIMA'),
('ESTABLECIMIENTO DE SALUD HUANCABAMBA\r\n', '961642261\r\n', 'ESTABLECIMIENTODESALUDHUANCABAMBA@gmail.com\r\n', '961642261\r\n', '', '\r\n', 'PIURA\r\n', '', 1, 'I-4', '2250', 'GOBIERNO REGIONAL', '1', 'HUANCABAMBA HUANCABAMBA'),
('CLINICA AVANSALUD\r\n', '994662247\r\n', 'CLINICAAVANSALUD@gmail.com\r\n', '994662247\r\n', '', 'MAGDALENA DEL MAR\r\n', 'LIMA\r\n', '', 1, 'II-E', '23022', 'PRIVADO', '2', 'LIMA'),
('SICUANI\r\n', '992909415\r\n', 'SICUANI@gmail.com\r\n', '992909415\r\n', '', 'SICUANI\r\n', 'CUSCO\r\n', '', 1, 'II-1', '2378', 'GOBIERNO REGIONAL', '2', 'CANCHIS'),
('OCONGATE\r\n', '997960204\r\n', 'OCONGATE@gmail.com\r\n', '997960204\r\n', '', 'OCOGATE\r\n', 'CUSCO\r\n', '', 1, 'I-4', '2536', 'GOBIERNO REGIONAL', '1', 'QUISPICANCHI'),
('CLINICA OFTALMOLOGICA VIDAVAS S.A.C.\r\n', '976478125\r\n', 'CLINICAOFTALMOLOGICAVIDAVASS.A.C.@gmail.com\r\n', '976478125\r\n', '', 'CHICLAYO\r\n', 'LAMBAYEQUE\r\n', '', 1, 'II-E', '26707', 'PRIVADO', '2', 'LAMBAYEQUE'),
('CLINICA AUNA GUARDIA CIVIL\r\n', '992748486\r\n', 'CLINICAAUNAGUARDIACIVIL@gmail.com\r\n', '992748486\r\n', '', 'SAN ISIDRO\r\n', 'LIMA\r\n', '', 1, 'II-E', '27320', 'PRIVADO', '2', 'LIMA'),
('HOSPITAL ILO\r\n', '991513433\r\n', 'HOSPITALILO@gmail.com\r\n', '991513433\r\n', '', 'ILO\r\n', 'MOQUEGUA\r\n', '', 1, 'II-1', '2818', 'GOBIERNO REGIONAL', '2', 'ILO'),
('CLINICA ESPECIALIZADA MIRANDA \r\n', '954153257\r\n', 'CLINICAESPECIALIZADAMIRANDA@gmail.com\r\n', '954153257\r\n', '', 'EL TAMBO\r\n', 'JUNIN\r\n', '', 1, 'II-E', '28966', 'PRIVADO', '2', 'HUANCAYO'),
('HOSPITAL SANDIA\r\n', '965474700\r\n', 'HOSPITALSANDIA@gmail.com\r\n', '965474700\r\n', '', 'SANDIA\r\n', 'PUNO\r\n', '', 1, 'II-1', '3335', 'GOBIERNO REGIONAL', '2', 'SANDIA'),
('DE APOYO CELENDIN\r\n', '988754509\r\n', 'DEAPOYOCELENDIN@gmail.com\r\n', '988754509\r\n', '', 'CELENDIN\r\n', 'CAJAMARCA\r\n', '', 1, 'II-1\r\n', '4466\r\n', 'GOBIERNO REGIONAL\r\n', '2\r\n', 'CELENDIN\r\n'),
('HOSPITAL DE BOLIVAR \r\n', '958876592\r\n', 'HOSPITALDEBOLIVAR@gmail.com\r\n', '958876592\r\n', '', 'BOLIVAR\r\n', 'LA LIBERTAR\r\n', '', 1, 'II-1', '5366', 'GOBIERNO REGIONAL', '2', 'BOLIVAR'),
('ATALAYA\r\n', '966167941\r\n', 'ATALAYA@gmail.com\r\n', '966167941\r\n', '', 'RAIMONDI\r\n', 'UCAYALI\r\n', '', 1, 'I-4', '5502', 'GOBIERNO REGIONAL', '1', 'ATALAYA'),
('TG LASER OFTALMICA S.A\r\n', '980240637\r\n', 'TGLASEROFTALMICAS.A@gmail.com\r\n', '980240637\r\n', '', 'SAN ISIDRO\r\n', 'LIMA\r\n', '', 1, 'II-E', '8388', 'PRIVADO', '2', 'LIMA'),
('CLINICA SAN JUAN DE DIOS\r\n', '990297206\r\n', 'CLINICASANJUANDEDIOS@gmail.com\r\n', '990297206\r\n', '', 'SAN LUIS\r\n', 'LIMA\r\n', '', 1, 'II-1', '8786', 'PRIVADO', '2', 'LIMA'),
('CLINICA MONTE SINAI\r\n', '984585184\r\n', 'CLINICAMONTESINAI@gmail.com\r\n', '984585184\r\n', '', 'LINCE\r\n', 'LIMA\r\n', '', 1, 'II-1', '9145', 'PRIVADO', '2', 'LIMA'),
('CLINICA SAN BORJA \r\n', '941759521\r\n', 'CLINICASANBORJA@gmail.com\r\n', '941759521\r\n', '', 'SAN BORJA\r\n', 'LIMA\r\n', '', 1, 'III-3', '9886', 'PRIVADO', '2', 'LIMA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_usuarios`
--

CREATE TABLE `accounts_usuarios` (
  `id` int(11) NOT NULL,
  `dni` int(11) DEFAULT NULL,
  `nombres` varchar(75) NOT NULL,
  `usuario` varchar(75) NOT NULL,
  `telefono` varchar(75) NOT NULL,
  `email` varchar(254) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `password` varchar(75) NOT NULL,
  `tipo_usuario` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `accounts_usuarios`
--

INSERT INTO `accounts_usuarios` (`id`, `dni`, `nombres`, `usuario`, `telefono`, `email`, `fecha_nacimiento`, `password`, `tipo_usuario`) VALUES
(1, NULL, 'Estefany Reyna Alfaro Zapana', 'tefa', '978814062', 'ealfaroz@unsa.edu.pe', NULL, 'tefa', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add empresa', 7, 'add_empresa'),
(26, 'Can change empresa', 7, 'change_empresa'),
(27, 'Can delete empresa', 7, 'delete_empresa'),
(28, 'Can view empresa', 7, 'view_empresa'),
(29, 'Can add usuarios', 8, 'add_usuarios'),
(30, 'Can change usuarios', 8, 'change_usuarios'),
(31, 'Can delete usuarios', 8, 'delete_usuarios'),
(32, 'Can view usuarios', 8, 'view_usuarios'),
(33, 'Can add auth group', 9, 'add_authgroup'),
(34, 'Can change auth group', 9, 'change_authgroup'),
(35, 'Can delete auth group', 9, 'delete_authgroup'),
(36, 'Can view auth group', 9, 'view_authgroup'),
(37, 'Can add auth group permissions', 10, 'add_authgrouppermissions'),
(38, 'Can change auth group permissions', 10, 'change_authgrouppermissions'),
(39, 'Can delete auth group permissions', 10, 'delete_authgrouppermissions'),
(40, 'Can view auth group permissions', 10, 'view_authgrouppermissions'),
(41, 'Can add auth permission', 11, 'add_authpermission'),
(42, 'Can change auth permission', 11, 'change_authpermission'),
(43, 'Can delete auth permission', 11, 'delete_authpermission'),
(44, 'Can view auth permission', 11, 'view_authpermission'),
(45, 'Can add auth user', 12, 'add_authuser'),
(46, 'Can change auth user', 12, 'change_authuser'),
(47, 'Can delete auth user', 12, 'delete_authuser'),
(48, 'Can view auth user', 12, 'view_authuser'),
(49, 'Can add auth user groups', 13, 'add_authusergroups'),
(50, 'Can change auth user groups', 13, 'change_authusergroups'),
(51, 'Can delete auth user groups', 13, 'delete_authusergroups'),
(52, 'Can view auth user groups', 13, 'view_authusergroups'),
(53, 'Can add auth user user permissions', 14, 'add_authuseruserpermissions'),
(54, 'Can change auth user user permissions', 14, 'change_authuseruserpermissions'),
(55, 'Can delete auth user user permissions', 14, 'delete_authuseruserpermissions'),
(56, 'Can view auth user user permissions', 14, 'view_authuseruserpermissions'),
(57, 'Can add calificacion', 15, 'add_calificacion'),
(58, 'Can change calificacion', 15, 'change_calificacion'),
(59, 'Can delete calificacion', 15, 'delete_calificacion'),
(60, 'Can view calificacion', 15, 'view_calificacion'),
(61, 'Can add django admin log', 16, 'add_djangoadminlog'),
(62, 'Can change django admin log', 16, 'change_djangoadminlog'),
(63, 'Can delete django admin log', 16, 'delete_djangoadminlog'),
(64, 'Can view django admin log', 16, 'view_djangoadminlog'),
(65, 'Can add django content type', 17, 'add_djangocontenttype'),
(66, 'Can change django content type', 17, 'change_djangocontenttype'),
(67, 'Can delete django content type', 17, 'delete_djangocontenttype'),
(68, 'Can view django content type', 17, 'view_djangocontenttype'),
(69, 'Can add django migrations', 18, 'add_djangomigrations'),
(70, 'Can change django migrations', 18, 'change_djangomigrations'),
(71, 'Can delete django migrations', 18, 'delete_djangomigrations'),
(72, 'Can view django migrations', 18, 'view_djangomigrations'),
(73, 'Can add django session', 19, 'add_djangosession'),
(74, 'Can change django session', 19, 'change_djangosession'),
(75, 'Can delete django session', 19, 'delete_djangosession'),
(76, 'Can view django session', 19, 'view_djangosession'),
(77, 'Can add ipress', 20, 'add_ipress'),
(78, 'Can change ipress', 20, 'change_ipress'),
(79, 'Can delete ipress', 20, 'delete_ipress'),
(80, 'Can view ipress', 20, 'view_ipress'),
(81, 'Can add noticia', 21, 'add_noticia'),
(82, 'Can change noticia', 21, 'change_noticia'),
(83, 'Can delete noticia', 21, 'delete_noticia'),
(84, 'Can view noticia', 21, 'view_noticia'),
(85, 'Can add oxigenodisponible', 22, 'add_oxigenodisponible'),
(86, 'Can change oxigenodisponible', 22, 'change_oxigenodisponible'),
(87, 'Can delete oxigenodisponible', 22, 'delete_oxigenodisponible'),
(88, 'Can view oxigenodisponible', 22, 'view_oxigenodisponible'),
(89, 'Can add reservacion', 23, 'add_reservacion'),
(90, 'Can change reservacion', 23, 'change_reservacion'),
(91, 'Can delete reservacion', 23, 'delete_reservacion'),
(92, 'Can view reservacion', 23, 'view_reservacion'),
(93, 'Can add saturacion', 24, 'add_saturacion'),
(94, 'Can change saturacion', 24, 'change_saturacion'),
(95, 'Can delete saturacion', 24, 'delete_saturacion'),
(96, 'Can view saturacion', 24, 'view_saturacion'),
(97, 'Can add tipousuario', 25, 'add_tipousuario'),
(98, 'Can change tipousuario', 25, 'change_tipousuario'),
(99, 'Can delete tipousuario', 25, 'delete_tipousuario'),
(100, 'Can view tipousuario', 25, 'view_tipousuario'),
(101, 'Can add usuarioadministrador', 26, 'add_usuarioadministrador'),
(102, 'Can change usuarioadministrador', 26, 'change_usuarioadministrador'),
(103, 'Can delete usuarioadministrador', 26, 'delete_usuarioadministrador'),
(104, 'Can view usuarioadministrador', 26, 'view_usuarioadministrador'),
(105, 'Can add usuariocliente', 27, 'add_usuariocliente'),
(106, 'Can change usuariocliente', 27, 'change_usuariocliente'),
(107, 'Can delete usuariocliente', 27, 'delete_usuariocliente'),
(108, 'Can view usuariocliente', 27, 'view_usuariocliente'),
(109, 'Can add puntosred', 28, 'add_puntosred'),
(110, 'Can change puntosred', 28, 'change_puntosred'),
(111, 'Can delete puntosred', 28, 'delete_puntosred'),
(112, 'Can view puntosred', 28, 'view_puntosred');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'accounts', 'authgroup'),
(10, 'accounts', 'authgrouppermissions'),
(11, 'accounts', 'authpermission'),
(12, 'accounts', 'authuser'),
(13, 'accounts', 'authusergroups'),
(14, 'accounts', 'authuseruserpermissions'),
(15, 'accounts', 'calificacion'),
(16, 'accounts', 'djangoadminlog'),
(17, 'accounts', 'djangocontenttype'),
(18, 'accounts', 'djangomigrations'),
(19, 'accounts', 'djangosession'),
(7, 'accounts', 'empresa'),
(20, 'accounts', 'ipress'),
(21, 'accounts', 'noticia'),
(22, 'accounts', 'oxigenodisponible'),
(28, 'accounts', 'puntosred'),
(23, 'accounts', 'reservacion'),
(24, 'accounts', 'saturacion'),
(25, 'accounts', 'tipousuario'),
(26, 'accounts', 'usuarioadministrador'),
(27, 'accounts', 'usuariocliente'),
(8, 'accounts', 'usuarios'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2021-07-28 01:10:45.271435'),
(2, 'accounts', '0002_auto_20210715_1045', '2021-07-28 01:10:45.346437'),
(3, 'accounts', '0003_rename_offer_usuarios_tipo_usuario', '2021-07-28 01:10:45.369428'),
(4, 'accounts', '0004_auto_20210715_1054', '2021-07-28 01:10:45.465483'),
(5, 'accounts', '0005_usuarios_password', '2021-07-28 01:10:45.527467'),
(6, 'accounts', '0006_auto_20210715_1412', '2021-07-28 01:10:45.599488'),
(7, 'accounts', '0007_auto_20210715_1539', '2021-07-28 01:10:45.788309'),
(8, 'accounts', '0008_empresa', '2021-07-28 01:10:45.868301'),
(9, 'accounts', '0009_alter_usuarios_email', '2021-07-28 01:10:45.876298'),
(10, 'accounts', '0010_auto_20210715_1859', '2021-07-28 01:10:45.895298'),
(11, 'accounts', '0011_auto_20210715_1901', '2021-07-28 01:10:45.904298'),
(12, 'accounts', '0012_rename_dni_empresa_dniempresa', '2021-07-28 01:10:45.909301'),
(13, 'accounts', '0013_alter_empresa_usuario', '2021-07-28 01:10:45.918314'),
(14, 'accounts', '0014_remove_empresa_dniempresa', '2021-07-28 01:10:45.924301'),
(15, 'accounts', '0015_alter_usuarios_usuario', '2021-07-28 01:10:45.931300'),
(16, 'accounts', '0016_alter_usuarios_email', '2021-07-28 01:10:45.938815'),
(17, 'accounts', '0017_auto_20210715_1952', '2021-07-28 01:10:45.947802'),
(18, 'accounts', '0018_auto_20210715_1953', '2021-07-28 01:10:45.956802'),
(19, 'accounts', '0019_auto_20210722_0053', '2021-07-28 01:10:46.017807'),
(20, 'accounts', '0020_auto_20210727_1057', '2021-07-28 01:10:46.174845'),
(21, 'accounts', '0021_auto_20210727_1823', '2021-07-28 01:10:46.218848'),
(22, 'accounts', '0022_auto_20210727_1826', '2021-07-28 01:10:46.232847'),
(23, 'accounts', '0023_auto_20210727_1957', '2021-07-28 01:10:46.248848'),
(24, 'accounts', '0024_auto_20210727_2001', '2021-07-28 01:10:46.627893'),
(25, 'accounts', '0025_alter_empresa_codigo', '2021-07-28 01:10:46.637878'),
(26, 'contenttypes', '0001_initial', '2021-07-28 01:10:46.748888'),
(27, 'auth', '0001_initial', '2021-07-28 01:10:47.610318'),
(28, 'admin', '0001_initial', '2021-07-28 01:10:47.813476'),
(29, 'admin', '0002_logentry_remove_auto_add', '2021-07-28 01:10:47.838492'),
(30, 'admin', '0003_logentry_add_action_flag_choices', '2021-07-28 01:10:47.852494'),
(31, 'contenttypes', '0002_remove_content_type_name', '2021-07-28 01:10:47.975495'),
(32, 'auth', '0002_alter_permission_name_max_length', '2021-07-28 01:10:48.025491'),
(33, 'auth', '0003_alter_user_email_max_length', '2021-07-28 01:10:48.055509'),
(34, 'auth', '0004_alter_user_username_opts', '2021-07-28 01:10:48.069495'),
(35, 'auth', '0005_alter_user_last_login_null', '2021-07-28 01:10:48.151505'),
(36, 'auth', '0006_require_contenttypes_0002', '2021-07-28 01:10:48.156501'),
(37, 'auth', '0007_alter_validators_add_error_messages', '2021-07-28 01:10:48.171501'),
(38, 'auth', '0008_alter_user_username_max_length', '2021-07-28 01:10:48.213518'),
(39, 'auth', '0009_alter_user_last_name_max_length', '2021-07-28 01:10:48.246510'),
(40, 'auth', '0010_alter_group_name_max_length', '2021-07-28 01:10:48.289521'),
(41, 'auth', '0011_update_proxy_permissions', '2021-07-28 01:10:48.308517'),
(42, 'auth', '0012_alter_user_first_name_max_length', '2021-07-28 01:10:48.340519'),
(43, 'sessions', '0001_initial', '2021-07-28 01:10:48.402534');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts_empresa`
--
ALTER TABLE `accounts_empresa`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `accounts_usuarios`
--
ALTER TABLE `accounts_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accounts_usuarios`
--
ALTER TABLE `accounts_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
