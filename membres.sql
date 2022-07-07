-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 07 juil. 2022 à 10:18
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
-- Base de données : `equipage`
--

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id_membre` int(11) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id_membre`, `name`) VALUES
(1, 'Eleftheria'),
(2, 'Gennadios'),
(3, 'Lysimachos'),
(4, 'Lucas'),
(5, 'hephaistos'),
(6, 'girson'),
(7, 'Eurytos'),
(8, 'Caen&eacute;e'),
(9, 'Ast&eacute;rios'),
(10, 'P&eacute;riclym&eacute;nos'),
(11, 'Adm&egrave;te'),
(12, 'Helios'),
(13, 'Iphitos'),
(14, 'Bout&egrave;s'),
(15, 'T&eacute;l&eacute;on'),
(16, 'Euph&eacute;mos'),
(17, 'Eurytos'),
(18, 'Herm&egrave;s'),
(19, 'Echion'),
(20, 'T&eacute;lamon'),
(21, 'Poeas'),
(22, 'Eribot&egrave;s'),
(23, 'Appolodore'),
(24, 'Lycurgue'),
(25, 'Pos&eacute;idon'),
(26, 'Carnac'),
(27, 'Granit&eacute;'),
(28, 'Appolombar'),
(29, 'Charalampos'),
(30, 'M&eacute;l&eacute;agre'),
(31, 'Thestios'),
(32, 'H&eacute;racl&egrave;s'),
(33, 'Hylas'),
(34, 'N&eacute;l&eacute;e'),
(35, 'Com&eacute;t&egrave;s'),
(36, 'Appolonios'),
(37, 'achille'),
(38, 'M&eacute;d&eacute;e'),
(39, 'P&eacute;lias'),
(40, 'Ath&eacute;na'),
(41, 'Argos'),
(42, 'Phrixos'),
(43, 'H&eacute;ra'),
(44, 'Tyro'),
(45, 'Tyro'),
(46, 'Ar&egrave;s'),
(47, 'Aeson'),
(48, 'Eole'),
(49, 'Pollux'),
(50, 'Aphrodite');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id_membre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id_membre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
