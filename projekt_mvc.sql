-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 20. Jun 2025 um 22:41
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `projekt_mvc`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `spielplan_cl`
--

CREATE TABLE `spielplan_cl` (
  `match_number` int(3) DEFAULT NULL,
  `round_number` varchar(15) DEFAULT NULL,
  `date` varchar(16) DEFAULT NULL,
  `location` varchar(29) DEFAULT NULL,
  `home_team` varchar(14) DEFAULT NULL,
  `home_id` int(11) NOT NULL,
  `away_team` varchar(14) DEFAULT NULL,
  `away_id` int(11) NOT NULL,
  `result` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `spielplan_cl`
--

INSERT INTO `spielplan_cl` (`match_number`, `round_number`, `date`, `location`, `home_team`, `home_id`, `away_team`, `away_id`, `result`) VALUES
(1, '1', '2024-09-17 18:45', 'Juventus Stadium', 'Juventus', 1, 'PSV', 2, '3 - 1'),
(2, '1', '2024-09-17 18:45', 'Stadion Wankdorf', 'Young Boys', 3, 'Aston Villa', 4, '0 - 3'),
(3, '1', '17/09/2024 21:00', 'Fußball Arena München', 'Bayern München', 5, 'GNK Dinamo', 6, '9 - 2'),
(4, '1', '17/09/2024 21:00', 'Stadio San Siro', 'Milan', 7, 'Liverpool', 8, '1 - 3'),
(5, '1', '17/09/2024 21:00', 'Estadio Santiago Bernabéu', 'Real Madrid', 9, 'Stuttgart', 10, '3 - 1'),
(6, '1', '17/09/2024 21:00', 'Estádio José Alvalade', 'Sporting CP', 11, 'Lille', 12, '2 - 0'),
(7, '1', '18/09/2024 18:45', 'Stadio Renato Dall\'Ara', 'Bologna', 13, 'Shakhtar', 14, '0 - 0'),
(8, '1', '18/09/2024 18:45', 'Stadion Letná', 'Sparta Praha', 15, 'Salzburg', 16, '3 - 0'),
(9, '1', '18/09/2024 21:00', 'Jan Breydelstadion', 'Club Brugge', 17, 'B. Dortmund', 18, '0 - 3'),
(10, '1', '18/09/2024 21:00', 'Celtic Park', 'Celtic', 19, 'S. Bratislava', 20, '5 - 1'),
(11, '1', '18/09/2024 21:00', 'City of Manchester Stadium', 'Man City', 21, 'Inter', 22, '0 - 0'),
(12, '1', '18/09/2024 21:00', 'Parc des Princes', 'Paris', 23, 'Girona', 24, '1 - 0'),
(13, '1', '19/09/2024 18:45', 'Stadion Rajko Mitic', 'Crvena Zvezda', 25, 'Benfica', 26, '1 - 2'),
(14, '1', '19/09/2024 18:45', 'Stadion Feijenoord \'De Kuip\'', 'Feyenoord', 27, 'Leverkusen', 28, '0 - 4'),
(15, '1', '19/09/2024 21:00', 'Stadio di Bergamo', 'Atalanta', 29, 'Arsenal', 30, '0 - 0'),
(16, '1', '19/09/2024 21:00', 'Estadio Metropolitano', 'Atleti', 31, 'Leipzig', 32, '2 - 1'),
(17, '1', '19/09/2024 21:00', 'Stade Louis II', 'Monaco', 33, 'Barcelona', 34, '2 - 1'),
(18, '1', '19/09/2024 21:00', 'Stade de Roudourou', 'Brest', 35, 'Sturm Graz', 36, '2 - 1'),
(19, '2', '01/10/2024 18:45', 'Stadion Salzburg', 'Salzburg', 16, 'Brest', 35, '0 - 4'),
(20, '2', '01/10/2024 18:45', 'Arena Stuttgart', 'Stuttgart', 10, 'Sparta Praha', 15, '1 - 1'),
(21, '2', '01/10/2024 21:00', 'Stadio San Siro', 'Inter', 22, 'Crvena Zvezda', 25, '4 - 0'),
(22, '2', '01/10/2024 21:00', 'BVB Stadion Dortmund', 'B. Dortmund', 18, 'Celtic', 19, '7 - 1'),
(23, '2', '01/10/2024 21:00', 'Estadi Olímpic Lluís Companys', 'Barcelona', 34, 'Young Boys', 3, '5 - 0'),
(24, '2', '01/10/2024 21:00', 'BayArena', 'Leverkusen', 28, 'Milan', 7, '1 - 0'),
(25, '2', '01/10/2024 21:00', 'Arsenal Stadium', 'Arsenal', 30, 'Paris', 23, '2 - 0'),
(26, '2', '01/10/2024 21:00', 'PSV Stadion', 'PSV', 2, 'Sporting CP', 11, '1 - 1'),
(27, '2', '01/10/2024 21:00', 'Národný futbalový štadión', 'S. Bratislava', 20, 'Man City', 21, '0 - 4'),
(28, '2', '02/10/2024 18:45', 'Arena AufSchalke', 'Shakhtar', 14, 'Atalanta', 29, '0 - 3'),
(29, '2', '02/10/2024 18:45', 'Estadi Montilivi', 'Girona', 24, 'Feyenoord', 27, '2 - 3'),
(30, '2', '02/10/2024 21:00', 'Anfield', 'Liverpool', 8, 'Bologna', 13, '2 - 0'),
(31, '2', '02/10/2024 21:00', 'RB Arena', 'Leipzig', 32, 'Juventus', 1, '2 - 3'),
(32, '2', '02/10/2024 21:00', 'Estádio do SL Benfica', 'Benfica', 26, 'Atleti', 31, '4 - 0'),
(33, '2', '02/10/2024 21:00', 'Stadion Maksimir', 'GNK Dinamo', 6, 'Monaco', 33, '2 - 2'),
(34, '2', '02/10/2024 21:00', 'Stade Pierre Mauroy', 'Lille', 12, 'Real Madrid', 9, '1 - 0'),
(35, '2', '02/10/2024 21:00', 'Villa Park', 'Aston Villa', 4, 'Bayern München', 5, '1 - 0'),
(36, '2', '02/10/2024 21:00', 'Wörthersee Stadion', 'Sturm Graz', 36, 'Club Brugge', 17, '0 - 1'),
(37, '3', '22/10/2024 18:45', 'Stadio San Siro', 'Milan', 7, 'Club Brugge', 17, '3 - 1'),
(38, '3', '22/10/2024 18:45', 'Stade Louis II', 'Monaco', 33, 'Crvena Zvezda', 25, '5 - 1'),
(39, '3', '22/10/2024 21:00', 'Parc des Princes', 'Paris', 23, 'PSV', 2, '1 - 1'),
(40, '3', '22/10/2024 21:00', 'Juventus Stadium', 'Juventus', 1, 'Stuttgart', 10, '0 - 1'),
(41, '3', '22/10/2024 21:00', 'Arsenal Stadium', 'Arsenal', 30, 'Shakhtar', 14, '1 - 0'),
(42, '3', '22/10/2024 21:00', 'Villa Park', 'Aston Villa', 4, 'Bologna', 13, '2 - 0'),
(43, '3', '22/10/2024 21:00', 'Estadi Montilivi', 'Girona', 24, 'S. Bratislava', 20, '2 - 0'),
(44, '3', '22/10/2024 21:00', 'Wörthersee Stadion', 'Sturm Graz', 36, 'Sporting CP', 11, '0 - 2'),
(45, '3', '22/10/2024 21:00', 'Estadio Santiago Bernabéu', 'Real Madrid', 9, 'B. Dortmund', 18, '5 - 2'),
(46, '3', '23/10/2024 18:45', 'Stadio di Bergamo', 'Atalanta', 29, 'Celtic', 19, '0 - 0'),
(47, '3', '23/10/2024 18:45', 'Stade de Roudourou', 'Brest', 35, 'Leverkusen', 28, '1 - 1'),
(48, '3', '23/10/2024 21:00', 'City of Manchester Stadium', 'Man City', 21, 'Sparta Praha', 15, '5 - 0'),
(49, '3', '23/10/2024 21:00', 'RB Arena', 'Leipzig', 32, 'Liverpool', 8, '0 - 1'),
(50, '3', '23/10/2024 21:00', 'Estadi Olímpic Lluís Companys', 'Barcelona', 34, 'Bayern München', 5, '4 - 1'),
(51, '3', '23/10/2024 21:00', 'Estadio Metropolitano', 'Atleti', 31, 'Lille', 12, '1 - 3'),
(52, '3', '23/10/2024 21:00', 'Estádio do SL Benfica', 'Benfica', 26, 'Feyenoord', 27, '1 - 3'),
(53, '3', '23/10/2024 21:00', 'Stadion Salzburg', 'Salzburg', 16, 'GNK Dinamo', 6, '0 - 2'),
(54, '3', '23/10/2024 21:00', 'Stadion Wankdorf', 'Young Boys', 3, 'Inter', 22, '0 - 1'),
(55, '4', '05/11/2024 18:45', 'PSV Stadion', 'PSV', 2, 'Girona', 24, '4 - 0'),
(56, '4', '05/11/2024 18:45', 'Národný futbalový štadión', 'S. Bratislava', 20, 'GNK Dinamo', 6, '1 - 4'),
(57, '4', '05/11/2024 21:00', 'Estadio Santiago Bernabéu', 'Real Madrid', 9, 'Milan', 7, '1 - 3'),
(58, '4', '05/11/2024 21:00', 'Anfield', 'Liverpool', 8, 'Leverkusen', 28, '4 - 0'),
(59, '4', '05/11/2024 21:00', 'BVB Stadion Dortmund', 'B. Dortmund', 18, 'Sturm Graz', 36, '1 - 0'),
(60, '4', '05/11/2024 21:00', 'Estádio José Alvalade', 'Sporting CP', 11, 'Man City', 21, '4 - 1'),
(61, '4', '05/11/2024 21:00', 'Stade Pierre Mauroy', 'Lille', 12, 'Juventus', 1, '1 - 1'),
(62, '4', '05/11/2024 21:00', 'Celtic Park', 'Celtic', 19, 'Leipzig', 32, '3 - 1'),
(63, '4', '05/11/2024 21:00', 'Stadio Renato Dall\'Ara', 'Bologna', 13, 'Monaco', 33, '0 - 1'),
(64, '4', '06/11/2024 18:45', 'Jan Breydelstadion', 'Club Brugge', 17, 'Aston Villa', 4, '1 - 0'),
(65, '4', '06/11/2024 18:45', 'Arena AufSchalke', 'Shakhtar', 14, 'Young Boys', 3, '2 - 1'),
(67, '4', '06/11/2024 21:00', 'Parc des Princes', 'Paris', 23, 'Atleti', 31, '1 - 2'),
(68, '4', '06/11/2024 21:00', 'Stadio San Siro', 'Inter', 22, 'Arsenal', 30, '1 - 0'),
(69, '4', '06/11/2024 21:00', 'Stadion Feijenoord \'De Kuip\'', 'Feyenoord', 27, 'Salzburg', 16, '1 - 3'),
(70, '4', '06/11/2024 21:00', 'Stadion Rajko Mitic', 'Crvena Zvezda', 25, 'Barcelona', 34, '2 - 5'),
(71, '4', '06/11/2024 21:00', 'Stadion Letná', 'Sparta Praha', 15, 'Brest', 35, '1 - 2'),
(72, '4', '06/11/2024 21:00', 'Arena Stuttgart', 'Stuttgart', 10, 'Atalanta', 29, '0 - 2'),
(66, '4', '06/11/2024 21:15', 'Fußball Arena München', 'Bayern München', 5, 'Benfica', 26, '1 - 0'),
(73, '5', '26/11/2024 18:45', 'Národný futbalový štadión', 'S. Bratislava', 20, 'Milan', 7, '2 - 3'),
(74, '5', '26/11/2024 18:45', 'Stadion Letná', 'Sparta Praha', 15, 'Atleti', 31, '0 - 6'),
(75, '5', '26/11/2024 21:00', 'City of Manchester Stadium', 'Man City', 21, 'Feyenoord', 27, '3 - 3'),
(76, '5', '26/11/2024 21:00', 'Fußball Arena München', 'Bayern München', 5, 'Paris', 23, '1 - 0'),
(77, '5', '26/11/2024 21:00', 'Stadio San Siro', 'Inter', 22, 'Leipzig', 32, '1 - 0'),
(78, '5', '26/11/2024 21:00', 'Estadi Olímpic Lluís Companys', 'Barcelona', 34, 'Brest', 35, '3 - 0'),
(79, '5', '26/11/2024 21:00', 'BayArena', 'Leverkusen', 28, 'Salzburg', 16, '5 - 0'),
(80, '5', '26/11/2024 21:00', 'Estádio José Alvalade', 'Sporting CP', 11, 'Arsenal', 30, '1 - 5'),
(81, '5', '26/11/2024 21:00', 'Stadion Wankdorf', 'Young Boys', 3, 'Atalanta', 29, '1 - 6'),
(82, '5', '27/11/2024 18:45', 'Stadion Rajko Mitic', 'Crvena Zvezda', 25, 'Stuttgart', 10, '5 - 1'),
(83, '5', '27/11/2024 18:45', 'Wörthersee Stadion', 'Sturm Graz', 36, 'Girona', 24, '1 - 0'),
(84, '5', '27/11/2024 21:00', 'Anfield', 'Liverpool', 8, 'Real Madrid', 9, '2 - 0'),
(85, '5', '27/11/2024 21:00', 'PSV Stadion', 'PSV', 2, 'Shakhtar', 14, '3 - 2'),
(86, '5', '27/11/2024 21:00', 'Stadion Maksimir', 'GNK Dinamo', 6, 'B. Dortmund', 18, '0 - 3'),
(87, '5', '27/11/2024 21:00', 'Celtic Park', 'Celtic', 19, 'Club Brugge', 17, '1 - 1'),
(88, '5', '27/11/2024 21:00', 'Stade Louis II', 'Monaco', 33, 'Benfica', 26, '2 - 3'),
(89, '5', '27/11/2024 21:00', 'Villa Park', 'Aston Villa', 4, 'Juventus', 1, '0 - 0'),
(90, '5', '27/11/2024 21:00', 'Stadio Renato Dall\'Ara', 'Bologna', 13, 'Lille', 12, '1 - 2'),
(91, '6', '10/12/2024 18:45', 'Stadion Maksimir', 'GNK Dinamo', 6, 'Celtic', 19, '0 - 0'),
(92, '6', '10/12/2024 18:45', 'Estadi Montilivi', 'Girona', 24, 'Liverpool', 8, '0 - 1'),
(93, '6', '10/12/2024 21:00', 'RB Arena', 'Leipzig', 32, 'Aston Villa', 4, '2 - 3'),
(94, '6', '10/12/2024 21:00', 'BayArena', 'Leverkusen', 28, 'Inter', 22, '1 - 0'),
(95, '6', '10/12/2024 21:00', 'Stadio di Bergamo', 'Atalanta', 29, 'Real Madrid', 9, '2 - 3'),
(96, '6', '10/12/2024 21:00', 'Jan Breydelstadion', 'Club Brugge', 17, 'Sporting CP', 11, '2 - 1'),
(97, '6', '10/12/2024 21:00', 'Arena AufSchalke', 'Shakhtar', 14, 'Bayern München', 5, '1 - 5'),
(98, '6', '10/12/2024 21:00', 'Stadion Salzburg', 'Salzburg', 16, 'Paris', 23, '0 - 3'),
(99, '6', '10/12/2024 21:00', 'Stade de Roudourou', 'Brest', 35, 'PSV', 2, '1 - 0'),
(100, '6', '11/12/2024 18:45', 'Estadio Metropolitano', 'Atleti', 31, 'S. Bratislava', 20, '3 - 1'),
(101, '6', '11/12/2024 18:45', 'Stade Pierre Mauroy', 'Lille', 12, 'Sturm Graz', 36, '3 - 2'),
(102, '6', '11/12/2024 21:00', 'BVB Stadion Dortmund', 'B. Dortmund', 18, 'Barcelona', 34, '2 - 3'),
(103, '6', '11/12/2024 21:00', 'Juventus Stadium', 'Juventus', 1, 'Man City', 21, '2 - 0'),
(104, '6', '11/12/2024 21:00', 'Estádio do SL Benfica', 'Benfica', 26, 'Bologna', 13, '0 - 0'),
(105, '6', '11/12/2024 21:00', 'Arsenal Stadium', 'Arsenal', 30, 'Monaco', 33, '3 - 0'),
(106, '6', '11/12/2024 21:00', 'Stadio San Siro', 'Milan', 7, 'Crvena Zvezda', 25, '2 - 1'),
(107, '6', '11/12/2024 21:00', 'Stadion Feijenoord \'De Kuip\'', 'Feyenoord', 27, 'Sparta Praha', 15, '4 - 2'),
(108, '6', '11/12/2024 21:00', 'Arena Stuttgart', 'Stuttgart', 10, 'Young Boys', 3, '5 - 1'),
(109, '7', '21/01/2025 18:45', 'Stadio di Bergamo', 'Atalanta', 29, 'Sturm Graz', 36, '5 - 0'),
(110, '7', '21/01/2025 18:45', 'Stade Louis II', 'Monaco', 33, 'Aston Villa', 4, '1 - 0'),
(111, '7', '21/01/2025 21:00', 'Národný futbalový štadión', 'S. Bratislava', 20, 'Stuttgart', 10, '1 - 3'),
(112, '7', '21/01/2025 21:00', 'Jan Breydelstadion', 'Club Brugge', 17, 'Juventus', 1, '0 - 0'),
(113, '7', '21/01/2025 21:00', 'Estadio Metropolitano', 'Atleti', 31, 'Leverkusen', 28, '2 - 1'),
(114, '7', '21/01/2025 21:00', 'Estádio do SL Benfica', 'Benfica', 26, 'Barcelona', 34, '4 - 5'),
(115, '7', '21/01/2025 21:00', 'Anfield', 'Liverpool', 8, 'Lille', 12, '2 - 1'),
(116, '7', '21/01/2025 21:00', 'Stadio Renato Dall\'Ara', 'Bologna', 13, 'B. Dortmund', 18, '2 - 1'),
(117, '7', '21/01/2025 21:00', 'Stadion Rajko Mitic', 'Crvena Zvezda', 25, 'PSV', 2, '2 - 3'),
(118, '7', '22/01/2025 18:45', 'RB Arena', 'Leipzig', 32, 'Sporting CP', 11, '2 - 1'),
(119, '7', '22/01/2025 18:45', 'Arena AufSchalke', 'Shakhtar', 14, 'Brest', 35, '2 - 0'),
(120, '7', '22/01/2025 21:00', 'Estadio Santiago Bernabéu', 'Real Madrid', 9, 'Salzburg', 16, '5 - 1'),
(121, '7', '22/01/2025 21:00', 'Parc des Princes', 'Paris', 23, 'Man City', 21, '4 - 2'),
(122, '7', '22/01/2025 21:00', 'Stadion Letná', 'Sparta Praha', 15, 'Inter', 22, '0 - 1'),
(123, '7', '22/01/2025 21:00', 'Arsenal Stadium', 'Arsenal', 30, 'GNK Dinamo', 6, '3 - 0'),
(124, '7', '22/01/2025 21:00', 'Celtic Park', 'Celtic', 19, 'Young Boys', 3, '1 - 0'),
(125, '7', '22/01/2025 21:00', 'Stadion Feijenoord \'De Kuip\'', 'Feyenoord', 27, 'Bayern München', 5, '3 - 0'),
(126, '7', '22/01/2025 21:00', 'Stadio San Siro', 'Milan', 7, 'Girona', 24, '1 - 0'),
(127, '8', '29/01/2025 21:00', 'Estádio José Alvalade', 'Sporting CP', 11, 'Bologna', 13, '1 - 1'),
(128, '8', '29/01/2025 21:00', 'PSV Stadion', 'PSV', 2, 'Liverpool', 8, '3 - 2'),
(129, '8', '29/01/2025 21:00', 'Stadion Wankdorf', 'Young Boys', 3, 'Crvena Zvezda', 25, '0 - 1'),
(130, '8', '29/01/2025 21:00', 'Arena Stuttgart', 'Stuttgart', 10, 'Paris', 23, '1 - 4'),
(131, '8', '29/01/2025 21:00', 'Wörthersee Stadion', 'Sturm Graz', 36, 'Leipzig', 32, '1 - 0'),
(132, '8', '29/01/2025 21:00', 'City of Manchester Stadium', 'Man City', 21, 'Club Brugge', 17, '3 - 1'),
(133, '8', '29/01/2025 21:00', 'Fußball Arena München', 'Bayern München', 5, 'S. Bratislava', 20, '3 - 1'),
(134, '8', '29/01/2025 21:00', 'Stadio San Siro', 'Inter', 22, 'Monaco', 33, '3 - 0'),
(135, '8', '29/01/2025 21:00', 'BVB Stadion Dortmund', 'B. Dortmund', 18, 'Shakhtar', 14, '3 - 1'),
(136, '8', '29/01/2025 21:00', 'Estadi Olímpic Lluís Companys', 'Barcelona', 34, 'Atalanta', 29, '2 - 2'),
(137, '8', '29/01/2025 21:00', 'BayArena', 'Leverkusen', 28, 'Sparta Praha', 15, '2 - 0'),
(138, '8', '29/01/2025 21:00', 'Juventus Stadium', 'Juventus', 1, 'Benfica', 26, '0 - 2'),
(139, '8', '29/01/2025 21:00', 'Stadion Maksimir', 'GNK Dinamo', 6, 'Milan', 7, '2 - 1'),
(140, '8', '29/01/2025 21:00', 'Stadion Salzburg', 'Salzburg', 16, 'Atleti', 31, '1 - 4'),
(141, '8', '29/01/2025 21:00', 'Stade Pierre Mauroy', 'Lille', 12, 'Feyenoord', 27, '6 - 1'),
(142, '8', '29/01/2025 21:00', 'Villa Park', 'Aston Villa', 4, 'Celtic', 19, '4 - 2'),
(143, '8', '29/01/2025 21:00', 'Estadi Montilivi', 'Girona', 24, 'Arsenal', 30, '1 - 2'),
(144, '8', '29/01/2025 21:00', 'Stade de Roudourou', 'Brest', 35, 'Real Madrid', 9, '0 - 3'),
(145, 'Play-off Game 1', '11/02/2025 18:45', 'Stade de Roudourou', 'Brest', 35, 'Paris', 23, '0 - 3'),
(146, 'Play-off Game 1', '11/02/2025 21:00', 'City of Manchester Stadium', 'Man City', 21, 'Real Madrid', 9, '2 - 3'),
(147, 'Play-off Game 1', '11/02/2025 21:00', 'Juventus Stadium', 'Juventus', 1, 'PSV', 2, '2 - 1'),
(148, 'Play-off Game 1', '11/02/2025 21:00', 'Estádio José Alvalade', 'Sporting CP', 11, 'B. Dortmund', 18, '0 - 3'),
(149, 'Play-off Game 1', '12/02/2025 18:45', 'Jan Breydelstadion', 'Club Brugge', 17, 'Atalanta', 29, '2 - 1'),
(150, 'Play-off Game 1', '12/02/2025 21:00', 'Stadion Feijenoord \'De Kuip\'', 'Feyenoord', 27, 'Milan', 7, '1 - 0'),
(151, 'Play-off Game 1', '12/02/2025 21:00', 'Celtic Park', 'Celtic', 19, 'Bayern München', 5, '1 - 2'),
(152, 'Play-off Game 1', '12/02/2025 21:00', 'Stade Louis II', 'Monaco', 33, 'Benfica', 26, '0 - 1'),
(153, 'Play-off Game 2', '18/02/2025 18:45', 'Stadio San Siro', 'Milan', 7, 'Feyenoord', 27, '1 - 1'),
(154, 'Play-off Game 2', '18/02/2025 21:00', 'Stadio di Bergamo', 'Atalanta', 29, 'Club Brugge', 17, '1 - 3'),
(155, 'Play-off Game 2', '18/02/2025 21:00', 'Fußball Arena München', 'Bayern München', 5, 'Celtic', 19, '1 - 1'),
(156, 'Play-off Game 2', '18/02/2025 21:00', 'Estádio do SL Benfica', 'Benfica', 26, 'Monaco', 33, '3 - 3'),
(157, 'Play-off Game 2', '19/02/2025 18:45', 'BVB Stadion Dortmund', 'B. Dortmund', 18, 'Sporting CP', 11, '0 - 0'),
(158, 'Play-off Game 2', '19/02/2025 21:00', 'Parc des Princes', 'Paris', 23, 'Brest', 35, '7 - 0'),
(159, 'Play-off Game 2', '19/02/2025 21:00', 'Estadio Santiago Bernabéu', 'Real Madrid', 9, 'Man City', 21, '3 - 1'),
(160, 'Play-off Game 2', '19/02/2025 21:00', 'PSV Stadion', 'PSV', 2, 'Juventus', 1, '3 - 1'),
(161, 'R16 Game 1', '04/03/2025 18:45', 'Jan Breydelstadion', 'Club Brugge', 17, 'Aston Villa', 4, '1 - 3'),
(162, 'R16 Game 1', '04/03/2025 21:00', 'Estadio Santiago Bernabéu', 'Real Madrid', 9, 'Atleti', 31, '2 - 1'),
(163, 'R16 Game 1', '04/03/2025 21:00', 'PSV Stadion', 'PSV', 2, 'Arsenal', 30, '1 - 7'),
(164, 'R16 Game 1', '04/03/2025 21:00', 'BVB Stadion Dortmund', 'B. Dortmund', 18, 'Lille', 12, '1 - 1'),
(165, 'R16 Game 1', '05/03/2025 18:45', 'Stadion Feijenoord \'De Kuip\'', 'Feyenoord', 27, 'Inter', 22, '0 - 2'),
(166, 'R16 Game 1', '05/03/2025 21:00', 'Parc des Princes', 'Paris', 23, 'Liverpool', 8, '0 - 1'),
(167, 'R16 Game 1', '05/03/2025 21:00', 'Fußball Arena München', 'Bayern München', 5, 'Leverkusen', 28, '3 - 0'),
(168, 'R16 Game 1', '05/03/2025 21:00', 'Estádio do SL Benfica', 'Benfica', 26, 'Barcelona', 34, '0 - 1'),
(169, 'R16 Game 2', '11/03/2025 18:45', 'Estadi Olímpic Lluís Companys', 'Barcelona', 34, 'Benfica', 26, '3 - 1'),
(170, 'R16 Game 2', '11/03/2025 21:00', 'Anfield', 'Liverpool', 8, 'Paris', 23, '0 - 1'),
(171, 'R16 Game 2', '11/03/2025 21:00', 'Stadio San Siro', 'Inter', 22, 'Feyenoord', 27, '2 - 1'),
(172, 'R16 Game 2', '11/03/2025 21:00', 'BayArena', 'Leverkusen', 28, 'Bayern München', 5, '0 - 2'),
(173, 'R16 Game 2', '12/03/2025 18:45', 'Stade Pierre Mauroy', 'Lille', 12, 'B. Dortmund', 18, '1 - 2'),
(174, 'R16 Game 2', '12/03/2025 21:00', 'Villa Park', 'Aston Villa', 4, 'Club Brugge', 17, '3 - 0'),
(175, 'R16 Game 2', '12/03/2025 21:00', 'Estadio Metropolitano', 'Atleti', 31, 'Real Madrid', 9, '1 - 0'),
(176, 'R16 Game 2', '12/03/2025 21:00', 'Arsenal Stadium', 'Arsenal', 30, 'PSV', 2, '2 - 2'),
(177, 'QF Game 1', '08/04/2025 21:00', 'Arsenal Stadium', 'Arsenal', 30, 'Real Madrid', 9, '3 - 0'),
(178, 'QF Game 1', '08/04/2025 21:00', 'Fußball Arena München', 'Bayern München', 5, 'Inter', 22, '1 - 2'),
(179, 'QF Game 1', '09/04/2025 21:00', 'Parc des Princes', 'Paris', 23, 'Aston Villa', 4, '3 - 1'),
(180, 'QF Game 1', '09/04/2025 21:00', 'Estadi Olímpic Lluís Companys', 'Barcelona', 34, 'B. Dortmund', 18, '4 - 0'),
(181, 'QF Game 2', '15/04/2025 21:00', 'BVB Stadion Dortmund', 'B. Dortmund', 18, 'Barcelona', 34, '3 - 1'),
(182, 'QF Game 2', '15/04/2025 21:00', 'Villa Park', 'Aston Villa', 4, 'Paris', 23, '3 - 2'),
(183, 'QF Game 2', '16/04/2025 21:00', 'Stadio San Siro', 'Inter', 22, 'Bayern München', 5, '2 - 2'),
(184, 'QF Game 2', '16/04/2025 21:00', 'Estadio Santiago Bernabéu', 'Real Madrid', 9, 'Arsenal', 30, '1 - 2'),
(185, 'SF Game 1', '29/04/2025 21:00', 'Arsenal Stadium', 'Arsenal', 30, 'Paris', 23, '0 - 1'),
(186, 'SF Game 1', '30/04/2025 21:00', 'Estadi Olímpic Lluís Companys', 'Barcelona', 34, 'Inter', 22, '3 - 3'),
(187, 'SF Game 2', '06/05/2025 21:00', 'Stadio San Siro', 'Inter', 22, 'Barcelona', 34, '4 - 3'),
(188, 'SF Game 2', '07/05/2025 21:00', 'Parc des Princes', 'Paris', 23, 'Arsenal', 30, '2 - 1'),
(189, 'Final', '31/05/2025 21:00', 'Fußball Arena München', 'Paris', 23, 'Inter', 22, '5 - 0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `verein_id`
--

CREATE TABLE `verein_id` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `verein_id`
--

INSERT INTO `verein_id` (`id`, `name`) VALUES
(30, 'Arsenal'),
(4, 'Aston Villa'),
(29, 'Atalanta'),
(31, 'Atleti'),
(18, 'B. Dortmund'),
(34, 'Barcelona'),
(5, 'Bayern München'),
(26, 'Benfica'),
(13, 'Bologna'),
(35, 'Brest'),
(19, 'Celtic'),
(17, 'Club Brugge'),
(25, 'Crvena Zvezda'),
(27, 'Feyenoord'),
(24, 'Girona'),
(6, 'GNK Dinamo'),
(22, 'Inter'),
(1, 'Juventus'),
(32, 'Leipzig'),
(28, 'Leverkusen'),
(12, 'Lille'),
(8, 'Liverpool'),
(21, 'Man City'),
(7, 'Milan'),
(33, 'Monaco'),
(23, 'Paris'),
(2, 'PSV'),
(9, 'Real Madrid'),
(20, 'S. Bratislava'),
(16, 'Salzburg'),
(14, 'Shakhtar'),
(15, 'Sparta Praha'),
(11, 'Sporting CP'),
(36, 'Sturm Graz'),
(10, 'Stuttgart'),
(3, 'Young Boys');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `spielplan_cl`
--
ALTER TABLE `spielplan_cl`
  ADD KEY `away_id` (`away_id`),
  ADD KEY `home_id` (`home_id`);

--
-- Indizes für die Tabelle `verein_id`
--
ALTER TABLE `verein_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Name` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
