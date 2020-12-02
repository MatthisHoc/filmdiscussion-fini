-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2020 at 10:01 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innodb_large_prefixcommentaires`
--

INSERT INTO `innodb_large_prefixcommentaires` (`id`, `date`, `avis`, `post_id`, `user_id`) VALUES
(2, '2020-11-25', 'je suis d\'accord j\'ai adoré !', 4, 3);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innodb_large_prefixfilm_series`
--

INSERT INTO `innodb_large_prefixfilm_series` (`id`, `titre`, `date_sortie`, `type`, `nombreEpisode`, `duree`, `resume`, `production`, `affiche`, `notes`) VALUES
(2, 'John Wick: Chapitre 3 - Parabellum', '2019-05-09', 'film', NULL, 131, 'John Wick est désormais en cavale. Une prime de 14 millions de dollars a été mise sur sa tête car il a tué un membre de la Grande Table. De plus, l\'ayant fait dans les murs du Continental Hotel de New York, il se retrouve excommunié. John peut malgré tout compter sur l\'aide de Winston, le directeur du Continental, qui lui a laissé une heure avant d’être considéré comme banni. John va alors tout faire pour quitter la ville et échapper aux assassins qui le traquent.', 'Lionsgate, Thunder Road Pictures', 'affiches/dgTE94Y6DbrfKJtuZgIsAPhd9v9CdoYaf43FLuTA.webp', 5.00),
(3, 'The Boys', '2019-07-26', 'serie', 16, NULL, 'The Boys se déroule dans un univers uchronique où des personnages surpuissants sont reconnus comme des super-héros par le grand public et travaillent pour la puissante société Vought International, qui s\'occupe de leur promotion et de leur commercialisation. Bien loin de leur apparence héroïque, la plupart d\'entre-eux sont corrompus et arrogants, voire de dangereux psychopathes.\r\n\r\nLa série se concentre sur deux groupes: les Sept, la première équipe de super-héros de Vought, et les Boys éponymes, des justiciers cherchant à faire tomber Vought et ses super-héros corrompus.\r\n\r\nLes Boys sont dirigés par Billy Butcher, qui méprise tous les super-héros (qu\'il appelle Supes) et les Sept sont dirigés par le Protecteur (Homelander), un psychopathe narcissique et violent. Au début de la série, les Boys sont rejoints par Hughie Campbell après que le membre des Sept A-Train ait accidentellement tué sa petite amie Robin, tandis que les Sept sont rejoints par Annie January (Starlight/Stella), une jeune héroïne pleine d\'espoir et qui va devoir de faire face à la terrible vérité sur ceux qu\'elle admire tant.\r\n\r\nLes autres membres des Sept sont la reine désillusionnée Maeve, le toxicomane A-Train, le déséquilibré homme-poisson (The Deep), le mystérieux Black Noir et la suprémaciste Stormfront, non présente dans la première saison, mais personnage central de la suivante. Les Boys sont complétés par le tacticien La Crème (Mother\'s Milk), le spécialiste des armes Serge dit Le Français/Frenchie et Kimiko, la Fille (the Female) à qui on a injecté contre son gré le \"Composé V\" qui donne tous leurs pouvoirs aux Super-héros. Madelyn Stillwell, cadre de Vought, supervise les Sept, puis le Protecteur l\'assassine et la publiciste Ashley Barrett lui succède.\r\n\r\nLa première saison décrit le conflit entre les Boys et les Sept, motivé par Butcher, pensant que le Protecteur a causé la disparition de sa femme Becca. Alors que le Protecteur et Stillwell conspirent afin d\'obtenir le soutien du gouvernement pour les super-héros, les Boys tentent de les arrêter en découvrant les secrets inavouables de Vought. Hughie et Annie/Stella brouillent le conflit en tombant amoureux l\'un de l\'autre et en entamant une relation intime, malgré la méfiance de Butcher à leur égard.\r\n\r\nDans la deuxième saison, les Boys poursuivent leurs efforts pour vaincre Vought, aidés par Stella. Ils sont devenus des fugitifs recherchés par le gouvernement. Butcher apprend que Vought retient Becca en captivité avec un fils surpuissant dont le père n\'est autre que le Protecteur, qui l\'a violée. Alors que Butcher tente de sauver sa femme, Stormfront dont le passé nazi est révélé, promeut son message de suprématie blanche auprès des Sept et du public, cherchant à faire en sorte que le Protecteur conduise les super-héros à la domination mondiale.', 'Amazon Studios', 'affiches/DMQlIcK0pEbSwCvfCzsFFuzhLdzGxFoCleHoAy5z.jpeg', NULL),
(4, 'Shutter Island', '2010-02-24', 'film', NULL, 130, 'En 1954, le marshal Teddy Daniels et son coéquipier Chuck Aule sont envoyés enquêter sur l\'île de Shutter Island, dans un hôpital psychiatrique où sont internés de dangereux criminels. L\'une des patientes, Rachel Solando, a inexplicablement disparu. Comment la meurtrière a-t-elle pu sortir d\'une cellule fermée de l\'extérieur ? Le seul indice retrouvé dans la pièce est une feuille de papier sur laquelle on peut lire une suite de chiffres et de lettres sans signification apparente. Oeuvre cohérente d\'une malade, ou cryptogramme ?', 'Paramount Pictures', 'affiches/eYu6RyAjMqkTp93r8kr0b281PWr1ocZGAMNZb3bL.jpeg', 3.50),
(5, 'American Psycho', '2000-06-07', 'film', NULL, 101, 'Patrick Bateman, 27 ans, flamboyant golden-boy du Wall Street d\'avant le krach d\'octobre 1987, est beau, riche et intelligent, comme tous ses amis. Il fréquente les restaurants les plus chics, où il est impossible d\'obtenir une réservation si l\'on n\'est pas quelqu\'un, va dans les boîtes branchées et sniffe de temps en temps un rail de coke, comme tout bon yuppie.\r\n\r\nMais Patrick a une petite particularité : c\'est un psychopathe. À l\'abri dans son appartement hors de prix, au milieu de ses gadgets dernier cri et de ses meubles en matériaux précieux, il tue, décapite, égorge, viole. Sa haine des pauvres, des homosexuels et des femmes est illimitée, et son humour froid est la seule trace d\'humanité que l\'on puisse lui trouver.', 'Edward R. Pressman Productions, Muse Productions', 'affiches/FgrKqNQWuNnTFuLhayVde8JjIxJ8fcap79vJRtqf.jpeg', NULL),
(6, 'GTO: Great Teacher Onizuka', '1999-01-01', 'serie', 43, NULL, '1997, Eikichi Onizuka, 22 ans, « célibataire et libre comme l\'air », est un jeune professeur au passé douteux qui est nommé pour son premier poste dans une classe difficile ; il montre rapidement une vision de l\'enseignement totalement décalée avec les pratiques habituelles. Ses réactions anticonformistes et directes, souvent humoristiques, sont l\'axe central de cette série. Il va évoluer avec cette classe, dont la spécialité est de faire craquer moralement leurs professeurs, en tentant de la rallier peu à peu à sa cause.', 'Studio Pierrot', 'affiches/fme3DDiJjQmF8CzNf5FbFCEJHEptDdIteAz3KfZS.jpeg', NULL),
(7, 'Once Upon A Time... In Hollywood', '2019-07-24', 'film', NULL, 161, '1969, à Hollywood. Le mouvement hippie est à son apogée et se manifeste massivement contre la guerre du Viêt Nam, toujours en cours. Richard Nixon est élu nouveau président des États-Unis, succédant à Lyndon B. Johnson, tandis que les émeutes de Stonewall débouchent sur le militantisme homosexuel.\r\n\r\nUne année charnière dans l\'histoire des États-Unis, également bouleversée par l\'avènement du « Nouvel Hollywood », un mouvement cinématographique qui enterre le cinéma classique hollywoodien, dit le « Vieil Hollywood », et s\'illustre par la prise de pouvoir des réalisateurs au sein des grands studios américains et la représentation radicale de thèmes jusqu\'alors tabous et interdits par le code Hays comme la violence, la sexualité, etc.\r\n\r\nRick Dalton — star déclinante d\'une série télévisée de western — et Cliff Booth — sa doublure de toujours — assistent à la métamorphose artistique d\'un Hollywood qu\'ils ne reconnaissent plus du tout en essayant de relancer leurs carrières. De plus, en plein été, le 9 août, Hollywood sera à jamais marqué par un fait divers barbare : l\'assassinat de l\'actrice Sharon Tate enceinte de huit mois, par les disciples du gourou Charles Manson. Les époux franco-polonais Polanski, et leurs amis, sont montrés habitant une maison voisine de celle de Rick Dalton sur Cielo Drive. Outre le couple Polanski, les personnages du film vont croiser d\'autres personnalités réelles, comme Steve McQueen, Bruce Lee ou Michelle Phillips et Cass Elliot. Quant à Sharon Tate, sera-t-elle réellement assassinée avec ses amis dans sa demeure voisine de celle de Rick Dalton, par les adeptes de la famille Manson ?', 'Columbia Pictures', 'affiches/kzApomVhvvAcsrr74fFmAfCFaNoDdb5s2Y8CDki3.webp', NULL),
(8, 'Cars', '2006-06-14', 'film', NULL, 116, 'Flash McQueen, jeune véhicule de course avide de succès, rêve d’être le premier rookie de l\'histoire de la compétition automobile à remporter la fameuse Piston Cup, afin d’intégrer l\'écurie Dinoco et de devenir célèbre.', 'Pixar', 'affiches/NYuMyjgirauifCBhpEFH4xcmLEO1x4SEO1Z0woas.jpeg', NULL),
(9, 'Halloween', '2018-10-17', 'film', NULL, 106, 'Une équipe de podcasteurs britanniques se rend aux États-Unis pour réaliser un reportage sur le massacre perpétré par le psychopathe Michael Myers lors de la nuit d\'Halloween en 1978. Le reportage prend soudain une tournure macabre lorsque Myers parvient à s\'évader lors d\'un transfert vers un nouvel asile psychiatrique1. Sa seule préoccupation est de se venger de Laurie Strode, la survivante du massacre. Après le traumatisme qu\'elle a vécu il y a quarante ans, Laurie se prépare au retour de Michael Myers, négligeant ainsi sa fille, Karen, et sa petite-fille, Allyson, dans le but d\'affronter une ultime fois le désormais célèbre tueur d\'Halloween.', 'Blumhouse Productions, Miramax, Rough House Pictures, Trancas International Films', 'affiches/BPMNTkbpmirrfqCqZlpMrrb3iQFDHotWEA66tlaB.webp', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innodb_large_prefixnotifications`
--

INSERT INTO `innodb_large_prefixnotifications` (`id`, `titre`, `contenu`, `lu`, `type`, `user_id`, `commentaire_id`) VALUES
(3, 'Un administrateur a supprimé l\'un de vos messages', 'Réalisation et casting au poil. On ne s\'ennuie jamais et la créativité des chorégraphies nous laisse sans voix pendant deux heures.', 1, 'suppression', 2, NULL),
(6, 'Un administrateur a supprimé l\'un de vos messages', 'azerty', 0, 'suppression', 2, NULL),
(7, 'superman29 a commenté votre post!', '', 0, 'commentaire', 2, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innodb_large_prefixusers`
--

INSERT INTO `innodb_large_prefixusers` (`id`, `username`, `email`, `password`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'prout', 'proutman@zizi3.com', '$2y$10$pn4RpKysWRsbWU8Pg9Vs7uBI4E3iSWbtdhph0UWgJd0ogJQ/s5fGa', 1, '2020-11-17 10:25:56', '2020-11-17 10:25:56'),
(2, 'azerty23', 'azerty@123.com', '$2y$10$PooIy9F52SUL6GjWpWKW9OihJi67ieXN8O4ICVGZUvNSGG3dJYG82', 2, '2020-11-17 10:26:48', '2020-11-17 10:26:48'),
(3, 'superman29', 'proutman@zizi2.com', '$2y$10$QhaMmJuQ4WNRZjpB9lK9ZuqzH7d.CMSSSKOqR/wEVMbkpTLXMxhqS', 2, '2020-11-25 09:15:54', '2020-11-25 09:15:54');

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
