-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 05 fév. 2022 à 02:34
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `shareloc`
--

-- --------------------------------------------------------

--
-- Structure de la table `collocation`
--

CREATE TABLE `collocation` (
  `idCollocation` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `idUser` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `collocation`
--

INSERT INTO `collocation` (`idCollocation`, `name`, `idUser`) VALUES
(1, 'skiski', 1),
(2, 'skiski', 11),
(3, 'collocationOumaima', 11);

-- --------------------------------------------------------

--
-- Structure de la table `collocation_service`
--

CREATE TABLE `collocation_service` (
  `collocationName` varchar(255) DEFAULT NULL,
  `serviceName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `idservice` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cost` int(255) NOT NULL,
  `idcollocation` int(255) DEFAULT NULL,
  `admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`idservice`, `title`, `description`, `cost`, `idcollocation`, `admin`) VALUES
(1, 'Menage', 'faire la vaisselle et laver le linge', 15, 3, '11');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `score` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`iduser`, `email`, `password`, `firstname`, `lastname`, `score`, `token`) VALUES
(1, 'oumaima.chtioui@uha.fr', 'oumaima', 'chtioui', 'oumaima', 0000000000, '0'),
(2, 'Zeineb@uha.fr', 'oumaima', 'chtioui', 'oumaima', 0000000000, '0'),
(3, 'Zeineb@uha.fr', 'oumaima', 'chtioui', 'oumaima', 0000000000, '0'),
(4, 'Zeineb@uha.fr', 'oumaima', 'chtioui', 'oumaima', 0000000000, '0'),
(5, 'o', 'o', 'o', 'o', 0000000000, '0'),
(6, 'zdhpi', 'dzpihzd', 'zidh', 'ouzdg', 0000000000, '0'),
(7, 'zid', 'zdni', 'kzdjz', 'oumaimaa', 0000000000, '0'),
(8, 'jj', 'jj', 'jj', 'jj', 0000000000, '0'),
(9, 'eosj', 'ed,oj', 'zpdj', 'azrour', 0000000000, '0'),
(10, 'ZDCSZ', 'KZC.M', 'KZCDC', 'ZSMKZ', 0000000000, '0'),
(11, 'test@', 'test', 'test', 'test', 0000000000, 'UNZWNP5RNCl4u4BXRD5SHuosdTMsMeYu'),
(12, 'oumaimazeine@gmail.com', '123', 'Oumaima', 'chtioui', 0000000000, 'U1cGbhsGZb9Eya9ncZGOIyq7fXmyiKet');

-- --------------------------------------------------------

--
-- Structure de la table `user_collocation`
--

CREATE TABLE `user_collocation` (
  `CollocationName` varchar(255) NOT NULL,
  `Username` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `collocation`
--
ALTER TABLE `collocation`
  ADD PRIMARY KEY (`idCollocation`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`idservice`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `iduser_UNIQUE` (`iduser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `collocation`
--
ALTER TABLE `collocation`
  MODIFY `idCollocation` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `idservice` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
