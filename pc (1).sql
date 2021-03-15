-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 15, 2021 alle 20:12
-- Versione del server: 10.4.17-MariaDB
-- Versione PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pc`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `pc`
--

CREATE TABLE `pc` (
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
  `link` varchar(50) NOT NULL,
  `immagine` varchar(50) NOT NULL,
  `punteggio_gaming` float NOT NULL,
  `punteggio_workstation` float NOT NULL,
  `punteggio_editing` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`marca`,`modello`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
