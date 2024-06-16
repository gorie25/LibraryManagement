-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th6 08, 2024 lúc 06:43 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `slibrary`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `author`
--

CREATE TABLE `author` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `author`
--

INSERT INTO `author` (`ID`, `name`, `address`, `phone`) VALUES
(1, 'KimChung', 'Cao Lanh', 795499579),
(2, 'TruongTien', 'SaDec', 46568),
(3, 'Tony Hsieh', '123 Zappos St, Las Vegas, NV', 702),
(4, 'Robert Kiyosaki', '456 Rich Dad Ave, Scottsdale, AZ', 480),
(5, 'Thomas J. Stanley', '789 Millionaire Ln, Atlanta, GA', 404),
(6, 'Napoleon Hill', '101 Success Rd, Wise, VA', 276),
(7, 'Benjamin Graham', '102 Investment St, New York, NY', 212);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `publisher` int(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `borrowed` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `book`
--

INSERT INTO `book` (`id`, `bname`, `content`, `category`, `author`, `publisher`, `pages`, `borrowed`) VALUES
(1, 'Tỷ phú bán giày', 'Câu chuyện thành công của CEO Zappos', 4, 3, 15, 400, 'Returned'),
(2, 'Rich Dad Poor Dad', 'Cách nghĩ và cách làm của người giàu', 5, 4, 16, 336, 'Borrowed'),
(3, 'The Millionaire Next Door', 'Những người giàu có ở Mỹ', 5, 5, 17, 272, 'Returned'),
(4, 'Think and Grow Rich', 'Các nguyên tắc để thành công và làm giàu', 4, 6, 16, 238, 'Borrowed'),
(5, 'The Intelligent Investor', 'Cách đầu tư khôn ngoan', 6, 7, 19, 640, 'Returned'),
(6, 'dasd', 'daddad', 4, 3, 15, 2000, ' Borrowed');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `borrow`
--

CREATE TABLE `borrow` (
  `id` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `issuedate` date NOT NULL,
  `returndate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `borrow`
--

INSERT INTO `borrow` (`id`, `memberid`, `bookid`, `issuedate`, `returndate`) VALUES
(1, 2, 2, '2024-06-01', '2024-06-02'),
(3, 1, 1, '2024-04-01', '2024-04-15'),
(4, 1, 4, '2024-04-04', '2024-04-18'),
(5, 2, 4, '2024-04-09', '2024-04-23'),
(6, 2, 5, '2024-04-10', '2024-04-24'),
(7, 3, 1, '2024-04-11', '2024-04-25'),
(8, 3, 4, '2024-04-14', '2024-04-28'),
(9, 3, 5, '2024-04-15', '2024-04-29'),
(10, 4, 1, '2024-04-16', '2024-04-30'),
(11, 4, 5, '2024-04-20', '2024-05-04'),
(12, 5, 1, '2024-04-21', '2024-05-05'),
(13, 5, 2, '2024-04-22', '2024-05-06'),
(14, 5, 5, '2024-04-25', '2024-05-09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catename` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `catename`, `status`) VALUES
(1, 'Java', 'Deactive'),
(2, 'Computer', 'Deactive'),
(4, 'Self-help', 'Active'),
(5, 'Finance', 'Deactive'),
(6, 'Investment', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `member`
--

INSERT INTO `member` (`id`, `name`, `email`, `phone`) VALUES
(1, 'Nguyễn Văn A', 'nguyenvana@example.com', 901234567),
(2, 'Trần Thị B', 'tranthib@example.com', 902345678),
(3, 'Lê Văn C', 'levanc@example.com', 903456789),
(4, 'Phạm Thị D', 'phamthid@example.com', 904567890),
(5, 'Vũ Văn E', 'vuvane@example.com', 905678901),
(6, 'Truong Vinh Tien', 'truongvinhtien2572@gmail.com', 795499579);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `address`, `phone`) VALUES
(1, 'Publisher One', '123 Main St, City A', 12312),
(2, 'Publisher Two', '456 Elm St, City B', 234),
(3, 'Publisher Three', '789 Oak St, City C', 345),
(4, 'Publisher Four', '101 Pine St, City D', 456),
(5, 'Publisher Five', '202 Maple St, City E', 567),
(15, 'Business Plus', '123 Business St, New York, NY', 123),
(16, 'Warner Books Ed', '456 Warner Ave, Los Angeles, CA', 234),
(17, 'Longstreet Press', '789 Longstreet Blvd, Atlanta, GA', 345),
(18, 'The Ralston Society', '101 Ralston Ln, Chicago, IL', 456),
(19, 'Harper & Brothers', '202 Harper Rd, Boston, MA', 567);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `returnbook`
--

CREATE TABLE `returnbook` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `returndate` varchar(255) NOT NULL,
  `elap` int(11) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `returnbook`
--

INSERT INTO `returnbook` (`id`, `mid`, `mname`, `bname`, `returndate`, `elap`, `fine`) VALUES
(1, 3, 'Lê Văn C', 'Java', '2024-06-01', 5, 50),
(2, 2, 'Nguyễn Văn A', 'Rich Dad Poor Dad', '2024-06-02', 6, 60),
(3, 2, 'Nguyễn Văn A', 'Rich Dad Poor Dad', '2024-06-02', 6, 60),
(4, 2, 'Nguyễn Văn A', 'Rich Dad Poor Dad', '2024-06-02', 6, 60),
(5, 2, 'Nguyễn Văn A', 'Rich Dad Poor Dad', '2024-06-02', 6, 60),
(6, 2, 'Nguyễn Văn A', 'Rich Dad Poor Dad', '2024-06-02', 6, 60),
(7, 1, 'Nguyễn Văn A', 'Think and Grow Rich', '2024-05-29', 10, 100);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `returnbook`
--
ALTER TABLE `returnbook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `author`
--
ALTER TABLE `author`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `returnbook`
--
ALTER TABLE `returnbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
