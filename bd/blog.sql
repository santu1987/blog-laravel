-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-03-2020 a las 12:13:22
-- Versión del servidor: 10.1.38-MariaDB-0+deb9u1
-- Versión de PHP: 7.0.33-0+deb9u7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `slug`) VALUES
(15, 'PHP FOR DUMMIES', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ullamcorper cursus nisi, nec suscipit magna iaculis non. Aliquam iaculis efficitur porta. Nulla facilisi. Nunc at purus mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. Vestibulum elementum eget est vel aliquet. Nullam eu condimentum enim. Vestibulum eget purus lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus vehicula hendrerit nisi eget pharetra. Phasellus ultrices condimentum risus pretium fringilla. Vivamus nisi quam, tincidunt eu lacus quis, hendrerit volutpat leo.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Aliquam sit amet rutrum tellus, et elementum dolor. Sed quis odio nunc. Phasellus consectetur, dolor nec tempus tristique, eros nunc varius nulla, eget placerat turpis sapien sit amet lectus. Vivamus orci neque, tempus ac viverra non, posuere nec libero. Cras vitae ornare quam, sit amet euismod risus. Praesent consequat neque et felis mattis, ut consectetur lacus luctus. Donec neque nibh, varius et molestie malesuada, eleifend sed sem. Ut at nibh pretium, pharetra tortor vitae, bibendum ex. Nulla a ligula efficitur, feugiat ante et, fermentum dolor. Vestibulum pulvinar neque id velit cursus iaculis. Donec elementum fringilla ante quis convallis. Fusce tincidunt nisl quis lectus vestibulum volutpat et eu justo. Etiam sagittis nibh non erat accumsan, fringilla blandit erat fermentum.</p><p><br></p>', 14, 2, '2016-10-19 19:18:03', '2016-10-19 19:18:03', 'php-for-dummies'),
(16, 'Python for Dummies', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ullamcorper cursus nisi, nec suscipit magna iaculis non. Aliquam iaculis efficitur porta. Nulla facilisi. Nunc at purus mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. Vestibulum elementum eget est vel aliquet. Nullam eu condimentum enim. Vestibulum eget purus lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus vehicula hendrerit nisi eget pharetra. Phasellus ultrices condimentum risus pretium fringilla. Vivamus nisi quam, tincidunt eu lacus quis, hendrerit volutpat leo.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Aliquam sit amet rutrum tellus, et elementum dolor. Sed quis odio nunc. Phasellus consectetur, dolor nec tempus tristique, eros nunc varius nulla, eget placerat turpis sapien sit amet lectus. Vivamus orci neque, tempus ac viverra non, posuere nec libero. Cras vitae ornare quam, sit amet euismod risus. Praesent consequat neque et felis mattis, ut consectetur lacus luctus. Donec neque nibh, varius et molestie malesuada, eleifend sed sem. Ut at nibh pretium, pharetra tortor vitae, bibendum ex. Nulla a ligula efficitur, feugiat ante et, fermentum dolor. Vestibulum pulvinar neque id velit cursus iaculis. Donec elementum fringilla ante quis convallis. Fusce tincidunt nisl quis lectus vestibulum volutpat et eu justo. Etiam sagittis nibh non erat accumsan, fringilla blandit erat fermentum.</p><p><br></p>', 14, 6, '2016-10-19 19:19:40', '2016-10-19 19:19:40', 'python-for-dummies'),
(17, 'Node js para dummies', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ullamcorper cursus nisi, nec suscipit magna iaculis non. Aliquam iaculis efficitur porta. Nulla facilisi. Nunc at purus mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. Vestibulum elementum eget est vel aliquet. Nullam eu condimentum enim. Vestibulum eget purus lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus vehicula hendrerit nisi eget pharetra. Phasellus ultrices condimentum risus pretium fringilla. Vivamus nisi quam, tincidunt eu lacus quis, hendrerit volutpat leo.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Aliquam sit amet rutrum tellus, et elementum dolor. Sed quis odio nunc. Phasellus consectetur, dolor nec tempus tristique, eros nunc varius nulla, eget placerat turpis sapien sit amet lectus. Vivamus orci neque, tempus ac viverra non, posuere nec libero. Cras vitae ornare quam, sit amet euismod risus. Praesent consequat neque et felis mattis, ut consectetur lacus luctus. Donec neque nibh, varius et molestie malesuada, eleifend sed sem. Ut at nibh pretium, pharetra tortor vitae, bibendum ex. Nulla a ligula efficitur, feugiat ante et, fermentum dolor. Vestibulum pulvinar neque id velit cursus iaculis. Donec elementum fringilla ante quis convallis. Fusce tincidunt nisl quis lectus vestibulum volutpat et eu justo. Etiam sagittis nibh non erat accumsan, fringilla blandit erat fermentum.</p><p><br></p>', 14, 7, '2016-10-19 19:20:41', '2016-10-19 19:20:41', 'node-js-para-dummies'),
(18, 'jQuery for dummies', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ullamcorper cursus nisi, nec suscipit magna iaculis non. Aliquam iaculis efficitur porta. Nulla facilisi. Nunc at purus mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. Vestibulum elementum eget est vel aliquet. Nullam eu condimentum enim. Vestibulum eget purus lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus vehicula hendrerit nisi eget pharetra. Phasellus ultrices condimentum risus pretium fringilla. Vivamus nisi quam, tincidunt eu lacus quis, hendrerit volutpat leo.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Aliquam sit amet rutrum tellus, et elementum dolor. Sed quis odio nunc. Phasellus consectetur, dolor nec tempus tristique, eros nunc varius nulla, eget placerat turpis sapien sit amet lectus. Vivamus orci neque, tempus ac viverra non, posuere nec libero. Cras vitae ornare quam, sit amet euismod risus. Praesent consequat neque et felis mattis, ut consectetur lacus luctus. Donec neque nibh, varius et molestie malesuada, eleifend sed sem. Ut at nibh pretium, pharetra tortor vitae, bibendum ex. Nulla a ligula efficitur, feugiat ante et, fermentum dolor. Vestibulum pulvinar neque id velit cursus iaculis. Donec elementum fringilla ante quis convallis. Fusce tincidunt nisl quis lectus vestibulum volutpat et eu justo. Etiam sagittis nibh non erat accumsan, fringilla blandit erat fermentum.</p><p><br></p>', 14, 8, '2016-10-19 19:21:15', '2016-10-19 19:21:15', 'jquery-for-dummies'),
(19, 'Ajax for dummies', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ullamcorper cursus nisi, nec suscipit magna iaculis non. Aliquam iaculis efficitur porta. Nulla facilisi. Nunc at purus mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. Vestibulum elementum eget est vel aliquet. Nullam eu condimentum enim. Vestibulum eget purus lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus vehicula hendrerit nisi eget pharetra. Phasellus ultrices condimentum risus pretium fringilla. Vivamus nisi quam, tincidunt eu lacus quis, hendrerit volutpat leo.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\">Aliquam sit amet rutrum tellus, et elementum dolor. Sed quis odio nunc. Phasellus consectetur, dolor nec tempus tristique, eros nunc varius nulla, eget placerat turpis sapien sit amet lectus. Vivamus orci neque, tempus ac viverra non, posuere nec libero. Cras vitae ornare quam, sit amet euismod risus. Praesent consequat neque et felis mattis, ut consectetur lacus luctus. Donec neque nibh, varius et molestie malesuada, eleifend sed sem. Ut at nibh pretium, pharetra tortor vitae, bibendum ex. Nulla a ligula efficitur, feugiat ante et, fermentum dolor. Vestibulum pulvinar neque id velit cursus iaculis. Donec elementum fringilla ante quis convallis. Fusce tincidunt nisl quis lectus vestibulum volutpat et eu justo. Etiam sagittis nibh non erat accumsan, fringilla blandit erat fermentum.</p><p><br></p>', 14, 4, '2016-10-19 19:21:40', '2016-10-19 19:21:40', 'ajax-for-dummies');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(15, 15, 2, NULL, NULL),
(16, 15, 3, NULL, NULL),
(17, 16, 2, NULL, NULL),
(18, 16, 3, NULL, NULL),
(19, 16, 6, NULL, NULL),
(20, 17, 5, NULL, NULL),
(21, 17, 6, NULL, NULL),
(22, 17, 4, NULL, NULL),
(23, 18, 5, NULL, NULL),
(24, 18, 6, NULL, NULL),
(25, 18, 4, NULL, NULL),
(26, 19, 5, NULL, NULL),
(27, 19, 2, NULL, NULL),
(28, 19, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Php', '2016-09-26 18:25:30', '2016-09-26 18:25:30'),
(4, 'Ajax', '2016-09-26 18:26:01', '2016-09-26 18:26:01'),
(6, 'Python', '2016-09-26 18:26:32', '2016-09-26 18:26:32'),
(7, 'Node js', '2016-09-27 19:25:33', '2016-09-27 19:25:33'),
(8, 'jquery avanzado', '2016-10-03 17:10:02', '2016-10-03 17:10:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image`
--

CREATE TABLE `image` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` char(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `image`
--

INSERT INTO `image` (`id`, `article_id`, `created_at`, `updated_at`, `name`) VALUES
(5, 15, '2016-10-19 19:18:03', '2016-10-19 19:18:03', 'blog_1476890283.png'),
(6, 16, '2016-10-19 19:19:40', '2016-10-19 19:19:40', 'blog_1476890380.png'),
(7, 17, '2016-10-19 19:20:41', '2016-10-19 19:20:41', 'blog_1476890441.png'),
(8, 18, '2016-10-19 19:21:15', '2016-10-19 19:21:15', 'blog_1476890475.jpg'),
(9, 19, '2016-10-19 19:21:40', '2016-10-19 19:21:40', 'blog_1476890500.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_08_23_005815_add_categories_table', 1),
('2016_08_23_012449_add_articles_table', 1),
('2016_08_23_013816_add_image_table', 1),
('2016_08_23_014147_add_tags_table', 1),
('2016_09_15_022301_add_Slug_to_Articles_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Programación nivel 2', '2016-09-26 21:01:13', '2016-09-26 21:01:13'),
(3, 'Programacion nivel 3', '2016-09-26 21:24:32', '2016-09-26 21:24:32'),
(4, 'Python para dummies', '2016-09-26 21:24:42', '2016-09-26 21:31:57'),
(5, 'javascript', '2016-09-26 21:24:54', '2016-09-26 21:24:54'),
(6, 'Prueba', '2016-09-27 17:53:48', '2016-09-27 17:53:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('member','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'gianni', 'asd123456@gmail.com', '$2y$10$Vj5BmFH7LJhKt.dcR103s.wNvcr40tiQaRR.cD/uQeMPqeEytc9bS', 'admin', NULL, '2016-09-21 23:21:12', '2016-09-23 21:47:48'),
(2, 'prueba', 'asddff@gmail.com', '$2y$10$7LcYKgjQJPD3avflpOhu8eIvmAilOozBDvH55xsy66JSIUeTdDJBu', 'member', NULL, '2016-09-21 23:22:07', '2016-09-21 23:22:07'),
(10, 'andres crimaldi', 'acrimaldi@gmail.com', '$2y$10$ntaYDrE9M16Xq9363bG18OJsBP74NydaP5OS.SuX1P8JOYpoJ/VQq', 'member', NULL, '2016-09-23 20:17:58', '2016-09-23 20:17:58'),
(11, 'paolo crimaldi', 'pcrimaldi@gmail.com', '$2y$10$PHebfZVdpqy3s.4aszWdZO5Fwk4pGoGQ/Ocuh2iG/l1QXtGdDJIqm', 'member', NULL, '2016-09-23 20:18:20', '2016-09-23 20:18:20'),
(13, 'nelly moreno', 'nmoreno@gmail.com', '$2y$10$FwB9zCTyaWQpsR3LxWGjEe.AmmQjdnkGWtvCQ/VijlELVMqTOQlx2', 'member', '7BBgPDLBs2LuMw2rypZq4A8m2BFNmUHUdmCzllNsdPtQMA5QEJdRlM5dpr1M', '2016-09-23 20:19:03', '2016-09-26 18:27:42'),
(14, 'santucci', 'santucci@gmail.com', '$2y$10$44YHmeE.1kenFpqaXmBfmuERLZUNZk5S5fOJ.nbKshVXOorALJdAy', 'admin', '6yZwjHhbtMCoJtIHVZXKl8xbw6X7PNFOFzHDP8fHuqSOj5emcvAWvNz5pHXh', '2016-09-26 18:24:40', '2020-03-19 23:51:15'),
(15, 'prueba2', 'prueba2@gmaill.com', '$2y$10$OzmCKQ5YYX.t97VXOvWSDuPnH.k51nEZEEGVghbWMl7zpK4EUoHmy', 'member', NULL, '2016-10-03 17:15:13', '2016-10-03 17:15:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_tag_article_id_foreign` (`article_id`),
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_article_id_foreign` (`article_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `image`
--
ALTER TABLE `image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Filtros para la tabla `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
