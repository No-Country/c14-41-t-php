-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2023 a las 18:37:32
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `take_food_backend`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pizza', NULL, NULL),
(2, 'Hamburguesa', NULL, NULL),
(3, 'Papas', NULL, NULL),
(4, 'Sanguches', NULL, NULL),
(5, 'Milanesas', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2023_10_09_182529_create_orders_table', 1),
(15, '2023_10_09_182626_create_products_table', 1),
(16, '2023_10_09_183228_create_categories_table', 1),
(17, '2023_10_09_183936_create_order__products_table', 1),
(18, '2023_10_13_164711_create_restaurants_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_client` int(11) NOT NULL,
  `total` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `observation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `id_client`, `total`, `created_at`, `updated_at`, `observation`, `status`) VALUES
(1, 1, 100, '2023-10-21 00:19:44', '2023-10-21 00:19:44', 'Orden de prueba', 'I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order__products`
--

CREATE TABLE `order__products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order__products`
--

INSERT INTO `order__products` (`id`, `id_order`, `id_product`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, '2023-10-21 00:19:45', '2023-10-21 00:19:45'),
(2, 1, 2, 3, '2023-10-21 00:19:45', '2023-10-21 00:19:45'),
(3, 1, 1, 1, '2023-10-21 00:19:45', '2023-10-21 00:19:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', '60bad92dafdc83b00ccc5464f56cc1e0217c579145071641ce270c777ba14f96', '[\"*\"]', NULL, NULL, '2023-10-18 03:26:24', '2023-10-18 03:26:24'),
(2, 'App\\Models\\User', 7, 'API TOKEN', 'd43bc5538d25a7521f663780290f7f25bae7fb68688c6df8f5a3a27eb6eebac0', '[\"*\"]', NULL, NULL, '2023-10-18 03:30:18', '2023-10-18 03:30:18'),
(3, 'App\\Models\\User', 9, 'API TOKEN', '2d3b625de298aacaaa74bd266592c740a27e66fbf6c5741c6338ed3d4b5860dc', '[\"*\"]', NULL, NULL, '2023-10-18 03:30:58', '2023-10-18 03:30:58'),
(4, 'App\\Models\\User', 10, 'API TOKEN', '23a576d28ea06a12a014c72ec88fbd0760198674eb725cdcc7f682808727ede0', '[\"*\"]', NULL, NULL, '2023-10-18 03:31:27', '2023-10-18 03:31:27'),
(5, 'App\\Models\\User', 11, 'API TOKEN', '2bd4a7450aac3b66d35fd44c4ece8d337b01f9f5d9c8d143f859d49061a57827', '[\"*\"]', NULL, NULL, '2023-10-18 03:35:17', '2023-10-18 03:35:17'),
(6, 'App\\Models\\User', 12, 'API TOKEN', '2fd2d513e25f22885694d88aedd1fbf5338ce637fc41fdcf8df5b00fe5313e73', '[\"*\"]', NULL, NULL, '2023-10-18 03:35:53', '2023-10-18 03:35:53'),
(7, 'App\\Models\\User', 14, 'API TOKEN', '19ac63461eacfcdf522cf570353c8b95678e14d801221a247d274920a770c4b2', '[\"*\"]', NULL, NULL, '2023-10-18 03:36:43', '2023-10-18 03:36:43'),
(8, 'App\\Models\\User', 16, 'API TOKEN', '1c91bcbc2208b9a31a4a8a9928ea2cbd28225c42e3484ca71d7a47a435efb1bc', '[\"*\"]', '2023-10-20 02:36:42', NULL, '2023-10-20 02:08:03', '2023-10-20 02:36:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `id_category` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cooking_time` double(8,2) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `id_category`, `image`, `cooking_time`, `availability`, `created_at`, `updated_at`) VALUES
(1, 'Producto 1', 'Descripción del producto 1', 25.00, 1, 'ruta/de/la/imagen1.jpg', 40.00, 1, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(2, 'Producto 2', 'Descripción del producto 2', 66.00, 5, 'ruta/de/la/imagen2.jpg', 6.00, 1, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(3, 'Producto 3', 'Descripción del producto 3', 69.00, 4, 'ruta/de/la/imagen3.jpg', 56.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(4, 'Producto 4', 'Descripción del producto 4', 30.00, 4, 'ruta/de/la/imagen4.jpg', 25.00, 1, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(5, 'Producto 5', 'Descripción del producto 5', 16.00, 1, 'ruta/de/la/imagen5.jpg', 23.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(6, 'Producto 6', 'Descripción del producto 6', 39.00, 5, 'ruta/de/la/imagen6.jpg', 18.00, 1, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(7, 'Producto 7', 'Descripción del producto 7', 67.00, 4, 'ruta/de/la/imagen7.jpg', 51.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(8, 'Producto 8', 'Descripción del producto 8', 19.00, 5, 'ruta/de/la/imagen8.jpg', 48.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(9, 'Producto 9', 'Descripción del producto 9', 21.00, 2, 'ruta/de/la/imagen9.jpg', 5.00, 1, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(10, 'Producto 10', 'Descripción del producto 10', 27.00, 3, 'ruta/de/la/imagen10.jpg', 39.00, 1, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(11, 'Producto 11', 'Descripción del producto 11', 65.00, 2, 'ruta/de/la/imagen11.jpg', 59.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(12, 'Producto 12', 'Descripción del producto 12', 83.00, 3, 'ruta/de/la/imagen12.jpg', 24.00, 1, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(13, 'Producto 13', 'Descripción del producto 13', 62.00, 4, 'ruta/de/la/imagen13.jpg', 54.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(14, 'Producto 14', 'Descripción del producto 14', 26.00, 4, 'ruta/de/la/imagen14.jpg', 32.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(15, 'Producto 15', 'Descripción del producto 15', 62.00, 3, 'ruta/de/la/imagen15.jpg', 15.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(16, 'Producto 16', 'Descripción del producto 16', 87.00, 4, 'ruta/de/la/imagen16.jpg', 28.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(17, 'Producto 17', 'Descripción del producto 17', 11.00, 4, 'ruta/de/la/imagen17.jpg', 50.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(18, 'Producto 18', 'Descripción del producto 18', 74.00, 2, 'ruta/de/la/imagen18.jpg', 27.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(19, 'Producto 19', 'Descripción del producto 19', 44.00, 2, 'ruta/de/la/imagen19.jpg', 33.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(20, 'Producto 20', 'Descripción del producto 20', 78.00, 1, 'ruta/de/la/imagen20.jpg', 54.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(21, 'Producto 21', 'Descripción del producto 21', 33.00, 4, 'ruta/de/la/imagen21.jpg', 9.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(22, 'Producto 22', 'Descripción del producto 22', 39.00, 3, 'ruta/de/la/imagen22.jpg', 57.00, 0, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(23, 'Producto 23', 'Descripción del producto 23', 59.00, 2, 'ruta/de/la/imagen23.jpg', 59.00, 1, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(24, 'Producto 24', 'Descripción del producto 24', 66.00, 3, 'ruta/de/la/imagen24.jpg', 56.00, 1, '2023-10-16 17:52:21', '2023-10-16 17:52:21'),
(25, 'Producto 25', 'Descripción del producto 25', 61.00, 2, 'ruta/de/la/imagen25.jpg', 27.00, 1, '2023-10-16 17:52:21', '2023-10-16 17:52:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `restaurants`
--

INSERT INTO `restaurants` (`id`, `email`, `name`, `direction`, `phone`, `description`, `created_at`, `updated_at`) VALUES
(1, 'fdfsa@ggg.com', 'nombre', 'ufuafusfasf', 1515, 'ufuafrasfasf', NULL, '2023-10-20 01:37:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rol` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `phone`, `city`, `street`, `street_number`, `rol`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nombre', 'apellido', 1234123526, NULL, NULL, NULL, 0, 'ejemplo@ejemplo.com', NULL, '$2y$10$TdR67SC62O/QP.BDX2PMGuj/yugVN7hqAjaEeZFz.DErXln2OKl8q', NULL, '2023-10-18 03:26:24', '2023-10-18 03:26:24'),
(3, 'nombre', 'apellido', 1234123526, NULL, NULL, NULL, 0, 'ej@ejemplo.com', NULL, '$2y$10$fqEXaFxArKgIW4jKJBH8tOJr64i1PvlQs6QmFuP/CC2f7KLnnYJaG', NULL, '2023-10-18 03:28:02', '2023-10-18 03:28:02'),
(5, 'nombre', 'apellido', 1234123526, NULL, NULL, NULL, 0, 'ejfasfa@ejemplo.com', NULL, '$2y$10$Yr21DDfxjX3qAhukev7RP.Ccf/HMcYR5yd0gRqrVxyYKqbyIzC5.y', NULL, '2023-10-18 03:29:02', '2023-10-18 03:29:02'),
(7, 'nombre', 'apellido', 1234123526, NULL, NULL, NULL, 0, 'ejfasffefea@ejemplo.com', NULL, '$2y$10$AkaiDqzcKpvWLsyYke1nm.w6r8B.1Q7bAqEs3zaZv1zVSWcvOwf.S', NULL, '2023-10-18 03:30:18', '2023-10-18 03:30:18'),
(9, 'nombre', 'apellido', 1234123526, NULL, NULL, NULL, 0, 'ejfasffefeasafas@ejemplo.com', NULL, '$2y$10$p4biYEVfypfVAACXSsogU.rkKYxwn/E1MH5CIcHgMjWlR0t200VRW', NULL, '2023-10-18 03:30:58', '2023-10-18 03:30:58'),
(10, 'nombre', 'apellido', 1234123526, NULL, NULL, NULL, 0, 'ejfafas@ejemplo.com', NULL, '$2y$10$mkSicmLdZkYWpyeDHhS/8.7o0mOtU6rlFn4Y9J4ZeVqmSj.DxaRSe', NULL, '2023-10-18 03:31:27', '2023-10-18 03:31:27'),
(11, 'nombre', 'apellido', 1234123526, NULL, NULL, NULL, 0, 'ejfafaasdfsadgs@ejemplo.com', NULL, '$2y$10$lpwqw2pI/LZyTxTOZXqdYeaSpHTnqKutVQEs.YJ4K5iVPUWZvPv6C', NULL, '2023-10-18 03:35:17', '2023-10-18 03:35:17'),
(12, 'nombre', 'apellido', 1234123526, NULL, NULL, NULL, 0, 'ejfafaasdfsaagsgasdgs@ejemplo.com', NULL, '$2y$10$n6Cs4TCpdWkAdG..7OW17OKiFzplLvpnXRqK/72QUk5Mf0UPmMz7K', NULL, '2023-10-18 03:35:53', '2023-10-18 03:35:53'),
(14, 'nombre', 'apellido', 1234123526, NULL, NULL, NULL, 0, 'ejfafaasdfsaagsgs@ejemplo.com', NULL, '$2y$10$7/c53HrMPCMhQXaClr9FseC2NereEw1xvDvhUieRCMotlqJTYYpPe', NULL, '2023-10-18 03:36:43', '2023-10-18 03:36:43'),
(15, 'nombre', 'apellido', 1234123526, NULL, NULL, NULL, 0, 'asdfsaagsgs@ejemplo.com', NULL, '$2y$10$.LHiXWrt2wrFmPOJ6eP3bOJDK96A1QlobkagpT3SnWjcCi4Uitg6i', NULL, '2023-10-18 03:37:41', '2023-10-18 03:37:41'),
(16, 'faca', 'gg', 2474247, NULL, NULL, NULL, 0, 'prueba@gmail.com', NULL, '$2y$10$8hyxUyJc1cDHOgUMboSO0.yFMhHVRoQcoumkr6Fdpnxbvq9pge6qa', NULL, '2023-10-20 02:05:27', '2023-10-20 02:05:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order__products`
--
ALTER TABLE `order__products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `order__products`
--
ALTER TABLE `order__products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
