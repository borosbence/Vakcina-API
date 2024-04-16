-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 05. 18:12
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vp_vakcina`
--
CREATE DATABASE IF NOT EXISTS `vp_vakcina` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vp_vakcina`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `oltas`
--

CREATE TABLE `oltas` (
  `taj_szam` int(9) UNSIGNED ZEROFILL NOT NULL,
  `vakcina_id` int(11) NOT NULL,
  `orvos_id` int(11) NOT NULL,
  `datum_utolso` date NOT NULL,
  `oltas_szam` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `oltas`
--

INSERT INTO `oltas` (`taj_szam`, `vakcina_id`, `orvos_id`, `datum_utolso`, `oltas_szam`) VALUES
(016460464, 5, 4, '2022-03-02', 3),
(017363809, 5, 6, '2022-04-10', 3),
(023227237, 3, 4, '2022-03-10', 3),
(030729001, 1, 4, '2022-04-05', 2),
(044044209, 5, 3, '2022-03-17', 3),
(054644932, 2, 4, '2022-03-30', 2),
(066398070, 2, 6, '2022-03-13', 3),
(072875260, 3, 4, '2022-04-07', 2),
(078785399, 5, 1, '2022-04-02', 2),
(079194920, 5, 1, '2022-03-23', 3),
(088228547, 1, 6, '2022-03-28', 3),
(099827306, 5, 6, '2022-03-19', 3),
(125806921, 2, 6, '2022-03-18', 2),
(127888042, 4, 5, '2022-03-01', 2),
(162196304, 3, 6, '2022-03-17', 2),
(168947978, 5, 5, '2022-03-11', 2),
(171124953, 5, 5, '2022-03-27', 3),
(178038662, 4, 6, '2022-03-25', 2),
(183980586, 2, 3, '2022-03-21', 2),
(191598311, 2, 5, '2022-03-15', 3),
(197843217, 4, 4, '2022-03-10', 2),
(198959315, 2, 5, '2022-03-13', 2),
(207550607, 4, 2, '2022-04-04', 2),
(217579135, 1, 4, '2022-03-04', 3),
(221086209, 4, 3, '2022-03-16', 3),
(238271901, 4, 4, '2022-03-25', 2),
(250664706, 1, 2, '2022-04-03', 3),
(259316836, 5, 1, '2022-03-29', 2),
(260072782, 5, 6, '2022-03-01', 3),
(262100139, 5, 6, '2022-03-27', 2),
(272483368, 4, 2, '2022-04-08', 2),
(279480193, 2, 2, '2022-03-23', 3),
(282865466, 4, 5, '2022-03-19', 3),
(292731729, 5, 4, '2022-03-07', 2),
(314613385, 2, 1, '2022-03-20', 3),
(315215048, 2, 6, '2022-04-07', 3),
(325888520, 3, 5, '2022-03-12', 2),
(353833588, 2, 3, '2022-04-09', 2),
(354454277, 4, 2, '2022-03-09', 2),
(378916001, 5, 5, '2022-03-07', 2),
(409807698, 3, 4, '2022-04-02', 3),
(413892058, 5, 4, '2022-03-14', 2),
(427061535, 3, 6, '2022-03-07', 2),
(428117494, 5, 2, '2022-03-25', 3),
(428456230, 2, 6, '2022-03-16', 3),
(438405505, 3, 5, '2022-03-27', 3),
(462412207, 4, 5, '2022-04-06', 3),
(466223877, 1, 2, '2022-03-19', 3),
(470742286, 1, 2, '2022-03-04', 3),
(472757833, 3, 2, '2022-03-05', 2),
(473444434, 5, 2, '2022-03-22', 3),
(482816813, 3, 3, '2022-03-13', 3),
(497602313, 3, 6, '2022-03-01', 2),
(498756994, 3, 1, '2022-04-06', 3),
(502185326, 2, 3, '2022-04-02', 3),
(503209795, 4, 2, '2022-03-22', 3),
(511156986, 4, 2, '2022-03-18', 2),
(527296328, 3, 1, '2022-04-03', 3),
(542105730, 5, 3, '2022-04-11', 3),
(548357052, 3, 1, '2022-03-29', 3),
(556453601, 2, 4, '2022-04-10', 2),
(567227407, 1, 1, '2022-03-05', 3),
(580685287, 5, 6, '2022-03-14', 2),
(583256919, 4, 3, '2022-03-18', 2),
(596768509, 5, 6, '2022-03-01', 2),
(607053084, 5, 4, '2022-03-19', 2),
(612252669, 1, 3, '2022-03-13', 3),
(638703464, 3, 5, '2022-03-25', 3),
(644168653, 2, 3, '2022-03-23', 2),
(685071070, 1, 5, '2022-03-28', 3),
(685363605, 1, 6, '2022-03-19', 2),
(699288919, 1, 4, '2022-03-24', 3),
(705759637, 1, 3, '2022-04-01', 3),
(707145054, 2, 2, '2022-03-17', 2),
(711494910, 3, 3, '2022-03-17', 3),
(716830687, 4, 3, '2022-03-28', 3),
(755882980, 5, 5, '2022-03-28', 3),
(774589384, 5, 2, '2022-03-22', 3),
(780752409, 1, 2, '2022-03-21', 3),
(788123369, 3, 3, '2022-03-09', 3),
(805088547, 1, 6, '2022-03-08', 2),
(809378646, 2, 6, '2022-03-16', 2),
(809946978, 3, 3, '2022-03-22', 3),
(817200725, 3, 2, '2022-04-02', 3),
(831293052, 5, 1, '2022-03-21', 2),
(833964682, 4, 1, '2022-03-02', 2),
(869472062, 2, 6, '2022-03-14', 3),
(874654187, 3, 2, '2022-03-14', 3),
(889705346, 2, 4, '2022-03-12', 2),
(895982848, 4, 5, '2022-04-07', 3),
(904992936, 1, 5, '2022-04-01', 3),
(941514741, 5, 1, '2022-03-04', 2),
(949864878, 2, 5, '2022-03-29', 2),
(957031523, 1, 2, '2022-03-09', 2),
(958706512, 2, 4, '2022-03-29', 2),
(971144193, 2, 6, '2022-03-28', 2),
(978310552, 4, 6, '2022-04-09', 3),
(983371946, 4, 4, '2022-04-02', 2),
(991812822, 2, 4, '2022-03-20', 3),
(994795218, 5, 5, '2022-04-06', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orvos`
--

CREATE TABLE `orvos` (
  `id` int(11) NOT NULL,
  `felhasznalo_nev` varchar(50) NOT NULL,
  `jelszo` varchar(128) NOT NULL,
  `megjelenitendo_nev` varchar(100) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `orvos`
--

INSERT INTO `orvos` (`id`, `felhasznalo_nev`, `jelszo`, `megjelenitendo_nev`, `admin`) VALUES
(1, 'admin', 'admin', 'Dr. Adminisz Sztaniszláv', 1),
(2, 'zsivago', 'zsivago', 'Dr. Zsivágó Jurij Andrejevics', 0),
(3, 'franky', 'frankeinstein', 'Dr. Victor Frankeinstein', 0),
(4, 'drbrs', 'berescsepp', 'Dr. Béres József', 0),
(5, 'emett', 'visszaajovobe', 'Dr. Emmett L. Brown', 1),
(6, 'bubo', 'kovetkezo', 'Dr. Bubó Bodó', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vakcina`
--

CREATE TABLE `vakcina` (
  `id` int(11) NOT NULL,
  `megnevezes` varchar(50) NOT NULL,
  `szarmazasi_hely` varchar(100) NOT NULL,
  `mennyiseg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `vakcina`
--

INSERT INTO `vakcina` (`id`, `megnevezes`, `szarmazasi_hely`, `mennyiseg`) VALUES
(1, 'Pfizer-BioNtech', 'amerikai-német', 10874511),
(2, 'Moderna', 'amerikai', 1723610),
(3, 'AstraZeneca', 'brit-svéd', 6513460),
(4, 'Szputnyik', 'orosz', 2000000),
(5, 'Sinopharm', 'kínai', 5000000);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `oltas`
--
ALTER TABLE `oltas`
  ADD PRIMARY KEY (`taj_szam`),
  ADD KEY `vakcina_id` (`vakcina_id`),
  ADD KEY `orvos_id` (`orvos_id`);

--
-- A tábla indexei `orvos`
--
ALTER TABLE `orvos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `felhasznalo_nev` (`felhasznalo_nev`);

--
-- A tábla indexei `vakcina`
--
ALTER TABLE `vakcina`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `megnevezes` (`megnevezes`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `orvos`
--
ALTER TABLE `orvos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `vakcina`
--
ALTER TABLE `vakcina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `oltas`
--
ALTER TABLE `oltas`
  ADD CONSTRAINT `oltas_ibfk_1` FOREIGN KEY (`vakcina_id`) REFERENCES `vakcina` (`id`),
  ADD CONSTRAINT `oltas_ibfk_2` FOREIGN KEY (`orvos_id`) REFERENCES `orvos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
