-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 03, 2021 alle 16:00
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
  `modello` varchar(40) NOT NULL,
  `tipologia` varchar(16) NOT NULL,
  `so` varchar(20) NOT NULL,
  `ram` int(2) NOT NULL,
  `cpu` varchar(20) NOT NULL,
  `gpu` varchar(20) NOT NULL,
  `rom` varchar(4) NOT NULL,
  `capienza` int(4) NOT NULL,
  `prezzo` float NOT NULL,
  `qp` float NOT NULL,
  `descrizione` text NOT NULL,
  `link` varchar(600) NOT NULL,
  `immagine` varchar(600) NOT NULL,
  `gaming` float NOT NULL,
  `workstation` float NOT NULL,
  `editing` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `pc`
--

INSERT INTO `pc` (`id`, `marca`, `modello`, `tipologia`, `so`, `ram`, `cpu`, `gpu`, `rom`, `capienza`, `prezzo`, `qp`, `descrizione`, `link`, `immagine`, `gaming`, `workstation`, `editing`) VALUES
(1, 'Apple', 'Macbook Air', 'portatile', 'macOs', 8, 'Apple M1', '', 'SSD', 256, 1159, 7.9, '', 'https://www.amazon.it/Novit%C3%A0-Apple-MacBook-8-core-GPU-7%E2%80%91core/dp/B08N5WMGBP/ref=sr_1_1_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3NXKOORAQGZ08&dchild=1&keywords=macbook+air+m1&qid=1615916869&quartzVehicle=16-179&replacementKeywords=macbook+air&sprefix=mac%2Caps%2C210&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFIRjJTSUEyOFpSS1cmZW5jcnlwdGVkSWQ9QTAwNTkyNDgxOVQwWVcyWEY5UU41JmVuY3J5cHRlZEFkSWQ9QTA4OTgyMjYzMVVLUERNUExFQllaJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==', 'https://m.media-amazon.com/images/I/71jG+e7roXL._AC_UL480_FMwebp_QL65_.jpg', 5.8, 8.2, 6.2),
(2, 'Apple', 'Macbook Air', 'portatile', 'macOs', 8, 'Apple M1', '', 'SSD', 512, 1429, 7, '', 'https://www.amazon.it/Novit%C3%A0-Apple-MacBook-8-core-GPU-7%E2%80%91core/dp/B08N5VQCXR/ref=sr_1_1_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=IIQLB6GRSUEM&dchild=1&keywords=macbook%2Bair%2Bm1&qid=1615917374&quartzVehicle=16-179&replacementKeywords=macbook%2Bair&sprefix=macbook%2Caps%2C198&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExOElQNkVXWkFSVkEyJmVuY3J5cHRlZElkPUEwNjc2NDYyMVhTSjhMSEM2RU42TCZlbmNyeXB0ZWRBZElkPUEwODk4MjI2MzFVS1BETVBMRUJZWiZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU&th=1', 'https://m.media-amazon.com/images/I/71jG+e7roXL._AC_UL480_FMwebp_QL65_.jpg', 5.8, 8.2, 6.2),
(3, 'Lenovo', 'Yoga Slim 7', 'portatile', 'Windows 10 Home', 16, 'Ryzen 7 4700U', 'AMD Radeon', 'SSD', 1000, 1137.99, 0, '', 'https://www.amazon.it/Lenovo-Notebook-Display-Processore-Windows/dp/B089NVRT25?ref_=ast_sto_dp&th=1&psc=1', 'https://images-na.ssl-images-amazon.com/images/I/61ugqEgPh5L._AC_SL1383_.jpg', 0, 0, 0),
(4, 'Lenovo', 'Yoga s940', 'portatile', 'Windows 10 Home', 16, 'i7-1065G7', 'Intel UHD integrata', 'SSD', 256, 1331.99, 0, '', 'https://www.amazon.it/Lenovo-Y540-15IRH-Notebook-Processore-i7-9750H/dp/B07XS8NZT1?ref_=ast_sto_dp&th=1&psc=1', 'https://images-na.ssl-images-amazon.com/images/I/71d9hdjZY6L._AC_SL1500_.jpg', 0, 0, 0),
(5, 'Lenovo', 'Legion 7', 'portatile', 'Windows 10 Home', 16, 'i7-10875H', 'RTX 2070 Max-Q', 'SSD', 1000, 2599, 0, '', 'https://www.amazon.it/Lenovo-Notebook-Display-Processore-i7-10875H/dp/B089NW1F7V?ref_=ast_sto_dp&th=1&psc=1', 'https://images-na.ssl-images-amazon.com/images/I/71EzbDMQNRL._AC_SL1500_.jpg', 0, 0, 0),
(6, 'Lenovo', 'Legion 5', 'portatile', 'Windows 10 Home', 16, 'i7-10750H', 'GTX 1660 Ti', 'SSD', 1000, 1499, 0, '', 'https://www.amazon.it/Lenovo-Notebook-AntiGlare-Processore-i7-10750H/dp/B089NVWTKD?ref_=ast_sto_dp&th=1&psc=1', 'https://images-na.ssl-images-amazon.com/images/I/61GHxPfIwuL._AC_SL1341_.jpg', 0, 0, 0),
(7, 'Lenovo', 'IdeaPad Creator 5', 'portatile', 'Windows 10 Home', 16, 'i5-10300H', 'GTX 1650', 'SSD', 512, 1499, 0, '', 'https://www.amazon.it/Lenovo-IdeaPad-Notebook-Processore-i5-10300H/dp/B089NW2X59?ref_=ast_sto_dp&th=1&psc=1', 'https://images-na.ssl-images-amazon.com/images/I/71ywpevZTFL._AC_SL1500_.jpg', 0, 0, 0),
(8, 'Lenovo', 'IdeaCentre 510', 'desktop', 'Windows 10 Home', 8, 'i5-9400', 'Intel UHD integrata', 'SSD', 512, 872.99, 0, '', 'https://www.amazon.it/Lenovo-IdeaCentre-Desktop-Masterizzatore-Keyboard/dp/B089MBPR2D?ref_=ast_sto_dp', 'https://images-na.ssl-images-amazon.com/images/I/41zgOliCagL._AC_SL1007_.jpg', 0, 0, 0),
(9, 'Lenovo', 'IdeaCentre 310S', 'desktop', 'Windows 10 Home', 8, 'A9-9425', 'AMD Radeon', 'SSD', 256, 403.99, 0, '', 'https://www.amazon.it/Lenovo-IdeaCentre-310S-Processore-Keyboard/dp/B07XZC1PYZ?ref_=ast_sto_dp', 'https://images-na.ssl-images-amazon.com/images/I/51asrvueS7L._AC_SL1313_.jpg', 0, 0, 0),
(10, 'Apple', 'iMac', 'desktop', 'macOs', 8, 'Apple M1', '', 'SSD', 256, 1499, 0, '', 'https://www.amazon.it/Apple-8-core-GPU-7%E2%80%91core-porte-256GB/dp/B093355P4F?ref_=ast_sto_dp&th=1', 'https://images-na.ssl-images-amazon.com/images/I/61p-ADlugUS._AC_SX522_.jpg', 0, 0, 0),
(11, 'Apple', 'iMac Pro', 'desktop', 'Windows 10 Home', 32, 'Intel Xeon W', 'Radeon Pro Vega 56', 'SSD', 1000, 4999, 0, '', 'https://www.amazon.it/Nuovo-Apple-Processore-10-core-Archiviazione/dp/B08F9MV9D4?ref_=ast_sto_dp', 'https://images-na.ssl-images-amazon.com/images/I/71PDNyTXIzL._AC_SL1500_.jpg', 0, 0, 0),
(19, 'Acer', 'Aspire 7', 'portatile', 'Windows 10 Home ', 8, 'AMD Ryzen 7', 'GTX 1650', 'SSD', 512, 882.62, 0, '', 'https://www.amazon.it/Acer-A715-41G-R3WV-Notebook-Processore-Display/dp/B084XLKFW1/ref=sr_1_1?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=aspire+7&qid=1616682222&sr=8-1', 'https://images-na.ssl-images-amazon.com/images/I/818I7BtdqHL._AC_SL1500_.jpg', 0, 0, 0),
(20, 'Acer', 'Aspire 5', 'portatile', 'Windows 10 Home ', 16, 'i5-1135G7', 'Intel Iris Xe Graphi', 'SSD', 1000, 985.21, 0, '', 'https://www.amazon.it/Acer-A515-56-511A-Multimedia-i5-1135G7-Graphics/dp/B08MC1LN2Y/ref=sr_1_2?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=acer+aspire+5&qid=1616684340&sr=8-2', 'https://images-na.ssl-images-amazon.com/images/I/714Bkh2yV8L._AC_SL1500_.jpg', 0, 0, 0),
(21, 'Acer', 'Aspire 5', 'portatile', 'Windows 10 Home ', 12, 'i7-8550U', 'NVIDIA GeForce MX130', 'SSD', 256, 480, 0, '', 'https://www.amazon.it/Acer-Notebook-A515-51G-85DJ-i7-8550U-ComfyView/dp/B0792FNRJX/ref=sr_1_3?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3QSJSB3FZQTHI&dchild=1&keywords=acer+aspire+5&qid=1616686779&s=pc&sprefix=acer+aspire%2Ccomputers%2C262&sr=1-3', 'https://images-na.ssl-images-amazon.com/images/I/A1LjFiNdFnL._AC_SL1500_.jpg', 0, 0, 0),
(22, 'Acer', 'Aspire 3', 'portatile', 'Windows 10 Home ', 8, 'i5-1035G1', 'NVIDIA GeForce MX330', 'SSD', 256, 755, 0, '', 'https://www.amazon.it/ACER-ASPIRE-A315-57G-59FS-i5-1035G1-256GB-NVIDIA/dp/B08NTNSD4L/ref=sr_1_6?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=acer+aspire+3&qid=1616687298&s=pc&sr=1-6', 'https://images-na.ssl-images-amazon.com/images/I/41Owk8QajXL._AC_.jpg', 0, 0, 0),
(23, 'Acer', 'Swift 5', 'portatile', 'Windows 10 Home ', 8, 'i7-1165G7', 'NVIDIA GeForce MX350', 'SSD', 512, 1361.73, 0, '', 'https://www.amazon.it/ACER-SWIFT-SF514-55GT-78FL-i7-1165G7-NVMe-NVIDIA/dp/B08NTV2X7V/ref=sr_1_1?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=YKZZFQ7JJUO0&dchild=1&keywords=acer+swift+5&qid=1616687586&s=pc&sprefix=acer+s%2Ccomputers%2C211&sr=1-1', 'https://images-na.ssl-images-amazon.com/images/I/41CJprDcP5L._AC_.jpg', 0, 0, 0),
(34, 'ASUS', 'ZenBook Pro Duo', 'portatile', 'Windows 10', 8, 'i7-1075', '', 'SSD', 512, 1999, 7.3, '', 'https://www.amazon.it/ZenBook-UX482EG-HY067R-i7-1165G7-802-11ax-screenpad/dp/B08P9SBDXZ/ref=asc_df_B08P9SBDXZ/?tag=googshopit-21&linkCode=df0&hvadid=498962644292&hvpos=&hvnetw=g&hvrand=2794086278996712270&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1008080&hvtargid=pla-1187335060313&psc=1', 'https://images-na.ssl-images-amazon.com/images/I/61AuXJ%2B5A6L._AC_SL1443_.jpg', 6, 8.8, 6.5),
(35, 'ASUS', 'Transformer T10', 'portatile', 'Windows 10', 4, 'Intel Atom Z8350 Qua', '', 'eMMC', 64, 599, 4.8, '', 'https://www.amazon.it/dp/B06ZXXY83T?tag=buonobutt-21&linkCode=ogi&th=1&psc=1', 'https://images-na.ssl-images-amazon.com/images/I/91TtVD6eBXL._AC_SL1500_.jpg', 3.8, 5.5, 5.6),
(36, 'ASUS', 'E203NA-FD029T P', 'portatile', 'Windows 10', 4, 'Intel Celeron N3350', '', 'eMMC', 32, 399, 5, '', 'https://www.amazon.it/dp/B075GSTCWB?tag=buonobutt-21&linkCode=ogi&th=1&psc=1', 'https://images-na.ssl-images-amazon.com/images/I/61eMrewKEcL._AC_SL1200_.jpg', 3.6, 0, 0),
(37, 'ASUS', 'VivoBook Notebook 15', 'portatile', 'Windows 10', 4, 'Intel Celeron N3350', '', 'HDD', 500, 899, 6.2, '', 'https://www.amazon.it/dp/B0756NM361?tag=buonobutt-21&linkCode=ogi&th=1&psc=1', 'https://images-na.ssl-images-amazon.com/images/I/81ndQXNia2L._AC_SL1500_.jpg', 6.3, 7, 7.1),
(38, 'ASUS', 'Laptop A509JB-EJ098T', 'portatile', 'Windows 10', 8, 'i7-1065G7', '', 'SSD', 512, 1199, 7.8, '', 'https://www.amazon.it/dp/B082WX8476?tag=pcportatili09-21&linkCode=ogi&th=1&psc=1', 'https://images-na.ssl-images-amazon.com/images/I/81bRmH5QmqL._AC_SL1500_.jpg', 6.9, 8.2, 8),
(39, 'MSI', 'CREATOR 15 A10UGT-04', 'portatile', 'Windows 10', 32, 'i7-10875H', '', 'SSD', 2048, 3099, 7.3, '', 'https://www.notebookgaming.it/MSI-Creator-15-A10UGT-043IT-miglior-prezzo-napoli', 'https://www.notebookgaming.it/image/cache/catalog/Prodotti/CREATOR/CREATOR%2015%20A10Ux%20touch/MSI_NB_Creator_15_Touch_photo01-800x800.png', 8.5, 9.8, 9.6),
(40, 'MSI', 'CREATOR 15 A10SFT-22', 'portatile', 'Windows 10', 32, 'i7-10875H', '', 'SSD', 2048, 2699, 7.5, '', 'https://www.notebookgaming.it/MSI-Creator-15-A10SFT-228IT-notebook-grafica-professionale-miglior-prezzo', 'https://www.notebookgaming.it/MSI-Creator-15-A10SFT-228IT-notebook-grafica-professionale-miglior-prezzo', 8.2, 9.4, 9),
(41, 'MSI', 'PRESTIGE 14EVO A11M-', 'portatile', 'Windows 10', 16, 'i7-1185G7', '', 'SSD', 512, 1299, 8, '', 'https://www.notebookgaming.it/MSI-Prestige-14Evo-A11M-011XIT-notebook-professionale-napoli-laptop-business', 'https://www.notebookgaming.it/image/cache/catalog/Prodotti/PS/PRESTIGE%2014%20EVO%20CARBON%20GRAY/MSI_NB_Prestige14_Carbon_Gray_photo01-800x800.png', 8, 8.9, 8.8),
(42, 'ASUS', 'Notebook Asus ', 'portatile', 'Windows 10', 8, 'i3-1005G1', '', 'SSD', 256, 699, 6.5, '', 'https://www.amazon.it/DESKTOP-I5-7400-WINDOWS-150MBPS-CORSAIR/dp/B0774Y8DPK/ref=sr_1_3_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=295HX4Q6K62ZZ&dchild=1&keywords=asus&qid=1616171001&sprefix=asus%2Caps%2C204&sr=8-3-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFNR0VZMzJNNlJKQkkmZW5jcnlwdGVkSWQ9QTAyNDQ3NjNWN0ZETDhYWVVJNkkmZW5jcnlwdGVkQWRJZD1BMDI0NTUxNzNCM0QyNURHVUI0VE8md2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl', 'https://images-na.ssl-images-amazon.com/images/I/31ZCp0NyGxS._AC_.jpg', 7.7, 8.6, 8.7),
(43, 'ASUS', 'Vivobook SLIM', 'portatile', 'Windows 10', 12, 'i5 di 10th GEN', '', 'SSD', 500, 929, 7.2, '', 'https://www.amazon.it/Asus-Vivobook-Display-Office-Pronto/dp/B081LGMWDK/ref=rtpb_1?pd_rd_w=3qiY4&pf_rd_p=c4e292c0-7449-4e07-92c0-14100af80ca3&pf_rd_r=M13VVD3NW42BFJKV33J7&pd_rd_r=75491ff4-a9aa-4595-9164-8ff322035cdf&pd_rd_wg=btv4B&pd_rd_i=B081LGMWDK&psc=1', 'https://images-na.ssl-images-amazon.com/images/I/71D1khxIpCL._AC_SL1500_.jpg', 6.9, 8, 7.8),
(44, 'ASUS', 'Notebook Asus', 'portatile', 'Windows 10', 8, 'i5-1035G1', '', 'SSD', 256, 849, 8, '', 'https://www.amazon.it/Notebook-i5-8265U-Bluetooth-professional-Antivirus/dp/B088HFM29Z/ref=rtpb_5?pd_rd_w=3qiY4&pf_rd_p=c4e292c0-7449-4e07-92c0-14100af80ca3&pf_rd_r=M13VVD3NW42BFJKV33J7&pd_rd_r=75491ff4-a9aa-4595-9164-8ff322035cdf&pd_rd_wg=btv4B&pd_rd_i=B088HFM29Z&psc=1', 'https://images-na.ssl-images-amazon.com/images/I/2182Xvt5P8S._AC_.jpg', 7.3, 8.2, 8.1),
(49, 'HP', '240 G8', 'portatile', 'Windows 10 Pro', 8, 'i5-1035G1', 'Intel UHD integrata', 'SSD', 256, 641.5, 0, '', 'https://www.amazon.it/HP-240-G8-Computer-portatile/dp/B08T6NMJ9K/ref=sr_1_4?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+240+g8&qid=1616683912&sr=8-4', 'https://images-na.ssl-images-amazon.com/images/I/81iR1e%2BYNKL._AC_SL1500_.jpg', 0, 0, 0),
(50, 'HP', '240 G8', 'portatile', 'FreeDOS', 8, 'i3-1005G1', 'Intel UHD integrata', 'SSD', 256, 498.84, 0, '', 'https://www.amazon.it/Notebook-i3-1005G1-grafica-FREEDOS-Antiriflesso/dp/B08YRLPQ9L/ref=sr_1_9?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+240+g8&qid=1616686526&sr=8-9', 'https://images-na.ssl-images-amazon.com/images/I/81iR1e%2BYNKL._AC_SL1500_.jpg', 0, 0, 0),
(51, 'HP', '240 G8', 'portatile', 'Windows 10 Pro', 8, 'i7-1065G7', 'Intel UHD integrata', 'SSD', 256, 819, 0, '', 'https://www.amazon.it/HP-Notebook-i7-1065G7-Antiriflesso-Fotocamera/dp/B08TWX5YNM/ref=sr_1_15?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+240+g8&qid=1616686526&sr=8-15', 'https://images-na.ssl-images-amazon.com/images/I/81iR1e%2BYNKL._AC_SL1500_.jpg', 0, 0, 0),
(52, 'HP', '240 G8', 'portatile', 'Windows 10 Home', 12, 'i5-1035G1', 'Intel UHD integrata', 'SSD', 256, 849.99, 0, '', 'https://www.amazon.it/Notebook-I5-1035G1-Display-Bluetooth-Antivirus/dp/B08W1FGXP7/ref=sr_1_24?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+240+g8&qid=1616686526&sr=8-24', 'https://images-na.ssl-images-amazon.com/images/I/81iR1e%2BYNKL._AC_SL1500_.jpg', 0, 0, 0),
(53, 'HP', '240 G8', 'portatile', 'Windows 10 Pro', 8, 'i3-1005G1', 'Intel UHD integrata', 'SSD', 256, 595.79, 0, '', 'https://www.amazon.it/HP-240-G8-i3-1005G1-NVMe-WIN/dp/B08VJL7WBQ/ref=sr_1_25?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+240+g8&qid=1616686526&sr=8-25', 'https://images-na.ssl-images-amazon.com/images/I/81iR1e%2BYNKL._AC_SL1500_.jpg', 0, 0, 0),
(54, 'HP', '255 G8', 'portatile', 'Windows 10 Pro', 8, 'AMD A4 3020', 'AMD Radeon R3', 'SSD', 256, 596, 0, '', 'https://www.amazon.it/Notebook-9125-fino-Bluetooth-Italiano-Garanzia/dp/B07MFFS2MV/ref=sr_1_1_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+255+G8&qid=1617785421&sr=8-1-spons&psc=1&smid=A1SZNFN635QQI6&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFGNllLSEY1RFhPNkgmZW5jcnlwdGVkSWQ9QTAxMjg2OTRBVzNKWDVBRVRVUkQmZW5jcnlwdGVkQWRJZD1BMDAwMzI2MjNWVkxXRTAyQlhFRk0md2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl', 'https://images-na.ssl-images-amazon.com/images/I/71i3tWI19pL._AC_SL1500_.jpg', 0, 0, 0),
(55, 'HP', '255 G8', 'portatile', 'Windows 10 Pro', 8, 'AMD Athlon 3020e', 'AMD Radeon', 'SSD', 256, 538, 0, '', 'https://www.amazon.it/HP-255-G8-portatile-Bluetooth/dp/B08TQH1PN5/ref=sr_1_2_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+255+G8&qid=1617785421&sr=8-2-spons&psc=1&smid=A8S1KWNUMXYCT&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFGNllLSEY1RFhPNkgmZW5jcnlwdGVkSWQ9QTAxMjg2OTRBVzNKWDVBRVRVUkQmZW5jcnlwdGVkQWRJZD1BMDk4OTQ3NTM1N1c2NkFJV1o1RFUmd2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl', 'https://images-na.ssl-images-amazon.com/images/I/71i3tWI19pL._AC_SL1500_.jpg', 0, 0, 0),
(56, 'HP', '255 G7', 'portatile', 'Windows 10 Pro', 8, 'AMD Athlon Silver 30', 'AMD Radeon R3', 'SSD', 256, 594.9, 0, '', 'https://www.amazon.it/Notebook-Portatile-Display-Masterizzatore-Bluetooth/dp/B07SZ74WMQ/ref=sr_1_1_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+255+g7&qid=1617787931&sr=8-1-spons&psc=1&smid=A3CZYQKI1SOFSO&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExTklOTE1KSjRYVU9EJmVuY3J5cHRlZElkPUExMDI1MzAwM1E1SjZJTzhEQVI0NyZlbmNyeXB0ZWRBZElkPUEwODU5ODYzMTRVQjAxWjRaVVZORCZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=', 'https://images-na.ssl-images-amazon.com/images/I/61wofVX8ZDL._AC_SL1000_.jpg', 0, 0, 0),
(57, 'HP', '255 G7', 'portatile', 'Windows 10 Pro', 8, 'AMD A4', 'AMD Radeon R3', 'SSD', 500, 599.99, 0, '', 'https://www.amazon.it/255-portatile-Bluetooth-professional-Antivirus/dp/B08KSJFSJC/ref=sr_1_4_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+255+g7&qid=1617787931&sr=8-4-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExTklOTE1KSjRYVU9EJmVuY3J5cHRlZElkPUExMDI1MzAwM1E1SjZJTzhEQVI0NyZlbmNyeXB0ZWRBZElkPUEwNjMxMjYyMlNNQzc3VEdCVUZIRCZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=', 'https://images-na.ssl-images-amazon.com/images/I/61wofVX8ZDL._AC_SL1000_.jpg', 0, 0, 0),
(58, 'HP', 'M01-F1003ng', 'desktop', 'FreeDOS', 8, 'i3-10100', 'Intel UHD Graphics 6', 'SSD', 512, 427.73, 0, '', 'https://www.amazon.it/HP-M01-F1003ng-Desktop-i3-10100-grafica/dp/B08DBD6DDW/ref=sr_1_26?dchild=1&qid=1622283910&refinements=p_89%3AHP&s=pc&sr=1-26', 'https://images-na.ssl-images-amazon.com/images/I/71XXQhJrdrL._AC_SL1500_.jpg', 0, 0, 0),
(59, 'HP', 'Pavilion Gaming TG01-1288nf', 'desktop', 'Windows 10 Adv', 16, ' i7-10700F', 'nVidia GTX1660 Super', 'SSD', 1024, 1260.49, 0, '', 'https://www.amazon.it/HP-Pavilion-TG01-1288nf-i7-10700F-Win10Adv/dp/B08YP6VSYS/ref=sr_1_3?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+desktop&qid=1622284755&s=pc&sr=1-3', 'https://images-na.ssl-images-amazon.com/images/I/31A5jBOo-lL._AC_.jpg', 0, 0, 0),
(60, 'HP', 'Pavilion TP01-0050nl', 'desktop', 'Windows 10 Home', 8, 'i5-9400', 'Intel UHD 630', 'SSD', 256, 579.99, 0, '', 'https://www.amazon.it/HP-Pavilion-TP01-0050nl-Desktop-Tastiera/dp/B086K93MZ2/ref=sr_1_4?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp+desktop&qid=1622284755&s=pc&sr=1-4', 'https://images-na.ssl-images-amazon.com/images/I/81Tmmyv%2Bj0L._AC_SL1500_.jpg', 0, 0, 0),
(61, 'HP', 'Slim S01-aF0304ng', 'desktop', 'Windows 10 Home', 8, 'AMD Athlon 3150U', 'AMD Graphic', 'SSD', 256, 376.47, 0, '', 'https://www.amazon.it/HP-S01-aF0304ng-Desktop-grafica-Windows/dp/B08DBFD4J1/ref=sr_1_8?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hp%2Bdesktop&qid=1622284755&s=pc&sr=1-8&th=1', 'https://images-na.ssl-images-amazon.com/images/I/71ri%2BF%2Bgv7L._AC_SL1500_.jpg', 0, 0, 0),
(62, 'HP', 'ProDesk 600 G5 ', 'desktop', 'Windows 10 Pro', 16, 'i7-9700', 'Intel UHD Graphics 6', 'SSD', 512, 1089, 0, '', 'https://www.amazon.it/HP-ProDesk-Microtower-PC-Intel-i7-9700/dp/B083TZRK15/ref=sr_1_49?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=HP+PC+DESKTOP&qid=1622292223&sr=8-49', 'https://images-na.ssl-images-amazon.com/images/I/61qN7ap2EgL._AC_SL1200_.jpg', 0, 0, 0),
(63, 'HP', 'ProBook 635 Aero G7', 'portatile', 'Windows 10 Pro', 16, 'AMD Ryzen 7 4700U', 'AMD Radeon Graphics', 'SSD', 1024, 1103.66, 0, '', 'https://www.amazon.it/HP-Notebook-Impronte-Digitali-Retroilluminata/dp/B08VMTVK3B/ref=sr_1_106_sspa?__mk_it_IT=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=HP+PC+DESKTOP&qid=1622293106&sr=8-106-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExVFpaVzFBMVBHNkNXJmVuY3J5cHRlZElkPUEwMDUxMzA2WE84T01TSlVTREZZJmVuY3J5cHRlZEFkSWQ9QTA4NTc2ODVDQUJSWjlBTklJUzEmd2lkZ2V0TmFtZT1zcF9idGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl', 'https://images-na.ssl-images-amazon.com/images/I/81xowRMiLML._AC_SL1500_.jpg', 0, 0, 0);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
