-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-07-2021 a las 08:13:45
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

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
  `id` int(11) NOT NULL,
  `nombres` varchar(75) NOT NULL,
  `usuario` varchar(75) NOT NULL,
  `telefono` varchar(75) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(75) NOT NULL,
  `ruc` varchar(255) NOT NULL,
  `distrito` varchar(255) NOT NULL,
  `departamento` varchar(255) NOT NULL,
  `nombre_empresa` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_usuarios`
--

CREATE TABLE `accounts_usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(75) NOT NULL,
  `nombres` varchar(75) NOT NULL,
  `telefono` varchar(75) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `tipo_usuario` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(75) NOT NULL,
  `dni` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `accounts_usuarios`
--

INSERT INTO `accounts_usuarios` (`id`, `usuario`, `nombres`, `telefono`, `fecha_nacimiento`, `tipo_usuario`, `email`, `password`, `dni`) VALUES
(1, 'tefa', 'Estefany Reyna Alfaro Zapana', '978814062', NULL, 0, 'ealfaroz@unsa.edu.pe', 'tefa', NULL),
(2, 'juan', 'Juan Torres', '923064947', NULL, 1, 'andre.arce.af@gmail.com', 'juan', NULL),
(3, 'jimy', 'Jimy Revilla', '967567876', NULL, 0, 'jimy@gmail.com', '', NULL);

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
(25, 'Can add usuarios', 7, 'add_usuarios'),
(26, 'Can change usuarios', 7, 'change_usuarios'),
(27, 'Can delete usuarios', 7, 'delete_usuarios'),
(28, 'Can view usuarios', 7, 'view_usuarios'),
(29, 'Can add empresa', 8, 'add_empresa'),
(30, 'Can change empresa', 8, 'change_empresa'),
(31, 'Can delete empresa', 8, 'delete_empresa'),
(32, 'Can view empresa', 8, 'view_empresa');

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

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$btI6KskjLtneH2rryLl8NN$A2VP+0jgwvUm4k78u2fECf0wDoAKZXm1HwMGI1b0PIU=', '2021-07-17 00:19:00.506644', 1, 'sisox', '', '', 'sisox@gmail.com', 1, 1, '2021-07-17 00:18:46.955858');

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
(8, 'accounts', 'empresa'),
(7, 'accounts', 'usuarios'),
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
(1, 'accounts', '0001_initial', '2021-07-17 00:15:22.980718'),
(2, 'accounts', '0002_auto_20210715_1045', '2021-07-17 00:15:23.071716'),
(3, 'accounts', '0003_rename_offer_usuarios_tipo_usuario', '2021-07-17 00:15:23.106715'),
(4, 'accounts', '0004_auto_20210715_1054', '2021-07-17 00:15:23.243720'),
(5, 'accounts', '0005_usuarios_password', '2021-07-17 00:15:23.307725'),
(6, 'accounts', '0006_auto_20210715_1412', '2021-07-17 00:15:23.392750'),
(7, 'accounts', '0007_auto_20210715_1539', '2021-07-17 00:15:23.646216'),
(8, 'accounts', '0008_empresa', '2021-07-17 00:15:23.740221'),
(9, 'accounts', '0009_alter_usuarios_email', '2021-07-17 00:15:23.749227'),
(10, 'accounts', '0010_auto_20210715_1859', '2021-07-17 00:15:23.766228'),
(11, 'accounts', '0011_auto_20210715_1901', '2021-07-17 00:15:23.775227'),
(12, 'accounts', '0012_rename_dni_empresa_dniempresa', '2021-07-17 00:15:23.783230'),
(13, 'accounts', '0013_alter_empresa_usuario', '2021-07-17 00:15:23.792228'),
(14, 'accounts', '0014_remove_empresa_dniempresa', '2021-07-17 00:15:23.801230'),
(15, 'accounts', '0015_alter_usuarios_usuario', '2021-07-17 00:15:23.812237'),
(16, 'accounts', '0016_alter_usuarios_email', '2021-07-17 00:15:23.823232'),
(17, 'accounts', '0017_auto_20210715_1952', '2021-07-17 00:15:23.836233'),
(18, 'accounts', '0018_auto_20210715_1953', '2021-07-17 00:15:23.847426'),
(19, 'contenttypes', '0001_initial', '2021-07-17 00:15:23.935484'),
(20, 'auth', '0001_initial', '2021-07-17 00:15:24.960057'),
(21, 'admin', '0001_initial', '2021-07-17 00:15:25.195420'),
(22, 'admin', '0002_logentry_remove_auto_add', '2021-07-17 00:15:25.221421'),
(23, 'admin', '0003_logentry_add_action_flag_choices', '2021-07-17 00:15:25.245425'),
(24, 'contenttypes', '0002_remove_content_type_name', '2021-07-17 00:15:25.384451'),
(25, 'auth', '0002_alter_permission_name_max_length', '2021-07-17 00:15:25.429202'),
(26, 'auth', '0003_alter_user_email_max_length', '2021-07-17 00:15:25.479208'),
(27, 'auth', '0004_alter_user_username_opts', '2021-07-17 00:15:25.512213'),
(28, 'auth', '0005_alter_user_last_login_null', '2021-07-17 00:15:25.666555'),
(29, 'auth', '0006_require_contenttypes_0002', '2021-07-17 00:15:25.676556'),
(30, 'auth', '0007_alter_validators_add_error_messages', '2021-07-17 00:15:25.700561'),
(31, 'auth', '0008_alter_user_username_max_length', '2021-07-17 00:15:25.755550'),
(32, 'auth', '0009_alter_user_last_name_max_length', '2021-07-17 00:15:25.805554'),
(33, 'auth', '0010_alter_group_name_max_length', '2021-07-17 00:15:25.859089'),
(34, 'auth', '0011_update_proxy_permissions', '2021-07-17 00:15:25.885092'),
(35, 'auth', '0012_alter_user_first_name_max_length', '2021-07-17 00:15:25.927121'),
(36, 'sessions', '0001_initial', '2021-07-17 00:15:26.016112');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `RecetaMedica` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Celular` int(11) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `CorreoCliente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Sexo` char(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI` int(11) DEFAULT NULL,
  `EstadoRegistroCliente` char(1) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuariocliente`
--

INSERT INTO `usuariocliente` (`CodigoUsuario`, `NombreUsuario`, `Apellido1Usuario`, `Apellido2Usuario`, `TipoUsuario`, `RecetaMedica`, `Celular`, `FechaNacimiento`, `CorreoCliente`, `Sexo`, `DNI`, `EstadoRegistroCliente`) VALUES
(11, 'jose', 'camilo', 'lopez', 2, 'no', 925922035, '2021-07-28', 'root5@gmail.com', 'M', 76971629, 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts_empresa`
--
ALTER TABLE `accounts_empresa`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`CodigoCalificacion`) USING BTREE,
  ADD UNIQUE KEY `CodigoIpress` (`CodigoIpress`);

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
  ADD KEY `TipoUsuario` (`TipoUsuario`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accounts_empresa`
--
ALTER TABLE `accounts_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `accounts_usuarios`
--
ALTER TABLE `accounts_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `CodigoCalificacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
-- AUTO_INCREMENT de la tabla `usuariocliente`
--
ALTER TABLE `usuariocliente`
  MODIFY `CodigoUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `Calificacion-ipress` FOREIGN KEY (`CodigoIpress`) REFERENCES `ipress` (`CodigoIpress`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `Noticia-Ipress` FOREIGN KEY (`CodigoIpress`) REFERENCES `ipress` (`CodigoIpress`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `oxigenodisponible`
--
ALTER TABLE `oxigenodisponible`
  ADD CONSTRAINT `Oxigeno-Ipress` FOREIGN KEY (`CodigoIpress`) REFERENCES `ipress` (`CodigoIpress`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `puntosred`
--
ALTER TABLE `puntosred`
  ADD CONSTRAINT `PuntosRed-Ipress` FOREIGN KEY (`CodigoPuntoRed`) REFERENCES `ipress` (`CodigoIpress`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservacion`
--
ALTER TABLE `reservacion`
  ADD CONSTRAINT `reservacion_ibfk_1` FOREIGN KEY (`CodigoTipo`) REFERENCES `usuariocliente` (`CodigoUsuario`),
  ADD CONSTRAINT `reservacion_ibfk_2` FOREIGN KEY (`CodigoIpress`) REFERENCES `ipress` (`CodigoIpress`);

--
-- Filtros para la tabla `saturacion`
--
ALTER TABLE `saturacion`
  ADD CONSTRAINT `saturacion_ibfk_1` FOREIGN KEY (`CodigoIpress`) REFERENCES `ipress` (`CodigoIpress`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuariocliente`
--
ALTER TABLE `usuariocliente`
  ADD CONSTRAINT `usuariocliente_ibfk_1` FOREIGN KEY (`TipoUsuario`) REFERENCES `tipousuario` (`CodigoTipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
