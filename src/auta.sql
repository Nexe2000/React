-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2026 at 11:57 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samochody`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auta`
--

CREATE TABLE `auta` (
  `ID_auta` int(10) UNSIGNED NOT NULL,
  `Marka` text DEFAULT NULL,
  `Opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auta`
--

INSERT INTO `auta` (`ID_auta`, `Marka`, `Opis`) VALUES
(1, 'lamborghini', 'Lamborghini Invencible i Auténtica to unikatowe modele stworzone na pożegnanie legendarnego silnika V12.Łączą ekstremalne osiągi z wyjątkowym designem, podkreślając koniec pewnej ery w historii marki.'),
(2, 'BMW', 'BMW M5 CS z 2022 roku to najmocniejsza wersja M5, łącząca luksus z osiągami supersamochodu. Dzięki potężnemu silnikowi i sportowym modyfikacjom oferuje wyjątkowe wrażenia z jazdy.'),
(3, 'Opel', 'Opel Corsa z 1990 roku to prosty i niezawodny samochód miejski, popularny dzięki niskim kosztom utrzymania. Charakteryzuje się kompaktowymi wymiarami i praktycznością na co dzień.');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `auta`
--
ALTER TABLE `auta`
  ADD UNIQUE KEY `ID_auta` (`ID_auta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auta`
--
ALTER TABLE `auta`
  MODIFY `ID_auta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
