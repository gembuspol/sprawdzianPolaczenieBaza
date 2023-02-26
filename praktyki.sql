-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Lut 2023, 17:54
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `praktyki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoba`
--

CREATE TABLE `osoba` (
  `id` int(11) NOT NULL,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `osoba`
--

INSERT INTO `osoba` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Jan', 'Kowalski'),
(2, 'Marek ', 'Nowak'),
(3, 'Tomasz', 'Kaczka'),
(4, 'Mateusz', 'Morowy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `praktyka`
--

CREATE TABLE `praktyka` (
  `id` int(11) NOT NULL,
  `id_zaklad_pracy` int(11) NOT NULL,
  `id_osoba` int(11) NOT NULL,
  `data_rozpoczecia_praktyk` date NOT NULL,
  `data_rzakonczenia_praktyk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zakład_pracy`
--

CREATE TABLE `zakład_pracy` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) NOT NULL,
  `miejscowosc` varchar(45) NOT NULL,
  `ulica` varchar(45) NOT NULL,
  `numer` varchar(20) NOT NULL,
  `telefon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zakład_pracy`
--

INSERT INTO `zakład_pracy` (`id`, `nazwa`, `miejscowosc`, `ulica`, `numer`, `telefon`) VALUES
(1, 'Humisave', 'Jastrzębie-Zdrój', 'Katowicka', '24', 601701618),
(2, 'JSW IT Systems', 'Jastrzębie-Zdrój', 'Armii Krajowej ', '56', 327002710),
(3, 'Hostersi', 'Rybnik', 'Jankowicka', '7', 324229133),
(4, 'Alan Systems', 'Rybnik', 'Obwiednia Południowa', '22', 323593050),
(5, 'BlueSoft', 'Jastrzębie-Zdrój', 'Armii Krajowej ', '25', 324412877),
(6, 'Leon', 'Rybnik', 'Kilińskiego', '33d', 324408000);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `osoba`
--
ALTER TABLE `osoba`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `praktyka`
--
ALTER TABLE `praktyka`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zakład_pracy`
--
ALTER TABLE `zakład_pracy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `osoba`
--
ALTER TABLE `osoba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `praktyka`
--
ALTER TABLE `praktyka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `zakład_pracy`
--
ALTER TABLE `zakład_pracy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
