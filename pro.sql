-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 23 2023 г., 19:19
-- Версия сервера: 8.0.29
-- Версия PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pro`
--

-- --------------------------------------------------------

--
-- Структура таблицы `company`
--

CREATE TABLE `company` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kpp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `okved` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ogrn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oktm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `company`
--

INSERT INTO `company` (`id`, `name`, `inn`, `kpp`, `number`, `okved`, `address`, `ogrn`, `oktm`, `pc`, `bik`, `kc`, `director`, `created_at`, `updated_at`) VALUES
(1, 'ООО \"ДЕЛКОМ\"', '7707479091', '770701001', '25 877 078,66', '16.10 16.24 18.12 25.11 25.61 25.62 25.91 25.92 25.93 25.99 27.11 27.90 28.1 2.1 30.20 33.12 33.14 33.20 41.20 42.11 42.12 42.21', '125047, г. Москва, ул. Фадеева, д. 4А, помещ. 10Ц, ком. 4', '1227700820456', '45382000000', '40702810301990004917', '044525593', '30101810200000000593', 'Кущинский Андрей Александрович Действует на основании Устава', '2023-09-23 10:49:00', '2023-09-23 11:34:02'),
(2, 'ООО \"СИРАН\"', '7708411748', '770801001', '313 851 724,62', '16.10 16.24 18.12 25.11 25.61 25.62 25.91 25.92 25.93 25.99 27.11 27.90 28.1 2.1 30.20 33.12 33.14', '107078, г. Москва, ул. Новорязанская, д. 2/7, помещ. 1/П', '7708411748', '45378000000', '40702810270010377048', '044525092', '30101810645250000092 МОСКОВСКИЙ ФИЛИАЛ АО КБ \"МОДУЛЬБАНК\"', 'Григорян Сергей Григорьевич Действует на основании Устава', '2023-09-23 10:52:00', '2023-09-23 11:32:40');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(108, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(109, 14, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(110, 14, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 3),
(111, 14, 'id_api', 'text', 'Id Api', 0, 1, 1, 1, 1, 1, '{}', 4),
(112, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(113, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(126, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(127, 16, 'role_id', 'text', 'Role Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(128, 16, 'name', 'text', 'login', 1, 1, 1, 1, 1, 1, '{}', 3),
(129, 16, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(130, 16, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 5),
(131, 16, 'password', 'password', 'Password', 1, 1, 1, 1, 1, 1, '{}', 6),
(132, 16, 'remember_token', 'text', 'Remember Token', 0, 1, 1, 1, 1, 1, '{}', 7),
(133, 16, 'settings', 'text', 'Settings', 0, 1, 1, 1, 1, 1, '{}', 8),
(134, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(135, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(136, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(137, 17, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(138, 17, 'inn', 'text', 'Inn', 0, 1, 1, 1, 1, 1, '{}', 3),
(139, 17, 'kpp', 'text', 'Kpp', 0, 1, 1, 1, 1, 1, '{}', 4),
(140, 17, 'number', 'text', 'Number', 0, 1, 1, 1, 1, 1, '{}', 5),
(141, 17, 'okved', 'text', 'Okved', 0, 1, 1, 1, 1, 1, '{}', 6),
(142, 17, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 7),
(143, 17, 'ogrn', 'text', 'Ogrn', 0, 1, 1, 1, 1, 1, '{}', 8),
(144, 17, 'oktm', 'text', 'Oktm', 0, 1, 1, 1, 1, 1, '{}', 9),
(145, 17, 'pc', 'text', 'Pc', 0, 1, 1, 1, 1, 1, '{}', 10),
(146, 17, 'bik', 'text', 'Bik', 0, 1, 1, 1, 1, 1, '{}', 11),
(147, 17, 'kc', 'text', 'Kc', 0, 1, 1, 1, 1, 1, '{}', 12),
(148, 17, 'director', 'text', 'Director', 0, 1, 1, 1, 1, 1, '{}', 13),
(149, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
(150, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(14, 'sports', 'sports', 'Sport', 'Виды спорта', NULL, 'App\\Models\\Sports', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-09-15 08:32:52', '2023-09-15 08:32:52'),
(16, 'users', 'users', 'User', 'Users', NULL, 'App\\Models\\User', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-09-22 12:16:08', '2023-09-22 12:24:26'),
(17, 'company', 'company', 'Company', 'Companies', NULL, 'App\\Models\\Company', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-09-23 10:46:13', '2023-09-23 10:46:13');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-08-03 18:04:51', '2023-08-03 18:04:51');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 5, '2023-08-03 18:04:51', '2023-09-03 19:24:43', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2023-08-03 18:04:51', '2023-09-03 19:24:43', 'voyager.media.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2023-08-03 18:04:51', '2023-09-03 19:24:43', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2023-08-03 18:04:51', '2023-09-03 19:24:33', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-08-03 18:04:51', '2023-09-03 18:44:10', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-08-03 18:04:51', '2023-09-03 18:44:27', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-08-03 18:04:51', '2023-09-03 18:44:27', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-08-03 18:04:51', '2023-09-03 18:44:27', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', NULL, 10, '2023-08-03 18:04:51', '2023-09-03 19:24:33', 'voyager.settings.index', 'null'),
(23, 1, 'Виды спорта', '', '_self', NULL, NULL, NULL, 11, '2023-09-15 08:32:52', '2023-09-15 08:32:52', 'voyager.sports.index', NULL),
(25, 1, 'Users', '', '_self', NULL, NULL, NULL, 12, '2023-09-22 12:16:08', '2023-09-22 12:16:08', 'voyager.users.index', NULL),
(26, 1, 'Companies', '', '_self', NULL, NULL, NULL, 13, '2023-09-23 10:46:13', '2023-09-23 10:46:13', 'voyager.company.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'about', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-08-03 18:05:33', '2023-09-03 18:48:49');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(2, 'browse_bread', NULL, '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(3, 'browse_database', NULL, '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(4, 'browse_media', NULL, '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(5, 'browse_compass', NULL, '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(6, 'browse_menus', 'menus', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(7, 'read_menus', 'menus', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(8, 'edit_menus', 'menus', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(9, 'add_menus', 'menus', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(10, 'delete_menus', 'menus', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(11, 'browse_roles', 'roles', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(12, 'read_roles', 'roles', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(13, 'edit_roles', 'roles', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(14, 'add_roles', 'roles', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(15, 'delete_roles', 'roles', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(21, 'browse_settings', 'settings', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(22, 'read_settings', 'settings', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(23, 'edit_settings', 'settings', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(24, 'add_settings', 'settings', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(25, 'delete_settings', 'settings', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(36, 'browse_pages', 'pages', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(37, 'read_pages', 'pages', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(38, 'edit_pages', 'pages', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(39, 'add_pages', 'pages', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(40, 'delete_pages', 'pages', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(71, 'browse_sports', 'sports', '2023-09-15 08:32:52', '2023-09-15 08:32:52'),
(72, 'read_sports', 'sports', '2023-09-15 08:32:52', '2023-09-15 08:32:52'),
(73, 'edit_sports', 'sports', '2023-09-15 08:32:52', '2023-09-15 08:32:52'),
(74, 'add_sports', 'sports', '2023-09-15 08:32:52', '2023-09-15 08:32:52'),
(75, 'delete_sports', 'sports', '2023-09-15 08:32:52', '2023-09-15 08:32:52'),
(81, 'browse_users', 'users', '2023-09-22 12:16:08', '2023-09-22 12:16:08'),
(82, 'read_users', 'users', '2023-09-22 12:16:08', '2023-09-22 12:16:08'),
(83, 'edit_users', 'users', '2023-09-22 12:16:08', '2023-09-22 12:16:08'),
(84, 'add_users', 'users', '2023-09-22 12:16:08', '2023-09-22 12:16:08'),
(85, 'delete_users', 'users', '2023-09-22 12:16:08', '2023-09-22 12:16:08'),
(86, 'browse_company', 'company', '2023-09-23 10:46:13', '2023-09-23 10:46:13'),
(87, 'read_company', 'company', '2023-09-23 10:46:13', '2023-09-23 10:46:13'),
(88, 'edit_company', 'company', '2023-09-23 10:46:13', '2023-09-23 10:46:13'),
(89, 'add_company', 'company', '2023-09-23 10:46:13', '2023-09-23 10:46:13'),
(90, 'delete_company', 'company', '2023-09-23 10:46:13', '2023-09-23 10:46:13');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(2, 1, 3, 'Создание telegram бота с помощью библиотеки telebot на Python', 'Создание telegram бота с помощью библиотеки telebot на Python', 'Создание telegram бота с помощью библиотеки telebot на Python', '<p>Всем доброго времени суток!&nbsp;</p>\r\n<p>Сегодня мы с Вами создадим телеграм бота на python для обмена валют.</p>\r\n<p>Для обмена валют будем использовать сайт&nbsp;<a href=\"https://currate.ru/\">https://currate.ru/</a>, регистрируемся, получаем ключ для для API.</p>\r\n<p>Далее создаем бота, создавать будем через BotFather, копируем токен и переходим в PyCharm.</p>\r\n<p>Для написания кода будем использовать библиотеку&nbsp;<strong>telebot</strong>, скачиваем и устанавливаем через терминал</p>\r\n<p><strong>pip install pyTelegramBotAPI</strong></p>\r\n<p>И пишем код</p>\r\n<div class=\"enlighter-default enlighter-v-standard enlighter-t-classic enlighter-l-python enlighter-hover enlighter-linenumbers enlighter-overflow-scroll \">\r\n<div class=\"enlighter-code\">\r\n<div class=\"enlighter\">\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">import</span><span class=\"enlighter-text\"> telebot</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">token = </span><span class=\"enlighter-s0\">\"5720071999:AAH6iWr3USQVTIhOZwcs-S0Jnwl3XeFeHac\"</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">bot = telebot.</span><span class=\"enlighter-m1\">TeleBot</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">token</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Здесь мы импортируем саму библиотеку, создаем переменную куда добавляем токен из бота.</p>\r\n<p>Далее создаем экземпляр обьекта.</p>\r\n<div class=\"enlighter-default enlighter-v-standard enlighter-t-classic enlighter-l-python enlighter-hover enlighter-linenumbers enlighter-overflow-scroll \">\r\n<div class=\"enlighter-code\">\r\n<div class=\"enlighter\">\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">@bot.</span><span class=\"enlighter-m1\">message_handler</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">commands=</span><span class=\"enlighter-g1\">[</span><span class=\"enlighter-s0\">\'start\'</span><span class=\"enlighter-g1\">])</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">def</span> <span class=\"enlighter-m0\">start_message</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">message</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">:</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> bot.</span><span class=\"enlighter-m1\">send_message</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">message.chat.id, </span><span class=\"enlighter-s0\">\'Start\'</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Принимает команду старт и посылаем боту по chat.id текст Start</p>\r\n<p>Весь код будет выглядеть следующим образом</p>\r\n<div class=\"enlighter-default enlighter-v-standard enlighter-t-classic enlighter-l-python enlighter-hover enlighter-linenumbers enlighter-overflow-scroll \">\r\n<div class=\"enlighter-toolbar-top enlighter-toolbar\">\r\n<div class=\"enlighter-btn enlighter-btn-raw\">\r\n<div class=\"enlighter-tooltip\">&nbsp;</div>\r\n</div>\r\n<div class=\"enlighter-btn enlighter-btn-copy\">\r\n<div class=\"enlighter-tooltip\">&nbsp;</div>\r\n</div>\r\n<div class=\"enlighter-btn enlighter-btn-window\">\r\n<div class=\"enlighter-tooltip\">&nbsp;</div>\r\n</div>\r\n<div class=\"enlighter-btn enlighter-btn-website\">\r\n<div class=\"enlighter-tooltip\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"enlighter-code\">\r\n<div class=\"enlighter\">\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">import</span><span class=\"enlighter-text\"> telebot</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">import</span><span class=\"enlighter-text\"> requests</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">from </span><span class=\"enlighter-k10\">telebot</span><span class=\"enlighter-k0\"> import</span><span class=\"enlighter-text\"> types</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">token=</span><span class=\"enlighter-s0\">\'5911920272:AAFhT07JJAfwHy9XRSgD_UkxPAh-k3xvEDU\'</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">bot=telebot.</span><span class=\"enlighter-m1\">TeleBot</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">token</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">@bot.</span><span class=\"enlighter-m1\">message_handler</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">regexp=</span><span class=\"enlighter-s0\">\'&lt;[a-zA-Z]+,[0-9]+&gt;&lt;[a-zA-Z]+,[0-9]+&gt;\'</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">def</span> <span class=\"enlighter-m0\">handle_message</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">message</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">:</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> data = requests.</span><span class=\"enlighter-m1\">get</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\'https://www.cbr-xml-daily.ru/daily_json.js\'</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">.</span><span class=\"enlighter-m1\">json</span><span class=\"enlighter-g1\">()</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-c0\">#&lt; USD, 123 &gt; &lt; RUB, 123 &gt;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-m0\">print</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-n1\">1</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> spl = message.text.</span><span class=\"enlighter-m1\">split</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\'&lt;\'</span><span class=\"enlighter-g1\">)[</span><span class=\"enlighter-n1\">1</span><span class=\"enlighter-text\">:</span><span class=\"enlighter-g1\">]</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> one = spl</span><span class=\"enlighter-g1\">[</span><span class=\"enlighter-n1\">0</span><span class=\"enlighter-g1\">][</span><span class=\"enlighter-text\">:</span><span class=\"enlighter-n1\">-1</span><span class=\"enlighter-g1\">]</span><span class=\"enlighter-text\">.</span><span class=\"enlighter-m1\">split</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\',\'</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> two = spl</span><span class=\"enlighter-g1\">[</span><span class=\"enlighter-n1\">1</span><span class=\"enlighter-g1\">][</span><span class=\"enlighter-text\">:</span><span class=\"enlighter-n1\">-1</span><span class=\"enlighter-g1\">]</span><span class=\"enlighter-text\">.</span><span class=\"enlighter-m1\">split</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\',\'</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> convert_string = one</span><span class=\"enlighter-g1\">[</span><span class=\"enlighter-n1\">0</span><span class=\"enlighter-g1\">]</span><span class=\"enlighter-text\">+two</span><span class=\"enlighter-g1\">[</span><span class=\"enlighter-n1\">0</span><span class=\"enlighter-g1\">]</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-m0\">print</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">convert_string</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> kurs = requests.</span><span class=\"enlighter-m1\">get</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\'https://currate.ru/api/?get=rates&amp;pairs=\'</span><span class=\"enlighter-text\">+convert_string+</span><span class=\"enlighter-s0\">\'&amp;key=96646ddb8c651fa440d495b55a565e9c\'</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">.</span><span class=\"enlighter-m1\">json</span><span class=\"enlighter-g1\">()</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> res = </span><span class=\"enlighter-m0\">float</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">kurs</span><span class=\"enlighter-g1\">[</span><span class=\"enlighter-s0\">\'data\'</span><span class=\"enlighter-g1\">][</span><span class=\"enlighter-text\">convert_string</span><span class=\"enlighter-g1\">])</span><span class=\"enlighter-text\"> * </span><span class=\"enlighter-m0\">float</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">one</span><span class=\"enlighter-g1\">[</span><span class=\"enlighter-n1\">1</span><span class=\"enlighter-g1\">])</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> bot.</span><span class=\"enlighter-m1\">send_message</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">message.chat.id, </span><span class=\"enlighter-m0\">str</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">res</span><span class=\"enlighter-g1\">))</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">@bot.</span><span class=\"enlighter-m1\">message_handler</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">commands=</span><span class=\"enlighter-g1\">[</span><span class=\"enlighter-s0\">\'start\'</span><span class=\"enlighter-g1\">])</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">def</span> <span class=\"enlighter-m0\">start_message</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">message</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">:</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> bot.</span><span class=\"enlighter-m1\">send_message</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">message.chat.id,</span><span class=\"enlighter-s0\">\'Привет\'</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">@bot.</span><span class=\"enlighter-m1\">message_handler</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">commands=</span><span class=\"enlighter-g1\">[</span><span class=\"enlighter-s0\">\'button\'</span><span class=\"enlighter-g1\">])</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">def</span> <span class=\"enlighter-m0\">button_message</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">message</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">:</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> markup=types.</span><span class=\"enlighter-m1\">ReplyKeyboardMarkup</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">resize_keyboard=</span><span class=\"enlighter-e0\">True</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> item1=types.</span><span class=\"enlighter-m1\">KeyboardButton</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\"Кнопка\"</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> markup.</span><span class=\"enlighter-m1\">add</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">item1</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> bot.</span><span class=\"enlighter-m1\">send_message</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">message.chat.id,</span><span class=\"enlighter-s0\">\'Выберите что вам надо\'</span><span class=\"enlighter-text\">,reply_markup=markup</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">@bot.</span><span class=\"enlighter-m1\">message_handler</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">content_types=</span><span class=\"enlighter-s0\">\'text\'</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">def</span> <span class=\"enlighter-m0\">message_reply</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">message</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">:</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k1\">if</span><span class=\"enlighter-text\"> message.text==</span><span class=\"enlighter-s0\">\"Кнопка\"</span><span class=\"enlighter-text\">:</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> bot.</span><span class=\"enlighter-m1\">send_message</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">message.chat.id,</span><span class=\"enlighter-s0\">\"https://habr.com/ru/users/lubaznatel/\"</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">bot.</span><span class=\"enlighter-m1\">infinity_polling</span><span class=\"enlighter-g1\">()</span></strong></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'posts\\August2023\\EOUlBzRXcYJJbulOUQLt.png', 'sozdanie-telegram-bota-s-pomoshyu-biblioteki-telebot-na-python', 'В этом посте создаем telegram бота с помощью библиотеки telebot на Python', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-08-03 18:05:33', '2023-08-23 03:22:43'),
(5, 1, 1, 'Создание модели в Laravel', NULL, NULL, '<p>Создание моделей в Laravel &ndash; это важная часть разработки приложений, так как модели представляют структуру данных и логику взаимодействия с базой данных. Вот пошаговое руководство по созданию моделей в Laravel:</p>\r\n<p>Шаг 1: Подготовка базы данных</p>\r\n<p>Прежде чем создавать модели, убедитесь, что вы настроили подключение к базе данных в файле&nbsp;<code>.env</code>&nbsp;вашего проекта Laravel. Укажите правильные данные для вашей базы данных, такие как имя базы данных, имя пользователя и пароль.</p>\r\n<p>Шаг 2: Создание модели</p>\r\n<p>В Laravel модели обычно размещаются в каталоге&nbsp;<code>app</code>, поэтому перейдите в этот каталог и создайте новый файл для вашей модели. Например, если вы хотите создать модель&nbsp;<code>User</code>, выполните следующую команду:</p>\r\n<div class=\"enlighter-default enlighter-v-standard enlighter-t-classic enlighter-l-generic enlighter-hover enlighter-linenumbers enlighter-overflow-scroll \">\r\n<div class=\"enlighter-code\">\r\n<div class=\"enlighter\">\r\n<div class=\"\">\r\n<div><span class=\"enlighter-text\">php artisan make:model User</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Эта команда создаст новый файл&nbsp;<code>User.php</code>&nbsp;в каталоге&nbsp;<code>app</code>.</p>\r\n<p>Шаг 3: Определение таблицы и связей</p>\r\n<p>Откройте файл модели&nbsp;<code>User.php</code>&nbsp;и определите таблицу, с которой будет связана модель, и любые связи с другими моделями. Например, если у вас есть таблица&nbsp;<code>users</code>, вы можете определить следующее в модели&nbsp;<code>User</code>:</p>\r\n<div class=\"enlighter-default enlighter-v-standard enlighter-t-classic enlighter-l-generic enlighter-hover enlighter-linenumbers enlighter-overflow-scroll \">\r\n<div class=\"enlighter-code\">\r\n<div class=\"enlighter\">\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-g1\">&lt;</span><span class=\"enlighter-text\">?php</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">namespace App;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">use Illuminate\\Database\\Eloquent\\Model;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k1\">class</span><span class=\"enlighter-text\"> User </span><span class=\"enlighter-k1\">extends</span><span class=\"enlighter-text\"> Model</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-g1\">{</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> protected $table = </span><span class=\"enlighter-s0\">\'users\'</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-g1\">}</span></strong></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Вы можете добавить другие свойства и методы в модель по своему усмотрению. Laravel предоставляет множество функциональных возможностей, таких как массовое заполнение (mass assignment), валидация и запросы к базе данных.</p>\r\n<p>Шаг 4: Использование модели</p>\r\n<p>После создания модели вы можете использовать ее в контроллерах или других частях вашего приложения. Вы можете создавать, обновлять, удалять и получать данные из базы данных с помощью модели.</p>\r\n<p>Примеры использования модели&nbsp;<code>User</code>:</p>\r\n<div class=\"enlighter-default enlighter-v-standard enlighter-t-classic enlighter-l-generic enlighter-hover enlighter-linenumbers enlighter-overflow-scroll \">\r\n<div class=\"enlighter-toolbar-top enlighter-toolbar\">\r\n<div class=\"enlighter-btn enlighter-btn-raw\">\r\n<div class=\"enlighter-tooltip\">&nbsp;</div>\r\n</div>\r\n<div class=\"enlighter-btn enlighter-btn-copy\">\r\n<div class=\"enlighter-tooltip\">&nbsp;</div>\r\n</div>\r\n<div class=\"enlighter-btn enlighter-btn-window\">\r\n<div class=\"enlighter-tooltip\">&nbsp;</div>\r\n</div>\r\n<div class=\"enlighter-btn enlighter-btn-website\">\r\n<div class=\"enlighter-tooltip\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"enlighter-code\">\r\n<div class=\"enlighter\">\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-g1\">&lt;</span><span class=\"enlighter-text\">?php</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">namespace App\\Http\\Controllers;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">use App\\User;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">use Illuminate\\Http\\Request;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k1\">class</span><span class=\"enlighter-text\"> UserController </span><span class=\"enlighter-k1\">extends</span><span class=\"enlighter-text\"> Controller</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-g1\">{</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> public </span><span class=\"enlighter-k1\">function</span> <span class=\"enlighter-m0\">index</span><span class=\"enlighter-g1\">()</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-g1\">{</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-c0\">// Получение всех пользователей</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> $users = User::</span><span class=\"enlighter-m0\">all</span><span class=\"enlighter-g1\">()</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-c0\">// Создание нового пользователя</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> $user = </span><span class=\"enlighter-k1\">new</span> <span class=\"enlighter-m0\">User</span><span class=\"enlighter-g1\">()</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> $user-</span><span class=\"enlighter-g1\">&gt;</span><span class=\"enlighter-text\">name = </span><span class=\"enlighter-s0\">\'John Doe\'</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> $user-</span><span class=\"enlighter-g1\">&gt;</span><span class=\"enlighter-text\">email = </span><span class=\"enlighter-s0\">\'john@example.com\'</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> $user-</span><span class=\"enlighter-g1\">&gt;</span><span class=\"enlighter-m0\">save</span><span class=\"enlighter-g1\">()</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-c0\">// Обновление пользователя</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> $user = User::</span><span class=\"enlighter-m0\">find</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-n1\">1</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> $user-</span><span class=\"enlighter-g1\">&gt;</span><span class=\"enlighter-text\">name = </span><span class=\"enlighter-s0\">\'Updated Name\'</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> $user-</span><span class=\"enlighter-g1\">&gt;</span><span class=\"enlighter-m0\">save</span><span class=\"enlighter-g1\">()</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-c0\">// Удаление пользователя</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> $user = User::</span><span class=\"enlighter-m0\">find</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-n1\">1</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\"> $user-</span><span class=\"enlighter-g1\">&gt;</span><span class=\"enlighter-m0\">delete</span><span class=\"enlighter-g1\">()</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-g1\">}</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-g1\">}</span></strong></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'posts\\August2023\\ioIXI9KZ3MQLmASCdctw.png', 'sozdanie-modeli-v-laravel', 'Создание моделей в Laravel – это важная часть разработки приложений, так как модели представляют структуру данных и логику взаимодействия с базой данных. Вот пошаговое руководство по созданию моделей в Laravel:', NULL, 'PUBLISHED', 0, '2023-08-03 18:14:04', '2023-08-23 03:18:11'),
(6, 1, 2, 'HttpResponse и отправка ответа', 'HttpResponse и отправка ответа', NULL, '<p>Для отправки ответа клиенту в Django применяется класс HttpResponse из пакета django.http. В общем случае для отправки некоторых данных достаточно эти данные передать в конструктор HttpResponse. Например, пусть в файле views.py имеется простейшая функция-представление, которая отправляет ответ клиенту:</p>\r\n<div class=\"enlighter-default enlighter-v-standard enlighter-t-classic enlighter-l-python enlighter-hover enlighter-linenumbers enlighter-overflow-scroll \">\r\n<div class=\"enlighter-code\">\r\n<div class=\"enlighter\">\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">from</span><span class=\"enlighter-text\"> django.http </span><span class=\"enlighter-k0\">import</span><span class=\"enlighter-text\"> HttpResponse</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">def</span> <span class=\"enlighter-m0\">index</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">request</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">:</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">return</span> <span class=\"enlighter-m0\">HttpResponse</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\"Hello\"</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p><strong>И в файле urls.py эта функция соотносится с некоторым маршрутом:</strong></p>\r\n<div class=\"enlighter-default enlighter-v-standard enlighter-t-classic enlighter-l-python enlighter-hover enlighter-linenumbers enlighter-overflow-scroll \">\r\n<div class=\"enlighter-code\">\r\n<div class=\"enlighter\">\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">from</span><span class=\"enlighter-text\"> django.urls </span><span class=\"enlighter-k0\">import</span><span class=\"enlighter-text\"> path</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k0\">from </span><span class=\"enlighter-k10\">hello</span><span class=\"enlighter-k0\"> import</span><span class=\"enlighter-text\"> views</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">urlpatterns = </span><span class=\"enlighter-g1\">[</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-m0\">path</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\"\"</span><span class=\"enlighter-text\">, views.index</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">,</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-g1\">]</span></strong></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Подобная функция просто передает в HttpResponse некоторый текст, который пользователь затем увидит в браузере. Однако подобной функциональностью HttpResponse не ограничивается. Так, функция инициализации класса определяет несколько параметров:</p>\r\n<div class=\"enlighter-default enlighter-v-standard enlighter-t-classic enlighter-l-python enlighter-hover enlighter-linenumbers enlighter-overflow-scroll \">\r\n<div class=\"enlighter-code\">\r\n<div class=\"enlighter\">\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-text\">HttpResponse.</span><span class=\"enlighter-e3\">__init__</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-text\">content=b</span><span class=\"enlighter-s0\">\'\'</span><span class=\"enlighter-text\">, content_type=</span><span class=\"enlighter-e1\">None</span><span class=\"enlighter-text\">, status=</span><span class=\"enlighter-n1\">200</span><span class=\"enlighter-text\">, reason=</span><span class=\"enlighter-e1\">None</span><span class=\"enlighter-text\">, charset=</span><span class=\"enlighter-e1\">None</span><span class=\"enlighter-text\">, headers=</span><span class=\"enlighter-e1\">None</span><span class=\"enlighter-g1\">)</span></strong></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'posts\\August2023\\az2mmEGdDWgJCA4fMnme.png', 'httpresponse-i-otpravka-otveta', 'Для отправки ответа клиенту в Django применяется класс HttpResponse из пакета django', NULL, 'PUBLISHED', 0, '2023-08-21 16:51:15', '2023-08-23 03:16:42'),
(7, 1, 4, 'Парсинг сайтов на PHP с помощью регулярных выражений', NULL, NULL, '<p>Всем привет! Сегодня мы напишем скрипт PHP для парсинга сайта (то есть выборки определенных фрагментов теста или html тегов).</p>\r\n<p>В примере будем парсить главную страницу моего сайта&nbsp;<strong>https://devopser.online/</strong>. Допустим, нужно спарсить пункты меню (правое меню) и поместить в отдельный файл.</p>\r\n<p>Первое, что необходимо сделать &ndash; получить содержимое страницы. Это делается с помощью PHP&nbsp;<strong>функции file_get_contents</strong>:</p>\r\n<div class=\"enlighter-default enlighter-v-standard enlighter-t-classic enlighter-l-php enlighter-hover enlighter-linenumbers enlighter-overflow-scroll \">\r\n<div class=\"enlighter-code\">\r\n<div class=\"enlighter\">\r\n<div class=\"\">\r\n<div><span class=\"enlighter-k7\">$str</span><span class=\"enlighter-text\"> = </span><span class=\"enlighter-m0\">file_get_contents</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\"https://devopser.online/\"</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">;</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>В переменной $str будет находится все содержимое страницы, которое мы парсим, включая html, css, js и т.д.</p>\r\n<p>Затем мы будем использовать регулярные выражения для выборки определенного текста, то есть пункты меню. В PHP используются разные функции регулярных выражений, но мы будем применять&nbsp;<strong>preg_match_all</strong>, так как у нас выборка состоит из массива элементов меню.</p>\r\n<p><strong>preg_match_all&nbsp;</strong>имеет 3 аргумента: 1 &ndash; шаблон, 2 &ndash; строка ( в нашем случае &ndash; html код страницы), 3 &ndash; массив с результатом выборки.</p>\r\n<p>Открыв html код, можно увидеть, что все пункты правого меню помещены в html тег li с классом cat-item cat-item-19 &ndash; &lt;li class=&rdquo;cat-item cat-item-19&Prime;&gt;</p>\r\n<figure class=\"wp-block-image size-full\"><img class=\"wp-image-760\" src=\"https://devopser.online/wp-content/uploads/2022/10/1.png\" sizes=\"(max-width: 985px) 100vw, 985px\" srcset=\"https://yemorkovin.ru/wp-content/uploads/2022/10/1.png 985w, https://yemorkovin.ru/wp-content/uploads/2022/10/1-600x305.png 600w, https://yemorkovin.ru/wp-content/uploads/2022/10/1-300x152.png 300w, https://yemorkovin.ru/wp-content/uploads/2022/10/1-768x390.png 768w\" alt=\"\" width=\"985\" height=\"500\"></figure>\r\n<p>Регулярное выражение будет выглядеть следующим образом:</p>\r\n<div class=\"enlighter-default enlighter-v-standard enlighter-t-classic enlighter-l-php enlighter-hover enlighter-linenumbers enlighter-overflow-scroll \">\r\n<div class=\"enlighter-code\">\r\n<div class=\"enlighter\">\r\n<div class=\"\">\r\n<div><span class=\"enlighter-m0\">preg_match_all</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\"#&lt;li class=\\\"cat-item cat-item-.+?\\\"&gt;&lt;a href=\\\"https://devopser.online/category/.+?\\\"&gt;(.+?)&lt;/a&gt;.+?&lt;/li&gt;#su\"</span><span class=\"enlighter-text\">, </span><span class=\"enlighter-k7\">$str,</span> <span class=\"enlighter-k7\">$res</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">;</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Если вывести переменную&nbsp;<strong>$res</strong>, получим такие элементы массива: 1 &ndash; результат поиска по всему шаблону; 2 &ndash; сам текст (шаблон в скобках).</p>\r\n<figure class=\"wp-block-image size-full\"><img class=\"wp-image-761\" src=\"https://devopser.online/wp-content/uploads/2022/10/2.png\" sizes=\"(max-width: 562px) 100vw, 562px\" srcset=\"https://yemorkovin.ru/wp-content/uploads/2022/10/2.png 562w, https://yemorkovin.ru/wp-content/uploads/2022/10/2-300x286.png 300w\" alt=\"\" width=\"562\" height=\"535\"></figure>\r\n<p>Нам нужен 2й элемент массива (в нем содержится текст).</p>\r\n<p>Перебираем массив и записываем его поэлементно в файл.</p>\r\n<div class=\"enlighter-default enlighter-v-standard enlighter-t-classic enlighter-l-php enlighter-hover enlighter-linenumbers enlighter-overflow-scroll \">\r\n<div class=\"enlighter-code\">\r\n<div class=\"enlighter\">\r\n<div class=\"\">\r\n<div><span class=\"enlighter-m0\">file_put_contents</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\"data.txt\"</span><span class=\"enlighter-text\">, </span><span class=\"enlighter-s0\">\"\"</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">;</span></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><span class=\"enlighter-k1\">foreach</span> <span class=\"enlighter-g1\">(</span><span class=\"enlighter-k7\">$res[1]</span> <span class=\"enlighter-k1\">as</span> <span class=\"enlighter-k7\">$value</span><span class=\"enlighter-g1\">)</span> <span class=\"enlighter-g1\">{</span></div>\r\n</div>\r\n<div class=\"\">\r\n<div><span class=\"enlighter-m0\">file_put_contents</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\"data.txt\"</span><span class=\"enlighter-text\">, </span><span class=\"enlighter-k7\">$value.</span><span class=\"enlighter-s0\">\"\\n\"</span><span class=\"enlighter-text\">, FILE_APPEND</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">;</span></div>\r\n</div>\r\n<div class=\"\">\r\n<div><span class=\"enlighter-g1\">}</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p><strong>\\n</strong>&nbsp;нужен для того, чтобы после добавления текста курсор становился с новой строки.</p>\r\n<p>Флаг&nbsp;<strong>FILE_APPEND&nbsp;</strong>добавляет текст в конец файла.</p>\r\n<p>Весь программный код выглядит следующим образом:</p>\r\n<p>&nbsp;</p>\r\n<div class=\"enlighter-default enlighter-v-standard enlighter-t-classic enlighter-l-php enlighter-hover enlighter-linenumbers enlighter-overflow-scroll \">\r\n<div class=\"enlighter-code\">\r\n<div class=\"enlighter\">\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-g1\">&lt;</span><span class=\"enlighter-text\">?php</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k7\">$str</span><span class=\"enlighter-text\"> = </span><span class=\"enlighter-m0\">file_get_contents</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\"https://devopser.online/\"</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-m0\">preg_match_all</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\"#&lt;li class=\\\"cat-item cat-item-.+?\\\"&gt;&lt;a href=\\\"https://devopser.online/category/.+?\\\"&gt;(.+?)&lt;/a&gt;.+?&lt;/li&gt;#su\"</span><span class=\"enlighter-text\">, </span><span class=\"enlighter-k7\">$str,</span> <span class=\"enlighter-k7\">$res</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-m0\">file_put_contents</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\"data.txt\"</span><span class=\"enlighter-text\">, </span><span class=\"enlighter-s0\">\"\"</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-k1\">foreach</span> <span class=\"enlighter-g1\">(</span><span class=\"enlighter-k7\">$res[1]</span> <span class=\"enlighter-k1\">as</span> <span class=\"enlighter-k7\">$value</span><span class=\"enlighter-g1\">)</span> <span class=\"enlighter-g1\">{</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-m0\">file_put_contents</span><span class=\"enlighter-g1\">(</span><span class=\"enlighter-s0\">\"data.txt\"</span><span class=\"enlighter-text\">, </span><span class=\"enlighter-k7\">$value.</span><span class=\"enlighter-s0\">\"\\n\"</span><span class=\"enlighter-text\">, FILE_APPEND</span><span class=\"enlighter-g1\">)</span><span class=\"enlighter-text\">;</span></strong></div>\r\n</div>\r\n<div class=\"\">\r\n<div><strong><span class=\"enlighter-g1\">}</span></strong></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'posts\\August2023\\BJI7DH6HLOaNXGuWfbpl.png', 'parsing-sajtov-na-php-s-pomoshyu-regulyarnyh-vyrazhenij', 'В примере будем парсить главную страницу моего сайта https://yemorkovin.ru/. Допустим, нужно спарсить пункты меню (правое меню) и поместить в отдельный файл.', NULL, 'PUBLISHED', 0, '2023-08-23 03:25:49', '2023-08-23 03:25:49');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-08-03 18:04:51', '2023-08-03 18:04:51'),
(2, 'user', 'Normal User', '2023-08-03 18:04:51', '2023-08-03 18:04:51');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\August2023\\DTq9cX3G16oOkREmFz8V.jpg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `sports`
--

CREATE TABLE `sports` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_api` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sports`
--

INSERT INTO `sports` (`id`, `title`, `img`, `id_api`, `created_at`, `updated_at`) VALUES
(1, 'Футбол', 'sports\\September2023\\lmtfpVNHonTMpzLhi4c0.png', 1, '2023-09-15 08:34:17', '2023-09-15 08:34:17'),
(2, 'Хоккей', 'sports\\September2023\\cPDdfVu4WcSW6xM2r9Bf.png', 2, '2023-09-15 08:34:48', '2023-09-15 08:34:48'),
(3, 'Теннис', 'sports\\September2023\\QOJYigYoJTfDpEGVz4dT.png', 4, '2023-09-15 08:35:39', '2023-09-15 08:35:39'),
(4, 'Баскетбол', 'sports\\September2023\\9Nbd2LkzLsB5grdoLRR1.png', 3, '2023-09-15 08:36:00', '2023-09-15 08:36:00'),
(5, 'Бейсбол', 'sports\\September2023\\ZHFd5g0J2nO5o9j8QJql.png', 5, '2023-09-15 08:36:32', '2023-09-15 08:36:32'),
(6, 'Волейбол', 'sports\\September2023\\TDoaPyzYW0Dy3eAPIVM2.png', 6, '2023-09-15 08:36:57', '2023-09-15 08:36:57'),
(7, 'Регби', 'sports\\September2023\\NAzcRsWFFZwOxftpCCpm.png', 7, '2023-09-15 08:37:20', '2023-09-15 08:37:20'),
(8, 'Гандбол', 'sports\\September2023\\OUPJ1iGs3kPGpQzeHBhK.png', 8, '2023-09-15 08:37:59', '2023-09-15 08:37:59'),
(9, 'Настольный теннис', 'sports\\September2023\\3xXOs9PKplmVlbqBWrW2.png', 10, '2023-09-15 08:38:27', '2023-09-15 08:38:27'),
(10, 'Скачки', 'sports\\September2023\\16nmhjpaCEofxnviWKYu.png', 264, '2023-09-15 08:39:42', '2023-09-15 08:39:42'),
(11, 'MMA', 'sports\\September2023\\IksH9fnPUCKhzf8Xz8wJ.png', 255, '2023-09-15 08:40:00', '2023-09-15 08:40:48'),
(12, 'Бокс', 'sports\\September2023\\ObXvBDAan2UGIxdJDYPt.png', 228, '2023-09-15 08:40:27', '2023-09-15 08:40:27');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-08-03 18:05:33', '2023-08-03 18:05:33'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-08-03 18:05:33', '2023-08-03 18:05:33');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(14, 1, 'admin', 'admin@admin.com', NULL, '$2y$10$D1MtNQRfURvok6GJxoePZe7EaYBsYcq8Oz3ikyedzexOeKTv4WaIG', 'i8S7zZZlH5xE2Zxu8NyNDk6rVESUkm3aPKpct2BNpSiq3fGpgDwVFaoaTkRC', '{\"locale\":\"ru\"}', '2023-08-03 18:05:33', '2023-09-17 11:20:49'),
(16, NULL, 'user1', 'user1@mail.ru', NULL, '$2y$10$t9/G9lBgU0hcQfF39nOMDelUz8GX14zTPbHVah7FMzpPwQma1PqwG', NULL, '{\"locale\":\"ru\"}', '2023-09-22 12:26:16', '2023-09-22 12:26:16'),
(17, 2, 'user5', 'user5@gmail.com', NULL, '$2y$10$4sBdaSrScfzwlfQI65ruFu/dcz1Jwh/eo.a6eV5ESE6dE6i6U3dF2', NULL, '{\"locale\":\"ru\"}', '2023-09-23 13:12:50', '2023-09-23 13:12:50');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `company`
--
ALTER TABLE `company`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `sports`
--
ALTER TABLE `sports`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
