-- phpMyAdmin SQL Dump
-- version 5.1.1deb3+bionic1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2022-04-17 02:10:53
-- 服务器版本： 8.0.27
-- PHP 版本： 7.2.24-0ubuntu0.18.04.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `7901Project`
--

-- --------------------------------------------------------

--
-- 表的结构 `AUTHOR`
--

CREATE TABLE `AUTHOR` (
  `AName` varchar(40) NOT NULL,
  `AAddress` varchar(100) NOT NULL,
  `Sex` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `AUTHOR`
--

INSERT INTO `AUTHOR` (`AName`, `AAddress`, `Sex`) VALUES
('Anthony Molinaro', '9279 Johnson Ave. New Orleans, LA 70115', 'M'),
('Chris Date', '844 Primrose Drive Waterford, MI 48329', 'M'),
('Joel Grus', 'San Antonio, Texas, United States', 'M'),
('John M. Zelle', 'Department of Math/CS/Physics Wartburg College 100 Wartburg Blvd.Waverly, IA 50677', 'M'),
('Tony Gaddis', '645 Chestnut St, Alto Pass, IL 62905', 'M');

-- --------------------------------------------------------

--
-- 表的结构 `BOOK`
--

CREATE TABLE `BOOK` (
  `ISBN` varchar(20) NOT NULL,
  `Year` year DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Price` decimal(7,2) DEFAULT NULL,
  `PublisherName` varchar(40) NOT NULL,
  `AuthorName` varchar(40) NOT NULL,
  `AuthorAddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `BOOK`
--

INSERT INTO `BOOK` (`ISBN`, `Year`, `Title`, `Price`, `PublisherName`, `AuthorName`, `AuthorAddress`) VALUES
('9780321197849', 2003, 'An Introduction to Database Systems', '141.10', 'Pearson', 'Chris Date', '844 Primrose Drive Waterford, MI 48329'),
('9780596009762', 2006, 'SQL Cookbook: Query Solutions and Techniques for Database Developers', '69.20', 'O\'Reilly Media', 'Anthony Molinaro', '9279 Johnson Ave. New Orleans, LA 70115'),
('9781491901427', 2015, 'Data Science from Scratch: First Principles with Python', '48.49', 'O\'Reilly Media', 'Joel Grus', 'San Antonio, Texas, United States'),
('9781590282755', 2016, 'Python Programming: An Introduction to Computer Science', '45.00', 'O\'Reilly Media', 'John M. Zelle', 'Department of Math/CS/Physics Wartburg College 100 Wartburg Blvd.Waverly, IA 50677'),
('9789353066888', 2019, 'STARTING OUT WITH PYTHON', '44.51', 'Franklin, Beedle & Associates Inc', 'Tony Gaddis', '645 Chestnut St, Alto Pass, IL 62905');

-- --------------------------------------------------------

--
-- 表的结构 `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `Email` varchar(40) NOT NULL,
  `CName` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CAddress` varchar(100) DEFAULT NULL,
  `CPhone` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`Email`, `CName`, `CAddress`, `CPhone`) VALUES
('fsalierno@tubidu.com', 'Izabelle Gruffud', '9576 Alderwood Dr.Glen Allen, VA 23059', '276-200-1771'),
('happy400@tchoeo.com', 'Balbinus Ortwin', '8232 Winchester Street Hackettstown, NJ 07840', '201-200-3543'),
('henrikgasten@asistx.net', 'Tewodros Birgitte', '9416 Wayne Ave. Beltsville, MD 20705', '240-200-3623'),
('ricky31b@devii.site', 'Abd al-Qadir Brighid', '7112 Sunset Drive Skokie, IL 60076', '217-200-3621'),
('vasuchin@bbtspage.com', 'Aina Shamash', '9885 Maple Street New Britain, CT 06051', '203-200-9841');

-- --------------------------------------------------------

--
-- 表的结构 `PUBLISHER`
--

CREATE TABLE `PUBLISHER` (
  `PName` varchar(40) NOT NULL,
  `URL` varchar(100) DEFAULT NULL,
  `PAddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `PUBLISHER`
--

INSERT INTO `PUBLISHER` (`PName`, `URL`, `PAddress`) VALUES
('Franklin, Beedle & Associates Inc', 'https://fbeedle.com/', 'Franklin, Beedle & Associates Inc.10350 N Vancouver Way #5012 Portland Oregon 97217 United States'),
('O\'Reilly Media', 'https://www.oreilly.com/', '1005 Gravenstein Highway North Sebastopol, CA 95472 USA'),
('Pearson', 'https://www.pearson.com/', '1001/151 Castlereagh St, Sydney NSW 2000, Australia'),
('Relx', 'https://www.relx.com/', '230 Park Avenue New York NY 10169 USA'),
('Thomson Reuters', 'https://www.thomsonreuters.com/en.html', '19 Harris Street Pyrmont Sydney 2009 Australia');

-- --------------------------------------------------------

--
-- 表的结构 `PUB_PHONE`
--

CREATE TABLE `PUB_PHONE` (
  `Pub_Name` varchar(40) NOT NULL,
  `Phone` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `PUB_PHONE`
--

INSERT INTO `PUB_PHONE` (`Pub_Name`, `Phone`) VALUES
('Franklin, Beedle & Associates Inc', '800-322-2665'),
('O\'Reilly Media', '827-7000'),
('Pearson', '1800 882 385'),
('Relx', '212 309 8100'),
('Thomson Reuters', '2 9171 7100');

-- --------------------------------------------------------

--
-- 表的结构 `SHOPPINGBASKET`
--

CREATE TABLE `SHOPPINGBASKET` (
  `ID` int NOT NULL,
  `SCount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `SHOPPINGBASKET`
--

INSERT INTO `SHOPPINGBASKET` (`ID`, `SCount`) VALUES
(1, 3),
(2, 4),
(3, 1),
(4, 2),
(5, 1);

-- --------------------------------------------------------

--
-- 表的结构 `WAREHOUSE`
--

CREATE TABLE `WAREHOUSE` (
  `Code` int NOT NULL,
  `WPhone` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `WAddress` varchar(100) DEFAULT NULL,
  `Waybill_number` int DEFAULT NULL,
  `Onhand` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `WAREHOUSE`
--

INSERT INTO `WAREHOUSE` (`Code`, `WPhone`, `WAddress`, `Waybill_number`, `Onhand`) VALUES
(1001, '217-206-9523', '990 Cypress St. Orland Park, IL 60462', 547, NULL),
(1002, '201-205-6282', '9645 Colonial Court Bergenfield, NJ 07621', 903, NULL),
(1003, '319-200-9841', '190 Logan St. Cedar Falls, IA 50613', 1475, NULL),
(2001, '218-201-7348', '9264 Hilldale Court Lakeville, MN 55044', NULL, 3533),
(2002, '212-200-4034', '8712 East Howard Lane Huntington, NY 11743', NULL, 5633);

-- --------------------------------------------------------

--
-- 表的结构 `WAREHOUSE_BOOK`
--

CREATE TABLE `WAREHOUSE_BOOK` (
  `Warehouse_Code` int NOT NULL,
  `Book_ISBN` varchar(20) NOT NULL,
  `WCount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `WAREHOUSE_BOOK`
--

INSERT INTO `WAREHOUSE_BOOK` (`Warehouse_Code`, `Book_ISBN`, `WCount`) VALUES
(2001, '9780321197849', 654),
(2001, '9780596009762', 861),
(2002, '9781491901427', 4561),
(2002, '9781590282755', 3861),
(2002, '9789353066888', 999);

--
-- 转储表的索引
--

--
-- 表的索引 `AUTHOR`
--
ALTER TABLE `AUTHOR`
  ADD PRIMARY KEY (`AName`,`AAddress`);

--
-- 表的索引 `BOOK`
--
ALTER TABLE `BOOK`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `PublisherName` (`PublisherName`),
  ADD KEY `AuthorInfo` (`AuthorName`,`AuthorAddress`);

--
-- 表的索引 `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`Email`);

--
-- 表的索引 `PUBLISHER`
--
ALTER TABLE `PUBLISHER`
  ADD PRIMARY KEY (`PName`);

--
-- 表的索引 `PUB_PHONE`
--
ALTER TABLE `PUB_PHONE`
  ADD PRIMARY KEY (`Pub_Name`,`Phone`);

--
-- 表的索引 `SHOPPINGBASKET`
--
ALTER TABLE `SHOPPINGBASKET`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `WAREHOUSE`
--
ALTER TABLE `WAREHOUSE`
  ADD PRIMARY KEY (`Code`);

--
-- 表的索引 `WAREHOUSE_BOOK`
--
ALTER TABLE `WAREHOUSE_BOOK`
  ADD PRIMARY KEY (`Warehouse_Code`,`Book_ISBN`),
  ADD KEY `Book_ISBN` (`Book_ISBN`);

--
-- 限制导出的表
--

--
-- 限制表 `BOOK`
--
ALTER TABLE `BOOK`
  ADD CONSTRAINT `BOOK_ibfk_1` FOREIGN KEY (`PublisherName`) REFERENCES `PUBLISHER` (`PName`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `BOOK_ibfk_2` FOREIGN KEY (`AuthorName`,`AuthorAddress`) REFERENCES `AUTHOR` (`AName`, `AAddress`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- 限制表 `PUB_PHONE`
--
ALTER TABLE `PUB_PHONE`
  ADD CONSTRAINT `PUB_PHONE_ibfk_1` FOREIGN KEY (`Pub_Name`) REFERENCES `PUBLISHER` (`PName`);

--
-- 限制表 `WAREHOUSE_BOOK`
--
ALTER TABLE `WAREHOUSE_BOOK`
  ADD CONSTRAINT `WAREHOUSE_BOOK_ibfk_1` FOREIGN KEY (`Warehouse_Code`) REFERENCES `WAREHOUSE` (`Code`),
  ADD CONSTRAINT `WAREHOUSE_BOOK_ibfk_2` FOREIGN KEY (`Book_ISBN`) REFERENCES `BOOK` (`ISBN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
