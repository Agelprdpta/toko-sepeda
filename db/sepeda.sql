-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Nov 2024 pada 14.32
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sepeda`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `kuantiti` int(11) NOT NULL,
  `gambar` varchar(191) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id_cart`, `id_user`, `id_produk`, `nama`, `harga`, `kuantiti`, `gambar`, `kategori`, `total`) VALUES
(1, 1, 64, 'CPU Fan Water Cooler Blue', 1760000, 1, '2121010131311612084289fanwatercooler.jfif', 'Komputer', 1760000),
(13, 5, 68, 'Pacific MTB Flick 5.0 Size 27.5 Mechanical Disc Br', 2025000, 9, '2424090905051725499786pasific-mtb.jpeg', 'Sepeda Gunung', 2025000),
(21, 7, 67, 'Pacific Sepeda Lipat Noris Pro Size 16', 2015000, 3, '2424090905051725499206lipat-noris.jpeg', 'Sepeda Lipat', 6045000),
(22, 7, 66, 'Pacific Sepeda Gunung MTB ET-2612 AH Hydraulic Dis', 1600000, 2, '2424090903031725374810sepeda-gn.jpeg', 'Sepeda Gunung', 3200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tentang` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama`, `email`, `tentang`, `pesan`, `tgl`) VALUES
(3, 'agel', 'awgel@gmail.com', 'rating', 'sepedanya bagus', '2024-09-18 03:24:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pesan` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nominal` int(20) NOT NULL,
  `gambar` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pesan`, `nama`, `nominal`, `gambar`) VALUES
(3, '1219061106', 'Bayu Pamungkas', 9000000, '1171632372-2021-01-31-09-25-26-lenovoyoga.jpg'),
(4, '184795202', 'Bayu Pamungkas', 6760000, '1044008663-2021-02-01-04-45-52-Bukti-Transfer-BRI-Terbaru-dan-Terlengkap.jpg'),
(5, '1455538211', 'bayu', 62990000, '1688404207-2021-02-01-04-55-04-Bukti-Transfer-BRI-Terbaru-dan-Terlengkap.jpg'),
(6, '2119630175', 'ggyg', 5000000, '1698976455-2024-09-03-03-46-11-boba.jpg'),
(7, '423161896', 'ewq', 9000000, '638665613-2024-09-03-04-32-14-daun.jpg'),
(8, '1711276384', 'gdya', 42342343, '1867101067-2024-09-05-03-24-35-bukti tf.jpg'),
(9, '1346375766', 'ALIYAH', 2025000, '445020618-2024-09-06-10-16-34-pasific-mtb.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_produk`, `jual`) VALUES
(7, 63, 8),
(8, 64, 8),
(9, 59, 8),
(10, 58, 8),
(11, 61, 8),
(12, 67, 8),
(13, 66, 8),
(14, 68, 8),
(15, 65, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(191) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `createat` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `harga`, `stok`, `gambar`, `kategori`, `deskripsi`, `createat`, `updateat`) VALUES
(65, 'Sepeda Lipat / Folding Bike FoldX X9 8 Sp 20 Inch', 1999000, 9, '2424090904041725422802sepedapxl.jpg', 'Sepeda Lipat', 'Spesifikasi :\r\n\r\nPengguna : Remaja dan Dewasa\r\nFrame (Bahan Rangka) : Alloy\r\nWarna : Black, Green, Purple, Red\r\nFork (Garpu Depan) : Steel\r\nShifter (Pengoper Gigi) : Thumbshifter Sensah MX8 8 Speed\r\nRear Derailleur (Pemindah Gigi Belakang) : Sensah MX8 8 Speed\r\nCrankset (Poros Engkol)	: Steel 170mm 53T\r\nBottom Bracket (As Engkol) : Squared Tapered Kenli 118mm\r\nSprocket : 11-28T\r\nPedal : PVC\r\nFront Brake (Rem Depan) : Mechanical Disc Brake\r\nRear Brake (Rem Belakang) : Mechanical Disc Brake\r\nHandle Bar (Stang)	: Alloy\r\nHandle Post (Leher Stang) : Alloy\r\nSeatpost (Tiang Sadel) : Alloy\r\nRims (Velg) : Double wall rims Alloy\r\nTires (Ban) : Deli A/V 20 x 1 3/8\r\nSpokes (Jari-Jari) : 28 Spokes\r\nExtra : Kick Stand &amp; Front Block\r\nBerat Bersih : 12,18kg\r\nBerat Kotor (dengan Kemasan) : 16,40kg\r\nDimensi Dus (PxLxT) : 126 x 20 x 55', '2024-09-12 08:15:50', '2024-09-05 03:09:09'),
(66, 'Pacific Sepeda Gunung MTB ET-2612 AH Hydraulic Disc Brake (2x9 HD)', 1600000, 0, '2424090903031725374810sepeda-gn.jpeg', 'Sepeda Gunung', '1. Frame\r\nAlloy 6061 MTBXC 27.5?\r\n\r\n2. Fork\r\nExotic Suspension Fork 27.5?, Travel 120mm Lock Out\r\n\r\n3. Shifter\r\nVertex 2×9 Speed\r\n\r\n4. Brake\r\nVertex Hydraulic Disc Brake\r\n\r\n5. Crankset\r\nExotic Alloy 24/38T\r\n\r\n6. Pedal\r\nPlastic\r\n\r\n7. Hub\r\n36 H\r\n\r\n8. Rim\r\nExotic Alloy Double Wall 27.5?\r\n\r\n9. Tire\r\n27.5?x2.30?\r\n\r\n10. Seatpost	\r\nHi-Ten Steel 30.9x350mm\r\n\r\n11. Stem\r\nAlloy Ext: 55mm\r\n\r\n12.Handlebar\r\nHi-Ten Steel W: 720mm', '2024-09-12 12:52:32', '0000-00-00 00:00:00'),
(67, 'Pacific Sepeda Lipat Noris Pro Size 16', 2015000, 9, '2424090905051725499206lipat-noris.jpeg', 'Sepeda Lipat', 'Sebelum melakukan pemesanan, mohon dipahami bahwa estimasi waktu penerimaan produk merupakan TANGGUNG JAWAB EKSPEDISI, bukan penjual. Saat pesanan diterima, produk harus dicek secara menyeluruh untuk memastikan tidak ada cacat atau kekurangan sebelum pesanan diselesaikan. Berat yang tertera adalah berat volumetrik.\r\n\r\n1. Frame\r\nAlloy 6061 Folding Frame 16?\r\n\r\n2. Fork	\r\nAlloy 6061 Fork 16?x1-3/8?\r\n\r\n3. Shifter	\r\nShimano SL-M315 8 Speed\r\n\r\n4. Brake	\r\nTektro M275 Hydraulic Disc Brake\r\n\r\n5. Crankset	\r\nSYTE Alloy 53 T\r\n\r\n6. Pedal	\r\nSYTE Alloy\r\n\r\n7. Hub	\r\nNovatec Alloy 28 H\r\n\r\n8. Rims	\r\nNoris Pro Alloy Double Wall 16?\r\n\r\n9. Tires	\r\nInnova 16? x 1-3/8?\r\n\r\n10. Seatpost	\r\nAlloy Ø: 33.9 x 550mm\r\n\r\n11. Stem	\r\nSYTE Alloy\r\n\r\n12. Handle Bar	\r\nAlloy W: 560 mm', '2024-09-12 09:01:25', '0000-00-00 00:00:00'),
(68, 'Pacific MTB Flick 5.0 Size 27.5 Mechanical Disc Brake (2x8 Speed)', 2025000, 12, '2424090905051725499786pasific-mtb.jpeg', 'Sepeda Gunung', 'FLICK 5.0 bisa menjadi pilihan tepat untuk Anda yang ingin bertualang diakhir pekan sekaligus berolahraga. MTB ini memiliki desain yang dinamis dan dilengkapi fitur 2×8 speed yang serba guna, fork bersuspensi serta rem cakram.\r\n\r\n1. Frame\r\nAlloy 6061 MTB XC 27.5?\r\n\r\n2. Fork	Pacific Alloy Suspension Fork 27.5?, Travel 120 mm, Lock Out\r\n\r\n3. Shifter	\r\nShimano SL-M315 2×8 Speed\r\n\r\n4. Front Derailleur\r\nShimano FD-M315 2 Speed\r\n\r\n5. Rear Derailleur\r\nShimano RD-M315 8 Speed\r\n\r\n6. Brakes\r\nPacific BX-351 Mechanical Disc Brake\r\n\r\n7. Crankset\r\nPacific Alloy 22/36 T, 170 mm\r\n\r\n8. Pedal\r\nPlastic\r\n\r\n9. Hub\r\nPacific Alloy 32H\r\n\r\n10. Rims\r\nAlloy Double Wall 27.5?\r\n\r\n11. Tires\r\nKenda K1027 27.5? x 2.20?\r\n\r\n12. Seatpost\r\nPacific Alloy ø 30.9 x 350 mm\r\n\r\n13. Stem\r\nPacific Alloy Ext: 50 mm\r\n\r\n14. Handle Bar\r\nPacific Alloy W: 740 mm', '2024-09-10 12:59:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id_status` int(1) NOT NULL,
  `keterangan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_status`, `keterangan`) VALUES
(0, ''),
(1, 'Di proses'),
(2, 'Di kirim'),
(3, 'Di terima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `telepon` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kuantiti_total` int(11) NOT NULL,
  `total_akhir` int(20) NOT NULL,
  `pembayaran` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `pesan_at` datetime NOT NULL,
  `kirim_at` datetime NOT NULL,
  `terima_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_pesan`, `id_user`, `pengirim`, `penerima`, `alamat`, `telepon`, `email`, `kuantiti_total`, `total_akhir`, `pembayaran`, `id_status`, `pesan_at`, `kirim_at`, `terima_at`) VALUES
(4, 184795202, 1, 'Bayu Pamungkas', 'Marniyem', 'Jawa Tengah , Wonosari , Jamaica, Rt 11 Rw 2', 2147483647, 'marniyem@gmail.com', 2, 6760000, 1, 2, '2021-01-31 11:41:38', '2021-02-01 04:53:09', '0000-00-00 00:00:00'),
(7, 423161896, 7, 'fed', 'ds', 'dpk', 563254623, 'iki@gmail.com', 1, 9000000, 1, 3, '2024-09-03 04:31:49', '2024-09-03 04:33:04', '0000-00-00 00:00:00'),
(15, 632140492, 7, 'jnt', 'fsd', 'depok', 97868, 'jj@gmail.com', 1, 2015000, 0, 0, '2024-09-12 04:01:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 929619975, 8, '', '', '', 0, '', 1, 1600000, 0, 0, '2024-09-05 03:31:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 997379629, 7, 'gt', 'ft', 'tydf', 455455, 'ftr@gmail.com', 2, 1600000, 0, 0, '2024-09-12 02:51:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1027486133, 7, 'jnt', 'hg', 'sanca', 878686, 'jj@gmail.com', 1, 1999000, 0, 0, '2024-09-12 03:15:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1098598934, 1, 'Narto Saminto', 'Saskeh ', 'Konoha. rt 02 Rw 03', 2147483647, 'saske@gmail.com', 1, 5000000, 0, 0, '2021-01-31 11:34:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 1131728220, 7, 'gh', 'gfy', 'sdrtfyguh', 9876546, 'etxf@gmail.com', 1, 1600000, 0, 0, '2024-09-12 07:52:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1219061106, 1, 'Bayu Pamungkas', 'bayu pamungkas', 'lopawon, Kebobang, Wonosari', 2147483647, 'bayu@gmail.com', 1, 9000000, 1, 3, '2021-01-31 04:56:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1221388810, 9, 'betok', 'zidan', 'depok', 2147483647, '', 2, 2025000, 0, 0, '2024-09-10 07:59:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1346375766, 7, 'agel', 'aliyah', 'SMK NEGERI 1 DEPOK', 899999, 'd@gmail.com', 1, 2025000, 1, 0, '2024-09-06 10:14:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1455538211, 1, 'Bayu Pamungkas', 'bayu pamungkas', 'lopawon, Kebobang, Wonosari', 2147483647, 'bayu@gmail.com', 15, 62990000, 1, 0, '2021-01-31 12:00:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1492351502, 7, '', '', '', 0, '', 1, 1600000, 0, 0, '2024-09-12 03:15:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1711276384, 7, 'dw', 'fsd', 'cilangkap', 2147483647, 'iki@gmail.com', 1, 2015000, 1, 3, '2024-09-05 03:23:58', '2024-09-05 03:25:22', '0000-00-00 00:00:00'),
(6, 2119630175, 5, 'agl', 'hg', 'ghd egdeyd', 84034843, 'ftr@gmail.com', 1, 5000000, 1, 2, '2024-09-03 03:45:44', '2024-09-03 03:58:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `kuantiti` int(11) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi`, `id_pesan`, `id_produk`, `kuantiti`, `total`) VALUES
(1, 1219061106, 61, 1, 9000000),
(9, 1098598934, 63, 1, 5000000),
(10, 184795202, 63, 1, 5000000),
(11, 184795202, 64, 1, 1760000),
(12, 1455538211, 59, 10, 32990000),
(13, 1455538211, 58, 5, 30000000),
(14, 2119630175, 63, 1, 5000000),
(15, 423161896, 61, 1, 9000000),
(16, 1711276384, 67, 1, 2015000),
(17, 929619975, 66, 1, 1600000),
(18, 1346375766, 68, 1, 2025000),
(19, 1221388810, 68, 2, 2025000),
(20, 997379629, 66, 2, 1600000),
(21, 1492351502, 66, 1, 1600000),
(22, 1027486133, 65, 1, 1999000),
(23, 632140492, 67, 1, 2015000),
(24, 1131728220, 66, 1, 1600000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sandi` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `role` varchar(15) NOT NULL,
  `createat` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `sandi`, `image`, `role`, `createat`, `updateat`) VALUES
(5, 'agel', 'agel@gmail.com', '$2y$10$DhmNjnUZiB95sRu8D.y7jOTtdMkjkkZR7GPDuQP2JnaKisGeDfCia', 'default.png', '1', '2024-09-03 20:56:26', '0000-00-00 00:00:00'),
(7, 'drew', 'd@gmail.com', '$2y$10$JFf9XcISaQ2IiIhnhwCP5eB5t33bBkKcpCn/gNpx39y.xlsXfldlm', 'default.png', '2', '2024-09-03 04:28:16', '0000-00-00 00:00:00'),
(9, 'zidan', 'zidan@gmail.com', '$2y$10$3IY8QJMFg54v6rqlCw1zoOXBRAihaIqa9OVkAEc8QC9pubKCTIMg2', 'default.png', '2', '2024-09-10 07:23:25', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD UNIQUE KEY `id_pesan` (`id_pesan`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_pesan`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
