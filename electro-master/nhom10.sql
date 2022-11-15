-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 15, 2022 lúc 08:34 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom10`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

CREATE TABLE `manufactures` (
  `manu_id` int(11) NOT NULL COMMENT 'mã hãng',
  `manu_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tên hãng'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'SamSung'),
(2, 'Apple'),
(3, 'Intel'),
(4, 'AMD'),
(5, 'HonDa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `iD` int(11) NOT NULL COMMENT 'mã sản phẩm',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tên sản phẩm',
  `manu_iD` int(11) NOT NULL COMMENT 'mã hãng sản xuất ',
  `type_iD` int(11) NOT NULL COMMENT 'mã loại sản phẩm',
  `price` int(11) DEFAULT NULL COMMENT 'giá sản phẩm',
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'hình sản phẩm',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'mô tả sản phẩm',
  `feature` tinyint(4) NOT NULL COMMENT 'sản phẩm nổi bật',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày tạo sản phẩm'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`iD`, `name`, `manu_iD`, `type_iD`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(11, 'Apple iPhone 12', 2, 2, 20000000, '', 'Hieu nang manh me', 0, '2022-10-27 15:07:46'),
(2, 'Samsung Z Fold 4', 1, 2, 45000000, 'ZFold4.jpg', 'Đẳng cấp mới', 1, '2022-10-27 13:52:34'),
(3, 'Apple iPhone 14 ', 2, 2, 22000000, 'iphone14.jpg', 'Tuyệt đỉnh thiết kế, tỉ mỉ từng đường nét, nâng cấp toàn diện với kiểu dáng mới, nhiều lựa chọn màu sắc trẻ trung', 1, '2022-10-27 13:56:55'),
(4, 'Intel Core i9 12900K', 3, 1, 15000000, 'i912900k.jpg', 'Hiệu năng mạnh mẽ\r\n', 1, '2022-10-27 14:00:31'),
(5, 'AMD Ryzen 7 5800H ', 4, 1, 9000000, '75800H.jpg', 'là 1 trong những CPU đầu bảng Series Ryzen 5000 của AMD. CPU vẫn sử dụng Socket AM4 và có 8 nhân 16 luồng cùng xung nhịp tối đa 4.7Ghz. ', 1, '2022-10-27 14:02:31'),
(6, 'Samsung Z Flip 4', 1, 2, 25000000, 'ZFlip4.jpg', 'Thiết kế sang trọng ', 1, '2022-10-27 14:04:19'),
(7, 'Honda Vision', 5, 3, 30230182, 'vision.jpg', 'Vision luôn là mẫu xe được ưa chuộng trong giới trẻ và có số lượng bán ra lớn nhất tại thị trường Việt Nam suốt nhiều năm qua nhờ kiểu dáng trẻ trung, thanh lịch và nhỏ gọn. Sau 6 năm kể từ lần thay đổi lớn gần nhất vào năm 2014', 1, '2022-10-27 14:06:19'),
(8, 'Apple iPhone 13 ', 2, 2, 19000000, 'iphone13.jpg', 'Cuối năm 2020, bộ 4 iPhone 12 đã được ra mắt với nhiều cái tiến. Sau đó, mọi sự quan tâm lại đổ dồn vào sản phẩm tiếp theo – iPhone 13.', 1, '2022-10-27 14:09:57'),
(9, 'Intel Core i7 11700', 3, 1, 9500000, 'i711700.jpg', 'Bộ vi xử lý Intel Core i7-11700 là dòng CPU mới nhất được Intel cho ra mắt thuộc thế hệ thứ 11 tên mã Rocket Lake, đây là con chip mạnh mẽ có khả năng mang đến cho bạn sức mạnh để thực hiện, cạnh tranh và vượt trội.', 1, '2022-10-27 14:11:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

CREATE TABLE `protypes` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'LapTop'),
(2, 'Điện Thoại'),
(3, 'Xe Máy'),
(4, 'Ô Tô'),
(5, 'Máy Tính Bảng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'd9b1d7db4cd6e70935368a1efb10e377', 1),
(2, 'user1', '42a09fbc7cb0d1fffab430acd9fae37a', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`manu_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`iD`);

--
-- Chỉ mục cho bảng `protypes`
--
ALTER TABLE `protypes`
  ADD PRIMARY KEY (`type_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `manu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã hãng', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `iD` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã sản phẩm', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `protypes`
--
ALTER TABLE `protypes`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
