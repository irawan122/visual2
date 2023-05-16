-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Bulan Mei 2023 pada 13.45
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2110020046`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `galeri_lapangan` varchar(50) NOT NULL,
  `id_tempat_lapangan` int(11) NOT NULL,
  `caption_galeri` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori_tempat_lapagan` int(11) NOT NULL,
  `nama_kategori_lapagan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori_tempat_lapagan`, `nama_kategori_lapagan`) VALUES
(1, 'sintetis'),
(2, 'vinyl'),
(3, 'Parquette');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lapangan`
--

CREATE TABLE `lapangan` (
  `id_lapangan` int(50) NOT NULL,
  `id_tempat_lapangan` int(11) NOT NULL,
  `nama_lapangan` varchar(50) NOT NULL,
  `status_lapangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`user`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama_member` varchar(50) NOT NULL,
  `telp_member` varchar(50) NOT NULL,
  `email_member` varchar(50) NOT NULL,
  `alamat_member` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nama_member`, `telp_member`, `email_member`, `alamat_member`) VALUES
(1, 'wawan', '766767', 'irawan@', 'bjm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `id_review` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_tempat_lapagan` int(11) NOT NULL,
  `isi_review` varchar(50) NOT NULL,
  `tanggal_review` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempat_lapangan`
--

CREATE TABLE `tempat_lapangan` (
  `id_tempat_lapangan` int(11) NOT NULL,
  `id_kategori_tempat_lapagan` int(11) NOT NULL,
  `nama_tempat_lapangan` varchar(50) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `deskripsi_tempat_lap` varchar(50) NOT NULL,
  `jambuka` varchar(20) NOT NULL,
  `jamtutup` varchar(20) NOT NULL,
  `harga_persewa` varchar(20) NOT NULL,
  `durasi_sewa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tempat_lapangan`
--

INSERT INTO `tempat_lapangan` (`id_tempat_lapangan`, `id_kategori_tempat_lapagan`, `nama_tempat_lapangan`, `telp`, `email`, `deskripsi_tempat_lap`, `jambuka`, `jamtutup`, `harga_persewa`, `durasi_sewa`) VALUES
(2, 2, 'borneo', '1233', 'mamamam', 'bagus', '10 pagi', '10 malam', '150000', '2'),
(3, 3, 'borneoindor', '45678', 'wawan@gmail', 'baik', '10', '10', '1500000', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(50) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `id_tempat_lapagan` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_lapangan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `status_transaksi` varchar(50) NOT NULL,
  `jam_mulai` varchar(50) NOT NULL,
  `jam_selesai` varchar(50) NOT NULL,
  `harga_persewa` varchar(50) NOT NULL,
  `untuk_tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`galeri_lapangan`),
  ADD UNIQUE KEY `id_tempat_lapangan` (`id_tempat_lapangan`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori_tempat_lapagan`);

--
-- Indeks untuk tabel `lapangan`
--
ALTER TABLE `lapangan`
  ADD PRIMARY KEY (`id_lapangan`),
  ADD KEY `id_tempat_lapangan` (`id_tempat_lapangan`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_tempat_lapagan` (`id_tempat_lapagan`);

--
-- Indeks untuk tabel `tempat_lapangan`
--
ALTER TABLE `tempat_lapangan`
  ADD PRIMARY KEY (`id_tempat_lapangan`),
  ADD KEY `id_tempat_lapangan` (`id_tempat_lapangan`),
  ADD KEY `id_kategori_tempat_lapangan` (`id_kategori_tempat_lapagan`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_lapangan` (`id_lapangan`),
  ADD KEY `id_lapangan_2` (`id_lapangan`),
  ADD KEY `id_tempat_lapagan` (`id_tempat_lapagan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_tempat_lapangan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tempat_lapangan`
--
ALTER TABLE `tempat_lapangan`
  MODIFY `id_tempat_lapangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`id_tempat_lapangan`) REFERENCES `tempat_lapangan` (`id_tempat_lapangan`);

--
-- Ketidakleluasaan untuk tabel `lapangan`
--
ALTER TABLE `lapangan`
  ADD CONSTRAINT `lapangan_ibfk_1` FOREIGN KEY (`id_tempat_lapangan`) REFERENCES `tempat_lapangan` (`id_tempat_lapangan`);

--
-- Ketidakleluasaan untuk tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`id_tempat_lapagan`) REFERENCES `tempat_lapangan` (`id_tempat_lapangan`);

--
-- Ketidakleluasaan untuk tabel `tempat_lapangan`
--
ALTER TABLE `tempat_lapangan`
  ADD CONSTRAINT `tempat_lapangan_ibfk_1` FOREIGN KEY (`id_kategori_tempat_lapagan`) REFERENCES `kategori` (`id_kategori_tempat_lapagan`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_lapangan`) REFERENCES `lapangan` (`id_lapangan`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_tempat_lapagan`) REFERENCES `tempat_lapangan` (`id_tempat_lapangan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
