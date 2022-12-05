-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2022 lúc 05:39 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

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
  `manu_name` varchar(100) NOT NULL COMMENT 'tên hãng'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Asus'),
(2, 'MSI'),
(3, 'Macbook'),
(4, 'Samsung'),
(5, 'Iphone'),
(6, 'Sony');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL COMMENT 'mã sản phẩm',
  `name` varchar(100) NOT NULL COMMENT 'tên sản phẩm',
  `manu_id` int(11) NOT NULL COMMENT 'mã hãng sản xuất ',
  `type_id` int(11) NOT NULL COMMENT 'mã loại sản phẩm',
  `price` int(11) DEFAULT NULL COMMENT 'giá sản phẩm',
  `image` varchar(150) NOT NULL COMMENT 'hình sản phẩm',
  `description` text DEFAULT NULL COMMENT 'mô tả sản phẩm',
  `soLuongSell` int(4) NOT NULL COMMENT 'số lượng bán',
  `kho` int(11) NOT NULL COMMENT 'kho',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày tạo sản phẩm'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `soLuongSell`, `kho`, `created_at`) VALUES
(1, 'Apple Iphone 12 128GB', 5, 2, 17590000, 'iphone12.png', 'Apple iPhone 12 128GB chính hãng (VN/A) phiên bản bộ nhớ 128GB lưu trữ thoải mái\niPhone 12 hiện nay là cái tên “sốt xình xịch” bởi đây là một trong 4 siêu phẩm vừa được ra mắt của Apple với những đột phá về cả thiết kế lẫn cấu hình. Phiên bản Apple iPhone 12 128GB chính là một trong những chiếc iPhone được săn đón nhất bởi dung lượng bộ nhớ khủng, cho phép bạn thoải mái với vô vàn ứng dụng.', 300, 500, '2022-12-05 16:12:07'),
(2, 'Samsung Z Fold 4', 4, 2, 34990000, 'ZFold4.png', 'Galaxy Z Fold3 vốn đã rất nổi bật thì mới đây, sự xuất hiện của điện thoại gập mới Samsung Galaxy Z Fold 4 lại càng hấp dẫn nhiều người dùng hơn khi sở hữu thiết kế gập màn hình mới cùng với những cải tiến cho trải nghiệm nhân đôi. Vậy chiếc smartphone màn hình gập cao cấp thế hệ mới có gì mới, giá bao nhiêu và có nên mua không? Cùng tìm hiểu nhé!', 250, 300, '2022-12-05 16:12:13'),
(3, 'Apple iPhone 14 128GB', 5, 2, 21490000, 'iphone14.png', 'Theo đúng như dự kiến, đêm 8/9/2022 Apple đã chính thức giới thiệu sesier iPhone mới đến với người tiêu dùng. Mẫu điện thoại iPhone 14 mới ra mắt vẫn giữ được mức giá so với iPhone 13 trước đó nhưng vẫn có nhiều nâng cấp khác biệt. Điện thoại sở hữu màn hình Retina XDR OLED kích thước 6.1 inch cùng độ sáng vượt trội lên đến 1200 nits. Máy cũng sẽ được trang bị camera kép 12 MP phía sau cùng cảm biến điểm ảnh lớn, đạt 1.9 micron giúp cải thiện khả năng chụp thiếu sáng. Mẫu iPhone 14 mới cũng mang trong mình con chip Apple A15 Bionic phiên bản 5 nhân mang lại hiệu suất vượt trội.', 158, 200, '2022-12-05 16:12:19'),
(4, 'MSI Titan GT77 12UHS 204VN', 2, 1, 135990000, 'gt77.png', 'MSI Titan GT77 là dòng flaship cao nhất vừa được ra mắt trên thị trường với thiết kế vô cùng ấn tượng. Ngoại hình cứng cáp được làm bằng hợp kim kim loại cao cấp. Tạo một độ bóng bẩy thu hút sự chú ý của các tín đồ đam mê công nghệ, đặc biệt là các game thủ chuyên sử dụng laptop gaming để chinh phục game. Từng đường nét bo góc, cắt xén tỉ mỉ làm tăng thêm vẻ đẹp đầy tinh tế và sang trọng của sản phẩm MSI Titan GT77. ', 100, 120, '2022-12-05 16:12:22'),
(5, 'Laptop Asus ROG Zephyrus M16', 1, 1, 97900000, 'm16.png', 'Laptop MSI Creator M16 A12UC i7 (292VN) sở hữu đường nét góc cạnh, mạnh mẽ cùng hiệu năng vượt trội của dòng chip Intel thế hệ 12 sẵn sàng đưa bạn bước vào một kỉ nguyên mới của vẻ đẹp công nghệ, bức phá mọi giới hạn dành riêng cho người dùng sáng tạo.', 145, 170, '2022-12-05 16:12:36'),
(6, 'Samsung Z Flip 4', 4, 2, 20590000, 'zflip4.png', 'Là mẫu điện thoại cao cấp được ra mắt hàng năm của Samsung, do đó Samsung ZFlip 4 được rất nhiều người quan tâm. Vậy sản phẩm được thiết kế ra sao, tính năng có gì nổi bật? Cùng tìm hiểu chi tiết ngay dưới đây.\n\nThiết kế đột phá đầy lôi cuốn\nSamsung Galaxy Z Flip 4 sở hữu thiết kế nhìn chung không có nhiều khác biệt so với thế hệ trước đó. Điện thoại vẫn sở hữu một thiết kế bao gồm hai tone màu với màn hình gập. Tuy nhiên các chi tiết sẽ được chăm chút hơn rất nhiều so với người đàn anh Z Flip 3.', 114, 150, '2022-12-05 16:12:40'),
(7, 'MacBook Pro 16 inch 2022', 3, 1, 30230182, 'macbook.png', 'Macbook Pro 16 inch 2022 - Dòng chip mạnh mẽ mới nhất\nMacbook Pro 16 inch 2022 là chiếc Macbook mới được Apple giới thiệu trong sự kiện mới đây. Bên cạnh thiết kế nhận diện thương hiệu với logo táo khuyết nổi bật thì laptop còn sở hữu dòng chip Apple M2 Max mạnh mẽ mới nhất.', 57, 100, '2022-12-05 16:12:46'),
(8, 'Apple iPhone 13 128GB', 5, 2, 19000000, 'iphone13.png', 'Cuối năm 2020, bộ 4 iPhone 12 đã được ra mắt với nhiều cái tiến. Sau đó, mọi sự quan tâm lại đổ dồn vào sản phẩm tiếp theo – iPhone 13.', 121, 150, '2022-12-05 16:12:50'),
(9, 'Laptop MSI Raider GE76 12UHS', 2, 1, 109990000, 'ge76.png', '- MSI GE76 Raider sử dụng bộ vi xử Intel Core i9 hế hệ 12 vừa ra mắt cuối năm 2020 với 16 nhân 24 luồng cho mức xung nhịp cao nhất lên đến 5.2 GHz xử lý nhanh các tác vụ nặng, đây sẽ là một lựa chọn đáng cân nhắc cho những ai thường xuyên làm đồ họa kỹ thuật hay chiến các tựa game cấu hình cao.\n- Kết hợp với bộ nhớ RAM 64 GB DDR5 4800MHz giúp đa nhiệm các tác vụ nặng mà vẫn mượt mà và ổn định. Bạn có thể mở cùng lúc đến 20 tab Chrome hay hàng chục layer trên Photoshop, Ai mà không lo đứng máy. ', 145, 200, '2022-12-05 16:12:54'),
(10, 'Apple IPhone 14 ProMax 256GB', 5, 2, 36590000, '14pm.png', 'Theo tác giả nhận định, Samsung và Apple là hai hãng làm màn hình điện thoại tốt nhất hiện nay và iPhone 14 Pro cũng không phải ngoại lệ. Trên thực tế, màn hình của iPhone 14 Pro năm nay cực kỳ đỉnh, màu sắc sặc sỡ, độ sáng cao chưa từng thấy cả trong ngoài trời, khiến tác giả trở nên rất thích thú. Theo tác giả nhận định, màn hình của iPhone 14 Pro được cải thiện rất nhiều so với iPhone 13 Pro, nhất là khả năng tái tạo màu và độ chính xác cao.', 452, 500, '2022-12-05 16:12:57'),
(11, 'MÁY QUAY SONY ALPHA CINEMA LINE ILME-FX30 +\r\n', 6, 3, 46990000, 'fx30+.png', 'Được thiết kế cho các nhà làm phim thế hệ tiếp theo, Sony FX30 được trang bị cảm biến Exmor™ R APS-C CMOS chiếu sáng sau mới. Cảm biến này giúp FX30 có thể ghi lại hình ảnh đáng nhớ với độ phân giải vượt trội và độ sâu trường ảnh nông. Khả năng lấy mẫu dư 6K nén lượng dữ liệu cực lớn vào bản ghi và video đầu ra 4K. Đồng thời, máy quay có bộ xử lý BIONZ XR cho phép chuyển màu tự nhiên, tái tạo màu trung thực, ít nhiễu và nhiều cải thiện khác trong chất lượng hình ảnh.- Bộ xử lý hình ảnh BIONZ XR™ hiệu suất cao\n- Quay UHD 4K ở tốc độ lên đến 120 khung hình/ giây\n- Lấy nét tự động theo pha / Theo dõi khuôn mặt / Lấy nét tự động theo mắt\n- Ổn định hình ảnh 5 trục trong thân máy\n- Tiêu chuẩn ISO 100-32000 | Dual Base ISO\n- Khe cắm thẻ nhớ kép CFexpress Type A/SDXC\n', 241, 250, '2022-12-05 16:13:01'),
(12, 'MÁY QUAY SONY ALPHA CINEMA LINE ILME-FX30B\r\n', 6, 3, 45950000, 'fx30b.png', '- Cảm biến APS-C/Super 35mm Exmor R BSI 26.1MP\r\n- Bộ xử lý hình ảnh BIONZ XR™ hiệu suất cao\r\n- Quay UHD 4K ở tốc độ lên đến 120 khung hình/ giây\r\n- Lấy nét tự động theo pha / Theo dõi khuôn mặt / Lấy nét tự động theo mắt\r\n- Ổn định hình ảnh 5 trục trong thân máy\r\n- Tiêu chuẩn ISO 100-32000 | Dual Base ISO\r\n- Khe cắm thẻ nhớ kép CFexpress Type A/SDXC', 244, 260, '2022-12-05 16:13:06'),
(13, 'Laptop ASUS ROG Strix G15', 1, 1, 19490000, 'g15.png', 'Laptop Asus gaming Rog Strix G15 G513RC-HN090W được trang bị bộ xử lý AMD Ryzen 6000 Series với kiến trúc Zen 3+ trên quy trình 6nm. Bộ chip này có sức mạnh lớn có thể xử lý game nặng đô, hoàn tất công việc nhanh chóng và thao tác đa nhiệm gần như không có độ trễ.\r\nLaptop Asus Rog Strix G15 G513RC-HN090W được tích hợp GPU GeForce RTX 30 series có khả năng mang lại hiệu suất cực ấn tượng. Hình ảnh đồ họa chân thực và các tính năng AI tiên tiến giúp bạn chơi game tốt với hình ảnh sắc nét xuất thần.\r\nTần số quét màn hình đạt 144Hz, độ phân giải Full HD giúp laptop nói không với các hiện tượng lag giật. Phần viền siêu mỏng mở rộng không gian chơi game lên tối đa, giúp người chơi hoàn toàn hòa mình vào khung cảnh của cuộc chiến game.', 114, 140, '2022-12-05 16:13:51'),
(14, 'MacBook Pro 16 inch 2022', 3, 2, 30230182, 'macbook22.png', 'Mặc cho vẻ bề ngoài của dòng Macbook Pro có phần giống nhau nhưng những thiết bị này vẫn có sự khác biệt lớn bên trong. Dựa theo những thông tin ban đầu do leaker Gurman (trích dẫn bởi Macworld) cho biết rằng Macbook Pro 16 inch 2022 sẽ được trang bị chip Apple M2 Max siêu mạnh. Con chip này dự kiến sẽ được sản xuất trên tiến trình 3 nm mang lại hiệu năng và khả năng tiết kiệm điện vượt trội so với thế hệ chip tiền nhiệm.', 154, 180, '2022-12-05 16:13:39'),
(15, 'Apple Macbook Pro 13 M2 2022', 3, 2, 35190000, 'm2.png', 'Macbook Pro M2 2022 là phiên bản nâng cấp mạnh mẽ của Macbook Pro M1 với nhiều cải tiến vô cùng ấn tượng. Đây sẽ là chiếc laptop mang đến cho người dùng trải nghiệm cực tốt. Từ đó giúp mọi hoạt động giải trí cũng như các công việc nặng như đồ họa, thiết kế đều được xử lý một cách mượt mà và nhanh chóng hơn.', 457, 500, '2022-12-05 16:13:37'),
(16, 'Tai nghe Bluetooth True Wireless Samsung', 4, 4, 3990000, 'ws.png', 'Thiết kế gọn nhẹ, màu sắc sang chảnh\r\nĐiều mình chú ý đầu tiên chính là tổng quan thiết kế của bộ tai nghe này, toàn bộ hộp sạc và tai nghe đều được bao phủ bởi màu trắng trang nhã, thanh lịch. Phần logo Samsung in ở mặt trên hộp sạc càng làm thiết kế trở nên tinh tế hơn. Với mình, đây không chỉ là một chiếc tai nghe mà nó còn là một món phụ kiện thời trang sang chảnh.', 354, 380, '2022-12-05 16:13:34'),
(17, 'Tai nghe Bluetooth AirPods Pro Wireless', 3, 4, 4990000, 'airpods.png', 'Đặc điểm nổi bật\r\n\r\nThiết kế in-ear hoàn toàn mới và độc đáo.\r\nTích hợp công nghệ chống ồn chủ động (Active Noise Cancellation).\r\nChip H1 mạnh mẽ, xử lý âm thanh kỹ thuật số với độ trễ gần như bằng không.\r\nNghe nhạc đến 4.5 giờ khi bật chống ồn, 5 giờ khi tắt chống ồn.\r\nSử dụng song song với hộp sạc có thể dùng được đến 24 giờ nghe nhạc.\r\nHỗ trợ sạc nhanh, cho thời gian sử dụng đến 1 giờ chỉ với 5 phút sạc.\r\nHộp sạc hỗ trợ sạc không dây chuẩn Qi, tiện lợi khi sạc lại.\r\nTrang bị chuẩn chống nước IPX4, bảo vệ tai nghe an toàn dưới mưa nhỏ và mồ hôi.\r\nSản phẩm chính hãng Apple, nguyên seal 100%.\r\nLưu ý: Thanh toán trước khi mở sea', 454, 500, '2022-12-05 16:13:30'),
(18, 'Tai nghe Bluetooth True Wireless Sony', 6, 4, 4310000, 'wsony.png', 'Tai nghe Bluetooth True Wireless Sony WF-SP800N mang phong cách thể thao trẻ trung, năng động.\r\n• Thiết kế sang trọng, êm ái và chắc chắn khi sử dụng, nhiều cỡ đệm tai thay đổi theo tuỳ thích của người dùng đi đôi với kích thước vỏ hộp gọn nhẹ; dễ cho vào túi xách, balo.\r\n\r\n• Trải nghiệm âm bass trầm sâu lắng và mạnh mẽ với chuẩn âm thanh Extra Bass độc quyền của Sony, kết hợp công nghệ chống ồn kỹ thuật số cho bạn tận hưởng những bản nhạc đầy sôi động và hoàn hảo nhất.\r\n\r\n• Tai nghe Sony kết nối không dây Bluetooth 5.0 ổn định với phạm vi xa đến 10 m phù hợp kết nối với nhiều thiết bị trên các nền tảng Android, Windows, iOS.', 244, 280, '2022-12-05 16:13:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

CREATE TABLE `protypes` (
  `type_id` int(11) NOT NULL COMMENT 'mã loại',
  `type_name` varchar(100) NOT NULL COMMENT 'tên loại'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'LapTop'),
(2, 'Smartphone'),
(3, 'Camera'),
(4, 'Accessories ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role_id`) VALUES
(1, 'tien', 'c4ca4238a0b923820dcc509a6f75849b', 1),
(2, 'kiet', 'c4ca4238a0b923820dcc509a6f75849b', 2),
(3, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 3),
(4, 'admin2', 'c4ca4238a0b923820dcc509a6f75849b', 4);

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
  MODIFY `manu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã hãng', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã sản phẩm', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `protypes`
--
ALTER TABLE `protypes`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã loại', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
