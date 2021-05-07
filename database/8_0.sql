-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 06, 2021 lúc 09:20 AM
-- Phiên bản máy phục vụ: 5.7.24
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `8.0`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'spaussio@gmail.com', '$2y$10$P9MVmBKQsHj.gXtupEeXxuNow1vsKl37j8vkgpQi0cU83Uf/3x19y', 0, 'T8lQuKW1vqagHVl3YNkSTQyX1B0YqZuLCZdbjvS0rjOg06YoT1nVzC1luju3', '2021-04-20 03:26:17', '2021-04-20 03:59:27'),
(13, 'Kho sỉ Bích Toàn', 'thangnb18@gmail.com', '$2y$10$dfDyyx05DKQnr4SuUTm.d.4amiAoWcHNFF8e4HG2hhux74nVsvn9i', 0, 'eZCpFJi15a4qwarBaWPVQDbV2czeVuC5Y1Z07AT5LTRL9nigvH5CjuTCSkch', '2021-04-26 23:45:55', '2021-05-06 01:32:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `alias`
--

CREATE TABLE `alias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `alias`
--

INSERT INTO `alias` (`id`, `alias`, `type`, `type_id`, `created_at`, `updated_at`) VALUES
(29, '123131313', 'VIDEO', 5, '2021-03-01 21:10:35', '2021-03-01 21:10:35'),
(30, '12312313213', 'NEWS', 2, '2021-03-01 21:11:20', '2021-03-01 21:11:20'),
(32, '12321313131321313123', 'PRODUCT', 1, '2021-03-02 19:42:04', '2021-03-02 19:42:04'),
(33, 'adadsadadvfdfgdfg', 'PRODUCT', 1, '2021-03-02 21:17:57', '2021-03-02 21:17:57'),
(44, 'kep-mui-silicon-nhat-ban', 'PRODUCT', 12, '2021-03-14 02:16:26', '2021-03-14 02:16:26'),
(45, 'nhiet-ke-mini-cho-be', 'PRODUCT', 13, '2021-03-14 02:17:30', '2021-03-14 02:17:30'),
(46, 'set-12-but-chi-deli-vo-do', 'PRODUCT', 14, '2021-03-14 02:18:36', '2021-03-14 02:18:36'),
(47, 'cay-chuot-toc', 'PRODUCT', 15, '2021-03-14 02:19:16', '2021-03-14 02:19:16'),
(48, 'vi-10-but-chi-deli-xanh', 'PRODUCT', 16, '2021-03-14 02:20:07', '2021-03-14 02:20:07'),
(49, 'co-le-bong-tuyet-da-nang', 'PRODUCT', 17, '2021-03-14 02:20:46', '2021-03-14 02:20:46'),
(50, 'set-10-trau-vang-op-dt', 'PRODUCT', 18, '2021-03-14 02:21:29', '2021-03-14 02:21:29'),
(51, 'set-3-buoc-toc-ngoc-trai', 'PRODUCT', 19, '2021-03-14 02:22:15', '2021-03-14 02:22:15'),
(52, 'may-cao-long-may-sweet', 'PRODUCT', 20, '2021-03-14 02:22:56', '2021-03-14 02:22:56'),
(53, 'tui-buoc-toc-tre-em-50cgoi', 'PRODUCT', 21, '2021-03-14 02:39:55', '2021-03-14 02:39:55'),
(54, 'tat-tang-hinh-sieu-mong', 'PRODUCT', 22, '2021-03-14 02:40:58', '2021-03-14 02:40:58'),
(55, 'buoc-toc-charm-nu', 'PRODUCT', 23, '2021-03-14 02:41:47', '2021-03-14 02:41:47'),
(56, 'buoc-toc-charm-m-nu', 'PRODUCT', 24, '2021-03-14 02:42:20', '2021-03-14 02:42:20'),
(57, 'tui-zip-100-buoc-toc-nu', 'PRODUCT', 25, '2021-03-14 02:43:05', '2021-03-14 02:43:05'),
(58, 'dua-tap-an-cho-be', 'PRODUCT', 26, '2021-03-14 02:43:24', '2021-03-14 02:43:24'),
(59, 'cha-got-chan-hop-nhom', 'PRODUCT', 27, '2021-03-14 02:44:11', '2021-03-14 02:44:11'),
(60, 'set-10-ban-chai-xuat-nhat', 'PRODUCT', 28, '2021-03-14 02:44:33', '2021-03-14 02:44:33'),
(61, 'set-5-mon-di-chuyen-do-vat', 'PRODUCT', 29, '2021-03-14 02:45:13', '2021-03-14 02:45:13'),
(62, 'tat-dua-sieu-dai', 'PRODUCT', 30, '2021-03-14 02:45:43', '2021-03-14 02:45:43'),
(63, 'tat-muji-nhat-mong', 'PRODUCT', 31, '2021-03-14 02:46:32', '2021-03-14 02:46:32'),
(64, 'lot-giay-4d', 'PRODUCT', 32, '2021-03-14 02:46:57', '2021-03-14 02:46:57'),
(65, 'tui-deo-cheo-tre-em', 'PRODUCT', 33, '2021-03-14 02:47:33', '2021-03-14 02:47:33'),
(66, 'voi-tang-ap-nhua-dai', 'PRODUCT', 34, '2021-04-01 19:16:06', '2021-04-01 19:16:06'),
(67, 'kep-ga-giuong-set-4', 'PRODUCT', 35, '2021-04-01 19:17:01', '2021-04-01 19:17:01'),
(68, 'cay-lau-nha-tim-ban-nhua', 'PRODUCT', 36, '2021-04-01 19:17:42', '2021-04-01 19:17:42'),
(69, 'goi-chu-u-hkm-ensure-gold', 'PRODUCT', 37, '2021-04-01 19:20:43', '2021-04-01 19:20:43'),
(70, 'sung-moi-lua-bep-gas', 'PRODUCT', 38, '2021-04-01 19:21:13', '2021-04-01 19:21:13'),
(71, 'ro-nao-inox-da-nang-size-26cm', 'PRODUCT', 39, '2021-04-01 19:22:03', '2021-04-01 19:22:03'),
(72, 'gia-treo-quan-ao-inox-loai-1', 'PRODUCT', 40, '2021-04-01 19:22:34', '2021-04-01 19:22:34'),
(73, 'coc-cafe-tu-khuay', 'PRODUCT', 41, '2021-04-01 19:23:05', '2021-04-01 19:23:05'),
(74, 'set-3-bong-den-tron-kem-dk', 'PRODUCT', 42, '2021-04-01 19:28:06', '2021-04-01 19:28:06'),
(75, 'u-chao-cao-450ml', 'PRODUCT', 43, '2021-04-01 19:30:02', '2021-04-01 19:30:02'),
(76, 'u-chao-thap-430ml', 'PRODUCT', 44, '2021-04-01 19:30:59', '2021-04-01 19:30:59'),
(77, 'hop-kep-mi-nam-cham', 'PRODUCT', 45, '2021-04-01 19:35:09', '2021-04-01 19:35:09'),
(78, 'quan-lot-hac-hong', 'PRODUCT', 46, '2021-04-01 19:35:27', '2021-04-01 19:35:27'),
(79, 'ca-my-da-nang-can-dai', 'PRODUCT', 47, '2021-04-01 19:36:43', '2021-04-01 19:36:43'),
(80, 'ke-sach-nhua-thong-min', 'PRODUCT', 48, '2021-04-01 19:37:41', '2021-04-01 19:37:41'),
(81, 'noi-lau-inox-2-ngan', 'PRODUCT', 49, '2021-04-01 19:38:10', '2021-04-01 19:38:10'),
(82, 'but-bi-nuoc-set-100c', 'PRODUCT', 50, '2021-04-01 19:38:37', '2021-04-01 19:38:37'),
(83, 'bang-keo-chong-tham-5cm', 'PRODUCT', 51, '2021-04-01 19:39:59', '2021-04-01 19:39:59'),
(84, 'bang-keo-chong-tham-10cm', 'PRODUCT', 52, '2021-04-01 19:41:37', '2021-04-01 19:41:37'),
(85, 'choi-phat-tran-282cm', 'PRODUCT', 53, '2021-04-01 19:41:59', '2021-04-01 19:41:59'),
(86, 'o-dien-xanh-da-nang', 'PRODUCT', 54, '2021-04-01 19:42:14', '2021-04-04 20:10:55'),
(87, 'hop-dung-o-dien-nhua', 'PRODUCT', 55, '2021-04-01 19:43:03', '2021-04-01 19:43:03'),
(88, 'tui-treo-do-lot', 'PRODUCT', 56, '2021-04-01 19:46:23', '2021-04-01 19:46:23'),
(89, 'ke-nhua-gac-bon-rua-bat', 'PRODUCT', 57, '2021-04-01 19:47:46', '2021-04-01 19:47:46'),
(90, 'guong-tai-meo-de-tron', 'PRODUCT', 58, '2021-04-01 19:48:27', '2021-04-01 19:48:27'),
(91, 'balo-ga', 'PRODUCT', 59, '2021-04-01 19:48:50', '2021-04-01 19:48:50'),
(92, 'xay-toi-tay', 'PRODUCT', 60, '2021-04-01 19:49:10', '2021-04-01 19:49:10'),
(93, 'hut-mui-little-bees', 'PRODUCT', 61, '2021-04-01 19:49:28', '2021-04-01 19:49:28'),
(94, 'bong-tam-can-dai', 'PRODUCT', 62, '2021-04-01 19:49:55', '2021-04-01 19:49:55'),
(95, 'bong-tam-silicon-hinh-chuot', 'PRODUCT', 63, '2021-04-01 19:50:59', '2021-04-01 19:50:59'),
(96, 'que-gap-rac-60cm', 'PRODUCT', 64, '2021-04-01 19:51:23', '2021-04-01 19:51:23'),
(97, 'que-gap-rac-90cm', 'PRODUCT', 65, '2021-04-01 19:51:40', '2021-04-01 19:51:40'),
(98, 'hut-ruou', 'PRODUCT', 66, '2021-04-01 19:52:17', '2021-04-01 19:52:17'),
(99, 'ro-rac-gap-gon-size-to', 'PRODUCT', 67, '2021-04-01 19:53:11', '2021-04-01 19:53:11'),
(100, 'ngan-keo-nhua-nhat', 'PRODUCT', 68, '2021-04-01 19:53:43', '2021-04-01 19:53:43'),
(101, 'chao-da-26cm', 'PRODUCT', 69, '2021-04-01 19:54:01', '2021-04-01 19:54:01'),
(102, 'keo-sk5-hop-den', 'PRODUCT', 70, '2021-04-01 19:54:43', '2021-04-01 19:54:43'),
(103, 'choi-co-nha-wc-silicon', 'PRODUCT', 71, '2021-04-01 19:55:13', '2021-04-01 19:55:13'),
(104, 'tui-phao-dung-dien-thoai', 'PRODUCT', 72, '2021-04-01 19:56:13', '2021-04-01 19:56:13'),
(105, 'mieng-hoa-tiet-dan-nen-da-hoa-set-15c', 'PRODUCT', 73, '2021-04-01 19:57:02', '2021-04-01 19:57:02'),
(106, 'tranh-lo-hoa-3d', 'PRODUCT', 74, '2021-04-01 19:57:24', '2021-04-01 19:57:24'),
(107, 'mu-goi-dau-cho-be', 'PRODUCT', 75, '2021-04-01 19:57:54', '2021-04-01 19:57:54'),
(108, 'may-phun-suong-mini', 'PRODUCT', 76, '2021-04-01 20:01:15', '2021-04-01 20:01:15'),
(109, 'bong-tam-2-mat', 'PRODUCT', 77, '2021-04-01 20:02:56', '2021-04-01 20:02:56'),
(110, 'nao-soi-3in1-vi', 'PRODUCT', 78, '2021-04-01 20:03:49', '2021-04-01 20:03:49'),
(111, 'nao-nhua-2-dau', 'PRODUCT', 79, '2021-04-01 20:04:24', '2021-04-01 20:04:24'),
(112, 'keo-sk5-vi', 'PRODUCT', 80, '2021-04-01 20:04:54', '2021-04-01 20:04:54'),
(113, 'tui-da-forever', 'PRODUCT', 81, '2021-04-01 20:05:20', '2021-04-01 20:05:20'),
(114, 'urgo-hoat-hinh', 'PRODUCT', 82, '2021-04-01 20:07:14', '2021-04-01 20:07:14'),
(115, 'urgo-100-mon', 'PRODUCT', 83, '2021-04-01 20:08:21', '2021-04-01 20:08:21'),
(116, 'khau-trang-3d-naru-kids', 'PRODUCT', 84, '2021-04-01 20:09:27', '2021-04-01 20:09:27'),
(117, 'bo-coc-vang-kem-khay-set-8-mon', 'PRODUCT', 85, '2021-04-01 20:10:40', '2021-04-01 20:10:40'),
(118, 'mang-nhom-an-lanh', 'PRODUCT', 86, '2021-04-01 20:11:08', '2021-04-01 20:11:08'),
(119, 'giay-bac-an-lanh-5m-x-45cm', 'PRODUCT', 87, '2021-04-01 20:14:24', '2021-04-01 20:14:24'),
(120, 'mang-boc-tp-pe-an-lanh-200m-x-30cm', 'PRODUCT', 88, '2021-04-01 20:16:46', '2021-04-01 20:16:46'),
(121, 'phao-loc-can-may-giat', 'PRODUCT', 89, '2021-04-01 20:17:12', '2021-04-01 20:17:12'),
(122, 'tham-da-nhat', 'PRODUCT', 90, '2021-04-01 20:19:27', '2021-04-01 20:19:27'),
(123, 'coc-sua-chia-vach', 'PRODUCT', 91, '2021-04-01 20:19:49', '2021-04-01 20:19:49'),
(124, 'tui-dung-tp-an-lanh-1kg', 'PRODUCT', 92, '2021-04-01 20:26:20', '2021-04-01 20:26:20'),
(125, 'but-chi-mau-pensing-36-mau', 'PRODUCT', 93, '2021-04-01 20:27:03', '2021-04-01 20:27:03'),
(126, 'but-nho-2-dau-set-6c', 'PRODUCT', 94, '2021-04-01 20:27:35', '2021-04-01 20:27:35'),
(127, 'den-xong-tinh-dau-bat-trang-to', 'PRODUCT', 95, '2021-04-01 20:28:03', '2021-04-01 20:28:03'),
(128, 'den-xong-tinh-dau-bat-trang-nho', 'PRODUCT', 96, '2021-04-01 20:28:18', '2021-04-01 20:28:18'),
(129, 'lo-tinh-dau-bat-trang', 'PRODUCT', 97, '2021-04-01 20:28:47', '2021-04-01 20:28:47'),
(130, 'binh-giu-nhiet-mickey-500ml', 'PRODUCT', 98, '2021-04-01 20:29:23', '2021-04-01 20:29:23'),
(131, 'gel-tay-moc-hop-do', 'PRODUCT', 99, '2021-04-01 20:29:56', '2021-04-01 20:29:56'),
(132, 'chong-rung-may-giat-set-4c', 'PRODUCT', 100, '2021-04-01 20:30:26', '2021-04-01 20:30:26'),
(133, 'giay-lau-giay-sneacker', 'PRODUCT', 101, '2021-04-01 20:30:50', '2021-04-01 20:30:50'),
(134, 'chong-cam-chong-can-2-oc-loai-1', 'PRODUCT', 102, '2021-04-01 20:37:29', '2021-04-01 20:37:29'),
(135, 'ca-chao-inox-do-16cm', 'PRODUCT', 103, '2021-04-01 20:38:13', '2021-04-01 20:38:13'),
(136, 'moc-treo-co-chai', 'PRODUCT', 104, '2021-04-01 20:38:50', '2021-04-01 20:38:50'),
(137, 'binh-giu-nhiet-800ml', 'PRODUCT', 105, '2021-04-01 20:39:11', '2021-04-01 20:39:11'),
(138, 'lo-thong-cong-nap-xanh', 'PRODUCT', 106, '2021-04-01 20:39:37', '2021-04-01 20:39:37'),
(139, 'noi-chien-nap-dau', 'PRODUCT', 107, '2021-04-01 20:40:55', '2021-04-01 20:40:55'),
(140, 'hop-dung-giay-an-hinh-tv', 'PRODUCT', 108, '2021-04-01 20:41:31', '2021-04-01 20:41:31'),
(141, 'ke-nhua-da-nang-2-tang-gap-gon', 'PRODUCT', 109, '2021-04-01 20:41:57', '2021-04-01 20:41:57'),
(142, 'bo-bat-hoa-hut-chan-khong-set-3c', 'PRODUCT', 110, '2021-04-01 20:42:21', '2021-04-01 20:42:21'),
(143, 'tui-bot-thong-cong-hq', 'PRODUCT', 111, '2021-04-01 20:43:06', '2021-04-01 20:43:06'),
(144, 'keo-va-tuong', 'PRODUCT', 112, '2021-04-01 20:43:26', '2021-04-01 20:43:26'),
(145, 'vien-tha-bon-cau', 'PRODUCT', 113, '2021-04-01 20:44:24', '2021-04-01 20:44:24'),
(146, 'xit-bep-kitchen', 'PRODUCT', 114, '2021-04-01 20:44:47', '2021-04-01 20:44:47'),
(147, 'xit-nha-wc-xanh', 'PRODUCT', 115, '2021-04-01 20:45:05', '2021-04-01 20:45:05'),
(148, 'gio-loc-rac-inox-kem-nap', 'PRODUCT', 116, '2021-04-01 20:45:24', '2021-04-01 20:45:24'),
(149, 'kep-voi-rua-bat', 'PRODUCT', 117, '2021-04-01 20:45:42', '2021-04-01 20:45:42'),
(151, 'vien-nuoc-giat-30vh', 'PRODUCT', 119, '2021-04-01 20:50:24', '2021-04-01 20:50:24'),
(152, 'lon-tha-bon-cau', 'PRODUCT', 120, '2021-04-01 20:50:51', '2021-04-01 20:50:51'),
(153, 'gac-chao-to', 'PRODUCT', 121, '2021-04-01 20:53:03', '2021-04-01 20:53:03'),
(154, 'gac-chao-nho-24-26cm', 'PRODUCT', 122, '2021-04-01 20:53:21', '2021-04-01 20:53:21'),
(155, 'tui-dung-chan-khung-sat', 'PRODUCT', 123, '2021-04-01 20:53:54', '2021-04-01 20:53:54'),
(156, 'tay-moc-tracatu-500ml', 'PRODUCT', 124, '2021-04-01 20:54:15', '2021-04-01 20:54:15'),
(157, 'coc-ham-nong-lucky', 'PRODUCT', 125, '2021-04-01 20:54:35', '2021-04-01 20:54:35'),
(158, 'tui-dung-giay', 'PRODUCT', 126, '2021-04-01 20:55:02', '2021-04-01 20:55:02'),
(159, 'tat-dui-hq-den-3-soc', 'PRODUCT', 127, '2021-04-01 20:55:29', '2021-04-01 20:55:29'),
(160, 'set-3-hop-nhua-hkm-pepsi', 'PRODUCT', 128, '2021-04-01 20:56:44', '2021-04-01 20:56:44'),
(161, 'boc-quat-re', 'PRODUCT', 129, '2021-04-01 20:57:08', '2021-04-01 20:57:08'),
(162, 'khan-u-toc-hinh-tho', 'PRODUCT', 130, '2021-04-01 20:57:48', '2021-04-01 20:57:48'),
(163, 'khay-hung-inox', 'PRODUCT', 131, '2021-04-01 20:58:08', '2021-04-01 20:58:08'),
(165, 'tui-dung-chan-washday', 'PRODUCT', 133, '2021-04-01 20:58:57', '2021-04-01 20:58:57'),
(166, 'tui-trong-du-lich-pink', 'PRODUCT', 134, '2021-04-01 20:59:56', '2021-04-01 20:59:56'),
(167, 'tui-giu-nhiet-hinh-ca', 'PRODUCT', 135, '2021-04-01 21:00:21', '2021-04-01 21:00:21'),
(168, 'ro-kep-tu-lanh', 'PRODUCT', 136, '2021-04-01 21:00:41', '2021-04-01 21:00:41'),
(170, 'chau-thot-gap-gon', 'PRODUCT', 138, '2021-04-01 21:03:06', '2021-04-01 21:03:06'),
(171, 'bat-hut-chan-khong-vinmart-500ml', 'PRODUCT', 139, '2021-04-01 21:11:42', '2021-04-01 21:11:42'),
(172, 'bong-tay-trang-222m', 'PRODUCT', 140, '2021-04-01 21:12:04', '2021-04-01 21:12:04'),
(173, 'mut-trang-diem-keli', 'PRODUCT', 141, '2021-04-01 21:12:35', '2021-04-01 21:12:35'),
(174, 'hop-buoc-toc-12ct', 'PRODUCT', 142, '2021-04-01 21:13:06', '2021-04-01 21:13:06'),
(175, 'den-nhay-sao-12-den', 'PRODUCT', 143, '2021-04-01 21:13:42', '2021-04-01 21:13:42'),
(176, 'voi-nuoc-tu-dan-30m', 'PRODUCT', 144, '2021-04-01 21:14:06', '2021-04-01 21:14:06'),
(177, 'chau-massage-chan', 'PRODUCT', 145, '2021-04-01 21:14:21', '2021-04-01 21:14:21'),
(178, 'tham-yoga-2-lop-6-li', 'PRODUCT', 146, '2021-04-01 21:14:46', '2021-04-01 21:14:46'),
(179, 'moc-treo-dau-huou', 'PRODUCT', 147, '2021-04-01 21:15:27', '2021-04-01 21:15:27'),
(180, 'tat-noel', 'PRODUCT', 148, '2021-04-01 21:15:55', '2021-04-01 21:15:55'),
(181, 'set-3-tat-dui-cho-be-3-6m', 'PRODUCT', 149, '2021-04-01 21:17:26', '2021-04-01 21:17:26'),
(182, 'bom-ngoc-trai-kem-bang-do', 'PRODUCT', 150, '2021-04-01 21:17:58', '2021-04-01 21:17:58'),
(183, 'kieng-chan-gio-bep-gas', 'PRODUCT', 151, '2021-04-01 21:18:24', '2021-04-01 21:18:24'),
(184, 'ga-chong-tham-nhat-80120cm', 'PRODUCT', 152, '2021-04-01 21:20:06', '2021-04-01 21:20:06'),
(185, 'ao-mua-phan-quang-tq-1-dau', 'PRODUCT', 153, '2021-04-01 21:20:42', '2021-04-01 21:20:42'),
(186, 'tham-bep-set-2c', 'PRODUCT', 154, '2021-04-01 21:21:03', '2021-04-01 21:21:03'),
(187, 'may-say-toc-panansoni-5528-3500w', 'PRODUCT', 155, '2021-04-01 21:22:13', '2021-04-01 21:22:13'),
(188, 'set-mu-khan-cho-be-3-6m', 'PRODUCT', 156, '2021-04-01 21:22:46', '2021-04-01 21:22:46'),
(189, 'xay-tieu-nap-nhua', 'PRODUCT', 157, '2021-04-01 21:23:07', '2021-04-01 21:23:07'),
(190, 'diu-tap-di-baby-deer', 'PRODUCT', 158, '2021-04-01 21:24:39', '2021-04-01 21:24:39'),
(191, 'o-hoa-cuc-trong-can-dai', 'PRODUCT', 159, '2021-04-01 21:25:06', '2021-04-01 21:25:06'),
(192, 'vien-tay-long-may-giat', 'PRODUCT', 160, '2021-04-01 21:25:35', '2021-04-01 21:25:35'),
(193, 'o-nguoc', 'PRODUCT', 161, '2021-04-01 21:27:38', '2021-04-01 21:27:38'),
(194, 'o-hoa-cuc-tu-bung', 'PRODUCT', 162, '2021-04-01 21:28:02', '2021-04-01 21:28:02'),
(195, 'hop-buoc-toc-tho-hong', 'PRODUCT', 163, '2021-04-01 21:28:21', '2021-04-01 21:28:21'),
(196, 'hop-mau-150ct', 'PRODUCT', 164, '2021-04-01 21:31:50', '2021-04-01 21:31:50'),
(197, 'moc-dinh-3d', 'PRODUCT', 165, '2021-04-01 21:32:12', '2021-04-01 21:32:12'),
(198, 'hop-but-sat-hinh-o-to', 'PRODUCT', 166, '2021-04-01 21:32:42', '2021-04-01 21:32:42'),
(199, 'mieng-lau-san-tu-tan', 'PRODUCT', 167, '2021-04-01 21:33:04', '2021-04-01 21:33:04'),
(200, 'giay-nen-duc-lo-size-23cm', 'PRODUCT', 168, '2021-04-01 21:33:24', '2021-04-01 21:33:24'),
(201, 'den-phun-suong-van-go', 'PRODUCT', 169, '2021-04-01 21:33:49', '2021-04-01 21:33:49'),
(202, 'boc-quat-cay', 'PRODUCT', 170, '2021-04-01 21:34:15', '2021-04-01 21:34:15'),
(203, 'ro-gap-gon', 'PRODUCT', 171, '2021-04-01 21:34:53', '2021-04-01 21:34:53'),
(204, 'xa-comfor-580ml', 'PRODUCT', 172, '2021-04-01 21:35:19', '2021-04-01 21:35:19'),
(205, 'hu-thuy-tinh-hkm-lumilac', 'PRODUCT', 173, '2021-04-01 21:35:42', '2021-04-01 21:35:42'),
(206, 'hop-but-chi-deli-50c', 'PRODUCT', 174, '2021-04-01 21:36:04', '2021-04-01 21:36:04'),
(207, 'vi-but-chi-deli-xanh-10c', 'PRODUCT', 175, '2021-04-01 21:36:54', '2021-04-01 21:36:54'),
(208, 'co-le-bong-tuyet', 'PRODUCT', 176, '2021-04-01 21:37:24', '2021-04-01 21:37:24'),
(209, 'hop-but-chi-2b-12c', 'PRODUCT', 177, '2021-04-01 21:38:28', '2021-04-01 21:38:28'),
(210, 'chuot-toc', 'PRODUCT', 178, '2021-04-01 21:39:06', '2021-04-01 21:39:06'),
(211, 'nhiet-ke-mini-tre-em', 'PRODUCT', 179, '2021-04-01 21:39:31', '2021-04-01 21:39:31'),
(213, 'tat-muji', 'PRODUCT', 181, '2021-04-01 21:39:58', '2021-04-01 21:39:58'),
(214, 'nuoc-giat-otc', 'PRODUCT', 182, '2021-04-01 21:41:03', '2021-04-01 21:41:03'),
(215, 'thu-gon-bon-cau-hinh-ech', 'PRODUCT', 183, '2021-04-01 21:41:29', '2021-04-01 21:41:29'),
(216, 'ghe-ve-sinh-chefman', 'PRODUCT', 184, '2021-04-01 21:41:55', '2021-04-01 21:41:55'),
(217, 'giay-rut-vnairlines-goi', 'PRODUCT', 185, '2021-04-01 21:42:40', '2021-04-01 21:42:40'),
(218, 'kep-mui-silicon-nhat', 'PRODUCT', 186, '2021-04-01 21:42:57', '2021-04-01 21:42:57'),
(219, 'lot-giay-silicon-4d', 'PRODUCT', 187, '2021-04-01 21:43:22', '2021-04-01 21:43:22'),
(220, 'chan-he-ikea', 'PRODUCT', 188, '2021-04-01 21:43:47', '2021-04-01 21:43:47'),
(221, 'hop-nao-hinh-chu-nhat', 'PRODUCT', 189, '2021-04-01 21:44:30', '2021-04-01 21:44:30'),
(222, 'ro-tron-2-lop', 'PRODUCT', 190, '2021-04-01 21:44:56', '2021-04-01 21:44:56'),
(223, 'ro-lau-4-ngan', 'PRODUCT', 191, '2021-04-01 21:45:17', '2021-04-01 21:45:17'),
(224, 'tat-dui-hq-set-5-mau-10c', 'PRODUCT', 192, '2021-04-01 21:46:00', '2021-04-01 21:46:00'),
(225, 'giay-an-vuong-1kg-elesy', 'PRODUCT', 193, '2021-04-01 21:46:25', '2021-04-01 21:46:25'),
(226, 'tam-bac-chan-mo-bep-gas', 'PRODUCT', 194, '2021-04-01 21:47:00', '2021-04-01 21:47:00'),
(227, 'boc-bat-silicon-set-6-mon', 'PRODUCT', 195, '2021-04-01 21:47:39', '2021-04-01 21:47:39'),
(228, 'set-5-tui-giat-hoa', 'PRODUCT', 196, '2021-04-01 21:48:04', '2021-04-01 21:48:04'),
(229, 'khuon-gio-inox-1kg', 'PRODUCT', 197, '2021-04-01 21:48:39', '2021-04-01 21:48:39'),
(230, 'gio-hoa-ban-cong', 'PRODUCT', 198, '2021-04-01 21:48:57', '2021-04-01 21:48:57'),
(231, 'son-ke-vach', 'PRODUCT', 199, '2021-04-01 21:49:12', '2021-04-01 21:49:12'),
(232, 'dua-hop-kim', 'PRODUCT', 200, '2021-04-01 21:49:25', '2021-04-01 21:49:25'),
(233, 'may-khau-mini-cmd', 'PRODUCT', 201, '2021-04-01 21:50:02', '2021-04-01 21:50:02'),
(234, 'ke-treo-dam-may', 'PRODUCT', 202, '2021-04-01 21:50:34', '2021-04-01 21:50:34'),
(235, 'coc-gau-da-nang', 'PRODUCT', 203, '2021-04-01 21:50:50', '2021-04-01 21:50:50'),
(236, 'khau-trang-mj-mask', 'PRODUCT', 204, '2021-04-01 21:51:20', '2021-04-01 21:51:20'),
(237, 'mu-vanh-rong', 'PRODUCT', 205, '2021-04-01 21:51:41', '2021-04-01 21:51:41'),
(238, 'mu-vanh-gucci', 'PRODUCT', 206, '2021-04-01 21:52:02', '2021-04-01 21:52:02'),
(239, 'tui-thom-hoa-lavender', 'PRODUCT', 207, '2021-04-01 21:52:22', '2021-04-01 21:52:22'),
(240, 'may-xay-da-osaka-nap-dong', 'PRODUCT', 208, '2021-04-01 21:52:42', '2021-04-01 21:52:42'),
(241, 'ke-giay-inox-5-tang', 'PRODUCT', 209, '2021-04-01 21:53:14', '2021-04-01 21:53:14'),
(242, 'moc-treo-giay', 'PRODUCT', 210, '2021-04-01 21:53:44', '2021-04-01 21:53:44'),
(243, 'ke-dan-tuong-dung-dieu-khien', 'PRODUCT', 211, '2021-04-01 21:54:07', '2021-04-01 21:54:07'),
(244, 'may-rua-mat-forever-tron', 'PRODUCT', 212, '2021-04-01 21:54:33', '2021-04-01 21:54:33'),
(245, 'ga-van-cot', 'PRODUCT', 213, '2021-04-01 21:54:48', '2021-04-01 21:54:48'),
(246, 'bo-cam-ban-chai', 'PRODUCT', 214, '2021-04-01 21:55:09', '2021-04-01 21:55:09'),
(247, 'phong-toc-tron-set-2c', 'PRODUCT', 215, '2021-04-01 21:55:39', '2021-04-01 21:55:39'),
(248, 'gia-treo-khan-nha-tam-loai-dai', 'PRODUCT', 216, '2021-04-01 21:56:16', '2021-04-01 21:56:16'),
(249, 'cuon-rac-mini-tq', 'PRODUCT', 217, '2021-04-01 21:56:35', '2021-04-01 21:56:35'),
(250, 'tat-chong-thoi-nam-co-cao', 'PRODUCT', 218, '2021-04-01 21:57:01', '2021-04-01 21:57:01'),
(251, 'den-ngu-hinh-nam', 'PRODUCT', 219, '2021-04-01 21:58:05', '2021-04-01 21:58:05'),
(252, 'set-dao-cao-rau-36-luoi', 'PRODUCT', 220, '2021-04-01 21:58:25', '2021-04-01 21:58:25'),
(253, 'kep-can-choi', 'PRODUCT', 221, '2021-04-01 21:58:52', '2021-04-01 21:58:52'),
(254, 'set-3-tui-dung-chan', 'PRODUCT', 222, '2021-04-01 21:59:23', '2021-04-01 21:59:23'),
(255, 'day-phoi-quan-ao-thong-minh', 'PRODUCT', 223, '2021-04-02 00:01:17', '2021-04-02 00:01:17'),
(256, 'tui-rac-an-lanh-05kg', 'PRODUCT', 224, '2021-04-02 00:30:28', '2021-04-02 00:30:28'),
(257, 'bo-choi-lau-nha-tim-chefman-size-to', 'PRODUCT', 225, '2021-04-02 01:21:25', '2021-04-02 01:21:25'),
(258, 'tham-xop-xpe-gap-gon-8li', 'PRODUCT', 226, '2021-04-02 01:34:10', '2021-04-02 01:34:10'),
(259, 'boc-may-giat-cua-tren', 'PRODUCT', 227, '2021-04-02 01:56:46', '2021-04-02 01:56:46'),
(260, 'boc-may-giat-cua-truoc', 'PRODUCT', 228, '2021-04-02 01:56:58', '2021-04-02 01:56:58'),
(261, 'bat-phu-xe-may', 'PRODUCT', 229, '2021-04-02 02:03:27', '2021-04-02 02:03:27'),
(262, 'den-bat-muoi-anh-sang-xanh', 'PRODUCT', 230, '2021-04-02 03:30:39', '2021-04-02 03:30:39'),
(263, 'tui-loc-rac-bon-rua-100ctui', 'PRODUCT', 231, '2021-04-04 02:33:26', '2021-04-04 02:33:26'),
(264, 'set-mu-kem-khau-trang-nu', 'PRODUCT', 232, '2021-04-04 02:42:13', '2021-04-04 02:42:13'),
(265, 'can-choi-tu-vat-thong-min', 'PRODUCT', 233, '2021-04-04 19:01:48', '2021-04-04 19:01:48'),
(266, 'may-xay-dau-meet-juice', 'PRODUCT', 234, '2021-04-04 19:04:59', '2021-04-04 19:04:59'),
(267, 'ban-la-hoi-nuoc-sokany-3060', 'PRODUCT', 235, '2021-04-04 19:05:38', '2021-04-04 19:05:38'),
(268, 'moc-9-lo', 'PRODUCT', 236, '2021-04-04 19:12:29', '2021-04-04 19:12:29'),
(269, 'boc-thuc-pham-gau-100ctui', 'PRODUCT', 237, '2021-04-04 19:18:04', '2021-04-04 19:18:04'),
(270, 'may-xay-osaka-hong-nap-nau', 'PRODUCT', 238, '2021-04-04 21:01:02', '2021-04-04 21:01:02'),
(271, 'may-xoan-toc-hong-vivodo-voguo', 'PRODUCT', 239, '2021-04-04 21:05:57', '2021-04-04 21:05:57'),
(272, 'binh-nhua-detox-pongdang-1000ml', 'PRODUCT', 240, '2021-04-04 21:07:49', '2021-04-04 21:07:49'),
(273, 'xop-chan-cua-tron', 'PRODUCT', 241, '2021-04-04 21:10:20', '2021-04-04 21:10:20'),
(274, 'khan-lau-zigzag-2-mat-set-10ctui', 'PRODUCT', 242, '2021-04-04 21:11:32', '2021-04-04 21:11:32'),
(275, 'that-lung-ck', 'PRODUCT', 243, '2021-04-04 21:14:23', '2021-04-04 21:14:23'),
(276, 'tui-dung-tp-an-lanh-05kg', 'PRODUCT', 244, '2021-04-04 21:15:51', '2021-04-04 21:15:51'),
(277, 'set-6-coc-thuy-tinh', 'PRODUCT', 245, '2021-04-04 21:19:31', '2021-04-04 21:19:31'),
(278, 'binh-loc-dau-inox', 'PRODUCT', 246, '2021-04-04 21:20:41', '2021-04-04 21:20:41'),
(279, 'moc-trong-sieu-dinh', 'PRODUCT', 247, '2021-04-04 21:22:42', '2021-04-04 21:22:42'),
(280, 'kep-nong-inox', 'PRODUCT', 248, '2021-04-04 21:25:43', '2021-04-04 21:25:43'),
(281, 'giay-rut-sipiao-vn', 'PRODUCT', 249, '2021-04-04 21:31:11', '2021-04-04 21:31:11'),
(282, 'giay-ve-sinh-baihou-36c', 'PRODUCT', 250, '2021-04-04 21:44:12', '2021-04-04 21:44:12'),
(283, 'hop-dung-tui-nilon-dan-tuong', 'PRODUCT', 251, '2021-04-05 03:17:15', '2021-04-05 03:17:15'),
(284, 'khau-trang-4-lop-otc', 'PRODUCT', 252, '2021-04-07 03:51:22', '2021-04-07 03:51:22'),
(285, 'giay-ve-sinh-bich-50-cuon-tq', 'PRODUCT', 253, '2021-04-07 03:56:36', '2021-04-07 03:56:36'),
(286, 'may-xay-cam-tay-honguo', 'PRODUCT', 254, '2021-04-08 23:02:26', '2021-04-08 23:02:26'),
(287, 'bong-dien-nlmt-1659', 'PRODUCT', 255, '2021-04-11 04:18:42', '2021-04-11 04:18:42'),
(288, 'vat-cam-lua-mach-ecoco', 'PRODUCT', 256, '2021-04-15 02:01:42', '2021-04-15 02:01:42'),
(289, 'set-3-tui-dung-my-pham-givenchy', 'PRODUCT', 257, '2021-04-15 02:02:04', '2021-04-15 02:02:04'),
(290, 'bo-choi-lau-nha-tu-vat-loai-to', 'PRODUCT', 258, '2021-04-17 20:41:22', '2021-04-17 20:41:22'),
(291, 'thot-inox-su304', 'PRODUCT', 259, '2021-04-18 20:01:51', '2021-04-18 20:01:51'),
(292, 'co-xoong-han-quoc', 'PRODUCT', 260, '2021-04-19 00:26:19', '2021-04-19 00:26:19'),
(293, 'tap-de-tho', 'PRODUCT', 261, '2021-04-19 20:44:28', '2021-04-19 20:44:28'),
(294, 'vi-hap-xoi-xoe-inox', 'PRODUCT', 262, '2021-04-20 01:26:43', '2021-04-20 01:26:43'),
(295, 'boc-may-giat-cua-tren-loai-day', 'PRODUCT', 263, '2021-04-26 00:22:54', '2021-04-26 00:22:54'),
(296, 'boc-may-giat-cua-truoc-loai-day', 'PRODUCT', 264, '2021-04-26 00:23:10', '2021-04-26 00:23:10'),
(297, 'bo-do-choi-ghep-go', 'PRODUCT', 265, '2021-04-26 00:24:31', '2021-04-26 00:24:31'),
(298, 'set-thia-dia-bo-sua', 'PRODUCT', 266, '2021-05-04 02:58:05', '2021-05-04 02:58:05'),
(299, 'ro-nhua-dung-bat-da-nang', 'PRODUCT', 267, '2021-05-04 19:59:39', '2021-05-04 19:59:39'),
(300, 'khuon-kem-silicon', 'PRODUCT', 268, '2021-05-04 20:02:36', '2021-05-06 01:31:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '9999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_categorys`
--

CREATE TABLE `attribute_categorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `public` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_product`
--

CREATE TABLE `attribute_product` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `user_edit` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `title_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_post`
--

CREATE TABLE `category_post` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_product`
--

CREATE TABLE `category_product` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `hidden` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `rep_id` int(11) NOT NULL DEFAULT '0',
  `user_edit` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `address`, `gender`, `note`, `user_id`, `rep_id`, `user_edit`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sức', 'spaussio2@gmail.com', '0965688533', NULL, NULL, 'test mail mới', NULL, 0, NULL, 0, '2021-05-02 19:06:33', '2021-05-02 19:06:33'),
(2, 'Sức', 'spaussio2@gmail.com', '0965688533', NULL, NULL, 'test mail mới', NULL, 0, NULL, 0, '2021-05-02 19:13:46', '2021-05-02 19:13:46'),
(3, 'Sức', 'spaussio2@gmail.com', '0965688533', NULL, NULL, 'test mail mới', NULL, 0, NULL, 0, '2021-05-02 19:15:28', '2021-05-02 19:15:28'),
(4, 'Sức', 'spaussio2@gmail.com', '0965688533', NULL, NULL, 'test mail mới', NULL, 0, NULL, 0, '2021-05-02 19:18:57', '2021-05-02 19:18:57'),
(5, 'Sức', 'spaussio2@gmail.com', '0965688533', NULL, NULL, 'test mail mới', NULL, 0, NULL, 0, '2021-05-02 19:22:52', '2021-05-02 19:22:52'),
(6, 'Sức', 'spaussio2@gmail.com', '0965688533', NULL, NULL, 'test mail mới', NULL, 0, NULL, 0, '2021-05-02 19:23:28', '2021-05-02 19:23:28'),
(7, 'ewrewr', 'hungvan@gmail.com', '0965688533', NULL, NULL, '56465464654', NULL, 0, NULL, 0, '2021-05-02 19:27:08', '2021-05-02 19:27:08'),
(8, 'ewrewr', 'hungvan@gmail.com', '0965688533', NULL, NULL, '56465464654', NULL, 0, NULL, 0, '2021-05-02 19:28:46', '2021-05-02 19:28:46'),
(9, 'Nguyễn Sức', 'hungvan@gmail.com', '0965688533', NULL, NULL, 'sfdsfsfdsfsdfdsf', NULL, 0, NULL, 0, '2021-05-02 19:39:27', '2021-05-02 19:39:27'),
(10, 'Nguyễn Sức', 'hungvan@gmail.com', '0965688533', NULL, NULL, 'sfdsfsfdsfsdfdsf', NULL, 0, NULL, 0, '2021-05-02 19:40:39', '2021-05-02 19:40:39'),
(11, 'Nguyễn Sức', 'hungvan@gmail.com', '0965688533', NULL, NULL, 'sfdsfsfdsfsdfdsf', NULL, 0, NULL, 0, '2021-05-02 19:42:33', '2021-05-02 19:42:33'),
(12, 'Nguyễn Sức', 'hungvan@gmail.com', '0965688533', NULL, NULL, 'sfdsfsfdsfsdfdsf', NULL, 0, NULL, 0, '2021-05-02 19:43:21', '2021-05-02 19:43:21'),
(13, 'Nguyễn Sức', 'hungvan@gmail.com', 'vfdgfdgdfgdg', NULL, NULL, 'sfdsfsfdsfsdfdsf', NULL, 0, NULL, 0, '2021-05-02 19:47:45', '2021-05-02 19:47:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imports`
--

CREATE TABLE `imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `checkout` int(11) NOT NULL DEFAULT '0',
  `debt` int(11) NOT NULL DEFAULT '0',
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `imports`
--

INSERT INTO `imports` (`id`, `user_id`, `agency_id`, `total`, `checkout`, `debt`, `note`, `status`, `created_at`, `updated_at`) VALUES
(7, 13, 2, 11645000, 11645000, 0, NULL, 0, '2021-03-14 02:59:38', '2021-04-02 02:06:58'),
(8, 13, 2, 10057500, 10057500, 0, NULL, 0, '2021-04-01 22:10:17', '2021-04-01 22:10:17'),
(9, 13, 2, 6781000, 6781000, 0, NULL, 0, '2021-04-01 22:21:45', '2021-04-01 22:21:45'),
(10, 13, 2, 5521000, 5521000, 0, NULL, 0, '2021-04-01 22:46:13', '2021-04-01 22:46:31'),
(11, 13, 2, 61013028, 61013028, 0, NULL, 0, '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(12, 13, 4, 86150300, 86150300, 0, NULL, 0, '2021-04-01 23:53:06', '2021-04-08 21:30:53'),
(13, 13, 2, 14806580, 14806580, 0, NULL, 0, '2021-04-02 00:00:30', '2021-04-02 00:00:30'),
(14, 13, 5, 53777333, 53777333, 0, NULL, 0, '2021-04-02 00:25:33', '2021-04-08 21:35:45'),
(15, 13, 3, 13650000, 13650000, 0, NULL, 0, '2021-04-02 00:29:46', '2021-04-14 21:24:14'),
(16, 13, 2, 392000, 392000, 0, NULL, 0, '2021-04-02 00:32:34', '2021-04-02 00:32:34'),
(17, 13, 2, 1500000, 1500000, 0, NULL, 0, '2021-04-02 01:22:17', '2021-04-02 01:22:17'),
(18, 13, 2, 535000, 535000, 0, NULL, 0, '2021-04-02 01:34:39', '2021-04-02 01:34:52'),
(19, 13, 2, 1680000, 1680000, 0, NULL, 0, '2021-04-02 01:57:35', '2021-04-02 01:57:35'),
(20, 13, 9, 2600000, 2600000, 0, NULL, 0, '2021-04-02 02:04:12', '2021-04-04 02:35:37'),
(21, 13, 6, 1539000, 1539000, 0, NULL, 0, '2021-04-02 03:31:05', '2021-04-02 03:31:05'),
(22, 13, 4, 3230000, 3230000, 0, NULL, 0, '2021-04-04 02:35:21', '2021-04-04 02:35:21'),
(23, 13, 4, 1300000, 1300000, 0, NULL, 0, '2021-04-04 02:42:47', '2021-04-08 21:31:31'),
(24, 13, 10, 3040000, 3040000, 0, NULL, 0, '2021-04-04 19:02:50', '2021-04-04 19:02:50'),
(25, 13, 8, 2250000, 0, 2250000, NULL, 0, '2021-04-04 19:08:19', '2021-04-04 19:08:19'),
(26, 13, 9, 5700000, 5700000, 0, NULL, 0, '2021-04-04 19:13:08', '2021-04-04 19:13:08'),
(27, 13, 8, 1455000, 0, 1455000, NULL, 0, '2021-04-04 19:21:35', '2021-04-04 19:21:35'),
(28, 13, 3, 4800000, 4800000, 0, NULL, 0, '2021-04-04 19:30:49', '2021-04-07 04:07:49'),
(29, 13, 9, 114985000, 114985000, 0, NULL, 0, '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(30, 13, 2, 2352000, 2352000, 0, NULL, 0, '2021-04-04 21:44:39', '2021-04-04 21:44:39'),
(31, 13, 4, 1508000, 1508000, 0, NULL, 0, '2021-04-05 03:18:10', '2021-04-05 03:18:10'),
(32, 13, 9, 6750000, 6750000, 0, NULL, 0, '2021-04-06 18:43:27', '2021-04-07 03:13:58'),
(33, 13, 8, 2550000, 0, 2550000, NULL, 0, '2021-04-06 18:50:37', '2021-04-06 18:50:37'),
(34, 13, 2, 580000, 580000, 0, NULL, 0, '2021-04-07 03:51:52', '2021-04-07 03:51:52'),
(35, 13, 2, 32000, 32000, 0, NULL, 0, '2021-04-07 03:52:25', '2021-04-07 03:52:25'),
(36, 13, 2, 648000, 648000, 0, NULL, 0, '2021-04-07 03:57:36', '2021-04-07 03:57:36'),
(37, 13, 8, 102000, 0, 102000, NULL, 0, '2021-04-07 04:23:59', '2021-04-07 04:23:59'),
(38, 13, 9, 5451000, 5451000, 0, NULL, 0, '2021-04-08 21:10:27', '2021-04-08 21:32:10'),
(39, 13, 3, 12024000, 12024000, 0, NULL, 0, '2021-04-08 23:03:20', '2021-04-17 19:34:58'),
(40, 13, 7, 2900000, 2900000, 0, NULL, 0, '2021-04-11 04:19:19', '2021-04-11 04:19:19'),
(41, 13, 4, 4240000, 4240000, 0, NULL, 0, '2021-04-15 02:04:41', '2021-04-19 01:18:50'),
(42, 13, 10, 2160000, 2160000, 0, NULL, 0, '2021-04-17 20:41:50', '2021-04-17 20:41:50'),
(43, 13, 4, 5840000, 5840000, 0, NULL, 0, '2021-04-18 03:18:59', '2021-04-19 01:18:34'),
(44, 13, 9, 3240000, 3240000, 0, NULL, 0, '2021-04-18 20:00:54', '2021-04-19 01:19:09'),
(45, 13, 7, 2860000, 2860000, 0, NULL, 0, '2021-04-18 20:02:10', '2021-04-19 01:19:24'),
(46, 13, 10, 4572000, 4572000, 0, NULL, 0, '2021-04-18 20:53:22', '2021-04-19 01:18:09'),
(47, 13, 4, 1073000, 1073000, 0, NULL, 0, '2021-04-19 00:27:21', '2021-04-19 00:27:21'),
(48, 13, 9, 6600000, 6600000, 0, NULL, 0, '2021-04-19 20:43:34', '2021-04-19 20:43:34'),
(49, 13, 9, 5550000, 5550000, 0, NULL, 0, '2021-04-19 20:44:49', '2021-04-20 01:25:17'),
(50, 13, 7, 2940000, 2940000, 0, NULL, 0, '2021-04-20 01:27:51', '2021-04-20 01:27:51'),
(51, 13, 4, 3936000, 3936000, 0, NULL, 0, '2021-04-20 01:31:18', '2021-05-01 20:56:51'),
(52, 13, 3, 1850000, 0, 1850000, NULL, 0, '2021-04-26 00:23:39', '2021-04-26 21:11:56'),
(53, 13, 3, 2490000, 0, 2490000, NULL, 0, '2021-04-26 00:24:52', '2021-04-26 21:11:34'),
(54, 13, 9, 3240000, 3240000, 0, NULL, 0, '2021-04-26 00:51:11', '2021-04-26 00:51:11'),
(55, 13, 8, 100000, 0, 100000, NULL, 0, '2021-05-04 02:58:36', '2021-05-04 02:58:36'),
(56, 13, 9, 1552000, 1552000, 0, NULL, 0, '2021-05-04 19:56:53', '2021-05-04 19:56:53'),
(57, 13, 9, 5080000, 5080000, 0, NULL, 0, '2021-05-04 20:00:09', '2021-05-04 20:00:09'),
(58, 13, 4, 6065000, 0, 6065000, NULL, 0, '2021-05-04 20:01:34', '2021-05-04 20:01:34'),
(59, 13, 4, 1300000, 0, 1300000, NULL, 0, '2021-05-04 20:02:57', '2021-05-04 20:02:57'),
(60, 13, 4, 1740000, 0, 1740000, NULL, 0, '2021-05-06 02:06:24', '2021-05-06 02:06:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lang`
--

CREATE TABLE `lang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '9999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lang`
--

INSERT INTO `lang` (`id`, `name`, `value`, `status`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'Vietnamese', 'vi', 1, 1, '2021-04-20 03:26:17', '2021-04-29 01:18:57'),
(2, 'English', 'en', 0, 2, '2021-04-20 03:26:17', '2021-04-20 03:26:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `module_id` int(11) NOT NULL DEFAULT '0',
  `module` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_14_161100_create_alias_table', 1),
(5, '2020_12_14_162433_create_contact_table', 1),
(6, '2020_12_14_165447_create_lang_table', 1),
(7, '2020_12_14_170333_create_module_table', 1),
(8, '2020_12_14_172113_create_post_lang_table', 1),
(9, '2020_12_14_180115_create_tags_table', 1),
(10, '2020_12_14_183320_add_lever_in_user_table', 1),
(11, '2020_12_15_093248_add_account_in_users_table', 1),
(12, '2021_01_07_141053_add_user_in_contact_table', 1),
(13, '2021_01_23_112009_create_orders_table', 1),
(14, '2021_01_23_140830_create_menus_table', 1),
(15, '2021_01_26_154250_add_type_in_menus_table', 1),
(16, '2021_02_01_172102_create_attribute_categorys_table', 1),
(17, '2021_02_01_175941_create_attributes_talbe', 1),
(18, '2021_02_02_103651_add_sort_in_attributes_table', 1),
(19, '2021_02_02_113502_create_user_agencys_table', 1),
(20, '2021_02_03_114841_create_imports_table', 1),
(21, '2021_02_03_151511_add_user_id_in_imports_table', 1),
(22, '2021_02_03_170453_create_order_sessions_table', 1),
(23, '2021_02_04_091114_create_product_sessions_table', 1),
(24, '2021_02_04_093009_add_revenue_in_orders_table', 1),
(25, '2021_02_27_083635_add_note_in_orders_table', 1),
(26, '2021_03_03_091233_add_transport_in_orders_table', 1),
(27, '2021_03_06_152912_add_amount_export_in_product_sessions_table', 1),
(28, '2021_03_11_164327_add_discount_in_orders_table', 1),
(29, '2021_03_13_081828_create_transactions_table', 1),
(30, '2021_03_13_163937_create_comments_table', 1),
(31, '2021_03_16_101932_add_hidden_in_comments_table', 1),
(32, '2021_03_17_162605_create_social_identities_table', 1),
(33, '2021_03_30_112741_create_categories_table', 1),
(34, '2021_03_30_115532_create_posts_table', 1),
(35, '2021_03_31_101535_create_category_post_table', 1),
(36, '2021_03_31_114126_add_type_in_posts_table', 1),
(37, '2021_03_31_151736_create_products_table', 1),
(38, '2021_03_31_152745_create_category_product_table', 1),
(39, '2021_04_01_134245_create_medias_table', 1),
(40, '2021_04_01_153857_create_supports_table', 1),
(41, '2021_04_01_181644_create_settings_table', 1),
(42, '2021_04_05_134703_create_user_debts_table', 1),
(43, '2021_04_05_151152_add_user_debt_intransactions_table', 1),
(44, '2021_04_13_155638_add_rep_id_in_contacts', 1),
(45, '2021_04_17_070627_create_admins_table', 1),
(46, '2021_04_17_085554_create_permission_tables', 1),
(47, '2021_04_17_090553_create_attribute_product_table', 1),
(48, '2021_04_17_092151_add_title_in_permissions_table', 1),
(49, '2021_04_20_101253_add_info_in_users_table', 1),
(52, '2021_04_22_082733_create_order_session_table', 2),
(54, '2021_04_23_093236_create_order_product_session_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(3, 'App\\Models\\Admin', 2),
(3, 'App\\Models\\Admin', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `module`
--

CREATE TABLE `module` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collumn` int(11) NOT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_create` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `total` int(11) NOT NULL,
  `checkout` int(11) NOT NULL DEFAULT '0',
  `transport` int(11) NOT NULL DEFAULT '0',
  `discount` int(11) NOT NULL DEFAULT '0',
  `debt` int(11) NOT NULL DEFAULT '0',
  `revenue` int(11) NOT NULL DEFAULT '0',
  `editer` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_create`, `address`, `phone`, `email`, `content`, `note`, `total`, `checkout`, `transport`, `discount`, `debt`, `revenue`, `editer`, `status`, `created_at`, `updated_at`) VALUES
(1, 33, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'hiena8@gmail.com', '\"{\\\"565c1f9a44fd05247a2c01a8959376e1\\\":{\\\"rowId\\\":\\\"565c1f9a44fd05247a2c01a8959376e1\\\",\\\"id\\\":16,\\\"name\\\":\\\"V\\\\u1ec9 10 b\\\\u00fat ch\\\\u00ec Deli xanh\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":19000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"1500\\\",\\\"price_in\\\":\\\"17500\\\",\\\"amount\\\":\\\"53\\\",\\\"sort\\\":1617349277},\\\"discount\\\":0,\\\"tax\\\":3990,\\\"subtotal\\\":19000},\\\"ab27c921f6baa79eafa86488d8f305e7\\\":{\\\"rowId\\\":\\\"ab27c921f6baa79eafa86488d8f305e7\\\",\\\"id\\\":36,\\\"name\\\":\\\"C\\\\u00e2y lau nh\\\\u00e0 t\\\\u00edm b\\\\u00e0n nh\\\\u1ef1a\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":40000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"2000\\\",\\\"price_in\\\":\\\"38000\\\",\\\"amount\\\":\\\"10\\\",\\\"sort\\\":1617349293},\\\"discount\\\":0,\\\"tax\\\":8400,\\\"subtotal\\\":40000}}\"', NULL, 59000, 59000, 0, 0, 0, 3500, NULL, 0, '2021-04-02 00:41:55', '2021-04-02 00:41:55'),
(2, 34, 13, '30/19 Nguyễn Văn Của, P13, Q8, TP HCM', '0938331117', 'nguyenthilehang@gmail.com', '\"{\\\"a025a618dc4530afa294024608027442\\\":{\\\"rowId\\\":\\\"a025a618dc4530afa294024608027442\\\",\\\"id\\\":60,\\\"name\\\":\\\"Xay t\\\\u1ecfi tay\\\",\\\"qty\\\":\\\"50\\\",\\\"price\\\":20000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"150000\\\",\\\"price_in\\\":\\\"17000\\\",\\\"amount\\\":\\\"140\\\",\\\"sort\\\":1617349761},\\\"discount\\\":0,\\\"tax\\\":4200,\\\"subtotal\\\":1000000},\\\"4fea27f0d3024382a391c71649a3d75e\\\":{\\\"rowId\\\":\\\"4fea27f0d3024382a391c71649a3d75e\\\",\\\"id\\\":80,\\\"name\\\":\\\"K\\\\u00e9o SK5 v\\\\u1ec9\\\",\\\"qty\\\":\\\"50\\\",\\\"price\\\":30000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"150000\\\",\\\"price_in\\\":\\\"27000\\\",\\\"amount\\\":\\\"179\\\",\\\"sort\\\":1617349808},\\\"discount\\\":0,\\\"tax\\\":6300,\\\"subtotal\\\":1500000},\\\"e5a891101fc5bf826f8036c6d22680ac\\\":{\\\"rowId\\\":\\\"e5a891101fc5bf826f8036c6d22680ac\\\",\\\"id\\\":91,\\\"name\\\":\\\"C\\\\u1ed1c s\\\\u1eefa chia v\\\\u1ea1ch\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":17000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"60000\\\",\\\"price_in\\\":\\\"15000\\\",\\\"amount\\\":\\\"66\\\",\\\"sort\\\":1617349828},\\\"discount\\\":0,\\\"tax\\\":3570,\\\"subtotal\\\":510000},\\\"16ea8c3a33d8a934a00d9e225c4f1c85\\\":{\\\"rowId\\\":\\\"16ea8c3a33d8a934a00d9e225c4f1c85\\\",\\\"id\\\":195,\\\"name\\\":\\\"B\\\\u1ecdc b\\\\u00e1t silicon (set 6 m\\\\u00f3n)\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":19000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"45000\\\",\\\"price_in\\\":\\\"17500\\\",\\\"amount\\\":\\\"48\\\",\\\"sort\\\":1617349843},\\\"discount\\\":0,\\\"tax\\\":3990,\\\"subtotal\\\":570000},\\\"b8bca8a058f359b73494ee4bf3f38236\\\":{\\\"rowId\\\":\\\"b8bca8a058f359b73494ee4bf3f38236\\\",\\\"id\\\":140,\\\"name\\\":\\\"B\\\\u00f4ng t\\\\u1ea9y trang 222m\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":23000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"6200\\\",\\\"price_in\\\":\\\"19900\\\",\\\"amount\\\":\\\"917\\\",\\\"sort\\\":1617349854},\\\"discount\\\":0,\\\"tax\\\":4830,\\\"subtotal\\\":46000}}\"', NULL, 3626000, 3626000, 0, 0, 0, 411200, NULL, 0, '2021-04-02 00:51:20', '2021-04-02 00:51:20'),
(3, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"39e697afe88a983397accebcd135ef5c\\\":{\\\"rowId\\\":\\\"39e697afe88a983397accebcd135ef5c\\\",\\\"id\\\":198,\\\"name\\\":\\\"Gi\\\\u1ecf hoa ban c\\\\u00f4ng\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":19000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"30000\\\",\\\"price_in\\\":\\\"16000\\\",\\\"amount\\\":\\\"60\\\",\\\"sort\\\":1617349901},\\\"discount\\\":0,\\\"tax\\\":3990,\\\"subtotal\\\":190000}}\"', 'Cô Dung Hợp', 190000, 190000, 0, 0, 0, 30000, NULL, 0, '2021-04-02 00:51:56', '2021-04-03 02:24:26'),
(4, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"e1f4da066e98f71325984afa80d54900\\\":{\\\"rowId\\\":\\\"e1f4da066e98f71325984afa80d54900\\\",\\\"id\\\":203,\\\"name\\\":\\\"C\\\\u1ed1c g\\\\u1ea5u \\\\u0111a n\\\\u0103ng\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":10000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"1500\\\",\\\"price_in\\\":\\\"8500\\\",\\\"amount\\\":\\\"167\\\",\\\"sort\\\":1617350044},\\\"discount\\\":0,\\\"tax\\\":2100,\\\"subtotal\\\":10000},\\\"78e0860712c1ea1f1518b55c77c2e8fb\\\":{\\\"rowId\\\":\\\"78e0860712c1ea1f1518b55c77c2e8fb\\\",\\\"id\\\":208,\\\"name\\\":\\\"M\\\\u00e1y xay \\\\u0111\\\\u00e1 Osaka n\\\\u1eafp \\\\u0111\\\\u1ed3ng\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":158000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"13000\\\",\\\"price_in\\\":\\\"145000\\\",\\\"amount\\\":\\\"26\\\",\\\"sort\\\":1617350063},\\\"discount\\\":0,\\\"tax\\\":33180,\\\"subtotal\\\":158000}}\"', NULL, 168000, 168000, 0, 0, 0, 14500, NULL, 0, '2021-04-02 00:54:33', '2021-04-02 00:54:33'),
(5, 14, 13, 'Khu tập thể Phân Lân - Văn Điển - Hà Nội', '0987475575', 'tungkieu@gmail.com', '\"{\\\"d8da8b5928fa6d30c9112d2ad52d1f4a\\\":{\\\"rowId\\\":\\\"d8da8b5928fa6d30c9112d2ad52d1f4a\\\",\\\"id\\\":221,\\\"name\\\":\\\"K\\\\u1eb9p c\\\\u00e1n ch\\\\u1ed5i\\\",\\\"qty\\\":\\\"300\\\",\\\"price\\\":5000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"300000\\\",\\\"price_in\\\":\\\"4000\\\",\\\"amount\\\":\\\"1007\\\",\\\"sort\\\":1617350112},\\\"discount\\\":0,\\\"tax\\\":1050,\\\"subtotal\\\":1500000}}\"', NULL, 1500000, 1500000, 0, 0, 0, 300000, NULL, 0, '2021-04-02 00:55:28', '2021-04-02 00:55:28'),
(6, 30, 13, 'Thanh Hoá (gửi xe Mạnh Vi, bến xe Đuôi Cá)', '0981546239', 'lehongvan@gmail.com', '\"{\\\"6ae4df325e377186cbfccb33f1cdb480\\\":{\\\"rowId\\\":\\\"6ae4df325e377186cbfccb33f1cdb480\\\",\\\"id\\\":169,\\\"name\\\":\\\"\\\\u0110\\\\u00e8n phun s\\\\u01b0\\\\u01a1ng v\\\\u00e2n g\\\\u1ed7\\\",\\\"qty\\\":\\\"60\\\",\\\"price\\\":56000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"145000\\\",\\\"price_in\\\":\\\"53000\\\",\\\"amount\\\":\\\"179\\\",\\\"sort\\\":1617351041},\\\"discount\\\":0,\\\"tax\\\":11760,\\\"subtotal\\\":3360000},\\\"83b203dd3a660a2cdb0a9562482e0956\\\":{\\\"rowId\\\":\\\"83b203dd3a660a2cdb0a9562482e0956\\\",\\\"id\\\":222,\\\"name\\\":\\\"Set 3 t\\\\u00fai \\\\u0111\\\\u1ef1ng ch\\\\u0103n\\\",\\\"qty\\\":\\\"90\\\",\\\"price\\\":83000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"180000\\\",\\\"price_in\\\":\\\"81000\\\",\\\"amount\\\":\\\"90\\\",\\\"sort\\\":1617351240},\\\"discount\\\":0,\\\"tax\\\":17430,\\\"subtotal\\\":7470000}}\"', NULL, 10830000, 10830000, 0, 0, 0, 301000, NULL, 0, '2021-04-02 01:15:42', '2021-04-03 20:53:08'),
(7, 28, 13, '213 Quốc lộ 20, xã Phú Hội, Liên Nghĩa, Đức Trọng, Lâm Đồng', '0854150628', 'mnong@gmail.com', '\"{\\\"1041aa4cc8a80583658e5bada69ba3f1\\\":{\\\"rowId\\\":\\\"1041aa4cc8a80583658e5bada69ba3f1\\\",\\\"id\\\":177,\\\"name\\\":\\\"H\\\\u1ed9p b\\\\u00fat ch\\\\u00ec 2B 12c\\\",\\\"qty\\\":\\\"8\\\",\\\"price\\\":21000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"16000\\\",\\\"price_in\\\":\\\"19000\\\",\\\"amount\\\":\\\"8\\\",\\\"sort\\\":1617351505},\\\"discount\\\":0,\\\"tax\\\":4410,\\\"subtotal\\\":168000},\\\"748a4b0d398a4a79508042288e8af66f\\\":{\\\"rowId\\\":\\\"748a4b0d398a4a79508042288e8af66f\\\",\\\"id\\\":225,\\\"name\\\":\\\"B\\\\u1ed9 ch\\\\u1ed5i lau nh\\\\u00e0 t\\\\u00edm Chefman size to\\\",\\\"qty\\\":\\\"5\\\",\\\"price\\\":138000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"65000\\\",\\\"price_in\\\":\\\"125000\\\",\\\"amount\\\":\\\"12\\\",\\\"sort\\\":1617351775},\\\"discount\\\":0,\\\"tax\\\":28980,\\\"subtotal\\\":690000},\\\"6e520ff688e67c304905121317b8c163\\\":{\\\"rowId\\\":\\\"6e520ff688e67c304905121317b8c163\\\",\\\"id\\\":97,\\\"name\\\":\\\"L\\\\u1ecd tinh d\\\\u1ea7u B\\\\u00e1t Tr\\\\u00e0ng\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":14000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"40000\\\",\\\"price_in\\\":\\\"8000\\\",\\\"amount\\\":\\\"115\\\",\\\"sort\\\":1617351802},\\\"discount\\\":0,\\\"tax\\\":2940,\\\"subtotal\\\":140000},\\\"8e7f6965abebf2ecbd3997a0cf764178\\\":{\\\"rowId\\\":\\\"8e7f6965abebf2ecbd3997a0cf764178\\\",\\\"id\\\":155,\\\"name\\\":\\\"M\\\\u00e1y s\\\\u1ea5y t\\\\u00f3c Panansoni 5528 3500w\\\",\\\"qty\\\":\\\"3\\\",\\\"price\\\":68000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"15000\\\",\\\"price_in\\\":\\\"58000\\\",\\\"amount\\\":\\\"86\\\",\\\"sort\\\":1617351823},\\\"discount\\\":0,\\\"tax\\\":14280,\\\"subtotal\\\":204000},\\\"e52d998bbda8e34e9f0a2e93447aa996\\\":{\\\"rowId\\\":\\\"e52d998bbda8e34e9f0a2e93447aa996\\\",\\\"id\\\":101,\\\"name\\\":\\\"Gi\\\\u1ea5y lau gi\\\\u1ea7y Sneacker\\\",\\\"qty\\\":\\\"5\\\",\\\"price\\\":29000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"20000\\\",\\\"price_in\\\":\\\"25000\\\",\\\"amount\\\":\\\"57\\\",\\\"sort\\\":1617351844},\\\"discount\\\":0,\\\"tax\\\":6090,\\\"subtotal\\\":145000}}\"', NULL, 1347000, 1347000, 0, 0, 0, 156000, NULL, 0, '2021-04-02 01:27:00', '2021-04-02 01:27:00'),
(8, 35, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'quynhhoang@gmail.com', '\"{\\\"ed8afd89f06b39f9f50c02054ad63243\\\":{\\\"rowId\\\":\\\"ed8afd89f06b39f9f50c02054ad63243\\\",\\\"id\\\":227,\\\"name\\\":\\\"B\\\\u1ecdc m\\\\u00e1y gi\\\\u1eb7t c\\\\u1eeda tr\\\\u00ean\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":32000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"40000\\\",\\\"price_in\\\":\\\"28000\\\",\\\"amount\\\":\\\"30\\\",\\\"sort\\\":1617353970},\\\"discount\\\":0,\\\"tax\\\":6720,\\\"subtotal\\\":320000},\\\"7b6cc67433799cec5a2d43ea06f26d42\\\":{\\\"rowId\\\":\\\"7b6cc67433799cec5a2d43ea06f26d42\\\",\\\"id\\\":151,\\\"name\\\":\\\"Ki\\\\u1ec1ng ch\\\\u1eafn gi\\\\u00f3 b\\\\u1ebfp gas\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":19000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"75000\\\",\\\"price_in\\\":\\\"16500\\\",\\\"amount\\\":\\\"40\\\",\\\"sort\\\":1617353983},\\\"discount\\\":0,\\\"tax\\\":3990,\\\"subtotal\\\":570000},\\\"b579f29bb4f8c23e4c1d6307748d6e73\\\":{\\\"rowId\\\":\\\"b579f29bb4f8c23e4c1d6307748d6e73\\\",\\\"id\\\":80,\\\"name\\\":\\\"K\\\\u00e9o SK5 v\\\\u1ec9\\\",\\\"qty\\\":\\\"20\\\",\\\"price\\\":30000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"60000\\\",\\\"price_in\\\":\\\"27000\\\",\\\"amount\\\":\\\"129\\\",\\\"sort\\\":1617354034},\\\"discount\\\":0,\\\"tax\\\":6300,\\\"subtotal\\\":600000},\\\"edf7b1368b0847a8753cafa2b69619fd\\\":{\\\"rowId\\\":\\\"edf7b1368b0847a8753cafa2b69619fd\\\",\\\"id\\\":\\\"221\\\",\\\"name\\\":\\\"K\\\\u1eb9p c\\\\u00e1n ch\\\\u1ed5i\\\",\\\"qty\\\":\\\"100\\\",\\\"price\\\":\\\"5000\\\",\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"100000\\\",\\\"price_in\\\":\\\"4000\\\",\\\"amount\\\":\\\"707\\\",\\\"sort\\\":1617354484},\\\"discount\\\":0,\\\"tax\\\":1050,\\\"subtotal\\\":500000},\\\"f4972c34548a6da399ed1f09a48c63e3\\\":{\\\"rowId\\\":\\\"f4972c34548a6da399ed1f09a48c63e3\\\",\\\"id\\\":82,\\\"name\\\":\\\"Urgo ho\\\\u1ea1t h\\\\u00ecnh\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":19000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"75000\\\",\\\"price_in\\\":\\\"16500\\\",\\\"amount\\\":\\\"60\\\",\\\"sort\\\":1617354180},\\\"discount\\\":0,\\\"tax\\\":3990,\\\"subtotal\\\":570000},\\\"bb4a8f7cff16689b03ba633036e7af8b\\\":{\\\"rowId\\\":\\\"bb4a8f7cff16689b03ba633036e7af8b\\\",\\\"id\\\":229,\\\"name\\\":\\\"B\\\\u1ea1t ph\\\\u1ee7 xe m\\\\u00e1y\\\",\\\"qty\\\":\\\"20\\\",\\\"price\\\":29000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"60000\\\",\\\"price_in\\\":\\\"26000\\\",\\\"amount\\\":\\\"100\\\",\\\"sort\\\":1617354271},\\\"discount\\\":0,\\\"tax\\\":6090,\\\"subtotal\\\":580000},\\\"8d72d42d863f764e67b093e043b04ab7\\\":{\\\"rowId\\\":\\\"8d72d42d863f764e67b093e043b04ab7\\\",\\\"id\\\":131,\\\"name\\\":\\\"Khay h\\\\u1ee9ng inox\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":42000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"40000\\\",\\\"price_in\\\":\\\"38000\\\",\\\"amount\\\":\\\"94\\\",\\\"sort\\\":1617354301},\\\"discount\\\":0,\\\"tax\\\":8820,\\\"subtotal\\\":420000},\\\"ee6efa4a5000481011967962476d4137\\\":{\\\"rowId\\\":\\\"ee6efa4a5000481011967962476d4137\\\",\\\"id\\\":28,\\\"name\\\":\\\"Set 10 b\\\\u00e0n ch\\\\u1ea3i xu\\\\u1ea5t Nh\\\\u1eadt\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":15000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"60000\\\",\\\"price_in\\\":\\\"13000\\\",\\\"amount\\\":\\\"120\\\",\\\"sort\\\":1617354440},\\\"discount\\\":0,\\\"tax\\\":3150,\\\"subtotal\\\":450000}}\"', NULL, 4010000, 4000000, 0, 10000, 0, 500000, NULL, 0, '2021-04-02 02:24:11', '2021-04-02 02:46:20'),
(9, 36, 13, 'Chưa nhập địa chỉ', '0961809523', 'chaobuoisang@gmail.com', '\"{\\\"bc215fdf57d5f7fec755a063d7898868\\\":{\\\"rowId\\\":\\\"bc215fdf57d5f7fec755a063d7898868\\\",\\\"id\\\":80,\\\"name\\\":\\\"K\\\\u00e9o SK5 v\\\\u1ec9\\\",\\\"qty\\\":\\\"14\\\",\\\"price\\\":29000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"28000\\\",\\\"price_in\\\":\\\"27000\\\",\\\"amount\\\":\\\"109\\\",\\\"sort\\\":1617356057},\\\"discount\\\":0,\\\"tax\\\":6090,\\\"subtotal\\\":406000},\\\"88248ac3785def102a039561fe14846f\\\":{\\\"rowId\\\":\\\"88248ac3785def102a039561fe14846f\\\",\\\"id\\\":165,\\\"name\\\":\\\"M\\\\u00f3c d\\\\u00ednh 3D\\\",\\\"qty\\\":\\\"400\\\",\\\"price\\\":800,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"56000\\\",\\\"price_in\\\":\\\"660\\\",\\\"amount\\\":\\\"1328\\\",\\\"sort\\\":1617356076},\\\"discount\\\":0,\\\"tax\\\":168,\\\"subtotal\\\":320000}}\"', NULL, 726000, 726000, 0, 0, 0, 84000, NULL, 0, '2021-04-02 02:37:41', '2021-04-11 21:00:41'),
(10, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"201dff89364f576944cf7b6cbb7a3853\\\":{\\\"rowId\\\":\\\"201dff89364f576944cf7b6cbb7a3853\\\",\\\"id\\\":213,\\\"name\\\":\\\"G\\\\u00e0 v\\\\u1eb7n c\\\\u00f3t\\\",\\\"qty\\\":\\\"3\\\",\\\"price\\\":9000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"4200\\\",\\\"price_in\\\":\\\"7600\\\",\\\"amount\\\":\\\"59\\\",\\\"sort\\\":1617359052},\\\"discount\\\":0,\\\"tax\\\":1890,\\\"subtotal\\\":27000}}\"', 'Mẹ Bốp', 27000, 27000, 0, 0, 0, 4200, NULL, 0, '2021-04-02 03:24:24', '2021-04-07 03:04:27'),
(11, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"b78849da3cfec32f0ecba8351aab755f\\\":{\\\"rowId\\\":\\\"b78849da3cfec32f0ecba8351aab755f\\\",\\\"id\\\":\\\"165\\\",\\\"name\\\":\\\"M\\\\u00f3c d\\\\u00ednh 3D\\\",\\\"qty\\\":400,\\\"price\\\":\\\"800\\\",\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":56000,\\\"price_in\\\":\\\"660\\\",\\\"amount\\\":\\\"928\\\",\\\"sort\\\":1617359174},\\\"discount\\\":0,\\\"tax\\\":168,\\\"subtotal\\\":320000},\\\"1a9cea882b19a288e329cf6b8ba1445a\\\":{\\\"rowId\\\":\\\"1a9cea882b19a288e329cf6b8ba1445a\\\",\\\"id\\\":66,\\\"name\\\":\\\"H\\\\u00fat r\\\\u01b0\\\\u1ee3u\\\",\\\"qty\\\":\\\"15\\\",\\\"price\\\":10000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"15000\\\",\\\"price_in\\\":\\\"9000\\\",\\\"amount\\\":\\\"15\\\",\\\"sort\\\":1617359205},\\\"discount\\\":0,\\\"tax\\\":2100,\\\"subtotal\\\":150000},\\\"4e056e0dd6aefac5bf5afaebee4530c1\\\":{\\\"rowId\\\":\\\"4e056e0dd6aefac5bf5afaebee4530c1\\\",\\\"id\\\":203,\\\"name\\\":\\\"C\\\\u1ed1c g\\\\u1ea5u \\\\u0111a n\\\\u0103ng\\\",\\\"qty\\\":\\\"5\\\",\\\"price\\\":10000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"7500\\\",\\\"price_in\\\":\\\"8500\\\",\\\"amount\\\":\\\"166\\\",\\\"sort\\\":1617359226},\\\"discount\\\":0,\\\"tax\\\":2100,\\\"subtotal\\\":50000},\\\"c3d28570797e6e8a2956521da48bb6c1\\\":{\\\"rowId\\\":\\\"c3d28570797e6e8a2956521da48bb6c1\\\",\\\"id\\\":77,\\\"name\\\":\\\"B\\\\u00f4ng t\\\\u1eafm 2 m\\\\u1eb7t\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":14000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3000\\\",\\\"price_in\\\":\\\"11000\\\",\\\"amount\\\":\\\"22\\\",\\\"sort\\\":1617359246},\\\"discount\\\":0,\\\"tax\\\":2940,\\\"subtotal\\\":14000},\\\"7ce2c1ecc0f3da2360873ebf6f64e167\\\":{\\\"rowId\\\":\\\"7ce2c1ecc0f3da2360873ebf6f64e167\\\",\\\"id\\\":62,\\\"name\\\":\\\"B\\\\u00f4ng t\\\\u1eafm c\\\\u00e1n d\\\\u00e0i\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":14000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3000\\\",\\\"price_in\\\":\\\"11000\\\",\\\"amount\\\":\\\"96\\\",\\\"sort\\\":1617359258},\\\"discount\\\":0,\\\"tax\\\":2940,\\\"subtotal\\\":14000},\\\"8e8f2f3c1a901f4024c739808c8259ef\\\":{\\\"rowId\\\":\\\"8e8f2f3c1a901f4024c739808c8259ef\\\",\\\"id\\\":220,\\\"name\\\":\\\"Set dao c\\\\u1ea1o r\\\\u00e2u 36 l\\\\u01b0\\\\u1ee1i\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":33000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"4500\\\",\\\"price_in\\\":\\\"28500\\\",\\\"amount\\\":\\\"100\\\",\\\"sort\\\":1617359273},\\\"discount\\\":0,\\\"tax\\\":6930,\\\"subtotal\\\":33000},\\\"95658be355df1651639dd41b3d57a7e0\\\":{\\\"rowId\\\":\\\"95658be355df1651639dd41b3d57a7e0\\\",\\\"id\\\":113,\\\"name\\\":\\\"Vi\\\\u00ean th\\\\u1ea3 b\\\\u1ed3n c\\\\u1ea7u\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":15000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"-10500\\\",\\\"price_in\\\":\\\"12000\\\",\\\"amount\\\":\\\"58\\\",\\\"sort\\\":1617359289},\\\"discount\\\":0,\\\"tax\\\":3150,\\\"subtotal\\\":15000},\\\"16b933878083fb9e211d435e4664b2ab\\\":{\\\"rowId\\\":\\\"16b933878083fb9e211d435e4664b2ab\\\",\\\"id\\\":60,\\\"name\\\":\\\"Xay t\\\\u1ecfi tay\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":20000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3000\\\",\\\"price_in\\\":\\\"17000\\\",\\\"amount\\\":\\\"90\\\",\\\"sort\\\":1617359301},\\\"discount\\\":0,\\\"tax\\\":4200,\\\"subtotal\\\":20000}}\"', NULL, 616000, 616000, 0, 0, 0, 81500, NULL, 0, '2021-04-02 03:28:58', '2021-04-02 03:28:58'),
(12, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"7675017d63988f93afcb581e760c42a4\\\":{\\\"rowId\\\":\\\"7675017d63988f93afcb581e760c42a4\\\",\\\"id\\\":230,\\\"name\\\":\\\"\\\\u0110\\\\u00e8n b\\\\u1eaft mu\\\\u1ed1i \\\\u00e1nh s\\\\u00e1ng xanh\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":33000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"4500\\\",\\\"price_in\\\":\\\"28500\\\",\\\"amount\\\":\\\"54\\\",\\\"sort\\\":1617359488},\\\"discount\\\":0,\\\"tax\\\":6930,\\\"subtotal\\\":33000}}\"', NULL, 33000, 33000, 0, 0, 0, 4500, NULL, 0, '2021-04-02 03:31:36', '2021-04-02 03:31:36'),
(13, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"8711ba7f435af0f89bff0641faa5c738\\\":{\\\"rowId\\\":\\\"8711ba7f435af0f89bff0641faa5c738\\\",\\\"id\\\":230,\\\"name\\\":\\\"\\\\u0110\\\\u00e8n b\\\\u1eaft mu\\\\u1ed1i \\\\u00e1nh s\\\\u00e1ng xanh\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":32000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3500\\\",\\\"price_in\\\":\\\"28500\\\",\\\"amount\\\":\\\"53\\\",\\\"sort\\\":1617441297},\\\"discount\\\":0,\\\"tax\\\":6720,\\\"subtotal\\\":32000}}\"', NULL, 32000, 32000, 0, 0, 0, 3500, NULL, 0, '2021-04-03 02:15:08', '2021-04-03 02:15:08'),
(14, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"4d52f22ee830c9e9c1f1f059f0d22bc7\\\":{\\\"rowId\\\":\\\"4d52f22ee830c9e9c1f1f059f0d22bc7\\\",\\\"id\\\":230,\\\"name\\\":\\\"\\\\u0110\\\\u00e8n b\\\\u1eaft mu\\\\u1ed1i \\\\u00e1nh s\\\\u00e1ng xanh\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":33000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"4500\\\",\\\"price_in\\\":\\\"28500\\\",\\\"amount\\\":\\\"52\\\",\\\"sort\\\":1617441795},\\\"discount\\\":0,\\\"tax\\\":6930,\\\"subtotal\\\":33000}}\"', NULL, 33000, 33000, 0, 0, 0, 4500, NULL, 0, '2021-04-03 02:23:22', '2021-04-03 02:23:22'),
(15, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"9e0680b078840d2575e40b5aa90afb0c\\\":{\\\"rowId\\\":\\\"9e0680b078840d2575e40b5aa90afb0c\\\",\\\"id\\\":138,\\\"name\\\":\\\"Ch\\\\u1eadu th\\\\u1edbt g\\\\u1ea5p g\\\\u1ecdn\\\",\\\"qty\\\":\\\"25\\\",\\\"price\\\":32000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"75000\\\",\\\"price_in\\\":\\\"29000\\\",\\\"amount\\\":\\\"25\\\",\\\"sort\\\":1617525303},\\\"discount\\\":0,\\\"tax\\\":6720,\\\"subtotal\\\":800000},\\\"2ec21f1aa7da3cd29d3b4ad19f823a5d\\\":{\\\"rowId\\\":\\\"2ec21f1aa7da3cd29d3b4ad19f823a5d\\\",\\\"id\\\":135,\\\"name\\\":\\\"T\\\\u00fai gi\\\\u1eef nhi\\\\u1ec7t h\\\\u00ecnh c\\\\u00e1\\\",\\\"qty\\\":\\\"20\\\",\\\"price\\\":22000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"30000\\\",\\\"price_in\\\":\\\"20500\\\",\\\"amount\\\":\\\"56\\\",\\\"sort\\\":1617525323},\\\"discount\\\":0,\\\"tax\\\":4620,\\\"subtotal\\\":440000}}\"', NULL, 1240000, 1240000, 0, 0, 0, 105000, NULL, 0, '2021-04-04 01:35:44', '2021-04-04 01:35:44'),
(16, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"07e133edd81674e836a12dc6b23d93dd\\\":{\\\"rowId\\\":\\\"07e133edd81674e836a12dc6b23d93dd\\\",\\\"id\\\":54,\\\"name\\\":\\\"\\\\u1ed4 \\\\u0111i\\\\u1ec7n xanh \\\\u0111a n\\\\u0103ng\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":0,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"-41000\\\",\\\"price_in\\\":\\\"41000\\\",\\\"amount\\\":\\\"11\\\",\\\"sort\\\":1617528398},\\\"discount\\\":0,\\\"tax\\\":0,\\\"subtotal\\\":0}}\"', NULL, 0, 0, 0, 0, 0, -41000, NULL, 0, '2021-04-04 02:26:47', '2021-04-04 02:26:47'),
(17, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"9928e9b4f29ac9af537d5c4da97df768\\\":{\\\"rowId\\\":\\\"9928e9b4f29ac9af537d5c4da97df768\\\",\\\"id\\\":162,\\\"name\\\":\\\"\\\\u00d4 hoa c\\\\u00fac t\\\\u1ef1 bung\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":55000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"6000\\\",\\\"price_in\\\":\\\"52000\\\",\\\"amount\\\":\\\"18\\\",\\\"sort\\\":1617532258},\\\"discount\\\":0,\\\"tax\\\":11550,\\\"subtotal\\\":110000}}\"', NULL, 110000, 110000, 0, 0, 0, 6000, NULL, 0, '2021-04-04 03:31:12', '2021-04-07 03:04:02'),
(18, 37, 13, 'Chưa nhập địa chỉ', '0966369669', 'ThanhThanh@gmail.com', '\"{\\\"af079aa41742752317f7a99b070b646a\\\":{\\\"rowId\\\":\\\"af079aa41742752317f7a99b070b646a\\\",\\\"id\\\":60,\\\"name\\\":\\\"Xay t\\\\u1ecfi tay\\\",\\\"qty\\\":\\\"5\\\",\\\"price\\\":20000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"15000\\\",\\\"price_in\\\":\\\"17000\\\",\\\"amount\\\":\\\"89\\\",\\\"sort\\\":1617588038},\\\"discount\\\":0,\\\"tax\\\":4200,\\\"subtotal\\\":100000},\\\"f04f9fc73bd9e1f3ad99cbadca9f0557\\\":{\\\"rowId\\\":\\\"f04f9fc73bd9e1f3ad99cbadca9f0557\\\",\\\"id\\\":58,\\\"name\\\":\\\"G\\\\u01b0\\\\u01a1ng tai m\\\\u00e8o \\\\u0111\\\\u1ebf tr\\\\u00f2n\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":32000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"40000\\\",\\\"price_in\\\":\\\"28000\\\",\\\"amount\\\":\\\"12\\\",\\\"sort\\\":1617588051},\\\"discount\\\":0,\\\"tax\\\":6720,\\\"subtotal\\\":320000},\\\"ee873cb536c07e32b99ca92a22637e6b\\\":{\\\"rowId\\\":\\\"ee873cb536c07e32b99ca92a22637e6b\\\",\\\"id\\\":233,\\\"name\\\":\\\"C\\\\u00e1n ch\\\\u1ed5i t\\\\u1ef1 v\\\\u1eaft th\\\\u00f4ng minh\\\",\\\"qty\\\":\\\"5\\\",\\\"price\\\":42000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"20000\\\",\\\"price_in\\\":\\\"38000\\\",\\\"amount\\\":\\\"80\\\",\\\"sort\\\":1617588197},\\\"discount\\\":0,\\\"tax\\\":8820,\\\"subtotal\\\":210000},\\\"b8e16b0d6d4670944e05ddf40c33555f\\\":{\\\"rowId\\\":\\\"b8e16b0d6d4670944e05ddf40c33555f\\\",\\\"id\\\":234,\\\"name\\\":\\\"M\\\\u00e1y xay d\\\\u00e2u Meet Juice\\\",\\\"qty\\\":\\\"5\\\",\\\"price\\\":205000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"50000\\\",\\\"price_in\\\":\\\"195000\\\",\\\"amount\\\":\\\"5\\\",\\\"sort\\\":1617588640},\\\"discount\\\":0,\\\"tax\\\":43050,\\\"subtotal\\\":1025000},\\\"54e90d6500f3ef4ee8c848338a608834\\\":{\\\"rowId\\\":\\\"54e90d6500f3ef4ee8c848338a608834\\\",\\\"id\\\":231,\\\"name\\\":\\\"T\\\\u00fai l\\\\u1ecdc r\\\\u00e1c b\\\\u1ed3n r\\\\u1eeda (100c\\\\\\/t\\\\u00fai)\\\",\\\"qty\\\":\\\"5\\\",\\\"price\\\":20000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"15000\\\",\\\"price_in\\\":\\\"17000\\\",\\\"amount\\\":\\\"190\\\",\\\"sort\\\":1617588696},\\\"discount\\\":0,\\\"tax\\\":4200,\\\"subtotal\\\":100000},\\\"e734d1d6defeac5fbc2b00e84d094264\\\":{\\\"rowId\\\":\\\"e734d1d6defeac5fbc2b00e84d094264\\\",\\\"id\\\":236,\\\"name\\\":\\\"M\\\\u00f3c 9 l\\\\u1ed7\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":6000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"22000\\\",\\\"price_in\\\":\\\"3800\\\",\\\"amount\\\":\\\"1500\\\",\\\"sort\\\":1617588813},\\\"discount\\\":0,\\\"tax\\\":1260,\\\"subtotal\\\":60000},\\\"3a72802417961e80280fbf7c13818802\\\":{\\\"rowId\\\":\\\"3a72802417961e80280fbf7c13818802\\\",\\\"id\\\":237,\\\"name\\\":\\\"B\\\\u1ecdc th\\\\u1ef1c ph\\\\u1ea9m g\\\\u1ea5u (100c\\\\\\/t\\\\u00fai)\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":18000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"0\\\",\\\"price_in\\\":\\\"18000\\\",\\\"amount\\\":\\\"10\\\",\\\"sort\\\":1617589321},\\\"discount\\\":0,\\\"tax\\\":3780,\\\"subtotal\\\":180000}}\"', NULL, 2535000, 2535000, 0, 0, 0, 269000, NULL, 0, '2021-04-04 19:23:10', '2021-04-07 03:03:44'),
(19, 38, 13, 'Chưa nhập địa chỉ', '0977387118', 'tranhue@gmail.com', '\"{\\\"85e640398b5390ec4a09850cea426b49\\\":{\\\"rowId\\\":\\\"85e640398b5390ec4a09850cea426b49\\\",\\\"id\\\":235,\\\"name\\\":\\\"B\\\\u00e0n l\\\\u00e0 h\\\\u01a1i n\\\\u01b0\\\\u1edbc Sokany 3060\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":265000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"100000\\\",\\\"price_in\\\":\\\"255000\\\",\\\"amount\\\":\\\"10\\\",\\\"sort\\\":1617589602},\\\"discount\\\":0,\\\"tax\\\":55650,\\\"subtotal\\\":2650000}}\"', NULL, 2650000, 2650000, 0, 0, 0, 100000, NULL, 0, '2021-04-04 19:28:30', '2021-04-04 23:00:00'),
(20, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"0807f55a161f5593fc537d593e0b6f64\\\":{\\\"rowId\\\":\\\"0807f55a161f5593fc537d593e0b6f64\\\",\\\"id\\\":234,\\\"name\\\":\\\"M\\\\u00e1y xay d\\\\u00e2u Meet Juice\\\",\\\"qty\\\":\\\"25\\\",\\\"price\\\":196000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"85000\\\",\\\"price_in\\\":\\\"192000\\\",\\\"amount\\\":\\\"25\\\",\\\"sort\\\":1617593013},\\\"discount\\\":0,\\\"tax\\\":41160,\\\"subtotal\\\":4900000}}\"', NULL, 4900000, 4900000, 0, 0, 0, 100000, NULL, 0, '2021-04-04 20:23:51', '2021-04-04 21:54:23'),
(21, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"d72176bfba61ea0fddf9fae39e35ce37\\\":{\\\"rowId\\\":\\\"d72176bfba61ea0fddf9fae39e35ce37\\\",\\\"id\\\":200,\\\"name\\\":\\\"\\\\u0110\\\\u0169a h\\\\u1ee3p kim\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":20000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"1000\\\",\\\"price_in\\\":\\\"18700\\\",\\\"amount\\\":\\\"230\\\",\\\"sort\\\":1617597587},\\\"discount\\\":0,\\\"tax\\\":4200,\\\"subtotal\\\":20000},\\\"1c61efd174e23ffbbfdd91f74a5ec8b2\\\":{\\\"rowId\\\":\\\"1c61efd174e23ffbbfdd91f74a5ec8b2\\\",\\\"id\\\":139,\\\"name\\\":\\\"B\\\\u00e1t h\\\\u00fat ch\\\\u00e2n kh\\\\u00f4ng Vinmart 500ml\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":22000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"2000\\\",\\\"price_in\\\":\\\"20000\\\",\\\"amount\\\":\\\"24\\\",\\\"sort\\\":1617597640},\\\"discount\\\":0,\\\"tax\\\":4620,\\\"subtotal\\\":22000}}\"', NULL, 42000, 42000, 0, 0, 0, 3000, NULL, 0, '2021-04-04 21:40:48', '2021-04-04 21:40:48'),
(22, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"c13fdcb6109222bd5141ff0298747b0a\\\":{\\\"rowId\\\":\\\"c13fdcb6109222bd5141ff0298747b0a\\\",\\\"id\\\":230,\\\"name\\\":\\\"\\\\u0110\\\\u00e8n b\\\\u1eaft mu\\\\u1ed1i \\\\u00e1nh s\\\\u00e1ng xanh\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":32000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"35000\\\",\\\"price_in\\\":\\\"28500\\\",\\\"amount\\\":\\\"51\\\",\\\"sort\\\":1617603427},\\\"discount\\\":0,\\\"tax\\\":6720,\\\"subtotal\\\":320000}}\"', NULL, 320000, 320000, 0, 0, 0, 35000, NULL, 0, '2021-04-04 23:17:19', '2021-04-04 23:17:19'),
(23, 39, 13, 'Số 44 ngách 14 ngõ 121 Chùa Láng, Hà Nội', '0967716184', 'phuonganh@gmail.com', '\"{\\\"7528906fcf04223273f2b70a032b269f\\\":{\\\"rowId\\\":\\\"7528906fcf04223273f2b70a032b269f\\\",\\\"id\\\":238,\\\"name\\\":\\\"M\\\\u00e1y xay Osaka h\\\\u1ed3ng n\\\\u1eafp n\\\\u00e2u\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":116000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"120000\\\",\\\"price_in\\\":\\\"112000\\\",\\\"amount\\\":\\\"90\\\",\\\"sort\\\":1617607283},\\\"discount\\\":0,\\\"tax\\\":24360,\\\"subtotal\\\":3480000}}\"', NULL, 3480000, 3510000, 30000, 0, 0, 120000, NULL, 0, '2021-04-05 00:26:06', '2021-04-05 00:43:36'),
(24, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"4705c0b53530fb0ec90f560a68e247c9\\\":{\\\"rowId\\\":\\\"4705c0b53530fb0ec90f560a68e247c9\\\",\\\"id\\\":106,\\\"name\\\":\\\"L\\\\u1ecd th\\\\u00f4ng c\\\\u1ed1ng n\\\\u1eafp xanh\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":15000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"4000\\\",\\\"price_in\\\":\\\"13000\\\",\\\"amount\\\":\\\"2\\\",\\\"sort\\\":1617609299},\\\"discount\\\":0,\\\"tax\\\":3150,\\\"subtotal\\\":30000}}\"', 'Chồng', 30000, 30000, 0, 0, 0, 4000, NULL, 0, '2021-04-05 00:55:13', '2021-04-17 19:41:20'),
(25, 40, 13, 'Thôn Dương Sơn, Hòa Tiến, Hòa Vang, Đà Nẵng (ZTO)', '0935551346', 'anvo@gmail.com', '\"{\\\"131791db8338679b073ce0019595d19f\\\":{\\\"rowId\\\":\\\"131791db8338679b073ce0019595d19f\\\",\\\"id\\\":232,\\\"name\\\":\\\"Set m\\\\u0169 k\\\\u00e8m kh\\\\u1ea9u trang n\\\\u1eef\\\",\\\"qty\\\":\\\"50\\\",\\\"price\\\":28000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"100000\\\",\\\"price_in\\\":\\\"26000\\\",\\\"amount\\\":\\\"50\\\",\\\"sort\\\":1617618456},\\\"discount\\\":0,\\\"tax\\\":5880,\\\"subtotal\\\":1400000}}\"', NULL, 1400000, 1400000, 0, 0, 0, 100000, NULL, 0, '2021-04-05 18:55:48', '2021-04-05 20:45:12'),
(26, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"1b19a3f330f1820db64a7eb9eb98ebf6\\\":{\\\"rowId\\\":\\\"1b19a3f330f1820db64a7eb9eb98ebf6\\\",\\\"id\\\":230,\\\"name\\\":\\\"\\\\u0110\\\\u00e8n b\\\\u1eaft mu\\\\u1ed1i \\\\u00e1nh s\\\\u00e1ng xanh\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":32000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3500\\\",\\\"price_in\\\":\\\"28500\\\",\\\"amount\\\":\\\"41\\\",\\\"sort\\\":1617680113},\\\"discount\\\":0,\\\"tax\\\":6720,\\\"subtotal\\\":32000},\\\"f6305e9b414cb29ff131e6a5c55a9359\\\":{\\\"rowId\\\":\\\"f6305e9b414cb29ff131e6a5c55a9359\\\",\\\"id\\\":\\\"108\\\",\\\"name\\\":\\\"H\\\\u1ed9p \\\\u0111\\\\u1ef1ng gi\\\\u1ea5y \\\\u0103n h\\\\u00ecnh TV\\\",\\\"qty\\\":2,\\\"price\\\":\\\"46000\\\",\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":8000,\\\"price_in\\\":\\\"42000\\\",\\\"amount\\\":\\\"11\\\",\\\"sort\\\":1617680139},\\\"discount\\\":0,\\\"tax\\\":9660,\\\"subtotal\\\":92000},\\\"387d86683539690980e0dddc71b72c4d\\\":{\\\"rowId\\\":\\\"387d86683539690980e0dddc71b72c4d\\\",\\\"id\\\":189,\\\"name\\\":\\\"H\\\\u1ed9p n\\\\u1ea1o h\\\\u00ecnh ch\\\\u1eef nh\\\\u1eadt\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":32000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3500\\\",\\\"price_in\\\":\\\"28500\\\",\\\"amount\\\":\\\"14\\\",\\\"sort\\\":1617680149},\\\"discount\\\":0,\\\"tax\\\":6720,\\\"subtotal\\\":32000},\\\"dc0e09d57b250d5e45dd7b470df258bd\\\":{\\\"rowId\\\":\\\"dc0e09d57b250d5e45dd7b470df258bd\\\",\\\"id\\\":238,\\\"name\\\":\\\"M\\\\u00e1y xay Osaka h\\\\u1ed3ng n\\\\u1eafp n\\\\u00e2u\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":122000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"10000\\\",\\\"price_in\\\":\\\"112000\\\",\\\"amount\\\":\\\"60\\\",\\\"sort\\\":1617680163},\\\"discount\\\":0,\\\"tax\\\":25620,\\\"subtotal\\\":122000},\\\"6db147545a7f1b91d9bbeec58a0b4c6a\\\":{\\\"rowId\\\":\\\"6db147545a7f1b91d9bbeec58a0b4c6a\\\",\\\"id\\\":155,\\\"name\\\":\\\"M\\\\u00e1y s\\\\u1ea5y t\\\\u00f3c Panansoni 5528 3500w\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":65000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"2000\\\",\\\"price_in\\\":\\\"58000\\\",\\\"amount\\\":\\\"83\\\",\\\"sort\\\":1617680175},\\\"discount\\\":0,\\\"tax\\\":13650,\\\"subtotal\\\":65000},\\\"1522df9bc631ce53d8a1ab704ebfa02a\\\":{\\\"rowId\\\":\\\"1522df9bc631ce53d8a1ab704ebfa02a\\\",\\\"id\\\":54,\\\"name\\\":\\\"\\\\u1ed4 \\\\u0111i\\\\u1ec7n xanh \\\\u0111a n\\\\u0103ng\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":43000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"4000\\\",\\\"price_in\\\":\\\"41000\\\",\\\"amount\\\":\\\"10\\\",\\\"sort\\\":1617680191},\\\"discount\\\":0,\\\"tax\\\":9030,\\\"subtotal\\\":86000},\\\"8dcc135ec5e6ae6c7996da9dc9c9e512\\\":{\\\"rowId\\\":\\\"8dcc135ec5e6ae6c7996da9dc9c9e512\\\",\\\"id\\\":242,\\\"name\\\":\\\"Kh\\\\u0103n lau zigzag 2 m\\\\u1eb7t (set 10c\\\\\\/t\\\\u00fai)\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":15000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"6200\\\",\\\"price_in\\\":\\\"11900\\\",\\\"amount\\\":\\\"550\\\",\\\"sort\\\":1617680199},\\\"discount\\\":0,\\\"tax\\\":3150,\\\"subtotal\\\":30000},\\\"4a9e9c01a5448196611a712359916884\\\":{\\\"rowId\\\":\\\"4a9e9c01a5448196611a712359916884\\\",\\\"id\\\":76,\\\"name\\\":\\\"M\\\\u00e1y phun s\\\\u01b0\\\\u01a1ng mini\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":24000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"6000\\\",\\\"price_in\\\":\\\"21000\\\",\\\"amount\\\":\\\"195\\\",\\\"sort\\\":1617680214},\\\"discount\\\":0,\\\"tax\\\":5040,\\\"subtotal\\\":48000},\\\"a7e8d0d91651411f12462718c9bd1534\\\":{\\\"rowId\\\":\\\"a7e8d0d91651411f12462718c9bd1534\\\",\\\"id\\\":211,\\\"name\\\":\\\"K\\\\u1ec7 d\\\\u00e1n t\\\\u01b0\\\\u1eddng \\\\u0111\\\\u1ef1ng \\\\u0111i\\\\u1ec1u khi\\\\u1ec3n\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":8000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3000\\\",\\\"price_in\\\":\\\"6500\\\",\\\"amount\\\":\\\"81\\\",\\\"sort\\\":1617680226},\\\"discount\\\":0,\\\"tax\\\":1680,\\\"subtotal\\\":16000},\\\"49d878d6401ce3c55b809290e56f5ba9\\\":{\\\"rowId\\\":\\\"49d878d6401ce3c55b809290e56f5ba9\\\",\\\"id\\\":58,\\\"name\\\":\\\"G\\\\u01b0\\\\u01a1ng tai m\\\\u00e8o \\\\u0111\\\\u1ebf tr\\\\u00f2n\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":32000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"4000\\\",\\\"price_in\\\":\\\"28000\\\",\\\"amount\\\":\\\"2\\\",\\\"sort\\\":1617680252},\\\"discount\\\":0,\\\"tax\\\":6720,\\\"subtotal\\\":32000},\\\"3f4275759a8dfeffd3d4ae06b7af967c\\\":{\\\"rowId\\\":\\\"3f4275759a8dfeffd3d4ae06b7af967c\\\",\\\"id\\\":91,\\\"name\\\":\\\"C\\\\u1ed1c s\\\\u1eefa chia v\\\\u1ea1ch\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":18000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3000\\\",\\\"price_in\\\":\\\"15000\\\",\\\"amount\\\":\\\"36\\\",\\\"sort\\\":1617680265},\\\"discount\\\":0,\\\"tax\\\":3780,\\\"subtotal\\\":18000},\\\"270e2266ab24e89e347f6cbe1eb1ed96\\\":{\\\"rowId\\\":\\\"270e2266ab24e89e347f6cbe1eb1ed96\\\",\\\"id\\\":162,\\\"name\\\":\\\"\\\\u00d4 hoa c\\\\u00fac t\\\\u1ef1 bung\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":58000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"6000\\\",\\\"price_in\\\":\\\"52000\\\",\\\"amount\\\":\\\"16\\\",\\\"sort\\\":1617680280},\\\"discount\\\":0,\\\"tax\\\":12180,\\\"subtotal\\\":58000},\\\"b81c40a9bc84f9b5a24588ae7497c6b8\\\":{\\\"rowId\\\":\\\"b81c40a9bc84f9b5a24588ae7497c6b8\\\",\\\"id\\\":103,\\\"name\\\":\\\"Ca ch\\\\u00e1o inox \\\\u0111\\\\u1ecf 16cm\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":24000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3000\\\",\\\"price_in\\\":\\\"21000\\\",\\\"amount\\\":\\\"72\\\",\\\"sort\\\":1617680290},\\\"discount\\\":0,\\\"tax\\\":5040,\\\"subtotal\\\":24000},\\\"b25e0d88669bd1031035fb4dbdf9c750\\\":{\\\"rowId\\\":\\\"b25e0d88669bd1031035fb4dbdf9c750\\\",\\\"id\\\":47,\\\"name\\\":\\\"Ca m\\\\u1ef3 \\\\u0111a n\\\\u0103ng c\\\\u00e1n d\\\\u00e0i\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":83000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"8000\\\",\\\"price_in\\\":\\\"75000\\\",\\\"amount\\\":\\\"26\\\",\\\"sort\\\":1617680316},\\\"discount\\\":0,\\\"tax\\\":17430,\\\"subtotal\\\":83000},\\\"558f0ff9afcdace5cb18dd44d7bbd676\\\":{\\\"rowId\\\":\\\"558f0ff9afcdace5cb18dd44d7bbd676\\\",\\\"id\\\":251,\\\"name\\\":\\\"H\\\\u1ed9p \\\\u0111\\\\u1ef1ng t\\\\u00fai nilon d\\\\u00e1n t\\\\u01b0\\\\u1eddng\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":29000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3000\\\",\\\"price_in\\\":\\\"26000\\\",\\\"amount\\\":\\\"58\\\",\\\"sort\\\":1617680332},\\\"discount\\\":0,\\\"tax\\\":6090,\\\"subtotal\\\":29000},\\\"bae893310693f9d931bed840552e65b9\\\":{\\\"rowId\\\":\\\"bae893310693f9d931bed840552e65b9\\\",\\\"id\\\":209,\\\"name\\\":\\\"K\\\\u1ec7 gi\\\\u1ea7y inox 5 t\\\\u1ea7ng\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":69000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"2000\\\",\\\"price_in\\\":\\\"63000\\\",\\\"amount\\\":\\\"99\\\",\\\"sort\\\":1617680342},\\\"discount\\\":0,\\\"tax\\\":14490,\\\"subtotal\\\":69000}}\"', NULL, 836000, 836000, 0, 0, 0, 75200, NULL, 0, '2021-04-05 20:41:04', '2021-04-05 20:44:42'),
(27, 14, 13, 'Khu tập thể Phân Lân - Văn Điển - Hà Nội', '0987475575', 'tungkieu@gmail.com', '\"{\\\"0bd9910d2e0122cb8e7ad5e9821df298\\\":{\\\"rowId\\\":\\\"0bd9910d2e0122cb8e7ad5e9821df298\\\",\\\"id\\\":247,\\\"name\\\":\\\"M\\\\u00f3c trong si\\\\u00eau d\\\\u00ednh\\\",\\\"qty\\\":\\\"4000\\\",\\\"price\\\":425,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"40000\\\",\\\"price_in\\\":\\\"415\\\",\\\"amount\\\":\\\"14700\\\",\\\"sort\\\":\\\"M\\\\u00f3c trong si\\\\u00eau d\\\\u00ednh\\\"},\\\"discount\\\":0,\\\"tax\\\":89.25,\\\"subtotal\\\":1700000},\\\"c24cd30503ef0f1701bdc567f07b55a8\\\":{\\\"rowId\\\":\\\"c24cd30503ef0f1701bdc567f07b55a8\\\",\\\"id\\\":242,\\\"name\\\":\\\"Kh\\\\u0103n lau zigzag 2 m\\\\u1eb7t (set 10c\\\\\\/t\\\\u00fai)\\\",\\\"qty\\\":\\\"400\\\",\\\"price\\\":11900,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"0\\\",\\\"price_in\\\":\\\"11900\\\",\\\"amount\\\":\\\"548\\\",\\\"sort\\\":\\\"Kh\\\\u0103n lau zigzag 2 m\\\\u1eb7t (set 10c\\\\\\/t\\\\u00fai)\\\"},\\\"discount\\\":0,\\\"tax\\\":2499,\\\"subtotal\\\":4760000}}\"', NULL, 13600000, 13600000, 0, 0, 0, 350000, NULL, 0, '2021-04-06 02:28:22', '2021-04-07 03:03:04'),
(28, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"e428866852510967eb809f3490f39e82\\\":{\\\"rowId\\\":\\\"e428866852510967eb809f3490f39e82\\\",\\\"id\\\":147,\\\"name\\\":\\\"M\\\\u00f3c treo \\\\u0111\\\\u1ea7u h\\\\u01b0\\\\u01a1u\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":20000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"2500\\\",\\\"price_in\\\":\\\"17500\\\",\\\"amount\\\":\\\"56\\\",\\\"sort\\\":\\\"M\\\\u00f3c treo \\\\u0111\\\\u1ea7u h\\\\u01b0\\\\u01a1u\\\"},\\\"discount\\\":0,\\\"tax\\\":4200,\\\"subtotal\\\":20000}}\"', NULL, 20000, 20000, 0, 0, 0, 2500, NULL, 0, '2021-04-06 04:28:53', '2021-04-06 04:28:53'),
(29, 39, 13, 'Số 44 ngách 14 ngõ 121 Chùa Láng, Hà Nội', '0967716184', 'phuonganh@gmail.com', '\"{\\\"4a5f56a2b52d0d7c3df96d9d60bbd669\\\":{\\\"rowId\\\":\\\"4a5f56a2b52d0d7c3df96d9d60bbd669\\\",\\\"id\\\":235,\\\"name\\\":\\\"B\\\\u00e0n l\\\\u00e0 h\\\\u01a1i n\\\\u01b0\\\\u1edbc Sokany 3060\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":264000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"90000\\\",\\\"price_in\\\":\\\"255000\\\",\\\"amount\\\":\\\"10\\\",\\\"sort\\\":\\\"B\\\\u00e0n l\\\\u00e0 h\\\\u01a1i n\\\\u01b0\\\\u1edbc Sokany 3060\\\"},\\\"discount\\\":0,\\\"tax\\\":55440,\\\"subtotal\\\":2640000},\\\"7ec44855073dd1ebf6a762e544267d26\\\":{\\\"rowId\\\":\\\"7ec44855073dd1ebf6a762e544267d26\\\",\\\"id\\\":80,\\\"name\\\":\\\"K\\\\u00e9o SK5 v\\\\u1ec9\\\",\\\"qty\\\":\\\"20\\\",\\\"price\\\":30000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"60000\\\",\\\"price_in\\\":\\\"27000\\\",\\\"amount\\\":\\\"95\\\",\\\"sort\\\":\\\"K\\\\u00e9o SK5 v\\\\u1ec9\\\"},\\\"discount\\\":0,\\\"tax\\\":6300,\\\"subtotal\\\":600000}}\"', NULL, 3240000, 3270000, 30000, 0, 0, 150000, NULL, 0, '2021-04-06 18:52:34', '2021-04-07 03:02:43'),
(30, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"ef8983f1e9f4e91a29f433f509138918\\\":{\\\"rowId\\\":\\\"ef8983f1e9f4e91a29f433f509138918\\\",\\\"id\\\":252,\\\"name\\\":\\\"Kh\\\\u1ea9u trang 4 l\\\\u1edbp OTC\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":25000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"10000\\\",\\\"price_in\\\":\\\"20000\\\",\\\"amount\\\":\\\"29\\\",\\\"sort\\\":\\\"Kh\\\\u1ea9u trang 4 l\\\\u1edbp OTC\\\"},\\\"discount\\\":0,\\\"tax\\\":5250,\\\"subtotal\\\":50000},\\\"ec2cb5664e81daef93384bfaea75ae31\\\":{\\\"rowId\\\":\\\"ec2cb5664e81daef93384bfaea75ae31\\\",\\\"id\\\":240,\\\"name\\\":\\\"B\\\\u00ecnh nh\\\\u1ef1a detox pongdang 1000ml\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":18000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"4000\\\",\\\"price_in\\\":\\\"16000\\\",\\\"amount\\\":\\\"302\\\",\\\"sort\\\":\\\"B\\\\u00ecnh nh\\\\u1ef1a detox pongdang 1000ml\\\"},\\\"discount\\\":0,\\\"tax\\\":3780,\\\"subtotal\\\":36000}}\"', NULL, 86000, 86000, 0, 0, 0, 14000, NULL, 0, '2021-04-07 03:53:33', '2021-04-07 03:53:33'),
(31, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"bb07fce5ad9a59e7fd0c0842e248e9c0\\\":{\\\"rowId\\\":\\\"bb07fce5ad9a59e7fd0c0842e248e9c0\\\",\\\"id\\\":82,\\\"name\\\":\\\"Urgo ho\\\\u1ea1t h\\\\u00ecnh\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":20000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3500\\\",\\\"price_in\\\":\\\"16500\\\",\\\"amount\\\":\\\"30\\\",\\\"sort\\\":\\\"Urgo ho\\\\u1ea1t h\\\\u00ecnh\\\"},\\\"discount\\\":0,\\\"tax\\\":4200,\\\"subtotal\\\":20000},\\\"e47b09e2f9f21bc0999a60dd969082d6\\\":{\\\"rowId\\\":\\\"e47b09e2f9f21bc0999a60dd969082d6\\\",\\\"id\\\":252,\\\"name\\\":\\\"Kh\\\\u1ea9u trang 4 l\\\\u1edbp OTC\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":25000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"10000\\\",\\\"price_in\\\":\\\"20000\\\",\\\"amount\\\":\\\"27\\\",\\\"sort\\\":\\\"Kh\\\\u1ea9u trang 4 l\\\\u1edbp OTC\\\"},\\\"discount\\\":0,\\\"tax\\\":5250,\\\"subtotal\\\":50000},\\\"2a4f45411cce71056a3d66e81caa086d\\\":{\\\"rowId\\\":\\\"2a4f45411cce71056a3d66e81caa086d\\\",\\\"id\\\":84,\\\"name\\\":\\\"Kh\\\\u1ea9u trang 3D Naru Kids\\\",\\\"qty\\\":\\\"5\\\",\\\"price\\\":28000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"15000\\\",\\\"price_in\\\":\\\"25000\\\",\\\"amount\\\":\\\"91\\\",\\\"sort\\\":\\\"Kh\\\\u1ea9u trang 3D Naru Kids\\\"},\\\"discount\\\":0,\\\"tax\\\":5880,\\\"subtotal\\\":140000},\\\"afb831c0c5da04ec8d7672edb740da04\\\":{\\\"rowId\\\":\\\"afb831c0c5da04ec8d7672edb740da04\\\",\\\"id\\\":54,\\\"name\\\":\\\"\\\\u1ed4 \\\\u0111i\\\\u1ec7n xanh \\\\u0111a n\\\\u0103ng\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":40000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"-1000\\\",\\\"price_in\\\":\\\"41000\\\",\\\"amount\\\":\\\"8\\\",\\\"sort\\\":\\\"\\\\u1ed4 \\\\u0111i\\\\u1ec7n xanh \\\\u0111a n\\\\u0103ng\\\"},\\\"discount\\\":0,\\\"tax\\\":8400,\\\"subtotal\\\":40000},\\\"a4037c9becd0dc754b5362144b4ac2ec\\\":{\\\"rowId\\\":\\\"a4037c9becd0dc754b5362144b4ac2ec\\\",\\\"id\\\":101,\\\"name\\\":\\\"Gi\\\\u1ea5y lau gi\\\\u1ea7y Sneacker\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":30000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"5000\\\",\\\"price_in\\\":\\\"23500\\\",\\\"amount\\\":\\\"244\\\",\\\"sort\\\":\\\"Gi\\\\u1ea5y lau gi\\\\u1ea7y Sneacker\\\"},\\\"discount\\\":0,\\\"tax\\\":6300,\\\"subtotal\\\":30000},\\\"012bee679a81f6363a3cb740a6607434\\\":{\\\"rowId\\\":\\\"012bee679a81f6363a3cb740a6607434\\\",\\\"id\\\":253,\\\"name\\\":\\\"Gi\\\\u1ea5y v\\\\u1ec7 sinh b\\\\u1ecbch 50 cu\\\\u1ed9n TQ\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":118000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"10000\\\",\\\"price_in\\\":\\\"108000\\\",\\\"amount\\\":\\\"6\\\",\\\"sort\\\":\\\"Gi\\\\u1ea5y v\\\\u1ec7 sinh b\\\\u1ecbch 50 cu\\\\u1ed9n TQ\\\"},\\\"discount\\\":0,\\\"tax\\\":24780,\\\"subtotal\\\":118000},\\\"86d3035493f1542292736adf5f8531bf\\\":{\\\"rowId\\\":\\\"86d3035493f1542292736adf5f8531bf\\\",\\\"id\\\":164,\\\"name\\\":\\\"H\\\\u1ed9p m\\\\u00e0u 150ct\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":45000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"2500\\\",\\\"price_in\\\":\\\"42500\\\",\\\"amount\\\":\\\"10\\\",\\\"sort\\\":\\\"H\\\\u1ed9p m\\\\u00e0u 150ct\\\"},\\\"discount\\\":0,\\\"tax\\\":9450,\\\"subtotal\\\":45000},\\\"57f867e4fb4eda45947a2256ca985c5c\\\":{\\\"rowId\\\":\\\"57f867e4fb4eda45947a2256ca985c5c\\\",\\\"id\\\":94,\\\"name\\\":\\\"B\\\\u00fat nh\\\\u1edb 2 \\\\u0111\\\\u1ea7u (set 6c)\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":28000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"13000\\\",\\\"price_in\\\":\\\"15000\\\",\\\"amount\\\":\\\"57\\\",\\\"sort\\\":\\\"B\\\\u00fat nh\\\\u1edb 2 \\\\u0111\\\\u1ea7u (set 6c)\\\"},\\\"discount\\\":0,\\\"tax\\\":5880,\\\"subtotal\\\":28000},\\\"5a0b8bf9085e63e227a410d76f741a0d\\\":{\\\"rowId\\\":\\\"5a0b8bf9085e63e227a410d76f741a0d\\\",\\\"id\\\":140,\\\"name\\\":\\\"B\\\\u00f4ng t\\\\u1ea9y trang 222m\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":25000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"10200\\\",\\\"price_in\\\":\\\"19900\\\",\\\"amount\\\":\\\"915\\\",\\\"sort\\\":\\\"B\\\\u00f4ng t\\\\u1ea9y trang 222m\\\"},\\\"discount\\\":0,\\\"tax\\\":5250,\\\"subtotal\\\":50000},\\\"7903b60c2666040696ad06a41cd1b4d6\\\":{\\\"rowId\\\":\\\"7903b60c2666040696ad06a41cd1b4d6\\\",\\\"id\\\":205,\\\"name\\\":\\\"M\\\\u0169 v\\\\u00e0nh r\\\\u1ed9ng\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":48000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"0\\\",\\\"price_in\\\":\\\"48000\\\",\\\"amount\\\":\\\"30\\\",\\\"sort\\\":\\\"M\\\\u0169 v\\\\u00e0nh r\\\\u1ed9ng\\\"},\\\"discount\\\":0,\\\"tax\\\":10080,\\\"subtotal\\\":48000},\\\"5b4323885eaf48e86da7ac60d5da9cfd\\\":{\\\"rowId\\\":\\\"5b4323885eaf48e86da7ac60d5da9cfd\\\",\\\"id\\\":249,\\\"name\\\":\\\"Gi\\\\u1ea5y r\\\\u00fat Sipiao VN\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":90000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"7000\\\",\\\"price_in\\\":\\\"83000\\\",\\\"amount\\\":\\\"42\\\",\\\"sort\\\":\\\"Gi\\\\u1ea5y r\\\\u00fat Sipiao VN\\\"},\\\"discount\\\":0,\\\"tax\\\":18900,\\\"subtotal\\\":90000}}\"', 'Hương Teressa', 569000, 569000, 0, 0, 0, 75200, NULL, 0, '2021-04-07 04:03:13', '2021-04-17 19:40:57'),
(32, 17, 13, '154 Yên Lãng, Hà Nội', '0392215483', 'vungochuan@gmail.com', '\"{\\\"2b8ac72248fc660067a21008a3787c9f\\\":{\\\"rowId\\\":\\\"2b8ac72248fc660067a21008a3787c9f\\\",\\\"id\\\":239,\\\"name\\\":\\\"M\\\\u00e1y xo\\\\u0103n t\\\\u00f3c h\\\\u1ed3ng Vivodo & Voguo\\\",\\\"qty\\\":\\\"360\\\",\\\"price\\\":114000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"720000\\\",\\\"price_in\\\":\\\"112000\\\",\\\"amount\\\":\\\"360\\\",\\\"sort\\\":\\\"M\\\\u00e1y xo\\\\u0103n t\\\\u00f3c h\\\\u1ed3ng Vivodo & Voguo\\\"},\\\"discount\\\":0,\\\"tax\\\":23940,\\\"subtotal\\\":41040000}}\"', NULL, 41040000, 41040000, 0, 0, 0, 720000, NULL, 0, '2021-04-08 19:03:58', '2021-04-10 03:06:31'),
(33, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"7bd5a81063e7a2f9d1a3c16adb17e2c6\\\":{\\\"rowId\\\":\\\"7bd5a81063e7a2f9d1a3c16adb17e2c6\\\",\\\"id\\\":219,\\\"name\\\":\\\"\\\\u0110\\\\u00e8n ng\\\\u1ee7 h\\\\u00ecnh n\\\\u1ea5m\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":12000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3400\\\",\\\"price_in\\\":\\\"10300\\\",\\\"amount\\\":\\\"25\\\",\\\"sort\\\":\\\"\\\\u0110\\\\u00e8n ng\\\\u1ee7 h\\\\u00ecnh n\\\\u1ea5m\\\"},\\\"discount\\\":0,\\\"tax\\\":2520,\\\"subtotal\\\":24000},\\\"317e7d700186c0bbfe4d3dd7a56c4e0e\\\":{\\\"rowId\\\":\\\"317e7d700186c0bbfe4d3dd7a56c4e0e\\\",\\\"id\\\":84,\\\"name\\\":\\\"Kh\\\\u1ea9u trang 3D Naru Kids\\\",\\\"qty\\\":\\\"20\\\",\\\"price\\\":28000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"60000\\\",\\\"price_in\\\":\\\"25000\\\",\\\"amount\\\":\\\"86\\\",\\\"sort\\\":\\\"Kh\\\\u1ea9u trang 3D Naru Kids\\\"},\\\"discount\\\":0,\\\"tax\\\":5880,\\\"subtotal\\\":560000},\\\"16d987fed894051a5c7ad22602eec7ce\\\":{\\\"rowId\\\":\\\"16d987fed894051a5c7ad22602eec7ce\\\",\\\"id\\\":128,\\\"name\\\":\\\"Set 3 h\\\\u1ed9p nh\\\\u1ef1a HKM Pepsi\\\",\\\"qty\\\":\\\"5\\\",\\\"price\\\":7000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"12500\\\",\\\"price_in\\\":\\\"4500\\\",\\\"amount\\\":\\\"152\\\",\\\"sort\\\":\\\"Set 3 h\\\\u1ed9p nh\\\\u1ef1a HKM Pepsi\\\"},\\\"discount\\\":0,\\\"tax\\\":1470,\\\"subtotal\\\":35000}}\"', 'Duy', 619000, 619000, 0, 0, 0, 75900, NULL, 0, '2021-04-08 19:06:06', '2021-04-10 03:06:13');
INSERT INTO `orders` (`id`, `user_id`, `user_create`, `address`, `phone`, `email`, `content`, `note`, `total`, `checkout`, `transport`, `discount`, `debt`, `revenue`, `editer`, `status`, `created_at`, `updated_at`) VALUES
(34, 23, 13, 'Hapulico - 81 Vũ Trọng Phụng, TX, HN', '0942565686', 'haphuongdci@gmail.com', '\"{\\\"d3fef0284dd6e782ff89364b97bc3766\\\":{\\\"rowId\\\":\\\"d3fef0284dd6e782ff89364b97bc3766\\\",\\\"id\\\":224,\\\"name\\\":\\\"T\\\\u00fai r\\\\u00e1c An L\\\\u00e0nh 0.5kg\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":17000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"6000\\\",\\\"price_in\\\":\\\"14000\\\",\\\"amount\\\":\\\"228\\\",\\\"sort\\\":\\\"T\\\\u00fai r\\\\u00e1c An L\\\\u00e0nh 0.5kg\\\"},\\\"discount\\\":0,\\\"tax\\\":3570,\\\"subtotal\\\":34000},\\\"b324f909eee635c7cb786af1d3cdaf6a\\\":{\\\"rowId\\\":\\\"b324f909eee635c7cb786af1d3cdaf6a\\\",\\\"id\\\":92,\\\"name\\\":\\\"T\\\\u00fai \\\\u0111\\\\u1ef1ng tp An L\\\\u00e0nh 1kg\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":49000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"10000\\\",\\\"price_in\\\":\\\"44000\\\",\\\"amount\\\":\\\"15\\\",\\\"sort\\\":\\\"T\\\\u00fai \\\\u0111\\\\u1ef1ng tp An L\\\\u00e0nh 1kg\\\"},\\\"discount\\\":0,\\\"tax\\\":10290,\\\"subtotal\\\":98000},\\\"4112248a311acdb54c5192388e52b96a\\\":{\\\"rowId\\\":\\\"4112248a311acdb54c5192388e52b96a\\\",\\\"id\\\":140,\\\"name\\\":\\\"B\\\\u00f4ng t\\\\u1ea9y trang 222m\\\",\\\"qty\\\":\\\"20\\\",\\\"price\\\":23000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"62000\\\",\\\"price_in\\\":\\\"19900\\\",\\\"amount\\\":\\\"913\\\",\\\"sort\\\":\\\"B\\\\u00f4ng t\\\\u1ea9y trang 222m\\\"},\\\"discount\\\":0,\\\"tax\\\":4830,\\\"subtotal\\\":460000}}\"', NULL, 592000, 622000, 30000, 0, 0, 78000, NULL, 0, '2021-04-08 19:52:07', '2021-04-11 21:00:13'),
(35, 30, 13, 'Thanh Hoá (gửi xe Mạnh Vi, bến xe Đuôi Cá)', '0981546239', 'lehongvan@gmail.com', '\"{\\\"1b17d13d777b5a26c039806fc9b62af9\\\":{\\\"rowId\\\":\\\"1b17d13d777b5a26c039806fc9b62af9\\\",\\\"id\\\":229,\\\"name\\\":\\\"B\\\\u1ea1t ph\\\\u1ee7 xe m\\\\u00e1y\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":28000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"60000\\\",\\\"price_in\\\":\\\"26000\\\",\\\"amount\\\":\\\"80\\\",\\\"sort\\\":\\\"B\\\\u1ea1t ph\\\\u1ee7 xe m\\\\u00e1y\\\"},\\\"discount\\\":0,\\\"tax\\\":5880,\\\"subtotal\\\":840000},\\\"2ccd750a1bb9c1bbcf29978741cd33e6\\\":{\\\"rowId\\\":\\\"2ccd750a1bb9c1bbcf29978741cd33e6\\\",\\\"id\\\":140,\\\"name\\\":\\\"B\\\\u00f4ng t\\\\u1ea9y trang 222m\\\",\\\"qty\\\":\\\"160\\\",\\\"price\\\":20500,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"96000\\\",\\\"price_in\\\":\\\"19900\\\",\\\"amount\\\":\\\"893\\\",\\\"sort\\\":\\\"B\\\\u00f4ng t\\\\u1ea9y trang 222m\\\"},\\\"discount\\\":0,\\\"tax\\\":4305,\\\"subtotal\\\":3280000},\\\"2b2c12ebb566c4bfd7e21317157922e5\\\":{\\\"rowId\\\":\\\"2b2c12ebb566c4bfd7e21317157922e5\\\",\\\"id\\\":106,\\\"name\\\":\\\"L\\\\u1ecd th\\\\u00f4ng c\\\\u1ed1ng n\\\\u1eafp xanh\\\",\\\"qty\\\":\\\"200\\\",\\\"price\\\":13000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"200000\\\",\\\"price_in\\\":\\\"12000\\\",\\\"amount\\\":\\\"300\\\",\\\"sort\\\":\\\"L\\\\u1ecd th\\\\u00f4ng c\\\\u1ed1ng n\\\\u1eafp xanh\\\"},\\\"discount\\\":0,\\\"tax\\\":2730,\\\"subtotal\\\":2600000},\\\"9552de28a65199e1b4909e2ce7ed183c\\\":{\\\"rowId\\\":\\\"9552de28a65199e1b4909e2ce7ed183c\\\",\\\"id\\\":247,\\\"name\\\":\\\"M\\\\u00f3c trong si\\\\u00eau d\\\\u00ednh\\\",\\\"qty\\\":\\\"4000\\\",\\\"price\\\":433,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"72000\\\",\\\"price_in\\\":\\\"415\\\",\\\"amount\\\":\\\"10800\\\",\\\"sort\\\":\\\"M\\\\u00f3c trong si\\\\u00eau d\\\\u00ednh\\\"},\\\"discount\\\":0,\\\"tax\\\":90.93,\\\"subtotal\\\":1732000},\\\"a31226058351f28d04f0a8a4269f6d0e\\\":{\\\"rowId\\\":\\\"a31226058351f28d04f0a8a4269f6d0e\\\",\\\"id\\\":165,\\\"name\\\":\\\"M\\\\u00f3c d\\\\u00ednh 3D\\\",\\\"qty\\\":\\\"3000\\\",\\\"price\\\":650,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"-3000\\\",\\\"price_in\\\":\\\"617\\\",\\\"amount\\\":\\\"3528\\\",\\\"sort\\\":\\\"M\\\\u00f3c d\\\\u00ednh 3D\\\"},\\\"discount\\\":0,\\\"tax\\\":136.5,\\\"subtotal\\\":1950000}}\"', NULL, 12942000, 12942000, 0, 0, 0, 497000, NULL, 0, '2021-04-08 21:25:53', '2021-04-16 19:47:58'),
(36, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"7b6c8eadd98709498b2af55dc5bdfd69\\\":{\\\"rowId\\\":\\\"7b6c8eadd98709498b2af55dc5bdfd69\\\",\\\"id\\\":42,\\\"name\\\":\\\"Set 3 b\\\\u00f3ng \\\\u0111\\\\u00e8n tr\\\\u00f2n k\\\\u00e8m \\\\u0111k\\\",\\\"qty\\\":\\\"18\\\",\\\"price\\\":58000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"-216000\\\",\\\"price_in\\\":\\\"70000\\\",\\\"amount\\\":\\\"18\\\",\\\"sort\\\":\\\"Set 3 b\\\\u00f3ng \\\\u0111\\\\u00e8n tr\\\\u00f2n k\\\\u00e8m \\\\u0111k\\\"},\\\"discount\\\":0,\\\"tax\\\":12180,\\\"subtotal\\\":1044000},\\\"7eef1e6487f007ede46ecd1a6c2f0318\\\":{\\\"rowId\\\":\\\"7eef1e6487f007ede46ecd1a6c2f0318\\\",\\\"id\\\":60,\\\"name\\\":\\\"Xay t\\\\u1ecfi tay\\\",\\\"qty\\\":\\\"4\\\",\\\"price\\\":19000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"8000\\\",\\\"price_in\\\":\\\"17000\\\",\\\"amount\\\":\\\"84\\\",\\\"sort\\\":\\\"Xay t\\\\u1ecfi tay\\\"},\\\"discount\\\":0,\\\"tax\\\":3990,\\\"subtotal\\\":76000}}\"', NULL, 1120000, 1120000, 0, 0, 0, -208000, NULL, 0, '2021-04-08 22:26:49', '2021-04-10 03:05:48'),
(37, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"05858b177209806a8deb7da14e1b4d6b\\\":{\\\"rowId\\\":\\\"05858b177209806a8deb7da14e1b4d6b\\\",\\\"id\\\":172,\\\"name\\\":\\\"X\\\\u1ea3 Comfor 580ml\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":15000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"4000\\\",\\\"price_in\\\":\\\"11000\\\",\\\"amount\\\":\\\"24\\\",\\\"sort\\\":\\\"X\\\\u1ea3 Comfor 580ml\\\"},\\\"discount\\\":0,\\\"tax\\\":3150,\\\"subtotal\\\":15000},\\\"b54e841f08a9241b7ffd0f8edb561420\\\":{\\\"rowId\\\":\\\"b54e841f08a9241b7ffd0f8edb561420\\\",\\\"id\\\":212,\\\"name\\\":\\\"M\\\\u00e1y r\\\\u1eeda m\\\\u1eb7t Forever tr\\\\u00f2n\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":35000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"2000\\\",\\\"price_in\\\":\\\"33000\\\",\\\"amount\\\":\\\"35\\\",\\\"sort\\\":\\\"M\\\\u00e1y r\\\\u1eeda m\\\\u1eb7t Forever tr\\\\u00f2n\\\"},\\\"discount\\\":0,\\\"tax\\\":7350,\\\"subtotal\\\":35000},\\\"8a1235cc52a640ed3e828c81353a9806\\\":{\\\"rowId\\\":\\\"8a1235cc52a640ed3e828c81353a9806\\\",\\\"id\\\":\\\"82\\\",\\\"name\\\":\\\"Urgo ho\\\\u1ea1t h\\\\u00ecnh\\\",\\\"qty\\\":2,\\\"price\\\":\\\"20000\\\",\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":7000,\\\"price_in\\\":\\\"16500\\\",\\\"amount\\\":\\\"29\\\",\\\"sort\\\":\\\"Urgo ho\\\\u1ea1t h\\\\u00ecnh\\\"},\\\"discount\\\":0,\\\"tax\\\":4200,\\\"subtotal\\\":40000},\\\"a2173e389bb95fad010484a8e1a05412\\\":{\\\"rowId\\\":\\\"a2173e389bb95fad010484a8e1a05412\\\",\\\"id\\\":100,\\\"name\\\":\\\"Ch\\\\u1ed1ng rung m\\\\u00e1y gi\\\\u1eb7t (set 4c)\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":20000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"2000\\\",\\\"price_in\\\":\\\"18000\\\",\\\"amount\\\":\\\"79\\\",\\\"sort\\\":\\\"Ch\\\\u1ed1ng rung m\\\\u00e1y gi\\\\u1eb7t (set 4c)\\\"},\\\"discount\\\":0,\\\"tax\\\":4200,\\\"subtotal\\\":20000}}\"', NULL, 110000, 110000, 0, 0, 0, 15000, NULL, 0, '2021-04-09 03:23:02', '2021-04-10 03:05:28'),
(38, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"d23b217847fc63ab0548d3d0e590f8fa\\\":{\\\"rowId\\\":\\\"d23b217847fc63ab0548d3d0e590f8fa\\\",\\\"id\\\":84,\\\"name\\\":\\\"Kh\\\\u1ea9u trang 3D Naru Kids\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":\\\"25000\\\",\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"0\\\",\\\"price_in\\\":\\\"25000\\\",\\\"amount\\\":\\\"66\\\",\\\"sort\\\":\\\"Kh\\\\u1ea9u trang 3D Naru Kids\\\"},\\\"discount\\\":0,\\\"tax\\\":5250,\\\"subtotal\\\":250000}}\"', 'A Hưng OTC', 250000, 250000, 0, 0, 0, 0, NULL, 0, '2021-04-10 03:05:14', '2021-05-03 02:21:50'),
(39, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"7bd69d118301a9aa5bd3ce91576c493a\\\":{\\\"rowId\\\":\\\"7bd69d118301a9aa5bd3ce91576c493a\\\",\\\"id\\\":100,\\\"name\\\":\\\"Ch\\\\u1ed1ng rung m\\\\u00e1y gi\\\\u1eb7t (set 4c)\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":20000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"2000\\\",\\\"price_in\\\":\\\"18000\\\",\\\"amount\\\":\\\"78\\\",\\\"sort\\\":\\\"Ch\\\\u1ed1ng rung m\\\\u00e1y gi\\\\u1eb7t (set 4c)\\\"},\\\"discount\\\":0,\\\"tax\\\":4200,\\\"subtotal\\\":20000}}\"', NULL, 20000, 20000, 0, 0, 0, 2000, NULL, 0, '2021-04-11 01:28:10', '2021-04-11 01:28:10'),
(40, 41, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'nhunggacon@gmail.com', '\"{\\\"c127f7a484c46ef9b69e841867db6e2c\\\":{\\\"rowId\\\":\\\"c127f7a484c46ef9b69e841867db6e2c\\\",\\\"id\\\":255,\\\"name\\\":\\\"B\\\\u00f3ng \\\\u0111i\\\\u1ec7n NLMT 16.5*9\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":52000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"20000\\\",\\\"price_in\\\":\\\"50000\\\",\\\"amount\\\":\\\"58\\\",\\\"sort\\\":\\\"B\\\\u00f3ng \\\\u0111i\\\\u1ec7n NLMT 16.5*9\\\"},\\\"discount\\\":0,\\\"tax\\\":10920,\\\"subtotal\\\":520000}}\"', NULL, 520000, 0, 0, 0, 520000, 20000, NULL, 0, '2021-04-11 04:19:41', '2021-04-11 04:19:41'),
(41, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"a73d341f44d1bd46e5c4a0cfbf206d1e\\\":{\\\"rowId\\\":\\\"a73d341f44d1bd46e5c4a0cfbf206d1e\\\",\\\"id\\\":203,\\\"name\\\":\\\"C\\\\u1ed1c g\\\\u1ea5u \\\\u0111a n\\\\u0103ng\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":30000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"21500\\\",\\\"price_in\\\":\\\"8500\\\",\\\"amount\\\":\\\"161\\\",\\\"sort\\\":1618311138},\\\"discount\\\":0,\\\"tax\\\":6300,\\\"subtotal\\\":30000},\\\"1c7e7369d5d73e50765e5e4355e3f7fb\\\":{\\\"rowId\\\":\\\"1c7e7369d5d73e50765e5e4355e3f7fb\\\",\\\"id\\\":254,\\\"name\\\":\\\"M\\\\u00e1y xay c\\\\u1ea7m tay Honguo\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":89000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3000\\\",\\\"price_in\\\":\\\"86000\\\",\\\"amount\\\":\\\"36\\\",\\\"sort\\\":1618311149},\\\"discount\\\":0,\\\"tax\\\":18690,\\\"subtotal\\\":89000}}\"', 'Shopee', 119000, 119000, 0, 0, 0, 24500, NULL, 0, '2021-04-13 03:52:40', '2021-04-24 20:29:55'),
(42, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"d9ef6c0abcdbde8a81804d34599c30d2\\\":{\\\"rowId\\\":\\\"d9ef6c0abcdbde8a81804d34599c30d2\\\",\\\"id\\\":60,\\\"name\\\":\\\"Xay t\\\\u1ecfi tay\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":20000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3000\\\",\\\"price_in\\\":\\\"17000\\\",\\\"amount\\\":\\\"80\\\",\\\"sort\\\":1618460585},\\\"discount\\\":0,\\\"tax\\\":4200,\\\"subtotal\\\":20000}}\"', NULL, 20000, 20000, 0, 0, 0, 3000, NULL, 0, '2021-04-14 21:23:12', '2021-04-14 21:23:12'),
(43, 30, 13, 'Thanh Hoá (gửi xe Mạnh Vi, bến xe Đuôi Cá)', '0981546239', 'lehongvan@gmail.com', '\"{\\\"78811aecc422468e9302fae72cbc8c35\\\":{\\\"rowId\\\":\\\"78811aecc422468e9302fae72cbc8c35\\\",\\\"id\\\":247,\\\"name\\\":\\\"M\\\\u00f3c trong si\\\\u00eau d\\\\u00ednh\\\",\\\"qty\\\":\\\"4000\\\",\\\"price\\\":433,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"72000\\\",\\\"price_in\\\":\\\"415\\\",\\\"amount\\\":\\\"10800\\\",\\\"sort\\\":1618477537},\\\"discount\\\":0,\\\"tax\\\":90.93,\\\"subtotal\\\":1732000},\\\"6ece9175ce81f1b8485a2da4cfbe6eb4\\\":{\\\"rowId\\\":\\\"6ece9175ce81f1b8485a2da4cfbe6eb4\\\",\\\"id\\\":106,\\\"name\\\":\\\"L\\\\u1ecd th\\\\u00f4ng c\\\\u1ed1ng n\\\\u1eafp xanh\\\",\\\"qty\\\":\\\"100\\\",\\\"price\\\":13000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"100000\\\",\\\"price_in\\\":\\\"12000\\\",\\\"amount\\\":\\\"100\\\",\\\"sort\\\":1618477550},\\\"discount\\\":0,\\\"tax\\\":2730,\\\"subtotal\\\":1300000},\\\"5dabfcdc3244b08b95652e7c57c9aed0\\\":{\\\"rowId\\\":\\\"5dabfcdc3244b08b95652e7c57c9aed0\\\",\\\"id\\\":257,\\\"name\\\":\\\"Set 3 t\\\\u00fai \\\\u0111\\\\u1ef1ng m\\\\u1ef9 ph\\\\u1ea9m Givenchy\\\",\\\"qty\\\":\\\"50\\\",\\\"price\\\":52000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"100000\\\",\\\"price_in\\\":\\\"50000\\\",\\\"amount\\\":\\\"50\\\",\\\"sort\\\":1618477569},\\\"discount\\\":0,\\\"tax\\\":10920,\\\"subtotal\\\":2600000},\\\"d9b370554910b8f028dc629af6638a70\\\":{\\\"rowId\\\":\\\"d9b370554910b8f028dc629af6638a70\\\",\\\"id\\\":256,\\\"name\\\":\\\"V\\\\u1eaft cam l\\\\u00faa m\\\\u1ea1ch Ecoco\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":61000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"90000\\\",\\\"price_in\\\":\\\"58000\\\",\\\"amount\\\":\\\"30\\\",\\\"sort\\\":1618477579},\\\"discount\\\":0,\\\"tax\\\":12810,\\\"subtotal\\\":1830000}}\"', NULL, 7462000, 7460000, 0, 2000, 0, 360000, NULL, 0, '2021-04-17 19:29:38', '2021-04-18 19:25:28'),
(44, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"ab90e87ba31a471e3623237029ae99aa\\\":{\\\"rowId\\\":\\\"ab90e87ba31a471e3623237029ae99aa\\\",\\\"id\\\":146,\\\"name\\\":\\\"Th\\\\u1ea3m yoga 2 l\\\\u1edbp 6 li\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":75000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"8000\\\",\\\"price_in\\\":\\\"67000\\\",\\\"amount\\\":\\\"56\\\",\\\"sort\\\":1618712994},\\\"discount\\\":0,\\\"tax\\\":15750,\\\"subtotal\\\":75000},\\\"41ad3a2c9eee13597d16c8325c187856\\\":{\\\"rowId\\\":\\\"41ad3a2c9eee13597d16c8325c187856\\\",\\\"id\\\":225,\\\"name\\\":\\\"B\\\\u1ed9 ch\\\\u1ed5i lau nh\\\\u00e0 t\\\\u00edm Chefman size to\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":140000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"15000\\\",\\\"price_in\\\":\\\"125000\\\",\\\"amount\\\":\\\"7\\\",\\\"sort\\\":1618713007},\\\"discount\\\":0,\\\"tax\\\":29400,\\\"subtotal\\\":140000}}\"', NULL, 260000, 260000, 0, 0, 0, 28000, NULL, 0, '2021-04-17 19:30:19', '2021-04-17 21:46:54'),
(46, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"02906828ba38b450a49343e0f2703160\\\":{\\\"rowId\\\":\\\"02906828ba38b450a49343e0f2703160\\\",\\\"id\\\":134,\\\"name\\\":\\\"T\\\\u00fai tr\\\\u1ed1ng du l\\\\u1ecbch Pink\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":105000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"-94895\\\",\\\"price_in\\\":\\\"95000\\\",\\\"amount\\\":\\\"8\\\",\\\"sort\\\":1618717139},\\\"discount\\\":0,\\\"tax\\\":22050,\\\"subtotal\\\":105000},\\\"e7ae9cd22c714b5b811dbbc902495ce5\\\":{\\\"rowId\\\":\\\"e7ae9cd22c714b5b811dbbc902495ce5\\\",\\\"id\\\":135,\\\"name\\\":\\\"T\\\\u00fai gi\\\\u1eef nhi\\\\u1ec7t h\\\\u00ecnh c\\\\u00e1\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":25000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"4500\\\",\\\"price_in\\\":\\\"20500\\\",\\\"amount\\\":\\\"36\\\",\\\"sort\\\":1618717156},\\\"discount\\\":0,\\\"tax\\\":5250,\\\"subtotal\\\":25000},\\\"68a50f43c66d29e941be55a0a2da84aa\\\":{\\\"rowId\\\":\\\"68a50f43c66d29e941be55a0a2da84aa\\\",\\\"id\\\":251,\\\"name\\\":\\\"H\\\\u1ed9p \\\\u0111\\\\u1ef1ng t\\\\u00fai nilon d\\\\u00e1n t\\\\u01b0\\\\u1eddng\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":29000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3000\\\",\\\"price_in\\\":\\\"26000\\\",\\\"amount\\\":\\\"57\\\",\\\"sort\\\":1618717169},\\\"discount\\\":0,\\\"tax\\\":6090,\\\"subtotal\\\":29000},\\\"171c9f499140a0d9fab6b1f9e5b2f28c\\\":{\\\"rowId\\\":\\\"171c9f499140a0d9fab6b1f9e5b2f28c\\\",\\\"id\\\":163,\\\"name\\\":\\\"H\\\\u1ed9p bu\\\\u1ed9c t\\\\u00f3c th\\\\u1ecf h\\\\u1ed3ng\\\",\\\"qty\\\":\\\"3\\\",\\\"price\\\":35000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"12000\\\",\\\"price_in\\\":\\\"31000\\\",\\\"amount\\\":\\\"27\\\",\\\"sort\\\":1618717191},\\\"discount\\\":0,\\\"tax\\\":7350,\\\"subtotal\\\":105000},\\\"9db36b633a000c47e8144eab6d9c17e6\\\":{\\\"rowId\\\":\\\"9db36b633a000c47e8144eab6d9c17e6\\\",\\\"id\\\":84,\\\"name\\\":\\\"Kh\\\\u1ea9u trang 3D Naru Kids\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":28000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"6000\\\",\\\"price_in\\\":\\\"25000\\\",\\\"amount\\\":\\\"56\\\",\\\"sort\\\":1618717204},\\\"discount\\\":0,\\\"tax\\\":5880,\\\"subtotal\\\":56000},\\\"b2bfd926465296c9361cca9ccdbec0a5\\\":{\\\"rowId\\\":\\\"b2bfd926465296c9361cca9ccdbec0a5\\\",\\\"id\\\":258,\\\"name\\\":\\\"B\\\\u1ed9 ch\\\\u1ed5i lau nh\\\\u00e0 t\\\\u1ef1 v\\\\u1eaft lo\\\\u1ea1i to\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":120000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"12000\\\",\\\"price_in\\\":\\\"108000\\\",\\\"amount\\\":\\\"20\\\",\\\"sort\\\":1618717334},\\\"discount\\\":0,\\\"tax\\\":25200,\\\"subtotal\\\":120000},\\\"057e2637b9a675286cfe127d4d9c9f57\\\":{\\\"rowId\\\":\\\"057e2637b9a675286cfe127d4d9c9f57\\\",\\\"id\\\":236,\\\"name\\\":\\\"M\\\\u00f3c 9 l\\\\u1ed7\\\",\\\"qty\\\":\\\"3\\\",\\\"price\\\":6000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"6600\\\",\\\"price_in\\\":\\\"3800\\\",\\\"amount\\\":\\\"1490\\\",\\\"sort\\\":1618717361},\\\"discount\\\":0,\\\"tax\\\":1260,\\\"subtotal\\\":18000}}\"', 'Chung cư x2 toà B, ngõ 18 đường Nguyễn Cơ Thạch, Mỹ đình, Nam Từ Liêm, HN\r\nTel 0389942314 Huyền', 458000, 493000, 35000, 0, 0, 54100, NULL, 0, '2021-04-17 21:08:55', '2021-04-18 20:50:30'),
(47, 42, 13, '214 đường DX34 tổ 9 khu 1 Phường Phú Mỹ, TP Thủ Dầu, Một Bình Dương', '0976067805', 'ngocthudoan@gmail.com', '\"{\\\"c84d92d6cd750d252618261bff1f34a9\\\":{\\\"rowId\\\":\\\"c84d92d6cd750d252618261bff1f34a9\\\",\\\"id\\\":146,\\\"name\\\":\\\"Th\\\\u1ea3m yoga 2 l\\\\u1edbp 6 li\\\",\\\"qty\\\":\\\"56\\\",\\\"price\\\":72000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"280000\\\",\\\"price_in\\\":\\\"67000\\\",\\\"amount\\\":\\\"56\\\",\\\"sort\\\":1618750318},\\\"discount\\\":0,\\\"tax\\\":15120,\\\"subtotal\\\":4032000}}\"', NULL, 4032000, 4030000, 0, 2000, 0, 278000, NULL, 0, '2021-04-18 19:24:57', '2021-04-18 19:25:51'),
(48, 39, 13, 'Số 44 ngách 14 ngõ 121 Chùa Láng, Hà Nội', '0967716184', 'phuonganh@gmail.com', '\"{\\\"2cd5962bb0efa56a8a9f92a0deed018d\\\":{\\\"rowId\\\":\\\"2cd5962bb0efa56a8a9f92a0deed018d\\\",\\\"id\\\":259,\\\"name\\\":\\\"Th\\\\u1edbt inox Su304\\\",\\\"qty\\\":\\\"55\\\",\\\"price\\\":54000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"110000\\\",\\\"price_in\\\":\\\"52000\\\",\\\"amount\\\":\\\"55\\\",\\\"sort\\\":1618801357},\\\"discount\\\":0,\\\"tax\\\":11340,\\\"subtotal\\\":2970000},\\\"06988fff5ab5b95defe26d53804a298c\\\":{\\\"rowId\\\":\\\"06988fff5ab5b95defe26d53804a298c\\\",\\\"id\\\":235,\\\"name\\\":\\\"B\\\\u00e0n l\\\\u00e0 h\\\\u01a1i n\\\\u01b0\\\\u1edbc Sokany 3060\\\",\\\"qty\\\":\\\"20\\\",\\\"price\\\":253000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"120000\\\",\\\"price_in\\\":\\\"247000\\\",\\\"amount\\\":\\\"20\\\",\\\"sort\\\":1618801368},\\\"discount\\\":0,\\\"tax\\\":53130,\\\"subtotal\\\":5060000},\\\"385aa9c7458a38cd3a2310e6918f2d70\\\":{\\\"rowId\\\":\\\"385aa9c7458a38cd3a2310e6918f2d70\\\",\\\"id\\\":238,\\\"name\\\":\\\"M\\\\u00e1y xay Osaka h\\\\u1ed3ng n\\\\u1eafp n\\\\u00e2u\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":113000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"30000\\\",\\\"price_in\\\":\\\"108000\\\",\\\"amount\\\":\\\"89\\\",\\\"sort\\\":1618801390},\\\"discount\\\":0,\\\"tax\\\":23730,\\\"subtotal\\\":3390000}}\"', NULL, 11420000, 11420000, 0, 0, 0, 260000, NULL, 0, '2021-04-18 20:49:50', '2021-04-18 20:49:50'),
(49, 43, 13, 'Tòa CT2, Lô A10, KĐT Nam Trung Yên, đường Nguyễn Chánh, Yên Hòa, Cầu Giấy, HN', '0986376118', 'buiduong@gmail.com', '\"{\\\"a59df142c9d3906421fda90e1e1ed074\\\":{\\\"rowId\\\":\\\"a59df142c9d3906421fda90e1e1ed074\\\",\\\"id\\\":258,\\\"name\\\":\\\"B\\\\u1ed9 ch\\\\u1ed5i lau nh\\\\u00e0 t\\\\u1ef1 v\\\\u1eaft lo\\\\u1ea1i to\\\",\\\"qty\\\":\\\"20\\\",\\\"price\\\":115000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"140000\\\",\\\"price_in\\\":\\\"108000\\\",\\\"amount\\\":\\\"39\\\",\\\"sort\\\":1618804417},\\\"discount\\\":0,\\\"tax\\\":24150,\\\"subtotal\\\":2300000}}\"', NULL, 2300000, 2330000, 30000, 0, 0, 140000, NULL, 0, '2021-04-18 20:57:23', '2021-04-20 01:21:20'),
(50, 30, 13, 'Thanh Hoá (gửi xe Mạnh Vi, bến xe Đuôi Cá)', '0981546239', 'lehongvan@gmail.com', '\"{\\\"1cb88f347d22f25b28fc4164ef114090\\\":{\\\"rowId\\\":\\\"1cb88f347d22f25b28fc4164ef114090\\\",\\\"id\\\":261,\\\"name\\\":\\\"T\\\\u1ea1p d\\\\u1ec1 th\\\\u1ecf\\\",\\\"qty\\\":\\\"300\\\",\\\"price\\\":19000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"150000\\\",\\\"price_in\\\":\\\"18500\\\",\\\"amount\\\":\\\"300\\\",\\\"sort\\\":1618907302},\\\"discount\\\":0,\\\"tax\\\":3990,\\\"subtotal\\\":5700000},\\\"82c020394c5930177ae6e21652a3874b\\\":{\\\"rowId\\\":\\\"82c020394c5930177ae6e21652a3874b\\\",\\\"id\\\":262,\\\"name\\\":\\\"V\\\\u1ec9 h\\\\u1ea5p x\\\\u00f4i x\\\\u00f2e inox\\\",\\\"qty\\\":\\\"120\\\",\\\"price\\\":\\\"26000\\\",\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"180000\\\",\\\"price_in\\\":\\\"24500\\\",\\\"amount\\\":\\\"120\\\",\\\"sort\\\":1618907344},\\\"discount\\\":0,\\\"tax\\\":5460,\\\"subtotal\\\":3120000},\\\"c97e68d4bb8c0a9a044a90816a230f37\\\":{\\\"rowId\\\":\\\"c97e68d4bb8c0a9a044a90816a230f37\\\",\\\"id\\\":242,\\\"name\\\":\\\"Kh\\\\u0103n lau zigzag 2 m\\\\u1eb7t (set 10c\\\\\\/t\\\\u00fai)\\\",\\\"qty\\\":\\\"200\\\",\\\"price\\\":11650,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"130000\\\",\\\"price_in\\\":\\\"11000\\\",\\\"amount\\\":\\\"748\\\",\\\"sort\\\":1618907377},\\\"discount\\\":0,\\\"tax\\\":2446.5,\\\"subtotal\\\":2330000}}\"', NULL, 11150000, 11150000, 0, 0, 0, 460000, NULL, 0, '2021-04-20 01:32:00', '2021-04-22 23:23:57'),
(51, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"7fcf5569d906593ebfd844fc3a9f3fbf\\\":{\\\"rowId\\\":\\\"7fcf5569d906593ebfd844fc3a9f3fbf\\\",\\\"id\\\":254,\\\"name\\\":\\\"M\\\\u00e1y xay c\\\\u1ea7m tay Honguo\\\",\\\"qty\\\":\\\"48\\\",\\\"price\\\":86000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"0\\\",\\\"price_in\\\":\\\"82000\\\",\\\"amount\\\":\\\"83\\\",\\\"sort\\\":1618907600},\\\"discount\\\":0,\\\"tax\\\":18060,\\\"subtotal\\\":4128000}}\"', NULL, 4128000, 4158000, 30000, 0, 0, 52000, NULL, 0, '2021-04-20 01:34:32', '2021-04-22 23:23:36'),
(52, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"5c0aa44f7f9f1c5843a909fb750dbff5\\\":{\\\"rowId\\\":\\\"5c0aa44f7f9f1c5843a909fb750dbff5\\\",\\\"id\\\":203,\\\"name\\\":\\\"C\\\\u1ed1c g\\\\u1ea5u \\\\u0111a n\\\\u0103ng\\\",\\\"qty\\\":\\\"50\\\",\\\"price\\\":10000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"-375000\\\",\\\"price_in\\\":\\\"8500\\\",\\\"amount\\\":\\\"160\\\",\\\"sort\\\":1619158773},\\\"discount\\\":0,\\\"tax\\\":2100,\\\"subtotal\\\":500000},\\\"58c880eaabd17525722a7af24a9bf5bd\\\":{\\\"rowId\\\":\\\"58c880eaabd17525722a7af24a9bf5bd\\\",\\\"id\\\":60,\\\"name\\\":\\\"Xay t\\\\u1ecfi tay\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":19000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"20000\\\",\\\"price_in\\\":\\\"17000\\\",\\\"amount\\\":\\\"79\\\",\\\"sort\\\":1619158786},\\\"discount\\\":0,\\\"tax\\\":3990,\\\"subtotal\\\":190000},\\\"218b9e6e5ee60fe6748d78c6d301242c\\\":{\\\"rowId\\\":\\\"218b9e6e5ee60fe6748d78c6d301242c\\\",\\\"id\\\":83,\\\"name\\\":\\\"Urgo 100 m\\\\u00f3n\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":15000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"5000\\\",\\\"price_in\\\":\\\"14500\\\",\\\"amount\\\":\\\"88\\\",\\\"sort\\\":1619158802},\\\"discount\\\":0,\\\"tax\\\":3150,\\\"subtotal\\\":150000},\\\"9a1584bb471756add2ada6015f67d900\\\":{\\\"rowId\\\":\\\"9a1584bb471756add2ada6015f67d900\\\",\\\"id\\\":76,\\\"name\\\":\\\"M\\\\u00e1y phun s\\\\u01b0\\\\u01a1ng mini\\\",\\\"qty\\\":\\\"5\\\",\\\"price\\\":23000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"10000\\\",\\\"price_in\\\":\\\"21000\\\",\\\"amount\\\":\\\"193\\\",\\\"sort\\\":1619158833},\\\"discount\\\":0,\\\"tax\\\":4830,\\\"subtotal\\\":115000}}\"', 'Qua lấy', 955000, 955000, 0, 0, 0, 110000, NULL, 0, '2021-04-22 23:22:19', '2021-04-24 20:29:24'),
(53, 44, 13, 'Tân An - Tri Hải - Ninh Hải - Ninh Thuận', '0906304551', 'aikhanh@gmail.com', '\"{\\\"2e9917c02f79ea8e08b2cfa9f4ffa125\\\":{\\\"rowId\\\":\\\"2e9917c02f79ea8e08b2cfa9f4ffa125\\\",\\\"id\\\":35,\\\"name\\\":\\\"K\\\\u1eb9p ga gi\\\\u01b0\\\\u1eddng (set 4)\\\",\\\"qty\\\":\\\"3\\\",\\\"price\\\":\\\"42000\\\",\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"10500\\\",\\\"price_in\\\":\\\"38500\\\",\\\"amount\\\":\\\"35\\\",\\\"sort\\\":1619318955},\\\"discount\\\":0,\\\"tax\\\":8820,\\\"subtotal\\\":126000},\\\"27400b829b7349a536c6bc41c6529d36\\\":{\\\"rowId\\\":\\\"27400b829b7349a536c6bc41c6529d36\\\",\\\"id\\\":246,\\\"name\\\":\\\"B\\\\u00ecnh l\\\\u1ecdc d\\\\u1ea7u inox\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":48000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"8000\\\",\\\"price_in\\\":\\\"44000\\\",\\\"amount\\\":\\\"60\\\",\\\"sort\\\":1619318527},\\\"discount\\\":0,\\\"tax\\\":10080,\\\"subtotal\\\":96000},\\\"6e8c856aecbb76cf45cbd3a46aec579e\\\":{\\\"rowId\\\":\\\"6e8c856aecbb76cf45cbd3a46aec579e\\\",\\\"id\\\":27,\\\"name\\\":\\\"Ch\\\\u00e0 g\\\\u00f3t ch\\\\u00e2n h\\\\u1ed9p nh\\\\u00f4m\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":43000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"5000\\\",\\\"price_in\\\":\\\"38000\\\",\\\"amount\\\":\\\"8\\\",\\\"sort\\\":1619318547},\\\"discount\\\":0,\\\"tax\\\":9030,\\\"subtotal\\\":43000},\\\"180298f161d5aba83f75062b3bcb84b6\\\":{\\\"rowId\\\":\\\"180298f161d5aba83f75062b3bcb84b6\\\",\\\"id\\\":78,\\\"name\\\":\\\"N\\\\u1ea1o s\\\\u1ee3i 3in1 v\\\\u1ec9\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":14000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"4000\\\",\\\"price_in\\\":\\\"12000\\\",\\\"amount\\\":\\\"26\\\",\\\"sort\\\":1619318560},\\\"discount\\\":0,\\\"tax\\\":2940,\\\"subtotal\\\":28000},\\\"5b56edf6283a89f135a7ba3bba61b7ab\\\":{\\\"rowId\\\":\\\"5b56edf6283a89f135a7ba3bba61b7ab\\\",\\\"id\\\":67,\\\"name\\\":\\\"Th\\\\u00f9ng r\\\\u00e1c g\\\\u1ea5p g\\\\u1ecdn size to\\\",\\\"qty\\\":\\\"3\\\",\\\"price\\\":46000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"10500\\\",\\\"price_in\\\":\\\"42500\\\",\\\"amount\\\":\\\"19\\\",\\\"sort\\\":1619318599},\\\"discount\\\":0,\\\"tax\\\":9660,\\\"subtotal\\\":138000},\\\"ed2fb71b81b97dc8a811ecd22e5547c5\\\":{\\\"rowId\\\":\\\"ed2fb71b81b97dc8a811ecd22e5547c5\\\",\\\"id\\\":103,\\\"name\\\":\\\"Ca ch\\\\u00e1o inox \\\\u0111\\\\u1ecf 16cm\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":24000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"6000\\\",\\\"price_in\\\":\\\"21000\\\",\\\"amount\\\":\\\"71\\\",\\\"sort\\\":1619318622},\\\"discount\\\":0,\\\"tax\\\":5040,\\\"subtotal\\\":48000},\\\"e295d38bbde4918c9e8f7f38b940e0b9\\\":{\\\"rowId\\\":\\\"e295d38bbde4918c9e8f7f38b940e0b9\\\",\\\"id\\\":56,\\\"name\\\":\\\"T\\\\u00fai treo \\\\u0111\\\\u1ed3 l\\\\u00f3t\\\",\\\"qty\\\":\\\"3\\\",\\\"price\\\":32000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"10500\\\",\\\"price_in\\\":\\\"28500\\\",\\\"amount\\\":\\\"34\\\",\\\"sort\\\":1619318635},\\\"discount\\\":0,\\\"tax\\\":6720,\\\"subtotal\\\":96000},\\\"297a66f7332a92692439d9b277cb64ce\\\":{\\\"rowId\\\":\\\"297a66f7332a92692439d9b277cb64ce\\\",\\\"id\\\":233,\\\"name\\\":\\\"C\\\\u00e1n ch\\\\u1ed5i t\\\\u1ef1 v\\\\u1eaft th\\\\u00f4ng minh\\\",\\\"qty\\\":\\\"2\\\",\\\"price\\\":42000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"8000\\\",\\\"price_in\\\":\\\"38000\\\",\\\"amount\\\":\\\"75\\\",\\\"sort\\\":1619318652},\\\"discount\\\":0,\\\"tax\\\":8820,\\\"subtotal\\\":84000},\\\"627642e3f80a866335d2ad7c345fb200\\\":{\\\"rowId\\\":\\\"627642e3f80a866335d2ad7c345fb200\\\",\\\"id\\\":251,\\\"name\\\":\\\"H\\\\u1ed9p \\\\u0111\\\\u1ef1ng t\\\\u00fai nilon d\\\\u00e1n t\\\\u01b0\\\\u1eddng\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":29000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3000\\\",\\\"price_in\\\":\\\"26000\\\",\\\"amount\\\":\\\"56\\\",\\\"sort\\\":1619318664},\\\"discount\\\":0,\\\"tax\\\":6090,\\\"subtotal\\\":29000}}\"', NULL, 903000, 903000, 0, 0, 0, 93084, NULL, 0, '2021-04-24 19:50:26', '2021-05-01 21:02:23'),
(54, 39, 13, 'Số 44 ngách 14 ngõ 121 Chùa Láng, Hà Nội', '0967716184', 'phuonganh@gmail.com', '\"{\\\"23edb4ee9a80c0a9fb6fa2e721340393\\\":{\\\"rowId\\\":\\\"23edb4ee9a80c0a9fb6fa2e721340393\\\",\\\"id\\\":238,\\\"name\\\":\\\"M\\\\u00e1y xay Osaka h\\\\u1ed3ng n\\\\u1eafp n\\\\u00e2u\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":113000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"34000\\\",\\\"price_in\\\":\\\"108000\\\",\\\"amount\\\":\\\"59\\\",\\\"sort\\\":1619410723},\\\"discount\\\":0,\\\"tax\\\":23730,\\\"subtotal\\\":3390000}}\"', NULL, 3390000, 3420000, 30000, 0, 0, 34000, NULL, 0, '2021-04-26 00:19:14', '2021-04-26 00:19:14'),
(55, 30, 13, 'Thanh Hoá (gửi xe Mạnh Vi, bến xe Đuôi Cá)', '0981546239', 'lehongvan@gmail.com', '\"{\\\"0f77c6b7d6d0917604d775fec369256b\\\":{\\\"rowId\\\":\\\"0f77c6b7d6d0917604d775fec369256b\\\",\\\"id\\\":265,\\\"name\\\":\\\"B\\\\u1ed9 \\\\u0111\\\\u1ed3 ch\\\\u01a1i gh\\\\u00e9p g\\\\u1ed7\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":89000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"120000\\\",\\\"price_in\\\":\\\"85000\\\",\\\"amount\\\":\\\"30\\\",\\\"sort\\\":1619421919},\\\"discount\\\":0,\\\"tax\\\":18690,\\\"subtotal\\\":2670000},\\\"91e20daaad7985ec36e3b46fc8c3daeb\\\":{\\\"rowId\\\":\\\"91e20daaad7985ec36e3b46fc8c3daeb\\\",\\\"id\\\":264,\\\"name\\\":\\\"B\\\\u1ecdc m\\\\u00e1y gi\\\\u1eb7t c\\\\u1eeda tr\\\\u01b0\\\\u1edbc lo\\\\u1ea1i d\\\\u00e0y\\\",\\\"qty\\\":\\\"50\\\",\\\"price\\\":39000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"100000\\\",\\\"price_in\\\":\\\"37000\\\",\\\"amount\\\":\\\"50\\\",\\\"sort\\\":1619421928},\\\"discount\\\":0,\\\"tax\\\":8190,\\\"subtotal\\\":1950000},\\\"e7336c07f2da9e5db4e6d9c0a7e07ea7\\\":{\\\"rowId\\\":\\\"e7336c07f2da9e5db4e6d9c0a7e07ea7\\\",\\\"id\\\":263,\\\"name\\\":\\\"B\\\\u1ecdc m\\\\u00e1y gi\\\\u1eb7t c\\\\u1eeda tr\\\\u00ean lo\\\\u1ea1i d\\\\u00e0y\\\",\\\"qty\\\":\\\"50\\\",\\\"price\\\":39000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"100000\\\",\\\"price_in\\\":\\\"37000\\\",\\\"amount\\\":\\\"50\\\",\\\"sort\\\":1619421941},\\\"discount\\\":0,\\\"tax\\\":8190,\\\"subtotal\\\":1950000},\\\"0ab92fa4e7f8bba04c5efe75fd72ab36\\\":{\\\"rowId\\\":\\\"0ab92fa4e7f8bba04c5efe75fd72ab36\\\",\\\"id\\\":234,\\\"name\\\":\\\"M\\\\u00e1y xay d\\\\u00e2u Meet Juice\\\",\\\"qty\\\":\\\"25\\\",\\\"price\\\":195000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"75000\\\",\\\"price_in\\\":\\\"192000\\\",\\\"amount\\\":\\\"25\\\",\\\"sort\\\":1619421954},\\\"discount\\\":0,\\\"tax\\\":40950,\\\"subtotal\\\":4875000}}\"', NULL, 9495000, 9495000, 0, 0, 0, 295000, NULL, 0, '2021-04-26 00:27:13', '2021-05-01 21:01:40'),
(56, 36, 13, 'Qua lấy', '0961809523', 'chaobuoisang@gmail.com', '\"{\\\"0a9f1e2a68c152817526cc24b082facd\\\":{\\\"rowId\\\":\\\"0a9f1e2a68c152817526cc24b082facd\\\",\\\"id\\\":165,\\\"name\\\":\\\"M\\\\u00f3c d\\\\u00ednh 3D\\\",\\\"qty\\\":\\\"400\\\",\\\"price\\\":800,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"73200\\\",\\\"price_in\\\":\\\"617\\\",\\\"amount\\\":\\\"528\\\",\\\"sort\\\":1619435132},\\\"discount\\\":0,\\\"tax\\\":168,\\\"subtotal\\\":320000}}\"', NULL, 320000, 320000, 0, 0, 0, 73200, NULL, 0, '2021-04-26 04:07:04', '2021-04-26 04:07:04'),
(57, 36, 13, 'Qua lấy', '0961809523', 'chaobuoisang@gmail.com', '\"{\\\"4d5bb0cf36ce2097818b9b461b40457d\\\":{\\\"rowId\\\":\\\"4d5bb0cf36ce2097818b9b461b40457d\\\",\\\"id\\\":216,\\\"name\\\":\\\"Gi\\\\u00e1 treo kh\\\\u0103n nh\\\\u00e0 t\\\\u1eafm lo\\\\u1ea1i d\\\\u00e0i\\\",\\\"qty\\\":\\\"7\\\",\\\"price\\\":18000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"17500\\\",\\\"price_in\\\":\\\"15500\\\",\\\"amount\\\":\\\"30\\\",\\\"sort\\\":1619927965},\\\"discount\\\":0,\\\"tax\\\":3780,\\\"subtotal\\\":126000}}\"', NULL, 126000, 126000, 0, 0, 0, 17500, NULL, 0, '2021-05-01 20:59:32', '2021-05-01 20:59:32'),
(58, 36, 13, 'Qua lấy', '0961809523', 'chaobuoisang@gmail.com', '\"{\\\"bfbc7db85513e0418c185171cddfb9bf\\\":{\\\"rowId\\\":\\\"bfbc7db85513e0418c185171cddfb9bf\\\",\\\"id\\\":165,\\\"name\\\":\\\"M\\\\u00f3c d\\\\u00ednh 3D\\\",\\\"qty\\\":\\\"100\\\",\\\"price\\\":800,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"18300\\\",\\\"price_in\\\":\\\"617\\\",\\\"amount\\\":\\\"128\\\",\\\"sort\\\":1619927997},\\\"discount\\\":0,\\\"tax\\\":168,\\\"subtotal\\\":80000}}\"', NULL, 80000, 80000, 0, 0, 0, 18300, NULL, 0, '2021-05-01 21:00:02', '2021-05-01 21:00:02'),
(59, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"cf6116fc1f7f2cc74b5110ebe452483b\\\":{\\\"rowId\\\":\\\"cf6116fc1f7f2cc74b5110ebe452483b\\\",\\\"id\\\":230,\\\"name\\\":\\\"\\\\u0110\\\\u00e8n b\\\\u1eaft mu\\\\u1ed1i \\\\u00e1nh s\\\\u00e1ng xanh\\\",\\\"qty\\\":\\\"10\\\",\\\"price\\\":30000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"15000\\\",\\\"price_in\\\":\\\"28500\\\",\\\"amount\\\":\\\"40\\\",\\\"sort\\\":1619935054},\\\"discount\\\":0,\\\"tax\\\":6300,\\\"subtotal\\\":300000}}\"', NULL, 300000, 300000, 0, 0, 0, 15000, NULL, 0, '2021-05-01 22:57:41', '2021-05-01 22:57:53'),
(60, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"374c15c0d885d3dbfd4b538f42016ba7\\\":{\\\"rowId\\\":\\\"374c15c0d885d3dbfd4b538f42016ba7\\\",\\\"id\\\":247,\\\"name\\\":\\\"M\\\\u00f3c trong si\\\\u00eau d\\\\u00ednh\\\",\\\"qty\\\":\\\"4000\\\",\\\"price\\\":440,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"100000\\\",\\\"price_in\\\":\\\"415\\\",\\\"amount\\\":\\\"6800\\\",\\\"sort\\\":1619938513},\\\"discount\\\":0,\\\"tax\\\":92.4,\\\"subtotal\\\":1760000}}\"', NULL, 1760000, 1760000, 0, 0, 0, 100000, NULL, 0, '2021-05-01 23:55:19', '2021-05-01 23:55:19'),
(61, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"2b3e822d937fbaed31f7de683cf50a42\\\":{\\\"rowId\\\":\\\"2b3e822d937fbaed31f7de683cf50a42\\\",\\\"id\\\":84,\\\"name\\\":\\\"Kh\\\\u1ea9u trang 3D Naru Kids\\\",\\\"qty\\\":\\\"4\\\",\\\"price\\\":25000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"0\\\",\\\"price_in\\\":\\\"25000\\\",\\\"amount\\\":\\\"54\\\",\\\"sort\\\":1620033663},\\\"discount\\\":0,\\\"tax\\\":5250,\\\"subtotal\\\":100000},\\\"a8e067d6122a74a5914d31b6d9fab7f4\\\":{\\\"rowId\\\":\\\"a8e067d6122a74a5914d31b6d9fab7f4\\\",\\\"id\\\":252,\\\"name\\\":\\\"Kh\\\\u1ea9u trang 4 l\\\\u1edbp OTC\\\",\\\"qty\\\":\\\"7\\\",\\\"price\\\":20000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"0\\\",\\\"price_in\\\":\\\"20000\\\",\\\"amount\\\":\\\"25\\\",\\\"sort\\\":1620033686},\\\"discount\\\":0,\\\"tax\\\":4200,\\\"subtotal\\\":140000}}\"', NULL, 240000, 240000, 0, 0, 0, 0, NULL, 0, '2021-05-03 02:21:35', '2021-05-03 02:21:35'),
(62, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"bc4a888c23e4dc5465eaeb6e0766fb9f\\\":{\\\"rowId\\\":\\\"bc4a888c23e4dc5465eaeb6e0766fb9f\\\",\\\"id\\\":266,\\\"name\\\":\\\"Set th\\\\u00eca d\\\\u0129a b\\\\u00f2 s\\\\u1eefa\\\",\\\"qty\\\":\\\"4\\\",\\\"price\\\":28000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"12000\\\",\\\"price_in\\\":\\\"25000\\\",\\\"amount\\\":\\\"4\\\",\\\"sort\\\":1620122336},\\\"discount\\\":0,\\\"tax\\\":5880,\\\"subtotal\\\":112000},\\\"536e3a5eabe21d4429acfa1c316753f1\\\":{\\\"rowId\\\":\\\"536e3a5eabe21d4429acfa1c316753f1\\\",\\\"id\\\":142,\\\"name\\\":\\\"H\\\\u1ed9p bu\\\\u1ed9c t\\\\u00f3c 12ct\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":16000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"-11400\\\",\\\"price_in\\\":\\\"13000\\\",\\\"amount\\\":\\\"99\\\",\\\"sort\\\":1620122358},\\\"discount\\\":0,\\\"tax\\\":3360,\\\"subtotal\\\":16000},\\\"c2d16f1d329b633d21f57bb73a64f931\\\":{\\\"rowId\\\":\\\"c2d16f1d329b633d21f57bb73a64f931\\\",\\\"id\\\":220,\\\"name\\\":\\\"Set dao c\\\\u1ea1o r\\\\u00e2u 36 l\\\\u01b0\\\\u1ee1i\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":32000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"3500\\\",\\\"price_in\\\":\\\"28500\\\",\\\"amount\\\":\\\"99\\\",\\\"sort\\\":1620122367},\\\"discount\\\":0,\\\"tax\\\":6720,\\\"subtotal\\\":32000},\\\"14b115f399d7895e1d6f43f2909d49d6\\\":{\\\"rowId\\\":\\\"14b115f399d7895e1d6f43f2909d49d6\\\",\\\"id\\\":135,\\\"name\\\":\\\"T\\\\u00fai gi\\\\u1eef nhi\\\\u1ec7t h\\\\u00ecnh c\\\\u00e1\\\",\\\"qty\\\":\\\"1\\\",\\\"price\\\":25000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"-18000\\\",\\\"price_in\\\":\\\"20500\\\",\\\"amount\\\":\\\"35\\\",\\\"sort\\\":1620122378},\\\"discount\\\":0,\\\"tax\\\":5250,\\\"subtotal\\\":25000},\\\"93a85270dbf003a21555127e207277ce\\\":{\\\"rowId\\\":\\\"93a85270dbf003a21555127e207277ce\\\",\\\"id\\\":140,\\\"name\\\":\\\"B\\\\u00f4ng t\\\\u1ea9y trang 222m\\\",\\\"qty\\\":\\\"3\\\",\\\"price\\\":25000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"15300\\\",\\\"price_in\\\":\\\"19900\\\",\\\"amount\\\":\\\"733\\\",\\\"sort\\\":1620122390},\\\"discount\\\":0,\\\"tax\\\":5250,\\\"subtotal\\\":75000},\\\"76da448d65b8995f407882a4787af686\\\":{\\\"rowId\\\":\\\"76da448d65b8995f407882a4787af686\\\",\\\"id\\\":101,\\\"name\\\":\\\"Gi\\\\u1ea5y lau gi\\\\u1ea7y Sneacker\\\",\\\"qty\\\":\\\"3\\\",\\\"price\\\":29000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"12000\\\",\\\"price_in\\\":\\\"23500\\\",\\\"amount\\\":\\\"243\\\",\\\"sort\\\":1620122425},\\\"discount\\\":0,\\\"tax\\\":6090,\\\"subtotal\\\":87000},\\\"55a7fbb58f3a40c527d06cfce252760c\\\":{\\\"rowId\\\":\\\"55a7fbb58f3a40c527d06cfce252760c\\\",\\\"id\\\":204,\\\"name\\\":\\\"Kh\\\\u1ea9u trang MJ Mask\\\",\\\"qty\\\":\\\"5\\\",\\\"price\\\":18000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"20000\\\",\\\"price_in\\\":\\\"14000\\\",\\\"amount\\\":\\\"44\\\",\\\"sort\\\":1620122448},\\\"discount\\\":0,\\\"tax\\\":3780,\\\"subtotal\\\":90000}}\"', NULL, 440000, 0, 30000, 0, 470000, 98481, NULL, 0, '2021-05-04 03:00:57', '2021-05-04 03:04:07'),
(63, 32, 13, 'Chưa nhập địa chỉ', 'Chưa nhập số điện thoại', 'khachle@gmail.com', '\"{\\\"7c94fc327973bd1f66f2ac5a1f26d9b6\\\":{\\\"rowId\\\":\\\"7c94fc327973bd1f66f2ac5a1f26d9b6\\\",\\\"id\\\":242,\\\"name\\\":\\\"Kh\\\\u0103n lau zigzag 2 m\\\\u1eb7t (set 10c\\\\\\/t\\\\u00fai)\\\",\\\"qty\\\":\\\"200\\\",\\\"price\\\":11750,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"150000\\\",\\\"price_in\\\":\\\"11000\\\",\\\"amount\\\":\\\"548\\\",\\\"sort\\\":1620183168},\\\"discount\\\":0,\\\"tax\\\":2467.5,\\\"subtotal\\\":2350000},\\\"da6a36b98970d588fe9f697b7529f229\\\":{\\\"rowId\\\":\\\"da6a36b98970d588fe9f697b7529f229\\\",\\\"id\\\":247,\\\"name\\\":\\\"M\\\\u00f3c trong si\\\\u00eau d\\\\u00ednh\\\",\\\"qty\\\":\\\"4000\\\",\\\"price\\\":420,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"49700\\\",\\\"price_in\\\":\\\"388\\\",\\\"amount\\\":\\\"6800\\\",\\\"sort\\\":1620183437},\\\"discount\\\":0,\\\"tax\\\":88.2,\\\"subtotal\\\":1680000}}\"', NULL, 4030000, 4030000, 0, 0, 0, 199700, NULL, 0, '2021-05-04 19:57:31', '2021-05-04 19:57:31'),
(64, 30, 13, 'Thanh Hoá (gửi xe Mạnh Vi, bến xe Đuôi Cá)', '0981546239', 'lehongvan@gmail.com', '\"{\\\"fcc392e389369f3a77fe8135533edc16\\\":{\\\"rowId\\\":\\\"fcc392e389369f3a77fe8135533edc16\\\",\\\"id\\\":255,\\\"name\\\":\\\"B\\\\u00f3ng \\\\u0111i\\\\u1ec7n NLMT 16.5*9\\\",\\\"qty\\\":\\\"80\\\",\\\"price\\\":50000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"48000\\\",\\\"price_in\\\":\\\"48500\\\",\\\"amount\\\":\\\"128\\\",\\\"sort\\\":1620183815},\\\"discount\\\":0,\\\"tax\\\":10500,\\\"subtotal\\\":4000000},\\\"ed95583495d282f2ea0c9797ca9475b8\\\":{\\\"rowId\\\":\\\"ed95583495d282f2ea0c9797ca9475b8\\\",\\\"id\\\":264,\\\"name\\\":\\\"B\\\\u1ecdc m\\\\u00e1y gi\\\\u1eb7t c\\\\u1eeda tr\\\\u01b0\\\\u1edbc lo\\\\u1ea1i d\\\\u00e0y\\\",\\\"qty\\\":\\\"50\\\",\\\"price\\\":39000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"175000\\\",\\\"price_in\\\":\\\"35500\\\",\\\"amount\\\":\\\"50\\\",\\\"sort\\\":1620183844},\\\"discount\\\":0,\\\"tax\\\":8190,\\\"subtotal\\\":1950000},\\\"f4829a231abd9317a438306d90d40bc6\\\":{\\\"rowId\\\":\\\"f4829a231abd9317a438306d90d40bc6\\\",\\\"id\\\":265,\\\"name\\\":\\\"B\\\\u1ed9 \\\\u0111\\\\u1ed3 ch\\\\u01a1i gh\\\\u00e9p g\\\\u1ed7\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":89000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"120000\\\",\\\"price_in\\\":\\\"85000\\\",\\\"amount\\\":\\\"30\\\",\\\"sort\\\":1620183863},\\\"discount\\\":0,\\\"tax\\\":18690,\\\"subtotal\\\":2670000},\\\"6051c3f5d38609e966dc7d06e789230c\\\":{\\\"rowId\\\":\\\"6051c3f5d38609e966dc7d06e789230c\\\",\\\"id\\\":256,\\\"name\\\":\\\"V\\\\u1eaft cam l\\\\u00faa m\\\\u1ea1ch Ecoco\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":61000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"90000\\\",\\\"price_in\\\":\\\"58000\\\",\\\"amount\\\":\\\"30\\\",\\\"sort\\\":1620183879},\\\"discount\\\":0,\\\"tax\\\":12810,\\\"subtotal\\\":1830000},\\\"25d456f196ac62615842c28998512d85\\\":{\\\"rowId\\\":\\\"25d456f196ac62615842c28998512d85\\\",\\\"id\\\":267,\\\"name\\\":\\\"R\\\\u1ed5 nh\\\\u1ef1a \\\\u0111\\\\u1ef1ng b\\\\u00e1t \\\\u0111a n\\\\u0103ng\\\",\\\"qty\\\":\\\"30\\\",\\\"price\\\":42000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"60000\\\",\\\"price_in\\\":\\\"40000\\\",\\\"amount\\\":\\\"30\\\",\\\"sort\\\":1620183892},\\\"discount\\\":0,\\\"tax\\\":8820,\\\"subtotal\\\":1260000},\\\"10dd02fa96a7e620957457e93d2f4ade\\\":{\\\"rowId\\\":\\\"10dd02fa96a7e620957457e93d2f4ade\\\",\\\"id\\\":268,\\\"name\\\":\\\"Khu\\\\u00f4n kem silicon\\\",\\\"qty\\\":\\\"100\\\",\\\"price\\\":14000,\\\"weight\\\":0,\\\"options\\\":{\\\"revenue\\\":\\\"100000\\\",\\\"price_in\\\":\\\"13000\\\",\\\"amount\\\":\\\"100\\\",\\\"sort\\\":1620183907},\\\"discount\\\":0,\\\"tax\\\":2940,\\\"subtotal\\\":1400000}}\"', NULL, 14880000, 0, 0, 0, 14880000, 623000, NULL, 0, '2021-05-04 20:06:26', '2021-05-06 02:15:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product_session`
--

CREATE TABLE `order_product_session` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_session_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_product_session`
--

INSERT INTO `order_product_session` (`order_id`, `product_session_id`) VALUES
(64, 492),
(64, 401);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `title`, `parent_id`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'Điều hướng', 0, 'admin', '2021-04-19 18:34:10', '2021-04-19 18:34:10'),
(2, 'media', 'Media', 1, 'admin', '2021-04-19 18:34:21', '2021-04-19 18:34:21'),
(3, 'menu', 'Menu', 1, 'admin', '2021-04-19 18:34:32', '2021-04-19 18:34:32'),
(4, 'comment', 'Bình luận', 1, 'admin', '2021-04-19 18:34:48', '2021-04-19 18:34:48'),
(5, 'contact', 'Liên hệ', 1, 'admin', '2021-04-19 18:35:06', '2021-04-19 18:35:06'),
(6, 'blog', 'Blog', 0, 'admin', '2021-04-19 18:35:16', '2021-04-19 18:35:16'),
(7, 'blog.view', 'Xem nội dung', 6, 'admin', '2021-04-19 18:35:31', '2021-04-19 18:35:31'),
(8, 'blog.create', 'Thêm nội dung', 6, 'admin', '2021-04-19 18:35:41', '2021-04-19 18:35:41'),
(9, 'blog.edit', 'Sửa nội dung', 6, 'admin', '2021-04-19 18:35:57', '2021-04-19 18:35:57'),
(10, 'blog.destroy', 'Xóa nội dung', 6, 'admin', '2021-04-19 18:36:11', '2021-04-19 18:36:11'),
(11, 'product', 'Sản phẩm', 0, 'admin', '2021-04-19 18:36:26', '2021-04-19 18:36:26'),
(12, 'product.view', 'Xem sản phẩm', 11, 'admin', '2021-04-19 18:36:39', '2021-04-19 18:36:39'),
(13, 'product.create', 'Tạo sản phẩm', 11, 'admin', '2021-04-19 18:37:01', '2021-04-19 18:37:01'),
(14, 'product.edit', 'Sửa sản phẩm', 11, 'admin', '2021-04-19 18:37:15', '2021-04-19 18:37:15'),
(15, 'product.destroy', 'Xóa sản phẩm', 11, 'admin', '2021-04-19 18:37:25', '2021-04-19 18:37:25'),
(16, 'seller', 'Bán hàng', 0, 'admin', '2021-04-19 18:38:15', '2021-04-19 18:38:15'),
(17, 'seller.export', 'Xuất hàng', 16, 'admin', '2021-04-19 18:38:29', '2021-04-19 18:38:29'),
(18, 'seller.import', 'Nhập hàng', 16, 'admin', '2021-04-19 18:38:44', '2021-04-19 18:38:44'),
(19, 'seller.card', 'Thẻ kho', 16, 'admin', '2021-04-19 18:38:58', '2021-04-19 18:38:58'),
(20, 'seller.agency', 'Nhà cung cấp', 16, 'admin', '2021-04-19 18:39:15', '2021-04-19 18:39:15'),
(21, 'admins', 'Tài khoản quản trị', 0, 'admin', '2021-04-19 18:39:36', '2021-04-19 18:39:36'),
(22, 'admins.view', 'Xem quản trị', 21, 'admin', '2021-04-19 18:39:57', '2021-04-19 18:39:57'),
(23, 'admins.create', 'Thêm quản trị', 21, 'admin', '2021-04-19 18:40:06', '2021-04-19 18:40:06'),
(24, 'admins.edit', 'Sửa quản trị', 21, 'admin', '2021-04-19 18:40:16', '2021-04-19 18:40:16'),
(25, 'admins.destroy', 'Xóa quản trị', 21, 'admin', '2021-04-19 18:40:27', '2021-04-19 18:40:27'),
(26, 'users', 'Tài khoản khách hàng', 0, 'admin', '2021-04-19 18:40:40', '2021-04-19 18:40:40'),
(27, 'users.view', 'Xem khách hàng', 26, 'admin', '2021-04-19 18:40:57', '2021-04-19 18:40:57'),
(28, 'users.create', 'Thêm khách hàng', 26, 'admin', '2021-04-19 18:41:16', '2021-04-19 18:41:16'),
(29, 'users.edit', 'Sửa khách hàng', 26, 'admin', '2021-04-19 18:41:29', '2021-04-19 18:41:29'),
(30, 'users.destroy', 'Xóa khách hàng', 26, 'admin', '2021-04-19 18:41:42', '2021-04-19 18:41:42'),
(31, 'videos', 'Videos', 0, 'admin', '2021-04-19 18:42:19', '2021-04-19 18:42:19'),
(32, 'videos.view', 'Xem videos', 31, 'admin', '2021-04-19 18:42:29', '2021-04-19 18:42:29'),
(33, 'videos.create', 'Thêm videos', 31, 'admin', '2021-04-19 18:42:38', '2021-04-19 18:42:38'),
(34, 'videos.edit', 'Sửa videos', 31, 'admin', '2021-04-19 18:42:49', '2021-04-19 18:42:49'),
(35, 'videos.destroy', 'Xóa videos', 31, 'admin', '2021-04-19 18:42:59', '2021-04-19 18:42:59'),
(36, 'galleries', 'Galleries', 0, 'admin', '2021-04-19 18:43:06', '2021-04-19 18:43:06'),
(37, 'galleries.view', 'Xem galleries', 36, 'admin', '2021-04-19 18:43:20', '2021-04-19 18:43:20'),
(38, 'galleries.create', 'Thêm galleries', 36, 'admin', '2021-04-19 18:43:32', '2021-04-19 18:43:32'),
(39, 'galleries.edit', 'Sửa galleries', 36, 'admin', '2021-04-19 18:43:43', '2021-04-19 18:43:43'),
(40, 'galleries.destroy', 'Xóa galleries', 36, 'admin', '2021-04-19 18:43:58', '2021-04-19 18:43:58'),
(41, 'permissions', 'Quyền hạn', 0, 'admin', '2021-04-19 18:44:29', '2021-04-19 19:23:30'),
(42, 'permissions.view', 'Xem quyền hạn', 41, 'admin', '2021-04-19 19:20:04', '2021-04-19 19:23:40'),
(43, 'permissions.create', 'Thêm quyền hạn', 41, 'admin', '2021-04-19 19:20:17', '2021-04-28 20:53:19'),
(44, 'permissions.edit', 'Sửa quyền hạn', 41, 'admin', '2021-04-19 19:20:29', '2021-04-19 19:23:52'),
(45, 'permissions.destroy', 'Xóa quyền hạn', 41, 'admin', '2021-04-19 19:20:45', '2021-04-19 19:24:01'),
(46, 'roles', 'Phân quyền', 0, 'admin', '2021-04-19 19:21:13', '2021-04-19 19:21:13'),
(47, 'roles.view', 'Xem phân quyền', 46, 'admin', '2021-04-19 19:21:24', '2021-04-19 19:21:24'),
(48, 'roles.create', 'Thêm phân quyền', 46, 'admin', '2021-04-19 19:21:35', '2021-04-19 19:21:35'),
(49, 'roles.edit', 'Sửa phân quyền', 46, 'admin', '2021-04-19 19:24:16', '2021-04-19 19:24:24'),
(50, 'roles.destroy', 'Xóa phân quyền', 46, 'admin', '2021-04-19 19:24:42', '2021-04-19 19:24:42'),
(51, 'setting', 'Website', 0, 'admin', '2021-04-19 19:25:16', '2021-04-19 19:25:16'),
(52, 'setting.edit', 'Cấu hình hệ thống', 51, 'admin', '2021-04-19 19:25:48', '2021-04-19 19:25:48'),
(53, 'setting.alias', 'Đường dẫn', 51, 'admin', '2021-04-19 19:26:03', '2021-04-19 19:27:07'),
(54, 'setting.source', 'Sửa website', 51, 'admin', '2021-04-19 19:26:31', '2021-04-19 19:26:31'),
(55, 'setting.lang', 'Ngôn ngữ', 51, 'admin', '2021-04-19 19:26:44', '2021-04-19 19:27:25'),
(56, 'modules', 'Bảng phụ', 0, 'admin', '2021-04-19 19:29:06', '2021-04-19 19:31:28'),
(57, 'modules.view', 'Xem bảng', 56, 'admin', '2021-04-19 19:29:15', '2021-04-19 19:31:37'),
(58, 'modules.create', 'Thêm bảng', 56, 'admin', '2021-04-19 19:29:29', '2021-04-19 19:31:47'),
(59, 'modules.edit', 'Sửa  bảng', 56, 'admin', '2021-04-19 19:29:46', '2021-04-19 19:31:55'),
(60, 'modules.destroy', 'Xóa bảng', 56, 'admin', '2021-04-19 19:29:57', '2021-04-19 19:31:12'),
(61, 'debts', 'Vay vốn', 0, 'admin', '2021-04-28 20:39:34', '2021-04-28 20:39:34'),
(62, 'debts.view', 'Xem thông tin', 61, 'admin', '2021-04-28 20:41:19', '2021-04-28 20:41:19'),
(63, 'debts.edit', 'Sửa thông tin', 61, 'admin', '2021-04-28 20:41:32', '2021-04-28 20:41:32'),
(64, 'debts.destroy', 'Xóa thông tin', 61, 'admin', '2021-04-28 20:41:50', '2021-04-28 20:41:50'),
(65, 'debts.borrow.pay', 'Cộng - trừ tiền', 61, 'admin', '2021-04-28 20:43:39', '2021-04-28 20:47:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_edit` int(11) DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `photos`
--

INSERT INTO `photos` (`id`, `name`, `path`, `image`, `thumb`, `description`, `position`, `type_id`, `type`, `user_id`, `user_edit`, `public`, `sort`, `lang`, `created_at`, `updated_at`) VALUES
(7, NULL, NULL, 'storage/photo/EUgp2V5ALVLgGWGoTbL4UnyKwVellS1HdGFoEzgY.png', 'storage/photo/thumb/EUgp2V5ALVLgGWGoTbL4UnyKwVellS1HdGFoEzgY.png', NULL, 'Nomal', 0, 'PHOTO', 1, NULL, 1, 0, 'vn', '2021-04-29 00:04:35', '2021-04-29 00:04:35'),
(8, NULL, NULL, 'storage/photo/imtGscnXp3fnjGgQuUMWA0IcE5rjq0VJztWZDfXK.png', 'storage/photo/thumb/imtGscnXp3fnjGgQuUMWA0IcE5rjq0VJztWZDfXK.png', NULL, 'Nomal', 0, 'PHOTO', 1, NULL, 1, 0, 'vn', '2021-04-29 00:04:36', '2021-04-29 00:04:36'),
(9, NULL, NULL, 'storage/photo/6IrCOp7VCIEq7YsxfogWWkUAquL4rC78NBRfsEuG.png', 'storage/photo/thumb/6IrCOp7VCIEq7YsxfogWWkUAquL4rC78NBRfsEuG.png', NULL, 'Nomal', 0, 'PHOTO', 1, NULL, 1, 0, 'vn', '2021-04-29 00:04:36', '2021-04-29 00:04:36'),
(10, NULL, NULL, 'storage/photo/aDQHN9fsX45r7nGCxy0m5YaTydJZ1Pws56iqzop2.png', 'storage/photo/thumb/aDQHN9fsX45r7nGCxy0m5YaTydJZ1Pws56iqzop2.png', NULL, 'Nomal', 0, 'PHOTO', 1, NULL, 1, 0, 'vn', '2021-04-29 00:04:36', '2021-04-29 00:04:36'),
(11, NULL, NULL, 'storage/photo/OQUnQ7PfVZV4LG1AcD2H5XoknmnLoJ5mFlQpVYr4.png', 'storage/photo/thumb/OQUnQ7PfVZV4LG1AcD2H5XoknmnLoJ5mFlQpVYr4.png', NULL, 'Nomal', 0, 'PHOTO', 1, NULL, 1, 0, 'vn', '2021-04-29 00:04:36', '2021-04-29 00:04:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_edit` int(11) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `title_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `public` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `alias`, `image`, `thumb`, `description`, `type`, `tags`, `content`, `category_id`, `user_id`, `user_edit`, `view`, `title_seo`, `description_seo`, `keyword_seo`, `lang`, `status`, `public`, `sort`, `created_at`, `updated_at`) VALUES
(1, '123', '123', 'storage/photo/baojXqU2DNEmNzAnzb4N4dPzmvd6b9wVP6liBEvX.png', 'storage/photo/thumb/baojXqU2DNEmNzAnzb4N4dPzmvd6b9wVP6liBEvX.png', NULL, 'POST', NULL, NULL, 0, 1, NULL, 0, '123', '123', '123', 'vn', 0, 1, 0, '2021-04-28 23:56:38', '2021-04-28 23:56:38'),
(2, '111111111111111111111111111', '111111111111111111111111111', 'storage/photo/Rob9Sqgrs455I0gRZ4B4DbJIx94jc8tUT1s7cf3d.jpg', 'storage/photo/thumb/Rob9Sqgrs455I0gRZ4B4DbJIx94jc8tUT1s7cf3d.jpg', NULL, 'POST', NULL, NULL, 0, 1, NULL, 0, '111111111111111111111111111', '111111111111111111111111111', '111111111111111111111111111', 'vn', 0, 1, 0, '2021-04-29 00:02:42', '2021-04-29 00:02:42'),
(3, '345354353', '34535435', NULL, NULL, NULL, 'POST', NULL, NULL, 0, 1, NULL, 0, '345354353', '345354353', '345354353', 'vn', 0, 1, 0, '2021-04-29 00:55:20', '2021-04-29 00:55:20'),
(4, '123123123', '123123123', NULL, NULL, NULL, 'POST', NULL, NULL, 0, 1, NULL, 0, '123123123', '123123123', '123123123', 'vi', 0, 1, 0, '2021-05-02 20:04:30', '2021-05-02 20:04:30'),
(5, '12313133', '12313133', NULL, NULL, NULL, 'POST', '\"dfgdf,bn,z\"', NULL, 0, 1, 1, 0, '12313133', '12313133', '12313133', 'vi', 0, 1, 0, '2021-05-02 20:05:36', '2021-05-02 20:06:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_lang`
--

CREATE TABLE `post_lang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_lang_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `price_sale` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `options` json DEFAULT NULL,
  `tags` longtext COLLATE utf8mb4_unicode_ci,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `user_edit` int(11) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `alias`, `price`, `price_sale`, `image`, `thumb`, `amount`, `code`, `video`, `description`, `content`, `options`, `tags`, `category_id`, `user_id`, `user_edit`, `view`, `type`, `public`, `status`, `sort`, `lang`, `title_seo`, `description_seo`, `keyword_seo`, `created_at`, `updated_at`) VALUES
(12, 'Kẹp mũi silicon Nhật Bản', 'kep-mui-silicon-nhat-ban', 26000, 0, NULL, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kẹp mũi silicon Nhật Bản', 'Kẹp mũi silicon Nhật Bản', 'Kẹp mũi silicon Nhật Bản', '2021-03-13 19:16:26', '2021-05-06 01:21:47'),
(13, 'Nhiệt kế mini cho bé', 'nhiet-ke-mini-cho-be', 25000, 0, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Nhiệt kế mini cho bé', 'Nhiệt kế mini cho bé', 'Nhiệt kế mini cho bé', '2021-03-13 19:17:30', '2021-05-06 01:21:47'),
(14, 'Set 12 bút chì Deli vỏ đỏ', 'set-12-but-chi-deli-vo-do', 21000, 0, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set 12 bút chì Deli vỏ đỏ', 'Set 12 bút chì Deli vỏ đỏ', 'Set 12 bút chì Deli vỏ đỏ', '2021-03-13 19:18:36', '2021-05-06 01:21:47'),
(15, 'Cây chuốt tóc', 'cay-chuot-toc', 13000, 0, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Cây chuốt tóc', 'Cây chuốt tóc', 'Cây chuốt tóc', '2021-03-13 19:19:16', '2021-05-06 01:21:47'),
(16, 'Vỉ 10 bút chì Deli xanh', 'vi-10-but-chi-deli-xanh', 19000, 0, NULL, NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Vỉ 10 bút chì Deli xanh', 'Vỉ 10 bút chì Deli xanh', 'Vỉ 10 bút chì Deli xanh', '2021-03-13 19:20:07', '2021-05-06 01:21:47'),
(17, 'Cờ lê bông tuyết đa năng', 'co-le-bong-tuyet-da-nang', 13000, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Cờ lê bông tuyết đa năng', 'Cờ lê bông tuyết đa năng', 'Cờ lê bông tuyết đa năng', '2021-03-13 19:20:46', '2021-05-06 01:21:47'),
(18, 'Set 10 trâu vàng ốp đt', 'set-10-trau-vang-op-dt', 39000, 0, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set 10 trâu vàng ốp đt', 'Set 10 trâu vàng ốp đt', 'Set 10 trâu vàng ốp đt', '2021-03-13 19:21:29', '2021-05-06 01:21:47'),
(19, 'Set 3 buộc tóc ngọc trai', 'set-3-buoc-toc-ngoc-trai', 14000, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set 3 buộc tóc ngọc trai', 'Set 3 buộc tóc ngọc trai', 'Set 3 buộc tóc ngọc trai', '2021-03-13 19:22:15', '2021-05-06 01:21:47'),
(20, 'Máy cạo lông mày Sweet', 'may-cao-long-may-sweet', 35000, 0, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Máy cạo lông mày Sweet', 'Máy cạo lông mày Sweet', 'Máy cạo lông mày Sweet', '2021-03-13 19:22:56', '2021-05-06 01:21:47'),
(21, 'Túi buộc tóc trẻ em (50c/gói)', 'tui-buoc-toc-tre-em-50cgoi', 9000, 0, NULL, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi buộc tóc trẻ em (50c/gói)', 'Túi buộc tóc trẻ em (50c/gói)', 'Túi buộc tóc trẻ em (50c/gói)', '2021-03-13 19:39:55', '2021-05-06 01:21:47'),
(22, 'Tất tàng hình siêu mỏng', 'tat-tang-hinh-sieu-mong', 15000, 0, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Tất tàng hình siêu mỏng', 'Tất tàng hình siêu mỏng', 'Tất tàng hình siêu mỏng', '2021-03-13 19:40:58', '2021-05-06 01:21:47'),
(23, 'Buộc tóc charm nữ', 'buoc-toc-charm-nu', 8000, 0, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Buộc tóc charm nữ', 'Buộc tóc charm nữ', 'Buộc tóc charm nữ', '2021-03-13 19:41:47', '2021-05-06 01:21:47'),
(24, 'Buộc tóc charm (m) nữ', 'buoc-toc-charm-m-nu', 7000, 0, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Buộc tóc charm (m) nữ', 'Buộc tóc charm (m) nữ', 'Buộc tóc charm (m) nữ', '2021-03-13 19:42:20', '2021-05-06 01:21:47'),
(25, 'Túi zip 100 buộc tóc nữ', 'tui-zip-100-buoc-toc-nu', 12000, 0, NULL, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi zip 100 buộc tóc nữ', 'Túi zip 100 buộc tóc nữ', 'Túi zip 100 buộc tóc nữ', '2021-03-13 19:43:05', '2021-05-06 01:21:47'),
(26, 'Đũa tập ăn cho bé', 'dua-tap-an-cho-be', 9000, 0, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Đũa tập ăn cho bé', 'Đũa tập ăn cho bé', 'Đũa tập ăn cho bé', '2021-03-13 19:43:24', '2021-05-06 01:21:47'),
(27, 'Chà gót chân hộp nhôm', 'cha-got-chan-hop-nhom', 43000, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Chà gót chân hộp nhôm', 'Chà gót chân hộp nhôm', 'Chà gót chân hộp nhôm', '2021-03-13 19:44:11', '2021-05-06 01:21:47'),
(28, 'Set 10 bàn chải xuất Nhật', 'set-10-ban-chai-xuat-nhat', 17000, 0, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set 10 bàn chải xuất Nhật', 'Set 10 bàn chải xuất Nhật', 'Set 10 bàn chải xuất Nhật', '2021-03-13 19:44:33', '2021-05-06 01:21:47'),
(29, 'Set 5 món di chuyển đồ vật', 'set-5-mon-di-chuyen-do-vat', 67000, 0, NULL, NULL, 97, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set 5 món di chuyển đồ vật', 'Set 5 món di chuyển đồ vật', 'Set 5 món di chuyển đồ vật', '2021-03-13 19:45:13', '2021-05-06 01:21:47'),
(30, 'Tất dứa siêu dai', 'tat-dua-sieu-dai', 14000, 0, NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Tất dứa siêu dai', 'Tất dứa siêu dai', 'Tất dứa siêu dai', '2021-03-13 19:45:43', '2021-05-06 01:21:47'),
(31, 'Tất Muji Nhật mỏng', 'tat-muji-nhat-mong', 14000, 0, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Tất Muji Nhật mỏng', 'Tất Muji Nhật mỏng', 'Tất Muji Nhật mỏng', '2021-03-13 19:46:32', '2021-05-06 01:21:47'),
(32, 'Lót giầy 4D', 'lot-giay-4d', 9000, 0, NULL, NULL, 218, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Lót giầy 4D', 'Lót giầy 4D', 'Lót giầy 4D', '2021-03-13 19:46:57', '2021-05-06 01:21:47'),
(33, 'Túi đeo chéo trẻ em', 'tui-deo-cheo-tre-em', 47000, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi đeo chéo trẻ em', 'Túi đeo chéo trẻ em', 'Túi đeo chéo trẻ em', '2021-03-13 19:47:33', '2021-05-06 01:21:47'),
(34, 'Vòi tăng áp nhựa dài', 'voi-tang-ap-nhua-dai', 22000, 0, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Vòi tăng áp nhựa dài', 'Vòi tăng áp nhựa dài', 'Vòi tăng áp nhựa dài', '2021-04-01 12:16:06', '2021-05-06 01:21:47'),
(35, 'Kẹp ga giường (set 4)', 'kep-ga-giuong-set-4', 43000, 0, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kẹp ga giường (set 4)', 'Kẹp ga giường (set 4)', 'Kẹp ga giường (set 4)', '2021-04-01 12:17:01', '2021-05-06 01:21:47'),
(36, 'Cây lau nhà tím bàn nhựa', 'cay-lau-nha-tim-ban-nhua', 38000, 0, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Cây lau nhà tím bàn nhựa', 'Cây lau nhà tím bàn nhựa', 'Cây lau nhà tím bàn nhựa', '2021-04-01 12:17:42', '2021-05-06 01:21:47'),
(37, 'Gối chữ U HKM Ensure Gold', 'goi-chu-u-hkm-ensure-gold', 66000, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Gối chữ U HKM Ensure Gold', 'Gối chữ U HKM Ensure Gold', 'Gối chữ U HKM Ensure Gold', '2021-04-01 12:20:43', '2021-05-06 01:21:47'),
(38, 'Súng mồi lửa bếp gas', 'sung-moi-lua-bep-gas', 18000, 0, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Súng mồi lửa bếp gas', 'Súng mồi lửa bếp gas', 'Súng mồi lửa bếp gas', '2021-04-01 12:21:13', '2021-05-06 01:21:47'),
(39, 'Rổ nạo inox đa năng size 26cm', 'ro-nao-inox-da-nang-size-26cm', 59000, 0, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Rổ nạo inox đa năng size 26cm', 'Rổ nạo inox đa năng size 26cm', 'Rổ nạo inox đa năng size 26cm', '2021-04-01 12:22:03', '2021-05-06 01:21:47'),
(40, 'Giá treo quần áo inox loại 1', 'gia-treo-quan-ao-inox-loai-1', 145000, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Giá treo quần áo inox loại 1', 'Giá treo quần áo inox loại 1', 'Giá treo quần áo inox loại 1', '2021-04-01 12:22:34', '2021-05-06 01:21:47'),
(41, 'Cốc cafe tự khuấy', 'coc-cafe-tu-khuay', 64000, 0, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Cốc cafe tự khuấy', 'Cốc cafe tự khuấy', 'Cốc cafe tự khuấy', '2021-04-01 12:23:05', '2021-05-06 01:21:47'),
(42, 'Set 3 bóng đèn tròn kèm đk', 'set-3-bong-den-tron-kem-dk', 58000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Set 3 bóng đèn tròn kèm đk', 'Set 3 bóng đèn tròn kèm đk', 'Set 3 bóng đèn tròn kèm đk', '2021-04-01 12:28:06', '2021-05-06 01:21:47'),
(43, 'Ủ cháo cao 450ml', 'u-chao-cao-450ml', 83000, 0, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Ủ cháo cao 450ml', 'Ủ cháo cao 450ml', 'Ủ cháo cao 450ml', '2021-04-01 12:30:02', '2021-05-06 01:21:48'),
(44, 'Ủ cháo thấp 430ml', 'u-chao-thap-430ml', 57000, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Ủ cháo thấp 430ml', 'Ủ cháo thấp 430ml', 'Ủ cháo thấp 430ml', '2021-04-01 12:30:59', '2021-05-06 01:21:48'),
(45, 'Hộp kẹp mi nam châm', 'hop-kep-mi-nam-cham', 76000, 0, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Hộp kẹp mi nam châm', 'Hộp kẹp mi nam châm', 'Hộp kẹp mi nam châm', '2021-04-01 12:35:09', '2021-05-06 01:21:48'),
(46, 'Quần lót hạc hồng', 'quan-lot-hac-hong', 59000, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Quần lót hạc hồng', 'Quần lót hạc hồng', 'Quần lót hạc hồng', '2021-04-01 12:35:27', '2021-05-06 01:21:48'),
(47, 'Ca mỳ đa năng cán dài', 'ca-my-da-nang-can-dai', 83000, 0, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Ca mỳ đa năng cán dài', 'Ca mỳ đa năng cán dài', 'Ca mỳ đa năng cán dài', '2021-04-01 12:36:43', '2021-05-06 01:21:48'),
(48, 'Kệ sách nhựa thông minh', 'ke-sach-nhua-thong-min', 75000, 0, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kệ sách nhựa thông minh', 'Kệ sách nhựa thông minh', 'Kệ sách nhựa thông minh', '2021-04-01 12:37:41', '2021-05-06 01:21:48'),
(49, 'Nồi lẩu inox 2 ngăn', 'noi-lau-inox-2-ngan', 76000, 0, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Nồi lẩu inox 2 ngăn', 'Nồi lẩu inox 2 ngăn', 'Nồi lẩu inox 2 ngăn', '2021-04-01 12:38:10', '2021-05-06 01:21:48'),
(50, 'Bút bi nước (set 100c)', 'but-bi-nuoc-set-100c', 64000, 0, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bút bi nước (set 100c)', 'Bút bi nước (set 100c)', 'Bút bi nước (set 100c)', '2021-04-01 12:38:37', '2021-05-06 01:21:48'),
(51, 'Băng keo chống thấm 5cm', 'bang-keo-chong-tham-5cm', 18000, 0, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Băng keo chống thấm 5cm', 'Băng keo chống thấm 5cm', 'Băng keo chống thấm 5cm', '2021-04-01 12:39:59', '2021-05-06 01:21:48'),
(52, 'Băng keo chống thấm 10cm', 'bang-keo-chong-tham-10cm', 33000, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Băng keo chống thấm 10cm', 'Băng keo chống thấm 10cm', 'Băng keo chống thấm 10cm', '2021-04-01 12:41:37', '2021-05-06 01:21:48'),
(53, 'Chổi phất trần 282cm', 'choi-phat-tran-282cm', 47000, 0, NULL, NULL, 254, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Chổi phất trần 282cm', 'Chổi phất trần 282cm', 'Chổi phất trần 282cm', '2021-04-01 12:41:59', '2021-05-06 01:21:48'),
(54, 'Ổ điện xanh đa năng', 'o-dien-xanh-da-nang', 43000, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Ổ điện xanh đa năng', 'Ổ điện xanh đa năng', 'Ổ điện xanh đa năng', '2021-04-01 12:42:14', '2021-05-06 01:21:48'),
(55, 'Hộp đựng ổ điện nhựa', 'hop-dung-o-dien-nhua', 26000, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Hộp đựng ổ điện nhựa', 'Hộp đựng ổ điện nhựa', 'Hộp đựng ổ điện nhựa', '2021-04-01 12:43:03', '2021-05-06 01:21:48'),
(56, 'Túi treo đồ lót', 'tui-treo-do-lot', 32000, 0, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi treo đồ lót', 'Túi treo đồ lót', 'Túi treo đồ lót', '2021-04-01 12:46:23', '2021-05-06 01:21:48'),
(57, 'Kệ nhựa gác bồn rửa bát', 'ke-nhua-gac-bon-rua-bat', 24000, 0, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kệ nhựa gác bồn rửa bát', 'Kệ nhựa gác bồn rửa bát', 'Kệ nhựa gác bồn rửa bát', '2021-04-01 12:47:46', '2021-05-06 01:21:48'),
(58, 'Gương tai mèo đế tròn', 'guong-tai-meo-de-tron', 32000, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Gương tai mèo đế tròn', 'Gương tai mèo đế tròn', 'Gương tai mèo đế tròn', '2021-04-01 12:48:27', '2021-05-06 01:21:48'),
(59, 'Balo gà', 'balo-ga', 55000, 0, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Balo gà', 'Balo gà', 'Balo gà', '2021-04-01 12:48:50', '2021-05-06 01:21:48'),
(60, 'Xay tỏi tay', 'xay-toi-tay', 20000, 0, NULL, NULL, 69, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Xay tỏi tay', 'Xay tỏi tay', 'Xay tỏi tay', '2021-04-01 12:49:10', '2021-05-06 01:21:48'),
(61, 'Hút mũi Little Bees', 'hut-mui-little-bees', 103000, 0, NULL, NULL, 53, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Hút mũi Little Bees', 'Hút mũi Little Bees', 'Hút mũi Little Bees', '2021-04-01 12:49:28', '2021-05-06 01:21:48'),
(62, 'Bông tắm cán dài', 'bong-tam-can-dai', 14000, 0, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bông tắm cán dài', 'Bông tắm cán dài', 'Bông tắm cán dài', '2021-04-01 12:49:55', '2021-05-06 01:21:48'),
(63, 'Bông tắm silicon hình chuột', 'bong-tam-silicon-hinh-chuot', 13000, 0, NULL, NULL, 69, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bông tắm silicon hình chuột', 'Bông tắm silicon hình chuột', 'Bông tắm silicon hình chuột', '2021-04-01 12:50:59', '2021-05-06 01:21:48'),
(64, 'Que gắp rác 60cm', 'que-gap-rac-60cm', 15000, 0, NULL, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Que gắp rác 60cm', 'Que gắp rác 60cm', 'Que gắp rác 60cm', '2021-04-01 12:51:23', '2021-05-06 01:21:48'),
(65, 'Que gắp rác 90cm', 'que-gap-rac-90cm', 17000, 0, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Que gắp rác 90cm', 'Que gắp rác 90cm', 'Que gắp rác 90cm', '2021-04-01 12:51:40', '2021-05-06 01:21:48'),
(66, 'Hút rượu', 'hut-ruou', 10000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Hút rượu', 'Hút rượu', 'Hút rượu', '2021-04-01 12:52:17', '2021-05-06 01:21:48'),
(67, 'Thùng rác gấp gọn size to', 'thung-rac-gap-gon-size-to', 44000, 0, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Thùng rác gấp gọn size to', 'Thùng rác gấp gọn size to', 'Thùng rác gấp gọn size to', '2021-04-01 12:53:11', '2021-05-06 01:21:48'),
(68, 'Ngăn kéo nhựa Nhật', 'ngan-keo-nhua-nhat', 44000, 0, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Ngăn kéo nhựa Nhật', 'Ngăn kéo nhựa Nhật', 'Ngăn kéo nhựa Nhật', '2021-04-01 12:53:43', '2021-05-06 01:21:48'),
(69, 'Chảo đá 26cm', 'chao-da-26cm', 29000, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Chảo đá 26cm', 'Chảo đá 26cm', 'Chảo đá 26cm', '2021-04-01 12:54:01', '2021-05-06 01:21:48'),
(70, 'Kéo SK5 hộp đen', 'keo-sk5-hop-den', 38000, 0, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kéo SK5 hộp đen', 'Kéo SK5 hộp đen', 'Kéo SK5 hộp đen', '2021-04-01 12:54:43', '2021-05-06 01:21:48'),
(71, 'Chổi cọ nhà WC silicon', 'choi-co-nha-wc-silicon', 26000, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Chổi cọ nhà WC silicon', 'Chổi cọ nhà WC silicon', 'Chổi cọ nhà WC silicon', '2021-04-01 12:55:13', '2021-05-06 01:21:48'),
(72, 'Túi phao đựng điện thoại', 'tui-phao-dung-dien-thoai', 12000, 0, NULL, NULL, 128, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi phao đựng điện thoại', 'Túi phao đựng điện thoại', 'Túi phao đựng điện thoại', '2021-04-01 12:56:13', '2021-05-06 01:21:48'),
(73, 'Miếng họa tiết dán nền đá hoa (set 15c)', 'mieng-hoa-tiet-dan-nen-da-hoa-set-15c', 18000, 0, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Miếng họa tiết dán nền đá hoa (set 15c)', 'Miếng họa tiết dán nền đá hoa (set 15c)', 'Miếng họa tiết dán nền đá hoa (set 15c)', '2021-04-01 12:57:02', '2021-05-06 01:21:48'),
(74, 'Tranh lọ hoa 3D', 'tranh-lo-hoa-3d', 14000, 0, NULL, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Tranh lọ hoa 3D', 'Tranh lọ hoa 3D', 'Tranh lọ hoa 3D', '2021-04-01 12:57:24', '2021-05-06 01:21:48'),
(75, 'Mũ gội đầu cho bé', 'mu-goi-dau-cho-be', 8000, 0, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Mũ gội đầu cho bé', 'Mũ gội đầu cho bé', 'Mũ gội đầu cho bé', '2021-04-01 12:57:54', '2021-05-06 01:21:48'),
(76, 'Máy phun sương mini', 'may-phun-suong-mini', 24000, 0, NULL, NULL, 188, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Máy phun sương mini', 'Máy phun sương mini', 'Máy phun sương mini', '2021-04-01 13:01:15', '2021-05-06 01:21:48'),
(77, 'Bông tắm 2 mặt', 'bong-tam-2-mat', 14000, 0, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bông tắm 2 mặt', 'Bông tắm 2 mặt', 'Bông tắm 2 mặt', '2021-04-01 13:02:56', '2021-05-06 01:21:49'),
(78, 'Nạo sợi 3in1 vỉ', 'nao-soi-3in1-vi', 14000, 0, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Nạo sợi 3in1 vỉ', 'Nạo sợi 3in1 vỉ', 'Nạo sợi 3in1 vỉ', '2021-04-01 13:03:49', '2021-05-06 01:21:49'),
(79, 'Nạo nhựa 2 đầu', 'nao-nhua-2-dau', 7000, 0, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Nạo nhựa 2 đầu', 'Nạo nhựa 2 đầu', 'Nạo nhựa 2 đầu', '2021-04-01 13:04:24', '2021-05-06 01:21:49'),
(80, 'Kéo SK5 vỉ', 'keo-sk5-vi', 30000, 0, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kéo SK5 vỉ', 'Kéo SK5 vỉ', 'Kéo SK5 vỉ', '2021-04-01 13:04:53', '2021-05-06 01:21:49'),
(81, 'Túi da Forever', 'tui-da-forever', 75000, 0, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi da Forever', 'Túi da Forever', 'Túi da Forever', '2021-04-01 13:05:20', '2021-05-06 01:21:49'),
(82, 'Urgo hoạt hình', 'urgo-hoat-hinh', 19000, 0, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Urgo hoạt hình', 'Urgo hoạt hình', 'Urgo hoạt hình', '2021-04-01 13:07:14', '2021-05-06 01:21:49'),
(83, 'Urgo 100 món', 'urgo-100-mon', 15000, 0, NULL, NULL, 78, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Urgo 100 món', 'Urgo 100 món', 'Urgo 100 món', '2021-04-01 13:08:21', '2021-05-06 01:21:49'),
(84, 'Khẩu trang 3D Naru Kids', 'khau-trang-3d-naru-kids', 28000, 0, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Khẩu trang 3D Naru Kids', 'Khẩu trang 3D Naru Kids', 'Khẩu trang 3D Naru Kids', '2021-04-01 13:09:27', '2021-05-06 01:21:49'),
(85, 'Bộ cốc vàng kèm khay (set 8 món)', 'bo-coc-vang-kem-khay-set-8-mon', 198000, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bộ cốc vàng kèm khay (set 8 món)', 'Bộ cốc vàng kèm khay (set 8 món)', 'Bộ cốc vàng kèm khay (set 8 món)', '2021-04-01 13:10:40', '2021-05-06 01:21:49'),
(86, 'Giấy bạc An Lành 3m x 30cm', 'giay-bac-an-lanh-3m-x-30cm', 10000, 0, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Giấy bạc An Lành 3m x 30cm', 'Giấy bạc An Lành 3m x 30cm', 'Giấy bạc An Lành 3m x 30cm', '2021-04-01 13:11:08', '2021-05-06 01:21:49'),
(87, 'Giấy bạc An Lành 5m x 45cm', 'giay-bac-an-lanh-5m-x-45cm', 15000, 0, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Giấy bạc An Lành 5m x 45cm', 'Giấy bạc An Lành 5m x 45cm', 'Giấy bạc An Lành 5m x 45cm', '2021-04-01 13:14:23', '2021-05-06 01:21:49'),
(88, 'Màng bọc TP PE An Lành 200m x 30cm', 'mang-boc-tp-pe-an-lanh-200m-x-30cm', 48000, 0, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Màng bọc TP PE An Lành 200m x 30cm', 'Màng bọc TP PE An Lành 200m x 30cm', 'Màng bọc TP PE An Lành 200m x 30cm', '2021-04-01 13:16:46', '2021-05-06 01:21:49'),
(89, 'Phao lọc cặn máy giặt', 'phao-loc-can-may-giat', 6000, 0, NULL, NULL, 209, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Phao lọc cặn máy giặt', 'Phao lọc cặn máy giặt', 'Phao lọc cặn máy giặt', '2021-04-01 13:17:12', '2021-05-06 01:21:49'),
(90, 'Thảm đá Nhật', 'tham-da-nhat', 88000, 0, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Thảm đá Nhật', 'Thảm đá Nhật', 'Thảm đá Nhật', '2021-04-01 13:19:27', '2021-05-06 01:21:49'),
(91, 'Cốc sữa chia vạch', 'coc-sua-chia-vach', 18000, 0, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Cốc sữa chia vạch', 'Cốc sữa chia vạch', 'Cốc sữa chia vạch', '2021-04-01 13:19:49', '2021-05-06 01:21:49'),
(92, 'Túi đựng tp An Lành 1kg', 'tui-dung-tp-an-lanh-1kg', 48000, 0, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi đựng tp An Lành 1kg', 'Túi đựng tp An Lành 1kg', 'Túi đựng tp An Lành 1kg', '2021-04-01 13:26:20', '2021-05-06 01:21:49'),
(93, 'Bút chì màu Pensing (36 màu)', 'but-chi-mau-pensing-36-mau', 33000, 0, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bút chì màu Pensing (36 màu)', 'Bút chì màu Pensing (36 màu)', 'Bút chì màu Pensing (36 màu)', '2021-04-01 13:27:03', '2021-05-06 01:21:49'),
(94, 'Bút nhớ 2 đầu (set 6c)', 'but-nho-2-dau-set-6c', 17000, 0, NULL, NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bút nhớ 2 đầu (set 6c)', 'Bút nhớ 2 đầu (set 6c)', 'Bút nhớ 2 đầu (set 6c)', '2021-04-01 13:27:35', '2021-05-06 01:21:49'),
(95, 'Đèn xông tinh dầu Bát Tràng to', 'den-xong-tinh-dau-bat-trang-to', 59000, 0, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Đèn xông tinh dầu Bát Tràng to', 'Đèn xông tinh dầu Bát Tràng to', 'Đèn xông tinh dầu Bát Tràng to', '2021-04-01 13:28:03', '2021-05-06 01:21:49'),
(96, 'Đèn xông tinh dầu Bát Tràng nhỏ', 'den-xong-tinh-dau-bat-trang-nho', 49000, 0, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Đèn xông tinh dầu Bát Tràng nhỏ', 'Đèn xông tinh dầu Bát Tràng nhỏ', 'Đèn xông tinh dầu Bát Tràng nhỏ', '2021-04-01 13:28:17', '2021-05-06 01:21:49'),
(97, 'Lọ tinh dầu Bát Tràng', 'lo-tinh-dau-bat-trang', 12000, 0, NULL, NULL, 105, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Lọ tinh dầu Bát Tràng', 'Lọ tinh dầu Bát Tràng', 'Lọ tinh dầu Bát Tràng', '2021-04-01 13:28:47', '2021-05-06 01:21:49'),
(98, 'Bình giữ nhiệt Mickey 500ml', 'binh-giu-nhiet-mickey-500ml', 42000, 0, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bình giữ nhiệt Mickey 500ml', 'Bình giữ nhiệt Mickey 500ml', 'Bình giữ nhiệt Mickey 500ml', '2021-04-01 13:29:23', '2021-05-06 01:21:49'),
(99, 'Gel tẩy mốc hộp đỏ', 'gel-tay-moc-hop-do', 23000, 0, NULL, NULL, 78, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Gel tẩy mốc hộp đỏ', 'Gel tẩy mốc hộp đỏ', 'Gel tẩy mốc hộp đỏ', '2021-04-01 13:29:56', '2021-05-06 01:21:49'),
(100, 'Chống rung máy giặt (set 4c)', 'chong-rung-may-giat-set-4c', 20000, 0, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Chống rung máy giặt (set 4c)', 'Chống rung máy giặt (set 4c)', 'Chống rung máy giặt (set 4c)', '2021-04-01 13:30:26', '2021-05-06 01:21:49'),
(101, 'Giấy lau giầy Sneacker', 'giay-lau-giay-sneacker', 29000, 0, NULL, NULL, 240, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Giấy lau giầy Sneacker', 'Giấy lau giầy Sneacker', 'Giấy lau giầy Sneacker', '2021-04-01 13:30:50', '2021-05-06 01:21:49'),
(102, 'Chống cằm chống cận 2 ốc (loại 1)', 'chong-cam-chong-can-2-oc-loai-1', 42000, 0, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Chống cằm chống cận 2 ốc (loại 1)', 'Chống cằm chống cận 2 ốc (loại 1)', 'Chống cằm chống cận 2 ốc (loại 1)', '2021-04-01 13:37:29', '2021-05-06 01:21:49'),
(103, 'Ca cháo inox đỏ 16cm', 'ca-chao-inox-do-16cm', 24000, 0, NULL, NULL, 69, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Ca cháo inox đỏ 16cm', 'Ca cháo inox đỏ 16cm', 'Ca cháo inox đỏ 16cm', '2021-04-01 13:38:13', '2021-05-06 01:21:50'),
(104, 'Móc treo cổ chai', 'moc-treo-co-chai', 8000, 0, NULL, NULL, 87, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Móc treo cổ chai', 'Móc treo cổ chai', 'Móc treo cổ chai', '2021-04-01 13:38:50', '2021-05-06 01:21:50'),
(105, 'Bình giữ nhiệt 800ml', 'binh-giu-nhiet-800ml', 44000, 0, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bình giữ nhiệt 800ml', 'Bình giữ nhiệt 800ml', 'Bình giữ nhiệt 800ml', '2021-04-01 13:39:11', '2021-05-06 01:21:50'),
(106, 'Lọ thông cống nắp xanh', 'lo-thong-cong-nap-xanh', 15000, 0, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Lọ thông cống nắp xanh', 'Lọ thông cống nắp xanh', 'Lọ thông cống nắp xanh', '2021-04-01 13:39:37', '2021-05-06 01:21:50'),
(107, 'Nồi chiên nập dầu', 'noi-chien-nap-dau', 85000, 0, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Nồi chiên nập dầu', 'Nồi chiên nập dầu', 'Nồi chiên nập dầu', '2021-04-01 13:40:55', '2021-05-06 01:21:50'),
(108, 'Hộp đựng giấy ăn hình TV', 'hop-dung-giay-an-hinh-tv', 46000, 0, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Hộp đựng giấy ăn hình TV', 'Hộp đựng giấy ăn hình TV', 'Hộp đựng giấy ăn hình TV', '2021-04-01 13:41:31', '2021-05-06 01:21:50'),
(109, 'Kệ nhựa đa năng 2 tầng gấp gọn', 'ke-nhua-da-nang-2-tang-gap-gon', 44000, 0, NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kệ nhựa đa năng 2 tầng gấp gọn', 'Kệ nhựa đa năng 2 tầng gấp gọn', 'Kệ nhựa đa năng 2 tầng gấp gọn', '2021-04-01 13:41:57', '2021-05-06 01:21:50'),
(110, 'Bộ bát hoa hút chân không (set 3c)', 'bo-bat-hoa-hut-chan-khong-set-3c', 38000, 0, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bộ bát hoa hút chân không (set 3c)', 'Bộ bát hoa hút chân không (set 3c)', 'Bộ bát hoa hút chân không (set 3c)', '2021-04-01 13:42:21', '2021-05-06 01:21:50'),
(111, 'Túi bột tẩy lồng máy giặt HQ', 'tui-bot-tay-long-may-giat-hq', 18000, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Túi bột tẩy lồng máy giặt HQ', 'Túi bột tẩy lồng máy giặt HQ', 'Túi bột tẩy lồng máy giặt HQ', '2021-04-01 13:43:06', '2021-05-06 01:21:50'),
(112, 'Keo vá tường', 'keo-va-tuong', 18000, 0, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Keo vá tường', 'Keo vá tường', 'Keo vá tường', '2021-04-01 13:43:26', '2021-05-06 01:21:50'),
(113, 'Viên thả bồn cầu', 'vien-tha-bon-cau', 15000, 0, NULL, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Viên thả bồn cầu', 'Viên thả bồn cầu', 'Viên thả bồn cầu', '2021-04-01 13:44:24', '2021-05-06 01:21:50'),
(114, 'Xịt bếp Kitchen', 'xit-bep-kitchen', 23000, 0, NULL, NULL, 96, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Xịt bếp Kitchen', 'Xịt bếp Kitchen', 'Xịt bếp Kitchen', '2021-04-01 13:44:47', '2021-05-06 01:21:50'),
(115, 'Xịt nhà WC xanh', 'xit-nha-wc-xanh', 25000, 0, NULL, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Xịt nhà WC xanh', 'Xịt nhà WC xanh', 'Xịt nhà WC xanh', '2021-04-01 13:45:05', '2021-05-06 01:21:50'),
(116, 'Giỏ lọc rác inox kèm nắp', 'gio-loc-rac-inox-kem-nap', 13000, 0, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Giỏ lọc rác inox kèm nắp', 'Giỏ lọc rác inox kèm nắp', 'Giỏ lọc rác inox kèm nắp', '2021-04-01 13:45:24', '2021-05-06 01:21:50'),
(117, 'Kẹp vòi rửa bát', 'kep-voi-rua-bat', 20000, 0, NULL, NULL, 88, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kẹp vòi rửa bát', 'Kẹp vòi rửa bát', 'Kẹp vòi rửa bát', '2021-04-01 13:45:42', '2021-05-06 01:21:50'),
(119, 'Viên nước giặt (30v/h)', 'vien-nuoc-giat-30vh', 23000, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Viên nước giặt (30v/h)', 'Viên nước giặt (30v/h)', 'Viên nước giặt (30v/h)', '2021-04-01 13:50:24', '2021-05-06 01:21:50'),
(120, 'Lợn thả bồn cầu', 'lon-tha-bon-cau', 16000, 0, NULL, NULL, 86, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Lợn thả bồn cầu', 'Lợn thả bồn cầu', 'Lợn thả bồn cầu', '2021-04-01 13:50:51', '2021-05-06 01:21:50'),
(121, 'Gác chảo to 28-30cm', 'gac-chao-to-28-30cm', 19000, 0, NULL, NULL, 96, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Gác chảo to 28-30cm', 'Gác chảo to 28-30cm', 'Gác chảo to 28-30cm', '2021-04-01 13:53:03', '2021-05-06 01:21:50'),
(122, 'Gác chảo nhỏ 24-26cm', 'gac-chao-nho-24-26cm', 17000, 0, NULL, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Gác chảo nhỏ 24-26cm', 'Gác chảo nhỏ 24-26cm', 'Gác chảo nhỏ 24-26cm', '2021-04-01 13:53:21', '2021-05-06 01:21:50'),
(123, 'Túi đựng chăn khung sắt', 'tui-dung-chan-khung-sat', 67000, 0, NULL, NULL, 76, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi đựng chăn khung sắt', 'Túi đựng chăn khung sắt', 'Túi đựng chăn khung sắt', '2021-04-01 13:53:54', '2021-05-06 01:21:50'),
(124, 'Tẩy mốc Tracatu 500ml', 'tay-moc-tracatu-500ml', 8000, 0, NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Tẩy mốc Tracatu 500ml', 'Tẩy mốc Tracatu 500ml', 'Tẩy mốc Tracatu 500ml', '2021-04-01 13:54:15', '2021-05-06 01:21:50'),
(125, 'Cốc hâm nóng Lucky', 'coc-ham-nong-lucky', 79000, 0, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Cốc hâm nóng Lucky', 'Cốc hâm nóng Lucky', 'Cốc hâm nóng Lucky', '2021-04-01 13:54:35', '2021-05-06 01:21:50'),
(126, 'Túi đựng giầy', 'tui-dung-giay', 9000, 0, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi đựng giầy', 'Túi đựng giầy', 'Túi đựng giầy', '2021-04-01 13:55:02', '2021-05-06 01:21:50'),
(127, 'Tất đùi HQ đen 3 sọc', 'tat-dui-hq-den-3-soc', 15000, 0, NULL, NULL, 1800, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Tất đùi HQ đen 3 sọc', 'Tất đùi HQ đen 3 sọc', 'Tất đùi HQ đen 3 sọc', '2021-04-01 13:55:29', '2021-05-06 01:21:50'),
(128, 'Set 3 hộp nhựa HKM Pepsi', 'set-3-hop-nhua-hkm-pepsi', 7000, 0, NULL, NULL, 147, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set 3 hộp nhựa HKM Pepsi', 'Set 3 hộp nhựa HKM Pepsi', 'Set 3 hộp nhựa HKM Pepsi', '2021-04-01 13:56:44', '2021-05-06 01:21:50'),
(129, 'Bọc quạt rẻ', 'boc-quat-re', 6000, 0, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bọc quạt rẻ', 'Bọc quạt rẻ', 'Bọc quạt rẻ', '2021-04-01 13:57:08', '2021-05-06 01:21:50'),
(130, 'Khăn ủ tóc hình thỏ', 'khan-u-toc-hinh-tho', 13000, 0, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Khăn ủ tóc hình thỏ', 'Khăn ủ tóc hình thỏ', 'Khăn ủ tóc hình thỏ', '2021-04-01 13:57:48', '2021-05-06 01:21:50'),
(131, 'Khay hứng inox', 'khay-hung-inox', 42000, 0, NULL, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Khay hứng inox', 'Khay hứng inox', 'Khay hứng inox', '2021-04-01 13:58:08', '2021-05-06 01:21:51'),
(133, 'Túi đựng chăn Washday', 'tui-dung-chan-washday', 42000, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi đựng chăn Washday', 'Túi đựng chăn Washday', 'Túi đựng chăn Washday', '2021-04-01 13:58:56', '2021-05-06 01:21:51'),
(134, 'Túi trống du lịch Pink', 'tui-trong-du-lich-pink', 105000, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi trống du lịch Pink', 'Túi trống du lịch Pink', 'Túi trống du lịch Pink', '2021-04-01 13:59:56', '2021-05-06 01:21:51'),
(135, 'Túi giữ nhiệt hình cá', 'tui-giu-nhiet-hinh-ca', 23000, 0, NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi giữ nhiệt hình cá', 'Túi giữ nhiệt hình cá', 'Túi giữ nhiệt hình cá', '2021-04-01 14:00:20', '2021-05-06 01:21:51'),
(136, 'Rổ kẹp tủ lạnh', 'ro-kep-tu-lanh', 14000, 0, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Rổ kẹp tủ lạnh', 'Rổ kẹp tủ lạnh', 'Rổ kẹp tủ lạnh', '2021-04-01 14:00:41', '2021-05-06 01:21:51'),
(138, 'Chậu thớt gấp gọn', 'chau-thot-gap-gon', 32000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Chậu thớt gấp gọn', 'Chậu thớt gấp gọn', 'Chậu thớt gấp gọn', '2021-04-01 14:03:06', '2021-05-06 01:21:51'),
(139, 'Bát hút chân không Vinmart 500ml', 'bat-hut-chan-khong-vinmart-500ml', 23000, 0, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bát hút chân không Vinmart 500ml', 'Bát hút chân không Vinmart 500ml', 'Bát hút chân không Vinmart 500ml', '2021-04-01 14:11:42', '2021-05-06 01:21:51'),
(140, 'Bông tẩy trang 222m', 'bong-tay-trang-222m', 23000, 0, NULL, NULL, 730, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bông tẩy trang 222m', 'Bông tẩy trang 222m', 'Bông tẩy trang 222m', '2021-04-01 14:12:04', '2021-05-06 01:21:51'),
(141, 'Mút trang điểm Keli', 'mut-trang-diem-keli', 23000, 0, NULL, NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Mút trang điểm Keli', 'Mút trang điểm Keli', 'Mút trang điểm Keli', '2021-04-01 14:12:35', '2021-05-06 01:21:51'),
(142, 'Hộp buộc tóc 12ct', 'hop-buoc-toc-12ct', 16000, 0, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Hộp buộc tóc 12ct', 'Hộp buộc tóc 12ct', 'Hộp buộc tóc 12ct', '2021-04-01 14:13:06', '2021-05-06 01:21:51'),
(143, 'Đèn nháy sao (12 đèn)', 'den-nhay-sao-12-den', 63000, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Đèn nháy sao (12 đèn)', 'Đèn nháy sao (12 đèn)', 'Đèn nháy sao (12 đèn)', '2021-04-01 14:13:42', '2021-05-06 01:21:51'),
(144, 'Vòi nước tự dãn 30m', 'voi-nuoc-tu-dan-30m', 82000, 0, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Vòi nước tự dãn 30m', 'Vòi nước tự dãn 30m', 'Vòi nước tự dãn 30m', '2021-04-01 14:14:06', '2021-05-06 01:21:51'),
(145, 'Chậu massage chân', 'chau-massage-chan', 118000, 0, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Chậu massage chân', 'Chậu massage chân', 'Chậu massage chân', '2021-04-01 14:14:21', '2021-05-06 01:21:51'),
(146, 'Thảm yoga 2 lớp 6 li', 'tham-yoga-2-lop-6-li', 75000, 0, NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Thảm yoga 2 lớp 6 li', 'Thảm yoga 2 lớp 6 li', 'Thảm yoga 2 lớp 6 li', '2021-04-01 14:14:46', '2021-05-06 01:21:51'),
(147, 'Móc treo đầu hươu', 'moc-treo-dau-huou', 20000, 0, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Móc treo đầu hươu', 'Móc treo đầu hươu', 'Móc treo đầu hươu', '2021-04-01 14:15:27', '2021-05-06 01:21:51'),
(148, 'Tất Noel trẻ em', 'tat-noel-tre-em', 62000, 0, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Tất Noel trẻ em', 'Tất Noel trẻ em', 'Tất Noel trẻ em', '2021-04-01 14:15:55', '2021-05-06 01:21:51'),
(149, 'Set 3 tất đùi cho bé 3-6m', 'set-3-tat-dui-cho-be-3-6m', 32000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set 3 tất đùi cho bé 3-6m', 'Set 3 tất đùi cho bé 3-6m', 'Set 3 tất đùi cho bé 3-6m', '2021-04-01 14:17:26', '2021-05-06 01:21:51'),
(150, 'Bờm ngọc trai kèm băng đô', 'bom-ngoc-trai-kem-bang-do', 23000, 0, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bờm ngọc trai kèm băng đô', 'Bờm ngọc trai kèm băng đô', 'Bờm ngọc trai kèm băng đô', '2021-04-01 14:17:58', '2021-05-06 01:21:51'),
(151, 'Kiềng chắn gió bếp gas', 'kieng-chan-gio-bep-gas', 19000, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kiềng chắn gió bếp gas', 'Kiềng chắn gió bếp gas', 'Kiềng chắn gió bếp gas', '2021-04-01 14:18:24', '2021-05-06 01:21:51'),
(152, 'Ga chống thấm Nhật 80*120cm', 'ga-chong-tham-nhat-80120cm', 65000, 0, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Ga chống thấm Nhật 80*120cm', 'Ga chống thấm Nhật 80*120cm', 'Ga chống thấm Nhật 80*120cm', '2021-04-01 14:20:06', '2021-05-06 01:21:51'),
(153, 'Áo mưa phản quang TQ 1 đầu', 'ao-mua-phan-quang-tq-1-dau', 79000, 0, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Áo mưa phản quang TQ 1 đầu', 'Áo mưa phản quang TQ 1 đầu', 'Áo mưa phản quang TQ 1 đầu', '2021-04-01 14:20:42', '2021-05-06 01:55:46'),
(154, 'Thảm bếp (set 2c)', 'tham-bep-set-2c', 43000, 0, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Thảm bếp (set 2c)', 'Thảm bếp (set 2c)', 'Thảm bếp (set 2c)', '2021-04-01 14:21:03', '2021-05-06 01:21:51'),
(155, 'Máy sấy tóc Panansoni 5528 3500w', 'may-say-toc-panansoni-5528-3500w', 65000, 0, NULL, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Máy sấy tóc Panansoni 5528 3500w', 'Máy sấy tóc Panansoni 5528 3500w', 'Máy sấy tóc Panansoni 5528 3500w', '2021-04-01 14:22:13', '2021-05-06 01:21:52'),
(156, 'Set mũ khăn cho bé 3-6m', 'set-mu-khan-cho-be-3-6m', 29000, 0, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set mũ khăn cho bé 3-6m', 'Set mũ khăn cho bé 3-6m', 'Set mũ khăn cho bé 3-6m', '2021-04-01 14:22:46', '2021-05-06 01:21:52'),
(157, 'Xay tiêu nắp nhựa', 'xay-tieu-nap-nhua', 15000, 0, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Xay tiêu nắp nhựa', 'Xay tiêu nắp nhựa', 'Xay tiêu nắp nhựa', '2021-04-01 14:23:07', '2021-05-06 01:21:52'),
(158, 'Địu tập đi Baby Deer', 'diu-tap-di-baby-deer', 98000, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Địu tập đi Baby Deer', 'Địu tập đi Baby Deer', 'Địu tập đi Baby Deer', '2021-04-01 14:24:39', '2021-05-06 01:21:52'),
(159, 'Ô hoa cúc trong cán dài', 'o-hoa-cuc-trong-can-dai', 39000, 0, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Ô hoa cúc trong cán dài', 'Ô hoa cúc trong cán dài', 'Ô hoa cúc trong cán dài', '2021-04-01 14:25:06', '2021-05-06 01:21:52'),
(160, 'Viên tẩy lồng máy giặt', 'vien-tay-long-may-giat', 15000, 0, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Viên tẩy lồng máy giặt', 'Viên tẩy lồng máy giặt', 'Viên tẩy lồng máy giặt', '2021-04-01 14:25:35', '2021-05-06 01:21:52'),
(161, 'Ô ngược', 'o-nguoc', 78000, 0, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Ô ngược', 'Ô ngược', 'Ô ngược', '2021-04-01 14:27:38', '2021-05-06 01:21:52'),
(162, 'Ô hoa cúc tự bung', 'o-hoa-cuc-tu-bung', 58000, 0, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Ô hoa cúc tự bung', 'Ô hoa cúc tự bung', 'Ô hoa cúc tự bung', '2021-04-01 14:28:02', '2021-05-06 01:21:52'),
(163, 'Hộp buộc tóc thỏ hồng', 'hop-buoc-toc-tho-hong', 35000, 0, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Hộp buộc tóc thỏ hồng', 'Hộp buộc tóc thỏ hồng', 'Hộp buộc tóc thỏ hồng', '2021-04-01 14:28:21', '2021-05-06 01:21:52'),
(164, 'Hộp màu 150ct', 'hop-mau-150ct', 47000, 0, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Hộp màu 150ct', 'Hộp màu 150ct', 'Hộp màu 150ct', '2021-04-01 14:31:50', '2021-05-06 01:21:52'),
(165, 'Móc dính 3D', 'moc-dinh-3d', 800, 0, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Móc dính 3D', 'Móc dính 3D', 'Móc dính 3D', '2021-04-01 14:32:12', '2021-05-06 01:21:52'),
(166, 'Hộp bút sắt hình ô tô', 'hop-but-sat-hinh-o-to', 32000, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Hộp bút sắt hình ô tô', 'Hộp bút sắt hình ô tô', 'Hộp bút sắt hình ô tô', '2021-04-01 14:32:42', '2021-05-06 01:21:52'),
(167, 'Miếng lau sàn tự tan', 'mieng-lau-san-tu-tan', 21000, 0, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Miếng lau sàn tự tan', 'Miếng lau sàn tự tan', 'Miếng lau sàn tự tan', '2021-04-01 14:33:04', '2021-05-06 01:21:52'),
(168, 'Giấy nến đục lỗ size 23cm', 'giay-nen-duc-lo-size-23cm', 28000, 0, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Giấy nến đục lỗ size 23cm', 'Giấy nến đục lỗ size 23cm', 'Giấy nến đục lỗ size 23cm', '2021-04-01 14:33:24', '2021-05-06 01:21:52'),
(169, 'Máy phun sương vân gỗ', 'may-phun-suong-van-go', 59000, 0, NULL, NULL, 119, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Máy phun sương vân gỗ', 'Máy phun sương vân gỗ', 'Máy phun sương vân gỗ', '2021-04-01 14:33:49', '2021-05-06 01:21:52'),
(170, 'Bọc quạt cây', 'boc-quat-cay', 32000, 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bọc quạt cây', 'Bọc quạt cây', 'Bọc quạt cây', '2021-04-01 14:34:15', '2021-05-06 01:21:52'),
(171, 'Rổ gấp gọn', 'ro-gap-gon', 26000, 0, NULL, NULL, 53, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Rổ gấp gọn', 'Rổ gấp gọn', 'Rổ gấp gọn', '2021-04-01 14:34:53', '2021-05-06 01:21:52'),
(172, 'Xả Comfor 580ml', 'xa-comfor-580ml', 15000, 0, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Xả Comfor 580ml', 'Xả Comfor 580ml', 'Xả Comfor 580ml', '2021-04-01 14:35:19', '2021-05-06 01:21:52'),
(173, 'Hũ thủy tinh HKM Lumilac', 'hu-thuy-tinh-hkm-lumilac', 13000, 0, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Hũ thủy tinh HKM Lumilac', 'Hũ thủy tinh HKM Lumilac', 'Hũ thủy tinh HKM Lumilac', '2021-04-01 14:35:42', '2021-05-06 01:21:52'),
(174, 'Hộp bút chì Deli 50c', 'hop-but-chi-deli-50c', 43000, 0, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Hộp bút chì Deli 50c', 'Hộp bút chì Deli 50c', 'Hộp bút chì Deli 50c', '2021-04-01 14:36:04', '2021-05-06 01:21:52'),
(175, 'Vỉ bút chì Deli xanh 10c', 'vi-but-chi-deli-xanh-10c', 19000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Vỉ bút chì Deli xanh 10c', 'Vỉ bút chì Deli xanh 10c', 'Vỉ bút chì Deli xanh 10c', '2021-04-01 14:36:54', '2021-05-06 01:21:52'),
(176, 'Cờ lê bông tuyết', 'co-le-bong-tuyet', 13000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Cờ lê bông tuyết', 'Cờ lê bông tuyết', 'Cờ lê bông tuyết', '2021-04-01 14:37:24', '2021-05-06 01:21:52'),
(177, 'Hộp bút chì 2B 12c', 'hop-but-chi-2b-12c', 21000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Hộp bút chì 2B 12c', 'Hộp bút chì 2B 12c', 'Hộp bút chì 2B 12c', '2021-04-01 14:38:28', '2021-05-06 01:21:52'),
(178, 'Chuốt tóc', 'chuot-toc', 13000, 0, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Chuốt tóc', 'Chuốt tóc', 'Chuốt tóc', '2021-04-01 14:39:06', '2021-05-06 01:21:52'),
(179, 'Nhiệt kế mini trẻ em', 'nhiet-ke-mini-tre-em', 25000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Nhiệt kế mini trẻ em', 'Nhiệt kế mini trẻ em', 'Nhiệt kế mini trẻ em', '2021-04-01 14:39:31', '2021-05-06 01:21:52'),
(182, 'Nước giặt OTC', 'nuoc-giat-otc', 47000, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Nước giặt OTC', 'Nước giặt OTC', 'Nước giặt OTC', '2021-04-01 14:41:03', '2021-05-06 01:21:53'),
(183, 'Thu gọn bồn cầu hình ếch', 'thu-gon-bon-cau-hinh-ech', 56000, 0, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Thu gọn bồn cầu hình ếch', 'Thu gọn bồn cầu hình ếch', 'Thu gọn bồn cầu hình ếch', '2021-04-01 14:41:29', '2021-05-06 01:21:53'),
(184, 'Ghế vệ sinh Chefman', 'ghe-ve-sinh-chefman', 55000, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Ghế vệ sinh Chefman', 'Ghế vệ sinh Chefman', 'Ghế vệ sinh Chefman', '2021-04-01 14:41:55', '2021-05-06 01:21:53'),
(185, 'Giấy rút VnAirlines (gói)', 'giay-rut-viairlines-goi', 7000, 0, NULL, NULL, 800, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Giấy rút VnAirlines (gói)', 'Giấy rút VnAirlines (gói)', 'Giấy rút VnAirlines (gói)', '2021-04-01 14:42:40', '2021-05-06 01:21:53'),
(186, 'Kẹp mũi silicon Nhật', 'kep-mui-silicon-nhat', 26000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kẹp mũi silicon Nhật', 'Kẹp mũi silicon Nhật', 'Kẹp mũi silicon Nhật', '2021-04-01 14:42:57', '2021-05-06 01:21:53'),
(187, 'Lót giầy silicon 4D', 'lot-giay-silicon-4d', 8000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Lót giầy silicon 4D', 'Lót giầy silicon 4D', 'Lót giầy silicon 4D', '2021-04-01 14:43:22', '2021-05-06 01:21:53'),
(188, 'Chăn hè Ikea', 'chan-he-ikea', 65000, 0, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Chăn hè Ikea', 'Chăn hè Ikea', 'Chăn hè Ikea', '2021-04-01 14:43:47', '2021-05-06 01:21:53'),
(189, 'Hộp nạo hình chữ nhật', 'hop-nao-hinh-chu-nhat', 32000, 0, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Hộp nạo hình chữ nhật', 'Hộp nạo hình chữ nhật', 'Hộp nạo hình chữ nhật', '2021-04-01 14:44:30', '2021-05-06 01:21:53'),
(190, 'Rổ tròn 2 lớp', 'ro-tron-2-lop', 25000, 0, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Rổ tròn 2 lớp', 'Rổ tròn 2 lớp', 'Rổ tròn 2 lớp', '2021-04-01 14:44:55', '2021-05-06 01:21:53'),
(191, 'Rổ lẩu 4 ngăn', 'ro-lau-4-ngan', 65000, 0, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Rổ lẩu 4 ngăn', 'Rổ lẩu 4 ngăn', 'Rổ lẩu 4 ngăn', '2021-04-01 14:45:17', '2021-05-06 01:21:53'),
(192, 'Tất đùi HQ set 5 màu (10c)', 'tat-dui-hq-set-5-mau-10c', 94000, 0, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Tất đùi HQ set 5 màu (10c)', 'Tất đùi HQ set 5 màu (10c)', 'Tất đùi HQ set 5 màu (10c)', '2021-04-01 14:46:00', '2021-05-06 01:21:53'),
(193, 'Giấy ăn vuông 1kg E\'Lesy', 'giay-an-vuong-1kg-elesy', 36000, 0, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Giấy ăn vuông 1kg E\'Lesy', 'Giấy ăn vuông 1kg E\'Lesy', 'Giấy ăn vuông 1kg E\'Lesy', '2021-04-01 14:46:25', '2021-05-06 01:21:53'),
(194, 'Tấm bạc chắn mỡ bếp gas', 'tam-bac-chan-mo-bep-gas', 14000, 0, NULL, NULL, 158, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Tấm bạc chắn mỡ bếp gas', 'Tấm bạc chắn mỡ bếp gas', 'Tấm bạc chắn mỡ bếp gas', '2021-04-01 14:46:59', '2021-05-06 01:21:53');
INSERT INTO `products` (`id`, `name`, `alias`, `price`, `price_sale`, `image`, `thumb`, `amount`, `code`, `video`, `description`, `content`, `options`, `tags`, `category_id`, `user_id`, `user_edit`, `view`, `type`, `public`, `status`, `sort`, `lang`, `title_seo`, `description_seo`, `keyword_seo`, `created_at`, `updated_at`) VALUES
(195, 'Bọc bát silicon (set 6 món)', 'boc-bat-silicon-set-6-mon', 20000, 0, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bọc bát silicon (set 6 món)', 'Bọc bát silicon (set 6 món)', 'Bọc bát silicon (set 6 món)', '2021-04-01 14:47:39', '2021-05-06 01:21:53'),
(196, 'Set 5 túi giặt hoa', 'set-5-tui-giat-hoa', 45000, 0, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set 5 túi giặt hoa', 'Set 5 túi giặt hoa', 'Set 5 túi giặt hoa', '2021-04-01 14:48:04', '2021-05-06 01:21:53'),
(197, 'Khuôn giò inox 1kg', 'khuon-gio-inox-1kg', 26000, 0, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Khuôn giò inox 1kg', 'Khuôn giò inox 1kg', 'Khuôn giò inox 1kg', '2021-04-01 14:48:39', '2021-05-06 01:21:53'),
(198, 'Giỏ hoa ban công', 'gio-hoa-ban-cong', 19000, 0, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Giỏ hoa ban công', 'Giỏ hoa ban công', 'Giỏ hoa ban công', '2021-04-01 14:48:57', '2021-05-06 01:21:53'),
(199, 'Sơn kẻ vạch', 'son-ke-vach', 32000, 0, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Sơn kẻ vạch', 'Sơn kẻ vạch', 'Sơn kẻ vạch', '2021-04-01 14:49:12', '2021-05-06 01:21:53'),
(200, 'Đũa hợp kim', 'dua-hop-kim', 19000, 0, NULL, NULL, 229, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Đũa hợp kim', 'Đũa hợp kim', 'Đũa hợp kim', '2021-04-01 14:49:25', '2021-05-06 01:21:53'),
(201, 'Máy khâu mini CMD', 'may-khau-mini-cmd', 138000, 0, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Máy khâu mini CMD', 'Máy khâu mini CMD', 'Máy khâu mini CMD', '2021-04-01 14:50:02', '2021-05-06 01:21:53'),
(202, 'Kệ treo đám mây', 'ke-treo-dam-may', 17000, 0, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kệ treo đám mây', 'Kệ treo đám mây', 'Kệ treo đám mây', '2021-04-01 14:50:34', '2021-05-06 01:21:53'),
(203, 'Cốc gấu đa năng', 'coc-gau-da-nang', 10000, 0, NULL, NULL, 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Cốc gấu đa năng', 'Cốc gấu đa năng', 'Cốc gấu đa năng', '2021-04-01 14:50:50', '2021-05-06 01:21:53'),
(204, 'Khẩu trang MJ Mask', 'khau-trang-mj-mask', 18000, 0, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Khẩu trang MJ Mask', 'Khẩu trang MJ Mask', 'Khẩu trang MJ Mask', '2021-04-01 14:51:20', '2021-05-06 01:21:53'),
(205, 'Mũ vành rộng', 'mu-vanh-rong', 48000, 0, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Mũ vành rộng', 'Mũ vành rộng', 'Mũ vành rộng', '2021-04-01 14:51:41', '2021-05-06 01:21:53'),
(206, 'Mũ vành Gucci', 'mu-vanh-gucci', 48000, 0, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Mũ vành Gucci', 'Mũ vành Gucci', 'Mũ vành Gucci', '2021-04-01 14:52:02', '2021-05-06 01:21:53'),
(207, 'Túi thơm hoa lavender', 'tui-thom-hoa-lavender', 11000, 0, NULL, NULL, 121, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi thơm hoa lavender', 'Túi thơm hoa lavender', 'Túi thơm hoa lavender', '2021-04-01 14:52:22', '2021-05-06 01:21:53'),
(208, 'Máy xay đá Osaka nắp đồng', 'may-xay-da-osaka-nap-dong', 158000, 0, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Máy xay đá Osaka nắp đồng', 'Máy xay đá Osaka nắp đồng', 'Máy xay đá Osaka nắp đồng', '2021-04-01 14:52:42', '2021-05-06 01:21:53'),
(209, 'Kệ giầy inox 5 tầng', 'ke-giay-inox-5-tang', 69000, 0, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kệ giầy inox 5 tầng', 'Kệ giầy inox 5 tầng', 'Kệ giầy inox 5 tầng', '2021-04-01 14:53:14', '2021-05-06 01:21:53'),
(210, 'Móc treo giầy', 'moc-treo-giay', 7000, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Móc treo giầy', 'Móc treo giầy', 'Móc treo giầy', '2021-04-01 14:53:44', '2021-05-06 01:21:53'),
(211, 'Kệ dán tường đựng điều khiển', 'ke-dan-tuong-dung-dieu-khien', 8000, 0, NULL, NULL, 79, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kệ dán tường đựng điều khiển', 'Kệ dán tường đựng điều khiển', 'Kệ dán tường đựng điều khiển', '2021-04-01 14:54:07', '2021-05-06 01:21:54'),
(212, 'Máy rửa mặt Forever tròn', 'may-rua-mat-forever-tron', 34000, 0, NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Máy rửa mặt Forever tròn', 'Máy rửa mặt Forever tròn', 'Máy rửa mặt Forever tròn', '2021-04-01 14:54:33', '2021-05-06 01:21:54'),
(213, 'Gà vặn cót', 'ga-van-cot', 9000, 0, NULL, NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Gà vặn cót', 'Gà vặn cót', 'Gà vặn cót', '2021-04-01 14:54:48', '2021-05-06 01:21:54'),
(214, 'Bọ cắm bàn chải', 'bo-cam-ban-chai', 8000, 0, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bọ cắm bàn chải', 'Bọ cắm bàn chải', 'Bọ cắm bàn chải', '2021-04-01 14:55:09', '2021-05-06 01:21:54'),
(215, 'Phồng tóc tròn (set 2c)', 'phong-toc-tron-set-2c', 12000, 0, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Phồng tóc tròn (set 2c)', 'Phồng tóc tròn (set 2c)', 'Phồng tóc tròn (set 2c)', '2021-04-01 14:55:39', '2021-05-06 01:21:54'),
(216, 'Giá treo khăn nhà tắm loại dài', 'gia-treo-khan-nha-tam-loai-dai', 17000, 0, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Giá treo khăn nhà tắm loại dài', 'Giá treo khăn nhà tắm loại dài', 'Giá treo khăn nhà tắm loại dài', '2021-04-01 14:56:16', '2021-05-06 01:21:54'),
(217, 'Cuộn rác mini TQ', 'cuon-rac-mini-tq', 6000, 0, NULL, NULL, 69, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Cuộn rác mini TQ', 'Cuộn rác mini TQ', 'Cuộn rác mini TQ', '2021-04-01 14:56:35', '2021-05-06 01:21:54'),
(218, 'Tất chống thối nam cổ cao', 'tat-chong-thoi-nam-co-cao', 56000, 0, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Tất chống thối nam cổ cao', 'Tất chống thối nam cổ cao', 'Tất chống thối nam cổ cao', '2021-04-01 14:57:01', '2021-05-06 01:21:54'),
(219, 'Đèn ngủ hình nấm', 'den-ngu-hinh-nam', 12000, 0, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Đèn ngủ hình nấm', 'Đèn ngủ hình nấm', 'Đèn ngủ hình nấm', '2021-04-01 14:58:05', '2021-05-06 01:21:54'),
(220, 'Set dao cạo râu 36 lưỡi', 'set-dao-cao-rau-36-luoi', 32000, 0, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set dao cạo râu 36 lưỡi', 'Set dao cạo râu 36 lưỡi', 'Set dao cạo râu 36 lưỡi', '2021-04-01 14:58:25', '2021-05-06 01:21:54'),
(221, 'Kẹp cán chổi', 'kep-can-choi', 6000, 0, NULL, NULL, 607, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kẹp cán chổi', 'Kẹp cán chổi', 'Kẹp cán chổi', '2021-04-01 14:58:52', '2021-05-06 01:21:54'),
(222, 'Set 3 túi đựng chăn', 'set-3-tui-dung-chan', 89000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set 3 túi đựng chăn', 'Set 3 túi đựng chăn', 'Set 3 túi đựng chăn', '2021-04-01 14:59:23', '2021-05-06 01:21:54'),
(223, 'Dây phơi quần áo thông minh', 'day-phoi-quan-ao-thong-minh', 9000, 0, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Dây phơi quần áo thông minh', 'Dây phơi quần áo thông minh', 'Dây phơi quần áo thông minh', '2021-04-01 17:01:17', '2021-05-06 01:21:54'),
(224, 'Túi rác An Lành 0.5kg', 'tui-rac-an-lanh-05kg', 17000, 0, NULL, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi rác An Lành 0.5kg', 'Túi rác An Lành 0.5kg', 'Túi rác An Lành 0.5kg', '2021-04-01 17:30:28', '2021-05-06 01:21:54'),
(225, 'Bộ chổi lau nhà tím Chefman size to', 'bo-choi-lau-nha-tim-chefman-size-to', 138000, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bộ chổi lau nhà tím Chefman size to', 'Bộ chổi lau nhà tím Chefman size to', 'Bộ chổi lau nhà tím Chefman size to', '2021-04-01 18:21:25', '2021-05-06 01:21:54'),
(226, 'Thảm xốp XPE gấp gọn 8li', 'tham-xop-xpe-gap-gon-8li', 118000, 0, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Thảm xốp XPE gấp gọn 8li', 'Thảm xốp XPE gấp gọn 8li', 'Thảm xốp XPE gấp gọn 8li', '2021-04-01 18:34:10', '2021-05-06 01:21:54'),
(227, 'Bọc máy giặt cửa trên', 'boc-may-giat-cua-tren', 32000, 0, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bọc máy giặt cửa trên', 'Bọc máy giặt cửa trên', 'Bọc máy giặt cửa trên', '2021-04-01 18:56:46', '2021-05-06 01:21:54'),
(228, 'Bọc máy giặt cửa trước', 'boc-may-giat-cua-truoc', 32000, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bọc máy giặt cửa trước', 'Bọc máy giặt cửa trước', 'Bọc máy giặt cửa trước', '2021-04-01 18:56:58', '2021-05-06 01:21:54'),
(229, 'Bạt phủ xe máy', 'bat-phu-xe-may', 29000, 0, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bạt phủ xe máy', 'Bạt phủ xe máy', 'Bạt phủ xe máy', '2021-04-01 19:03:27', '2021-05-06 01:21:54'),
(230, 'Đèn bắt muối ánh sáng xanh', 'den-bat-muoi-anh-sang-xanh', 32000, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Đèn bắt muối ánh sáng xanh', 'Đèn bắt muối ánh sáng xanh', 'Đèn bắt muối ánh sáng xanh', '2021-04-01 20:30:39', '2021-05-06 01:21:54'),
(231, 'Túi lọc rác bồn rửa (100c/túi)', 'tui-loc-rac-bon-rua-100ctui', 20000, 0, NULL, NULL, 184, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi lọc rác bồn rửa (100c/túi)', 'Túi lọc rác bồn rửa (100c/túi)', 'Túi lọc rác bồn rửa (100c/túi)', '2021-04-03 19:33:26', '2021-05-06 01:21:54'),
(232, 'Set mũ kèm khẩu trang nữ', 'set-mu-kem-khau-trang-nu', 29000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set mũ kèm khẩu trang nữ', 'Set mũ kèm khẩu trang nữ', 'Set mũ kèm khẩu trang nữ', '2021-04-03 19:42:13', '2021-05-06 01:21:54'),
(233, 'Cán chổi tự vắt thông minh', 'can-choi-tu-vat-thong-min', 42000, 0, NULL, NULL, 73, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Cán chổi tự vắt thông minh', 'Cán chổi tự vắt thông minh', 'Cán chổi tự vắt thông minh', '2021-04-04 12:01:48', '2021-05-06 01:21:54'),
(234, 'Máy xay dâu Meet Juice', 'may-xay-dau-meet-juice', 205000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Máy xay dâu Meet Juice', 'Máy xay dâu Meet Juice', 'Máy xay dâu Meet Juice', '2021-04-04 12:04:59', '2021-05-06 01:21:54'),
(235, 'Bàn là hơi nước Sokany 3060', 'ban-la-hoi-nuoc-sokany-3060', 264000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bàn là hơi nước Sokany 3060', 'Bàn là hơi nước Sokany 3060', 'Bàn là hơi nước Sokany 3060', '2021-04-04 12:05:38', '2021-05-06 01:21:54'),
(236, 'Móc 9 lỗ', 'moc-9-lo', 6000, 0, NULL, NULL, 1487, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Móc 9 lỗ', 'Móc 9 lỗ', 'Móc 9 lỗ', '2021-04-04 12:12:29', '2021-05-06 01:21:54'),
(237, 'Bọc thực phẩm gấu (100c/túi)', 'boc-thuc-pham-gau-100ctui', 18000, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Bọc thực phẩm gấu (100c/túi)', 'Bọc thực phẩm gấu (100c/túi)', 'Bọc thực phẩm gấu (100c/túi)', '2021-04-04 12:18:04', '2021-05-06 01:21:54'),
(238, 'Máy xay Osaka hồng nắp nâu', 'may-xay-osaka-hong-nap-nau', 122000, 0, NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Máy xay Osaka hồng nắp nâu', 'Máy xay Osaka hồng nắp nâu', 'Máy xay Osaka hồng nắp nâu', '2021-04-04 14:01:02', '2021-05-06 01:21:54'),
(239, 'Máy xoăn tóc hồng Vivodo & Voguo', 'may-xoan-toc-hong-vivodo-voguo', 122000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Máy xoăn tóc hồng Vivodo & Voguo', 'Máy xoăn tóc hồng Vivodo & Voguo', 'Máy xoăn tóc hồng Vivodo & Voguo', '2021-04-04 14:05:57', '2021-05-06 01:21:54'),
(240, 'Bình nhựa detox pongdang 1000ml', 'binh-nhua-detox-pongdang-1000ml', 19000, 0, NULL, NULL, 300, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bình nhựa detox pongdang 1000ml', 'Bình nhựa detox pongdang 1000ml', 'Bình nhựa detox pongdang 1000ml', '2021-04-04 14:07:49', '2021-05-06 01:21:54'),
(241, 'Xốp chặn cửa tròn', 'xop-chan-cua-tron', 19000, 0, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Xốp chặn cửa tròn', 'Xốp chặn cửa tròn', 'Xốp chặn cửa tròn', '2021-04-04 14:10:20', '2021-05-06 01:21:54'),
(242, 'Khăn lau zigzag 2 mặt (set 10c/túi)', 'khan-lau-zigzag-2-mat-set-10ctui', 15000, 0, NULL, NULL, 348, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Khăn lau zigzag 2 mặt (set 10c/túi)', 'Khăn lau zigzag 2 mặt (set 10c/túi)', 'Khăn lau zigzag 2 mặt (set 10c/túi)', '2021-04-04 14:11:32', '2021-05-06 01:21:55'),
(243, 'Thắt lưng CK', 'that-lung-ck', 96000, 0, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Thắt lưng CK', 'Thắt lưng CK', 'Thắt lưng CK', '2021-04-04 14:14:23', '2021-05-06 01:21:55'),
(244, 'Túi đựng tp An Lành 0.5kg', 'tui-dung-tp-an-lanh-05kg', 28000, 0, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Túi đựng tp An Lành 0.5kg', 'Túi đựng tp An Lành 0.5kg', 'Túi đựng tp An Lành 0.5kg', '2021-04-04 14:15:51', '2021-05-06 01:21:55'),
(245, 'Set 6 cốc thủy tinh', 'set-6-coc-thuy-tinh', 30000, 0, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set 6 cốc thủy tinh', 'Set 6 cốc thủy tinh', 'Set 6 cốc thủy tinh', '2021-04-04 14:19:31', '2021-05-06 01:21:55'),
(246, 'Bình lọc dầu inox', 'binh-loc-dau-inox', 48000, 0, NULL, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bình lọc dầu inox', 'Bình lọc dầu inox', 'Bình lọc dầu inox', '2021-04-04 14:20:41', '2021-05-06 01:21:55'),
(247, 'Móc trong siêu dính', 'moc-trong-sieu-dinh', 700, 0, NULL, NULL, 2800, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Móc trong siêu dính', 'Móc trong siêu dính', 'Móc trong siêu dính', '2021-04-04 14:22:42', '2021-05-06 01:21:55'),
(248, 'Kẹp nóng inox', 'kep-nong-inox', 12000, 0, NULL, NULL, 188, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Kẹp nóng inox', 'Kẹp nóng inox', 'Kẹp nóng inox', '2021-04-04 14:25:43', '2021-05-06 01:21:55'),
(249, 'Giấy rút Sipiao VN', 'giay-rut-sipiao-vi', 88000, 0, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Giấy rút Sipiao VN', 'Giấy rút Sipiao VN', 'Giấy rút Sipiao VN', '2021-04-04 14:31:11', '2021-05-06 01:21:55'),
(250, 'Giấy vệ sinh Baihou 36c', 'giay-ve-sinh-baihou-36c', 65000, 0, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Giấy vệ sinh Baihou 36c', 'Giấy vệ sinh Baihou 36c', 'Giấy vệ sinh Baihou 36c', '2021-04-04 14:44:12', '2021-05-06 01:21:55'),
(251, 'Hộp đựng túi nilon dán tường', 'hop-dung-tui-nilon-dan-tuong', 29000, 0, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Hộp đựng túi nilon dán tường', 'Hộp đựng túi nilon dán tường', 'Hộp đựng túi nilon dán tường', '2021-04-04 20:17:15', '2021-05-06 01:21:55'),
(252, 'Khẩu trang 4 lớp OTC', 'khau-trang-4-lop-otc', 23000, 0, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Khẩu trang 4 lớp OTC', 'Khẩu trang 4 lớp OTC', 'Khẩu trang 4 lớp OTC', '2021-04-06 20:51:22', '2021-05-06 01:21:55'),
(253, 'Giấy vệ sinh bịch 50 cuộn TQ', 'giay-ve-sinh-bich-50-cuon-tq', 118000, 0, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Giấy vệ sinh bịch 50 cuộn TQ', 'Giấy vệ sinh bịch 50 cuộn TQ', 'Giấy vệ sinh bịch 50 cuộn TQ', '2021-04-06 20:56:36', '2021-05-06 01:21:55'),
(254, 'Máy xay cầm tay Honguo', 'may-xay-cam-tay-honguo', 89000, 0, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 13, 0, 'PRODUCT', 1, 1, 9999, 'vi', 'Máy xay cầm tay Honguo', 'Máy xay cầm tay Honguo', 'Máy xay cầm tay Honguo', '2021-04-08 16:02:26', '2021-05-06 01:21:55'),
(255, 'Bóng điện NLMT 16.5*9', 'bong-dien-nlmt-1659', 55000, 0, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bóng điện NLMT 16.5*9', 'Bóng điện NLMT 16.5*9', 'Bóng điện NLMT 16.5*9', '2021-04-10 21:18:42', '2021-05-06 01:54:39'),
(256, 'Vắt cam lúa mạch Ecoco', 'vat-cam-lua-mach-ecoco', 64000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Vắt cam lúa mạch Ecoco', 'Vắt cam lúa mạch Ecoco', 'Vắt cam lúa mạch Ecoco', '2021-04-14 19:01:42', '2021-05-06 02:15:29'),
(257, 'Set 3 túi đựng mỹ phẩm Givenchy', 'set-3-tui-dung-my-pham-givenchy', 55000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set 3 túi đựng mỹ phẩm Givenchy', 'Set 3 túi đựng mỹ phẩm Givenchy', 'Set 3 túi đựng mỹ phẩm Givenchy', '2021-04-14 19:02:04', '2021-05-06 01:21:55'),
(258, 'Bộ chổi lau nhà tự vắt loại to', 'bo-choi-lau-nha-tu-vat-loai-to', 120000, 0, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bộ chổi lau nhà tự vắt loại to', 'Bộ chổi lau nhà tự vắt loại to', 'Bộ chổi lau nhà tự vắt loại to', '2021-04-17 13:41:22', '2021-05-06 01:21:55'),
(259, 'Thớt inox Su304', 'thot-inox-su304', 56000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Thớt inox Su304', 'Thớt inox Su304', 'Thớt inox Su304', '2021-04-18 13:01:51', '2021-05-06 01:21:55'),
(260, 'Cọ xoong Hàn Quốc', 'co-xoong-han-quoc', 20000, 0, NULL, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Cọ xoong Hàn Quốc', 'Cọ xoong Hàn Quốc', 'Cọ xoong Hàn Quốc', '2021-04-18 17:26:19', '2021-05-06 01:21:55'),
(261, 'Tạp dề thỏ', 'tap-de-tho', 21000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Tạp dề thỏ', 'Tạp dề thỏ', 'Tạp dề thỏ', '2021-04-19 13:44:28', '2021-05-06 01:21:55'),
(262, 'Vỉ hấp xôi xòe inox', 'vi-hap-xoi-xoe-inox', 28000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Vỉ hấp xôi xòe inox', 'Vỉ hấp xôi xòe inox', 'Vỉ hấp xôi xòe inox', '2021-04-19 18:26:43', '2021-05-06 01:21:55'),
(263, 'Bọc máy giặt cửa trên loại dày', 'boc-may-giat-cua-tren-loai-day', 40000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bọc máy giặt cửa trên loại dày', 'Bọc máy giặt cửa trên loại dày', 'Bọc máy giặt cửa trên loại dày', '2021-04-25 17:22:54', '2021-05-06 01:21:55'),
(264, 'Bọc máy giặt cửa trước loại dày', 'boc-may-giat-cua-truoc-loai-day', 40000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bọc máy giặt cửa trước loại dày', 'Bọc máy giặt cửa trước loại dày', 'Bọc máy giặt cửa trước loại dày', '2021-04-25 17:23:10', '2021-05-06 01:21:55'),
(265, 'Bộ đồ chơi ghép gỗ', 'bo-do-choi-ghep-go', 93000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Bộ đồ chơi ghép gỗ', 'Bộ đồ chơi ghép gỗ', 'Bộ đồ chơi ghép gỗ', '2021-04-25 17:24:31', '2021-05-06 01:21:55'),
(266, 'Set thìa dĩa bò sữa', 'set-thia-dia-bo-sua', 27000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Set thìa dĩa bò sữa', 'Set thìa dĩa bò sữa', 'Set thìa dĩa bò sữa', '2021-05-03 19:58:05', '2021-05-06 01:21:55'),
(267, 'Rổ nhựa đựng bát đa năng', 'ro-nhua-dung-bat-da-nang', 44000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Rổ nhựa đựng bát đa năng', 'Rổ nhựa đựng bát đa năng', 'Rổ nhựa đựng bát đa năng', '2021-05-04 12:59:39', '2021-05-06 01:21:55'),
(268, 'Khuôn kem silicon', 'khuon-kem-silicon', 15000, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, 1, 0, 'PRODUCT', 1, 0, 9999, 'vi', 'Khuôn kem silicon', 'Khuôn kem silicon', 'Khuôn kem silicon', '2021-05-04 13:02:36', '2021-05-06 01:31:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_sessions`
--

CREATE TABLE `product_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_create` int(11) DEFAULT NULL,
  `import_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `amount_export` int(11) NOT NULL DEFAULT '0',
  `price` int(11) DEFAULT NULL,
  `price_in` int(11) DEFAULT NULL,
  `revenue` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_sessions`
--

INSERT INTO `product_sessions` (`id`, `agency_id`, `user_id`, `user_create`, `import_id`, `order_id`, `product_id`, `amount`, `amount_export`, `price`, `price_in`, `revenue`, `type`, `created_at`, `updated_at`) VALUES
(14, 2, NULL, 13, 7, NULL, 12, 71, 0, NULL, 23000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(15, 2, NULL, 13, 7, NULL, 13, 14, 0, NULL, 22000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(16, 2, NULL, 13, 7, NULL, 14, 9, 0, NULL, 18000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(17, 2, NULL, 13, 7, NULL, 15, 18, 0, NULL, 11000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(18, 2, NULL, 13, 7, NULL, 16, 53, 1, NULL, 17500, NULL, 'import', '2021-03-14 02:59:38', '2021-04-02 00:41:55'),
(19, 2, NULL, 13, 7, NULL, 17, 30, 0, NULL, 11000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(20, 2, NULL, 13, 7, NULL, 18, 13, 0, NULL, 35000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(21, 2, NULL, 13, 7, NULL, 19, 10, 0, NULL, 12000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(22, 2, NULL, 13, 7, NULL, 20, 21, 0, NULL, 31000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(23, 2, NULL, 13, 7, NULL, 21, 82, 0, NULL, 7500, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(24, 2, NULL, 13, 7, NULL, 22, 12, 0, NULL, 13000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(25, 2, NULL, 13, 7, NULL, 23, 77, 0, NULL, 6500, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(26, 2, NULL, 13, 7, NULL, 24, 17, 0, NULL, 6000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(27, 2, NULL, 13, 7, NULL, 25, 13, 0, NULL, 10000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(28, 2, NULL, 13, 7, NULL, 26, 8, 0, NULL, 7000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(29, 2, NULL, 13, 7, NULL, 27, 8, 1, NULL, 38000, NULL, 'import', '2021-03-14 02:59:38', '2021-04-24 19:50:26'),
(30, 2, NULL, 13, 7, NULL, 28, 120, 30, NULL, 13000, NULL, 'import', '2021-03-14 02:59:38', '2021-04-02 02:24:11'),
(31, 2, NULL, 13, 7, NULL, 29, 27, 0, NULL, 60000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(32, 2, NULL, 13, 7, NULL, 30, 59, 0, NULL, 12000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(33, 2, NULL, 13, 7, NULL, 31, 18, 0, NULL, 12000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(34, 2, NULL, 13, 7, NULL, 32, 118, 0, NULL, 6500, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(35, 2, NULL, 13, 7, NULL, 33, 3, 0, NULL, 42000, NULL, 'import', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(36, 2, NULL, 13, 8, NULL, 34, 46, 0, NULL, 19000, NULL, 'import', '2021-04-01 22:10:17', '2021-04-01 22:10:17'),
(37, 2, NULL, 13, 8, NULL, 35, 35, 3, NULL, 38500, NULL, 'import', '2021-04-01 22:10:17', '2021-04-24 19:50:26'),
(38, 2, NULL, 13, 8, NULL, 36, 10, 1, NULL, 38000, NULL, 'import', '2021-04-01 22:10:17', '2021-04-02 00:41:55'),
(39, 2, NULL, 13, 8, NULL, 37, 7, 0, NULL, 60000, NULL, 'import', '2021-04-01 22:10:17', '2021-04-01 22:10:17'),
(40, 2, NULL, 13, 8, NULL, 38, 19, 0, NULL, 16000, NULL, 'import', '2021-04-01 22:10:17', '2021-04-01 22:10:17'),
(41, 2, NULL, 13, 8, NULL, 39, 2, 0, NULL, 65000, NULL, 'import', '2021-04-01 22:10:17', '2021-04-01 22:10:17'),
(42, 2, NULL, 13, 8, NULL, 40, 4, 0, NULL, 134000, NULL, 'import', '2021-04-01 22:10:17', '2021-04-01 22:10:17'),
(43, 2, NULL, 13, 8, NULL, 41, 26, 0, NULL, 59000, NULL, 'import', '2021-04-01 22:10:17', '2021-04-01 22:10:17'),
(44, 2, NULL, 13, 8, NULL, 42, 18, 18, NULL, 70000, NULL, 'import', '2021-04-01 22:10:17', '2021-04-08 22:26:49'),
(45, 2, NULL, 13, 8, NULL, 43, 23, 0, NULL, 79000, NULL, 'import', '2021-04-01 22:10:17', '2021-04-01 22:10:17'),
(46, 2, NULL, 13, 8, NULL, 44, 30, 0, NULL, 48500, NULL, 'import', '2021-04-01 22:10:17', '2021-04-01 22:10:17'),
(47, 2, NULL, 13, 9, NULL, 39, 35, 0, NULL, 54000, NULL, 'import', '2021-04-01 22:21:45', '2021-04-01 22:21:45'),
(48, 2, NULL, 13, 9, NULL, 45, 14, 0, NULL, 64000, NULL, 'import', '2021-04-01 22:21:45', '2021-04-01 22:21:45'),
(49, 2, NULL, 13, 9, NULL, 46, 5, 0, NULL, 64000, NULL, 'import', '2021-04-01 22:21:45', '2021-04-01 22:21:45'),
(50, 2, NULL, 13, 9, NULL, 47, 26, 1, NULL, 75000, NULL, 'import', '2021-04-01 22:21:45', '2021-04-05 20:41:04'),
(51, 2, NULL, 13, 9, NULL, 48, 25, 0, NULL, 69000, NULL, 'import', '2021-04-01 22:21:45', '2021-04-01 22:21:45'),
(52, 2, NULL, 13, 10, NULL, 49, 12, 0, NULL, 69000, NULL, 'import', '2021-04-01 22:46:13', '2021-04-01 22:46:13'),
(53, 2, NULL, 13, 10, NULL, 50, 18, 0, NULL, 60000, NULL, 'import', '2021-04-01 22:46:13', '2021-04-01 22:46:13'),
(54, 2, NULL, 13, 10, NULL, 51, 39, 0, NULL, 19000, NULL, 'import', '2021-04-01 22:46:13', '2021-04-01 22:46:13'),
(55, 2, NULL, 13, 10, NULL, 52, 6, 0, NULL, 33000, NULL, 'import', '2021-04-01 22:46:13', '2021-04-01 22:46:13'),
(56, 2, NULL, 13, 10, NULL, 53, 20, 0, NULL, 47000, NULL, 'import', '2021-04-01 22:46:13', '2021-04-01 22:46:13'),
(57, 2, NULL, 13, 10, NULL, 54, 11, 4, NULL, 41000, NULL, 'import', '2021-04-01 22:46:13', '2021-04-17 20:18:24'),
(58, 2, NULL, 13, 10, NULL, 55, 6, 0, NULL, 25000, NULL, 'import', '2021-04-01 22:46:13', '2021-04-01 22:46:13'),
(59, 2, NULL, 13, 10, NULL, 56, 34, 3, NULL, 28500, NULL, 'import', '2021-04-01 22:46:13', '2021-04-24 19:50:26'),
(60, 2, NULL, 13, 10, NULL, 57, 8, 0, NULL, 20500, NULL, 'import', '2021-04-01 22:46:13', '2021-04-01 22:46:13'),
(61, 2, NULL, 13, 11, NULL, 53, 234, 0, NULL, 42000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(62, 2, NULL, 13, 11, NULL, 58, 12, 11, NULL, 28000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-05 20:41:04'),
(63, 2, NULL, 13, 11, NULL, 59, 16, 0, NULL, 62000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(64, 2, NULL, 13, 11, NULL, 60, 140, 71, NULL, 17000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-22 23:22:19'),
(65, 2, NULL, 13, 11, NULL, 61, 53, 0, NULL, 93000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(66, 2, NULL, 13, 11, NULL, 62, 96, 1, NULL, 11000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-02 03:28:58'),
(67, 2, NULL, 13, 11, NULL, 63, 69, 0, NULL, 11000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(68, 2, NULL, 13, 11, NULL, 64, 67, 0, NULL, 12000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(69, 2, NULL, 13, 11, NULL, 65, 50, 0, NULL, 12000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(70, 2, NULL, 13, 11, NULL, 66, 15, 15, NULL, 9000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-02 03:28:58'),
(71, 2, NULL, 13, 11, NULL, 67, 19, 3, NULL, 42500, NULL, 'import', '2021-04-01 23:21:10', '2021-04-24 19:50:26'),
(72, 2, NULL, 13, 11, NULL, 68, 50, 0, NULL, 41000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(73, 2, NULL, 13, 11, NULL, 69, 4, 0, NULL, 38000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(74, 2, NULL, 13, 11, NULL, 70, 29, 0, NULL, 34000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(75, 2, NULL, 13, 11, NULL, 71, 10, 0, NULL, 22000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(76, 2, NULL, 13, 11, NULL, 72, 128, 0, NULL, 9500, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(77, 2, NULL, 13, 11, NULL, 73, 50, 0, NULL, 16000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(78, 2, NULL, 13, 11, NULL, 74, 114, 0, NULL, 10500, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(79, 2, NULL, 13, 11, NULL, 75, 28, 0, NULL, 6500, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(80, 2, NULL, 13, 11, NULL, 76, 195, 7, NULL, 21000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-22 23:22:19'),
(81, 2, NULL, 13, 11, NULL, 77, 22, 1, NULL, 11000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-02 03:28:58'),
(82, 2, NULL, 13, 11, NULL, 78, 26, 2, NULL, 12000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-24 19:50:26'),
(83, 2, NULL, 13, 11, NULL, 79, 27, 0, NULL, 5000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(84, 2, NULL, 13, 11, NULL, 80, 179, 104, NULL, 27000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-06 18:52:34'),
(85, 2, NULL, 13, 11, NULL, 81, 26, 0, NULL, 67000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(86, 2, NULL, 13, 11, NULL, 33, 2, 0, NULL, 42000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(87, 2, NULL, 13, 11, NULL, 82, 60, 33, NULL, 16500, NULL, 'import', '2021-04-01 23:21:10', '2021-04-09 03:23:02'),
(88, 2, NULL, 13, 11, NULL, 83, 88, 10, NULL, 14500, NULL, 'import', '2021-04-01 23:21:10', '2021-04-22 23:22:19'),
(89, 2, NULL, 13, 11, NULL, 84, 91, 41, NULL, 25000, NULL, 'import', '2021-04-01 23:21:10', '2021-05-03 02:21:35'),
(90, 2, NULL, 13, 11, NULL, 85, 7, 0, NULL, 185000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(91, 2, NULL, 13, 11, NULL, 86, 41, 1, NULL, 7708, NULL, 'import', '2021-04-01 23:21:10', '2021-04-24 20:25:39'),
(92, 2, NULL, 13, 11, NULL, 87, 40, 1, NULL, 11875, NULL, 'import', '2021-04-01 23:21:10', '2021-04-24 20:25:39'),
(93, 2, NULL, 13, 11, NULL, 88, 14, 0, NULL, 42000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(94, 2, NULL, 13, 11, NULL, 89, 209, 0, NULL, 4500, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(95, 2, NULL, 13, 11, NULL, 90, 18, 0, NULL, 79000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(96, 2, NULL, 13, 11, NULL, 91, 66, 31, NULL, 15000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-05 20:41:04'),
(97, 2, NULL, 13, 11, NULL, 92, 15, 2, NULL, 44000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-08 19:52:07'),
(98, 2, NULL, 13, 11, NULL, 93, 42, 0, NULL, 29000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(99, 2, NULL, 13, 11, NULL, 94, 57, 1, NULL, 15000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-07 04:03:13'),
(100, 2, NULL, 13, 11, NULL, 95, 16, 0, NULL, 55000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(101, 2, NULL, 13, 11, NULL, 96, 13, 0, NULL, 45000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(102, 2, NULL, 13, 11, NULL, 97, 17, 10, NULL, 10000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-02 01:27:00'),
(103, 2, NULL, 13, 11, NULL, 98, 21, 0, NULL, 38000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(104, 2, NULL, 13, 11, NULL, 99, 78, 0, NULL, 20000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(105, 2, NULL, 13, 11, NULL, 100, 79, 2, NULL, 18000, NULL, 'import', '2021-04-01 23:21:10', '2021-04-11 01:28:10'),
(106, 2, NULL, 13, 11, NULL, 101, 57, 9, NULL, 25000, NULL, 'import', '2021-04-01 23:21:10', '2021-05-04 03:00:57'),
(107, 4, NULL, 13, 12, NULL, 97, 98, 0, NULL, 8000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(108, 4, NULL, 13, 12, NULL, 102, 16, 0, NULL, 38500, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(109, 4, NULL, 13, 12, NULL, 103, 72, 3, NULL, 21000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-24 19:50:26'),
(110, 4, NULL, 13, 12, NULL, 104, 87, 0, NULL, 6000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(111, 4, NULL, 13, 12, NULL, 105, 11, 0, NULL, 40000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(112, 4, NULL, 13, 12, NULL, 106, 2, 2, NULL, 13000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-05 00:55:13'),
(113, 4, NULL, 13, 12, NULL, 107, 13, 0, NULL, 77000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(114, 4, NULL, 13, 12, NULL, 108, 11, 2, NULL, 42000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-05 20:41:04'),
(115, 4, NULL, 13, 12, NULL, 109, 36, 0, NULL, 40000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(116, 4, NULL, 13, 12, NULL, 110, 14, 0, NULL, 34000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(117, 4, NULL, 13, 12, NULL, 111, 10, 0, NULL, 16000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(118, 4, NULL, 13, 12, NULL, 112, 55, 0, NULL, 15000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(119, 4, NULL, 13, 12, NULL, 113, 58, 1, NULL, 12000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(120, 4, NULL, 13, 12, NULL, 114, 96, 0, NULL, 22000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(121, 4, NULL, 13, 12, NULL, 115, 67, 0, NULL, 25000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(122, 4, NULL, 13, 12, NULL, 116, 42, 0, NULL, 10500, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(123, 4, NULL, 13, 12, NULL, 117, 88, 0, NULL, 17000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(124, 4, NULL, 13, 12, NULL, 119, 3, 0, NULL, 20000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(125, 4, NULL, 13, 12, NULL, 120, 86, 0, NULL, 15000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(126, 4, NULL, 13, 12, NULL, 122, 83, 0, NULL, 12000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(127, 4, NULL, 13, 12, NULL, 121, 96, 0, NULL, 12000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(128, 4, NULL, 13, 12, NULL, 123, 16, 0, NULL, 61000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(129, 4, NULL, 13, 12, NULL, 124, 59, 0, NULL, 6500, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(130, 4, NULL, 13, 12, NULL, 125, 2, 0, NULL, 72000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(131, 4, NULL, 13, 12, NULL, 126, 23, 0, NULL, 6500, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(132, 4, NULL, 13, 12, NULL, 127, 1800, 0, NULL, 10000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(133, 4, NULL, 13, 12, NULL, 128, 48, 5, NULL, 4500, NULL, 'import', '2021-04-01 23:53:06', '2021-04-08 19:06:06'),
(134, 4, NULL, 13, 12, NULL, 129, 50, 0, NULL, 4000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(135, 4, NULL, 13, 12, NULL, 130, 90, 0, NULL, 10500, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(136, 4, NULL, 13, 12, NULL, 131, 94, 10, NULL, 38000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(137, 4, NULL, 13, 12, NULL, 29, 10, 0, NULL, 60000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(138, 4, NULL, 13, 12, NULL, 133, 10, 0, NULL, 42000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-04 03:05:32'),
(139, 4, NULL, 13, 12, NULL, 134, 8, 2, NULL, 95000, NULL, 'import', '2021-04-01 23:53:06', '2021-04-24 20:25:39'),
(140, 4, NULL, 13, 12, NULL, 135, 56, 22, NULL, 20500, NULL, 'import', '2021-04-01 23:53:06', '2021-05-04 03:00:57'),
(141, 4, NULL, 13, 12, NULL, 136, 50, 0, NULL, 11500, NULL, 'import', '2021-04-01 23:53:07', '2021-04-04 03:05:32'),
(142, 4, NULL, 13, 12, NULL, 137, 8, 0, NULL, 39000, NULL, 'import', '2021-04-01 23:53:07', '2021-04-04 03:05:32'),
(143, 4, NULL, 13, 12, NULL, 138, 25, 25, NULL, 29000, NULL, 'import', '2021-04-01 23:53:07', '2021-04-04 03:05:32'),
(144, 4, NULL, 13, 12, NULL, 139, 24, 1, NULL, 20000, NULL, 'import', '2021-04-01 23:53:07', '2021-04-04 21:40:48'),
(145, 4, NULL, 13, 12, NULL, 140, 917, 187, NULL, 19900, NULL, 'import', '2021-04-01 23:53:07', '2021-05-04 03:00:57'),
(146, 4, NULL, 13, 12, NULL, 141, 52, 0, NULL, 23000, NULL, 'import', '2021-04-01 23:53:07', '2021-04-04 03:05:32'),
(147, 4, NULL, 13, 12, NULL, 142, 99, 1, NULL, 13000, NULL, 'import', '2021-04-01 23:53:07', '2021-05-04 03:04:07'),
(148, 4, NULL, 13, 12, NULL, 143, 4, 0, NULL, 57000, NULL, 'import', '2021-04-01 23:53:07', '2021-04-04 03:05:32'),
(149, 4, NULL, 13, 12, NULL, 144, 21, 0, NULL, 74000, NULL, 'import', '2021-04-01 23:53:07', '2021-04-04 03:05:32'),
(150, 4, NULL, 13, 12, NULL, 145, 25, 0, NULL, 107000, NULL, 'import', '2021-04-01 23:53:07', '2021-04-04 03:05:32'),
(151, 4, NULL, 13, 12, NULL, 146, 56, 56, NULL, 67000, NULL, 'import', '2021-04-01 23:53:07', '2021-04-18 19:24:57'),
(152, 4, NULL, 13, 12, NULL, 147, 76, 21, NULL, 17500, NULL, 'import', '2021-04-01 23:53:07', '2021-04-06 04:28:53'),
(153, 4, NULL, 13, 12, NULL, 148, 20, 0, NULL, 54000, NULL, 'import', '2021-04-01 23:53:07', '2021-04-04 03:05:32'),
(154, 4, NULL, 13, 12, NULL, 150, 41, 0, NULL, 16000, NULL, 'import', '2021-04-01 23:53:07', '2021-04-04 03:05:32'),
(155, 4, NULL, 13, 12, NULL, 151, 40, 30, NULL, 16500, NULL, 'import', '2021-04-01 23:53:07', '2021-04-04 03:05:32'),
(156, 4, NULL, 13, 12, NULL, 152, 32, 0, NULL, 59000, NULL, 'import', '2021-04-01 23:53:07', '2021-04-04 03:05:32'),
(157, 4, NULL, 13, 12, NULL, 153, 9, 0, NULL, 70000, NULL, 'import', '2021-04-01 23:53:07', '2021-05-06 01:55:46'),
(158, 4, NULL, 13, 12, NULL, 154, 40, 0, NULL, 38500, NULL, 'import', '2021-04-01 23:53:07', '2021-04-04 03:05:32'),
(159, 4, NULL, 13, 12, NULL, 155, 26, 4, NULL, 63000, NULL, 'import', '2021-04-01 23:53:07', '2021-04-05 20:41:04'),
(160, 2, NULL, 13, 13, NULL, 155, 60, 0, NULL, 58000, NULL, 'import', '2021-04-02 00:00:30', '2021-04-02 00:00:30'),
(161, 2, NULL, 13, 13, NULL, 156, 90, 0, NULL, 26000, NULL, 'import', '2021-04-02 00:00:30', '2021-04-02 00:00:30'),
(162, 2, NULL, 13, 13, NULL, 157, 33, 0, NULL, 13000, NULL, 'import', '2021-04-02 00:00:30', '2021-04-02 00:00:30'),
(163, 2, NULL, 13, 13, NULL, 158, 30, 0, NULL, 88000, NULL, 'import', '2021-04-02 00:00:30', '2021-04-02 00:00:30'),
(164, 2, NULL, 13, 13, NULL, 159, 17, 0, NULL, 36000, NULL, 'import', '2021-04-02 00:00:30', '2021-04-02 00:00:30'),
(165, 2, NULL, 13, 13, NULL, 160, 33, 0, NULL, 10700, NULL, 'import', '2021-04-02 00:00:30', '2021-04-02 00:00:30'),
(166, 2, NULL, 13, 13, NULL, 161, 24, 0, NULL, 71000, NULL, 'import', '2021-04-02 00:00:30', '2021-04-02 00:00:30'),
(167, 2, NULL, 13, 13, NULL, 162, 18, 3, NULL, 52000, NULL, 'import', '2021-04-02 00:00:30', '2021-04-05 20:41:04'),
(168, 2, NULL, 13, 13, NULL, 163, 27, 3, NULL, 31000, NULL, 'import', '2021-04-02 00:00:30', '2021-04-17 21:08:55'),
(169, 2, NULL, 13, 13, NULL, 164, 10, 1, NULL, 42500, NULL, 'import', '2021-04-02 00:00:30', '2021-04-07 04:03:13'),
(170, 2, NULL, 13, 13, NULL, 165, 1328, 1328, NULL, 660, NULL, 'import', '2021-04-02 00:00:30', '2021-04-08 21:25:53'),
(171, 2, NULL, 13, 13, NULL, 166, 6, 0, NULL, 29000, NULL, 'import', '2021-04-02 00:00:30', '2021-04-02 00:00:30'),
(172, 5, NULL, 13, 14, NULL, 223, 50, 0, NULL, 6800, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(173, 5, NULL, 13, 14, NULL, 167, 13, 0, NULL, 19000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(174, 5, NULL, 13, 14, NULL, 168, 98, 0, NULL, 25000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(175, 5, NULL, 13, 14, NULL, 169, 59, 59, NULL, 54000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(176, 5, NULL, 13, 14, NULL, 170, 3, 0, NULL, 29000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(177, 5, NULL, 13, 14, NULL, 171, 53, 0, NULL, 23000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(178, 5, NULL, 13, 14, NULL, 172, 24, 1, NULL, 11000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-09 03:23:02'),
(179, 5, NULL, 13, 14, NULL, 173, 24, 5, NULL, 11000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-24 20:25:39'),
(180, 5, NULL, 13, 14, NULL, 174, 26, 0, NULL, 39500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(181, 5, NULL, 13, 14, NULL, 177, 8, 8, NULL, 19000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(182, 5, NULL, 13, 14, NULL, 178, 18, 0, NULL, 10500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(183, 5, NULL, 13, 14, NULL, 182, 4, 0, NULL, 42000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(184, 5, NULL, 13, 14, NULL, 183, 8, 0, NULL, 50500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(185, 5, NULL, 13, 14, NULL, 184, 7, 0, NULL, 50000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(186, 5, NULL, 13, 14, NULL, 185, 40, 0, NULL, 5200, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(187, 5, NULL, 13, 14, NULL, 32, 100, 0, NULL, 6500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(188, 5, NULL, 13, 14, NULL, 188, 19, 0, NULL, 57000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(189, 5, NULL, 13, 14, NULL, 189, 14, 1, NULL, 28500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-05 20:41:04'),
(190, 5, NULL, 13, 14, NULL, 190, 16, 0, NULL, 22500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(191, 5, NULL, 13, 14, NULL, 191, 14, 0, NULL, 58000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(192, 5, NULL, 13, 14, NULL, 192, 44, 0, NULL, 84000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(193, 5, NULL, 13, 14, NULL, 193, 7, 0, NULL, 32000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(194, 5, NULL, 13, 14, NULL, 194, 58, 0, NULL, 11500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(195, 5, NULL, 13, 14, NULL, 195, 48, 30, NULL, 17500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(196, 5, NULL, 13, 14, NULL, 196, 80, 0, NULL, 40500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(197, 5, NULL, 13, 14, NULL, 197, 48, 0, NULL, 23000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(198, 5, NULL, 13, 14, NULL, 198, 60, 10, NULL, 16000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(199, 5, NULL, 13, 14, NULL, 199, 16, 0, NULL, 29000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(200, 5, NULL, 13, 14, NULL, 200, 130, 1, NULL, 19000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 21:40:48'),
(201, 5, NULL, 13, 14, NULL, 201, 13, 0, NULL, 126000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(202, 5, NULL, 13, 14, NULL, 202, 95, 0, NULL, 14000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(203, 5, NULL, 13, 14, NULL, 203, 167, 57, NULL, 8500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-22 23:48:44'),
(204, 5, NULL, 13, 14, NULL, 204, 44, 5, NULL, 14000, NULL, 'import', '2021-04-02 00:25:33', '2021-05-04 03:00:57'),
(205, 5, NULL, 13, 14, NULL, 205, 30, 1, NULL, 48000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-07 04:03:13'),
(206, 5, NULL, 13, 14, NULL, 206, 25, 0, NULL, 48000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(207, 5, NULL, 13, 14, NULL, 207, 121, 0, NULL, 9500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(208, 5, NULL, 13, 14, NULL, 208, 26, 1, NULL, 145000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(209, 5, NULL, 13, 14, NULL, 209, 24, 1, NULL, 67000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-05 20:41:04'),
(210, 5, NULL, 13, 14, NULL, 210, 30, 0, NULL, 4000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(211, 5, NULL, 13, 14, NULL, 211, 81, 2, NULL, 6500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-05 20:41:04'),
(212, 5, NULL, 13, 14, NULL, 212, 35, 1, NULL, 33000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-09 03:23:02'),
(213, 5, NULL, 13, 14, NULL, 213, 59, 3, NULL, 7600, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(214, 5, NULL, 13, 14, NULL, 214, 32, 0, NULL, 6000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(215, 5, NULL, 13, 14, NULL, 215, 20, 0, NULL, 10000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(216, 5, NULL, 13, 14, NULL, 216, 30, 7, NULL, 15500, NULL, 'import', '2021-04-02 00:25:33', '2021-05-01 20:59:32'),
(217, 5, NULL, 13, 14, NULL, 217, 69, 0, NULL, 4500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(218, 5, NULL, 13, 14, NULL, 218, 26, 0, NULL, 51000, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(219, 5, NULL, 13, 14, NULL, 25, 30, 0, NULL, 9500, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:51:26'),
(220, 5, NULL, 13, 14, NULL, 219, 25, 2, NULL, 10300, NULL, 'import', '2021-04-02 00:25:33', '2021-04-08 19:06:06'),
(221, 5, NULL, 13, 14, NULL, 220, 100, 2, NULL, 28500, NULL, 'import', '2021-04-02 00:25:33', '2021-05-04 03:00:57'),
(222, 5, NULL, 13, 14, NULL, 221, 1007, 400, NULL, 3919, NULL, 'import', '2021-04-02 00:25:33', '2021-04-04 02:53:17'),
(223, 3, NULL, 13, 15, NULL, 169, 120, 1, NULL, 53000, NULL, 'import', '2021-04-02 00:29:46', '2021-04-02 01:15:42'),
(224, 3, NULL, 13, 15, NULL, 222, 90, 90, NULL, 81000, NULL, 'import', '2021-04-02 00:29:46', '2021-04-02 01:15:42'),
(225, 2, NULL, 13, 16, NULL, 224, 28, 2, NULL, 14000, NULL, 'import', '2021-04-02 00:32:34', '2021-04-08 19:52:07'),
(226, NULL, 33, 13, NULL, 1, 16, 1, 0, 19000, 17500, 1500, 'export', '2021-04-02 00:41:55', '2021-04-02 00:41:55'),
(227, NULL, 33, 13, NULL, 1, 36, 1, 0, 40000, 38000, 2000, 'export', '2021-04-02 00:41:55', '2021-04-02 00:41:55'),
(228, NULL, 34, 13, NULL, 2, 60, 50, 0, 20000, 17000, 150000, 'export', '2021-04-02 00:51:20', '2021-04-02 00:51:20'),
(229, NULL, 34, 13, NULL, 2, 80, 50, 0, 30000, 27000, 150000, 'export', '2021-04-02 00:51:20', '2021-04-02 00:51:20'),
(230, NULL, 34, 13, NULL, 2, 91, 30, 0, 17000, 15000, 60000, 'export', '2021-04-02 00:51:20', '2021-04-02 00:51:20'),
(231, NULL, 34, 13, NULL, 2, 195, 30, 0, 19000, 17500, 45000, 'export', '2021-04-02 00:51:20', '2021-04-02 00:51:20'),
(232, NULL, 34, 13, NULL, 2, 140, 2, 0, 23000, 19900, 6200, 'export', '2021-04-02 00:51:20', '2021-04-02 00:51:20'),
(233, NULL, 32, 13, NULL, 3, 198, 10, 0, 19000, 16000, 30000, 'export', '2021-04-02 00:51:56', '2021-04-02 00:51:56'),
(234, NULL, 32, 13, NULL, 4, 203, 1, 0, 10000, 8500, 1500, 'export', '2021-04-02 00:54:33', '2021-04-02 00:54:33'),
(235, NULL, 32, 13, NULL, 4, 208, 1, 0, 158000, 145000, 13000, 'export', '2021-04-02 00:54:33', '2021-04-02 00:54:33'),
(236, NULL, 14, 13, NULL, 5, 221, 300, 0, 5000, 4000, 300000, 'export', '2021-04-02 00:55:28', '2021-04-02 00:55:28'),
(238, NULL, 30, 13, NULL, 6, 222, 90, 0, 83000, 81000, 180000, 'export', '2021-04-02 01:15:42', '2021-04-02 01:15:42'),
(239, 2, NULL, 13, 17, NULL, 225, 12, 6, NULL, 125000, NULL, 'import', '2021-04-02 01:22:17', '2021-04-17 19:30:19'),
(240, NULL, 28, 13, NULL, 7, 177, 8, 0, 21000, 19000, 16000, 'export', '2021-04-02 01:27:00', '2021-04-02 01:27:00'),
(241, NULL, 28, 13, NULL, 7, 225, 5, 0, 138000, 125000, 65000, 'export', '2021-04-02 01:27:00', '2021-04-02 01:27:00'),
(242, NULL, 28, 13, NULL, 7, 97, 10, 0, 14000, 8000, 40000, 'export', '2021-04-02 01:27:00', '2021-04-02 01:27:00'),
(243, NULL, 28, 13, NULL, 7, 155, 3, 0, 68000, 58000, 15000, 'export', '2021-04-02 01:27:00', '2021-04-02 01:27:00'),
(244, NULL, 28, 13, NULL, 7, 101, 5, 0, 29000, 25000, 20000, 'export', '2021-04-02 01:27:00', '2021-04-02 01:27:00'),
(247, 2, NULL, 13, 18, NULL, 226, 5, 1, NULL, 107000, NULL, 'import', '2021-04-02 01:34:39', '2021-04-17 21:46:54'),
(248, NULL, 30, 13, NULL, 6, 169, 60, 0, 56000, 53000, 121000, 'export', '2021-04-02 01:52:58', '2021-04-02 01:52:58'),
(249, 2, NULL, 13, 19, NULL, 228, 30, 0, NULL, 28000, NULL, 'import', '2021-04-02 01:57:35', '2021-04-02 01:57:35'),
(250, 2, NULL, 13, 19, NULL, 227, 30, 10, NULL, 28000, NULL, 'import', '2021-04-02 01:57:35', '2021-04-02 02:24:11'),
(251, 9, NULL, 13, 20, NULL, 229, 100, 50, NULL, 26000, NULL, 'import', '2021-04-02 02:04:12', '2021-04-08 21:25:53'),
(252, NULL, 35, 13, NULL, 8, 227, 10, 0, 32000, 28000, 40000, 'export', '2021-04-02 02:24:11', '2021-04-02 02:24:11'),
(253, NULL, 35, 13, NULL, 8, 151, 30, 0, 19000, 16500, 75000, 'export', '2021-04-02 02:24:11', '2021-04-02 02:24:11'),
(254, NULL, 35, 13, NULL, 8, 80, 20, 0, 30000, 27000, 60000, 'export', '2021-04-02 02:24:11', '2021-04-02 02:24:11'),
(255, NULL, 35, 13, NULL, 8, 221, 100, 0, 5000, 4000, 100000, 'export', '2021-04-02 02:24:11', '2021-04-02 02:24:11'),
(256, NULL, 35, 13, NULL, 8, 82, 30, 0, 19000, 16500, 75000, 'export', '2021-04-02 02:24:11', '2021-04-02 02:24:11'),
(257, NULL, 35, 13, NULL, 8, 229, 20, 0, 29000, 26000, 60000, 'export', '2021-04-02 02:24:11', '2021-04-02 02:24:11'),
(258, NULL, 35, 13, NULL, 8, 131, 10, 0, 42000, 38000, 40000, 'export', '2021-04-02 02:24:11', '2021-04-02 02:24:11'),
(259, NULL, 35, 13, NULL, 8, 28, 30, 0, 15000, 13000, 60000, 'export', '2021-04-02 02:24:11', '2021-04-02 02:24:11'),
(260, NULL, 36, 13, NULL, 9, 80, 14, 0, 29000, 27000, 28000, 'export', '2021-04-02 02:37:41', '2021-04-02 02:37:41'),
(261, NULL, 36, 13, NULL, 9, 165, 400, 0, 800, 660, 56000, 'export', '2021-04-02 02:37:41', '2021-04-02 02:37:41'),
(262, NULL, 32, 13, NULL, 10, 213, 3, 0, 9000, 7600, 4200, 'export', '2021-04-02 03:24:24', '2021-04-02 03:24:24'),
(263, NULL, 32, 13, NULL, 11, 165, 400, 0, 800, 660, 56000, 'export', '2021-04-02 03:28:58', '2021-04-02 03:28:58'),
(264, NULL, 32, 13, NULL, 11, 66, 15, 0, 10000, 9000, 15000, 'export', '2021-04-02 03:28:58', '2021-04-02 03:28:58'),
(265, NULL, 32, 13, NULL, 11, 203, 5, 0, 10000, 8500, 7500, 'export', '2021-04-02 03:28:58', '2021-04-02 03:28:58'),
(266, NULL, 32, 13, NULL, 11, 77, 1, 0, 14000, 11000, 3000, 'export', '2021-04-02 03:28:58', '2021-04-02 03:28:58'),
(267, NULL, 32, 13, NULL, 11, 62, 1, 0, 14000, 11000, 3000, 'export', '2021-04-02 03:28:58', '2021-04-02 03:28:58'),
(268, NULL, 32, 13, NULL, 11, 220, 1, 0, 33000, 28500, 4500, 'export', '2021-04-02 03:28:58', '2021-04-02 03:28:58'),
(269, NULL, 32, 13, NULL, 11, 113, 1, 0, 15000, 12000, -10500, 'export', '2021-04-02 03:28:58', '2021-04-02 03:28:58'),
(270, NULL, 32, 13, NULL, 11, 60, 1, 0, 20000, 17000, 3000, 'export', '2021-04-02 03:28:58', '2021-04-02 03:28:58'),
(271, 6, NULL, 13, 21, NULL, 230, 54, 24, NULL, 28500, NULL, 'import', '2021-04-02 03:31:05', '2021-05-01 22:57:41'),
(272, NULL, 32, 13, NULL, 12, 230, 1, 0, 33000, 28500, 4500, 'export', '2021-04-02 03:31:36', '2021-04-02 03:31:36'),
(273, NULL, 32, 13, NULL, 13, 230, 1, 0, 32000, 28500, 3500, 'export', '2021-04-03 02:15:08', '2021-04-03 02:15:08'),
(274, NULL, 32, 13, NULL, 14, 230, 1, 0, 33000, 28500, 4500, 'export', '2021-04-03 02:23:22', '2021-04-03 02:23:22'),
(275, NULL, 32, 13, NULL, 15, 138, 25, 0, 32000, 29000, 75000, 'export', '2021-04-04 01:35:44', '2021-04-04 01:35:44'),
(276, NULL, 32, 13, NULL, 15, 135, 20, 0, 22000, 20500, 30000, 'export', '2021-04-04 01:35:44', '2021-04-04 01:35:44'),
(277, NULL, 32, 13, NULL, 16, 54, 1, 0, 0, 41000, -41000, 'export', '2021-04-04 02:26:47', '2021-04-04 02:26:47'),
(278, 4, NULL, 13, 22, NULL, 231, 190, 6, NULL, 17000, NULL, 'import', '2021-04-04 02:35:21', '2021-04-24 20:25:39'),
(279, 4, NULL, 13, 23, NULL, 232, 50, 50, NULL, 26000, NULL, 'import', '2021-04-04 02:42:47', '2021-04-05 18:55:48'),
(280, NULL, 32, 13, NULL, 17, 162, 2, 0, 55000, 52000, 6000, 'export', '2021-04-04 03:31:12', '2021-04-04 03:31:12'),
(281, 10, NULL, 13, 24, NULL, 233, 80, 7, NULL, 38000, NULL, 'import', '2021-04-04 19:02:50', '2021-04-24 19:50:26'),
(282, 8, NULL, 13, 25, NULL, 235, 5, 5, NULL, 255000, NULL, 'import', '2021-04-04 19:08:19', '2021-04-04 19:28:30'),
(283, 8, NULL, 13, 25, NULL, 234, 5, 5, NULL, 195000, NULL, 'import', '2021-04-04 19:08:19', '2021-04-04 21:35:20'),
(284, 9, NULL, 13, 26, NULL, 236, 1500, 13, NULL, 3800, NULL, 'import', '2021-04-04 19:13:08', '2021-04-17 21:08:55'),
(285, 8, NULL, 13, 27, NULL, 237, 10, 10, NULL, 18000, NULL, 'import', '2021-04-04 19:21:35', '2021-04-04 19:23:10'),
(286, 8, NULL, 13, 27, NULL, 235, 5, 5, NULL, 255000, NULL, 'import', '2021-04-04 19:21:35', '2021-04-04 19:28:30'),
(287, NULL, 37, 13, NULL, 18, 60, 5, 0, 20000, 17000, 15000, 'export', '2021-04-04 19:23:10', '2021-04-04 19:23:10'),
(288, NULL, 37, 13, NULL, 18, 58, 10, 0, 32000, 28000, 40000, 'export', '2021-04-04 19:23:10', '2021-04-04 19:23:10'),
(289, NULL, 37, 13, NULL, 18, 233, 5, 0, 42000, 38000, 20000, 'export', '2021-04-04 19:23:10', '2021-04-04 19:23:10'),
(290, NULL, 37, 13, NULL, 18, 234, 5, 0, 205000, 195000, 50000, 'export', '2021-04-04 19:23:10', '2021-04-04 19:23:10'),
(291, NULL, 37, 13, NULL, 18, 231, 5, 0, 20000, 17000, 15000, 'export', '2021-04-04 19:23:10', '2021-04-04 19:23:10'),
(292, NULL, 37, 13, NULL, 18, 236, 10, 0, 6000, 3800, 22000, 'export', '2021-04-04 19:23:10', '2021-04-04 19:23:10'),
(293, NULL, 37, 13, NULL, 18, 237, 10, 0, 18000, 18000, 0, 'export', '2021-04-04 19:23:10', '2021-04-04 19:23:10'),
(294, NULL, 38, 13, NULL, 19, 235, 10, 0, 265000, 255000, 100000, 'export', '2021-04-04 19:28:30', '2021-04-04 19:28:30'),
(295, 3, NULL, 13, 28, NULL, 234, 25, 25, NULL, 192000, NULL, 'import', '2021-04-04 19:30:49', '2021-04-04 21:54:23'),
(297, 9, NULL, 13, 29, NULL, 194, 100, 0, NULL, 11500, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(298, 9, NULL, 13, 29, NULL, 209, 75, 0, NULL, 63000, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(299, 9, NULL, 13, 29, NULL, 101, 192, 0, NULL, 23500, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(300, 9, NULL, 13, 29, NULL, 238, 90, 90, NULL, 112000, NULL, 'import', '2021-04-04 21:32:11', '2021-04-26 00:19:14'),
(301, 9, NULL, 13, 29, NULL, 239, 360, 360, NULL, 112000, NULL, 'import', '2021-04-04 21:32:11', '2021-04-08 19:03:58'),
(302, 9, NULL, 13, 29, NULL, 240, 300, 2, NULL, 16000, NULL, 'import', '2021-04-04 21:32:11', '2021-04-07 03:53:33'),
(303, 9, NULL, 13, 29, NULL, 241, 98, 0, NULL, 16000, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(304, 9, NULL, 13, 29, NULL, 242, 550, 550, NULL, 11900, NULL, 'import', '2021-04-04 21:32:11', '2021-04-06 18:46:28'),
(305, 9, NULL, 13, 29, NULL, 123, 60, 0, NULL, 61000, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(306, 9, NULL, 13, 29, NULL, 243, 100, 0, NULL, 90000, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(307, 9, NULL, 13, 29, NULL, 244, 32, 0, NULL, 24500, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(308, 9, NULL, 13, 29, NULL, 224, 200, 0, NULL, 14000, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(309, 9, NULL, 13, 29, NULL, 200, 100, 0, NULL, 18700, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(310, 9, NULL, 13, 29, NULL, 245, 48, 0, NULL, 27000, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(311, 9, NULL, 13, 29, NULL, 128, 104, 0, NULL, 4500, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(312, 9, NULL, 13, 29, NULL, 246, 60, 2, NULL, 44000, NULL, 'import', '2021-04-04 21:32:11', '2021-04-24 19:50:26'),
(313, 9, NULL, 13, 29, NULL, 29, 60, 0, NULL, 60000, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(314, 9, NULL, 13, 29, NULL, 247, 15000, 15000, NULL, 415, NULL, 'import', '2021-04-04 21:32:11', '2021-05-04 19:57:31'),
(315, 9, NULL, 13, 29, NULL, 248, 188, 0, NULL, 8000, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(316, 9, NULL, 13, 29, NULL, 185, 760, 0, NULL, 5200, NULL, 'import', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(317, 9, NULL, 13, 29, NULL, 249, 42, 0, NULL, 83000, NULL, 'import', '2021-04-04 21:32:11', '2021-04-17 19:37:32'),
(319, NULL, 32, 13, NULL, 21, 200, 1, 0, 20000, 18700, 1000, 'export', '2021-04-04 21:40:48', '2021-04-04 21:40:48'),
(320, NULL, 32, 13, NULL, 21, 139, 1, 0, 22000, 20000, 2000, 'export', '2021-04-04 21:40:48', '2021-04-04 21:40:48'),
(321, 2, NULL, 13, 30, NULL, 250, 42, 0, NULL, 56000, NULL, 'import', '2021-04-04 21:44:39', '2021-04-04 21:44:39'),
(322, NULL, 32, 13, NULL, 20, 234, 25, 0, 196000, 192000, 100000, 'export', '2021-04-04 21:54:23', '2021-04-04 21:54:23'),
(323, NULL, 32, 13, NULL, 22, 230, 10, 0, 32000, 28500, 35000, 'export', '2021-04-04 23:17:19', '2021-04-04 23:17:19'),
(324, NULL, 37, 13, NULL, 18, 247, 200, 0, 700, 415, 57000, 'export', '2021-04-05 00:10:31', '2021-04-07 00:29:33'),
(325, NULL, 39, 13, NULL, 23, 238, 30, 0, 116000, 112000, 120000, 'export', '2021-04-05 00:26:06', '2021-04-05 00:26:06'),
(326, NULL, 32, 13, NULL, 24, 106, 2, 0, 15000, 13000, 4000, 'export', '2021-04-05 00:55:13', '2021-04-05 00:55:13'),
(327, 4, NULL, 13, 31, NULL, 251, 58, 3, NULL, 26000, NULL, 'import', '2021-04-05 03:18:10', '2021-04-24 19:50:26'),
(328, NULL, 40, 13, NULL, 25, 232, 50, 0, 28000, 26000, 100000, 'export', '2021-04-05 18:55:48', '2021-04-05 18:55:48'),
(329, NULL, 32, 13, NULL, 26, 230, 1, 0, 32000, 28500, 3500, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(330, NULL, 32, 13, NULL, 26, 108, 2, 0, 46000, 42000, 8000, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(331, NULL, 32, 13, NULL, 26, 189, 1, 0, 32000, 28500, 3500, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(332, NULL, 32, 13, NULL, 26, 238, 1, 0, 122000, 112000, 10000, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(333, NULL, 32, 13, NULL, 26, 155, 1, 0, 65000, 58000, 2000, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(334, NULL, 32, 13, NULL, 26, 54, 2, 0, 43000, 41000, 4000, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(335, NULL, 32, 13, NULL, 26, 242, 2, 0, 15000, 11900, 6200, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(336, NULL, 32, 13, NULL, 26, 76, 2, 0, 24000, 21000, 6000, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(337, NULL, 32, 13, NULL, 26, 211, 2, 0, 8000, 6500, 3000, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(338, NULL, 32, 13, NULL, 26, 58, 1, 0, 32000, 28000, 4000, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(339, NULL, 32, 13, NULL, 26, 91, 1, 0, 18000, 15000, 3000, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(340, NULL, 32, 13, NULL, 26, 162, 1, 0, 58000, 52000, 6000, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(341, NULL, 32, 13, NULL, 26, 103, 1, 0, 24000, 21000, 3000, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(342, NULL, 32, 13, NULL, 26, 47, 1, 0, 83000, 75000, 8000, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(343, NULL, 32, 13, NULL, 26, 251, 1, 0, 29000, 26000, 3000, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(344, NULL, 32, 13, NULL, 26, 209, 1, 0, 69000, 63000, 2000, 'export', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(345, NULL, 37, 13, NULL, 18, 147, 20, 0, 20000, 17500, 50000, 'export', '2021-04-06 00:03:53', '2021-04-06 00:03:53'),
(346, NULL, 14, 13, NULL, 27, 247, 4000, 0, 425, 415, 40000, 'export', '2021-04-06 02:28:22', '2021-04-06 02:28:22'),
(348, NULL, 32, 13, NULL, 28, 147, 1, 0, 20000, 17500, 2500, 'export', '2021-04-06 04:28:53', '2021-04-06 04:28:53'),
(349, 9, NULL, 13, 32, NULL, 242, 600, 600, NULL, 11250, NULL, 'import', '2021-04-06 18:43:27', '2021-04-06 18:46:28'),
(350, NULL, 14, 13, NULL, 27, 242, 1000, 0, 11900, 11250, 310000, 'export', '2021-04-06 18:46:28', '2021-04-06 18:46:28'),
(351, 8, NULL, 13, 33, NULL, 235, 10, 10, NULL, 255000, NULL, 'import', '2021-04-06 18:50:37', '2021-04-06 18:52:34'),
(352, NULL, 39, 13, NULL, 29, 235, 10, 0, 264000, 255000, 90000, 'export', '2021-04-06 18:52:34', '2021-04-06 18:52:34'),
(353, NULL, 39, 13, NULL, 29, 80, 20, 0, 30000, 27000, 60000, 'export', '2021-04-06 18:52:34', '2021-04-06 18:52:34'),
(354, 2, NULL, 13, 34, NULL, 252, 29, 11, NULL, 20000, NULL, 'import', '2021-04-07 03:51:52', '2021-05-03 02:21:35'),
(355, 2, NULL, 13, 35, NULL, 240, 2, 0, NULL, 16000, NULL, 'import', '2021-04-07 03:52:25', '2021-04-07 03:52:25'),
(356, NULL, 32, 13, NULL, 30, 252, 2, 0, 25000, 20000, 10000, 'export', '2021-04-07 03:53:33', '2021-04-07 03:53:33'),
(357, NULL, 32, 13, NULL, 30, 240, 2, 0, 18000, 16000, 4000, 'export', '2021-04-07 03:53:33', '2021-04-07 03:53:33'),
(358, 2, NULL, 13, 36, NULL, 253, 6, 1, NULL, 108000, NULL, 'import', '2021-04-07 03:57:36', '2021-04-07 04:03:13'),
(359, NULL, 32, 13, NULL, 31, 82, 1, 0, 20000, 16500, 3500, 'export', '2021-04-07 04:03:13', '2021-04-07 04:03:13'),
(360, NULL, 32, 13, NULL, 31, 252, 2, 0, 25000, 20000, 10000, 'export', '2021-04-07 04:03:13', '2021-04-07 04:03:13'),
(361, NULL, 32, 13, NULL, 31, 84, 5, 0, 28000, 25000, 15000, 'export', '2021-04-07 04:03:13', '2021-04-07 04:03:13'),
(362, NULL, 32, 13, NULL, 31, 54, 1, 0, 40000, 41000, -1000, 'export', '2021-04-07 04:03:13', '2021-04-07 04:03:13'),
(363, NULL, 32, 13, NULL, 31, 101, 1, 0, 30000, 23500, 5000, 'export', '2021-04-07 04:03:13', '2021-04-07 04:03:13'),
(364, NULL, 32, 13, NULL, 31, 253, 1, 0, 118000, 108000, 10000, 'export', '2021-04-07 04:03:13', '2021-04-07 04:03:13'),
(365, NULL, 32, 13, NULL, 31, 164, 1, 0, 45000, 42500, 2500, 'export', '2021-04-07 04:03:13', '2021-04-07 04:03:13'),
(366, NULL, 32, 13, NULL, 31, 94, 1, 0, 28000, 15000, 13000, 'export', '2021-04-07 04:03:13', '2021-04-07 04:03:13'),
(367, NULL, 32, 13, NULL, 31, 140, 2, 0, 25000, 19900, 10200, 'export', '2021-04-07 04:03:13', '2021-04-07 04:03:13'),
(368, NULL, 32, 13, NULL, 31, 205, 1, 0, 48000, 48000, 0, 'export', '2021-04-07 04:03:13', '2021-04-07 04:03:13'),
(369, NULL, 32, 13, NULL, 31, 249, 1, 0, 0, 83000, 7000, 'export', '2021-04-07 04:03:14', '2021-04-17 19:37:32'),
(370, 8, NULL, 13, 37, NULL, 237, 6, 0, NULL, 17000, NULL, 'import', '2021-04-07 04:23:59', '2021-04-07 04:23:59'),
(371, NULL, 17, 13, NULL, 32, 239, 360, 0, 114000, 112000, 720000, 'export', '2021-04-08 19:03:58', '2021-04-08 19:03:58'),
(372, NULL, 32, 13, NULL, 33, 219, 2, 0, 12000, 10300, 3400, 'export', '2021-04-08 19:06:06', '2021-04-08 19:06:06'),
(373, NULL, 32, 13, NULL, 33, 84, 20, 0, 28000, 25000, 60000, 'export', '2021-04-08 19:06:06', '2021-04-08 19:06:06'),
(374, NULL, 32, 13, NULL, 33, 128, 5, 0, 7000, 4500, 12500, 'export', '2021-04-08 19:06:06', '2021-04-08 19:06:06'),
(375, NULL, 23, 13, NULL, 34, 224, 2, 0, 17000, 14000, 6000, 'export', '2021-04-08 19:52:07', '2021-04-08 19:52:07'),
(376, NULL, 23, 13, NULL, 34, 92, 2, 0, 49000, 44000, 10000, 'export', '2021-04-08 19:52:07', '2021-04-08 19:52:07'),
(377, NULL, 23, 13, NULL, 34, 140, 20, 0, 23000, 19900, 62000, 'export', '2021-04-08 19:52:07', '2021-04-08 19:52:07'),
(378, 9, NULL, 13, 38, NULL, 165, 3000, 2972, NULL, 617, NULL, 'import', '2021-04-08 21:10:27', '2021-05-01 21:00:02'),
(379, 9, NULL, 13, 38, NULL, 106, 300, 300, NULL, 12000, NULL, 'import', '2021-04-08 21:10:27', '2021-04-17 19:29:38'),
(380, NULL, 30, 13, NULL, 35, 229, 30, 0, 28000, 26000, 60000, 'export', '2021-04-08 21:25:53', '2021-04-08 21:25:53'),
(381, NULL, 30, 13, NULL, 35, 140, 160, 0, 20500, 19900, 96000, 'export', '2021-04-08 21:25:53', '2021-04-08 21:25:53'),
(382, NULL, 30, 13, NULL, 35, 106, 200, 0, 13000, 12000, 200000, 'export', '2021-04-08 21:25:53', '2021-04-08 21:25:53'),
(384, NULL, 30, 13, NULL, 35, 165, 3000, 0, 650, 617, -3000, 'export', '2021-04-08 21:25:53', '2021-04-08 21:25:53'),
(385, NULL, 32, 13, NULL, 36, 42, 18, 0, 58000, 70000, -216000, 'export', '2021-04-08 22:26:49', '2021-04-08 22:26:49'),
(386, NULL, 32, 13, NULL, 36, 60, 4, 0, 19000, 17000, 8000, 'export', '2021-04-08 22:26:49', '2021-04-08 22:26:49'),
(387, 3, NULL, 13, 39, NULL, 234, 25, 25, NULL, 192000, NULL, 'import', '2021-04-08 23:03:20', '2021-04-26 00:27:13'),
(388, 3, NULL, 13, 39, NULL, 254, 84, 84, NULL, 86000, NULL, 'import', '2021-04-08 23:03:20', '2021-04-20 02:17:41'),
(389, NULL, 30, 13, NULL, 35, 254, 48, 0, 89000, 86000, 144000, 'export', '2021-04-08 23:04:12', '2021-04-08 23:04:12'),
(390, NULL, 32, 13, NULL, 37, 172, 1, 0, 15000, 11000, 4000, 'export', '2021-04-09 03:23:02', '2021-04-09 03:23:02'),
(391, NULL, 32, 13, NULL, 37, 212, 1, 0, 35000, 33000, 2000, 'export', '2021-04-09 03:23:02', '2021-04-09 03:23:02'),
(392, NULL, 32, 13, NULL, 37, 82, 2, 0, 20000, 16500, 7000, 'export', '2021-04-09 03:23:02', '2021-04-09 03:23:02'),
(393, NULL, 32, 13, NULL, 37, 100, 1, 0, 20000, 18000, 2000, 'export', '2021-04-09 03:23:02', '2021-04-09 03:23:02'),
(394, NULL, 32, 13, NULL, 38, 84, 10, 0, 25000, 25000, 0, 'export', '2021-04-10 03:05:14', '2021-04-10 03:05:14'),
(395, NULL, 32, 13, NULL, 39, 100, 1, 0, 20000, 18000, 2000, 'export', '2021-04-11 01:28:10', '2021-04-11 01:28:10'),
(396, 7, NULL, 13, 40, NULL, 255, 58, 58, NULL, 50000, NULL, 'import', '2021-04-11 04:19:19', '2021-05-04 20:06:26'),
(397, NULL, 41, 13, NULL, 40, 255, 10, 0, 52000, 50000, 20000, 'export', '2021-04-11 04:19:41', '2021-04-11 04:19:41'),
(398, NULL, 32, 13, NULL, 41, 203, 1, 0, 30000, 8500, 21500, 'export', '2021-04-13 03:52:40', '2021-04-13 03:52:40'),
(399, NULL, 32, 13, NULL, 41, 254, 1, 0, 89000, 86000, 3000, 'export', '2021-04-13 03:52:40', '2021-04-13 03:52:40'),
(400, NULL, 32, 13, NULL, 42, 60, 1, 0, 20000, 17000, 3000, 'export', '2021-04-14 21:23:12', '2021-04-14 21:23:12'),
(401, 4, NULL, 13, 41, NULL, 256, 30, 30, NULL, 58000, NULL, 'import', '2021-04-15 02:04:41', '2021-05-06 02:15:29'),
(402, 4, NULL, 13, 41, NULL, 257, 50, 50, NULL, 50000, NULL, 'import', '2021-04-15 02:04:41', '2021-04-17 19:29:38'),
(403, NULL, 30, 13, NULL, 43, 247, 4000, 0, 433, 415, 72000, 'export', '2021-04-17 19:29:38', '2021-04-17 19:29:38'),
(404, NULL, 30, 13, NULL, 43, 106, 100, 0, 13000, 12000, 100000, 'export', '2021-04-17 19:29:38', '2021-04-17 19:29:38'),
(405, NULL, 30, 13, NULL, 43, 257, 50, 0, 52000, 50000, 100000, 'export', '2021-04-17 19:29:38', '2021-04-17 19:29:38'),
(406, NULL, 30, 13, NULL, 43, 256, 30, 0, 61000, 58000, 90000, 'export', '2021-04-17 19:29:38', '2021-04-17 19:29:38'),
(408, NULL, 32, 13, NULL, 44, 225, 1, 0, 140000, 125000, 15000, 'export', '2021-04-17 19:30:19', '2021-04-17 19:30:19'),
(410, 10, NULL, 13, 42, NULL, 258, 20, 20, NULL, 108000, NULL, 'import', '2021-04-17 20:41:50', '2021-04-18 20:57:23'),
(412, NULL, 32, 13, NULL, 46, 135, 1, 0, 25000, 20500, 4500, 'export', '2021-04-17 21:08:55', '2021-04-17 21:08:55'),
(413, NULL, 32, 13, NULL, 46, 251, 1, 0, 29000, 26000, 3000, 'export', '2021-04-17 21:08:55', '2021-04-17 21:08:55'),
(414, NULL, 32, 13, NULL, 46, 163, 3, 0, 35000, 31000, 12000, 'export', '2021-04-17 21:08:55', '2021-04-17 21:08:55'),
(415, NULL, 32, 13, NULL, 46, 84, 2, 0, 28000, 25000, 6000, 'export', '2021-04-17 21:08:55', '2021-04-17 21:08:55'),
(416, NULL, 32, 13, NULL, 46, 258, 1, 0, 120000, 108000, 12000, 'export', '2021-04-17 21:08:55', '2021-04-17 21:08:55'),
(417, NULL, 32, 13, NULL, 46, 236, 3, 0, 6000, 3800, 6600, 'export', '2021-04-17 21:08:55', '2021-04-17 21:08:55'),
(418, NULL, 32, 13, NULL, 44, 226, 1, 0, 120000, 107000, 13000, 'export', '2021-04-17 21:46:54', '2021-04-17 21:46:54'),
(419, 4, NULL, 13, 43, NULL, 235, 20, 20, NULL, 246000, NULL, 'import', '2021-04-18 03:18:59', '2021-04-18 21:08:54'),
(420, 4, NULL, 13, 43, NULL, 106, 80, 0, NULL, 11500, NULL, 'import', '2021-04-18 03:18:59', '2021-04-18 21:09:07'),
(421, NULL, 42, 13, NULL, 47, 146, 56, 0, 72000, 67000, 280000, 'export', '2021-04-18 19:24:57', '2021-04-18 19:24:57'),
(422, NULL, 32, 13, NULL, 46, 134, 1, 0, 105000, 95000, 10000, 'export', '2021-04-18 19:50:17', '2021-04-18 19:50:17'),
(423, 9, NULL, 13, 44, NULL, 238, 30, 1, NULL, 108000, NULL, 'import', '2021-04-18 20:00:54', '2021-04-26 00:19:14'),
(424, 7, NULL, 13, 45, NULL, 259, 55, 55, NULL, 52000, NULL, 'import', '2021-04-18 20:02:10', '2021-04-18 20:49:50'),
(425, NULL, 39, 13, NULL, 48, 259, 55, 0, 54000, 52000, 110000, 'export', '2021-04-18 20:49:50', '2021-04-18 20:49:50'),
(426, NULL, 39, 13, NULL, 48, 235, 20, 0, 253000, 247000, 120000, 'export', '2021-04-18 20:49:50', '2021-04-18 20:49:50'),
(427, NULL, 39, 13, NULL, 48, 238, 30, 0, 113000, 108000, 30000, 'export', '2021-04-18 20:49:50', '2021-04-18 20:49:50'),
(428, 10, NULL, 13, 46, NULL, 146, 36, 0, NULL, 67000, NULL, 'import', '2021-04-18 20:53:22', '2021-04-18 20:53:22'),
(429, 10, NULL, 13, 46, NULL, 258, 20, 1, NULL, 108000, NULL, 'import', '2021-04-18 20:53:22', '2021-04-18 20:57:23'),
(430, NULL, 43, 13, NULL, 49, 258, 20, 0, 115000, 108000, 140000, 'export', '2021-04-18 20:57:23', '2021-04-18 20:57:23'),
(431, 4, NULL, 13, 47, NULL, 260, 58, 0, NULL, 18500, NULL, 'import', '2021-04-19 00:27:21', '2021-04-19 00:27:21'),
(432, 9, NULL, 13, 48, NULL, 242, 600, 400, NULL, 11000, NULL, 'import', '2021-04-19 20:43:34', '2021-05-04 19:57:31'),
(433, 9, NULL, 13, 49, NULL, 261, 300, 300, NULL, 18500, NULL, 'import', '2021-04-19 20:44:49', '2021-04-20 01:32:00'),
(434, 7, NULL, 13, 50, NULL, 262, 120, 120, NULL, 24500, NULL, 'import', '2021-04-20 01:27:51', '2021-04-20 01:32:00'),
(435, 4, NULL, 13, 51, NULL, 254, 48, 13, NULL, 82000, NULL, 'import', '2021-04-20 01:31:19', '2021-04-20 02:17:41'),
(436, NULL, 30, 13, NULL, 50, 261, 300, 0, 19000, 18500, 150000, 'export', '2021-04-20 01:32:00', '2021-04-20 01:32:00'),
(437, NULL, 30, 13, NULL, 50, 262, 120, 0, 26000, 24500, 180000, 'export', '2021-04-20 01:32:00', '2021-04-20 01:32:00'),
(438, NULL, 30, 13, NULL, 50, 242, 200, 0, 11650, 11000, 130000, 'export', '2021-04-20 01:32:00', '2021-04-20 01:32:00'),
(441, NULL, 32, 13, NULL, 51, 254, 48, 0, 86000, 82000, 52000, 'export', '2021-04-20 02:17:41', '2021-04-20 02:17:41'),
(443, NULL, 32, 13, NULL, 52, 60, 10, 0, 19000, 17000, 20000, 'export', '2021-04-22 23:22:19', '2021-04-22 23:22:19'),
(444, NULL, 32, 13, NULL, 52, 83, 10, 0, 15000, 14500, 5000, 'export', '2021-04-22 23:22:19', '2021-04-22 23:22:19'),
(445, NULL, 32, 13, NULL, 52, 76, 5, 0, 23000, 21000, 10000, 'export', '2021-04-22 23:22:19', '2021-04-22 23:22:19'),
(446, NULL, 32, 13, NULL, 52, 203, 50, 0, 10000, 8500, 75000, 'export', '2021-04-22 23:48:44', '2021-04-22 23:48:44'),
(447, NULL, 44, 13, NULL, 53, 35, 3, 0, 42000, 38500, 10500, 'export', '2021-04-24 19:50:26', '2021-04-24 19:50:26'),
(448, NULL, 44, 13, NULL, 53, 246, 2, 0, 48000, 44000, 8000, 'export', '2021-04-24 19:50:26', '2021-04-24 19:50:26'),
(449, NULL, 44, 13, NULL, 53, 27, 1, 0, 43000, 38000, 5000, 'export', '2021-04-24 19:50:26', '2021-04-24 19:50:26'),
(450, NULL, 44, 13, NULL, 53, 78, 2, 0, 14000, 12000, 4000, 'export', '2021-04-24 19:50:26', '2021-04-24 19:50:26'),
(451, NULL, 44, 13, NULL, 53, 67, 3, 0, 46000, 42500, 10500, 'export', '2021-04-24 19:50:26', '2021-04-24 19:50:26'),
(452, NULL, 44, 13, NULL, 53, 103, 2, 0, 24000, 21000, 6000, 'export', '2021-04-24 19:50:26', '2021-04-24 19:50:26'),
(453, NULL, 44, 13, NULL, 53, 56, 3, 0, 32000, 28500, 10500, 'export', '2021-04-24 19:50:26', '2021-04-24 19:50:26'),
(454, NULL, 44, 13, NULL, 53, 233, 2, 0, 42000, 38000, 8000, 'export', '2021-04-24 19:50:26', '2021-04-24 19:50:26'),
(455, NULL, 44, 13, NULL, 53, 251, 1, 0, 29000, 26000, 3000, 'export', '2021-04-24 19:50:26', '2021-04-24 19:50:26'),
(456, NULL, 44, 13, NULL, 53, 134, 1, 0, 105000, 95000, 10000, 'export', '2021-04-24 20:25:39', '2021-04-24 20:25:39'),
(457, NULL, 44, 13, NULL, 53, 231, 1, 0, 20000, 17000, 3000, 'export', '2021-04-24 20:25:39', '2021-04-24 20:25:39');
INSERT INTO `product_sessions` (`id`, `agency_id`, `user_id`, `user_create`, `import_id`, `order_id`, `product_id`, `amount`, `amount_export`, `price`, `price_in`, `revenue`, `type`, `created_at`, `updated_at`) VALUES
(458, NULL, 44, 13, NULL, 53, 173, 5, 0, 13000, 11000, 10000, 'export', '2021-04-24 20:25:39', '2021-04-24 20:25:39'),
(459, NULL, 44, 13, NULL, 53, 86, 1, 0, 10000, 7708, 2292, 'export', '2021-04-24 20:25:39', '2021-04-24 20:25:39'),
(460, NULL, 44, 13, NULL, 53, 87, 1, 0, 15000, 11875, 2292, 'export', '2021-04-24 20:25:39', '2021-04-24 20:25:39'),
(461, NULL, 39, 13, NULL, 54, 238, 30, 0, 113000, 108000, 34000, 'export', '2021-04-26 00:19:14', '2021-04-26 00:19:14'),
(463, 3, NULL, 13, 52, NULL, 263, 50, 50, NULL, 37000, NULL, 'import', '2021-04-26 00:23:39', '2021-04-26 00:27:13'),
(464, 3, NULL, 13, 53, NULL, 265, 30, 30, NULL, 83000, NULL, 'import', '2021-04-26 00:24:52', '2021-04-26 21:11:34'),
(465, NULL, 30, 13, NULL, 55, 265, 30, 0, 89000, 85000, 120000, 'export', '2021-04-26 00:27:13', '2021-04-26 00:27:13'),
(467, NULL, 30, 13, NULL, 55, 263, 50, 0, 39000, 37000, 100000, 'export', '2021-04-26 00:27:13', '2021-04-26 00:27:13'),
(468, NULL, 30, 13, NULL, 55, 234, 25, 0, 195000, 192000, 75000, 'export', '2021-04-26 00:27:13', '2021-04-26 00:27:13'),
(469, 9, NULL, 13, 54, NULL, 238, 30, 0, NULL, 108000, NULL, 'import', '2021-04-26 00:51:11', '2021-04-26 00:51:11'),
(470, NULL, 36, 13, NULL, 56, 165, 400, 0, 800, 617, 73200, 'export', '2021-04-26 04:07:04', '2021-04-26 04:07:04'),
(471, NULL, 36, 13, NULL, 57, 216, 7, 0, 18000, 15500, 17500, 'export', '2021-05-01 20:59:32', '2021-05-01 20:59:32'),
(472, NULL, 36, 13, NULL, 58, 165, 100, 0, 800, 617, 18300, 'export', '2021-05-01 21:00:02', '2021-05-01 21:00:02'),
(473, NULL, 32, 13, NULL, 59, 230, 10, 0, 30000, 28500, 15000, 'export', '2021-05-01 22:57:41', '2021-05-01 22:57:41'),
(474, NULL, 32, 13, NULL, 60, 247, 4000, 0, 440, 415, 100000, 'export', '2021-05-01 23:55:19', '2021-05-01 23:55:19'),
(475, NULL, 32, 13, NULL, 61, 84, 4, 0, 25000, 25000, 0, 'export', '2021-05-03 02:21:35', '2021-05-03 02:21:35'),
(476, NULL, 32, 13, NULL, 61, 252, 7, 0, 20000, 20000, 0, 'export', '2021-05-03 02:21:35', '2021-05-03 02:21:35'),
(477, 8, NULL, 13, 55, NULL, 266, 4, 4, NULL, 25000, NULL, 'import', '2021-05-04 02:58:36', '2021-05-04 03:00:57'),
(478, NULL, 32, 13, NULL, 62, 266, 4, 0, 28000, 25000, 12000, 'export', '2021-05-04 03:00:57', '2021-05-04 03:00:57'),
(480, NULL, 32, 13, NULL, 62, 220, 1, 0, 34000, 28500, 30081, 'export', '2021-05-04 03:00:57', '2021-05-04 03:02:52'),
(481, NULL, 32, 13, NULL, 62, 135, 1, 0, 26000, 20500, 6100, 'export', '2021-05-04 03:00:57', '2021-05-04 03:02:40'),
(482, NULL, 32, 13, NULL, 62, 140, 3, 0, 25000, 19900, 15300, 'export', '2021-05-04 03:00:57', '2021-05-04 03:00:57'),
(483, NULL, 32, 13, NULL, 62, 101, 3, 0, 29000, 23500, 12000, 'export', '2021-05-04 03:00:57', '2021-05-04 03:00:57'),
(484, NULL, 32, 13, NULL, 62, 204, 5, 0, 18000, 14000, 20000, 'export', '2021-05-04 03:00:57', '2021-05-04 03:00:57'),
(485, NULL, 32, 13, NULL, 62, 142, 1, 0, 16000, 13000, 3000, 'export', '2021-05-04 03:04:07', '2021-05-04 03:04:07'),
(486, 9, NULL, 13, 56, NULL, 247, 4000, 1100, NULL, 388, NULL, 'import', '2021-05-04 19:56:53', '2021-05-04 19:57:31'),
(487, NULL, 32, 13, NULL, 63, 242, 200, 0, 11750, 11000, 150000, 'export', '2021-05-04 19:57:31', '2021-05-04 19:57:31'),
(488, NULL, 32, 13, NULL, 63, 247, 4000, 0, 420, 388, 49700, 'export', '2021-05-04 19:57:31', '2021-05-04 19:57:31'),
(489, 9, NULL, 13, 57, NULL, 255, 80, 32, NULL, 48500, NULL, 'import', '2021-05-04 20:00:09', '2021-05-04 20:06:26'),
(490, 9, NULL, 13, 57, NULL, 267, 30, 30, NULL, 40000, NULL, 'import', '2021-05-04 20:00:09', '2021-05-04 20:06:26'),
(491, 4, NULL, 13, 58, NULL, 265, 30, 30, NULL, 85000, NULL, 'import', '2021-05-04 20:01:34', '2021-05-04 20:06:26'),
(492, 4, NULL, 13, 58, NULL, 256, 30, 60, NULL, 58000, NULL, 'import', '2021-05-04 20:01:34', '2021-05-06 02:15:29'),
(493, 4, NULL, 13, 58, NULL, 264, 50, 50, NULL, 35500, NULL, 'import', '2021-05-04 20:01:34', '2021-05-04 20:06:26'),
(494, 4, NULL, 13, 59, NULL, 268, 100, 100, NULL, 13000, NULL, 'import', '2021-05-04 20:02:57', '2021-05-04 20:06:26'),
(495, NULL, 30, 13, NULL, 64, 255, 80, 0, 50000, 48500, 48000, 'export', '2021-05-04 20:06:26', '2021-05-06 01:54:39'),
(496, NULL, 30, 13, NULL, 64, 264, 50, 0, 39000, 35500, 175000, 'export', '2021-05-04 20:06:26', '2021-05-04 20:06:26'),
(497, NULL, 30, 13, NULL, 64, 265, 30, 0, 89000, 85000, 120000, 'export', '2021-05-04 20:06:26', '2021-05-04 20:06:26'),
(499, NULL, 30, 13, NULL, 64, 267, 30, 0, 42000, 40000, 60000, 'export', '2021-05-04 20:06:26', '2021-05-04 20:06:26'),
(500, NULL, 30, 13, NULL, 64, 268, 100, 0, 14000, 13000, 100000, 'export', '2021-05-04 20:06:26', '2021-05-04 20:06:26'),
(503, 4, NULL, 13, 60, NULL, 256, 30, 0, NULL, 58000, NULL, 'import', '2021-05-06 02:06:24', '2021-05-06 02:06:24'),
(504, NULL, 30, 13, NULL, 64, 256, 60, 0, 60000, 58000, 120000, 'export', '2021-05-06 02:15:29', '2021-05-06 02:15:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin', '2021-04-20 03:27:47', '2021-04-27 00:13:46'),
(2, 'Admin', 'admin', '2021-04-26 23:45:28', '2021-04-27 00:14:03'),
(3, 'Seller', 'admin', '2021-04-28 20:30:27', '2021-04-28 20:30:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(52, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `watermark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zalo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_app_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_app_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `re_captcha_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `re_captcha_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messenger` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_open` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` longtext COLLATE utf8mb4_unicode_ci,
  `footer` longtext COLLATE utf8mb4_unicode_ci,
  `map` text COLLATE utf8mb4_unicode_ci,
  `numbercall` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarketing_header` longtext COLLATE utf8mb4_unicode_ci,
  `remarketing_footer` longtext COLLATE utf8mb4_unicode_ci,
  `description_seo` text COLLATE utf8mb4_unicode_ci,
  `keyword_seo` text COLLATE utf8mb4_unicode_ci,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `name`, `company`, `path`, `slogan`, `logo`, `favicon`, `og_image`, `watermark`, `email`, `phone`, `facebook`, `zalo`, `facebook_app_ip`, `facebook_app_secret`, `re_captcha_key`, `re_captcha_secret`, `messenger`, `google`, `skype`, `youtube`, `twitter`, `ins`, `lin`, `pin`, `address`, `hotline`, `time_open`, `fax`, `contact`, `footer`, `map`, `numbercall`, `remarketing_header`, `remarketing_footer`, `description_seo`, `keyword_seo`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spaussio@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vi', '2021-04-20 03:26:17', '2021-05-02 19:03:45'),
(2, 'Home', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', '2021-04-20 03:26:17', '2021-04-20 03:26:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_identities`
--

CREATE TABLE `social_identities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `provider_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zalo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_edit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `alias`, `type_id`, `type`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'dfgdf', 'dfgdf', 5, 'POST', 'vi', '2021-05-02 20:07:33', '2021-05-02 20:07:33'),
(2, 'bn', 'bn', 5, 'POST', 'vi', '2021-05-02 20:07:33', '2021-05-02 20:07:33'),
(3, 'z', 'z', 5, 'POST', 'vi', '2021-05-02 20:07:33', '2021-05-02 20:07:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `agency_id` int(11) NOT NULL DEFAULT '0',
  `user_debt` int(11) NOT NULL DEFAULT '0',
  `amount` bigint(20) NOT NULL,
  `balance` bigint(20) NOT NULL,
  `source_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `agency_id`, `user_debt`, `amount`, `balance`, `source_type`, `source_id`, `admin_id`, `note`, `created_at`, `updated_at`) VALUES
(10, 0, 2, 0, 0, 0, 'App\\Models\\Import', 7, 13, 'Tạo mới nhập hàng #7', '2021-03-14 02:59:38', '2021-03-14 02:59:38'),
(11, 0, 2, 0, 0, 0, 'App\\Models\\Import', 8, 13, 'Tạo mới nhập hàng #8', '2021-04-01 22:10:17', '2021-04-01 22:10:17'),
(12, 0, 2, 0, 0, 0, 'App\\Models\\Import', 9, 13, 'Tạo mới nhập hàng #9', '2021-04-01 22:21:45', '2021-04-01 22:21:45'),
(13, 0, 2, 0, 1, 1, 'App\\Models\\Import', 10, 13, 'Tạo mới nhập hàng #10', '2021-04-01 22:46:13', '2021-04-01 22:46:13'),
(14, 0, 2, 0, -1, 0, 'App\\Models\\Import', 10, 13, 'Cập nhật thông tin nhập hàng #10', '2021-04-01 22:46:31', '2021-04-01 22:46:31'),
(15, 0, 2, 0, 0, 0, 'App\\Models\\Import', 11, 13, 'Tạo mới nhập hàng #11', '2021-04-01 23:21:10', '2021-04-01 23:21:10'),
(16, 0, 2, 0, 0, 0, 'App\\Models\\Import', 12, 13, 'Tạo mới nhập hàng #12', '2021-04-01 23:53:07', '2021-04-01 23:53:07'),
(17, 0, 2, 0, 0, 0, 'App\\Models\\Import', 13, 13, 'Tạo mới nhập hàng #13', '2021-04-02 00:00:30', '2021-04-02 00:00:30'),
(18, 0, 2, 0, 0, 0, 'App\\Models\\Import', 14, 13, 'Tạo mới nhập hàng #14', '2021-04-02 00:25:33', '2021-04-02 00:25:33'),
(19, 0, 3, 0, 13650000, 13650000, 'App\\Models\\Import', 15, 13, 'Tạo mới nhập hàng #15', '2021-04-02 00:29:46', '2021-04-02 00:29:46'),
(20, 0, 2, 0, 0, 0, 'App\\Models\\Import', 16, 13, 'Tạo mới nhập hàng #16', '2021-04-02 00:32:34', '2021-04-02 00:32:34'),
(21, 33, 0, 0, 0, 0, 'App\\Models\\Order', 1, 13, 'Tạo mới đơn hàng #1', '2021-04-02 00:41:55', '2021-04-02 00:41:55'),
(22, 34, 0, 0, 0, 0, 'App\\Models\\Order', 2, 13, 'Tạo mới đơn hàng #2', '2021-04-02 00:51:20', '2021-04-02 00:51:20'),
(23, 32, 0, 0, 190000, 190000, 'App\\Models\\Order', 3, 13, 'Tạo mới đơn hàng #3', '2021-04-02 00:51:56', '2021-04-02 00:51:56'),
(24, 32, 0, 0, 0, 190000, 'App\\Models\\Order', 4, 13, 'Tạo mới đơn hàng #4', '2021-04-02 00:54:33', '2021-04-02 00:54:33'),
(25, 14, 0, 0, 0, 0, 'App\\Models\\Order', 5, 13, 'Tạo mới đơn hàng #5', '2021-04-02 00:55:28', '2021-04-02 00:55:28'),
(26, 30, 0, 0, 10830000, 10830000, 'App\\Models\\Order', 6, 13, 'Tạo mới đơn hàng #6', '2021-04-02 01:15:42', '2021-04-02 01:15:42'),
(27, 0, 2, 0, 0, 0, 'App\\Models\\Import', 17, 13, 'Tạo mới nhập hàng #17', '2021-04-02 01:22:17', '2021-04-02 01:22:17'),
(28, 28, 0, 0, 0, 0, 'App\\Models\\Order', 7, 13, 'Tạo mới đơn hàng #7', '2021-04-02 01:27:00', '2021-04-02 01:27:00'),
(29, 30, 0, 0, -3360000, 7470000, 'App\\Models\\Order', 6, 13, 'Hủy sản phẩm #169 - đơn hàng #6', '2021-04-02 01:28:27', '2021-04-02 01:28:27'),
(30, 30, 0, 0, 3360000, 10830000, 'App\\Models\\Order', 6, 13, 'Cập nhật đơn hàng #6', '2021-04-02 01:30:02', '2021-04-02 01:30:02'),
(31, 30, 0, 0, -3360000, 7470000, 'App\\Models\\Order', 6, 13, 'Hủy sản phẩm #169 - đơn hàng #6', '2021-04-02 01:31:20', '2021-04-02 01:31:20'),
(32, 30, 0, 0, 3360000, 10830000, 'App\\Models\\Order', 6, 13, 'Cập nhật đơn hàng #6', '2021-04-02 01:32:23', '2021-04-02 01:32:23'),
(33, 0, 2, 0, 535000, 535000, 'App\\Models\\Import', 18, 13, 'Tạo mới nhập hàng #18', '2021-04-02 01:34:39', '2021-04-02 01:34:39'),
(34, 0, 2, 0, -535000, 0, 'App\\Models\\Import', 18, 13, 'Cập nhật thông tin nhập hàng #18', '2021-04-02 01:34:52', '2021-04-02 01:34:52'),
(35, 30, 0, 0, -3360000, 7470000, 'App\\Models\\Order', 6, 13, 'Hủy sản phẩm #169 - đơn hàng #6', '2021-04-02 01:52:17', '2021-04-02 01:52:17'),
(36, 30, 0, 0, 3360000, 10830000, 'App\\Models\\Order', 6, 13, 'Cập nhật đơn hàng #6', '2021-04-02 01:52:58', '2021-04-02 01:52:58'),
(37, 30, 0, 0, 0, 10830000, 'App\\Models\\Order', 6, 13, 'Cập nhật đơn hàng #6', '2021-04-02 01:53:08', '2021-04-02 01:53:08'),
(38, 0, 2, 0, 0, 0, 'App\\Models\\Import', 19, 13, 'Tạo mới nhập hàng #19', '2021-04-02 01:57:35', '2021-04-02 01:57:35'),
(39, 0, 9, 0, 2600000, 2600000, 'App\\Models\\Import', 20, 13, 'Tạo mới nhập hàng #20', '2021-04-02 02:04:12', '2021-04-02 02:04:12'),
(40, 0, 2, 0, 748000, 748000, 'App\\Models\\Import', 7, 13, 'Sửa sản phẩm #28 - thông tin nhập hàng #7', '2021-04-02 02:06:44', '2021-04-02 02:06:44'),
(41, 0, 2, 0, -748000, 0, 'App\\Models\\Import', 7, 13, 'Cập nhật thông tin nhập hàng #7', '2021-04-02 02:06:58', '2021-04-02 02:06:58'),
(42, 30, 0, 0, 0, 10830000, 'App\\Models\\Order', 6, 13, 'Cập nhật đơn hàng #6', '2021-04-02 02:16:32', '2021-04-02 02:16:32'),
(43, 35, 0, 0, 4010000, 4010000, 'App\\Models\\Order', 8, 13, 'Tạo mới đơn hàng #8', '2021-04-02 02:24:11', '2021-04-02 02:24:11'),
(44, 36, 0, 0, 726000, 726000, 'App\\Models\\Order', 9, 13, 'Tạo mới đơn hàng #9', '2021-04-02 02:37:41', '2021-04-02 02:37:41'),
(45, 35, 0, 0, -4010000, 0, 'App\\Models\\Order', 8, 13, 'Cập nhật đơn hàng #8', '2021-04-02 02:46:20', '2021-04-02 02:46:20'),
(46, 32, 0, 0, 18000, 208000, 'App\\Models\\Order', 10, 13, 'Tạo mới đơn hàng #10', '2021-04-02 03:24:24', '2021-04-02 03:24:24'),
(47, 32, 0, 0, 0, 208000, 'App\\Models\\Order', 11, 13, 'Tạo mới đơn hàng #11', '2021-04-02 03:28:58', '2021-04-02 03:28:58'),
(48, 0, 6, 0, 0, 0, 'App\\Models\\Import', 21, 13, 'Tạo mới nhập hàng #21', '2021-04-02 03:31:05', '2021-04-02 03:31:05'),
(49, 32, 0, 0, 0, 208000, 'App\\Models\\Order', 12, 13, 'Tạo mới đơn hàng #12', '2021-04-02 03:31:36', '2021-04-02 03:31:36'),
(50, 32, 0, 0, 0, 208000, 'App\\Models\\Order', 13, 13, 'Tạo mới đơn hàng #13', '2021-04-03 02:15:08', '2021-04-03 02:15:08'),
(51, 32, 0, 0, 0, 208000, 'App\\Models\\Order', 14, 13, 'Tạo mới đơn hàng #14', '2021-04-03 02:23:22', '2021-04-03 02:23:22'),
(52, 32, 0, 0, -190000, 18000, 'App\\Models\\Order', 3, 13, 'Cập nhật đơn hàng #3', '2021-04-03 02:24:26', '2021-04-03 02:24:26'),
(53, 30, 0, 0, -10830000, 0, 'App\\Models\\Order', 6, 13, 'Cập nhật đơn hàng #6', '2021-04-03 20:53:08', '2021-04-03 20:53:08'),
(54, 32, 0, 0, 0, 18000, 'App\\Models\\Order', 15, 13, 'Tạo mới đơn hàng #15', '2021-04-04 01:35:44', '2021-04-04 01:35:44'),
(55, 32, 0, 0, 0, 18000, 'App\\Models\\Order', 15, 13, 'Cập nhật đơn hàng #15', '2021-04-04 01:36:45', '2021-04-04 01:36:45'),
(56, 32, 0, 0, 0, 18000, 'App\\Models\\Order', 16, 13, 'Tạo mới đơn hàng #16', '2021-04-04 02:26:47', '2021-04-04 02:26:47'),
(57, 0, 4, 0, 0, 0, 'App\\Models\\Import', 22, 13, 'Tạo mới nhập hàng #22', '2021-04-04 02:35:21', '2021-04-04 02:35:21'),
(58, 0, 9, 0, -2600000, 0, 'App\\Models\\Import', 20, 13, 'Cập nhật thông tin nhập hàng #20', '2021-04-04 02:35:37', '2021-04-04 02:35:37'),
(59, 0, 4, 0, 0, 0, 'App\\Models\\Import', 14, 13, 'Thay đổi thông tin nhập hàng #14', '2021-04-04 02:37:06', '2021-04-04 02:37:06'),
(60, 0, 2, 0, 0, 0, 'App\\Models\\Import', 14, 13, 'Thay đổi thông tin nhập hàng #14', '2021-04-04 02:37:06', '2021-04-04 02:37:06'),
(61, 0, 4, 0, 36112000, 36112000, 'App\\Models\\Import', 14, 13, 'Cập nhật thông tin nhập hàng #14', '2021-04-04 02:41:37', '2021-04-04 02:41:37'),
(62, 0, 4, 0, 1300000, 37412000, 'App\\Models\\Import', 23, 13, 'Tạo mới nhập hàng #23', '2021-04-04 02:42:47', '2021-04-04 02:42:47'),
(63, 0, 5, 0, 36112000, 36112000, 'App\\Models\\Import', 14, 13, 'Thay đổi thông tin nhập hàng #14', '2021-04-04 02:51:26', '2021-04-04 02:51:26'),
(64, 0, 4, 0, -36112000, 1300000, 'App\\Models\\Import', 14, 13, 'Thay đổi thông tin nhập hàng #14', '2021-04-04 02:51:26', '2021-04-04 02:51:26'),
(65, 0, 5, 0, -81567, 36030433, 'App\\Models\\Import', 14, 13, 'Sửa sản phẩm #221 - thông tin nhập hàng #14', '2021-04-04 02:53:17', '2021-04-04 02:53:17'),
(66, 0, 5, 0, -32084433, 3946000, 'App\\Models\\Import', 14, 13, 'Cập nhật thông tin nhập hàng #14', '2021-04-04 02:53:57', '2021-04-04 02:53:57'),
(67, 0, 5, 0, 0, 3946000, 'App\\Models\\Import', 14, 13, 'Cập nhật thông tin nhập hàng #14', '2021-04-04 02:54:04', '2021-04-04 02:54:04'),
(68, 0, 2, 0, 36112000, 36112000, 'App\\Models\\Import', 12, 13, 'Cập nhật thông tin nhập hàng #12', '2021-04-04 03:05:13', '2021-04-04 03:05:13'),
(69, 0, 4, 0, 36112000, 37412000, 'App\\Models\\Import', 12, 13, 'Thay đổi thông tin nhập hàng #12', '2021-04-04 03:05:32', '2021-04-04 03:05:32'),
(70, 0, 2, 0, -36112000, 0, 'App\\Models\\Import', 12, 13, 'Thay đổi thông tin nhập hàng #12', '2021-04-04 03:05:32', '2021-04-04 03:05:32'),
(71, 0, 4, 0, 0, 37412000, 'App\\Models\\Import', 12, 13, 'Cập nhật thông tin nhập hàng #12', '2021-04-04 03:05:39', '2021-04-04 03:05:39'),
(72, 32, 0, 0, 110000, 128000, 'App\\Models\\Order', 17, 13, 'Tạo mới đơn hàng #17', '2021-04-04 03:31:12', '2021-04-04 03:31:12'),
(73, 0, 10, 0, 0, 0, 'App\\Models\\Import', 24, 13, 'Tạo mới nhập hàng #24', '2021-04-04 19:02:50', '2021-04-04 19:02:50'),
(74, 0, 8, 0, 2250000, 2250000, 'App\\Models\\Import', 25, 13, 'Tạo mới nhập hàng #25', '2021-04-04 19:08:19', '2021-04-04 19:08:19'),
(75, 0, 9, 0, 0, 0, 'App\\Models\\Import', 26, 13, 'Tạo mới nhập hàng #26', '2021-04-04 19:13:08', '2021-04-04 19:13:08'),
(76, 0, 8, 0, 1455000, 3705000, 'App\\Models\\Import', 27, 13, 'Tạo mới nhập hàng #27', '2021-04-04 19:21:35', '2021-04-04 19:21:35'),
(77, 37, 0, 0, 1995000, 1995000, 'App\\Models\\Order', 18, 13, 'Tạo mới đơn hàng #18', '2021-04-04 19:23:10', '2021-04-04 19:23:10'),
(78, 38, 0, 0, 2650000, 2650000, 'App\\Models\\Order', 19, 13, 'Tạo mới đơn hàng #19', '2021-04-04 19:28:30', '2021-04-04 19:28:30'),
(79, 0, 3, 0, 4800000, 18450000, 'App\\Models\\Import', 28, 13, 'Tạo mới nhập hàng #28', '2021-04-04 19:30:49', '2021-04-04 19:30:49'),
(80, 32, 0, 0, 4900000, 5028000, 'App\\Models\\Order', 20, 13, 'Tạo mới đơn hàng #20', '2021-04-04 20:23:51', '2021-04-04 20:23:51'),
(81, 32, 0, 0, -4900000, 128000, 'App\\Models\\Order', 20, 13, 'Cập nhật đơn hàng #20', '2021-04-04 20:29:24', '2021-04-04 20:29:24'),
(82, 32, 0, 0, -4900000, -4772000, 'App\\Models\\Order', 20, 13, 'Hủy sản phẩm #234 - đơn hàng #20', '2021-04-04 20:30:30', '2021-04-04 20:30:30'),
(83, 0, 9, 0, 0, 0, 'App\\Models\\Import', 29, 13, 'Tạo mới nhập hàng #29', '2021-04-04 21:32:11', '2021-04-04 21:32:11'),
(84, 32, 0, 0, 4900000, 128000, 'App\\Models\\Order', 20, 13, 'Cập nhật đơn hàng #20', '2021-04-04 21:32:18', '2021-04-04 21:32:18'),
(85, 32, 0, 0, 0, 128000, 'App\\Models\\Order', 21, 13, 'Tạo mới đơn hàng #21', '2021-04-04 21:40:48', '2021-04-04 21:40:48'),
(86, 0, 2, 0, 0, 0, 'App\\Models\\Import', 30, 13, 'Tạo mới nhập hàng #30', '2021-04-04 21:44:39', '2021-04-04 21:44:39'),
(87, 32, 0, 0, -4900000, -4772000, 'App\\Models\\Order', 20, 13, 'Hủy sản phẩm #234 - đơn hàng #20', '2021-04-04 21:53:19', '2021-04-04 21:53:19'),
(88, 32, 0, 0, 4900000, 128000, 'App\\Models\\Order', 20, 13, 'Cập nhật đơn hàng #20', '2021-04-04 21:54:23', '2021-04-04 21:54:23'),
(89, 38, 0, 0, -2650000, 0, 'App\\Models\\Order', 19, 13, 'Cập nhật đơn hàng #19', '2021-04-04 23:00:00', '2021-04-04 23:00:00'),
(90, 32, 0, 0, 0, 128000, 'App\\Models\\Order', 22, 13, 'Tạo mới đơn hàng #22', '2021-04-04 23:17:19', '2021-04-04 23:17:19'),
(91, 37, 0, 0, 210000, 2205000, 'App\\Models\\Order', 18, 13, 'Cập nhật đơn hàng #18', '2021-04-05 00:10:31', '2021-04-05 00:10:31'),
(92, 39, 0, 0, 3510000, 3510000, 'App\\Models\\Order', 23, 13, 'Tạo mới đơn hàng #23', '2021-04-05 00:26:06', '2021-04-05 00:26:06'),
(93, 39, 0, 0, -3510000, 0, 'App\\Models\\Order', 23, 13, 'Cập nhật đơn hàng #23', '2021-04-05 00:43:36', '2021-04-05 00:43:36'),
(94, 32, 0, 0, 30000, 158000, 'App\\Models\\Order', 24, 13, 'Tạo mới đơn hàng #24', '2021-04-05 00:55:13', '2021-04-05 00:55:13'),
(97, 0, 0, 7, 200000000, 200000000, 'App\\Models\\UserDebt', 7, 13, 'Vay vốn #200,000,000', '2021-04-05 02:12:48', '2021-04-05 02:12:48'),
(98, 0, 0, 10, 100000000, 100000000, 'App\\Models\\UserDebt', 10, 13, 'Vay vốn #100,000,000', '2021-04-05 02:13:10', '2021-04-05 02:13:10'),
(99, 0, 0, 11, 200000000, 200000000, 'App\\Models\\UserDebt', 11, 13, 'Vay vốn #200,000,000', '2021-04-05 02:13:21', '2021-04-05 02:13:21'),
(100, 0, 0, 12, 52000000, 52000000, 'App\\Models\\UserDebt', 12, 13, 'Vay vốn #52,000,000', '2021-04-05 02:13:33', '2021-04-05 02:13:33'),
(101, 0, 0, 9, 60000000, 60000000, 'App\\Models\\UserDebt', 9, 13, 'Vay vốn #60,000,000', '2021-04-05 02:13:41', '2021-04-05 02:13:41'),
(102, 0, 0, 8, 200000000, 200000000, 'App\\Models\\UserDebt', 8, 13, 'Vay vốn #200,000,000', '2021-04-05 02:13:48', '2021-04-05 02:13:48'),
(103, 0, 0, 11, -30000000, 170000000, 'App\\Models\\UserDebt', 11, 13, 'Trả tiền #-30,000,000', '2021-04-05 02:14:04', '2021-04-05 02:14:04'),
(104, 0, 4, 0, 0, 37412000, 'App\\Models\\Import', 31, 13, 'Tạo mới nhập hàng #31', '2021-04-05 03:18:10', '2021-04-05 03:18:10'),
(105, 40, 0, 0, 1400000, 1400000, 'App\\Models\\Order', 25, 13, 'Tạo mới đơn hàng #25', '2021-04-05 18:55:48', '2021-04-05 18:55:48'),
(106, 32, 0, 0, 836000, 994000, 'App\\Models\\Order', 26, 13, 'Tạo mới đơn hàng #26', '2021-04-05 20:41:04', '2021-04-05 20:41:04'),
(107, 32, 0, 0, -836000, 158000, 'App\\Models\\Order', 26, 13, 'Cập nhật đơn hàng #26', '2021-04-05 20:44:42', '2021-04-05 20:44:42'),
(108, 40, 0, 0, -1400000, 0, 'App\\Models\\Order', 25, 13, 'Cập nhật đơn hàng #25', '2021-04-05 20:45:12', '2021-04-05 20:45:12'),
(109, 0, 4, 0, -23500000, 13912000, 'App\\Models\\Import', 12, 13, 'Cập nhật thông tin nhập hàng #12', '2021-04-05 20:46:46', '2021-04-05 20:46:46'),
(110, 32, 0, 0, -9000, 149000, 'App\\Models\\Order', 10, 13, 'Cập nhật đơn hàng #10', '2021-04-06 00:01:28', '2021-04-06 00:01:28'),
(111, 37, 0, 0, 400000, 2605000, 'App\\Models\\Order', 18, 13, 'Cập nhật đơn hàng #18', '2021-04-06 00:03:53', '2021-04-06 00:03:53'),
(112, 14, 0, 0, 6460000, 6460000, 'App\\Models\\Order', 27, 13, 'Tạo mới đơn hàng #27', '2021-04-06 02:28:22', '2021-04-06 02:28:22'),
(113, 32, 0, 0, 0, 149000, 'App\\Models\\Order', 28, 13, 'Tạo mới đơn hàng #28', '2021-04-06 04:28:53', '2021-04-06 04:28:53'),
(114, 0, 9, 0, 6750000, 6750000, 'App\\Models\\Import', 32, 13, 'Tạo mới nhập hàng #32', '2021-04-06 18:43:27', '2021-04-06 18:43:27'),
(115, 14, 0, 0, -4760000, 1700000, 'App\\Models\\Order', 27, 13, 'Hủy sản phẩm #242 - đơn hàng #27', '2021-04-06 18:44:05', '2021-04-06 18:44:05'),
(116, 14, 0, 0, 11900000, 13600000, 'App\\Models\\Order', 27, 13, 'Cập nhật đơn hàng #27', '2021-04-06 18:46:28', '2021-04-06 18:46:28'),
(117, 0, 8, 0, 2550000, 6255000, 'App\\Models\\Import', 33, 13, 'Tạo mới nhập hàng #33', '2021-04-06 18:50:37', '2021-04-06 18:50:37'),
(118, 39, 0, 0, 3270000, 3270000, 'App\\Models\\Order', 29, 13, 'Tạo mới đơn hàng #29', '2021-04-06 18:52:34', '2021-04-06 18:52:34'),
(119, 37, 0, 0, -70000, 2535000, 'App\\Models\\Order', 18, 13, 'Cập nhật sản phẩm #247 - đơn hàng #18', '2021-04-07 00:29:33', '2021-04-07 00:29:33'),
(120, 39, 0, 0, -3270000, 0, 'App\\Models\\Order', 29, 13, 'Cập nhật đơn hàng #29', '2021-04-07 03:02:43', '2021-04-07 03:02:43'),
(121, 14, 0, 0, -13600000, 0, 'App\\Models\\Order', 27, 13, 'Cập nhật đơn hàng #27', '2021-04-07 03:03:04', '2021-04-07 03:03:04'),
(122, 37, 0, 0, -2535000, 0, 'App\\Models\\Order', 18, 13, 'Cập nhật đơn hàng #18', '2021-04-07 03:03:44', '2021-04-07 03:03:44'),
(123, 32, 0, 0, -110000, 39000, 'App\\Models\\Order', 17, 13, 'Cập nhật đơn hàng #17', '2021-04-07 03:04:02', '2021-04-07 03:04:02'),
(124, 32, 0, 0, -9000, 30000, 'App\\Models\\Order', 10, 13, 'Cập nhật đơn hàng #10', '2021-04-07 03:04:27', '2021-04-07 03:04:27'),
(125, 0, 9, 0, -6750000, 0, 'App\\Models\\Import', 32, 13, 'Cập nhật thông tin nhập hàng #32', '2021-04-07 03:13:58', '2021-04-07 03:13:58'),
(126, 0, 2, 0, 0, 0, 'App\\Models\\Import', 34, 13, 'Tạo mới nhập hàng #34', '2021-04-07 03:51:52', '2021-04-07 03:51:52'),
(127, 0, 2, 0, 0, 0, 'App\\Models\\Import', 35, 13, 'Tạo mới nhập hàng #35', '2021-04-07 03:52:25', '2021-04-07 03:52:25'),
(128, 32, 0, 0, 0, 30000, 'App\\Models\\Order', 30, 13, 'Tạo mới đơn hàng #30', '2021-04-07 03:53:33', '2021-04-07 03:53:33'),
(129, 0, 2, 0, 0, 0, 'App\\Models\\Import', 36, 13, 'Tạo mới nhập hàng #36', '2021-04-07 03:57:36', '2021-04-07 03:57:36'),
(130, 32, 0, 0, 89000, 119000, 'App\\Models\\Order', 31, 13, 'Tạo mới đơn hàng #31', '2021-04-07 04:03:14', '2021-04-07 04:03:14'),
(131, 0, 3, 0, -4800000, 13650000, 'App\\Models\\Import', 28, 13, 'Cập nhật thông tin nhập hàng #28', '2021-04-07 04:07:48', '2021-04-07 04:07:48'),
(132, 0, 3, 0, -3650000, 10000000, 'App\\Models\\Import', 15, 13, 'Cập nhật thông tin nhập hàng #15', '2021-04-07 04:08:12', '2021-04-07 04:08:12'),
(133, 0, 8, 0, 102000, 6357000, 'App\\Models\\Import', 37, 13, 'Tạo mới nhập hàng #37', '2021-04-07 04:23:59', '2021-04-07 04:23:59'),
(134, 17, 0, 0, 41040000, 41040000, 'App\\Models\\Order', 32, 13, 'Tạo mới đơn hàng #32', '2021-04-08 19:03:58', '2021-04-08 19:03:58'),
(135, 32, 0, 0, 619000, 738000, 'App\\Models\\Order', 33, 13, 'Tạo mới đơn hàng #33', '2021-04-08 19:06:06', '2021-04-08 19:06:06'),
(136, 23, 0, 0, 622000, 622000, 'App\\Models\\Order', 34, 13, 'Tạo mới đơn hàng #34', '2021-04-08 19:52:07', '2021-04-08 19:52:07'),
(137, 0, 9, 0, 5451000, 5451000, 'App\\Models\\Import', 38, 13, 'Tạo mới nhập hàng #38', '2021-04-08 21:10:27', '2021-04-08 21:10:27'),
(138, 30, 0, 0, 10400000, 10400000, 'App\\Models\\Order', 35, 13, 'Tạo mới đơn hàng #35', '2021-04-08 21:25:53', '2021-04-08 21:25:53'),
(139, 0, 4, 0, -12612000, 1300000, 'App\\Models\\Import', 12, 13, 'Cập nhật thông tin nhập hàng #12', '2021-04-08 21:30:53', '2021-04-08 21:30:53'),
(140, 0, 4, 0, 0, 1300000, 'App\\Models\\Import', 12, 13, 'Cập nhật thông tin nhập hàng #12', '2021-04-08 21:31:08', '2021-04-08 21:31:08'),
(141, 0, 4, 0, -1300000, 0, 'App\\Models\\Import', 23, 13, 'Cập nhật thông tin nhập hàng #23', '2021-04-08 21:31:31', '2021-04-08 21:31:31'),
(142, 0, 9, 0, -5451000, 0, 'App\\Models\\Import', 38, 13, 'Cập nhật thông tin nhập hàng #38', '2021-04-08 21:32:10', '2021-04-08 21:32:10'),
(143, 0, 5, 0, -3946000, 0, 'App\\Models\\Import', 14, 13, 'Cập nhật thông tin nhập hàng #14', '2021-04-08 21:35:45', '2021-04-08 21:35:45'),
(144, 32, 0, 0, 1120000, 1858000, 'App\\Models\\Order', 36, 13, 'Tạo mới đơn hàng #36', '2021-04-08 22:26:49', '2021-04-08 22:26:49'),
(145, 0, 3, 0, 12024000, 22024000, 'App\\Models\\Import', 39, 13, 'Tạo mới nhập hàng #39', '2021-04-08 23:03:20', '2021-04-08 23:03:20'),
(146, 30, 0, 0, 4272000, 14672000, 'App\\Models\\Order', 35, 13, 'Cập nhật đơn hàng #35', '2021-04-08 23:04:12', '2021-04-08 23:04:12'),
(147, 30, 0, 0, 0, 14672000, 'App\\Models\\Order', 35, 13, 'Cập nhật đơn hàng #35', '2021-04-09 00:35:13', '2021-04-09 00:35:13'),
(148, 32, 0, 0, 110000, 1968000, 'App\\Models\\Order', 37, 13, 'Tạo mới đơn hàng #37', '2021-04-09 03:23:02', '2021-04-09 03:23:02'),
(149, 32, 0, 0, 250000, 2218000, 'App\\Models\\Order', 38, 13, 'Tạo mới đơn hàng #38', '2021-04-10 03:05:14', '2021-04-10 03:05:14'),
(150, 32, 0, 0, -110000, 2108000, 'App\\Models\\Order', 37, 13, 'Cập nhật đơn hàng #37', '2021-04-10 03:05:28', '2021-04-10 03:05:28'),
(151, 32, 0, 0, -1120000, 988000, 'App\\Models\\Order', 36, 13, 'Cập nhật đơn hàng #36', '2021-04-10 03:05:48', '2021-04-10 03:05:48'),
(152, 32, 0, 0, -619000, 369000, 'App\\Models\\Order', 33, 13, 'Cập nhật đơn hàng #33', '2021-04-10 03:06:13', '2021-04-10 03:06:13'),
(153, 17, 0, 0, -41040000, 0, 'App\\Models\\Order', 32, 13, 'Cập nhật đơn hàng #32', '2021-04-10 03:06:31', '2021-04-10 03:06:31'),
(154, 32, 0, 0, 0, 369000, 'App\\Models\\Order', 39, 13, 'Tạo mới đơn hàng #39', '2021-04-11 01:28:10', '2021-04-11 01:28:10'),
(155, 36, 0, 0, -725997, 3, 'App\\Models\\Order', 9, 13, 'Cập nhật đơn hàng #9', '2021-04-11 01:35:39', '2021-04-11 01:35:39'),
(156, 0, 7, 0, 0, 0, 'App\\Models\\Import', 40, 13, 'Tạo mới nhập hàng #40', '2021-04-11 04:19:19', '2021-04-11 04:19:19'),
(157, 41, 0, 0, 520000, 520000, 'App\\Models\\Order', 40, 13, 'Tạo mới đơn hàng #40', '2021-04-11 04:19:41', '2021-04-11 04:19:41'),
(158, 23, 0, 0, -622000, 0, 'App\\Models\\Order', 34, 13, 'Cập nhật đơn hàng #34', '2021-04-11 21:00:13', '2021-04-11 21:00:13'),
(159, 36, 0, 0, -3, 0, 'App\\Models\\Order', 9, 13, 'Cập nhật đơn hàng #9', '2021-04-11 21:00:41', '2021-04-11 21:00:41'),
(160, 30, 0, 0, -1730000, 12942000, 'App\\Models\\Order', 35, 13, 'Hủy sản phẩm #247 - đơn hàng #35', '2021-04-12 19:28:37', '2021-04-12 19:28:37'),
(161, 30, 0, 0, -2000, 12940000, 'App\\Models\\Order', 35, 13, 'Cập nhật đơn hàng #35', '2021-04-12 19:28:45', '2021-04-12 19:28:45'),
(162, 32, 0, 0, 30000, 399000, 'App\\Models\\Order', 41, 13, 'Tạo mới đơn hàng #41', '2021-04-13 03:52:40', '2021-04-13 03:52:40'),
(163, 32, 0, 0, 0, 399000, 'App\\Models\\Order', 42, 13, 'Tạo mới đơn hàng #42', '2021-04-14 21:23:12', '2021-04-14 21:23:12'),
(164, 0, 3, 0, -10000000, 12024000, 'App\\Models\\Import', 15, 13, 'Cập nhật thông tin nhập hàng #15', '2021-04-14 21:24:14', '2021-04-14 21:24:14'),
(165, 0, 4, 0, 4240000, 4240000, 'App\\Models\\Import', 41, 13, 'Tạo mới nhập hàng #41', '2021-04-15 02:04:41', '2021-04-15 02:04:41'),
(166, 30, 0, 0, -12940000, 0, 'App\\Models\\Order', 35, 13, 'Cập nhật đơn hàng #35', '2021-04-16 19:47:58', '2021-04-16 19:47:58'),
(167, 30, 0, 0, 7462000, 7462000, 'App\\Models\\Order', 43, 13, 'Tạo mới đơn hàng #43', '2021-04-17 19:29:38', '2021-04-17 19:29:38'),
(168, 32, 0, 0, 0, 399000, 'App\\Models\\Order', 44, 13, 'Tạo mới đơn hàng #44', '2021-04-17 19:30:19', '2021-04-17 19:30:19'),
(169, 0, 3, 0, -12024000, 0, 'App\\Models\\Import', 39, 13, 'Cập nhật thông tin nhập hàng #39', '2021-04-17 19:34:58', '2021-04-17 19:34:58'),
(170, 32, 0, 0, -90000, 309000, 'App\\Models\\Order', 31, 13, 'Cập nhật sản phẩm #249 - đơn hàng #31', '2021-04-17 19:37:32', '2021-04-17 19:37:32'),
(171, 32, 0, 0, 0, 309000, 'App\\Models\\Order', 31, 13, 'Cập nhật đơn hàng #31', '2021-04-17 19:40:37', '2021-04-17 19:40:37'),
(172, 32, 0, 0, 1000, 310000, 'App\\Models\\Order', 31, 13, 'Cập nhật đơn hàng #31', '2021-04-17 19:40:57', '2021-04-17 19:40:57'),
(173, 32, 0, 0, -30000, 280000, 'App\\Models\\Order', 24, 13, 'Cập nhật đơn hàng #24', '2021-04-17 19:41:20', '2021-04-17 19:41:20'),
(174, 32, 0, 0, 0, 280000, 'App\\Models\\Order', 45, 13, 'Tạo mới đơn hàng #45', '2021-04-17 20:16:02', '2021-04-17 20:16:02'),
(175, 32, 0, 0, -44000, 236000, 'App\\Models\\Order', 45, 13, 'Hủy sản phẩm #54 - đơn hàng #45', '2021-04-17 20:18:24', '2021-04-17 20:18:24'),
(176, 0, 10, 0, 0, 0, 'App\\Models\\Import', 42, 13, 'Tạo mới nhập hàng #42', '2021-04-17 20:41:50', '2021-04-17 20:41:50'),
(177, 32, 0, 0, 458000, 694000, 'App\\Models\\Order', 46, 13, 'Tạo mới đơn hàng #46', '2021-04-17 21:08:55', '2021-04-17 21:08:55'),
(178, 32, 0, 0, -75000, 619000, 'App\\Models\\Order', 44, 13, 'Hủy sản phẩm #146 - đơn hàng #44', '2021-04-17 21:46:33', '2021-04-17 21:46:33'),
(179, 32, 0, 0, 75000, 694000, 'App\\Models\\Order', 44, 13, 'Cập nhật đơn hàng #44', '2021-04-17 21:46:54', '2021-04-17 21:46:54'),
(180, 0, 4, 0, 5900000, 10140000, 'App\\Models\\Import', 43, 13, 'Tạo mới nhập hàng #43', '2021-04-18 03:18:59', '2021-04-18 03:18:59'),
(181, 42, 0, 0, 0, 0, 'App\\Models\\Order', 47, 13, 'Tạo mới đơn hàng #47', '2021-04-18 19:24:57', '2021-04-18 19:24:57'),
(182, 30, 0, 0, -7462000, 0, 'App\\Models\\Order', 43, 13, 'Cập nhật đơn hàng #43', '2021-04-18 19:25:28', '2021-04-18 19:25:28'),
(183, 42, 0, 0, 0, 0, 'App\\Models\\Order', 47, 13, 'Cập nhật đơn hàng #47', '2021-04-18 19:25:51', '2021-04-18 19:25:51'),
(184, 32, 0, 0, -105000, 589000, 'App\\Models\\Order', 46, 13, 'Hủy sản phẩm #134 - đơn hàng #46', '2021-04-18 19:49:46', '2021-04-18 19:49:46'),
(185, 32, 0, 0, 105000, 694000, 'App\\Models\\Order', 46, 13, 'Cập nhật đơn hàng #46', '2021-04-18 19:50:17', '2021-04-18 19:50:17'),
(186, 0, 9, 0, 3240000, 3240000, 'App\\Models\\Import', 44, 13, 'Tạo mới nhập hàng #44', '2021-04-18 20:00:54', '2021-04-18 20:00:54'),
(187, 0, 7, 0, 2860000, 2860000, 'App\\Models\\Import', 45, 13, 'Tạo mới nhập hàng #45', '2021-04-18 20:02:10', '2021-04-18 20:02:10'),
(188, 39, 0, 0, 0, 0, 'App\\Models\\Order', 48, 13, 'Tạo mới đơn hàng #48', '2021-04-18 20:49:50', '2021-04-18 20:49:50'),
(189, 32, 0, 0, -458000, 236000, 'App\\Models\\Order', 46, 13, 'Cập nhật đơn hàng #46', '2021-04-18 20:50:30', '2021-04-18 20:50:30'),
(190, 0, 10, 0, 4572000, 4572000, 'App\\Models\\Import', 46, 13, 'Tạo mới nhập hàng #46', '2021-04-18 20:53:22', '2021-04-18 20:53:22'),
(191, 43, 0, 0, 2330000, 2330000, 'App\\Models\\Order', 49, 13, 'Tạo mới đơn hàng #49', '2021-04-18 20:57:23', '2021-04-18 20:57:23'),
(192, 0, 4, 0, -20000, 10120000, 'App\\Models\\Import', 43, 13, 'Sửa sản phẩm #235 - thông tin nhập hàng #43', '2021-04-18 21:08:54', '2021-04-18 21:08:54'),
(193, 0, 4, 0, -40000, 10080000, 'App\\Models\\Import', 43, 13, 'Sửa sản phẩm #106 - thông tin nhập hàng #43', '2021-04-18 21:09:07', '2021-04-18 21:09:07'),
(194, 0, 4, 0, 0, 10080000, 'App\\Models\\Import', 47, 13, 'Tạo mới nhập hàng #47', '2021-04-19 00:27:21', '2021-04-19 00:27:21'),
(195, 0, 10, 0, -4572000, 0, 'App\\Models\\Import', 46, 13, 'Cập nhật thông tin nhập hàng #46', '2021-04-19 01:18:09', '2021-04-19 01:18:09'),
(196, 0, 4, 0, -5840000, 4240000, 'App\\Models\\Import', 43, 13, 'Cập nhật thông tin nhập hàng #43', '2021-04-19 01:18:34', '2021-04-19 01:18:34'),
(197, 0, 4, 0, -4240000, 0, 'App\\Models\\Import', 41, 13, 'Cập nhật thông tin nhập hàng #41', '2021-04-19 01:18:50', '2021-04-19 01:18:50'),
(198, 0, 9, 0, -3240000, 0, 'App\\Models\\Import', 44, 13, 'Cập nhật thông tin nhập hàng #44', '2021-04-19 01:19:09', '2021-04-19 01:19:09'),
(199, 0, 7, 0, -2860000, 0, 'App\\Models\\Import', 45, 13, 'Cập nhật thông tin nhập hàng #45', '2021-04-19 01:19:24', '2021-04-19 01:19:24'),
(200, 0, 7, 0, 0, 0, 'App\\Models\\Import', 45, 13, 'Cập nhật thông tin nhập hàng #45', '2021-04-19 01:19:34', '2021-04-19 01:19:34'),
(201, 0, 9, 0, 0, 0, 'App\\Models\\Import', 48, 13, 'Tạo mới nhập hàng #48', '2021-04-19 20:43:34', '2021-04-19 20:43:34'),
(202, 0, 9, 0, 5550000, 5550000, 'App\\Models\\Import', 49, 13, 'Tạo mới nhập hàng #49', '2021-04-19 20:44:50', '2021-04-19 20:44:50'),
(203, 43, 0, 0, -2330000, 0, 'App\\Models\\Order', 49, 13, 'Cập nhật đơn hàng #49', '2021-04-20 01:21:20', '2021-04-20 01:21:20'),
(204, 0, 9, 0, -5550000, 0, 'App\\Models\\Import', 49, 13, 'Cập nhật thông tin nhập hàng #49', '2021-04-20 01:25:17', '2021-04-20 01:25:17'),
(205, 0, 7, 0, 0, 0, 'App\\Models\\Import', 50, 13, 'Tạo mới nhập hàng #50', '2021-04-20 01:27:51', '2021-04-20 01:27:51'),
(206, 0, 4, 0, 3936000, 3936000, 'App\\Models\\Import', 51, 13, 'Tạo mới nhập hàng #51', '2021-04-20 01:31:19', '2021-04-20 01:31:19'),
(207, 30, 0, 0, 11150000, 11150000, 'App\\Models\\Order', 50, 13, 'Tạo mới đơn hàng #50', '2021-04-20 01:32:00', '2021-04-20 01:32:00'),
(208, 32, 0, 0, 4158000, 4394000, 'App\\Models\\Order', 51, 13, 'Tạo mới đơn hàng #51', '2021-04-20 01:34:32', '2021-04-20 01:34:32'),
(209, 32, 0, 0, -4158000, 236000, 'App\\Models\\Order', 51, 13, 'Hủy sản phẩm #254 - đơn hàng #51', '2021-04-20 01:52:08', '2021-04-20 01:52:08'),
(210, 32, 0, 0, 4302000, 4538000, 'App\\Models\\Order', 51, 13, 'Cập nhật đơn hàng #51', '2021-04-20 01:52:45', '2021-04-20 01:52:45'),
(211, 32, 0, 0, -4302000, 236000, 'App\\Models\\Order', 51, 13, 'Hủy sản phẩm #254 - đơn hàng #51', '2021-04-20 01:53:34', '2021-04-20 01:53:34'),
(212, 32, 0, 0, 4158000, 4394000, 'App\\Models\\Order', 51, 13, 'Cập nhật đơn hàng #51', '2021-04-20 02:17:41', '2021-04-20 02:17:41'),
(213, 32, 0, 0, 955000, 5349000, 'App\\Models\\Order', 52, 13, 'Tạo mới đơn hàng #52', '2021-04-22 23:22:19', '2021-04-22 23:22:19'),
(214, 32, 0, 0, -4158000, 1191000, 'App\\Models\\Order', 51, 13, 'Cập nhật đơn hàng #51', '2021-04-22 23:23:36', '2021-04-22 23:23:36'),
(215, 30, 0, 0, -11150000, 0, 'App\\Models\\Order', 50, 13, 'Cập nhật đơn hàng #50', '2021-04-22 23:23:57', '2021-04-22 23:23:57'),
(216, 32, 0, 0, -500000, 691000, 'App\\Models\\Order', 52, 13, 'Hủy sản phẩm #203 - đơn hàng #52', '2021-04-22 23:48:16', '2021-04-22 23:48:16'),
(217, 32, 0, 0, 500000, 1191000, 'App\\Models\\Order', 52, 13, 'Cập nhật đơn hàng #52', '2021-04-22 23:48:44', '2021-04-22 23:48:44'),
(218, 44, 0, 0, 688000, 688000, 'App\\Models\\Order', 53, 13, 'Tạo mới đơn hàng #53', '2021-04-24 19:50:26', '2021-04-24 19:50:26'),
(219, 44, 0, 0, 215000, 903000, 'App\\Models\\Order', 53, 13, 'Cập nhật đơn hàng #53', '2021-04-24 20:25:39', '2021-04-24 20:25:39'),
(220, 32, 0, 0, -955000, 236000, 'App\\Models\\Order', 52, 13, 'Cập nhật đơn hàng #52', '2021-04-24 20:29:24', '2021-04-24 20:29:24'),
(221, 32, 0, 0, -30000, 206000, 'App\\Models\\Order', 41, 13, 'Cập nhật đơn hàng #41', '2021-04-24 20:29:55', '2021-04-24 20:29:55'),
(222, 0, 0, 11, -10000000, 160000000, 'App\\Models\\UserDebt', 11, 13, 'Trả tiền #-10,000,000', '2021-04-24 20:55:34', '2021-04-24 20:55:34'),
(223, 39, 0, 0, 0, 0, 'App\\Models\\Order', 54, 13, 'Tạo mới đơn hàng #54', '2021-04-26 00:19:14', '2021-04-26 00:19:14'),
(224, 0, 3, 0, 3700000, 3700000, 'App\\Models\\Import', 52, 13, 'Tạo mới nhập hàng #52', '2021-04-26 00:23:39', '2021-04-26 00:23:39'),
(225, 0, 4, 0, 2550000, 6486000, 'App\\Models\\Import', 53, 13, 'Tạo mới nhập hàng #53', '2021-04-26 00:24:52', '2021-04-26 00:24:52'),
(226, 30, 0, 0, 11445000, 11445000, 'App\\Models\\Order', 55, 13, 'Tạo mới đơn hàng #55', '2021-04-26 00:27:13', '2021-04-26 00:27:13'),
(227, 0, 9, 0, 0, 0, 'App\\Models\\Import', 54, 13, 'Tạo mới nhập hàng #54', '2021-04-26 00:51:11', '2021-04-26 00:51:11'),
(228, 36, 0, 0, 0, 0, 'App\\Models\\Order', 56, 13, 'Tạo mới đơn hàng #56', '2021-04-26 04:07:04', '2021-04-26 04:07:04'),
(229, 30, 0, 0, -1950000, 9495000, 'App\\Models\\Order', 55, 13, 'Hủy sản phẩm #264 - đơn hàng #55', '2021-04-26 21:09:42', '2021-04-26 21:09:42'),
(230, 30, 0, 0, 0, 9495000, 'App\\Models\\Order', 55, 13, 'Cập nhật đơn hàng #55', '2021-04-26 21:10:04', '2021-04-26 21:10:04'),
(231, 0, 3, 0, 2550000, 6250000, 'App\\Models\\Import', 53, 13, 'Thay đổi thông tin nhập hàng #53', '2021-04-26 21:11:13', '2021-04-26 21:11:13'),
(232, 0, 4, 0, -2550000, 3936000, 'App\\Models\\Import', 53, 13, 'Thay đổi thông tin nhập hàng #53', '2021-04-26 21:11:13', '2021-04-26 21:11:13'),
(233, 0, 3, 0, -60000, 6190000, 'App\\Models\\Import', 53, 13, 'Sửa sản phẩm #265 - thông tin nhập hàng #53', '2021-04-26 21:11:34', '2021-04-26 21:11:34'),
(234, 0, 3, 0, -1850000, 4340000, 'App\\Models\\Import', 52, 13, 'Hủy sản phẩm #264 - thông tin nhập hàng #52', '2021-04-26 21:11:56', '2021-04-26 21:11:56'),
(235, 0, 4, 0, -3936000, 0, 'App\\Models\\Import', 51, 13, 'Cập nhật thông tin nhập hàng #51', '2021-05-01 20:56:51', '2021-05-01 20:56:51'),
(236, 36, 0, 0, 0, 0, 'App\\Models\\Order', 57, 13, 'Tạo mới đơn hàng #57', '2021-05-01 20:59:32', '2021-05-01 20:59:32'),
(237, 36, 0, 0, 0, 0, 'App\\Models\\Order', 58, 13, 'Tạo mới đơn hàng #58', '2021-05-01 21:00:02', '2021-05-01 21:00:02'),
(238, 30, 0, 0, -9495000, 0, 'App\\Models\\Order', 55, 13, 'Cập nhật đơn hàng #55', '2021-05-01 21:01:40', '2021-05-01 21:01:40'),
(239, 44, 0, 0, -903000, 0, 'App\\Models\\Order', 53, 13, 'Cập nhật đơn hàng #53', '2021-05-01 21:02:23', '2021-05-01 21:02:23'),
(240, 32, 0, 0, 270000, 476000, 'App\\Models\\Order', 59, 13, 'Tạo mới đơn hàng #59', '2021-05-01 22:57:41', '2021-05-01 22:57:41'),
(241, 32, 0, 0, -270000, 206000, 'App\\Models\\Order', 59, 13, 'Cập nhật đơn hàng #59', '2021-05-01 22:57:53', '2021-05-01 22:57:53'),
(242, 32, 0, 0, 0, 206000, 'App\\Models\\Order', 60, 13, 'Tạo mới đơn hàng #60', '2021-05-01 23:55:19', '2021-05-01 23:55:19'),
(243, 32, 0, 0, 0, 206000, 'App\\Models\\Order', 61, 13, 'Tạo mới đơn hàng #61', '2021-05-03 02:21:35', '2021-05-03 02:21:35'),
(244, 32, 0, 0, -250000, -44000, 'App\\Models\\Order', 38, 13, 'Cập nhật đơn hàng #38', '2021-05-03 02:21:50', '2021-05-03 02:21:50'),
(245, 0, 8, 0, 100000, 6457000, 'App\\Models\\Import', 55, 13, 'Tạo mới nhập hàng #55', '2021-05-04 02:58:36', '2021-05-04 02:58:36'),
(246, 32, 0, 0, 437000, 393000, 'App\\Models\\Order', 62, 13, 'Tạo mới đơn hàng #62', '2021-05-04 03:00:57', '2021-05-04 03:00:57'),
(247, 32, 0, 0, 30000, 423000, 'App\\Models\\Order', 62, 13, 'Cập nhật đơn hàng #62', '2021-05-04 03:01:18', '2021-05-04 03:01:18'),
(248, 32, 0, 0, -29000, 394000, 'App\\Models\\Order', 62, 13, 'Cập nhật sản phẩm #135 - đơn hàng #62', '2021-05-04 03:02:40', '2021-05-04 03:02:40'),
(249, 32, 0, 0, 2000, 396000, 'App\\Models\\Order', 62, 13, 'Cập nhật sản phẩm #220 - đơn hàng #62', '2021-05-04 03:02:52', '2021-05-04 03:02:52'),
(250, 32, 0, 0, -16000, 380000, 'App\\Models\\Order', 62, 13, 'Hủy sản phẩm #142 - đơn hàng #62', '2021-05-04 03:03:34', '2021-05-04 03:03:34'),
(251, 32, 0, 0, 46000, 426000, 'App\\Models\\Order', 62, 13, 'Cập nhật đơn hàng #62', '2021-05-04 03:04:07', '2021-05-04 03:04:07'),
(252, 0, 9, 0, 0, 0, 'App\\Models\\Import', 56, 13, 'Tạo mới nhập hàng #56', '2021-05-04 19:56:53', '2021-05-04 19:56:53'),
(253, 32, 0, 0, 0, 426000, 'App\\Models\\Order', 63, 13, 'Tạo mới đơn hàng #63', '2021-05-04 19:57:31', '2021-05-04 19:57:31'),
(254, 0, 9, 0, 0, 0, 'App\\Models\\Import', 57, 13, 'Tạo mới nhập hàng #57', '2021-05-04 20:00:09', '2021-05-04 20:00:09'),
(255, 0, 4, 0, 6065000, 6065000, 'App\\Models\\Import', 58, 13, 'Tạo mới nhập hàng #58', '2021-05-04 20:01:34', '2021-05-04 20:01:34'),
(256, 0, 4, 0, 1300000, 7365000, 'App\\Models\\Import', 59, 13, 'Tạo mới nhập hàng #59', '2021-05-04 20:02:57', '2021-05-04 20:02:57'),
(257, 30, 0, 0, 13110000, 13110000, 'App\\Models\\Order', 64, 13, 'Tạo mới đơn hàng #64', '2021-05-04 20:06:26', '2021-05-04 20:06:26'),
(258, 30, 0, 0, 0, 13110000, 'App\\Models\\Order', 64, 13, 'Cập nhật sản phẩm #255 - đơn hàng #64', '2021-05-06 01:45:27', '2021-05-06 01:45:27'),
(259, 30, 0, 0, 0, 13110000, 'App\\Models\\Order', 64, 13, 'Cập nhật sản phẩm #255 - đơn hàng #64', '2021-05-06 01:46:16', '2021-05-06 01:46:16'),
(260, 30, 0, 0, 50000, 13160000, 'App\\Models\\Order', 64, 13, 'Cập nhật sản phẩm #255 - đơn hàng #64', '2021-05-06 01:49:35', '2021-05-06 01:49:35'),
(261, 30, 0, 0, -50000, 13110000, 'App\\Models\\Order', 64, 13, 'Cập nhật sản phẩm #255 - đơn hàng #64', '2021-05-06 01:54:39', '2021-05-06 01:54:39'),
(262, 44, 0, 0, 71000, 71000, 'App\\Models\\Order', 65, 13, 'Tạo mới đơn hàng #65', '2021-05-06 01:55:38', '2021-05-06 01:55:38'),
(263, 44, 0, 0, 71000, 142000, 'App\\Models\\Order', 65, 13, 'Hủy đơn hàng #65', '2021-05-06 01:55:46', '2021-05-06 01:55:46'),
(264, 0, 4, 0, 1740000, 9105000, 'App\\Models\\Import', 6, 13, 'Tạo mới nhập hàng #6', '2021-05-06 02:03:51', '2021-05-06 02:03:51'),
(265, 0, 4, 0, 1740000, 10845000, 'App\\Models\\Import', 6, 13, 'Hủy đơn nhập hàng #6', '2021-05-06 02:04:12', '2021-05-06 02:04:12'),
(266, 0, 4, 0, 1740000, 9105000, 'App\\Models\\Import', 60, 13, 'Tạo mới nhập hàng #60', '2021-05-06 02:06:24', '2021-05-06 02:06:24'),
(267, 30, 0, 0, -1830000, 11280000, 'App\\Models\\Order', 64, 13, 'Hủy sản phẩm #256 - đơn hàng #64', '2021-05-06 02:14:10', '2021-05-06 02:14:10'),
(268, 30, 0, 0, 3600000, 14880000, 'App\\Models\\Order', 64, 13, 'Cập nhật đơn hàng #64', '2021-05-06 02:15:29', '2021-05-06 02:15:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debt` int(11) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `debt`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'Super Admin', 'spaussio@gmail.com', '31231231231', '2131231', 0, NULL, '167db14681c7570005d35e18b6a5890ec762e0a0', 'dyW714gngErURL4aMvSmj446Y29YA1844V35OIewKFvI7Byuo2iWX1iLZt0C', '2020-12-28 03:08:50', '2021-02-01 21:23:38'),
(13, 'Kho sỉ Bích Toàn', 'thangnb18@gmail.com', '0964353696', NULL, 0, NULL, '167db14681c7570005d35e18b6a5890ec762e0a0', 'bRTWzdwHvAQEckXmSZU3yORN5GBCmiGixnwgsTH6W2ZorXowOQCvXUrgQcnn', '2021-03-04 21:23:30', '2021-03-04 21:23:52'),
(14, 'Tùng Kiều - Văn Điển', 'tungkieu@gmail.com', '0987475575', 'Khu tập thể Phân Lân - Văn Điển - Hà Nội', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-04 21:31:20', '2021-04-07 03:03:04'),
(15, 'Trâm Hải Nam', 'tramhainam@gmail.com', '0989226113', 'Đà Nẵng (gửi xe A.Linh - Ngọc Hồi)', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:13:34', '2021-03-05 00:14:02'),
(16, 'NhuNguyen', 'nhunguyen@gmail.com', '0945230888', '401/41/25 đường Cổ Nhuế, Bắc Từ Liêm, Hà Nội', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:15:08', '2021-03-05 00:15:43'),
(17, 'Vũ Ngọc Huân', 'vungochuan@gmail.com', '0392215483', '154 Yên Lãng, Hà Nội', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:18:13', '2021-04-10 03:06:31'),
(18, 'Thanh Ngọc - Biên Hoà', 'thanhngoc@gmail.com', '0368365051', 'Chùa Từ Đức, KP 4, Trảng Dải, TP Biên Hoà, Đồng Nai', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:22:58', '2021-03-05 00:23:35'),
(19, 'Thanh - Hạ Long', 'thanhhalong@gmail.com', '0399213668', 'Ngã 4 Loong Toong, Hạ Long, Quảng Ninh', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:25:02', '2021-03-05 00:25:14'),
(20, 'Đặngthithanh', 'dangthithanh@gmail.com', '0383332226', 'Số 154 thôn 6 Quảng Chính, Hải Hà, Quảng Ninh', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:27:02', '2021-03-05 00:27:12'),
(21, 'Ngọc Kiều', 'ngockieu@gmail.com', '0869658659', 'Đường Trần Nhật Duật kéo dài, gần CA Hải Yên, Khu 7, P.Hải Yên, TP.Móng Cái, Quảng Ninh', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:28:30', '2021-03-05 00:29:11'),
(22, 'Trần Thu Hưởng', 'tranthuhuong@gmail.com', '0944790962', 'Nhà vườn B14, cổng số 3 Vũ Trọng Phụng, Thanh Xuân, Hà Nội', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:30:02', '2021-03-05 00:30:25'),
(23, 'Chị Hà Phương DCI', 'haphuongdci@gmail.com', '0942565686', 'Hapulico - 81 Vũ Trọng Phụng, TX, HN', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:31:42', '2021-04-11 21:00:13'),
(24, 'Jimmy Vu', 'jimmyvu@gmail.com', '0975914514', 'Số 7 ngõ 47 Khương Trung, TX, HN', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:33:29', '2021-03-05 00:33:50'),
(25, 'Chị Vân Anh Leader DCI', 'duongvananh@gmail.com', '0981161185', 'Nhà 24 ngách 63 ngõ 191 Khương Thượng, TX, HN', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:34:16', '2021-03-05 00:35:08'),
(26, 'Matta Hong Chau Bui', 'matta@gmail.com', '0984796126', 'Hẻm 263 Hùng Vương, Thị trấn Dầu Tiếng, huyện Dầu Tiếng, Bình Dương', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:36:21', '2021-03-05 00:36:31'),
(27, 'Bily', 'bily@gmail.com', '0375298252', 'Quầy thuốc Thảo Anh - 83 Lê Quý Đôn, Quảng Hà, Hải Hà, Quảng Ninh', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:37:35', '2021-03-05 00:37:45'),
(28, 'Mnong (Mỹ)', 'mnong@gmail.com', '0854150628', '213 Quốc lộ 20, xã Phú Hội, Liên Nghĩa, Đức Trọng, Lâm Đồng', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:39:03', '2021-04-02 01:27:00'),
(29, 'Kim Marian', 'kimmarian@gmail.com', '0987549989', 'Số 18, ngõ 182 Tân Phong, Thuỵ Phương, Bắc Từ Liêm, HN (Cty: 167 Trung Kính)', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:40:54', '2021-03-05 00:41:03'),
(30, 'Le Hong Van', 'lehongvan@gmail.com', '0981546239', 'Thanh Hoá (gửi xe Mạnh Vi, bến xe Đuôi Cá)', 14880000, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 00:45:59', '2021-05-06 02:15:29'),
(31, 'Trần Minh Hải', 'tranminhhai@gmail.com', '0965273533', 'Thái Bình (Gửi xe 0964235221)', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-03-05 20:14:24', '2021-03-11 03:59:53'),
(32, 'Khách lẻ', 'khachle@gmail.com', NULL, NULL, 426000, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-04-01 20:11:35', '2021-05-04 19:57:31'),
(33, 'Hiền A8', 'hiena8@gmail.com', NULL, 'La Tinh', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-04-02 00:40:39', '2021-04-02 00:46:40'),
(34, 'Nguyễn Thị Lệ Hằng', 'nguyenthilehang@gmail.com', '0938331117', '30/19 Nguyễn Văn Của, P13, Q8, TP HCM', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-04-02 00:47:44', '2021-04-02 00:51:20'),
(35, 'Quỳnh Hoàng', 'quynhhoang@gmail.com', NULL, 'Thái Nguyên, gửi xe Huy Sĩ (0335762551/0914583899)', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-04-02 01:58:41', '2021-04-02 02:46:20'),
(36, 'Chào Buổi Sáng', 'chaobuoisang@gmail.com', '0961809523', 'Qua lấy', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-04-02 02:37:31', '2021-05-01 21:00:02'),
(37, 'ThanhThanh', 'ThanhThanh@gmail.com', '0966369669', 'Nhà C Bộ Quốc Phòng - Ngõ 120 Hoàng Quốc Việt - Hà Nội', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-04-04 18:59:37', '2021-04-07 03:03:44'),
(38, 'Trần Huệ', 'tranhue@gmail.com', '0977387118', 'Nấm Spa - La Dương', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-04-04 19:25:38', '2021-04-04 23:24:33'),
(39, 'Phương Anh (Nhận hàng: Thảo)', 'phuonganh@gmail.com', '0967716184', 'Số 44 ngách 14 ngõ 121 Chùa Láng, Hà Nội', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-04-05 00:11:17', '2021-04-26 00:19:14'),
(40, 'An Võ', 'anvo@gmail.com', '0935551346', 'Thôn Dương Sơn, Hòa Tiến, Hòa Vang, Đà Nẵng (ZTO)', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-04-05 03:26:22', '2021-04-05 20:45:12'),
(41, 'Nhung Gà Con', 'nhunggacon@gmail.com', NULL, NULL, 520000, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-04-11 04:17:06', '2021-04-11 04:19:41'),
(42, 'Ngoc Thu Doan', 'ngocthudoan@gmail.com', '0976067805', '214 đường DX34 tổ 9 khu 1 Phường Phú Mỹ, TP Thủ Dầu, Một Bình Dương', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-04-17 19:30:59', '2021-04-18 19:25:51'),
(43, 'Bùi Đường', 'buiduong@gmail.com', '0986376118', 'Tòa CT2, Lô A10, KĐT Nam Trung Yên, đường Nguyễn Chánh, Yên Hòa, Cầu Giấy, HN', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-04-18 20:51:33', '2021-04-20 01:21:20'),
(44, 'Nguyễn Thị Ái Khanh', 'aikhanh@gmail.com', '0906304551', 'Tân An - Tri Hải - Ninh Hải - Ninh Thuận', 0, NULL, 'b102ce1d5eebac2b6d74bda8c87c47a050c80491', NULL, '2021-04-24 19:40:33', '2021-05-06 01:55:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_agencys`
--

CREATE TABLE `user_agencys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debt` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_agencys`
--

INSERT INTO `user_agencys` (`id`, `name`, `phone`, `address`, `debt`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Chuyển kho', NULL, NULL, 0, 1, '2021-03-14 02:48:07', '2021-04-07 03:57:36'),
(3, 'TK Trung Huy', NULL, NULL, 4340000, 1, '2021-04-02 00:26:48', '2021-04-26 21:11:56'),
(4, 'TK Quang Mơ', '0931518828', NULL, 9105000, 1, '2021-04-02 00:27:31', '2021-05-06 02:06:24'),
(5, 'Liên Béo Tân Thanh', '0862516226', NULL, 0, 1, '2021-04-02 00:28:21', '2021-04-08 21:35:45'),
(6, 'TK Thắng Nhung', NULL, NULL, 0, 1, '2021-04-02 00:28:37', '2021-04-02 03:31:05'),
(7, 'TK Mạnh Oanh (Tuyết)', NULL, NULL, 0, 1, '2021-04-02 00:28:48', '2021-04-20 01:27:51'),
(8, 'Nhung Gà Con', NULL, NULL, 6457000, 1, '2021-04-02 00:29:04', '2021-05-04 02:58:36'),
(9, 'TK Chung Xuân', NULL, NULL, 0, 1, '2021-04-02 02:03:56', '2021-05-04 20:00:09'),
(10, 'TK Tưởng Ngoan', NULL, NULL, 0, 1, '2021-04-04 19:02:11', '2021-04-19 01:18:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_debts`
--

CREATE TABLE `user_debts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debt` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_debts`
--

INSERT INTO `user_debts` (`id`, `name`, `phone`, `address`, `debt`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Chú Phong Huệ (trả tháng 7/2021)', NULL, NULL, 200000000, 0, '2021-04-05 02:09:44', '2021-04-05 02:15:03'),
(8, 'Chị Phương', NULL, NULL, 200000000, 1, '2021-04-05 02:10:12', '2021-04-05 02:13:48'),
(9, 'Chị Kẹ (trả lãi 360k/tháng)', NULL, NULL, 60000000, 0, '2021-04-05 02:10:22', '2021-04-05 02:13:41'),
(10, 'Bác Liên Thảo (trả 12/2021)', NULL, NULL, 100000000, 0, '2021-04-05 02:11:01', '2021-04-05 02:15:45'),
(11, 'Bạn chị Phương (10tr gốc + lãi 1 tr/tháng)', NULL, NULL, 160000000, 0, '2021-04-05 02:11:22', '2021-04-24 20:55:34'),
(12, 'Quần áo', NULL, NULL, 52000000, 1, '2021-04-05 02:12:24', '2021-04-05 02:13:33');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `alias`
--
ALTER TABLE `alias`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attribute_categorys`
--
ALTER TABLE `attribute_categorys`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD KEY `attribute_product_attribute_id_foreign` (`attribute_id`),
  ADD KEY `attribute_product_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_alias_unique` (`alias`);

--
-- Chỉ mục cho bảng `category_post`
--
ALTER TABLE `category_post`
  ADD KEY `category_post_category_id_foreign` (`category_id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_comment_type_comment_id_index` (`comment_type`,`comment_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_product_session`
--
ALTER TABLE `order_product_session`
  ADD KEY `order_product_session_order_id_foreign` (`order_id`),
  ADD KEY `order_product_session_product_session_id_foreign` (`product_session_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_alias_unique` (`alias`);

--
-- Chỉ mục cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_alias_unique` (`alias`);

--
-- Chỉ mục cho bảng `product_sessions`
--
ALTER TABLE `product_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social_identities`
--
ALTER TABLE `social_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_identities_provider_id_unique` (`provider_id`);

--
-- Chỉ mục cho bảng `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_source_type_source_id_index` (`source_type`,`source_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_agencys`
--
ALTER TABLE `user_agencys`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_debts`
--
ALTER TABLE `user_debts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `alias`
--
ALTER TABLE `alias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `attribute_categorys`
--
ALTER TABLE `attribute_categorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `imports`
--
ALTER TABLE `imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `lang`
--
ALTER TABLE `lang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `module`
--
ALTER TABLE `module`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT cho bảng `product_sessions`
--
ALTER TABLE `product_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `social_identities`
--
ALTER TABLE `social_identities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `user_agencys`
--
ALTER TABLE `user_agencys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `user_debts`
--
ALTER TABLE `user_debts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD CONSTRAINT `attribute_product_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_product_session`
--
ALTER TABLE `order_product_session`
  ADD CONSTRAINT `order_product_session_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_session_product_session_id_foreign` FOREIGN KEY (`product_session_id`) REFERENCES `product_sessions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
