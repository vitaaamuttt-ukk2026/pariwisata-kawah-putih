-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2026 at 01:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pariwisata_kawah_putih`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_code` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `jumlah_pengunjung` int(11) NOT NULL,
  `tanggal_kunjungan` date NOT NULL,
  `paket` varchar(255) NOT NULL DEFAULT 'Paket Lengkap',
  `total_bayar` decimal(12,2) NOT NULL DEFAULT 0.00,
  `metode_pembayaran` varchar(255) NOT NULL DEFAULT 'qris',
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `status_kunjungan` enum('belum','sedang','selesai') NOT NULL DEFAULT 'belum',
  `selesai_at` timestamp NULL DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `booking_code`, `nama_lengkap`, `email`, `no_hp`, `jumlah_pengunjung`, `tanggal_kunjungan`, `paket`, `total_bayar`, `metode_pembayaran`, `bukti_pembayaran`, `status`, `status_kunjungan`, `selesai_at`, `paid_at`, `created_at`, `updated_at`) VALUES
(1, 4, 'KP-20261106-4096', 'Devi Fauziah', 'devifau09@gmail.com', '083110051748', 2, '2026-11-06', '[{\"nama\":\"Tiket Masuk WNI\",\"qty\":2,\"harga\":31000,\"subtotal\":62000}]', 62000.00, 'va', 'bukti_pembayaran/TckzTNhMezv8EurbK5EwKpNC4jIb2EsofVQRjcke.jpg', 'paid', 'selesai', NULL, '2026-11-05 20:44:07', '2026-11-05 20:43:26', '2026-11-06 09:59:28'),
(2, 4, 'KP-20261106-AD56', 'Devi Fauziah', 'devifau09@gmail.com', '083110051748', 2, '2026-11-07', '[{\"nama\":\"Tiket Masuk WNI\",\"qty\":2,\"harga\":31000,\"subtotal\":62000},{\"nama\":\"Sunan Ibu\",\"qty\":2,\"harga\":15000,\"subtotal\":30000},{\"nama\":\"CHARGE LKHP (Lintas Hutan Kawah Putih)\",\"qty\":1,\"harga\":179000,\"subtotal\":179000}]', 271000.00, 'qris', 'bukti_pembayaran/gOy2ql5MaOGtEktM889KT4EgwIkW3giUZqs6aO9x.jpg', 'paid', 'selesai', NULL, '2026-11-06 10:20:55', '2026-11-06 09:58:19', '2026-11-07 21:10:12'),
(3, 5, 'KP-20261106-83D2', 'Nita Puspitasari', 'nitaimut11@gmail.com', '0831100654322', 1, '2026-11-07', '[{\"nama\":\"Sunan Ibu\",\"qty\":1,\"harga\":15000,\"subtotal\":15000},{\"nama\":\"Tiket Masuk WNI\",\"qty\":1,\"harga\":31000,\"subtotal\":31000}]', 46000.00, 'qris', 'bukti_pembayaran/rsN2sd0HERATAyW9b79Hu1CWeKepd5Hw9oNSnJH0.jpg', 'paid', 'selesai', NULL, '2026-11-07 21:07:36', '2026-11-06 13:11:34', '2026-11-07 21:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-1b6453892473a467d07372d45eb05abc2031647a', 'i:1;', 1794110905),
('laravel-cache-1b6453892473a467d07372d45eb05abc2031647a:timer', 'i:1794110905;', 1794110905),
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1794277326),
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1794277326;', 1794277326),
('laravel-cache-5c785c036466adea360111aa28563bfd556b5fba', 'i:1;', 1794271043),
('laravel-cache-5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1794271043;', 1794271043),
('laravel-cache-77de68daecd823babbb58edb1c8e14d7106e83bb', 'i:1;', 1794111133),
('laravel-cache-77de68daecd823babbb58edb1c8e14d7106e83bb:timer', 'i:1794111133;', 1794111133),
('laravel-cache-ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 'i:1;', 1794440064),
('laravel-cache-ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4:timer', 'i:1794440064;', 1794440064);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info_contents`
--

CREATE TABLE `info_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_contents`
--

INSERT INTO `info_contents` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sejarah', 'Kawah Putih adalah sebuah tempat wisata di Jawa Barat yang terletak di kawasan Gunung Patuha, Ciwidey, Bandung. Kawah ini terbentuk dari letusan Gunung Patuha pada abad ke-10. Keunikan utama Kawah Putih adalah danau kawahnya yang berwarna putih kehijauan (toska) akibat dominasi unsur belerang. Warna airnya bisa berubah-ubah tergantung pada suhu, cuaca, dan kandungan belerang saat itu.', '2026-11-05 04:42:28', '2026-11-05 04:42:28'),
(2, 'lokasi', 'Jl. Raya Soreang-Ciwidey KM 25, Sugihmukti, Kec. Pasirjambu, Kabupaten Bandung, Jawa Barat 40973.', '2026-11-05 04:42:28', '2026-11-05 04:42:28'),
(3, 'jam_operasional', 'Senin - Jumat: 07:00 - 17:00\r\nSabtu - Minggu: 07:00 - 17:00\r\nHari Libur: 07:00 - 17:00', '2026-11-05 04:42:28', '2026-11-06 11:27:33'),
(4, 'fasilitas', 'Parkir Luas, Toilet Umum, Musholla, Shuttle Ontang-anting, Warung Makan, Spot Foto', '2026-11-05 04:42:28', '2026-11-05 04:42:28'),
(5, 'tiket_domestik', '30000', '2026-11-05 04:42:28', '2026-11-05 04:42:28'),
(6, 'tiket_mancanegara', '80000', '2026-11-05 04:42:28', '2026-11-05 04:42:28'),
(7, 'shuttle_price', '25000', '2026-11-05 04:42:28', '2026-11-05 04:42:28'),
(8, 'parkir_motor', '5000', '2026-11-05 04:42:28', '2026-11-05 04:42:28'),
(9, 'parkir_mobil', '20000', '2026-11-05 04:42:28', '2026-11-05 04:42:28'),
(10, 'tips_1', 'Pakaian Hangat: Suhu di Kawah Putih bisa sangat dingin (10°C - 20°C), bawa jaket atau sweater.', '2026-11-05 04:42:28', '2026-11-05 04:42:28'),
(11, 'tips_2', 'Masker: Sangat disarankan karena aroma belerang yang cukup menyengat di area kawah.', '2026-11-05 04:42:28', '2026-11-05 04:42:28'),
(12, 'tips_3', 'Uang Tunai / QRIS: Untuk membayar tiket wahana tambahan, parkir, atau jajan di warung sekitar.', '2026-11-05 04:42:28', '2026-11-05 04:42:28'),
(13, 'tips_4', 'Sepatu Nyaman: Gunakan sepatu olahraga atau sandal yang nyaman untuk berjalan di area yang tidak rata.', '2026-11-05 04:42:28', '2026-11-05 04:42:28'),
(14, 'hero_image', '/hero/1794278323_6af283b300af3.jpg', '2026-11-06 07:56:35', '2026-11-09 19:38:43'),
(15, 'photo_spots', '[{\"name\":\"Jembatan Apung\",\"count\":\"1\",\"image\":\"\\/photo-spots\\/1793982196_6aedfef44f6d3.jpg\"},{\"name\":\"Sunan Ibu\",\"count\":\"1\",\"image\":\"\\/photo-spots\\/1793982276_6aedff444b0ba.jpg\"},{\"name\":\"kawah putih\",\"count\":\"1\",\"image\":\"\\/photo-spots\\/1793982344_6aedff8854489.jpg\"}]', '2026-11-06 09:23:16', '2026-11-06 09:25:44'),
(16, 'gallery', '[\"\\/gallery\\/1793982413_6aedffcdc4d80.jpg\",\"\\/gallery\\/1793982427_6aedffdb4382d.jpg\",\"\\/gallery\\/1793982445_6aedffed8fa69.jpg\",\"\\/gallery\\/1793982462_6aedfffe0c418.jpg\",\"\\/gallery\\/1793982476_6aee000c7c2f9.jpg\",\"\\/gallery\\/1793982503_6aee0027a11fa.jpg\"]', '2026-11-06 09:26:53', '2026-11-06 09:28:23'),
(17, 'hotels', '[{\"name\":\"Bobocabin Signature Kawah Ciwidey, Bandung\",\"price\":\"1.7Jt, \\/Malam\",\"desc\":\"Free parking, Wi-Fi, Air-conditioned, Lodge, cabin, pod or hut, Dryer, Balcony, Refrigerator, Stove, Private rooms\",\"link\":\"https:\\/\\/www.bobobox.com\",\"image\":\"\\/hotels\\/1794441668_6af501c4df328.jpg\"}]', '2026-11-11 17:01:08', '2026-11-11 17:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_10_09_005656_create_tikets_table', 1),
(5, '2026_10_09_023919_create_bookings_table', 1),
(6, '2026_10_12_064239_create_reservasis_table', 1),
(7, '2026_10_16_225527_add_role_to_users_table', 1),
(8, '2026_10_20_033624_add_bukti_pembayaran_to_bookings_table', 1),
(9, '2026_10_20_135144_add_no_hp_to_users_table', 1),
(10, '2026_10_21_173316_add_user_id_to_bookings_table', 1),
(11, '2026_11_01_002059_create_pakets_table', 1),
(12, '2026_11_03_115926_add_status_kunjungan_to_bookings_table', 1),
(13, '2026_11_05_074023_create_operasional_settings_table', 1),
(14, '2026_11_05_083230_create_info_contents_table', 1),
(15, '2026_11_06_041326_create_website_contents_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `operasional_settings`
--

CREATE TABLE `operasional_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `suhu` varchar(255) NOT NULL DEFAULT '28°C',
  `kondisi_cuaca` varchar(255) NOT NULL DEFAULT 'Cerah',
  `status_angin` varchar(255) NOT NULL DEFAULT 'Tenang',
  `peringatan_cuaca` varchar(255) NOT NULL DEFAULT 'Normal',
  `kuota_pengunjung` int(11) NOT NULL DEFAULT 1200,
  `pengunjung_aktif` int(11) NOT NULL DEFAULT 0,
  `status_suaran` varchar(255) NOT NULL DEFAULT 'Normal',
  `buletin_lapangan` text DEFAULT NULL,
  `status_gerbang` varchar(255) NOT NULL DEFAULT 'Buka Normal',
  `zona_terumbu_karang` int(11) NOT NULL DEFAULT 320,
  `zona_terumbu_max` int(11) NOT NULL DEFAULT 400,
  `zona_mangrove` int(11) NOT NULL DEFAULT 180,
  `zona_mangrove_max` int(11) NOT NULL DEFAULT 250,
  `status_dermaga` varchar(255) NOT NULL DEFAULT 'Aktif',
  `info_dermaga` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operasional_settings`
--

INSERT INTO `operasional_settings` (`id`, `suhu`, `kondisi_cuaca`, `status_angin`, `peringatan_cuaca`, `kuota_pengunjung`, `pengunjung_aktif`, `status_suaran`, `buletin_lapangan`, `status_gerbang`, `zona_terumbu_karang`, `zona_terumbu_max`, `zona_mangrove`, `zona_mangrove_max`, `status_dermaga`, `info_dermaga`, `created_at`, `updated_at`) VALUES
(1, '28°C', 'Cerah', 'Tenang', 'Normal', 1200, 510, 'Normal', NULL, 'Buka Normal', 320, 400, 180, 250, 'Aktif - Selesai Boarding', NULL, '2026-11-05 04:42:28', '2026-11-08 03:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `pakets`
--

CREATE TABLE `pakets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'badge',
  `badge` varchar(255) DEFAULT NULL,
  `badge_color` varchar(255) NOT NULL DEFAULT 'primary',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `urutan` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pakets`
--

INSERT INTO `pakets` (`id`, `nama`, `deskripsi`, `harga`, `kategori`, `icon`, `badge`, `badge_color`, `is_active`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 'Tiket Masuk WNI', 'Tiket Masuk Kawah putih', 31000, 'tiket_masuk', 'badge', 'Wajib', 'primary', 1, 1, '2026-11-05 20:26:46', '2026-11-05 20:26:46'),
(2, 'Sunan Ibu', 'Sunan ibu dengan pemandangan melihat kawah putih', 15000, 'tiket_masuk', 'badge', 'Best Value', 'primary', 1, 3, '2026-11-06 09:32:08', '2026-11-06 09:35:05'),
(3, 'Tiket Masuk WNA', 'Tiket Masuk Wajib', 90000, 'tiket_masuk', 'badge', 'Wajib', 'primary', 1, 2, '2026-11-06 09:33:12', '2026-11-06 09:33:12'),
(4, 'CHARGE LKHP (Lintas Hutan Kawah Putih)', 'Roda 2 dan roda 6 tidak diperkenankan langsung ke pusat kawah putih', 179000, 'tiket_masuk', 'mobile', 'Best Value', 'primary', 1, 4, '2026-11-06 09:37:47', '2026-11-06 09:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservasis`
--

CREATE TABLE `reservasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_tamu` varchar(255) NOT NULL,
  `jumlah_pax` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Menunggu',
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jKaDUT53zCl0RI74gwnnE3NpQ7dzyqUJTOMLRc1r', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36 Edg/157.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm5XMzNHMThXeVVrWHRQMkhtZzVpUVJnRGVEM0RtU3VxcW56UG5uciI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZW5ndW5qdW5nL2xvZ2luIjtzOjU6InJvdXRlIjtzOjE2OiJwZW5ndW5qdW5nLmxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1794440010),
('Za3TdkzVkGzCz8cuFbE5iAs2jnK28UZK3bK3GlNA', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36 Edg/157.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidmRieTlMWHJBUnB0MnlVenlLRzhwS3JuTkdKdGZHSE9lS040TTUyeiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmZvIjtzOjU6InJvdXRlIjtzOjE1OiJwZW5ndW5qdW5nLmluZm8iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjY0OiJjN2Y4ZjMxMDljZjM1YjlmZTc1NzJmYmIwZTc3OTBkMmUwMzc1YjBmZjQ5NzMzNWZkYjRlZWEyYmEzYWQ1ZDE2Ijt9', 1794441975);

-- --------------------------------------------------------

--
-- Table structure for table `tikets`
--

CREATE TABLE `tikets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `nama_pengunjung` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `tanggal_kunjungan` date NOT NULL,
  `paket_wisata` varchar(255) NOT NULL,
  `jumlah_tiket` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `kode_unik` int(11) NOT NULL,
  `status_pembayaran` enum('pending','paid') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'pengunjung',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `no_hp`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@kawahputih.test', NULL, 'admin', NULL, '$2y$12$.MXFFGQMv8Y8rpBJPpfAue/Z5KenuO3gbEJkEwe9gB748W3WCe49S', NULL, '2026-11-05 04:42:40', '2026-11-05 04:42:40'),
(3, 'Pengelola', 'pengelola@kawahputih.test', NULL, 'pengelola', NULL, '$2y$12$MFk307hK9lTXDWY/gkH3KeiA2/L/G3Pu2.ZzhKkHzk84tuwGBN9X2', NULL, '2026-11-05 06:05:44', '2026-11-05 23:41:29'),
(4, 'Devi Fauziah', 'devifau09@gmail.com', NULL, 'pengunjung', NULL, '$2y$12$6jnxn7UwkoHw0PImwzD7Te/ZUPs8YOJKTkP/gem3nGLrCd56EGOAS', NULL, '2026-11-05 06:09:04', '2026-11-05 06:09:04'),
(5, 'Nita Puspitasari', 'nitaimut11@gmail.com', NULL, 'pengunjung', NULL, '$2y$12$Ybl.z/yPXRA4qzOmlx0WhuKxx8tqOGPUetCEVeXZSmmMMEQPTUKKq', NULL, '2026-11-06 13:10:28', '2026-11-06 13:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `website_contents`
--

CREATE TABLE `website_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `value` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bookings_booking_code_unique` (`booking_code`),
  ADD KEY `bookings_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `info_contents`
--
ALTER TABLE `info_contents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `info_contents_key_unique` (`key`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operasional_settings`
--
ALTER TABLE `operasional_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakets`
--
ALTER TABLE `pakets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `reservasis`
--
ALTER TABLE `reservasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tikets`
--
ALTER TABLE `tikets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tikets_kode_transaksi_unique` (`kode_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `website_contents`
--
ALTER TABLE `website_contents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info_contents`
--
ALTER TABLE `info_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `operasional_settings`
--
ALTER TABLE `operasional_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pakets`
--
ALTER TABLE `pakets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reservasis`
--
ALTER TABLE `reservasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tikets`
--
ALTER TABLE `tikets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `website_contents`
--
ALTER TABLE `website_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
