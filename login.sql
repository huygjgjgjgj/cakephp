-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 25, 2018 lúc 08:31 AM
-- Phiên bản máy phục vụ: 10.1.33-MariaDB
-- Phiên bản PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `login`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password_confirm` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `password_confirm`, `created`, `modified`) VALUES
(1, 'adminhuy', '123456789', '123456789', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'admin11111111', '123456', '123456', '2018-06-21 11:56:40', '2018-06-21 11:56:40'),
(3, 'admin11111125', '789456', '789456', '2018-06-21 11:58:08', '2018-06-21 11:58:08'),
(4, 'huyjgjgjgjg', '123456', '123456', '2018-06-22 04:30:45', '2018-06-22 04:30:45'),
(5, 'aaaaaaaaaaa', '123654', '123654', '2018-06-22 04:59:58', '2018-06-22 04:59:58'),
(6, 'thaihuy01', 'jjjj', 'jjjj', '2018-06-22 06:42:03', '2018-06-22 06:42:03'),
(7, 'gmozrun22', '1111111', '1111111', '2018-06-22 08:49:49', '2018-06-22 08:49:49'),
(8, 'crossgame11', '1111111', '1111111', '2018-06-22 08:52:21', '2018-06-22 08:52:21'),
(9, 'gmozrunsys', '1111111', '1111111', '2018-06-22 09:09:12', '2018-06-22 09:09:12'),
(10, 'admin987456', 'admin987456', 'admin987456', '2018-06-22 09:12:48', '2018-06-22 09:12:48'),
(11, 'congxcong', 'congxcong', 'congxcong', '2018-06-25 04:27:37', '2018-06-25 04:27:37'),
(12, 'kophaihoi', '123456', '123456', '2018-06-25 05:13:04', '2018-06-25 05:13:04'),
(13, 'congnghe', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', '2018-06-25 05:30:56', '2018-06-25 05:30:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cmt` int(15) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `fullname`, `address`, `city`, `cmt`, `created`, `modified`) VALUES
(1, 'crossgame@gmail.com', 'huy ba', 'dao duy anh', 'TP Hà Nội', 1235544443, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '123@123', 'admin+', 'tu liem', 'TP Hà Nội', 2147483647, '2018-06-21 11:56:40', '2018-06-21 11:56:40'),
(3, '123@1234', 'thaihuy', 'tu liem', 'TP Hà Nội', 2147483647, '2018-06-21 11:58:08', '2018-06-21 11:58:08'),
(4, 'crossgame@gmail.com', 'Thai Huy', 'Dao Duy Anh', 'TP Hà Nội', 2147483647, '2018-06-22 04:30:45', '2018-06-22 04:30:45'),
(5, 'asasasa@aa.com', 'aaaaa', 'asdasdasd', 'TP Hồ Chí Minh', 2147483647, '2018-06-22 04:59:58', '2018-06-22 04:59:58'),
(6, 'l@1', 'mmmmmmmm', 'l', 'Nghệ An', 999999999, '2018-06-22 06:42:03', '2018-06-22 06:42:03'),
(7, 'gmoz@runsysytem.com', 'gmoz.com', 'dienchau', 'TP Hà Nội', 1111111111, '2018-06-22 08:49:49', '2018-06-22 08:49:49'),
(8, 'crossgame110795@gmail.com', 'Thai Huy', 'Dao Duy Anh', 'TP Hà Nội', 111111111, '2018-06-22 08:52:21', '2018-06-22 08:52:21'),
(9, 'gmoz@runsysytem.com11111', 'gmoz.com', 'dienchau', 'TP Hà Nội', 2147483647, '2018-06-22 09:09:12', '2018-06-22 09:09:12'),
(10, 'admin987456@123', 'admin987456', 'dienchau', 'Nghệ An', 2147483647, '2018-06-22 09:12:48', '2018-06-22 09:12:48'),
(11, 'congxcong@gmail.com', 'Trần Công Công', 'Quận 5', 'TP Hồ Chí Minh', 258963147, '2018-06-25 04:27:37', '2018-06-25 04:27:37'),
(12, 'thichthinhic@kophaihoi.com', 'Thích thì nhích', 'hoi an', 'Đà Nắng', 1111111111, '2018-06-25 05:13:04', '2018-06-25 05:13:04'),
(13, 'congnghe@123.com', 'cong nghe', 'vinh', 'Nghệ An', 1234567899, '2018-06-25 05:30:56', '2018-06-25 05:30:56');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
