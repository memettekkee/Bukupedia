-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jun 2023 pada 17.00
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bukupedia1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `user_id` int(2) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(1, 'operator', 'operator', 'Petugas', 'gambar_admin/avatar5.png'),
(2, 'Bukupedia', 'bukupedia', 'Bukupedia - OP', 'gambar_admin/foto.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota`
--

CREATE TABLE `data_anggota` (
  `id` int(4) NOT NULL,
  `no_induk` varchar(100) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `foto` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data_anggota`
--

INSERT INTO `data_anggota` (`id`, `no_induk`, `nama`, `username`, `password`, `jk`, `kelas`, `ttl`, `alamat`, `foto`) VALUES
(1, 'mihrawardana@gmail.com', 'Mihra Wardana', 'mihrawardana', 'mihrawardana', 'P', '19', 'Kendari, 29-10-2001', 'Yogyakarta', 'gambar_anggota/depositphotos_213659488-stock-illustration-picture-profile-i'),
(31, 'muhammametd@gmail.com', 'Muhammad', 'memed', 'memed', 'L', '19', 'Balikpapan, 23 Agustus 2003', 'Pleumburan, Ngaglik Sleman DIY', ''),
(32, 'akuprobanget@gmail.com', 'Alvaro', 'varo', 'varo', 'L', '20', 'Yogyakarta, 12 Mei 2003', 'Perum MBS, Maguwo DIY', ''),
(33, 'mauding21@gmail.com', 'Maudy Ayunda', 'mauby', 'mauby', 'P', '30', 'Jakarta, 15 April 1993', 'Condet, Jakarta Timur, DKI Jakarta', ''),
(34, 'julmiticglory@gmail.com', 'Dzulfadly Hasbi', 'julkont', 'julkont', 'L', '50', 'Riau, 21 Mei 1973', 'Masjid UIN', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_buku`
--

CREATE TABLE `data_buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `penulis` varchar(250) NOT NULL,
  `th_terbit` varchar(4) NOT NULL,
  `genre` varchar(250) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `jumlah_buku` int(2) NOT NULL,
  `asal` varchar(50) NOT NULL,
  `tgl_input` varchar(75) NOT NULL,
  `gambar` text NOT NULL,
  `link_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data_buku`
--

INSERT INTO `data_buku` (`id`, `judul`, `penulis`, `th_terbit`, `genre`, `isbn`, `kategori`, `jumlah_buku`, `asal`, `tgl_input`, `gambar`, `link_buku`) VALUES
(28, 'Bumi', 'Tere Liye', '2014', 'Fantasi', '978-602-03-0112-9', 'Novel', 440, 'Pembelian', '2023/06/06', 'gambar_buku/bumi.jpg', 'https://drive.google.com/file/d/17vm8uDI6Hn0a-Fp5kONqDKoaSbtpXxK2/view?usp=sharing'),
(29, 'Manusia Setengah Salmon', 'Raditya Dika', '2011', 'Komedi', '979-780-531-X', 'Novel', 264, 'Koleksi Bukupedia', '2023/06/06', 'gambar_buku/manusia salmon.jpg', 'https://drive.google.com/file/d/1PZT3DPK-sqUyjijuSRTxZyVXEKRjdu4O/view?usp=drive_link'),
(30, 'Cinta Brontosaurus ', 'Raditya Dika', '2006', 'Komedi, Romance', '979-780-059-8', 'Novel', 160, 'Koleksi Bukupedia', '2023/06/06', 'gambar_buku/bronto.jpg', 'https://drive.google.com/file/d/12xruJrP-xICBL_zseN_pP_4cJSp_ADWm/view?usp=drive_link'),
(31, 'Laskar Pelangi', 'Andrea Hirata', '2005', 'Romance', '979-3062-79-7', 'Novel', 529, 'Koleksi Bukupedia', '2023/06/06', 'gambar_buku/pelangi.jpg', 'https://drive.google.com/file/d/1cip3HFwiQbdwdQj9PD6L-dMhwkvPbyL8/view?usp=sharing'),
(32, 'Negeri 5 Menara ', 'Ahmad Fuadi', '2009', 'Fiksi', '978-979-22-4861-6', 'Novel', 432, 'Koleksi Bukupedia', '2023/06/06', 'gambar_buku/5menara.jpg', 'https://drive.google.com/file/d/1KkUb_iyL6h6ZnN8LG6KzoqWRNalLu7G7/view?usp=drive_link'),
(33, 'Bumi Manusia', 'Pramoedya Ananta Toer', '2005', 'History, Fiksi', '978-97312-3-2', 'Novel', 535, 'Sumbangan', '2023/06/06', 'gambar_buku/bumimanusia.jpg', 'https://drive.google.com/file/d/1N2ZWfythNQELQl6-sVkoS4TcA96oZzMA/view?usp=drive_link'),
(34, 'Athlas', 'Eko Ivano Winata', '2018', 'Romance', '978-602-6716-39-2', 'Novel', 444, 'Koleksi Bukupedia', '2023/06/06', 'gambar_buku/athlas.jpg', 'https://drive.google.com/file/d/13E6rLV0hKcNUp5Tc0UnMcR68KZRjPtJK/view?usp=drive_link'),
(35, 'Semua Untuk Hindia', 'Iksaka Banu', '2014', 'Fiksi', '978-979-91-0710-7', 'Novel', 153, 'Sumbangan', '2023/06/06', 'gambar_buku/hindia.jpg', 'https://drive.google.com/file/d/1kQeaykGhLgagOqFToge_TM06JGV2NqOS/view?usp=sharing'),
(36, 'Perahu Kertas', 'Dewi Lestari', '2009', 'Drama', '978-979-1227-78-0', 'Novel', 444, 'Sumbangan', '2023/06/06', 'gambar_buku/perahulertas.jpg', 'https://drive.google.com/file/d/1Wtnq3fEALisBKVcYCBzD6f_QOb_MQe-m/view?usp=sharing'),
(37, 'Laut Bercerita', 'Leila Salikha Chudori', '2017', 'History, Fiksi', '978-602-424-694-5', 'Novel', 379, 'Pembelian', '2023/06/06', 'gambar_buku/laut cerita.jpg', 'https://drive.google.com/file/d/1KKbH2jcgEb77eKOgfBMAhIakydwruuvI/view?usp=drive_link');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(8) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(17) NOT NULL,
  `perlu1` varchar(15) NOT NULL,
  `cari` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `tgl_kunjung` date NOT NULL,
  `jam_kunjung` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `nama`, `jk`, `kelas`, `perlu1`, `cari`, `saran`, `tgl_kunjung`, `jam_kunjung`) VALUES
(10, 'Mihra Wardana', 'P', '19', 'Mencari referen', 'Buku yang berkaitan dengan komputer', 'Agar menyediakan lebih banyak buku referensi, sehingga kami dapat menemukan referensi sesuai kebutuhan kami', '2021-02-01', '14:35:53'),
(11, 'Wardana', 'P', '21', 'Membaca', 'Novel', 'Sebaiknya jumlah  referensi lebih ditingkatkan', '2021-02-01', '14:43:30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `data_anggota`
--
ALTER TABLE `data_anggota`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `data_buku`
--
ALTER TABLE `data_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
