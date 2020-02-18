-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 18 Février 2020 à 15:08
-- Version du serveur :  5.7.11
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

CREATE TABLE `utilisateur` (
  `pseudo` varchar(25) COLLATE utf8_bin NOT NULL,
  `email` varchar(75) COLLATE utf8_bin NOT NULL,
  `mdp` varchar(300) COLLATE utf8_bin NOT NULL COMMENT 'mot de passe'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`pseudo`, `email`, `mdp`) VALUES
('2Foley', 'bolandit@ipsumdolorsit.com', 'WGU69PUV3QM'),
('Ayala', 'ultricies.dignissim.lacus@nuncid.co.uk', 'QUK34BRO2UW'),
('Berger', 'sit.amet.consectetuer@sed.org', 'IUX66AGR0LH'),
('Black', 'Donec@tristique.net', 'XXA77SDS9VI'),
('Chavez', 'metus@Aeneaneget.edu', 'XBJ09VTG5RR'),
('Deleon', 'orci.lobortis.augue@liberonec.net', 'DBM44RDU0IU'),
('Delgado', 'Nam.ligula.elit@vitae.edu', 'ABG67TXI1EH'),
('Dunn', 'fermentum.risus.at@Nullafacilisis.edu', 'IJA78TZN7NY'),
('FaBerger', 'sit.adzdzmet.consectetuer@sed.org', 'IUX66AGR0LH'),
('Foley', 'blandit@ipsumdolorsit.com', 'WGU69PUV3QM'),
('Gonzales', 'cursus.luctus.ipsum@Proin.net', 'EGH57LMN0DF'),
('Greer', 'vulputate.ullamcorper.magna@tristique.net', 'YIJ63KYG3IC'),
('Greer4', 'ovulputate.ullamcorper.magna@tristique.net', 'YIJ63KYG3IC'),
('Horn', 'sem@Vestibulumut.com', 'YGD41CJU5JI'),
('Jean', 'JB@gmail.com', 'test'),
('Langley', 'orci.Ut@blandit.org', 'JOH07KVA3AW'),
('Lyons', 'Donec.consectetuer@Nunc.com', 'RFY60CQO1IF'),
('Macdonald', 'ornare.tortor.at@molestieSedid.ca', 'AFN82CNI1EU'),
('Macdozenald', 'ornare.tortor.at@modzadzalestieSedid.ca', 'AFN82CNI1EU'),
('Meyers', 'arcu.Curabitur@turpisegestasAliquam.co.uk', 'LCG94LXB0KL'),
('Meyers1', 'arcu.Curabsdsitur@turpisegestasAliquam.co.uk', 'LCG94LXB0KL'),
('Michael', 'amet@ipsumDonec.edu', 'BQM57VEG2FH'),
('Mo2ss', 'lorpem.ac@ornareplaceratorci.com', 'LWC93YWI9YY'),
('Monroe', 'aliquet.molestie.tellus@quam.co.uk', 'WNT14TRH3AW'),
('Moss', 'lorem.ac@ornareplaceratorci.com', 'LWC93YWI9YY'),
('Odonnell', 'Cum@temporbibendum.org', 'GEM36WEU0UK'),
('Perez', 'imperdiet.ullamcorper.Duis@aneque.org', 'BRW67VEV3XB'),
('Phelps', 'eleifend.vitae@auctorquis.co.uk', 'XCL93ICR3CW'),
('Phillips', 'vel.turpis@Loremipsumdolor.co.uk', 'ZDV76XCZ0BA'),
('Rivas', 'libero.et@ullamcorperviverraMaecenas.edu', 'AFL70JND0SL'),
('Rivers', 'vulputate.risus@vehicula.edu', 'WIW02BRQ9TX'),
('Rivers2', 'vulputatdqzzde.risus@vehicula.edu', 'WIW02BRQ9TX'),
('Roy', 'elit.pretium.et@eratinconsectetuer.org', 'VAW31HLN6UT'),
('Sanders', 'Aliquam.gravida.mauris@Suspendissecommodo.net', 'XMO02PBA1SR'),
('Sandersa', 'Aliquam.grdzaavida.mauris@Suspendissecommodo.net', 'XMO02PBA1SR'),
('Sell4ers', 'nec.metus.dzdzqfacilisis@tristiquepellentesquetellus.net', 'NSB49TMJ9QT'),
('Sellers', 'nec.metus.facilisis@tristiquepellentesquetellus.net', 'NSB49TMJ9QT'),
('Walls', 'dis.parturient@tellusNunc.org', 'BYM96OUX2XV'),
('Watts', 'Mauris@vulputateposuere.edu', 'IQF39VCM5US'),
('Watts1', 'Maurazdis@vulputateposuere.edu', 'IQF39VCM5US'),
('Wong', 'enim.diam.vel@Aeneaneuismod.edu', 'TFT78PRK2OT');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`pseudo`),
  ADD UNIQUE KEY `email` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
