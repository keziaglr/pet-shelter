-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jan 2022 pada 04.55
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bad_group1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `admin_salary` int(11) NOT NULL,
  `admin_bonus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`user_id`, `admin_salary`, `admin_bonus`) VALUES
(1, 500000, 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `user_id` int(11) NOT NULL,
  `customer_DOB` date NOT NULL,
  `customer_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`user_id`, `customer_DOB`, `customer_phone`) VALUES
(2, '2020-05-05', '089236478263'),
(6, '2020-04-04', '01828372932'),
(7, '2020-06-06', '0810883023'),
(5, '2020-03-03', '08372922');

-- --------------------------------------------------------

--
-- Struktur dari tabel `favorite`
--

CREATE TABLE `favorite` (
  `user_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `favorite`
--

INSERT INTO `favorite` (`user_id`, `pet_id`) VALUES
(2, 4),
(2, 5),
(8, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pet`
--

CREATE TABLE `pet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pet`
--

INSERT INTO `pet` (`id`, `user_id`, `name`, `type`, `status`) VALUES
(4, 5, 'Creamy', 'Cat', 'Adopted'),
(5, 7, 'Napkin', 'Rabbit', 'Adopted'),
(7, 1, 'Rochi', 'Cat', 'Available'),
(8, 8, 'Pablo', 'Bird', 'Adopted'),
(10, 1, 'Dumpling', 'Dog', 'Available'),
(11, 5, 'Snowy', 'Dog', 'Adopted'),
(12, 1, 'Ginger', 'Dog', 'Available'),
(14, 1, 'testing', 'bird', 'Available');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'Admin', 'admin', 'Admin'),
(2, 'kezia', 'gloria', 'User'),
(5, 'titan', 'tyra', 'User'),
(6, 'steven', 'steven', 'User'),
(7, 'stevie', 'stevanie', 'User'),
(8, 'tyra', 'tyra', 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD KEY `Constraint_User_Admin` (`user_id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD KEY `Constraint_User_Customer` (`user_id`);

--
-- Indeks untuk tabel `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`user_id`,`pet_id`),
  ADD KEY `constraint_pet_id` (`pet_id`);

--
-- Indeks untuk tabel `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Constraint_Pet_User` (`user_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pet`
--
ALTER TABLE `pet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `Constraint_User_Admin` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `Constraint_User_Customer` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `constraint_pet_id` FOREIGN KEY (`pet_id`) REFERENCES `pet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `constraint_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pet`
--
ALTER TABLE `pet`
  ADD CONSTRAINT `Constraint_Pet_User` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
