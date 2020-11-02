-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2020 年 01 月 08 日 12:13
-- 伺服器版本: 10.1.36-MariaDB
-- PHP 版本： 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `1081se`
--

-- --------------------------------------------------------

--
-- 資料表結構 `orderitem`
--

CREATE TABLE `orderitem` (
  `serno` int(11) NOT NULL,
  `ordID` int(11) NOT NULL,
  `prdID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `orderitem`
--

INSERT INTO `orderitem` (`serno`, `ordID`, `prdID`, `quantity`) VALUES
(3, 4, 1, 1),
(4, 4, 2, 1),
(5, 5, 1, 2),
(7, 6, 2, 1),
(8, 6, 3, 1),
(9, 6, 4, 1),
(10, 6, 4, 1),
(11, 6, 1, 1),
(13, 7, 4, 1),
(14, 7, 1, 1),
(22, 8, 8, 1),
(31, 8, 1, 4),
(33, 8, 3, 1),
(34, 8, 2, 1),
(35, 9, 2, 1),
(36, 9, 3, 1),
(37, 10, 5, 2),
(38, 10, 6, 1),
(39, 5, 2, 1),
(40, 5, 4, 1),
(41, 12, 5, 1),
(42, 12, 6, 1),
(43, 11, 3, 1),
(45, 13, 1, 2),
(46, 13, 3, 1),
(47, 14, 7, 1),
(48, 15, 3, 1),
(49, 15, 2, 1),
(50, 16, 4, 1),
(51, 16, 5, 1),
(52, 17, 7, 1),
(53, 17, 6, 1),
(54, 18, 7, 3),
(55, 19, 2, 1),
(56, 19, 3, 1),
(57, 20, 5, 1),
(58, 21, 1, 1),
(59, 22, 7, 4),
(60, 23, 2, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `prdID` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `detail` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `product`
--

INSERT INTO `product` (`prdID`, `name`, `price`, `detail`) VALUES
(1, 'iPhone 15', 90000, 'This is a fake phone. Don\'t bu'),
(2, 'Water', 90, 'Pure water from Puli'),
(3, 'Air', 100, 'PM 2.5 air for free'),
(4, 'chistmas gift', 250, ''),
(5, 'candy', 50, ''),
(6, 'cookie', 40, 'good to eat'),
(7, 'computer', 32000, '');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `user`
--

INSERT INTO `user` (`ID`, `password`, `name`, `role`) VALUES
('123', '123', '123', 1),
('123456', '123', '55', 1),
('14', '741', 'candy', 1),
('753', '666', '565', 1),
('888', '456', '花米', 1),
('admin', '123', '管理員', 9),
('asdf', '741', 'c嗨嗨', 1),
('deliver', '123', 'deliver', 0),
('deliver2', '123', 'deliver2', -1),
('jc', '741', 'candy', 1),
('mama', '123', 'mama', 1),
('new', '456', 'new', 1),
('smile', '123', 'smile', 1),
('user', '123', '客戶', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `userorder`
--

CREATE TABLE `userorder` (
  `ordID` int(11) NOT NULL,
  `uID` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `orderDate` date NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `userorder`
--

INSERT INTO `userorder` (`ordID`, `uID`, `orderDate`, `address`, `status`) VALUES
(4, 'admin', '0000-00-00', '', 3),
(5, 'admin', '2020-01-07', 'taichung', 3),
(6, 'user', '2019-12-26', '', 2),
(7, 'user', '2019-12-26', 'ncnu im', 3),
(8, 'user', '2019-12-31', 'ncnu im', 2),
(9, 'user', '2019-12-31', 'taichung', 3),
(10, 'mama', '2019-12-31', 'ncnu im', 2),
(11, 'user', '2020-01-07', 'ncnu im', 3),
(12, 'mama', '2020-01-07', 'ncnu im', 3),
(13, 'smile', '0000-00-00', '', 0),
(14, 'deliver', '2020-01-08', 'nantou', 2),
(15, 'user', '2020-01-08', 'nantou', 1),
(16, 'user', '2020-01-08', 'ncnu im', 1),
(17, 'deliver', '2020-01-08', 'nantou', 2),
(18, 'deliver2', '2020-01-08', 'ncnu im', 1),
(19, 'new', '2020-01-08', 'taipei', 2),
(20, 'new', '2020-01-08', 'taipei', 2),
(21, 'new', '2020-01-08', 'ncnu im', 1),
(22, 'new', '0000-00-00', '', 0),
(23, 'user', '2020-01-08', 'ncnu im', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `vote`
--

CREATE TABLE `vote` (
  `vid` int(20) NOT NULL,
  `vname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(20) NOT NULL,
  `descibe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `record` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `vote`
--

INSERT INTO `vote` (`vid`, `vname`, `number`, `descibe`, `record`) VALUES
(1, '發大大財', 18, '嗨嗨我就是要發大財', 0),
(2, '就是愛台灣', 578, 'I love TAIWAN', 0),
(3, '反送中ㄚㄚ', 1206, '反送中喔喔喔', 0);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`serno`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prdID`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `userorder`
--
ALTER TABLE `userorder`
  ADD PRIMARY KEY (`ordID`);

--
-- 資料表索引 `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`vid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `serno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- 使用資料表 AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `prdID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表 AUTO_INCREMENT `userorder`
--
ALTER TABLE `userorder`
  MODIFY `ordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表 AUTO_INCREMENT `vote`
--
ALTER TABLE `vote`
  MODIFY `vid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
