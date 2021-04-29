-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th4 29, 2021 lúc 03:53 AM
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

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
