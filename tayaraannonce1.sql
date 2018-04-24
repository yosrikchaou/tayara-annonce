-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 24 Avril 2018 à 09:29
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tayaraannonce1`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE `annonce` (
  `id` int(11) NOT NULL,
  `Region` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Ville` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Prix` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `Date` datetime NOT NULL,
  `Kelometrage` int(11) DEFAULT NULL,
  `Anne` int(11) DEFAULT NULL,
  `Chambre` int(11) DEFAULT NULL,
  `Superficie` int(11) DEFAULT NULL,
  `Transaction` int(11) DEFAULT NULL,
  `Valide` int(11) DEFAULT NULL,
  `marque_id` int(11) DEFAULT NULL,
  `Model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `annonce`
--

INSERT INTO `annonce` (`id`, `Region`, `Ville`, `Titre`, `Description`, `Prix`, `image`, `categorie_id`, `user_id`, `Date`, `Kelometrage`, `Anne`, `Chambre`, `Superficie`, `Transaction`, `Valide`, `marque_id`, `Model`) VALUES
(9, 'nabeul', 'korba', 'voiture', 'belle voiture en bon etat tous est d\'origine', '43000', '348855172bbad0a1a3038873b69be395.jpeg', 1, 1, '2018-03-27 16:35:03', 120000, 2014, NULL, NULL, NULL, 2, NULL, ''),
(17, 'sousse', 'sahloul', 'appartement', 'un appartement prés d\'hopital sahloul bien equipé avec 2 salle de bain\r\nprix negociable', '1500000', '6309682c7b0f0b26e776319285e09121.jpeg', 2, 2, '2018-03-27 17:58:21', NULL, NULL, 3, 200, NULL, 2, NULL, ''),
(18, 'Tunis', 'gamarth', 'villa 500m²', 'villa vue sur mer bien équipé', '750000', '58820ee27699f438cdab6a269a9cf50e.jpeg', 2, 1, '2018-03-28 15:15:16', 1, NULL, 6, 500, NULL, 2, NULL, ''),
(26, 'nabeul', 'korba', 'Golf 7', 'voiture neuf', '52000', 'b7038f34b9b87646f3551bc3cf00ee23.jpeg', 1, 7, '2018-03-31 23:55:56', 1, 2016, NULL, NULL, 1, 2, NULL, ''),
(36, 'aa', 'aa', 'aa', 'aa', 'aa', '2d353b4d79da5c2905939857d84f1ccd.jpeg', 1, 7, '2018-04-15 21:59:15', 1, NULL, NULL, NULL, 1, 1, 1, NULL),
(37, 'aaaaa', 'zze', 'z', 'zs', 'ezd', 'f07fa4e4691c75513f2b365562ef82f3.jpeg', 1, 7, '2018-04-22 20:19:42', 1, NULL, NULL, NULL, 1, 1, 1, 'serie5'),
(38, 'ed', 'ze', 'rzef', 'erf', 'ef', '5d471b2990b622b7567259b6fa2d0d92.jpeg', 1, 7, '2018-04-22 22:17:15', 1, NULL, NULL, NULL, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `app_user`
--

CREATE TABLE `app_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `app_user`
--

INSERT INTO `app_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'yosri', 'yosri', 'yosri@yahoo.fr', 'yosri@yahoo.fr', 1, NULL, '$2y$13$E1fzzzzS6QJGa4o7jBc1xeEtGhD.JfzLsPaVhzL9LCXf7U4VPOJc2', '2018-03-30 00:14:22', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_UTILISATEUR";}'),
(2, 'aa', 'aa', 'yo@yhoo.fr', 'yo@yhoo.fr', 1, NULL, '$2y$13$unn76gxLvQ33eK.O1O7BpOcTwRbLUzMDyLtDwG85PMhYpEDBTrZ6S', '2018-03-27 16:37:18', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_UTILISATEUR;}'),
(3, 'Admine', 'admine', 'admine@yahoo.fr', 'admine@yahoo.fr', 1, NULL, '$2y$13$bdWus.2gSRwDLszxy6nFb.x/O36lN3iF5IhPTIfWpqFZkfzKHKWYu', '2018-04-12 13:55:16', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}'),
(7, 'Yosri Kchaou', 'yosri kchaou', 'kchaouyosri@gmail.com', 'kchaouyosri@gmail.com', 1, NULL, '$2y$13$7chdi1xSF5omPiZEC0T06OP5l1oJEJ/orEhq.JVdGs4STtoRCEeUC', '2018-04-24 09:26:20', NULL, NULL, 'a:1:{i:0;s:16:"ROLE_UTILISATEUR";}');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `Nom`) VALUES
(1, 'vehicules'),
(2, 'immobilier');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `marque`
--

INSERT INTO `marque` (`id`, `Nom`) VALUES
(1, 'BMW'),
(2, 'Renault\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `marque_id` int(11) DEFAULT NULL,
  `Nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `model`
--

INSERT INTO `model` (`id`, `marque_id`, `Nom`) VALUES
(1, 1, 'x6'),
(2, 1, 'serie1'),
(3, 1, 'serie2'),
(4, 1, 'serie5'),
(5, 2, 'Clio');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F65593E5BCF5E72D` (`categorie_id`),
  ADD KEY `IDX_F65593E5A76ED395` (`user_id`),
  ADD KEY `IDX_F65593E54827B9B2` (`marque_id`);

--
-- Index pour la table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_88BDF3E992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_88BDF3E9A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_88BDF3E9C05FB297` (`confirmation_token`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D79572D94827B9B2` (`marque_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `annonce`
--
ALTER TABLE `annonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD CONSTRAINT `FK_F65593E54827B9B2` FOREIGN KEY (`marque_id`) REFERENCES `marque` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F65593E5A76ED395` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F65593E5BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `FK_D79572D94827B9B2` FOREIGN KEY (`marque_id`) REFERENCES `marque` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
