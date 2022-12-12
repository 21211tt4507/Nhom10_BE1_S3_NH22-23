-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2022 lúc 12:24 PM
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
(1, 'Asus'),
(2, 'MSI'),
(3, 'Macbook'),
(4, 'Samsung'),
(5, 'Iphone'),
(6, 'Sony');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personinfor`
--

CREATE TABLE `personinfor` (
  `id_person` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `sdt` int(12) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phai` tinyint(1) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `personinfor`
--

INSERT INTO `personinfor` (`id_person`, `fullname`, `ngaysinh`, `sdt`, `email`, `phai`, `id_user`) VALUES
(1, 'Trần Minh Tiến', '2022-09-19', 988707802, 'tien@gmail.com', 1, 1),
(2, 'Trần Tuấn Kiệt', '2003-09-17', 909090909, 'kiet@gmail.com', 1, 2),
(3, 'Nguyen Van A', '2022-11-20', 0, 'vana@gmail.com', 0, 3),
(4, 'Tran Van B', '2022-11-20', 123457, 'vanb@gmail.com', 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL COMMENT 'mã sản phẩm',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tên sản phẩm',
  `manu_id` int(11) NOT NULL COMMENT 'mã hãng sản xuất ',
  `type_id` int(11) NOT NULL COMMENT 'mã loại sản phẩm',
  `price` int(11) DEFAULT NULL COMMENT 'giá sản phẩm',
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'hình sản phẩm',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'mô tả sản phẩm',
  `soLuongSell` int(4) NOT NULL COMMENT 'số lượng bán',
  `kho` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày tạo sản phẩm'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `soLuongSell`, `kho`, `created_at`) VALUES
(2, 'Samsung Z Fold 4', 4, 2, 34990000, 'ZFold4.png', 'Galaxy Z Fold3 vốn đã rất nổi bật thì mới đây, sự xuất hiện của điện thoại gập mới Samsung Galaxy Z Fold 4 lại càng hấp dẫn nhiều người dùng hơn khi sở hữu thiết kế gập màn hình mới cùng với những cải tiến cho trải nghiệm nhân đôi. Vậy chiếc smartphone màn hình gập cao cấp thế hệ mới có gì mới, giá bao nhiêu và có nên mua không? Cùng tìm hiểu nhé!', 250, 32, '2022-12-12 10:04:16'),
(3, 'Apple iPhone 14 128GB', 5, 2, 21490000, 'iphone14.png', 'Theo đúng như dự kiến, đêm 8/9/2022 Apple đã chính thức giới thiệu sesier iPhone mới đến với người tiêu dùng. Mẫu điện thoại iPhone 14 mới ra mắt vẫn giữ được mức giá so với iPhone 13 trước đó nhưng vẫn có nhiều nâng cấp khác biệt. Điện thoại sở hữu màn hình Retina XDR OLED kích thước 6.1 inch cùng độ sáng vượt trội lên đến 1200 nits. Máy cũng sẽ được trang bị camera kép 12 MP phía sau cùng cảm biến điểm ảnh lớn, đạt 1.9 micron giúp cải thiện khả năng chụp thiếu sáng. Mẫu iPhone 14 mới cũng mang trong mình con chip Apple A15 Bionic phiên bản 5 nhân mang lại hiệu suất vượt trội.', 158, 123, '2022-12-12 10:04:20'),
(4, 'MSI Titan GT77 12UHS 204VN', 2, 1, 135990000, 'gt77.png', 'MSI Titan GT77 là dòng flaship cao nhất vừa được ra mắt trên thị trường với thiết kế vô cùng ấn tượng. Ngoại hình cứng cáp được làm bằng hợp kim kim loại cao cấp. Tạo một độ bóng bẩy thu hút sự chú ý của các tín đồ đam mê công nghệ, đặc biệt là các game thủ chuyên sử dụng laptop gaming để chinh phục game. Từng đường nét bo góc, cắt xén tỉ mỉ làm tăng thêm vẻ đẹp đầy tinh tế và sang trọng của sản phẩm MSI Titan GT77. ', 100, 23, '2022-12-12 10:04:23'),
(5, 'Laptop Asus ROG Zephyrus M16', 1, 1, 97900000, 'm16.png', 'Laptop MSI Creator M16 A12UC i7 (292VN) sở hữu đường nét góc cạnh, mạnh mẽ cùng hiệu năng vượt trội của dòng chip Intel thế hệ 12 sẵn sàng đưa bạn bước vào một kỉ nguyên mới của vẻ đẹp công nghệ, bức phá mọi giới hạn dành riêng cho người dùng sáng tạo.', 1000, 53, '2022-12-12 10:04:28'),
(6, 'Samsung Z Flip 4', 4, 2, 20590000, 'zflip4.png', 'Là mẫu điện thoại cao cấp được ra mắt hàng năm của Samsung, do đó Samsung ZFlip 4 được rất nhiều người quan tâm. Vậy sản phẩm được thiết kế ra sao, tính năng có gì nổi bật? Cùng tìm hiểu chi tiết ngay dưới đây.\n\nThiết kế đột phá đầy lôi cuốn\nSamsung Galaxy Z Flip 4 sở hữu thiết kế nhìn chung không có nhiều khác biệt so với thế hệ trước đó. Điện thoại vẫn sở hữu một thiết kế bao gồm hai tone màu với màn hình gập. Tuy nhiên các chi tiết sẽ được chăm chút hơn rất nhiều so với người đàn anh Z Flip 3.', 114, 12, '2022-12-12 10:04:32'),
(7, 'MacBook Pro 16 inch 2022', 3, 1, 30230182, 'macbook.png', 'Macbook Pro 16 inch 2022 - Dòng chip mạnh mẽ mới nhất\nMacbook Pro 16 inch 2022 là chiếc Macbook mới được Apple giới thiệu trong sự kiện mới đây. Bên cạnh thiết kế nhận diện thương hiệu với logo táo khuyết nổi bật thì laptop còn sở hữu dòng chip Apple M2 Max mạnh mẽ mới nhất.', 24, 0, '2022-11-21 14:09:01'),
(8, 'Apple iPhone 13 128GB', 5, 2, 19000000, 'iphone13.png', 'Cuối năm 2020, bộ 4 iPhone 12 đã được ra mắt với nhiều cái tiến. Sau đó, mọi sự quan tâm lại đổ dồn vào sản phẩm tiếp theo – iPhone 13.', 121, 232, '2022-12-12 10:04:36'),
(9, 'Laptop MSI Raider GE76 12UHS', 2, 1, 109990000, 'ge76.png', '- MSI GE76 Raider sử dụng bộ vi xử Intel Core i9 hế hệ 12 vừa ra mắt cuối năm 2020 với 16 nhân 24 luồng cho mức xung nhịp cao nhất lên đến 5.2 GHz xử lý nhanh các tác vụ nặng, đây sẽ là một lựa chọn đáng cân nhắc cho những ai thường xuyên làm đồ họa kỹ thuật hay chiến các tựa game cấu hình cao.\n- Kết hợp với bộ nhớ RAM 64 GB DDR5 4800MHz giúp đa nhiệm các tác vụ nặng mà vẫn mượt mà và ổn định. Bạn có thể mở cùng lúc đến 20 tab Chrome hay hàng chục layer trên Photoshop, Ai mà không lo đứng máy. ', 145, 2123, '2022-12-12 10:04:39'),
(10, 'Apple IPhone 14 ProMax 256GB', 5, 2, 36590000, '14pm.png', 'Theo tác giả nhận định, Samsung và Apple là hai hãng làm màn hình điện thoại tốt nhất hiện nay và iPhone 14 Pro cũng không phải ngoại lệ. Trên thực tế, màn hình của iPhone 14 Pro năm nay cực kỳ đỉnh, màu sắc sặc sỡ, độ sáng cao chưa từng thấy cả trong ngoài trời, khiến tác giả trở nên rất thích thú. Theo tác giả nhận định, màn hình của iPhone 14 Pro được cải thiện rất nhiều so với iPhone 13 Pro, nhất là khả năng tái tạo màu và độ chính xác cao.', 452, 312, '2022-12-12 10:04:42'),
(11, 'MÁY QUAY SONY ALPHA CINEMA LINE ILME-FX30 +\r\n', 6, 3, 46990000, 'fx30+.png', 'Được thiết kế cho các nhà làm phim thế hệ tiếp theo, Sony FX30 được trang bị cảm biến Exmor™ R APS-C CMOS chiếu sáng sau mới. Cảm biến này giúp FX30 có thể ghi lại hình ảnh đáng nhớ với độ phân giải vượt trội và độ sâu trường ảnh nông. Khả năng lấy mẫu dư 6K nén lượng dữ liệu cực lớn vào bản ghi và video đầu ra 4K. Đồng thời, máy quay có bộ xử lý BIONZ XR cho phép chuyển màu tự nhiên, tái tạo màu trung thực, ít nhiễu và nhiều cải thiện khác trong chất lượng hình ảnh.- Bộ xử lý hình ảnh BIONZ XR™ hiệu suất cao\n- Quay UHD 4K ở tốc độ lên đến 120 khung hình/ giây\n- Lấy nét tự động theo pha / Theo dõi khuôn mặt / Lấy nét tự động theo mắt\n- Ổn định hình ảnh 5 trục trong thân máy\n- Tiêu chuẩn ISO 100-32000 | Dual Base ISO\n- Khe cắm thẻ nhớ kép CFexpress Type A/SDXC\n', 241, 521, '2022-12-12 10:04:45'),
(12, 'MÁY QUAY SONY ALPHA CINEMA LINE ILME-FX30B\r\n', 6, 3, 45950000, 'fx30b.png', '- Cảm biến APS-C/Super 35mm Exmor R BSI 26.1MP\r\n- Bộ xử lý hình ảnh BIONZ XR™ hiệu suất cao\r\n- Quay UHD 4K ở tốc độ lên đến 120 khung hình/ giây\r\n- Lấy nét tự động theo pha / Theo dõi khuôn mặt / Lấy nét tự động theo mắt\r\n- Ổn định hình ảnh 5 trục trong thân máy\r\n- Tiêu chuẩn ISO 100-32000 | Dual Base ISO\r\n- Khe cắm thẻ nhớ kép CFexpress Type A/SDXC', 244, 767, '2022-12-12 10:04:49'),
(13, 'Laptop ASUS ROG Strix G15', 1, 1, 19490000, 'g15.png', 'Laptop Asus gaming Rog Strix G15 G513RC-HN090W được trang bị bộ xử lý AMD Ryzen 6000 Series với kiến trúc Zen 3+ trên quy trình 6nm. Bộ chip này có sức mạnh lớn có thể xử lý game nặng đô, hoàn tất công việc nhanh chóng và thao tác đa nhiệm gần như không có độ trễ.\r\nLaptop Asus Rog Strix G15 G513RC-HN090W được tích hợp GPU GeForce RTX 30 series có khả năng mang lại hiệu suất cực ấn tượng. Hình ảnh đồ họa chân thực và các tính năng AI tiên tiến giúp bạn chơi game tốt với hình ảnh sắc nét xuất thần.\r\nTần số quét màn hình đạt 144Hz, độ phân giải Full HD giúp laptop nói không với các hiện tượng lag giật. Phần viền siêu mỏng mở rộng không gian chơi game lên tối đa, giúp người chơi hoàn toàn hòa mình vào khung cảnh của cuộc chiến game.', 1365, 13, '2022-12-12 10:04:52'),
(14, 'MacBook Pro 16 inch 2022', 3, 2, 30230182, 'macbook22.png', 'Mặc cho vẻ bề ngoài của dòng Macbook Pro có phần giống nhau nhưng những thiết bị này vẫn có sự khác biệt lớn bên trong. Dựa theo những thông tin ban đầu do leaker Gurman (trích dẫn bởi Macworld) cho biết rằng Macbook Pro 16 inch 2022 sẽ được trang bị chip Apple M2 Max siêu mạnh. Con chip này dự kiến sẽ được sản xuất trên tiến trình 3 nm mang lại hiệu năng và khả năng tiết kiệm điện vượt trội so với thế hệ chip tiền nhiệm.', 154, 231, '2022-12-12 10:04:54'),
(15, 'Apple Macbook Pro 13 M2 2022', 3, 2, 35190000, 'm2.png', 'Macbook Pro M2 2022 là phiên bản nâng cấp mạnh mẽ của Macbook Pro M1 với nhiều cải tiến vô cùng ấn tượng. Đây sẽ là chiếc laptop mang đến cho người dùng trải nghiệm cực tốt. Từ đó giúp mọi hoạt động giải trí cũng như các công việc nặng như đồ họa, thiết kế đều được xử lý một cách mượt mà và nhanh chóng hơn.', 457, 0, '2022-11-21 14:26:43'),
(16, 'Tai nghe Bluetooth True Wireless Samsung', 4, 4, 3990000, 'ws.png', 'Thiết kế gọn nhẹ, màu sắc sang chảnh\r\nĐiều mình chú ý đầu tiên chính là tổng quan thiết kế của bộ tai nghe này, toàn bộ hộp sạc và tai nghe đều được bao phủ bởi màu trắng trang nhã, thanh lịch. Phần logo Samsung in ở mặt trên hộp sạc càng làm thiết kế trở nên tinh tế hơn. Với mình, đây không chỉ là một chiếc tai nghe mà nó còn là một món phụ kiện thời trang sang chảnh.', 354, 0, '2022-11-21 14:27:30'),
(17, 'Tai nghe Bluetooth AirPods Pro Wireless', 3, 4, 4990000, 'airpods.png', 'Đặc điểm nổi bật\r\n\r\nThiết kế in-ear hoàn toàn mới và độc đáo.\r\nTích hợp công nghệ chống ồn chủ động (Active Noise Cancellation).\r\nChip H1 mạnh mẽ, xử lý âm thanh kỹ thuật số với độ trễ gần như bằng không.\r\nNghe nhạc đến 4.5 giờ khi bật chống ồn, 5 giờ khi tắt chống ồn.\r\nSử dụng song song với hộp sạc có thể dùng được đến 24 giờ nghe nhạc.\r\nHỗ trợ sạc nhanh, cho thời gian sử dụng đến 1 giờ chỉ với 5 phút sạc.\r\nHộp sạc hỗ trợ sạc không dây chuẩn Qi, tiện lợi khi sạc lại.\r\nTrang bị chuẩn chống nước IPX4, bảo vệ tai nghe an toàn dưới mưa nhỏ và mồ hôi.\r\nSản phẩm chính hãng Apple, nguyên seal 100%.\r\nLưu ý: Thanh toán trước khi mở sea', 454, 0, '2022-11-21 14:28:35'),
(18, 'Tai nghe Bluetooth True Wireless Sony', 6, 4, 4310000, 'wsony.png', 'Tai nghe Bluetooth True Wireless Sony WF-SP800N mang phong cách thể thao trẻ trung, năng động.\r\n• Thiết kế sang trọng, êm ái và chắc chắn khi sử dụng, nhiều cỡ đệm tai thay đổi theo tuỳ thích của người dùng đi đôi với kích thước vỏ hộp gọn nhẹ; dễ cho vào túi xách, balo.\r\n\r\n• Trải nghiệm âm bass trầm sâu lắng và mạnh mẽ với chuẩn âm thanh Extra Bass độc quyền của Sony, kết hợp công nghệ chống ồn kỹ thuật số cho bạn tận hưởng những bản nhạc đầy sôi động và hoàn hảo nhất.\r\n\r\n• Tai nghe Sony kết nối không dây Bluetooth 5.0 ổn định với phạm vi xa đến 10 m phù hợp kết nối với nhiều thiết bị trên các nền tảng Android, Windows, iOS.', 1454, 0, '2022-11-21 14:29:20'),
(19, 'ASUS Zenbook 14 Q409ZA', 1, 1, 17990000, 'asus-zenbook-14-q409za.png', 'Trong phân khúc laptop văn phòng mỏng nhẹ, Asus Zenbook 14 Q409ZA quả thật là chiếc máy rất đáng để đầu tư, không chỉ về phòng cách thiết kế sang chảnh, chất lượng hiển thị tốt mà hiệu năng còn là một bước đột phá hoàn toàn mới.', 12, 0, '2022-12-05 15:27:24'),
(20, 'ASUS TUF Dash F15 (Chính hãng) (FX516PC-HN011T)', 1, 1, 23000000, 'asus-tuf-dash-f15.png', 'ASUS TUF Dash F15 mang đến cho người dùng một tổng thể vuông vức, mạnh mẽ. Tuy nhiên sẽ không có quá nhiều điểm hầm hố nhưng trên những mẫu laptop gaming thông thường. Cách thiết kế này giúp máy có thể phù hợp cho nhiều đối tượng người dùng hơn chứ không chỉ hướng đến những người dùng gaming thông thường. Mặt A của máy được làm tối giản với logo TUF Gaming được khắc dọc theo mặt lưng. Trông vô cùng ấn tượng và nổi vật khi quan sát từ xa, thêm vào đó cảm giác sờ vào cũng khá mịn và thích tay.\r\n\r\nĐộ hoàn thiện của máy cũng đạt ở mức tốt khi được làm chủ yếu từ chất liệu kim loại và nhựa. Từ góc máy, mặt A cho đến mặt C đều cho thấy được độ đầm chắc của mình, những hiện tượng flex cũng được khắc phục triệt để.', 14, 0, '2022-12-05 15:31:16'),
(21, 'Asus Zenbook Flip 13 UX363 OLED (UX363EA-HP726W)', 1, 1, 28290000, 'Asus-Zenbook-Flip-13-OLED.png', 'Công nghệ Ergolift từ lâu đã làm nên thương hiệu của dòng Ultrabook, nhưng hơn cả vậy với ASUS Zenbook Flip UX363, bản lề Ergolift 360° cho phép người dùng xoay gập màn hình OLED một cách linh hoạt mà vẫn cực kỳ chắc chắn, phù hợp với mọi nhu cầu từ làm việc cho tới giải trí.\r\n\r\nVới vỏ máy được làm từ nhôm nguyên khối mỏng cao cấp, Asus Zenbook Flip 13 OLED có trọng lượng nhẹ tới đáng kinh ngạc - chỉ 1,3kg và thiết kế siêu mỏng - chỉ 13.9mm nhưng những đường nét thiết kế hay những chi tiết khớp nối, đặc biệt là bản lề đều rất chỉn chu, tỉ mỉ. Asus UX363 cũng sẽ cực kỳ phù hợp đối với những bạn làm công việc multimedia, các doanh nhân hay các designer muốn tìm cảm hứng sáng tạo hay phải thay đổi địa điểm làm việc liên tục.', 7, 0, '2022-12-05 15:31:16'),
(22, 'MSI Summit E14 Evo A12M (211VN)', 2, 1, 32000000, 'MSI-Summit-E14-Evo.png', 'MSI Summit E14 Evo A12M (211VN)', 2, 0, '2022-12-05 15:35:26'),
(23, 'MSI Modern 14 B10MW-640 Ultra Thin', 2, 1, 10990000, 'MSI Modern 14 B10MW.png', 'MSI Modern 14 B10MW-640 Ultra Thin', 8, 0, '2022-12-05 15:35:26'),
(24, 'Samsung Galaxy S22 Ultra', 4, 2, 25950000, 'galaxy-s22-ultra-burgundy.png', 'Dòng điện thoại cao cấp Galaxy S22 bao gồm 3 biến thể đó là Galaxy S22, Galaxy S22 Plus và Galaxy S22 Ultra. Trong đó, Samsung Galaxy S22 Ultra chính là phiên bản kế nhiệm của Galaxy Note đã không được ra mắt năm 2021. Máy có thiết kế vuông vức, hỗ trợ bút S Pen được gắn trên máy. Mặt sau, máy có 4 camera được đặt riêng rẽ từng ống kính một, đèn Flash LED được đặt gọn giữa 2 ống kính phụ bên phải.\r\nSo với thế hệ tiền nhiệm thì Galaxy S22 Ultra không có một đặc điểm nào được kế thừa từ Galaxy S21 Ultra mà thay vào đó nó có thiết kế gống như Galaxy Note 20 Ultra hơn.', 60, 0, '2022-12-05 15:40:28'),
(25, 'Samsung Galaxy S20 FE', 4, 2, 9150000, 'samsung-galaxy-s20-fe-chinh-hang-xanh-ngoc.png', 'Điện thoại Samsung Galaxy S20 FE Chính hãng thiết kế thời trang, cấu hình mạnh mẽ. Mua điện thoại Samsung Galaxy S20 FE uy tín, giá rẻ, hỗ trợ trả góp 0%.\r\nSamsung Galaxy S20 FE là được coi là em út trong dòng Galaxy S20 Series bởi chất liệu hoàn thiện của mặt lưng chỉ là nhựa thay vì kính cường lực cao cấp. Tuy vậy, đây lại là lợi thế của S20 FE khi nó có mức giá cực kỳ hấp dẫn trong khi cấu hình vẫn được giữ nguyên như những người anh em cùng dòng. Sở hữu một chiếc Samsung Galaxy S20 FE Chính hãng là một sự lựa chọn hoàn hảo cho những ai muốn trải nghiệm những công nghệ hàng đầu trên dòng S series cao cấp mà vẫn có được sự trẻ trung năng động với những màu sắc bắt trend', 50, 0, '2022-12-05 15:40:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

CREATE TABLE `protypes` (
  `type_id` int(11) NOT NULL COMMENT 'mã loại',
  `type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tên loại'
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
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'tien', '2a26569e98b26668f39e98e6baef2d54'),
(2, 'kiet', 'e6bbeabfe26b581fcd1f5592c927f704'),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(4, 'admin2', 'c84258e9c39059a89ab77d846ddab909');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`manu_id`);

--
-- Chỉ mục cho bảng `personinfor`
--
ALTER TABLE `personinfor`
  ADD PRIMARY KEY (`id_person`);

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
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `manu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã hãng', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `personinfor`
--
ALTER TABLE `personinfor`
  MODIFY `id_person` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã sản phẩm', AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `protypes`
--
ALTER TABLE `protypes`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã loại', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
