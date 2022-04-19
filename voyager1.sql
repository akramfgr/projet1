-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 17 avr. 2022 à 06:14
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `voyager1`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Scientifique', '2022-04-13 18:14:15', '2022-04-13 18:14:15'),
(2, 'Administratif', '2022-04-13 18:14:24', '2022-04-13 18:14:24'),
(3, 'Pedagogique', '2022-04-13 18:14:35', '2022-04-13 18:14:35');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 6),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 7),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 15),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 16),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 3),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 0, 0, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 0, 0, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 20),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 21),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 0, 0, 1, 1, 1, '{}', 19),
(76, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 0, 1, 1, 1, '{}', 17),
(81, 1, 'user_belongsto_professeur_relationship', 'relationship', 'professeurs', 0, 0, 0, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Professeur\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"email\",\"key\":\"email\",\"label\":\"nom\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 22),
(102, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(107, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(119, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(120, 14, 'nom', 'text', 'Nom de specialité', 0, 1, 1, 1, 1, 1, '{}', 2),
(121, 14, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{}', 3),
(122, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(123, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(127, 11, 'Etat', 'select_dropdown', 'Etat', 0, 1, 1, 1, 0, 0, '{\"default\":\"En attente\",\"options\":{\"Accepter\":\"Acc\\u00e9pter\",\"Reffuser\":\"Reffuser\",\"En attente\":\"En attente\"}}', 5),
(142, 11, 'Dossier', 'file', 'Dossier', 0, 1, 1, 1, 1, 1, '{}', 3),
(144, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(145, 17, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(146, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(147, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(148, 11, 'dossier_hasone_category_relationship', 'relationship', 'type', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"type\",\"key\":\"nom\",\"label\":\"nom\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(149, 11, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 6),
(151, 1, 'prenom', 'text', 'Prenom', 0, 1, 1, 1, 1, 1, '{}', 5),
(152, 1, 'cin', 'text', 'Cin', 0, 1, 1, 1, 1, 1, '{}', 8),
(153, 1, 'n_depp', 'text', 'N Depp', 0, 0, 0, 1, 1, 1, '{}', 14),
(154, 1, 'date_recrutement', 'text', 'Date Recrutement', 0, 1, 1, 1, 1, 1, '{}', 11),
(155, 1, 'date_naissance', 'text', 'Date Naissance', 0, 1, 1, 1, 1, 1, '{}', 12),
(156, 1, 'appartient_ensa', 'text', 'Appartient Ensa', 0, 0, 0, 1, 1, 1, '{}', 13),
(157, 1, 'specialite', 'text', 'Specialite', 0, 1, 1, 1, 1, 1, '{}', 23),
(158, 1, 'structure', 'text', 'Structure', 0, 1, 1, 1, 1, 1, '{}', 10),
(160, 11, 'id_user', 'text', 'Prof', 0, 1, 1, 0, 0, 0, '{}', 5),
(161, 1, 'user_belongsto_specialite_relationship', 'relationship', 'specialites', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Specialite\",\"table\":\"specialites\",\"type\":\"belongsTo\",\"column\":\"specialite\",\"key\":\"id\",\"label\":\"code\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 24);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'Professeur', 'Professeurs', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":\"currentUser\"}', '2022-04-02 13:46:12', '2022-04-17 04:01:29'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(11, 'dossiers', 'dossiers', 'Dossier', 'Dossiers', 'voyager-book', 'App\\Dossier', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"currentUser\"}', '2022-04-03 15:21:23', '2022-04-16 06:19:50'),
(14, 'specialites', 'specialites', 'Specialite', 'Specialites', 'voyager-file-text', 'App\\Specialite', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-04-07 13:07:59', '2022-04-07 13:07:59'),
(17, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-13 18:11:04', '2022-04-13 18:11:37');

-- --------------------------------------------------------

--
-- Structure de la table `dossiers`
--

CREATE TABLE `dossiers` (
  `id` int(10) UNSIGNED NOT NULL,
  `Dossier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Etat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'En attente',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dossiers`
--

INSERT INTO `dossiers` (`id`, `Dossier`, `created_at`, `updated_at`, `id_user`, `Etat`, `type`) VALUES
(16, '[{\"download_link\":\"dossiers\\\\April2022\\\\iRUAjUZ2v1E9uwRMDhIq.zip\",\"original_name\":\"Scientifique.zip\"}]', '2022-04-13 16:57:00', '2022-04-13 18:29:00', 'rayane', 'Accepter', '1'),
(17, '[{\"download_link\":\"dossiers\\\\April2022\\\\jbW1cUT7q6btPYcCaLtx.rar\",\"original_name\":\"Administratif.rar\"}]', '2022-04-13 17:05:00', '2022-04-13 18:29:00', 'rayane', 'Reffuser', '2'),
(48, '[{\"download_link\":\"dossiers\\\\April2022\\\\cEFF79ZM06xpLEZez7l9.zip\",\"original_name\":\"test.zip\"}]', '2022-04-15 22:31:06', '2022-04-15 22:31:06', 'fouguir', 'En attente', 'Scientifique'),
(50, '[{\"download_link\":\"dossiers\\\\April2022\\\\zIfA1msqQKuIlvR7X2hX.rar\",\"original_name\":\"Administratif.rar\"}]', '2022-04-16 06:29:13', '2022-04-16 06:30:03', 'Lachgar', 'Accepter', 'Administratif');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-04-02 13:46:12', '2022-04-02 13:46:12');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Tableau de bord', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2022-04-02 13:46:12', '2022-04-16 05:41:18', 'voyager.dashboard', 'null'),
(3, 1, 'Professeur', '', '_self', 'voyager-person', '#000000', NULL, 2, '2022-04-02 13:46:12', '2022-04-15 23:01:55', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 5, 4, '2022-04-02 13:46:12', '2022-04-15 23:07:58', 'voyager.roles.index', NULL),
(5, 1, 'Outils', '', '_self', 'voyager-tools', '#000000', NULL, 4, '2022-04-02 13:46:12', '2022-04-16 05:41:38', NULL, ''),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-04-02 13:46:12', '2022-04-02 21:37:52', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-04-02 13:46:12', '2022-04-02 21:37:52', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 10, '2022-04-02 13:46:12', '2022-04-15 23:08:29', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 3, '2022-04-02 13:46:12', '2022-04-15 23:01:40', 'voyager.bread.index', NULL),
(10, 1, 'Parametres', '', '_self', 'voyager-settings', '#000000', NULL, 5, '2022-04-02 13:46:12', '2022-04-17 03:20:48', 'voyager.settings.index', 'null'),
(17, 1, 'Dossiers', '', '_self', 'voyager-book', NULL, NULL, 3, '2022-04-03 15:21:23', '2022-04-15 23:01:36', 'voyager.dossiers.index', NULL),
(23, 1, 'Specialites', '', '_self', 'voyager-file-text', NULL, 5, 6, '2022-04-07 13:08:00', '2022-04-15 23:08:16', 'voyager.specialites.index', NULL),
(26, 1, 'Categories', '', '_self', 'voyager-categories', '#000000', 5, 5, '2022-04-13 18:11:04', '2022-04-15 23:08:08', 'voyager.categories.index', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(2, 'browse_bread', NULL, '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(3, 'browse_database', NULL, '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(4, 'browse_media', NULL, '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(5, 'browse_compass', NULL, '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(6, 'browse_menus', 'menus', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(7, 'read_menus', 'menus', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(8, 'edit_menus', 'menus', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(9, 'add_menus', 'menus', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(10, 'delete_menus', 'menus', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(11, 'browse_roles', 'roles', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(12, 'read_roles', 'roles', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(13, 'edit_roles', 'roles', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(14, 'add_roles', 'roles', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(15, 'delete_roles', 'roles', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(16, 'browse_users', 'users', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(17, 'read_users', 'users', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(18, 'edit_users', 'users', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(19, 'add_users', 'users', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(20, 'delete_users', 'users', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(21, 'browse_settings', 'settings', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(22, 'read_settings', 'settings', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(23, 'edit_settings', 'settings', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(24, 'add_settings', 'settings', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(25, 'delete_settings', 'settings', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(56, 'browse_dossiers', 'dossiers', '2022-04-03 15:21:23', '2022-04-03 15:21:23'),
(57, 'read_dossiers', 'dossiers', '2022-04-03 15:21:23', '2022-04-03 15:21:23'),
(58, 'edit_dossiers', 'dossiers', '2022-04-03 15:21:23', '2022-04-03 15:21:23'),
(59, 'add_dossiers', 'dossiers', '2022-04-03 15:21:23', '2022-04-03 15:21:23'),
(60, 'delete_dossiers', 'dossiers', '2022-04-03 15:21:23', '2022-04-03 15:21:23'),
(71, 'browse_specialites', 'specialites', '2022-04-07 13:08:00', '2022-04-07 13:08:00'),
(72, 'read_specialites', 'specialites', '2022-04-07 13:08:00', '2022-04-07 13:08:00'),
(73, 'edit_specialites', 'specialites', '2022-04-07 13:08:00', '2022-04-07 13:08:00'),
(74, 'add_specialites', 'specialites', '2022-04-07 13:08:00', '2022-04-07 13:08:00'),
(75, 'delete_specialites', 'specialites', '2022-04-07 13:08:00', '2022-04-07 13:08:00'),
(86, 'browse_categories', 'categories', '2022-04-13 18:11:04', '2022-04-13 18:11:04'),
(87, 'read_categories', 'categories', '2022-04-13 18:11:04', '2022-04-13 18:11:04'),
(88, 'edit_categories', 'categories', '2022-04-13 18:11:04', '2022-04-13 18:11:04'),
(89, 'add_categories', 'categories', '2022-04-13 18:11:04', '2022-04-13 18:11:04'),
(90, 'delete_categories', 'categories', '2022-04-13 18:11:04', '2022-04-13 18:11:04');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(56, 1),
(56, 2),
(56, 3),
(57, 1),
(57, 2),
(57, 3),
(58, 1),
(59, 2),
(60, 2),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(86, 1),
(86, 3),
(87, 1),
(87, 3),
(88, 1),
(88, 3),
(89, 1),
(89, 3),
(90, 1),
(90, 3);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Administrator', '2022-04-02 13:46:12', '2022-04-07 10:47:55'),
(2, 'user', 'Normal User', '2022-04-02 13:46:12', '2022-04-02 13:46:12'),
(3, 'Admin', 'Admin', '2022-04-07 10:55:28', '2022-04-07 10:55:28');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '798113615843-m0es3o0q9rp3442qthvdtu3br2q3ivi9.apps.googleusercontent.com', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\April2022\\ivyOHZCvl48MUZWyPsUl.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'ENSAJ', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Ecole Nationale des sciences appliquées', '', 'text', 2, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\April2022\\rHuRdMBWMifhTvWoPRb2.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '798113615843-m0es3o0q9rp3442qthvdtu3br2q3ivi9.apps.googleusercontent.com', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `specialites`
--

CREATE TABLE `specialites` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `specialites`
--

INSERT INTO `specialites` (`id`, `nom`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Developpement Web', 'Web', '2022-04-07 13:12:19', '2022-04-07 13:12:19'),
(2, 'Developpement Mobile', 'Dev Mobile', '2022-04-07 13:13:00', '2022-04-07 13:13:00'),
(3, 'Programmation JAVA', 'JAVA', '2022-04-07 13:13:28', '2022-04-07 13:13:28'),
(4, 'Base de donées', 'BD', '2022-04-07 13:14:16', '2022-04-07 13:14:16');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-04-02 13:46:13', '2022-04-02 13:46:13'),
(31, 'menu_items', 'title', 19, 'pt', 'Publicações', '2022-04-07 01:03:16', '2022-04-07 01:03:16'),
(32, 'menu_items', 'title', 20, 'pt', 'Páginas', '2022-04-07 01:03:16', '2022-04-07 01:03:16');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prenom` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cin` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `n_depp` int(11) DEFAULT NULL,
  `date_recrutement` date DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `appartient_ensa` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialite` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `prenom`, `cin`, `n_depp`, `date_recrutement`, `date_naissance`, `appartient_ensa`, `specialite`, `structure`) VALUES
(1, 1, 'Administrateur', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$PQWJ1079pB80DKoCmVJzqODj7etTPAvo868PS5SuoS6Ab3hOlSq5m', '0yLq6lEegD5Cd1Atng0RC8ATNMpBPzaq8VOcuwzp2E8PUlirs0x8nWzfGb0z', '{\"locale\":\"fr\"}', '2022-04-02 13:46:13', '2022-04-17 03:51:48', 'Admin', 'M12345', NULL, '2006-11-25', '1994-07-17', NULL, NULL, 'Administration ENSAJ'),
(33, 2, 'fouguir', 'akramfgr16@gmail.com', 'users\\April2022\\m2C1zCfSQgQGGnFXCltH.png', NULL, '$2y$10$P48ECPSY0ueaBreB5Z3GBu1nbPBwUpAP09QoW.hQqG0np0HprIxPO', 'bKopNbMGRD76O5R3olmENjvmCgwRz6Rgn6pMbGI48HlIwwkOWVMS73cn1YJ4', '{\"locale\":\"fr\"}', '2022-04-13 00:35:05', '2022-04-17 03:59:36', 'Akram', 'M98765', 14, '2006-06-15', '1990-08-30', NULL, '4', 'Laboratoire des Sciences de l\'ingénieur Pour l\'Energie'),
(80, 2, 'Lachgar', 'lachgar@gmail.com', 'users\\April2022\\vzR1DTxu1tV4gIQKD0qo.jpg', NULL, '$2y$10$fy6T5QCCJoaOy4YX7Qd0sOOAHOLveTMaNEW5yoDuHNLMkf0pSK9UW', NULL, '{\"locale\":\"fr\"}', '2022-04-16 06:27:58', '2022-04-17 03:59:18', 'Mohamed', 'M98765', 18, '2010-06-25', '1979-10-26', NULL, '2', 'Laboratoire d\'informatique');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `dossiers`
--
ALTER TABLE `dossiers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `specialites`
--
ALTER TABLE `specialites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `dossiers`
--
ALTER TABLE `dossiers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `specialites`
--
ALTER TABLE `specialites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
