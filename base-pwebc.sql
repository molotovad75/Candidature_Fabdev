-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 19 fév. 2020 à 14:07
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
('2Foley', 'bolandit@ipsumdolorsit.com', 'WGU69PUV3QM', 0),
('Ayala', 'ultricies.dignissim.lacus@nuncid.co.uk', 'QUK34BRO2UW', 0),
('Berger', 'sit.amet.consectetuer@sed.org', 'IUX66AGR0LH', 0),
('Black', 'Donec@tristique.net', 'XXA77SDS9VI', 0),
('Chavez', 'metus@Aeneaneget.edu', 'XBJ09VTG5RR', 0),
('Deleon', 'orci.lobortis.augue@liberonec.net', 'DBM44RDU0IU', 0),
('Delgado', 'Nam.ligula.elit@vitae.edu', 'ABG67TXI1EH', 0),
('Dunn', 'fermentum.risus.at@Nullafacilisis.edu', 'IJA78TZN7NY', 0),
('FaBerger', 'sit.adzdzmet.consectetuer@sed.org', 'IUX66AGR0LH', 0),
('Foley', 'blandit@ipsumdolorsit.com', 'WGU69PUV3QM', 0),
('Gonzales', 'cursus.luctus.ipsum@Proin.net', 'EGH57LMN0DF', 0),
('Greer', 'vulputate.ullamcorper.magna@tristique.net', 'YIJ63KYG3IC', 0),
('Greer4', 'ovulputate.ullamcorper.magna@tristique.net', 'YIJ63KYG3IC', 0),
('Horn', 'sem@Vestibulumut.com', 'YGD41CJU5JI', 0),
('Jean', 'JB@gmail.com', 'test', 0),
('Langley', 'orci.Ut@blandit.org', 'JOH07KVA3AW', 0),
('Lyons', 'Donec.consectetuer@Nunc.com', 'RFY60CQO1IF', 0),
('Macdonald', 'ornare.tortor.at@molestieSedid.ca', 'AFN82CNI1EU', 0),
('Macdozenald', 'ornare.tortor.at@modzadzalestieSedid.ca', 'AFN82CNI1EU', 0),
('Meyers', 'arcu.Curabitur@turpisegestasAliquam.co.uk', 'LCG94LXB0KL', 0),
('Meyers1', 'arcu.Curabsdsitur@turpisegestasAliquam.co.uk', 'LCG94LXB0KL', 0),
('Michael', 'amet@ipsumDonec.edu', 'BQM57VEG2FH', 0),
('Mo2ss', 'lorpem.ac@ornareplaceratorci.com', 'LWC93YWI9YY', 0),
('Monroe', 'aliquet.molestie.tellus@quam.co.uk', 'WNT14TRH3AW', 0),
('Moss', 'lorem.ac@ornareplaceratorci.com', 'LWC93YWI9YY', 0),
('hey', 'hey@gmail.com', '$2y$10$4ZIdC0dD8QHXxae2nsfSF.RrVVDkHJTyXM7ZBH3g5RB4udB/kNutq', 0),
('kery', 'kery@gmail.com', '$2y$10$OTd8wQMtfhbStzzJpEuRJOL2NbXCxBhhwvat0G5C2TAtO8JZniq8W', 0),
('test', 'malloga@hotmail.fr', '$2y$10$IkzoKYjjO8ZSf0GFWsKol.tDPvSCvvrxtXvgQQ00XKQuiFUAbpzNW', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
