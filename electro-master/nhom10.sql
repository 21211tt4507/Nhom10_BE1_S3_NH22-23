-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 14, 2022 lúc 07:05 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

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
(1, 'Android '),
(2, 'Apple'),
(3, 'Intel'),
(6, 'AMD\r\n'),
(5, 'Mac'),
(4, 'Sony\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL COMMENT 'mã sản phẩm',
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

INSERT INTO `products` (`id`, `name`, `manu_iD`, `type_iD`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(1, 'Iphone 12 128GB', 2, 2, 15000000, 'iphone12.png', 'Hieu nang manh me', 0, '2022-11-14 17:27:54'),
(2, 'Samsung Z Fold 4', 1, 2, 39000000, 'ZFold4.png', 'Đẳng cấp mới', 1, '2022-11-14 17:29:41'),
(3, 'MÁY QUAY SONY HANDYCAM FDR-AX700', 4, 2, 41500000, 'ax700.png', 'Tuyệt đỉnh thiết kế, tỉ mỉ từng đường nét, nâng cấp toàn diện với kiểu dáng mới, nhiều lựa chọn màu sắc trẻ trung', 1, '2022-11-14 17:29:33'),
(4, 'Samsung Galaxy Z Flip4 128GB', 1, 2, 21658000, 'zflp.png', 'Hiệu năng mạnh mẽ\r\n', 1, '2022-11-14 17:30:34'),
(5, 'MÁY QUAY SONY ALPHA CINEMA LINE ILME-FX30 + XLR HANDLE UNIT', 4, 2, 56990000, 'fx30.png', 'Cảm biến APS-C/Super 35mm Exmor R BSI 26.1MP', 1, '2022-11-14 17:36:39'),
(6, 'Tai nghe chụp tai Bluetooth AirPods Max Apple MGYH3', 2, 2, 11490000, 'mgyj3.png', 'Thiết kế sang trọng ', 1, '2022-11-14 17:34:41'),
(7, 'Tai nghe Bluetooth Kanen K6 Xám Gold ', 2, 2, 480000, 'k6.png', 'Thiết kế hiện đại, năng động, có thể gấp gọn khi không sử dụng.\nKhoảng cách kết nối xa đến 10 m qua công nghệ Bluetooth 4.1. \nSử dụng liên tục trong 18 giờ, sạc đầy trong 2 giờ.\nDễ dàng điều khiển qua giọng nói với Siri, Google Voice.', 1, '2022-11-14 17:36:56'),
(8, 'Apple Macbook Pro 13 M2 2022 8GB 256GB', 5, 2, 19000000, 'iphone13.jpg', 'Cuối năm 2020, bộ 4 iPhone 12 đã được ra mắt với nhiều cái tiến. Sau đó, mọi sự quan tâm lại đổ dồn vào sản phẩm tiếp theo – iPhone 13.', 1, '2022-11-14 17:23:41'),
(9, 'Laptop ASUS TUF Gaming F15 FX506HC-HN144W', 7, 1, 9500000, 'i711700.jpg', 'Bộ vi xử lý Intel Core i7-11700 là dòng CPU mới nhất được Intel cho ra mắt thuộc thế hệ thứ 11 tên mã Rocket Lake, đây là con chip mạnh mẽ có khả năng mang đến cho bạn sức mạnh để thực hiện, cạnh tranh và vượt trội.', 1, '2022-11-14 17:24:05'),
(10, '\nLaptop Gaming Acer Nitro 5 Tiger AN515 58 52SP', 3, 2, 30000000, 'iphone14pro.jpg', 'Theo tác giả nhận định, Samsung và Apple là hai hãng làm màn hình điện thoại tốt nhất hiện nay và iPhone 14 Pro cũng không phải ngoại lệ. Trên thực tế, màn hình của iPhone 14 Pro năm nay cực kỳ đỉnh, màu sắc sặc sỡ, độ sáng cao chưa từng thấy cả trong ngoài trời, khiến tác giả trở nên rất thích thú. Theo tác giả nhận định, màn hình của iPhone 14 Pro được cải thiện rất nhiều so với iPhone 13 Pro, nhất là khả năng tái tạo màu và độ chính xác cao.', 1, '2022-11-14 17:24:12');

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
(3, 'Tai Nghe'),
(4, 'Cameras');

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
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `protypes`
--
ALTER TABLE `protypes`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `manu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã hãng', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã sản phẩm', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `protypes`
--
ALTER TABLE `protypes`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
