-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 26 fév. 2020 à 18:58
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `base-pwebc`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `pseudo` varchar(25) COLLATE utf8_bin NOT NULL,
  `email` varchar(75) COLLATE utf8_bin NOT NULL,
  `mdp` varchar(300) COLLATE utf8_bin NOT NULL COMMENT 'mot de passe',
  `bConnect` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`pseudo`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`pseudo`, `email`, `mdp`, `bConnect`) VALUES
('test', 'malloga@hotmail.fr', '$2y$10$IkzoKYjjO8ZSf0GFWsKol.tDPvSCvvrxtXvgQQ00XKQuiFUAbpzNW', 0),
('test2', 'test2@gmail.com', '$2y$10$RMqBtrg966M.chWAe/Hbje/DqA6ne6m/VlFU.8ho7R6mCLw3y3Y86', 1),
('test3', 'test3@gmail.com', '$2y$10$SsS98BgHH0Ira922tjCtoOaIbABVfI6I9tOEr7GREnPYBZpI2yk5i', 0),
('test5', 'test5@gmail.com', '$2y$10$SghX4MRBuLfuFJER60qYy.1DkUyAcVAjxQPtIXfxH3Y0.it1CzQT.', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
