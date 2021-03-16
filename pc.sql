-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 16, 2021 alle 19:15
-- Versione del server: 10.4.18-MariaDB
-- Versione PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcf`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `pc`
--

CREATE TABLE `pc` (
  `id` int(3) NOT NULL,
  `marca` varchar(10) NOT NULL,
  `modello` varchar(20) NOT NULL,
  `so` varchar(10) NOT NULL,
  `ram` int(2) NOT NULL,
  `cpu` varchar(20) NOT NULL,
  `gpu` varchar(20) NOT NULL,
  `tipo_memoria` varchar(3) NOT NULL,
  `capienza` int(4) NOT NULL,
  `prezzo` float NOT NULL,
  `qp` float NOT NULL,
  `descrizione` text NOT NULL,
  `link` varchar(600) NOT NULL,
  `immagine` varchar(600) NOT NULL,
  `punteggio_gaming` float NOT NULL,
  `punteggio_workstation` float NOT NULL,
  `punteggio_editing` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `pc`
--

INSERT INTO `pc` (`id`, `marca`, `modello`, `so`, `ram`, `cpu`, `gpu`, `tipo_memoria`, `capienza`, `prezzo`, `qp`, `descrizione`, `link`, `immagine`, `punteggio_gaming`, `punteggio_workstation`, `punteggio_editing`) VALUES
(1, 'Apple', 'Macbook Air', 'macOs', 8, 'Apple M1', '', 'SSD', 256, 1159, 7.9, '', 'https://www.amazon.it/Novit%C3%A0-Apple-MacBook-8-core-GPU-7%E2%80%91core/dp/B08N5WMGBP/ref=sr_1_1_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3NXKOORAQGZ08&dchild=1&keywords=macbook+air+m1&qid=1615916869&quartzVehicle=16-179&replacementKeywords=macbook+air&sprefix=mac%2Caps%2C210&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFIRjJTSUEyOFpSS1cmZW5jcnlwdGVkSWQ9QTAwNTkyNDgxOVQwWVcyWEY5UU41JmVuY3J5cHRlZEFkSWQ9QTA4OTgyMjYzMVVLUERNUExFQllaJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==', 'Macbook_air_m1.png', 5.8, 8.2, 6.2),
(2, 'Apple', 'Macbook Air', 'macOs', 8, 'Apple M1', '', 'SSD', 512, 1429, 7, '', 'https://www.amazon.it/Novit%C3%A0-Apple-MacBook-8-core-GPU-7%E2%80%91core/dp/B08N5VQCXR/ref=sr_1_1_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=IIQLB6GRSUEM&dchild=1&keywords=macbook%2Bair%2Bm1&qid=1615917374&quartzVehicle=16-179&replacementKeywords=macbook%2Bair&sprefix=macbook%2Caps%2C198&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExOElQNkVXWkFSVkEyJmVuY3J5cHRlZElkPUEwNjc2NDYyMVhTSjhMSEM2RU42TCZlbmNyeXB0ZWRBZElkPUEwODk4MjI2MzFVS1BETVBMRUJZWiZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU&th=1', 'Macbook_air_m1.png', 5.8, 8.2, 6.2);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `pc`
--
ALTER TABLE `pc`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
