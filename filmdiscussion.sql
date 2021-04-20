-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 20, 2021 at 08:18 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmdiscussion`
--

-- --------------------------------------------------------

--
-- Table structure for table `innodb_large_prefixcommentaires`
--

DROP TABLE IF EXISTS `innodb_large_prefixcommentaires`;
CREATE TABLE IF NOT EXISTS `innodb_large_prefixcommentaires` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `avis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `innodb_large_prefixcommentaires_post_id_foreign` (`post_id`),
  KEY `innodb_large_prefixcommentaires_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innodb_large_prefixcommentaires`
--

INSERT INTO `innodb_large_prefixcommentaires` (`id`, `date`, `avis`, `post_id`, `user_id`) VALUES
(2, '2020-11-25', 'je suis d\'accord j\'ai adoré !', 4, 3),
(3, '2020-12-08', 'tu dis de la crap', 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `innodb_large_prefixfailed_jobs`
--

DROP TABLE IF EXISTS `innodb_large_prefixfailed_jobs`;
CREATE TABLE IF NOT EXISTS `innodb_large_prefixfailed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `innodb_large_prefixfailed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `innodb_large_prefixfilm_series`
--

DROP TABLE IF EXISTS `innodb_large_prefixfilm_series`;
CREATE TABLE IF NOT EXISTS `innodb_large_prefixfilm_series` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_sortie` date DEFAULT NULL,
  `type` enum('film','serie') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'film',
  `nombreEpisode` int(11) DEFAULT '0',
  `duree` int(11) DEFAULT '0',
  `resume` text COLLATE utf8mb4_unicode_ci,
  `production` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `affiche` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `notes` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innodb_large_prefixfilm_series`
--

INSERT INTO `innodb_large_prefixfilm_series` (`id`, `titre`, `date_sortie`, `type`, `nombreEpisode`, `duree`, `resume`, `production`, `affiche`, `notes`) VALUES
(10, 'Rasta Rockett', '1994-04-13', 'film', NULL, 108, 'L\'histoire véridique de quatre Jamaïcains qui ont un rêve fou : obtenir une médaille d\'or dans une discipline olympique qui leur est totalement inconnue et impossible à pratiquer chez eux : le bobsleigh !', 'Walt Disney Pictures', 'affiches/IZfIr8PoAmRY9oUOkEwiFkUP69X18efUsVlYsml3.jpeg', 4.00),
(11, 'Creed : L\'Héritage de Rocky Balboa', '2016-01-13', 'film', NULL, 134, 'Adonis Johnson n\'a jamais connu son père, le célèbre champion du monde poids lourd Apollo Creed décédé avant sa naissance. Pourtant, il a la boxe dans le sang et décide d\'être entraîné par le meilleur de sa catégorie. À Philadelphie, il retrouve la trace de Rocky Balboa, que son père avait affronté autrefois, et lui demande de devenir son entraîneur. D\'abord réticent, l\'ancien champion décèle une force inébranlable chez Adonis et finit par accepter…', 'Chartoff-Winkler Productions', 'affiches/bYd5rg8yFBjc4hvOavleTvUO2lFvkoYIvtY0R1oE.jpeg', 5.00),
(12, 'The Last Dance', '2020-04-20', 'serie', 10, NULL, 'A travers des images d\'archives inédites, cette série documentaire en dix épisodes suit de l\'intérieur la saison 1997-1998 des Chicago Bulls en route vers leur sixième titre en huit ans, et propose un portrait sportif et intime de Michael Jordan.', 'Michael Tollin', 'affiches/9Mfjdm4YQukiKNnjc0sKFJNbUyGvdvn3fsQul4rd.jpeg', 5.00),
(13, 'Coach Carter', '2005-08-17', 'film', NULL, 136, 'L\'histoire vraie de Ken Carter, l\'entraîneur de basket d\'une équipe de lycée, qui devint célèbre en 1999 après avoir renvoyé ses joueurs à leurs chères études, déclarant forfait deux matchs de suite alors que l\'équipe était invaincue, parce que ces derniers n\'avaient pas obtenu des résultats scolaires suffisants.', 'MTV Films', 'affiches/2wXQdsjkJOPZXPr5l01HTw4wllbQa5AxSoZMvd6v.jpeg', 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `innodb_large_prefixgenres`
--

DROP TABLE IF EXISTS `innodb_large_prefixgenres`;
CREATE TABLE IF NOT EXISTS `innodb_large_prefixgenres` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innodb_large_prefixgenres`
--

INSERT INTO `innodb_large_prefixgenres` (`id`, `nom`) VALUES
(1, 'Comédie'),
(2, 'Horreur'),
(3, 'Action'),
(4, 'Thriller'),
(5, 'Mystère'),
(6, 'Aventure'),
(7, 'Documentaire'),
(8, 'Romance'),
(9, 'Science-Fiction');

-- --------------------------------------------------------

--
-- Table structure for table `innodb_large_prefixgenre_film_serie`
--

DROP TABLE IF EXISTS `innodb_large_prefixgenre_film_serie`;
CREATE TABLE IF NOT EXISTS `innodb_large_prefixgenre_film_serie` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `film_serie_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `innodb_large_prefixgenre_film_serie_genre_id_foreign` (`genre_id`),
  KEY `innodb_large_prefixgenre_film_serie_film_serie_id_foreign` (`film_serie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innodb_large_prefixgenre_film_serie`
--

INSERT INTO `innodb_large_prefixgenre_film_serie` (`id`, `genre_id`, `film_serie_id`) VALUES
(1, 3, 2),
(2, 1, 3),
(3, 3, 3),
(4, 4, 4),
(5, 5, 4),
(6, 2, 5),
(7, 4, 5),
(8, 1, 6),
(9, 1, 7),
(10, 3, 7),
(11, 4, 7),
(12, 1, 8),
(13, 6, 8),
(14, 2, 9),
(15, 4, 9),
(16, 5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `innodb_large_prefixmigrations`
--

DROP TABLE IF EXISTS `innodb_large_prefixmigrations`;
CREATE TABLE IF NOT EXISTS `innodb_large_prefixmigrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innodb_large_prefixmigrations`
--

INSERT INTO `innodb_large_prefixmigrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_01_080512_create_film_serie_table', 1),
(5, '2020_10_01_085729_create_genre_table', 1),
(6, '2020_10_01_085922_create_genre_film_serie_table', 1),
(7, '2020_10_01_090714_create_post_table', 1),
(8, '2020_10_01_091014_create_commentaire_table', 1),
(9, '2020_10_21_122748_create_roles_table', 1),
(10, '2020_11_17_082202_create_notifications_table', 1),
(11, '2020_11_24_101249_create_notes', 2);

-- --------------------------------------------------------

--
-- Table structure for table `innodb_large_prefixnotifications`
--

DROP TABLE IF EXISTS `innodb_large_prefixnotifications`;
CREATE TABLE IF NOT EXISTS `innodb_large_prefixnotifications` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` text COLLATE utf8mb4_unicode_ci,
  `lu` tinyint(1) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `commentaire_id` bigint(20) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `innodb_large_prefixnotifications_user_id_foreign` (`user_id`),
  KEY `innodb_large_prefixnotifications_commentaire_id_foreign` (`commentaire_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innodb_large_prefixnotifications`
--

INSERT INTO `innodb_large_prefixnotifications` (`id`, `titre`, `contenu`, `lu`, `type`, `user_id`, `commentaire_id`) VALUES
(3, 'Un administrateur a supprimé l\'un de vos messages', 'Réalisation et casting au poil. On ne s\'ennuie jamais et la créativité des chorégraphies nous laisse sans voix pendant deux heures.', 1, 'suppression', 2, NULL),
(6, 'Un administrateur a supprimé l\'un de vos messages', 'azerty', 0, 'suppression', 2, NULL),
(7, 'superman29 a commenté votre post!', '', 0, 'commentaire', 2, 2),
(8, 'connard a commenté votre post!', '', 0, 'commentaire', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `innodb_large_prefixpassword_resets`
--

DROP TABLE IF EXISTS `innodb_large_prefixpassword_resets`;
CREATE TABLE IF NOT EXISTS `innodb_large_prefixpassword_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `innodb_large_prefixpassword_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `innodb_large_prefixposts`
--

DROP TABLE IF EXISTS `innodb_large_prefixposts`;
CREATE TABLE IF NOT EXISTS `innodb_large_prefixposts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` date NOT NULL,
  `avis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `film_serie_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `notes` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `innodb_large_prefixposts_film_serie_id_foreign` (`film_serie_id`),
  KEY `innodb_large_prefixposts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innodb_large_prefixposts`
--

INSERT INTO `innodb_large_prefixposts` (`id`, `titre`, `date`, `avis`, `film_serie_id`, `user_id`, `notes`) VALUES
(4, 'genial', '2020-11-24', 'super', 2, 2, 5.00),
(7, 'Bof', '2020-11-25', 'moyen', 4, 1, 3.50);

-- --------------------------------------------------------

--
-- Table structure for table `innodb_large_prefixroles`
--

DROP TABLE IF EXISTS `innodb_large_prefixroles`;
CREATE TABLE IF NOT EXISTS `innodb_large_prefixroles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `libelle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innodb_large_prefixroles`
--

INSERT INTO `innodb_large_prefixroles` (`id`, `libelle`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2020-11-17 10:25:38', '2020-11-17 10:25:38'),
(2, 'User', '2020-11-17 10:25:38', '2020-11-17 10:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `innodb_large_prefixusers`
--

DROP TABLE IF EXISTS `innodb_large_prefixusers`;
CREATE TABLE IF NOT EXISTS `innodb_large_prefixusers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `innodb_large_prefixusers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innodb_large_prefixusers`
--

INSERT INTO `innodb_large_prefixusers` (`id`, `username`, `email`, `password`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'prout', 'proutman@zizi3.com', '$2y$10$pn4RpKysWRsbWU8Pg9Vs7uBI4E3iSWbtdhph0UWgJd0ogJQ/s5fGa', 1, '2020-11-17 10:25:56', '2020-11-17 10:25:56'),
(2, 'azerty23', 'azerty@123.com', '$2y$10$PooIy9F52SUL6GjWpWKW9OihJi67ieXN8O4ICVGZUvNSGG3dJYG82', 2, '2020-11-17 10:26:48', '2020-11-17 10:26:48'),
(3, 'superman29', 'proutman@zizi2.com', '$2y$10$QhaMmJuQ4WNRZjpB9lK9ZuqzH7d.CMSSSKOqR/wEVMbkpTLXMxhqS', 2, '2020-11-25 09:15:54', '2020-11-25 09:15:54'),
(4, 'connard', 'cabugpas@gmail.com', '$2y$10$5VChtLQYSHuDCRDK68k0pe2w6d7EAIJ0M3WDhLNUoRytL6mPhOzLu', 2, '2020-12-08 13:41:00', '2020-12-08 13:41:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `innodb_large_prefixcommentaires`
--
ALTER TABLE `innodb_large_prefixcommentaires`
  ADD CONSTRAINT `innodb_large_prefixcommentaires_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `innodb_large_prefixposts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `innodb_large_prefixcommentaires_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `innodb_large_prefixusers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `innodb_large_prefixgenre_film_serie`
--
ALTER TABLE `innodb_large_prefixgenre_film_serie`
  ADD CONSTRAINT `innodb_large_prefixgenre_film_serie_film_serie_id_foreign` FOREIGN KEY (`film_serie_id`) REFERENCES `innodb_large_prefixfilm_series` (`id`),
  ADD CONSTRAINT `innodb_large_prefixgenre_film_serie_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `innodb_large_prefixgenres` (`id`);

--
-- Constraints for table `innodb_large_prefixnotifications`
--
ALTER TABLE `innodb_large_prefixnotifications`
  ADD CONSTRAINT `innodb_large_prefixnotifications_commentaire_id_foreign` FOREIGN KEY (`commentaire_id`) REFERENCES `innodb_large_prefixcommentaires` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `innodb_large_prefixnotifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `innodb_large_prefixusers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `innodb_large_prefixposts`
--
ALTER TABLE `innodb_large_prefixposts`
  ADD CONSTRAINT `innodb_large_prefixposts_film_serie_id_foreign` FOREIGN KEY (`film_serie_id`) REFERENCES `innodb_large_prefixfilm_series` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `innodb_large_prefixposts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `innodb_large_prefixusers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
