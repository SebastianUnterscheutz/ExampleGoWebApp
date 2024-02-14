-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Erstellungszeit: 14. Feb 2024 um 08:39
-- Server-Version: 11.2.2-MariaDB-1:11.2.2+maria~ubu2204
-- PHP-Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `snippetbox`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `calendar_entries`
--

CREATE TABLE `calendar_entries` (
  `id` int(11) NOT NULL,
  `calendar` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `snippets_id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `event_time` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `calendar_entries`
--

INSERT INTO `calendar_entries` (`id`, `calendar`, `title`, `snippets_id`, `owner`, `created`, `event_time`) VALUES
(1, 1, 'Das ist ein Test', 200, 4, '2024-02-08 14:14:54', '2024-02-21 15:30:36'),
(2, 1, 'Das ist ein Test', 202, 4, '2024-02-09 08:20:45', '2025-12-12 12:25:00'),
(3, 1, 'last TEst', 203, 4, '2024-02-09 12:12:32', '2024-08-01 12:00:00'),
(4, 1, 'Neuer Test', 204, 4, '2024-02-09 12:36:12', '2024-02-10 12:00:00'),
(5, 1, '<script> alert(\"foobar\"); </script>', 205, 4, '2024-02-09 13:07:33', '2024-02-16 02:01:00'),
(6, 1, 'dcfvgbhn', 206, 4, '2024-02-09 13:10:30', '2024-02-12 01:03:00'),
(7, 1, 'bn m,.-', 207, 4, '2024-02-09 13:10:43', '2024-02-12 01:03:00'),
(8, 1, 'OR 1=1;', 208, 4, '2024-02-09 13:13:24', '2024-02-16 01:01:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sessions`
--

CREATE TABLE `sessions` (
  `token` char(43) NOT NULL,
  `data` blob NOT NULL,
  `expiry` timestamp(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `sessions`
--

INSERT INTO `sessions` (`token`, `data`, `expiry`) VALUES
('rlSMNmO0FCPipnwFll9-UURno4WL6WI_j9iso67BNqA', 0x257f030102ff800001020108446561646c696e6501ff8200010656616c75657301ff8400000010ff810501010454696d6501ff8200000027ff83040101176d61705b737472696e675d696e74657266616365207b7d01ff8400010c0110000032ff80010f010000000edd58c31c0a5360cdffff01011361757468656e7469636174656455736572494403696e740402000800, '2024-02-10 01:06:36.173236');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `snippets`
--

CREATE TABLE `snippets` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `snippets`
--

INSERT INTO `snippets` (`id`, `title`, `content`, `created`, `expires`) VALUES
(1, 'An old silent pond', 'An old silent pond...\nA frog jumps into the pond,\nsplash! Silence again.\n\n– Matsuo Bashō', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(2, 'Over the wintry forest', 'Over the wintry\nforest, winds howl in rage\nwith no leaves to blow.\n\n– Natsume Soseki', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(3, 'First autumn morning', 'First autumn morning\nthe mirror I stare into\nshows my father\'s face.\n\n– Murakami Kijo', '2024-02-06 11:49:55', '2024-02-13 11:49:55'),
(4, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:14:40', '2024-02-13 12:14:40'),
(5, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:14:42', '2024-02-13 12:14:42'),
(6, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:13', '2024-02-13 12:15:13'),
(7, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(8, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(9, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(10, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(11, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(12, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(13, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(14, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:16', '2024-02-13 12:15:16'),
(15, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:41', '2024-02-13 12:15:41'),
(16, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:43', '2024-02-13 12:15:43'),
(17, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(18, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(19, 'O snail', 'O snail\nClimb Mount Fuji,\nBut slowly, slowly!\n\n– Kobayashi Issa', '2024-02-06 12:15:45', '2024-02-13 12:15:45'),
(20, 'Das ist ein Test', 'Das ist ein Test!\r\n\r\n\r\nBitte lösch das in 7 Tagen. ', '2024-02-06 14:19:44', '2024-02-13 14:19:44'),
(21, 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', '2024-02-07 07:18:31', '2025-02-06 07:18:31'),
(22, 'Das ist ein Test!a', '<h1>Test<h1>', '2024-02-07 07:33:20', '2025-02-06 07:33:20'),
(23, 'hetzner test', 'Das ist ein Test.\r\nBitte teste das hier. \r\nDas ist mir zu lagweilig! ', '2024-02-07 12:08:00', '2025-02-06 12:08:00'),
(24, 'Das ist ein Test', 'Das ist einTest', '2024-02-08 11:55:59', '2024-02-09 11:55:59'),
(25, '<html>Das ist ein test</html>', '<html>Das ist ein test</html>', '2024-02-08 13:22:08', '2025-02-07 13:22:08'),
(26, 'An old silent pond', 'An old silent pond...\r\nA frog jumps into the pond,\r\nsplash! Silence again.\r\n\r\n– Matsuo Bashō', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(27, 'Over the wintry forest', 'Over the wintry\r\nforest, winds howl in rage\r\nwith no leaves to blow.\r\n\r\n– Natsume Soseki', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(28, 'First autumn morning', 'First autumn morning\r\nthe mirror I stare into\r\nshows my father\'s face.\r\n\r\n– Murakami Kijo', '2024-02-06 11:49:55', '2024-02-13 11:49:55'),
(29, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:40', '2024-02-13 12:14:40'),
(30, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:42', '2024-02-13 12:14:42'),
(31, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:13', '2024-02-13 12:15:13'),
(32, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(33, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(34, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(35, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(36, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(37, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(38, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(39, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:16', '2024-02-13 12:15:16'),
(40, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:41', '2024-02-13 12:15:41'),
(41, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:43', '2024-02-13 12:15:43'),
(42, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(43, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(44, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:45', '2024-02-13 12:15:45'),
(45, 'Das ist ein Test', 'Das ist ein Test!\r\n\r\n\r\nBitte lösch das in 7 Tagen. ', '2024-02-06 14:19:44', '2024-02-13 14:19:44'),
(46, 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', '2024-02-07 07:18:31', '2025-02-06 07:18:31'),
(47, 'Das ist ein Test!a', '<h1>Test<h1>', '2024-02-07 07:33:20', '2025-02-06 07:33:20'),
(48, 'hetzner test', 'Das ist ein Test.\r\nBitte teste das hier. \r\nDas ist mir zu lagweilig! ', '2024-02-07 12:08:00', '2025-02-06 12:08:00'),
(49, 'Das ist ein Test', 'Das ist einTest', '2024-02-08 11:55:59', '2024-02-09 11:55:59'),
(50, '<html>Das ist ein test</html>', '<html>Das ist ein test</html>', '2024-02-08 13:22:08', '2025-02-07 13:22:08'),
(51, 'An old silent pond', 'An old silent pond...\r\nA frog jumps into the pond,\r\nsplash! Silence again.\r\n\r\n– Matsuo Bashō', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(52, 'Over the wintry forest', 'Over the wintry\r\nforest, winds howl in rage\r\nwith no leaves to blow.\r\n\r\n– Natsume Soseki', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(53, 'First autumn morning', 'First autumn morning\r\nthe mirror I stare into\r\nshows my father\'s face.\r\n\r\n– Murakami Kijo', '2024-02-06 11:49:55', '2024-02-13 11:49:55'),
(54, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:40', '2024-02-13 12:14:40'),
(55, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:42', '2024-02-13 12:14:42'),
(56, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:13', '2024-02-13 12:15:13'),
(57, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(58, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(59, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(60, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(61, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(62, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(63, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(64, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:16', '2024-02-13 12:15:16'),
(65, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:41', '2024-02-13 12:15:41'),
(66, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:43', '2024-02-13 12:15:43'),
(67, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(68, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(69, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:45', '2024-02-13 12:15:45'),
(70, 'Das ist ein Test', 'Das ist ein Test!\r\n\r\n\r\nBitte lösch das in 7 Tagen. ', '2024-02-06 14:19:44', '2024-02-13 14:19:44'),
(71, 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', '2024-02-07 07:18:31', '2025-02-06 07:18:31'),
(72, 'Das ist ein Test!a', '<h1>Test<h1>', '2024-02-07 07:33:20', '2025-02-06 07:33:20'),
(73, 'hetzner test', 'Das ist ein Test.\r\nBitte teste das hier. \r\nDas ist mir zu lagweilig! ', '2024-02-07 12:08:00', '2025-02-06 12:08:00'),
(74, 'Das ist ein Test', 'Das ist einTest', '2024-02-08 11:55:59', '2024-02-09 11:55:59'),
(75, '<html>Das ist ein test</html>', '<html>Das ist ein test</html>', '2024-02-08 13:22:08', '2025-02-07 13:22:08'),
(76, 'An old silent pond', 'An old silent pond...\r\nA frog jumps into the pond,\r\nsplash! Silence again.\r\n\r\n– Matsuo Bashō', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(77, 'Over the wintry forest', 'Over the wintry\r\nforest, winds howl in rage\r\nwith no leaves to blow.\r\n\r\n– Natsume Soseki', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(78, 'First autumn morning', 'First autumn morning\r\nthe mirror I stare into\r\nshows my father\'s face.\r\n\r\n– Murakami Kijo', '2024-02-06 11:49:55', '2024-02-13 11:49:55'),
(79, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:40', '2024-02-13 12:14:40'),
(80, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:42', '2024-02-13 12:14:42'),
(81, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:13', '2024-02-13 12:15:13'),
(82, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(83, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(84, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(85, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(86, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(87, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(88, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(89, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:16', '2024-02-13 12:15:16'),
(90, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:41', '2024-02-13 12:15:41'),
(91, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:43', '2024-02-13 12:15:43'),
(92, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(93, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(94, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:45', '2024-02-13 12:15:45'),
(95, 'Das ist ein Test', 'Das ist ein Test!\r\n\r\n\r\nBitte lösch das in 7 Tagen. ', '2024-02-06 14:19:44', '2024-02-13 14:19:44'),
(96, 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', '2024-02-07 07:18:31', '2025-02-06 07:18:31'),
(97, 'Das ist ein Test!a', '<h1>Test<h1>', '2024-02-07 07:33:20', '2025-02-06 07:33:20'),
(98, 'hetzner test', 'Das ist ein Test.\r\nBitte teste das hier. \r\nDas ist mir zu lagweilig! ', '2024-02-07 12:08:00', '2025-02-06 12:08:00'),
(99, 'Das ist ein Test', 'Das ist einTest', '2024-02-08 11:55:59', '2024-02-09 11:55:59'),
(100, '<html>Das ist ein test</html>', '<html>Das ist ein test</html>', '2024-02-08 13:22:08', '2025-02-07 13:22:08'),
(101, 'An old silent pond', 'An old silent pond...\r\nA frog jumps into the pond,\r\nsplash! Silence again.\r\n\r\n– Matsuo Bashō', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(102, 'Over the wintry forest', 'Over the wintry\r\nforest, winds howl in rage\r\nwith no leaves to blow.\r\n\r\n– Natsume Soseki', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(103, 'First autumn morning', 'First autumn morning\r\nthe mirror I stare into\r\nshows my father\'s face.\r\n\r\n– Murakami Kijo', '2024-02-06 11:49:55', '2024-02-13 11:49:55'),
(104, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:40', '2024-02-13 12:14:40'),
(105, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:42', '2024-02-13 12:14:42'),
(106, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:13', '2024-02-13 12:15:13'),
(107, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(108, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(109, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(110, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(111, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(112, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(113, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(114, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:16', '2024-02-13 12:15:16'),
(115, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:41', '2024-02-13 12:15:41'),
(116, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:43', '2024-02-13 12:15:43'),
(117, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(118, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(119, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:45', '2024-02-13 12:15:45'),
(120, 'Das ist ein Test', 'Das ist ein Test!\r\n\r\n\r\nBitte lösch das in 7 Tagen. ', '2024-02-06 14:19:44', '2024-02-13 14:19:44'),
(121, 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', '2024-02-07 07:18:31', '2025-02-06 07:18:31'),
(122, 'Das ist ein Test!a', '<h1>Test<h1>', '2024-02-07 07:33:20', '2025-02-06 07:33:20'),
(123, 'hetzner test', 'Das ist ein Test.\r\nBitte teste das hier. \r\nDas ist mir zu lagweilig! ', '2024-02-07 12:08:00', '2025-02-06 12:08:00'),
(124, 'Das ist ein Test', 'Das ist einTest', '2024-02-08 11:55:59', '2024-02-09 11:55:59'),
(125, '<html>Das ist ein test</html>', '<html>Das ist ein test</html>', '2024-02-08 13:22:08', '2025-02-07 13:22:08'),
(126, 'An old silent pond', 'An old silent pond...\r\nA frog jumps into the pond,\r\nsplash! Silence again.\r\n\r\n– Matsuo Bashō', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(127, 'Over the wintry forest', 'Over the wintry\r\nforest, winds howl in rage\r\nwith no leaves to blow.\r\n\r\n– Natsume Soseki', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(128, 'First autumn morning', 'First autumn morning\r\nthe mirror I stare into\r\nshows my father\'s face.\r\n\r\n– Murakami Kijo', '2024-02-06 11:49:55', '2024-02-13 11:49:55'),
(129, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:40', '2024-02-13 12:14:40'),
(130, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:42', '2024-02-13 12:14:42'),
(131, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:13', '2024-02-13 12:15:13'),
(132, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(133, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(134, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(135, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(136, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(137, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(138, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(139, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:16', '2024-02-13 12:15:16'),
(140, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:41', '2024-02-13 12:15:41'),
(141, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:43', '2024-02-13 12:15:43'),
(142, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(143, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(144, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:45', '2024-02-13 12:15:45'),
(145, 'Das ist ein Test', 'Das ist ein Test!\r\n\r\n\r\nBitte lösch das in 7 Tagen. ', '2024-02-06 14:19:44', '2024-02-13 14:19:44'),
(146, 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', '2024-02-07 07:18:31', '2025-02-06 07:18:31'),
(147, 'Das ist ein Test!a', '<h1>Test<h1>', '2024-02-07 07:33:20', '2025-02-06 07:33:20'),
(148, 'hetzner test', 'Das ist ein Test.\r\nBitte teste das hier. \r\nDas ist mir zu lagweilig! ', '2024-02-07 12:08:00', '2025-02-06 12:08:00'),
(149, 'Das ist ein Test', 'Das ist einTest', '2024-02-08 11:55:59', '2024-02-09 11:55:59'),
(150, '<html>Das ist ein test</html>', '<html>Das ist ein test</html>', '2024-02-08 13:22:08', '2025-02-07 13:22:08'),
(151, 'An old silent pond', 'An old silent pond...\r\nA frog jumps into the pond,\r\nsplash! Silence again.\r\n\r\n– Matsuo Bashō', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(152, 'Over the wintry forest', 'Over the wintry\r\nforest, winds howl in rage\r\nwith no leaves to blow.\r\n\r\n– Natsume Soseki', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(153, 'First autumn morning', 'First autumn morning\r\nthe mirror I stare into\r\nshows my father\'s face.\r\n\r\n– Murakami Kijo', '2024-02-06 11:49:55', '2024-02-13 11:49:55'),
(154, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:40', '2024-02-13 12:14:40'),
(155, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:42', '2024-02-13 12:14:42'),
(156, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:13', '2024-02-13 12:15:13'),
(157, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(158, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(159, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(160, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(161, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(162, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(163, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(164, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:16', '2024-02-13 12:15:16'),
(165, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:41', '2024-02-13 12:15:41'),
(166, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:43', '2024-02-13 12:15:43'),
(167, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(168, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(169, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:45', '2024-02-13 12:15:45'),
(170, 'Das ist ein Test', 'Das ist ein Test!\r\n\r\n\r\nBitte lösch das in 7 Tagen. ', '2024-02-06 14:19:44', '2024-02-13 14:19:44'),
(171, 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', '2024-02-07 07:18:31', '2025-02-06 07:18:31'),
(172, 'Das ist ein Test!a', '<h1>Test<h1>', '2024-02-07 07:33:20', '2025-02-06 07:33:20'),
(173, 'hetzner test', 'Das ist ein Test.\r\nBitte teste das hier. \r\nDas ist mir zu lagweilig! ', '2024-02-07 12:08:00', '2025-02-06 12:08:00'),
(174, 'Das ist ein Test', 'Das ist einTest', '2024-02-08 11:55:59', '2024-02-09 11:55:59'),
(175, '<html>Das ist ein test</html>', '<html>Das ist ein test</html>', '2024-02-08 13:22:08', '2025-02-07 13:22:08'),
(176, 'An old silent pond', 'An old silent pond...\r\nA frog jumps into the pond,\r\nsplash! Silence again.\r\n\r\n– Matsuo Bashō', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(177, 'Over the wintry forest', 'Over the wintry\r\nforest, winds howl in rage\r\nwith no leaves to blow.\r\n\r\n– Natsume Soseki', '2024-02-06 11:49:55', '2025-02-05 11:49:55'),
(178, 'First autumn morning', 'First autumn morning\r\nthe mirror I stare into\r\nshows my father\'s face.\r\n\r\n– Murakami Kijo', '2024-02-06 11:49:55', '2024-02-13 11:49:55'),
(179, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:40', '2024-02-13 12:14:40'),
(180, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:14:42', '2024-02-13 12:14:42'),
(181, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:13', '2024-02-13 12:15:13'),
(182, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(183, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(184, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:14', '2024-02-13 12:15:14'),
(185, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(186, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(187, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(188, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:15', '2024-02-13 12:15:15'),
(189, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:16', '2024-02-13 12:15:16'),
(190, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:41', '2024-02-13 12:15:41'),
(191, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:43', '2024-02-13 12:15:43'),
(192, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(193, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:44', '2024-02-13 12:15:44'),
(194, 'O snail', 'O snail\r\nClimb Mount Fuji,\r\nBut slowly, slowly!\r\n\r\n– Kobayashi Issa', '2024-02-06 12:15:45', '2024-02-13 12:15:45'),
(195, 'Das ist ein Test', 'Das ist ein Test!\r\n\r\n\r\nBitte lösch das in 7 Tagen. ', '2024-02-06 14:19:44', '2024-02-13 14:19:44'),
(196, 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', 'Das ist ein NEW Test. Das ist jetzt länger las 100 Zeichen! ', '2024-02-07 07:18:31', '2025-02-06 07:18:31'),
(197, 'Das ist ein Test!a', '<h1>Test<h1>', '2024-02-07 07:33:20', '2025-02-06 07:33:20'),
(198, 'hetzner test', 'Das ist ein Test.\r\nBitte teste das hier. \r\nDas ist mir zu lagweilig! ', '2024-02-07 12:08:00', '2025-02-06 12:08:00'),
(199, 'Das ist ein Test', 'Das ist einTest', '2024-02-08 11:55:59', '2024-02-09 11:55:59'),
(200, '<html>Das ist ein test</html>', '<html>Das ist ein test</html>', '2024-02-08 13:22:08', '2025-02-07 13:22:08'),
(201, 'test', 'Das ist ein Dos Test!', '2024-02-08 13:30:10', '2025-02-07 13:30:10'),
(202, 'Das ist ein Test', 'Das ist ein Test ', '2024-02-09 08:20:45', '2025-02-08 08:20:45'),
(203, 'last TEst', 'Das ist ein Test', '2024-02-09 12:12:32', '2025-02-08 12:12:32'),
(204, 'Neuer Test', 'dwuaidaiwdjiwadjiwda', '2024-02-09 12:36:12', '2025-02-08 12:36:12'),
(205, '<script> alert(\"foobar\"); </script>', 'djvcklb', '2024-02-09 13:07:33', '2025-02-08 13:07:33'),
(206, 'dcfvgbhn', 'fghj', '2024-02-09 13:10:30', '2025-02-08 13:10:30'),
(207, 'bn m,.-', 'vbnm', '2024-02-09 13:10:43', '2025-02-08 13:10:43'),
(208, 'OR 1=1;', 'dsfhjkdhfjksdf', '2024-02-09 13:13:24', '2025-02-08 13:13:24');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hashed_password` char(60) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `hashed_password`, `created`) VALUES
(1, 'Test', 'test@test.test', '$2a$12$k2aiMOhySgzOvCig7tWDGOpzoQG01PCU5Y9.msHlOfYwWwmUSLwBW', '2024-02-08 07:49:28'),
(3, 'test2', 'test2@test.test', '$2a$12$I/zvu2/XTZI0lS0kCqbXHe1g7ek76tFqBsXrdqr56EeDy2rbnnXf2', '2024-02-08 07:50:07'),
(4, 'test3', 'test3@test.de', '$2a$12$8GwQvtp2yYtyNMbnt6897e43QJsQCgdzJ8Pgx6yoJ5LuRqbtnJkBK', '2024-02-08 10:58:06');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `calendar_entries`
--
ALTER TABLE `calendar_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendar` (`calendar`),
  ADD KEY `Snippets_id` (`snippets_id`),
  ADD KEY `owner_id` (`owner`);

--
-- Indizes für die Tabelle `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`token`),
  ADD KEY `sessions_expiry_idx` (`expiry`);

--
-- Indizes für die Tabelle `snippets`
--
ALTER TABLE `snippets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_snippets_created` (`created`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_uc_email` (`email`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `calendar_entries`
--
ALTER TABLE `calendar_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `snippets`
--
ALTER TABLE `snippets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `calendar_entries`
--
ALTER TABLE `calendar_entries`
  ADD CONSTRAINT `Snippets_id` FOREIGN KEY (`snippets_id`) REFERENCES `snippets` (`id`),
  ADD CONSTRAINT `owner_id` FOREIGN KEY (`owner`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
