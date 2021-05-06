-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 06, 2021 alle 11:15
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
  `so` varchar(20) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `pc`
--

INSERT INTO `pc` (`id`, `marca`, `modello`, `so`, `ram`, `cpu`, `gpu`, `tipo_memoria`, `capienza`, `prezzo`, `qp`, `descrizione`, `link`, `immagine`, `punteggio_gaming`, `punteggio_workstation`, `punteggio_editing`) VALUES
(1, 'Apple', 'Macbook Air', 'macOs', 8, 'Apple M1', '', 'SSD', 256, 1159, 7.9, '', 'https://www.amazon.it/Novit%C3%A0-Apple-MacBook-8-core-GPU-7%E2%80%91core/dp/B08N5WMGBP/ref=sr_1_1_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3NXKOORAQGZ08&dchild=1&keywords=macbook+air+m1&qid=1615916869&quartzVehicle=16-179&replacementKeywords=macbook+air&sprefix=mac%2Caps%2C210&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFIRjJTSUEyOFpSS1cmZW5jcnlwdGVkSWQ9QTAwNTkyNDgxOVQwWVcyWEY5UU41JmVuY3J5cHRlZEFkSWQ9QTA4OTgyMjYzMVVLUERNUExFQllaJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==', 'Macbook_air_m1.png', 5.8, 8.2, 6.2),
(2, 'Apple', 'Macbook Air', 'macOs', 8, 'Apple M1', '', 'SSD', 512, 1429, 7, '', 'https://www.amazon.it/Novit%C3%A0-Apple-MacBook-8-core-GPU-7%E2%80%91core/dp/B08N5VQCXR/ref=sr_1_1_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=IIQLB6GRSUEM&dchild=1&keywords=macbook%2Bair%2Bm1&qid=1615917374&quartzVehicle=16-179&replacementKeywords=macbook%2Bair&sprefix=macbook%2Caps%2C198&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExOElQNkVXWkFSVkEyJmVuY3J5cHRlZElkPUEwNjc2NDYyMVhTSjhMSEM2RU42TCZlbmNyeXB0ZWRBZElkPUEwODk4MjI2MzFVS1BETVBMRUJZWiZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU&th=1', 'Macbook_air_m1.png', 5.8, 8.2, 6.2),
(20, 'Acer', 'Aspire 5', 'Windows 10 Home ', 16, 'Intel Core i5-1135G7', 'Intel Iris Xe Graphi', 'SSD', 1000, 985.21, 0, '', 'https://www.amazon.it/Acer-A515-56-511A-Multimedia-i5-1135G7-Graphics/dp/B08MC1LN2Y/ref=sr_1_2?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=acer+aspire+5&qid=1616684340&sr=8-2', '', 0, 0, 0),
(21, 'Acer', 'Aspire 5', 'Windows 10 Home ', 12, 'Intel Core i7-8550U', 'NVIDIA GeForce MX130', 'SSD', 256, 480, 0, '', 'https://www.amazon.it/Acer-Notebook-A515-51G-85DJ-i7-8550U-ComfyView/dp/B0792FNRJX/ref=sr_1_3?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3QSJSB3FZQTHI&dchild=1&keywords=acer+aspire+5&qid=1616686779&s=pc&sprefix=acer+aspire%2Ccomputers%2C262&sr=1-3', '', 0, 0, 0),
(22, 'Acer', 'Aspire 3', 'Windows 10 Home ', 8, 'Intel Core i5-1035G1', 'NVIDIA GeForce MX330', 'SSD', 256, 755, 0, '', 'https://www.amazon.it/ACER-ASPIRE-A315-57G-59FS-i5-1035G1-256GB-NVIDIA/dp/B08NTNSD4L/ref=sr_1_6?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=acer+aspire+3&qid=1616687298&s=pc&sr=1-6', '', 0, 0, 0),
(23, 'Acer', 'Swift 5', 'Windows 10 Home ', 8, 'Intel Core i7-1165G7', 'NVIDIA GeForce MX350', 'SSD', 512, 1361.73, 0, '', 'https://www.amazon.it/ACER-SWIFT-SF514-55GT-78FL-i7-1165G7-NVMe-NVIDIA/dp/B08NTV2X7V/ref=sr_1_1?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=YKZZFQ7JJUO0&dchild=1&keywords=acer+swift+5&qid=1616687586&s=pc&sprefix=acer+s%2Ccomputers%2C211&sr=1-1', '', 0, 0, 0),
(49, 'HP', 'HP 240 G8', 'Windows 10 Pro', 8, 'Intel Core i5-1035G1', 'Intel UHD integrata', 'SSD', 256, 641.5, 0, '', 'https://www.amazon.it/HP-240-G8-Computer-portatile/dp/B08T6NMJ9K/ref=sr_1_4?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+240+g8&qid=1616683912&sr=8-4', '', 0, 0, 0),
(50, 'HP', 'HP 240 G8', 'FreeDOS', 8, 'Intel Core i3-1005G1', 'Intel UHD integrata', 'SSD', 256, 498.84, 0, '', 'https://www.amazon.it/Notebook-i3-1005G1-grafica-FREEDOS-Antiriflesso/dp/B08YRLPQ9L/ref=sr_1_9?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+240+g8&qid=1616686526&sr=8-9', '', 0, 0, 0),
(51, 'HP', 'HP 240 G8', 'Windows 10 Pro', 8, 'Intel Core i7-1065G7', 'Intel UHD integrata', 'SSD', 256, 819, 0, '', 'https://www.amazon.it/HP-Notebook-i7-1065G7-Antiriflesso-Fotocamera/dp/B08TWX5YNM/ref=sr_1_15?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+240+g8&qid=1616686526&sr=8-15', '', 0, 0, 0),
(52, 'HP', 'HP 240 G8', 'Windows 10 Home', 12, 'Intel Core i5-1035G1', 'Intel UHD integrata', 'SSD', 256, 849.99, 0, '', 'https://www.amazon.it/Notebook-I5-1035G1-Display-Bluetooth-Antivirus/dp/B08W1FGXP7/ref=sr_1_24?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+240+g8&qid=1616686526&sr=8-24', '', 0, 0, 0),
(53, 'HP', 'HP 240 G8', 'Windows 10 Pro', 8, 'Intel Core i3-1005G1', 'Intel UHD integrata', 'SSD', 256, 595.79, 0, '', 'https://www.amazon.it/HP-240-G8-i3-1005G1-NVMe-WIN/dp/B08VJL7WBQ/ref=sr_1_25?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+240+g8&qid=1616686526&sr=8-25', '', 0, 0, 0),
(54, 'HP', 'HP 255 G8', 'Windows 10 Pro', 8, 'AMD A4 3020', 'AMD Radeon R3', 'SSD', 256, 596, 0, '', 'https://www.amazon.it/Notebook-9125-fino-Bluetooth-Italiano-Garanzia/dp/B07MFFS2MV/ref=sr_1_1_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+255+G8&qid=1617785421&sr=8-1-spons&psc=1&smid=A1SZNFN635QQI6&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFGNllLSEY1RFhPNkgmZW5jcnlwdGVkSWQ9QTAxMjg2OTRBVzNKWDVBRVRVUkQmZW5jcnlwdGVkQWRJZD1BMDAwMzI2MjNWVkxXRTAyQlhFRk0md2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl', '', 0, 0, 0),
(55, 'HP', 'HP 255 G8', 'Windows 10 Pro', 8, 'AMD Athlon 3020e', 'AMD Radeon', 'SSD', 256, 538, 0, '', 'https://www.amazon.it/HP-255-G8-portatile-Bluetooth/dp/B08TQH1PN5/ref=sr_1_2_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+255+G8&qid=1617785421&sr=8-2-spons&psc=1&smid=A8S1KWNUMXYCT&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFGNllLSEY1RFhPNkgmZW5jcnlwdGVkSWQ9QTAxMjg2OTRBVzNKWDVBRVRVUkQmZW5jcnlwdGVkQWRJZD1BMDk4OTQ3NTM1N1c2NkFJV1o1RFUmd2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl', '', 0, 0, 0),
(56, 'HP', 'HP 255 G7', 'Windows 10 Pro', 8, 'AMD Athlon Silver 30', 'AMD Radeon R3', 'SSD', 256, 594.9, 0, '', 'https://www.amazon.it/Notebook-Portatile-Display-Masterizzatore-Bluetooth/dp/B07SZ74WMQ/ref=sr_1_1_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+255+g7&qid=1617787931&sr=8-1-spons&psc=1&smid=A3CZYQKI1SOFSO&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExTklOTE1KSjRYVU9EJmVuY3J5cHRlZElkPUExMDI1MzAwM1E1SjZJTzhEQVI0NyZlbmNyeXB0ZWRBZElkPUEwODU5ODYzMTRVQjAxWjRaVVZORCZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=', '', 0, 0, 0),
(57, 'HP', 'HP 255 G7', 'Windows 10 Pro', 8, 'AMD A4', 'AMD Radeon R3', 'SSD', 500, 599.99, 0, '', 'https://www.amazon.it/255-portatile-Bluetooth-professional-Antivirus/dp/B08KSJFSJC/ref=sr_1_4_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+255+g7&qid=1617787931&sr=8-4-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExTklOTE1KSjRYVU9EJmVuY3J5cHRlZElkPUExMDI1MzAwM1E1SjZJTzhEQVI0NyZlbmNyeXB0ZWRBZElkPUEwNjMxMjYyMlNNQzc3VEdCVUZIRCZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `pcutente`
--

CREATE TABLE `pcutente` (
  `cf` varchar(16) NOT NULL,
  `id` int(3) NOT NULL,
  `dataricerca` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `cf` varchar(16) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `datanascita` date NOT NULL,
  `comuneresidenza` varchar(30) NOT NULL,
  `comunenascita` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `pcutente`
--
ALTER TABLE `pcutente`
  ADD PRIMARY KEY (`cf`,`id`,`dataricerca`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`cf`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `pcutente`
--
ALTER TABLE `pcutente`
  ADD CONSTRAINT `pcutente_ibfk_1` FOREIGN KEY (`cf`) REFERENCES `utente` (`cf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
