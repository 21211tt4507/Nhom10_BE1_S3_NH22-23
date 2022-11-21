-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2022 lúc 07:54 AM
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
  `soLuongSell` int(4) NOT NULL COMMENT 'số lượng bán',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày tạo sản phẩm'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_iD`, `type_iD`, `price`, `image`, `description`, `soLuongSell`, `created_at`) VALUES
(1, 'Apple Iphone 12 128GB', 5, 2, 899000, 'iphone12.jpg', 'Hieu nang manh me', 300, '2022-11-21 05:15:38'),
(2, 'Samsung Z Fold 4', 4, 2, 45000000, 'ZFold4.jpg', 'Đẳng cấp mới', 250, '2022-11-21 05:15:44'),
(3, 'Apple iPhone 14 128GB', 5, 2, 22000000, 'iphone14.jpg', 'Tuyệt đỉnh thiết kế, tỉ mỉ từng đường nét, nâng cấp toàn diện với kiểu dáng mới, nhiều lựa chọn màu sắc trẻ trung', 158, '2022-11-21 05:15:49'),
(4, 'MSI Titan GT77 12UHS 204VN', 2, 1, 15000000, 'i912900k.jpg', 'Hiệu năng mạnh mẽ\r\n', 100, '2022-11-21 05:15:54'),
(5, 'Laptop Asus ROG Zephyrus', 1, 1, 9000000, '75800H.jpg', 'là 1 trong những CPU đầu bảng Series Ryzen 5000 của AMD. CPU vẫn sử dụng Socket AM4 và có 8 nhân 16 luồng cùng xung nhịp tối đa 4.7Ghz. ', 1000, '2022-11-21 05:15:58'),
(6, 'Samsung Z Flip 4', 4, 2, 25000000, 'ZFlip4.jpg', 'Thiết kế sang trọng ', 114, '2022-11-21 05:16:02'),
(7, 'MacBook Pro 16 inch 2022', 3, 1, 30230182, 'vision.jpg', 'Vision luôn là mẫu xe được ưa chuộng trong giới trẻ và có số lượng bán ra lớn nhất tại thị trường Việt Nam suốt nhiều năm qua nhờ kiểu dáng trẻ trung, thanh lịch và nhỏ gọn. Sau 6 năm kể từ lần thay đổi lớn gần nhất vào năm 2014', 24, '2022-11-21 05:16:05'),
(8, 'Apple iPhone 13 64GB', 5, 2, 19000000, 'iphone13.jpg', 'Cuối năm 2020, bộ 4 iPhone 12 đã được ra mắt với nhiều cái tiến. Sau đó, mọi sự quan tâm lại đổ dồn vào sản phẩm tiếp theo – iPhone 13.', 121, '2022-11-21 05:16:06'),
(9, 'Laptop MSI Raider GE76 12UHS', 2, 1, 9500000, 'i711700.jpg', 'Bộ vi xử lý Intel Core i7-11700 là dòng CPU mới nhất được Intel cho ra mắt thuộc thế hệ thứ 11 tên mã Rocket Lake, đây là con chip mạnh mẽ có khả năng mang đến cho bạn sức mạnh để thực hiện, cạnh tranh và vượt trội.', 145, '2022-11-21 05:16:08'),
(10, 'Apple IPhone 14 Pro   Max 256GB', 5, 2, 30000000, 'iphone14pro.jpg', 'Theo tác giả nhận định, Samsung và Apple là hai hãng làm màn hình điện thoại tốt nhất hiện nay và iPhone 14 Pro cũng không phải ngoại lệ. Trên thực tế, màn hình của iPhone 14 Pro năm nay cực kỳ đỉnh, màu sắc sặc sỡ, độ sáng cao chưa từng thấy cả trong ngoài trời, khiến tác giả trở nên rất thích thú. Theo tác giả nhận định, màn hình của iPhone 14 Pro được cải thiện rất nhiều so với iPhone 13 Pro, nhất là khả năng tái tạo màu và độ chính xác cao.', 452, '2022-11-21 05:16:12'),
(11, 'MÁY QUAY SONY ALPHA CINEMA LINE ILME-FX30 +\r\n', 6, 3, 30000000, 'iphone14pro.jpg', '- Cảm biến APS-C/Super 35mm Exmor R BSI 26.1MP\r\n- Bộ xử lý hình ảnh BIONZ XR™ hiệu suất cao\r\n- Quay UHD 4K ở tốc độ lên đến 120 khung hình/ giây\r\n- Lấy nét tự động theo pha / Theo dõi khuôn mặt / Lấy nét tự động theo mắt\r\n- Ổn định hình ảnh 5 trục trong thân máy\r\n- Tiêu chuẩn ISO 100-32000 | Dual Base ISO\r\n- Khe cắm thẻ nhớ kép CFexpress Type A/SDXC\r\n', 241, '2022-11-21 05:16:18'),
(12, 'MÁY QUAY SONY ALPHA CINEMA LINE ILME-FX30B\r\n', 6, 3, 30000000, 'iphone14pro.jpg', '- Cảm biến APS-C/Super 35mm Exmor R BSI 26.1MP\r\n- Bộ xử lý hình ảnh BIONZ XR™ hiệu suất cao\r\n- Quay UHD 4K ở tốc độ lên đến 120 khung hình/ giây\r\n- Lấy nét tự động theo pha / Theo dõi khuôn mặt / Lấy nét tự động theo mắt\r\n- Ổn định hình ảnh 5 trục trong thân máy\r\n- Tiêu chuẩn ISO 100-32000 | Dual Base ISO\r\n- Khe cắm thẻ nhớ kép CFexpress Type A/SDXC', 244, '2022-11-21 05:16:22'),
(13, 'Laptop ASUS ROG Strix', 1, 1, 9000000, '75800H.jpg', 'Laptop Asus gaming Rog Strix G15 G513RC-HN090W được trang bị bộ xử lý AMD Ryzen 6000 Series với kiến trúc Zen 3+ trên quy trình 6nm. Bộ chip này có sức mạnh lớn có thể xử lý game nặng đô, hoàn tất công việc nhanh chóng và thao tác đa nhiệm gần như không có độ trễ.\r\nLaptop Asus Rog Strix G15 G513RC-HN090W được tích hợp GPU GeForce RTX 30 series có khả năng mang lại hiệu suất cực ấn tượng. Hình ảnh đồ họa chân thực và các tính năng AI tiên tiến giúp bạn chơi game tốt với hình ảnh sắc nét xuất thần.\r\nTần số quét màn hình đạt 144Hz, độ phân giải Full HD giúp laptop nói không với các hiện tượng lag giật. Phần viền siêu mỏng mở rộng không gian chơi game lên tối đa, giúp người chơi hoàn toàn hòa mình vào khung cảnh của cuộc chiến game.', 1365, '2022-11-21 05:16:24'),
(14, 'MacBook Pro 16 inch 2022', 3, 2, 30230182, 'vision.jpg', 'Vision luôn là mẫu xe được ưa chuộng trong giới trẻ và có số lượng bán ra lớn nhất tại thị trường Việt Nam suốt nhiều năm qua nhờ kiểu dáng trẻ trung, thanh lịch và nhỏ gọn. Sau 6 năm kể từ lần thay đổi lớn gần nhất vào năm 2014', 154, '2022-11-21 05:16:26'),
(15, 'Apple Macbook Pro 13 M2 2022', 3, 2, 30230182, 'vision.jpg', 'Macbook Pro M2 2022 là phiên bản nâng cấp mạnh mẽ của Macbook Pro M1 với nhiều cải tiến vô cùng ấn tượng. Đây sẽ là chiếc laptop mang đến cho người dùng trải nghiệm cực tốt. Từ đó giúp mọi hoạt động giải trí cũng như các công việc nặng như đồ họa, thiết kế đều được xử lý một cách mượt mà và nhanh chóng hơn.', 457, '2022-11-21 05:16:28'),
(16, 'Tai nghe Bluetooth True Wireless Samsung', 4, 4, 25000000, 'ZFlip4.jpg', 'Thiết kế gọn nhẹ, màu sắc sang chảnh\r\nĐiều mình chú ý đầu tiên chính là tổng quan thiết kế của bộ tai nghe này, toàn bộ hộp sạc và tai nghe đều được bao phủ bởi màu trắng trang nhã, thanh lịch. Phần logo Samsung in ở mặt trên hộp sạc càng làm thiết kế trở nên tinh tế hơn. Với mình, đây không chỉ là một chiếc tai nghe mà nó còn là một món phụ kiện thời trang sang chảnh.', 354, '2022-11-21 05:16:31'),
(17, 'Tai nghe Bluetooth AirPods Pro Wireless', 3, 4, 25000000, 'ZFlip4.jpg', 'Đặc điểm nổi bật\r\n\r\nThiết kế in-ear hoàn toàn mới và độc đáo.\r\nTích hợp công nghệ chống ồn chủ động (Active Noise Cancellation).\r\nChip H1 mạnh mẽ, xử lý âm thanh kỹ thuật số với độ trễ gần như bằng không.\r\nNghe nhạc đến 4.5 giờ khi bật chống ồn, 5 giờ khi tắt chống ồn.\r\nSử dụng song song với hộp sạc có thể dùng được đến 24 giờ nghe nhạc.\r\nHỗ trợ sạc nhanh, cho thời gian sử dụng đến 1 giờ chỉ với 5 phút sạc.\r\nHộp sạc hỗ trợ sạc không dây chuẩn Qi, tiện lợi khi sạc lại.\r\nTrang bị chuẩn chống nước IPX4, bảo vệ tai nghe an toàn dưới mưa nhỏ và mồ hôi.\r\nSản phẩm chính hãng Apple, nguyên seal 100%.\r\nLưu ý: Thanh toán trước khi mở sea', 454, '2022-11-21 05:16:33'),
(18, 'Tai nghe Bluetooth True Wireless Sony', 6, 4, 25000000, 'ZFlip4.jpg', 'Tai nghe Bluetooth True Wireless Sony WF-SP800N mang phong cách thể thao trẻ trung, năng động.\r\n• Thiết kế sang trọng, êm ái và chắc chắn khi sử dụng, nhiều cỡ đệm tai thay đổi theo tuỳ thích của người dùng đi đôi với kích thước vỏ hộp gọn nhẹ; dễ cho vào túi xách, balo.\r\n\r\n• Trải nghiệm âm bass trầm sâu lắng và mạnh mẽ với chuẩn âm thanh Extra Bass độc quyền của Sony, kết hợp công nghệ chống ồn kỹ thuật số cho bạn tận hưởng những bản nhạc đầy sôi động và hoàn hảo nhất.\r\n\r\n• Tai nghe Sony kết nối không dây Bluetooth 5.0 ổn định với phạm vi xa đến 10 m phù hợp kết nối với nhiều thiết bị trên các nền tảng Android, Windows, iOS.', 1454, '2022-11-21 05:16:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã sản phẩm', AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
