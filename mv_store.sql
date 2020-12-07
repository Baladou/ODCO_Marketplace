-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 10 mai 2020 à 23:45
-- Version du serveur :  10.1.32-MariaDB
-- Version de PHP :  5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mv_store`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `phone`, `password`, `role`, `photo`, `created_at`, `updated_at`, `remember_token`, `status`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '000 000 000', '$2y$10$DozM30vRGMY9aDIh2EKxROmvuJRtBMimO2ox/rF8uXjMBYBjLvVRe', 'Administrator', '1510211044icon.jpg', '2017-01-24 03:21:40', '2017-12-07 13:44:10', 'MWHY4RXc8OPoVnpDxFIHNXgyU5PNND7pWORxCSzUNUZSSGUIkO4EKe6WHQAf', 1),
(2, 'S Zaman', 'genius', 'genius@gmail.com', '000 000 000', '$2y$10$DozM30vRGMY9aDIh2EKxROmvuJRtBMimO2ox/rF8uXjMBYBjLvVRe', 'Administrator', '11822730_1619598781649385_5506560502405630990_n.jpg', '2017-01-27 22:35:17', '2017-03-06 11:02:08', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `type` enum('script','banner') NOT NULL,
  `advertiser_name` varchar(255) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `banner_size` varchar(255) NOT NULL,
  `banner_file` varchar(255) DEFAULT NULL,
  `script` text,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` mediumtext COLLATE utf8_unicode_ci,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `details`, `featured_image`, `source`, `views`, `created_at`, `updated_at`, `status`) VALUES
(1, 'MarketPlace Blog 1', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.</p><h3 style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(51, 51, 51); margin: 0px 0px 15px; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">How its Works ?</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.</p><p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s</p><h3 style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(51, 51, 51); margin: 0px 0px 15px; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Top 5 reason to choose us</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', 'VL5859ZTd.jpg', 'sssssssssssssss', 45, '2017-09-21 20:56:42', '2020-05-09 02:30:28', 1),
(2, 'MarketPlace Blog 2', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.</p><h3 style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(51, 51, 51); margin: 0px 0px 15px; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">How its Works ?</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.</p><p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s</p><h3 style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(51, 51, 51); margin: 0px 0px 15px; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Top 5 reason to choose us</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', 'VL5859ZTd.jpg', 'sssssssssssssss', 37, '2017-09-21 20:56:42', '2020-05-09 02:30:42', 1),
(3, 'MarketPlace Blog 3', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.</p><h3 style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(51, 51, 51); margin: 0px 0px 15px; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">How its Works ?</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.</p><p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s</p><h3 style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(51, 51, 51); margin: 0px 0px 15px; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Top 5 reason to choose us</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', 'VL5859ZTd.jpg', 'sssssssssssssss', 35, '2017-09-21 20:56:42', '2020-05-09 02:30:55', 1),
(4, 'MarketPlace Blog 4', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.</p><h3 style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(51, 51, 51); margin: 0px 0px 15px; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">How its Works ?</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.</p><p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s</p><h3 style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-weight: 700; line-height: 1.1; color: rgb(51, 51, 51); margin: 0px 0px 15px; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Top 5 reason to choose us</h3><p style=\"box-sizing: border-box; margin: 0px 0px 20px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', 'VL5859ZTd.jpg', 'sssssssssssssss', 41, '2017-09-21 20:56:42', '2020-05-09 02:31:21', 1);

-- --------------------------------------------------------

--
-- Structure de la table `brand_banner`
--

CREATE TABLE `brand_banner` (
  `id` int(11) NOT NULL,
  `type` enum('brand','banner') NOT NULL DEFAULT 'brand',
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `brand_banner`
--

INSERT INTO `brand_banner` (`id`, `type`, `image`, `link`, `status`) VALUES
(5, 'banner', '1588951231prodd.jpg', 'CoopMaroc.ma', 1),
(7, 'banner', '1588951251tagines.jpg', 'https://www.facebook.com/', 1),
(8, 'banner', '1588951273tapis.jpg', 'https://www.facebook.com/', 1);

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uniqueid` varchar(255) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `cost` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `uniqueid`, `product`, `title`, `quantity`, `size`, `cost`) VALUES
(3, 'ReGPgkX', 26, 'Product Name Here', 1, NULL, 211),
(4, 'KodDGVQ', 22, 'Tesing Project', 1, NULL, 23.8),
(7, 'v0aWiDC', 26, 'Product Name Here', 1, NULL, 211),
(12, 'ipq4pHX', 28, 'Huile d\'amande', 11, NULL, 1177),
(13, 'mxjJ3P3', 37, 'Huile d\'argan bio non torrifiée certifié ECOCERT', 1, NULL, 200);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `mainid` int(11) DEFAULT NULL,
  `subid` int(11) DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 NOT NULL,
  `feature_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `mainid`, `subid`, `role`, `name`, `slug`, `feature_image`, `featured`, `status`) VALUES
(36, NULL, NULL, 'main', 'Artisanat', 'artisanat', '1588892338khyata.jpg', 1, 1),
(37, NULL, NULL, 'main', 'Denrées alimentaires', 'aliment', '1588892346Bellot.jpg', 1, 1),
(38, 37, NULL, 'sub', 'Grains', 'grains', '1588892376couscous.jpg', 1, 1),
(40, NULL, NULL, 'main', 'Vêtements', 'vêtements', '1589066414جلابة_صور اللباس التقليدي_لباس مغربي_قفطان بلادي_أجمل الصور _djellaba marocain.jpg', 0, 1),
(41, 40, NULL, 'sub', 'Hommes', 'hommes', NULL, 0, 1),
(42, 40, NULL, 'sub', 'Femmes', 'femmes', NULL, 0, 1),
(43, 40, 41, 'child', 'Jellaba', 'jellaba', NULL, 0, 1),
(44, 40, 42, 'child', 'Jellaba', 'jellabaf', NULL, 0, 1),
(45, 40, 42, 'child', 'Caftan', 'caftan', NULL, 0, 1),
(47, NULL, NULL, 'main', 'Beauté', 'Beauté', '15891251371589065888a.jpg', 1, 1),
(48, 47, NULL, 'sub', 'Huiles essentielles', 'huess', '15891251471589065444ac7be14b0342c4eb06c6a86b2ca79fda-1506339187.jpg', 1, 1),
(49, 47, NULL, 'sub', 'Crémes', 'Crèmes', '15891251641589065396creme.jpg', 1, 1),
(50, 47, NULL, 'sub', 'Laits', 'Laits', '1589065761lai.jpg', 0, 1),
(51, 47, NULL, 'sub', 'Savon Bio', 'savon', '1589065836savons-bio-naturels-2-267x159.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `code_scripts`
--

CREATE TABLE `code_scripts` (
  `id` int(11) NOT NULL,
  `google_analytics` text NOT NULL,
  `meta_keys` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `code_scripts`
--

INSERT INTO `code_scripts` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>\r\n   //Google Analytics Scriptfffffffffffffffffffffffssssfffffs\r\n</script>', 'Coopérative, Shop,Marketplace, promotion, chaussures, homme, femme, fashion, huiles, crèmes,traditionnelle');

-- --------------------------------------------------------

--
-- Structure de la table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `counter`
--

INSERT INTO `counter` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'browser', 'Windows 10', 174, 0, NULL),
(2, 'browser', 'Windows 7', 19, 0, NULL),
(3, 'browser', 'Android', 3, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`) VALUES
(1, 'First FAQ Question?', '<span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the <br></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the <br></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the </span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the <br><br></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the </span><br><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span>', 1),
(2, 'First FAQ Question 2?', 'In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br>', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` int(11) NOT NULL,
  `orderid` varchar(255) DEFAULT NULL,
  `owner` enum('vendor','admin') DEFAULT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `payment` varchar(255) NOT NULL DEFAULT 'completed',
  `paid` enum('yes','no') NOT NULL DEFAULT 'no',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','processing','completed') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ordered_products`
--

INSERT INTO `ordered_products` (`id`, `orderid`, `owner`, `vendorid`, `productid`, `quantity`, `cost`, `size`, `payment`, `paid`, `created_at`, `updated_at`, `status`) VALUES
(29, '23', 'vendor', 12, 36, 1, 60, '', 'completed', 'no', '2020-05-10 18:13:16', '2020-05-10 18:41:11', 'processing'),
(30, '24', 'vendor', 16, 44, 1, 70, '', 'completed', 'no', '2020-05-10 19:35:57', '2020-05-10 19:35:57', 'pending'),
(31, '24', 'vendor', 16, 45, 1, 25, '', 'completed', 'no', '2020-05-10 19:36:00', '2020-05-10 19:36:00', 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `products` varchar(255) DEFAULT NULL,
  `quantities` varchar(255) DEFAULT NULL,
  `sizes` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `shipping` varchar(255) DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `booking_date` datetime DEFAULT NULL,
  `status` enum('pending','processing','completed','declined') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `customerid`, `products`, `quantities`, `sizes`, `method`, `shipping`, `pickup_location`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `booking_date`, `status`) VALUES
(23, 4, '36', '1', NULL, 'Cash On Delivery', 'shipto', NULL, 60, NULL, NULL, 'Kvn51589134396', 'Completed', 'amine@gmail.com', 'Madani Amine', '0655784743', 'Avenue Allal Fassi, school housing INPT, AL - IRFANE . RABAT', 'RABAT', '10112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-10 18:13:16', 'pending'),
(24, 4, '44,45', '1,1', ',', 'Cash On Delivery', 'shipto', NULL, 95, NULL, NULL, 'Lw6F1589139357', 'Completed', 'amine@gmail.com', 'Madani Amine', '0655784743', 'Avenue Allal Fassi, school housing INPT, AL - IRFANE . RABAT', 'RABAT', '10112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-10 19:35:57', 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `page_settings`
--

CREATE TABLE `page_settings` (
  `id` int(11) NOT NULL,
  `contact` text CHARACTER SET latin1 NOT NULL,
  `contact_email` text CHARACTER SET latin1 NOT NULL,
  `about` text CHARACTER SET latin1 NOT NULL,
  `faq` text CHARACTER SET latin1 NOT NULL,
  `large_banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_link` text COLLATE utf8_unicode_ci,
  `c_status` int(11) NOT NULL,
  `a_status` int(11) NOT NULL,
  `f_status` int(11) NOT NULL,
  `slider_status` int(11) NOT NULL DEFAULT '1',
  `category_status` int(11) NOT NULL DEFAULT '1',
  `sbanner_status` int(11) NOT NULL DEFAULT '1',
  `latestpro_status` int(11) NOT NULL DEFAULT '1',
  `featuredpro_status` int(11) NOT NULL DEFAULT '1',
  `lbanner_status` int(11) NOT NULL DEFAULT '1',
  `popularpro_status` int(11) NOT NULL DEFAULT '1',
  `blogs_status` int(11) NOT NULL DEFAULT '1',
  `brands_status` int(11) NOT NULL DEFAULT '1',
  `testimonial_status` int(11) NOT NULL DEFAULT '1',
  `subscribe_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `page_settings`
--

INSERT INTO `page_settings` (`id`, `contact`, `contact_email`, `about`, `faq`, `large_banner`, `banner_link`, `c_status`, `a_status`, `f_status`, `slider_status`, `category_status`, `sbanner_status`, `latestpro_status`, `featuredpro_status`, `lbanner_status`, `popularpro_status`, `blogs_status`, `brands_status`, `testimonial_status`, `subscribe_status`) VALUES
(1, 'Merci de nous avoir contactés, nous reviendrons vers vous sous peu.', 'madani.amine1999@gmail.com', '<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\"><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p></h2><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">Where does it come from?</h2><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\"><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></h2>', '<h2>Contact US</h2>', '1588950820slider (1).jpg', 'https://www.facebook.com/GeniusOcean/', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `pickup_locations`
--

CREATE TABLE `pickup_locations` (
  `id` int(11) NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pickup_locations`
--

INSERT INTO `pickup_locations` (`id`, `address`, `status`) VALUES
(2, 'Test Pickup Addresss', 1),
(3, 'Another Address', 1),
(4, 'Another address 2', 1),
(5, 'Test Pickup Addresss 2', 1);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `owner` enum('admin','vendor') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` float NOT NULL,
  `previous_price` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `sizes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `policy` text COLLATE utf8_unicode_ci,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `approved` enum('no','yes') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `vendorid`, `owner`, `title`, `category`, `description`, `price`, `previous_price`, `stock`, `sizes`, `feature_image`, `policy`, `tags`, `featured`, `views`, `approved`, `created_at`, `updated_at`, `status`) VALUES
(36, 12, 'vendor', 'Couscous', '37,38,', '<br>', 60, NULL, 94, NULL, '1588954052couscous.jpg', '<br>', NULL, 0, 13, 'yes', '2020-05-08 16:00:35', '2020-05-10 19:47:48', 1),
(39, 16, 'vendor', 'LAIT CORPOREL THE VERT ET HUILE D’ARGAN', '47,50,', '<p class=\"MsoNormal\"><b><i>LAIT\r\nCORPOREL THE VERT ET HUILE D’ARGAN&nbsp;<o:p></o:p></i></b></p><p class=\"MsoNormal\"><b><span style=\"font-size:11.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif;\r\nmso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin;\r\nmso-ansi-language:FR;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">FLACON\r\nEN PLASTIQUE+ SPRAY 120ml</span></b><b><i><br></i></b></p>', 50, NULL, 9, NULL, '1589048457cre.jpg', NULL, NULL, 0, 4, 'yes', '2020-05-09 18:20:57', '2020-05-10 19:50:09', 1),
(40, 16, 'vendor', 'CRÉME DE JOUR', '47,49,', '<div><span style=\"line-height: 115%;\"><font face=\"Calibri, sans-serif\"><span style=\"font-size: 14.6667px;\"><b>CRÉME DE JOUR 45G</b></span></font><br></span></div><b><span style=\"font-size:11.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif;\r\nmso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:Arial;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:FR;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA\">POT&nbsp; EN\r\nVERRE+OPERCULE+COUVERCLE&nbsp;</span></b><br>', 120, NULL, 100, NULL, '1589049017e3f8ed40-2af3-46f1-829a-7d4d995bc7e4.jpg', NULL, NULL, 0, 0, 'yes', '2020-05-09 18:30:17', '2020-05-09 18:30:17', 1),
(41, 16, 'vendor', 'CRÉME DE NUIT', '47,49,', '<div><span style=\"line-height: 115%;\"><font face=\"Calibri, sans-serif\"><span style=\"font-size: 14.6667px;\"><b>CRÉME DE NUIT 45H=G</b></span></font><br></span></div><b><span style=\"font-size:11.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif;\r\nmso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:Arial;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:FR;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA\">POT&nbsp; EN\r\nVERRE+OPERCULE+COUVERCLE&nbsp;</span></b><br>', 120, NULL, 100, NULL, '1589049140bd960213-8f46-4c57-9309-1dd19806b6fa.jpg', NULL, NULL, 0, 0, 'yes', '2020-05-09 18:32:20', '2020-05-09 18:32:20', 1),
(42, 16, 'vendor', 'CREME HYDRATANTE THE VERT ET  D\'ARGAN', '47,49,', 'CREME HYDRATANTE THE VERT ET HUILE&nbsp; D\'ARGAN 100G<br><div>POT&nbsp; EN PLASTIQUE PET+OPERCULE+COUVERCLE&nbsp;&nbsp;<br></div>', 120, NULL, 100, NULL, '158904928618c77d58-245e-4f23-b6a5-3d6cd6222100.jpg', '<br>', NULL, 0, 2, 'yes', '2020-05-09 18:34:46', '2020-05-10 19:38:23', 1),
(43, 16, 'vendor', 'CREME HYDRATANTE LA ROSE ET HUILE  D\'ARGAN', '47,49,', '<b><i><span style=\"font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:\r\nminor-latin;mso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:FR;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Crème\r\nHYDRATANTE LA ROSE ET HUILE &nbsp;D\'ARGAN 45G</span></i></b><br><div><b><span style=\"font-size:11.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif;\r\nmso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:Arial;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:FR;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA\">POT&nbsp; EN\r\nVERRE+OPERCULE+COUVERCLE DECORA</span></b><b><i><span style=\"font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:\r\nminor-latin;mso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:FR;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\"><br></span></i></b></div>', 70, NULL, 99, NULL, '1589049460lav.jpg', NULL, NULL, 0, 0, 'yes', '2020-05-09 18:37:40', '2020-05-10 15:59:26', 1),
(44, 16, 'vendor', 'SHAMPOING D\'ARGAN  & ROMARIN GÉRAMIUM', '47,51,', '<br>', 70, NULL, 98, NULL, '1589049689téléchargement.jpg', NULL, NULL, 0, 2, 'yes', '2020-05-09 18:41:29', '2020-05-10 19:46:57', 1),
(45, 16, 'vendor', 'SAVON  D’ARGAN', '47,51,', '<br>', 25, NULL, 499, NULL, '1589049799ae989867-6eaf-4703-9256-cd03639d0ef3.jpg', NULL, NULL, 0, 0, 'yes', '2020-05-09 18:43:19', '2020-05-10 19:36:00', 1),
(46, 16, 'vendor', 'SAVON  HUILE D’ARGAN', '47,51,', '<br>', 25, NULL, 494, NULL, '1589049992ae989867-6eaf-4703-9256-cd03639d0ef3.jpg', '<br>', NULL, 0, 4, 'yes', '2020-05-09 18:46:32', '2020-05-10 18:02:15', 1),
(47, 17, 'vendor', 'Caftan', '40,42,', '<br>', 5600, NULL, 3, 'X,M', '1589132339Webp.net-resizeimage (5).jpg', '<br>', NULL, 0, 1, 'yes', '2020-05-09 23:17:23', '2020-05-10 17:38:59', 1),
(48, 17, 'vendor', 'Huile lavande', '47,48,', '<br>', 50, NULL, 8, NULL, '1589066508huile-de-lavande-demo.jpg', NULL, NULL, 0, 2, 'yes', '2020-05-09 23:21:48', '2020-05-10 18:02:18', 1);

-- --------------------------------------------------------

--
-- Structure de la table `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `productid`, `image`) VALUES
(1, 26, 'br150028710072d783df472ec91220ca7714adf113c6.jpg'),
(2, 26, 'tq1500287100E1F.jpg'),
(3, 25, 'B71510210868demo (1).jpg'),
(4, 25, '3t1510210868demo (2).jpg'),
(5, 25, '0W1510210868demo (3).jpg'),
(6, 25, 'ol1510210868demo (4).jpg'),
(7, 22, 'P91510210887demo (1).jpg'),
(8, 22, 'JB1510210887demo (2).jpg'),
(9, 22, '5I1510210887demo (3).jpg'),
(10, 22, 'hO1510210887demo (4).jpg'),
(11, 20, 'sx15102115136.jpg'),
(12, 20, 'jc1510211513demo (1).jpg'),
(13, 20, 'Lb1510211513demo (2).jpg'),
(14, 20, 'LD1510211513demo (3).jpg'),
(15, 47, 'P81589066243ebbbb5922f3d42aa5de790089fa87da3.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `review` text,
  `rating` int(11) DEFAULT NULL,
  `review_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`id`, `productid`, `name`, `email`, `review`, `rating`, `review_date`) VALUES
(1, 29, 'Amine Madani', 'amine@gmail.com', 'J\'aime le produit', 5, '2020-05-08 04:22:00'),
(2, 36, 'zineb Baladou', 'zineb@gmail.com', 'fggggggggggggggggggggggg', 5, '2020-05-09 15:12:56'),
(3, 48, 'Amine Madani', 'amine@gmail.com', 'nice', 5, '2020-05-10 15:56:32');

-- --------------------------------------------------------

--
-- Structure de la table `section_titles`
--

CREATE TABLE `section_titles` (
  `id` int(11) NOT NULL,
  `service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_text` mediumtext COLLATE utf8_unicode_ci,
  `pricing_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pricing_text` mediumtext COLLATE utf8_unicode_ci,
  `portfolio_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `portfolio_text` mediumtext COLLATE utf8_unicode_ci,
  `testimonial_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testimonial_text` mediumtext COLLATE utf8_unicode_ci,
  `team_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_text` text COLLATE utf8_unicode_ci,
  `blog_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_text` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Déchargement des données de la table `section_titles`
--

INSERT INTO `section_titles` (`id`, `service_title`, `service_text`, `pricing_title`, `pricing_text`, `portfolio_title`, `portfolio_text`, `testimonial_title`, `testimonial_text`, `team_title`, `team_text`, `blog_title`, `blog_text`) VALUES
(1, 'Our Services', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Pricing Plans', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Latest Projects', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Customer Reviews', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Our Team', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Latest Blogs', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.');

-- --------------------------------------------------------

--
-- Structure de la table `service_section`
--

CREATE TABLE `service_section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `text` text CHARACTER SET latin1 NOT NULL,
  `icon` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `service_section`
--

INSERT INTO `service_section` (`id`, `title`, `text`, `icon`, `status`) VALUES
(2, 'Service Name Here', 'Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s', 'jz52.jpg', 1),
(3, 'Service Name Here', 'Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s', '4rY3.jpg', 1),
(4, 'Service Name Here', 'Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s', 'BfMUntitled-1.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about` text CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fax` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `footer` varchar(255) CHARACTER SET latin1 NOT NULL,
  `background` varchar(255) CHARACTER SET latin1 NOT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `withdraw_fee` float NOT NULL DEFAULT '0',
  `withdraw_charge` float NOT NULL DEFAULT '0',
  `paypal_business` varchar(255) CHARACTER SET latin1 NOT NULL,
  `shipping_cost` float DEFAULT '0',
  `stripe_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_money` text COLLATE utf8_unicode_ci,
  `bank_wire` text COLLATE utf8_unicode_ci,
  `dynamic_commission` float NOT NULL DEFAULT '0',
  `tax` float NOT NULL DEFAULT '0',
  `fixed_commission` float NOT NULL DEFAULT '0',
  `currency_sign` varchar(255) COLLATE utf8_unicode_ci DEFAULT '$',
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `popular_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css_file` varchar(255) CHARACTER SET latin1 NOT NULL,
  `stripe_status` int(11) NOT NULL DEFAULT '1',
  `paypal_status` int(11) NOT NULL DEFAULT '1',
  `mobile_status` int(11) NOT NULL DEFAULT '1',
  `bank_status` int(11) NOT NULL DEFAULT '1',
  `cash_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `title`, `url`, `about`, `address`, `phone`, `fax`, `email`, `footer`, `background`, `theme_color`, `withdraw_fee`, `withdraw_charge`, `paypal_business`, `shipping_cost`, `stripe_key`, `stripe_secret`, `mobile_money`, `bank_wire`, `dynamic_commission`, `tax`, `fixed_commission`, `currency_sign`, `currency_code`, `popular_tags`, `css_file`, `stripe_status`, `paypal_status`, `mobile_status`, `bank_status`, `cash_status`) VALUES
(1, 'Annotation 2020-05-09 185806.png', 'u621.png', 'Bi3 & Chri - Coopératives', 'Fuckcccccc', 'Bi3&amp;Chri&nbsp; est un marketplace en ligne dédié à toutes les coopératives marocaines pour vendre leurs produits en ligne au Maroc et à l\'étranger.', 'Rabat - INPT - Avenue ALLAL Fassi', '0655784743', '0655784743', 'madani.amine1999@gmail.com', 'COPYRIGHT 2020&nbsp;<a href=\"http://geniusocean.com\">Bi3&amp;Chri.ma<br></a>', 'kisspng-lazada-group-business-vendor-online-shopping-e-com-e-commerce-5b24034488a9c8.1988831415290867885598.png', 'rgba(35,159,71,0.86)', 0, 0, 'shaon143-facilitator-1@gmail.com', 0, 'pk_test_bD5Si0msHNV75sd5R71jSJFb', 'sk_test_r7zxASOuYYCiuT3svkUtuh6W', 'Faites vos depots sur les numero suivant 42784249 / 78939896 / 04835863', 'Compte Bancaire', 0, 0, 0, 'DH', 'USD', 'One,Two,Three,Four', 'genius1.css', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_language`
--

CREATE TABLE `site_language` (
  `id` int(11) NOT NULL,
  `home` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_us` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_us` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faq` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `my_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `my_cart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_cart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `continue_shopping` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proceed_to_checkout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empty_cart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtotal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_to_cart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `out_of_stock` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reviews` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `related_products` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `return_policy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_review` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `write_a_review` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_to_cart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_in_social` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_products` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latest_products` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `popular_products` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_result` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_result` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_us_today` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filter_option` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `all_categories` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `load_more` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_by_latest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_by_oldest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_by_highest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_by_lowest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enter_shipping` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_now` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dashboard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_profile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `change_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_as` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `popular_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latest_blogs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_links` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quick_review` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_to_another` text COLLATE utf8_unicode_ci,
  `pickup_details` text COLLATE utf8_unicode_ci,
  `logout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `site_language`
--

INSERT INTO `site_language` (`id`, `home`, `about_us`, `contact_us`, `faq`, `search`, `vendor`, `my_account`, `my_cart`, `view_cart`, `checkout`, `continue_shopping`, `proceed_to_checkout`, `empty_cart`, `product_name`, `unit_price`, `subtotal`, `total`, `quantity`, `add_to_cart`, `out_of_stock`, `available`, `reviews`, `related_products`, `return_policy`, `no_review`, `write_a_review`, `subscription`, `subscribe`, `address`, `added_to_cart`, `description`, `share_in_social`, `top_category`, `featured_products`, `latest_products`, `popular_products`, `search_result`, `no_result`, `contact_us_today`, `filter_option`, `all_categories`, `load_more`, `sort_by_latest`, `sort_by_oldest`, `sort_by_highest`, `sort_by_lowest`, `street_address`, `phone`, `email`, `fax`, `submit`, `name`, `review_details`, `enter_shipping`, `order_details`, `shipping_cost`, `order_now`, `dashboard`, `update_profile`, `change_password`, `login_as`, `sign_in`, `popular_tags`, `latest_blogs`, `footer_links`, `view_details`, `quick_review`, `blog`, `ship_to_another`, `pickup_details`, `logout`) VALUES
(1, 'ACCUEIL', 'A PROPOS', 'CONTACTEZ NOUS', 'FAQ', 'Chercher', 'Coopérative', 'Mon compte', 'Mon panier', 'Voir le panier', 'Commander', 'Continuer vos achats', 'Commander', 'Votre panier est vide', 'Nom du produit', 'Prix unitaire', 'Sous-total', 'Total', 'Quantité', 'Ajouter au panier', 'En rupture de stock', 'Disponible', 'Avis', 'Produits en relation', 'Politique de retour', 'Aucun avis', 'Ecrire un avis', 'Abonnement', 'S\'abonner', 'Adresse', 'Ajouté au panier avec succès', 'Description', 'Partager', 'Catégories populaires', 'Produits populaires', 'Produits récents', 'Produits populaires', 'Résultats de recherche', 'Aucun produit trouvé', 'Contactez nous', 'Filtrer les options', 'Toutes les catégories', 'Charger plus', 'Plus récents', 'Plus anciens', 'Plus chers', 'Moins chers', 'Adresse', 'Téléphone', 'E-mail', 'Fax', 'Confirmer', 'Nom', 'Détails', 'Saisir les détails de livraison', 'Détails de la commande', 'Prix de livraison', 'Passer la commande', NULL, NULL, NULL, NULL, 'S\'identifier', 'Popular Tags', 'Latest Blogs', 'Footer Links', 'Voir les détails', 'Aperçu rapide', 'Blog', 'Livrer à une addresse différente', 'Chosir votre addresse sélectionnée', 'Logout');

-- --------------------------------------------------------

--
-- Structure de la table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `text_position` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `text`, `image`, `text_position`, `status`) VALUES
(4, 'Tous les produits Bio', 'sont disponibles sur notre Marketplace Bi3&Chri', 'xgtslider.jpg', 'slide_style_center', 1),
(5, 'Les Huiles essentilles', 'pour soulager vos visage avec des produits 100% bio', '2iLi90592-.jpeg', 'slide_style_center', 1),
(6, NULL, NULL, 'L4wkhiyata_slider.jpg', 'slide_style_left', 1);

-- --------------------------------------------------------

--
-- Structure de la table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twiter` varchar(255) NOT NULL,
  `g_plus` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `f_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `t_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `g_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `link_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `social_links`
--

INSERT INTO `social_links` (`id`, `facebook`, `twiter`, `g_plus`, `linkedin`, `f_status`, `t_status`, `g_status`, `link_status`) VALUES
(1, 'http://facebook.com/', 'http://twitter.com/', 'http://google.com/', 'http://linkedin.com/', 'enable', 'enable', 'enable', 'enable');

-- --------------------------------------------------------

--
-- Structure de la table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `subscription`
--

INSERT INTO `subscription` (`id`, `email`) VALUES
(1, 'amineleboss10@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `review` text CHARACTER SET latin1 NOT NULL,
  `client` varchar(255) CHARACTER SET latin1 NOT NULL,
  `designation` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `name`, `gender`, `phone`, `fax`, `email`, `password`, `address`, `city`, `zip`, `created_at`, `updated_at`, `status`) VALUES
(3, 'user', NULL, '234567888', NULL, 'user@gmail.com', '$2y$10$hteB3yEiZtZdHUmtVSsBveHiR0u8lN1MqZ1iOv5RkGdOqzK4w9RTu', NULL, NULL, NULL, '2019-04-21 10:51:23', '2019-04-21 10:51:23', 1),
(4, 'Madani Amine', NULL, '0655784743', NULL, 'amine@gmail.com', '$2y$10$24cS7YfmUa2P/ISPDZ.FvuNeyVQT6BC6cMa0REIqx5ioqQXm5x1rm', NULL, NULL, NULL, '2020-05-07 07:30:46', '2020-05-07 07:30:46', 1),
(5, 'zineb Baladou', NULL, '0646506528', NULL, 'zinebbaladou@gmail.com', '$2y$10$WhbDo6LX1dfhneRILw97pubWVJS5AsUUEcQtqWDCq457UVJpLjJGy', NULL, NULL, NULL, '2020-05-09 00:54:18', '2020-05-09 01:47:06', 1),
(6, 'zineb Baladou', NULL, '0646506528', NULL, 'zineb@gmail.com', '$2y$10$xzsqAjKqXDq3SGuuTGhUH.6seZDtAH5fnVaKqzBJtvXDikoGt3TyG', NULL, NULL, NULL, '2020-05-09 13:51:22', '2020-05-09 13:51:22', 1);

-- --------------------------------------------------------

--
-- Structure de la table `vendor_profiles`
--

CREATE TABLE `vendor_profiles` (
  `id` int(11) NOT NULL,
  `name_resp` varchar(255) NOT NULL,
  `coop_name` varchar(255) DEFAULT NULL,
  `NumImm` varchar(20) NOT NULL,
  `sect_act` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `current_balance` float NOT NULL DEFAULT '0',
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vendor_profiles`
--

INSERT INTO `vendor_profiles` (`id`, `name_resp`, `coop_name`, `NumImm`, `sect_act`, `photo`, `phone`, `fax`, `email`, `password`, `address`, `city`, `zip`, `current_balance`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(12, 'Amine Madani', 'Coop Amine', '', '', NULL, '0655784743', NULL, 'aminevendeur@gmail.com', '$2y$10$wSQv1k2wCbf6B10GQiVN.OoIiiJ8x/DDn1H50.AUXXt8q2HqYmFJq', NULL, NULL, NULL, 1180, NULL, '2020-05-07 14:17:38', '2020-05-09 13:29:08', 1),
(13, 'Amine Madani', 'Amine Coop', '', '', NULL, '0655784743', NULL, 'madani.amine1999@gmail.com', '$2y$10$4tkcKh9/wcr/bnaeu4DJAepJ5TEiPzi7MrOCob91GtzCPhPk/.cBm', NULL, NULL, NULL, 0, NULL, '2020-05-07 14:19:26', '2020-05-07 14:19:46', 1),
(16, 'Boutdarine Nadia', 'Yakout', '12345678', 'Coopérative Artisanale', NULL, '0652653625', NULL, 'yacoutt@hotmail.com', '$2y$10$dHY428RQrIkQdLvEB1waFu4/cnBZXX2nPHTzj79g35QBCJIOakYiK', '273, Av Hassan II N°2', 'Rabat', NULL, 400, NULL, '2020-05-08 18:56:12', '2020-05-09 13:29:08', 1),
(15, 'fzineb', 'zineb Baladou', '12345678', 'Coopérative Artisanale', NULL, '0646506528', NULL, 'zineb@gmail.com', '$2y$10$K7ZxU41H0Bj9J.tsN/YLHOCtNq64lfpulF9QscqRiC6I9U18mwmVO', 'hhhhhhhhhhhhhh', 'Sidi bennour', NULL, 0, NULL, '2020-05-08 18:41:35', '2020-05-08 18:42:21', 1),
(17, 'fzineb', 'AMANAR', '123456', 'Coopérative Artisanale', NULL, '0232323232', NULL, 'zz@gmail.com', '$2y$10$5bAjbWoN94d4JTp8J7ZrU.4DtV3rZ8qV0IlOdjAXzIpB7JLQXj80y', 'hhhhhhhhhhhhhh', 'Sidi bennour', NULL, 0, NULL, '2020-05-09 22:40:42', '2020-05-09 23:13:44', 1),
(18, 'Amine', 'Nouvelle', '1234', 'agr', NULL, '123', NULL, 'test@gmail.com', '$2y$10$ID9fABZXDmuLdy7qcD4DduBrsRs6lzaWOPHFTo7xE3Eov7cXLxuQS', 'Rabat', 'Rabat', NULL, 0, NULL, '2020-05-10 16:02:08', '2020-05-10 16:06:03', 1);

-- --------------------------------------------------------

--
-- Structure de la table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(11) NOT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `acc_email` varchar(255) DEFAULT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `acc_name` varchar(255) DEFAULT NULL,
  `address` text,
  `swift` varchar(255) DEFAULT NULL,
  `reference` text,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `withdraws`
--

INSERT INTO `withdraws` (`id`, `vendorid`, `method`, `acc_email`, `iban`, `country`, `acc_name`, `address`, `swift`, `reference`, `amount`, `fee`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sssssssssssssssss', 2063.5, 63.5, '2017-07-25 10:29:33', '2017-07-25 10:32:58', 'rejected'),
(2, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'ssss', 2063.5, 63.5, '2017-07-25 10:34:32', '2017-07-25 10:35:58', 'rejected'),
(3, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sssss', 2000, 63.5, '2017-07-25 10:36:14', '2017-07-25 10:36:57', 'rejected'),
(4, 1, 'Skrill', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sssssssss', 1936.5, 63.5, '2017-07-25 10:37:08', '2017-07-25 10:37:42', 'rejected'),
(5, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sss', 2000, 0, '2017-07-25 10:38:27', '2017-07-25 10:38:48', 'rejected'),
(6, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'ssss', 1936.5, 63.5, '2017-07-25 10:39:52', '2017-07-25 10:40:03', 'rejected'),
(7, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sssssssssss', 1936.5, 63.5, '2017-07-25 10:59:39', '2017-07-25 10:59:49', 'completed');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `brand_banner`
--
ALTER TABLE `brand_banner`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `code_scripts`
--
ALTER TABLE `code_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `page_settings`
--
ALTER TABLE `page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pickup_locations`
--
ALTER TABLE `pickup_locations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `section_titles`
--
ALTER TABLE `section_titles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service_section`
--
ALTER TABLE `service_section`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site_language`
--
ALTER TABLE `site_language`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vendor_profiles`
--
ALTER TABLE `vendor_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `brand_banner`
--
ALTER TABLE `brand_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `code_scripts`
--
ALTER TABLE `code_scripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `page_settings`
--
ALTER TABLE `page_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `pickup_locations`
--
ALTER TABLE `pickup_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `section_titles`
--
ALTER TABLE `section_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `service_section`
--
ALTER TABLE `service_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_language`
--
ALTER TABLE `site_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `vendor_profiles`
--
ALTER TABLE `vendor_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
