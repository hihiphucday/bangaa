-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 25, 2023 lúc 03:33 AM
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
-- Cơ sở dữ liệu: `csdlbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamga`
--

CREATE TABLE `sanphamga` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `giasp` int(11) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `urlhinhanh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphamga`
--

INSERT INTO `sanphamga` (`idsp`, `tensp`, `giasp`, `SOLUONG`, `urlhinhanh`) VALUES
(1, 'Gà rán', 40000, 1, 'GA.jpg'),
(2, 'Combo 1', 80000, 1, 'cb1.jpg'),
(3, 'Combo 2', 79000, 1, 'cb2.jpg'),
(4, 'Combo 3', 79999, 1, 'cb3.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `sanphamga`
--
ALTER TABLE `sanphamga`
  ADD PRIMARY KEY (`idsp`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `sanphamga`
--
ALTER TABLE `sanphamga`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325234658;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
