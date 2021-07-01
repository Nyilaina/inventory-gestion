-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 29 juin 2021 à 05:29
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `inventorygestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(255) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `prix_unitaire` varchar(255) NOT NULL,
  `idfournisseur` int(255) NOT NULL,
  `nombre` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `nom`, `description`, `prix_unitaire`, `idfournisseur`, `nombre`) VALUES
(0, 'Mofogasy', 'Mofo sakafon\'ny malagasy', '100', 0, 0),
(3, 'Ramanonaka', 'Mofo sira toplÃ©Ã©', '100', 2, 200),
(2, 'Menakely be de be', 'Mofo lafo vidy', '2000', 0, 502);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `nom`, `adresse`, `reference`, `description`) VALUES
(0, 'Couil', 'Sab Nam', '018', 'Mpanamboatra mofogasy'),
(1, 'Nampoina', 'Ampasampito', '017', 'Bandy mpanao ramanonaka'),
(2, 'Aina', 'Ant Rev', '016', 'Mpanao mofo menakely');

-- --------------------------------------------------------

--
-- Structure de la table `groupement`
--

DROP TABLE IF EXISTS `groupement`;
CREATE TABLE IF NOT EXISTS `groupement` (
  `id` int(255) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `nombre_article` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `groupement`
--

INSERT INTO `groupement` (`id`, `nom`, `description`, `nombre_article`) VALUES
(0, 'Paquet', 'Un petit assemblement d\'unitï¿½ d\'article', 10),
(1, 'Carton', 'Un regroupement moyen d\'unitï¿½ d\'article', 50),
(2, 'Box', 'Un gros lot d\'unité d\'article', 600),
(3, 'Conteneur', 'Une gigantesque lot d\'unité d\'article', 1690);

-- --------------------------------------------------------

--
-- Structure de la table `liaisonarticlegrpt`
--

DROP TABLE IF EXISTS `liaisonarticlegrpt`;
CREATE TABLE IF NOT EXISTS `liaisonarticlegrpt` (
  `id` int(255) NOT NULL,
  `idarticle` int(255) NOT NULL,
  `idgroupement` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `liaisonarticlegrpt`
--

INSERT INTO `liaisonarticlegrpt` (`id`, `idarticle`, `idgroupement`) VALUES
(13, 4, 3),
(10, 0, 0),
(9, 0, 1),
(8, 0, 2),
(4, 1, 0),
(5, 1, 1),
(14, 4, 2),
(12, 3, 0),
(11, 3, 1),
(6, 2, 0),
(17, 7, 2),
(16, 7, 3),
(15, 6, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
