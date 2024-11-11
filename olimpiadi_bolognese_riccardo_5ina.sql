-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Nov 11, 2024 alle 10:35
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olimpiadi_bolognese_riccardo_5ina`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `olimpiadi`
--

CREATE TABLE `olimpiadi` (
  `id_olimpiade` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `descrizione` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `risultati`
--

CREATE TABLE `risultati` (
  `id_risultato` int(11) NOT NULL,
  `id_studente` int(11) DEFAULT NULL,
  `id_olimpiade` int(11) DEFAULT NULL,
  `punteggio` int(11) DEFAULT NULL,
  `posizione` int(11) DEFAULT NULL,
  `data_partecipazione` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `studenti`
--

CREATE TABLE `studenti` (
  `id_studente` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `data_nascita` int(11) DEFAULT NULL,
  `classe` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `olimpiadi`
--
ALTER TABLE `olimpiadi`
  ADD PRIMARY KEY (`id_olimpiade`);

--
-- Indici per le tabelle `risultati`
--
ALTER TABLE `risultati`
  ADD PRIMARY KEY (`id_risultato`),
  ADD KEY `id_studente` (`id_studente`),
  ADD KEY `id_olimpiade` (`id_olimpiade`);

--
-- Indici per le tabelle `studenti`
--
ALTER TABLE `studenti`
  ADD PRIMARY KEY (`id_studente`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `risultati`
--
ALTER TABLE `risultati`
  ADD CONSTRAINT `risultati_ibfk_1` FOREIGN KEY (`id_studente`) REFERENCES `studenti` (`id_studente`),
  ADD CONSTRAINT `risultati_ibfk_2` FOREIGN KEY (`id_olimpiade`) REFERENCES `olimpiadi` (`id_olimpiade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
